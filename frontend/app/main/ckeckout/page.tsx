'use client'
import { useState } from 'react'
import { useCart } from '@/hooks/useCart'
import { useRouter } from 'next/navigation'

export default function CheckoutPage() {
  const { cart, syncWithDatabase } = useCart()
  const [processing, setProcessing] = useState(false)
  const router = useRouter()

  const total = cart.reduce((sum, item) => sum + item.price * item.quantity * (1 - (item.discount || 0) / 100), 0)

  const handleCheckout = async () => {
    setProcessing(true)
    await syncWithDatabase()
    alert("Thanh toán thành công! Giỏ hàng đã được đồng bộ.")
    router.push("/home")
  }

  if (cart.length === 0) return <div className="alert alert-info">Bạn chưa có sản phẩm nào trong giỏ.</div>

  return (
    <div>
      <h2 className="mb-3">Xác nhận thanh toán</h2>
      <ul className="list-group mb-3">
        {cart.map((item, index) => (
          <li className="list-group-item d-flex justify-content-between" key={index}>
            <span>{item.name} × {item.quantity}</span>
            <span>{(item.price * item.quantity * (1 - item.discount / 100)).toLocaleString()}₫</span>
          </li>
        ))}
      </ul>
      <div className="d-flex justify-content-between mb-3">
        <strong>Tổng cộng:</strong>
        <strong>{total.toLocaleString()}₫</strong>
      </div>
      <button className="btn btn-primary" onClick={handleCheckout} disabled={processing}>
        {processing ? 'Đang xử lý...' : 'Xác nhận & Thanh toán'}
      </button>
    </div>
  )
}
