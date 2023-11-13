defmodule LiveViewAppsWeb.TopSecretLive do
  use LiveViewAppsWeb, :live_view

  on_mount {LiveViewAppsWeb.UserAuth, :ensure_authenticated}

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div id="top-secret">
      <img src="/images/spy.svg" />
      <div class="mission">
        <h1>Top Secret</h1>
        <h2>Your Mission</h2>
        <h3>(spy number 00<%= @current_user.id %>)</h3>
        <p>
          Storm the castle and capture 3 bottles of Elixir.
        </p>
      </div>
    </div>
    """
  end
end
