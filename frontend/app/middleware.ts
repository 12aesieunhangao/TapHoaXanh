import { NextResponse } from 'next/server'
import type { NextRequest } from 'next/server'

export function middleware(request: NextRequest) {
  const token = request.cookies.get('token')?.value
  const { pathname } = request.nextUrl

  // Các đường dẫn yêu cầu đăng nhập
  const protectedRoutes = ['/main/checkout', '/main/user/profile']

  if (protectedRoutes.includes(pathname) && !token) {
    return NextResponse.redirect(
      new URL(`/main/login?redirect=${pathname}`, request.url)
    )
  }

  return NextResponse.next()
}

export const config = {
  matcher: ['/main/checkout', '/main/user/:path*'],
}