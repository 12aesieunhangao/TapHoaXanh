'use client'

interface PaginationProps {
  currentPage: number
  totalItems: number
  itemsPerPage: number
  onPageChange: (page: number) => void
  maxPagesToShow?: number // tuỳ chọn: số nút phân trang hiển thị (default 5)
}

export default function Pagination({
  currentPage,
  totalItems,
  itemsPerPage,
  onPageChange,
  maxPagesToShow = 5,
}: PaginationProps) {
  const totalPages = Math.ceil(totalItems / itemsPerPage)
  if (totalPages <= 1) return null

  // Hiển thị phân trang dạng ... 4 5 6 7 8 ...
  let startPage = Math.max(1, currentPage - Math.floor(maxPagesToShow / 2))
  let endPage = startPage + maxPagesToShow - 1
  if (endPage > totalPages) {
    endPage = totalPages
    startPage = Math.max(1, endPage - maxPagesToShow + 1)
  }
  const pages = []
  for (let i = startPage; i <= endPage; i++) {
    pages.push(i)
  }

  return (
    <nav>
      <ul className="pagination justify-content-center">
        <li className={`page-item${currentPage === 1 ? ' disabled' : ''}`}>
          <button
            className="page-link"
            onClick={() => onPageChange(currentPage - 1)}
            disabled={currentPage === 1}
          >
            Trước
          </button>
        </li>
        {startPage > 1 && (
          <li className="page-item">
            <button className="page-link" onClick={() => onPageChange(1)}>1</button>
            {startPage > 2 && <span className="page-link disabled">...</span>}
          </li>
        )}
        {pages.map((page) => (
          <li
            key={page}
            className={`page-item${currentPage === page ? ' active' : ''}`}
          >
            <button className="page-link" onClick={() => onPageChange(page)}>
              {page}
            </button>
          </li>
        ))}
        {endPage < totalPages && (
          <li className="page-item">
            {endPage < totalPages - 1 && <span className="page-link disabled">...</span>}
            <button className="page-link" onClick={() => onPageChange(totalPages)}>{totalPages}</button>
          </li>
        )}
        <li className={`page-item${currentPage === totalPages ? ' disabled' : ''}`}>
          <button
            className="page-link"
            onClick={() => onPageChange(currentPage + 1)}
            disabled={currentPage === totalPages}
          >
            Tiếp
          </button>
        </li>
      </ul>
    </nav>
  )
}
