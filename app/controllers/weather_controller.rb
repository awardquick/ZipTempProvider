class WeatherController < ApplicationController
  def index
    @error = flash[:error]
    @weather = flash[:weather]
    @zip_code = flash[:zip_code]
  end

  def fetch_weather
    zip = params[:zip_code].to_s.strip

    if zip.blank?
      flash[:error] = "Zip code is required to get the weather"
    elsif !zip.match(/\A\d{5}\z/)
      flash[:error] = "Zip code must be exactly 5 digits"
    elsif zip == "00000"
      flash[:error] = "Zip code is invalid"
    else
      flash[:weather] = "#{rand(20..100)} degrees Fahrenheit"
    end

    flash[:zip_code] = zip
    redirect_to root_path
  end
end
