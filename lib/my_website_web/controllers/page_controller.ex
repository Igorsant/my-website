defmodule MyWebsiteWeb.PageController do
  use MyWebsiteWeb, :controller

  def home(conn, _params) do
    navItems = [%{active: true, label: "Home"}, %{active: false, label: "About"}, %{active: false, label: "Contact"}]
    projectCards = [
      %{ title: "project 1", description: "description", href: "href"},
      %{ title: "project 2", description: "description 2", href: "href2"}
    ]

    render(conn, :home, navItems: navItems, projectCards: projectCards)
  end
end
