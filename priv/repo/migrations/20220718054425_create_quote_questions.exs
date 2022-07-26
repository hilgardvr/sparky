defmodule Sparky.Repo.Migrations.CreateQuoteQuestions do
  use Ecto.Migration

  def change do
    create table(:quote_questions) do
      add :question, :string, null: false
    end
  end
end
