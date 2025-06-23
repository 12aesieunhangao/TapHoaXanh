import { cookies } from 'next/headers'
import { NextRequest, NextResponse } from 'next/server'

export async function POST(req: NextRequest) {
  try {
    const body = await req.json()
    const { email, password } = body

    // ⚠ Đây là mock: thay bằng xác thực thật nếu cần
    if (email === 'user@example.com' && password === '123456') {
      const cookieStore = await cookies()
      cookieStore.set('token', 'mock-token-abc123', {
        httpOnly: true,
        path: '/',
        maxAge: 60 * 60 * 24, // 1 ngày
      })
      return NextResponse.json({ message: 'Đăng nhập thành công' }, { status: 200 })
    } else {
      return NextResponse.json({ message: 'Email hoặc mật khẩu không đúng' }, { status: 401 })
    }
  } catch {
    return NextResponse.json({ message: 'Lỗi xử lý đăng nhập' }, { status: 500 })
  }
}
