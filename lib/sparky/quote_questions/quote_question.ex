defmodule Sparky.QuoteQuestions do
  alias Sparky.Repo, as: Repo
  import Sparky.QuoteAnswers
  use Ecto.Schema

  schema "quote_questions" do
    field :question, :string
    has_many :quote_answers, Sparky.QuoteAnswers
  end

  def get_question_with_answers(question_id) do
    Repo.get(Sparky.QuoteQuestions, question_id)
    |> Repo.preload(:quote_answers)
  end
end
