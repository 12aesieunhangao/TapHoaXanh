'use client'

import { useState, FormEvent } from 'react'

interface SearchFilterProps {
  onFilter: (filters: { search: string; category: string; maxPrice: string }) => void
}

const SearchFilter = ({ onFilter }: SearchFilterProps) => {
  const [search, setSearch] = useState('')
  const [category, setCategory] = useState('')
  const [maxPrice, setMaxPrice] = useState('')

  const handleSearch = (e: FormEvent) => {
    e.preventDefault()
    onFilter({ search, category, maxPrice })
  }

  return (
    <form className="row mb-4" onSubmit={handleSearch}>
      <div className="col-md-4">
        <input
          type="text"
          className="form-control"
          placeholder="Tìm sản phẩm..."
          value={search}
          onChange={(e) => setSearch(e.target.value)}
        />
      </div>

      <div className="col-md-3">
        <select
          className="form-select"
          value={category}
          onChange={(e) => setCategory(e.target.value)}
        >
          <option value="">Tất cả danh mục</option>
          <option value="rau">Rau</option>
          <option value="thit">Thịt</option>
          <option value="hai-san">Hải sản</option>
        </select>
      </div>

      <div className="col-md-3">
        <input
          type="number"
          className="form-control"
          placeholder="Giá tối đa"
          value={maxPrice}
          onChange={(e) => setMaxPrice(e.target.value)}
        />
      </div>

      <div className="col-md-2">
        <button type="submit" className="btn btn-success w-100">Tìm kiếm</button>
      </div>
    </form>
  )
}

export default SearchFilter
