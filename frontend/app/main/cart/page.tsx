'use client'
import { useCart } from '@/hooks/useCart'
import Link from 'next/link'
import Image from 'next/image'

export default function CartPage() {
  const { cart, removeFromCart } = useCart()

  const total = cart.reduce((sum, item) => sum + item.price * item.quantity * (1 - item.discount / 100), 0)

  return (
    <div>
      <h2 className="mb-4">Giỏ Hàng</h2>
      {cart.length === 0 ? (
        <div className="alert alert-warning">Giỏ hàng của bạn đang trống.</div>
      ) : (
        <>
          <ul className="list-group mb-3">
            {cart.map((item, index) => (
              <li className="list-group-item d-flex justify-content-between align-items-center" key={index}>
                <div className="d-flex align-items-center">
                  <Image src={item.images} alt={item.name} width={60} height={60} className="me-3 rounded" />
                  <div>
                    <h6 className="my-0">{item.name}</h6>
                    <small className="text-muted">
                      {item.quantity} x {(item.price * (1 - item.discount / 100)).toLocaleString()}₫
                    </small>
                  </div>
                </div>
                <button className="btn btn-sm btn-danger" onClick={() => removeFromCart(item.slug)}>Xóa</button>
              </li>
            ))}
          </ul>
          <div className="d-flex justify-content-between">
            <strong>Tổng cộng:</strong>
            <strong>{total.toLocaleString()}₫</strong>
          </div>
          <Link href="/main/checkout" className="btn btn-success mt-4">Tiến hành thanh toán</Link>
        </>
      )}
    </div>
  )
}