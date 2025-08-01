defmodule MyWebsiteWeb.PageController do
  use MyWebsiteWeb, :controller

  def home(conn, _params) do
    navItems = [%{active: true, label: "Home"}, %{active: false, label: "About"}, %{active: false, label: "Contact"}]
    [first | _rest] = navItems
    IO.inspect(first.active)
    render(conn, :home, navItems: navItems)
  end
end
