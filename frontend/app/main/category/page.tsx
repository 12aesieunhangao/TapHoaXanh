'use client'

import { useEffect, useState } from 'react'
import CategorySidebar from '@/components/CategorySidebar'
import CategoryFilter from '@/components/CategoryFilter'
import CategoryProductList from '@/components/CategoryProductList'
import Pagination from '@/components/Pagination'
import api from '@/lib/axios'

interface Category {
    id: number
    name: string
  }
  
  interface Product {
    id: number
    name: string
    price: number
    slug: string
    images: string
    discount: number
    description: string
    category?: string
  }
  
  interface CategoryResponse {
    categories?: Category[]
    // nếu API trả về [{id,name}] thì không cần
  }
  
  interface ProductResponse {
    products?: Product[]
    // nếu API trả về [{...}] thì không cần
  }
  

export default function CategoryPage() {
  const [categories, setCategories] = useState<Category[]>([])
  const [selectedCategory, setSelectedCategory] = useState<number | null>(null)
  const [allProducts, setAllProducts] = useState<Product[]>([])
  const [loading, setLoading] = useState(true)

  // Filter và phân trang
  const [filters, setFilters] = useState<{ name: string; min: string; max: string; sort: string }>({
    name: '',
    min: '',
    max: '',
    sort: 'newest',
  })
  const [currentPage, setCurrentPage] = useState(1)
  const itemsPerPage = 12

  // Lấy category và sản phẩm từ API
  useEffect(() => {
    setLoading(true)
    Promise.all([
      api.get('/categories'),
      api.get('/products'),
    ])
      .then(([catRes, prodRes]) => {
        // --- Lấy danh mục ---
        let catData: Category[] = []
        const catRaw = catRes.data
        if (Array.isArray(catRaw)) {
          catData = catRaw
        } else if (
          catRaw &&
          typeof catRaw === 'object' &&
          Array.isArray((catRaw as CategoryResponse).categories)
        ) {
          catData = (catRaw as CategoryResponse).categories!
        }
        setCategories([{ id: 0, name: 'Tất cả' }, ...catData])
  
        // --- Lấy sản phẩm ---
        let productList: Product[] = []
        const prodRaw = prodRes.data
        if (Array.isArray(prodRaw)) {
          productList = prodRaw
        } else if (
          prodRaw &&
          typeof prodRaw === 'object' &&
          Array.isArray((prodRaw as ProductResponse).products)
        ) {
          productList = (prodRaw as ProductResponse).products!
        }
        setAllProducts(productList)
      })
      .finally(() => setLoading(false))
  }, [])
  


  // Khi chọn danh mục mới, reset filter và về trang 1
  const handleCategorySelect = (catId: number) => {
    setSelectedCategory(catId)
    setFilters({ name: '', min: '', max: '', sort: 'newest' })
    setCurrentPage(1)
  }

  // Khi lọc trên filter bar, về trang 1
  const handleFilter = (filterValues: { name: string; min: string; max: string; sort: string }) => {
    setFilters(filterValues)
    setCurrentPage(1)
  }

  // Lọc sản phẩm
  const getFilteredProducts = () => {
    let filtered = [...allProducts]
    if (selectedCategory && selectedCategory !== 0) {
        filtered = filtered.filter(p => Number(p.category) === selectedCategory)    }
    if (filters.name) {
      filtered = filtered.filter(product =>
        product.name.toLowerCase().includes(filters.name.toLowerCase())
      )
    }
    if (filters.min) filtered = filtered.filter(product => product.price >= Number(filters.min))
    if (filters.max) filtered = filtered.filter(product => product.price <= Number(filters.max))
    // Sắp xếp
    if (filters.sort === 'price-asc') filtered.sort((a, b) => a.price - b.price)
    else if (filters.sort === 'price-desc') filtered.sort((a, b) => b.price - a.price)
    else if (filters.sort === 'newest') filtered.sort((a, b) => b.id - a.id)
    else if (filters.sort === 'oldest') filtered.sort((a, b) => a.id - b.id)
    return filtered
  }

  const filteredProducts = getFilteredProducts()
  const totalItems = filteredProducts.length
  const totalPages = Math.ceil(totalItems / itemsPerPage)
  const currentProducts = filteredProducts.slice(
    (currentPage - 1) * itemsPerPage,
    currentPage * itemsPerPage
  )

  return (
    <div className="container-fluid">
      <div className="row">
        {/* Sidebar category */}
        <div className="col-md-2">
          <CategorySidebar
            categories={categories}
            selected={selectedCategory ?? 0}
            onSelect={handleCategorySelect}
          />
        </div>
        {/* Main content */}
        <div className="col-md-10">
          <h2 className="mb-4">
            Danh mục:{" "}
            {categories.find(c => c.id === selectedCategory)?.name || 'Tất cả'}
          </h2>
          <CategoryFilter onFilter={handleFilter} />
          {loading ? (
            <p>Đang tải sản phẩm...</p>
          ) : currentProducts.length === 0 ? (
            <div className="alert alert-warning">Không có sản phẩm phù hợp.</div>
          ) : (
            <CategoryProductList products={currentProducts} />
          )}
          <Pagination
            currentPage={currentPage}
            totalItems={totalItems}
            itemsPerPage={itemsPerPage}
            onPageChange={setCurrentPage}
          />
        </div>
      </div>
    </div>
  )
}
