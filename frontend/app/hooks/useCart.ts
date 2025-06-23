'use client'
import { useEffect, useState } from "react"
import api from "../lib/axios"

export type CartItem = {
  id: number
  name: string
  price: number
  quantity: number
  slug: string
  images: string
  discount: number
  description: string
}

export function useCart() {
  const [cart, setCart] = useState<CartItem[]>([])

  useEffect(() => {
    const local = localStorage.getItem("cart_local")
    if (local) setCart(JSON.parse(local))
  }, [])

  const saveToLocal = (items: CartItem[]) => {
    localStorage.setItem("cart_local", JSON.stringify(items))
    setCart(items)
  }

  const addToCart = (product: Omit<CartItem, "quantity">) => {
    const existing = cart.find((item) => item.slug === product.slug)
    let updatedCart

    if (existing) {
      updatedCart = cart.map((item) =>
        item.slug === product.slug ? { ...item, quantity: item.quantity + 1 } : item
      )
    } else {
      updatedCart = [...cart, { ...product, quantity: 1 }]
    }

    saveToLocal(updatedCart)
  }

  const removeFromCart = (slug: string) => {
    const updatedCart = cart.filter((item) => item.slug !== slug)
    saveToLocal(updatedCart)
  }

  const syncWithDatabase = async () => {
    try {
      await api.post("/api/cart/sync", cart)
      localStorage.removeItem("cart_local")
    } catch (error) {
      console.error("Sync giỏ hàng thất bại:", error)
    }
  }

  return { cart, addToCart, removeFromCart, syncWithDatabase }
}
