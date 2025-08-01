defmodule MyWebsiteWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use MyWebsiteWeb, :html

  embed_templates "page_html/*"

  slot :inner_block, required: true

  def h2(assigns) do
    ~H"""
      <h2 class="text-3xl font-semibold">
        {render_slot(@inner_block)}
      </h2>
    """
  end

  slot :inner_block, required: true

  def p(assigns) do
    ~H"""
      <h3 class="mt-5 text-gray-400">
        {render_slot(@inner_block)}
      </h3>
    """
  end

  attr :title, :string, required: true
  attr :description, :string, required: true
  attr :href, :string, required: true
  def projects_card(assigns) do
    ~H"""
    <article class="relative isolate flex flex-col overflow-hidden rounded-2xl bg-gray-900 px-8 pb-5 pt-5">
      <h3 class="text-lg/6 font-semibold text-white">
        {@title}
      </h3>
      <.p>
        {@description}
      </.p>
      <div class="mt-auto pt-5">
        <a href={@href} target="blank">
          View on github
        </a>
      </div>
    </article>
    """
  end
end
