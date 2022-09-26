# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
    end

    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
