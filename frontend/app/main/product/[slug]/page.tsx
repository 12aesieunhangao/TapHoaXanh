'use client'

import { useEffect, useState } from 'react'
import { useParams } from 'next/navigation'
import { useCart } from '@/hooks/useCart'
import api from '@/lib/axios'
import Image from 'next/image'

type Product = {
  id: number
  name: string
  price: number
  slug: string
  images: string
  discount: number
  description: string
}

export default function ProductDetailPage() {
  const { slug } = useParams()
  const [product, setProduct] = useState<Product | null>(null)
  const [loading, setLoading] = useState(true)
  const { addToCart } = useCart()

  useEffect(() => {
    const fetchProduct = async () => {
      try {
        const res = await api.get<Product[]>('/products')
        const found = res.data.find((item) => item.slug === slug)
        setProduct(found || null)
      } catch (err) {
        console.error('Lỗi lấy chi tiết sản phẩm:', err)
      } finally {
        setLoading(false)
      }
    }
    fetchProduct()
  }, [slug])

  if (loading) return <p>Đang tải sản phẩm...</p>
  if (!product) return <div className="alert alert-danger">Không tìm thấy sản phẩm</div>

  return (
    <div className="row">
      <div className="col-md-5">
        <Image src={product.images} alt={product.name} width={400} height={400} className="rounded w-100" />
      </div>
      <div className="col-md-7">
        <h2>{product.name}</h2>
        <p className="text-muted">{product.description}</p>
        <p>
          <strong className="text-danger fs-4">
            {(product.price * (1 - product.discount / 100)).toLocaleString()}₫
          </strong>
          {" "}
          <span className="text-decoration-line-through text-muted ms-2">
            {product.discount > 0 ? product.price.toLocaleString() + '₫' : ''}
          </span>
        </p>
        <button
          className="btn btn-success"
          onClick={() => addToCart({
            id: product.id,
            name: product.name,
            price: product.price,
            images: product.images,
            slug: product.slug,
            discount: product.discount,
            description: product.description
          })}
        >
          Thêm vào giỏ
        </button>
      </div>
    </div>
  )
}