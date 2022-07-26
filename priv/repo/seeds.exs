# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Sparky.Repo.insert!(%Sparky.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Sparky.Repo.insert!(%Sparky.QuoteQuestions{question: "What is your email address?"})
|> Ecto.build_assoc(:quote_answers, %Sparky.QuoteAnswers{type: :free_text})
|> Sparky.Repo.insert!()

pet_question = Sparky.Repo.insert!(%Sparky.QuoteQuestions{question: "What type of pet do you have?"})
Ecto.build_assoc(pet_question, :quote_answers, %Sparky.QuoteAnswers{answer: "Dog", type: :multiple_choice)
|> Sparky.Repo.insert!()
Ecto.build_assoc(pet_question, :quote_answers, %Sparky.QuoteAnswers{answer: "Cat", type: :multiple_choice)
|> Sparky.Repo.insert!()

