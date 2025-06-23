'use client'

import { useState, Suspense } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'
import api from '@/lib/axios'

function LoginForm() {
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const router = useRouter()
  const searchParams = useSearchParams()
  const redirectTo = searchParams.get('redirect') || '/main/cart'

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault()
    try {
      await api.post('/login', { email, password })
      router.push(redirectTo)
    } catch {
      alert('Đăng nhập thất bại. Vui lòng kiểm tra thông tin.')
    }
  }

  return (
    <form onSubmit={handleLogin} style={{ maxWidth: 500 }}>
      <div className="mb-3">
        <label className="form-label">Email</label>
        <input
          type="email"
          className="form-control"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          required
        />
      </div>
      <div className="mb-3">
        <label className="form-label">Mật khẩu</label>
        <input
          type="password"
          className="form-control"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          required
        />
      </div>
      <button type="submit" className="btn btn-primary w-100">Đăng nhập</button>
    </form>
  )
}

export default function LoginPage() {
  return (
    <div className="container py-5">
      <h2 className="mb-4">Đăng nhập tài khoản</h2>
      <Suspense fallback={<p>Đang tải...</p>}>
        <LoginForm />
      </Suspense>
    </div>
  )
}