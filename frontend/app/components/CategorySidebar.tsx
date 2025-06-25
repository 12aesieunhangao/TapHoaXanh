'use client'
import React from 'react'

interface Category {
  id: number
  name: string
}
interface CategorySidebarProps {
  categories: Category[]
  selected: number
  onSelect: (catId: number) => void
}

export default function CategorySidebar({ categories, selected, onSelect }: CategorySidebarProps) {
  return (
    <aside className="bg-light p-3 h-100">
      <ul className="list-group">
        {categories.map(cat => (
          <li
            key={cat.id}
            className={`list-group-item ${selected === cat.id ? 'active' : ''}`}
            style={{ cursor: 'pointer' }}
            onClick={() => onSelect(cat.id)}
          >
            {cat.name}
          </li>
        ))}
      </ul>
    </aside>
  )
}
