defmodule SparkyWeb.QuoteController do
  alias Sparky.QuoteQuestions, as: QuoteQuestions
  use SparkyWeb, :controller

  def index(conn, _params) do
    next_quesiton = QuoteQuestions.get_question_with_answers(1)
    render(conn, "index.html", question: next_quesiton)
  end
end
