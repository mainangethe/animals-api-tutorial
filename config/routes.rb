Rails.application.routes.draw do
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :people, only: [:index, :show]
    resources :cats, only: [:index, :show]
  end

end
