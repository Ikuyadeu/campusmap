// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
class User < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
end