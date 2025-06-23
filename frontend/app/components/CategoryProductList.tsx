// components/CategoryProductList.tsx
import Image from 'next/image'
import Link from 'next/link'

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

interface Props {
  products: Product[]
}

export default function CategoryProductList({ products }: Props) {
  if (!products.length)
    return <div className="alert alert-warning">Không có sản phẩm nào.</div>
  return (
    <div className="row">
      {products.map(product => (
        <div className="col-md-4 mb-3" key={product.id}>
          <div className="card h-100">
            <Image
              src={product.images.startsWith('http') ? product.images : `/images/products/${product.images}`}
              width={300}
              height={220}
              alt={product.name}
              className="card-img-top"
            />
            <div className="card-body">
              <h5 className="card-title">{product.name}</h5>
              <div>{product.price.toLocaleString()}₫</div>
              <p className="card-text">{product.description}</p>
              <Link href={`/main/product/${product.slug}`} className="btn btn-primary">Xem chi tiết</Link>
            </div>
          </div>
        </div>
      ))}
    </div>
  )
}
