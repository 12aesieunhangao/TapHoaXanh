import { NextRequest, NextResponse } from 'next/server'

export async function POST(req: NextRequest) {
  try {
    const body = await req.json()
    console.log('🛒 Dữ liệu giỏ hàng nhận được:', body)

    // 🧪 TODO: Lưu dữ liệu vào DB nếu cần

    return NextResponse.json({ message: 'Đã nhận giỏ hàng', received: body }, { status: 200 })
  } catch (err) {
    console.error('Lỗi khi xử lý giỏ hàng:', err)
    return NextResponse.json({ message: 'Lỗi xử lý dữ liệu' }, { status: 500 })
  }
} 