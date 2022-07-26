defmodule SparkyWeb.QuoteLive do
  import Sparky.QuoteQuestions
  use SparkyWeb, :live_view   

  @first_question_id 1
  

  def mount(_params, _session, socket) do
    q1 = get_question_with_answers(@first_question_id)
    socket = assign(socket, :question, q1)
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
      <form phx-validate="validate" phx-submit="submit">
        <%= @question.question %>
        <%= case @question.quote_answers |> List.first |> Map.get(:type) do
          :free_text -> ~H'<input name="answer"/>'
        end %>
        <%= submit "Submit", phx_disable_with: "Saving..." %>
    """
  end

  def handle_event("submit", %{"answer" => answer}, socket) do
    IO.inspect(socket)
    IO.inspect(answer)
    next_question_with_answer = get_question_with_answers(@first_question_id)
    socket = assign(socket, :question, next_question_with_answer)
    {:noreply, socket}
  end

end
