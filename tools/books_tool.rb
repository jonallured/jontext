class BooksTool < FastMcp::Tool
  description "Get list of books in order of created at timestamp with pagination support."
  tool_name "list_books"

  arguments do
    optional(:page).filled(:integer).description("The page number for pagination.")
  end

  def call(page:)
    Mli::Books.list(page)
  end
end
