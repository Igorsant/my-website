defmodule MyWebsiteWeb.PageController do
  use MyWebsiteWeb, :controller

  def home(conn, _params) do
    navItems = [%{active: true, label: "Home", path: "/"}, %{active: false, label: "About", path: "about"}, %{active: false, label: "Contact"}]
    projectCards = [
      %{ title: "project 1", description: "description", href: "href"},
      %{ title: "project 2", description: "description 2", href: "href2"}
    ]

    render(conn, :home, navItems: navItems, projectCards: projectCards)
  end

  def about(conn, _params) do
    navItems = [%{active: false, label: "Home", path: "/"}, %{active: true, label: "About", path: "about"}, %{active: false, label: "Contact"}]

    render(conn, :about, navItems: navItems)
  end
end
