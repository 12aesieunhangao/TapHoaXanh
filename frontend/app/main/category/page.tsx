'use client'

import { useEffect, useState } from 'react'
import CategorySidebar from '@/components/CategorySidebar'
import CategoryFilter from '@/components/CategoryFilter'
import CategoryProductList from '@/components/CategoryProductList'
import api from '@/lib/axios'
import Pagination from '@/components/Pagination'

interface Product {
  id: number
  name: string
  price: number
  slug: string
  images: string
  discount: number
  description: string
  category: string
}

const DUMMY_CATEGORIES = ['Tất cả', 'Rau', 'Thịt', 'Hải sản'] // Có thể lấy từ API nếu cần

export default function CategoryPage() {
  const [category, setCategory] = useState('Tất cả')
  const [allProducts, setAllProducts] = useState<Product[]>([])
  const [loading, setLoading] = useState(true)
  // Lưu bộ lọc hiện tại
  const [filters, setFilters] = useState<{ name: string; min: string; max: string; sort: string }>({
    name: '',
    min: '',
    max: '',
    sort: 'newest',
  })
  // Pagination state
  const [currentPage, setCurrentPage] = useState(1)
  const itemsPerPage = 12

  // Lấy sản phẩm từ API
  useEffect(() => {
    api.get('/products').then(res => {
      let data = res.data
      let productList: Product[] = []

      if (Array.isArray(data)) {
        productList = data
      } else if (data && typeof data === 'object' && Array.isArray((data as { products?: unknown }).products)) {
        productList = (data as { products: Product[] }).products
      }

      setAllProducts(productList)
      setLoading(false)
    })
  }, [])

  // Khi chọn danh mục bên trái, reset filter name/min/max về rỗng, reset page về 1
  const handleCategorySelect = (cat: string) => {
    setCategory(cat)
    setFilters(f => ({ ...f, name: '', min: '', max: '' }))
    setCurrentPage(1)
  }

  // Khi lọc, cập nhật filters và về trang 1
  const handleFilter = (filterValues: { name: string; min: string; max: string; sort: string }) => {
    setFilters(filterValues)
    setCurrentPage(1)
  }

  // Apply lọc, sắp xếp, và chỉ lấy sản phẩm của page hiện tại
  const getFilteredProducts = () => {
    let filtered = [...allProducts]

    // Lọc theo category
    if (category !== 'Tất cả') {
      filtered = filtered.filter(
        p => (p.category || '').toLowerCase() === category.toLowerCase()
      )
    }
    // Lọc theo tên
    if (filters.name) {
      filtered = filtered.filter(product =>
        product.name.toLowerCase().includes(filters.name.toLowerCase())
      )
    }
    // Lọc giá từ - đến
    if (filters.min) {
      filtered = filtered.filter(product => product.price >= Number(filters.min))
    }
    if (filters.max) {
      filtered = filtered.filter(product => product.price <= Number(filters.max))
    }
    // Sắp xếp
    if (filters.sort === 'price-asc') {
      filtered.sort((a, b) => a.price - b.price)
    } else if (filters.sort === 'price-desc') {
      filtered.sort((a, b) => b.price - a.price)
    } else if (filters.sort === 'newest') {
      filtered.sort((a, b) => b.id - a.id)
    } else if (filters.sort === 'oldest') {
      filtered.sort((a, b) => a.id - b.id)
    }
    return filtered
  }

  const filteredProducts = getFilteredProducts()
  const totalPages = Math.ceil(filteredProducts.length / itemsPerPage)
  const startIndex = (currentPage - 1) * itemsPerPage
  const currentProducts = filteredProducts.slice(startIndex, startIndex + itemsPerPage)

  return (
    <div className="container-fluid">
      <div className="row">
        {/* Sidebar */}
        <div className="col-md-2">
          <CategorySidebar
            categories={DUMMY_CATEGORIES}
            selected={category}
            onSelect={handleCategorySelect}
          />
        </div>
        {/* Main content */}
        <div className="col-md-10">
          <h2 className="mb-4">Danh mục: {category}</h2>
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
            totalItems={filteredProducts.length}
            itemsPerPage={itemsPerPage}
            onPageChange={setCurrentPage}
          />
        </div>
      </div>
    </div>
  )
}
