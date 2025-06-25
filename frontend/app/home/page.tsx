'use client'

import { useEffect, useState, useMemo } from 'react'
import Link from 'next/link'
import Image from 'next/image'
import api from '@/lib/axios'
import SearchFilter from '@/components/Search'
import Pagination from '@/components/Pagination'

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

export default function HomePage() {
  const [allProducts, setAllProducts] = useState<Product[]>([])
  const [filter, setFilter] = useState({ search: '', category: '', maxPrice: '' })
  const [loading, setLoading] = useState(true)
  const [currentPage, setCurrentPage] = useState(1)
  const itemsPerPage = 20 //số lượng sản phẩm mỗi trang 

  useEffect(() => {
    api.get('/products').then(res => {
      let data: any[] = []
      if (Array.isArray(res.data)) {
        data = res.data
      } else if (
        res.data && 
        typeof res.data === 'object' &&
        Array.isArray((res.data as any)?.products)
      ) {
        data = (res.data as any).products
      }
      setAllProducts(data)
      setLoading(false)
    })
  }, [])
  

  const filteredProducts = useMemo(() => {
    let filtered = allProducts
    if (filter.search) {
      filtered = filtered.filter(p =>
        p.name.toLowerCase().includes(filter.search.toLowerCase())
      )
    }
    if (filter.category) {
      filtered = filtered.filter(p =>
        (p.category || '').toLowerCase() === filter.category
      )
    }
    if (filter.maxPrice) {
      filtered = filtered.filter(p => p.price <= parseInt(filter.maxPrice, 10))
    }
    return filtered
  }, [allProducts, filter])

  const startIndex = (currentPage - 1) * itemsPerPage
  const currentProducts = filteredProducts.slice(startIndex, startIndex + itemsPerPage)

  const handleFilter = (f: { search: string; category: string; maxPrice: string }) => {
    setFilter(f)
    setCurrentPage(1)
  }

  return (
    <div>
      <div className="container mt-4">
        <SearchFilter onFilter={handleFilter} />

        {loading ? (
          <p>Đang tải sản phẩm...</p>
        ) : (
          <>
            {filteredProducts.length === 0 ? (
              <div className="alert alert-warning mt-4 mb-4">
                Không tìm thấy sản phẩm phù hợp.
              </div>
            ) : (
              <div className="row">
                {currentProducts.map((product) => (
                  <div className="col-md-3 mb-4" key={product.id}>
                    <div className="card h-100">
                      <Image
                        src={product.images.startsWith('http') ? product.images : `/images/products/${product.images}`}
                        className="card-img-top"
                        alt={product.name}
                        width={400}
                        height={300}
                        loading="lazy"
                      />
                      <div className="card-body">
                        <h5 className="card-title">{product.name}</h5>
                        <p className="card-text">{product.description}</p>
                        <p className="card-text">
                          <span className="text-danger">{product.price.toLocaleString()}₫</span>
                          {product.discount > 0 && (
                            <span className="ms-2 text-muted text-decoration-line-through">
                              {(product.price + product.discount).toLocaleString()}₫
                            </span>
                          )}
                        </p>
                        <Link href={`main/product/${product.slug}`} className="btn btn-primary">Xem chi tiết</Link>
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            )}

            {filteredProducts.length > 0 && (
              <Pagination
                currentPage={currentPage}
                totalItems={filteredProducts.length}
                itemsPerPage={itemsPerPage}
                onPageChange={setCurrentPage}
                maxPagesToShow={5}
              />
            )}
          </>
        )}
      </div>
    </div>
  )
}
