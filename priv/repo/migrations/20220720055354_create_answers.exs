defmodule Sparky.Repo.Migrations.CreateAnswers do
  use Ecto.Migration

  def change do
    create table(:quote_answers) do
      add :answer, :string
      add :type, :string, null: false
      add :loading, :float
      add :quote_questions_id, references(:quote_questions)
    end
  end
end
