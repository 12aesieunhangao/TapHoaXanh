// components/CategoryFilter.tsx
'use client'
import { useState } from 'react'

interface FilterProps {
  onFilter: (filters: { name: string; min: string; max: string; sort: string }) => void
}

export default function CategoryFilter({ onFilter }: FilterProps) {
  const [name, setName] = useState('')
  const [min, setMin] = useState('')
  const [max, setMax] = useState('')
  const [sort, setSort] = useState('newest')

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault()
    onFilter({ name, min, max, sort })
  }

  return (
    <form className="mb-4" onSubmit={handleSubmit}>
      <div className="row g-2">
        <div className="col-md-4">
          <input type="text" className="form-control" placeholder="Tên sản phẩm"
            value={name} onChange={e => setName(e.target.value)} />
        </div>
        <div className="col-md-2">
          <input type="number" className="form-control" placeholder="Giá từ"
            value={min} onChange={e => setMin(e.target.value)} />
        </div>
        <div className="col-md-2">
          <input type="number" className="form-control" placeholder="Giá đến"
            value={max} onChange={e => setMax(e.target.value)} />
        </div>
        <div className="col-md-2">
          <select className="form-select" value={sort} onChange={e => setSort(e.target.value)}>
            <option value="newest">Mới nhất</option>
            <option value="oldest">Cũ nhất</option>
            <option value="price-asc">Giá tăng dần</option>
            <option value="price-desc">Giá giảm dần</option>
          </select>
        </div>
        <div className="col-md-2">
          <button type="submit" className="btn btn-success w-100">Lọc</button>
        </div>
      </div>
    </form>
  )
}
