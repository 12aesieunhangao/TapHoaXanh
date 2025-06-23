// 📁 layout.tsx
import type { Metadata } from "next"
import { Geist, Geist_Mono } from "next/font/google"
import "bootstrap/dist/css/bootstrap.min.css"
// import "@/public/client/css/all.min.css"
// import "@/public/client/css/hover-min.css"
// import "@/public/client/css/flag-icons.min.css"
// import "@/public/client/css/style.css"
// import "@/public/client/fonts/fontstyle.css"
import "./globals.css"

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
})

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
})

export const metadata: Metadata = {
  title: "Tạp Hóa Xanh - Thực Phẩm Sạch",
  description: "Tạp Hóa Xanh - Cung cấp thực phẩm sạch, an toàn cho sức khỏe",
  keywords: "thực phẩm sạch, rau củ quả, thịt cá, đồ khô, gia vị",
  icons: {
    icon: "/client/images/favicon.png",
  },
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="vi">
      <body className={`${geistSans.variable} ${geistMono.variable}`}>
        {children}
      </body>
    </html>
  )
}
