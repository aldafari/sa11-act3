def parse_invoices(invoice_data)
  pattern = /\d/
  invoice = invoice_data.scan(pattern)
  invoice.flatten
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)

p "Date: #{}, Invoice Number #{}, Client: #{}, Amount: #{}"
