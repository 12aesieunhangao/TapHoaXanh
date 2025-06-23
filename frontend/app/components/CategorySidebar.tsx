// components/CategorySidebar.tsx
'use client'
import React from 'react'

interface CategorySidebarProps {
  categories: string[]
  selected: string
  onSelect: (cat: string) => void
}

export default function CategorySidebar({ categories, selected, onSelect }: CategorySidebarProps) {
  return (
    <aside className="bg-light p-3 h-100">
      <ul className="list-group">
        {categories.map(cat => (
          <li
            key={cat}
            className={`list-group-item ${selected === cat ? 'active' : ''} cursor-pointer`}
            style={{ cursor: 'pointer' }}
            onClick={() => onSelect(cat)}
          >
            {cat}
          </li>
        ))}
      </ul>
    </aside>
  )
}
