Rails.application.routes.draw do

  resources :tracks, only:[:create]
  get "tracks/bpm/:low/:high", to: "tracks#get_by_bpm"

end
