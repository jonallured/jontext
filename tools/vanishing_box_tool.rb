class VanishingBoxTool < FastMcp::Tool
  description "Add content to the Vanishing Box"
  tool_name "add_to_vanishing_box"

  arguments do
    required(:body).filled(:string).description("The content to put into the Vanishing Box.")
  end

  def call(body:)
    Mli::VanishingMessages.create(body: body)
    "done"
  end
end
