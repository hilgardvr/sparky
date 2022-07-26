defmodule Sparky.QuoteAnswers do
  use Ecto.Schema

  @answer_types [:free_text, :yes_no, :multiple_choice]

  schema "quote_answers" do
    field :answer, :string
    field :type, Ecto.Enum, values: @answer_types
    field :loading, :float
    belongs_to :quote_questions, Sparky.QuoteQuestions
  end
end
