class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @m = Movie.last

  if @m.nil?
    response = HTTParty.get('https://api.themoviedb.org/3/discover/movie?primary_release_date.gte=2017-04-21&primary_release_date.lte=2017-05-04&api_key=9102d7681e0cf5372e737751c7b9c3b9&region=US&language=en')
    

    data = response.parsed_response["results"]
    data.each do |object|
      @mov = Movie.new
      @mov.title = object["original_title"]
      @mov.rating = 0
      @mov.release_date = object["release_date"]
      @mov.img = "https://image.tmdb.org/t/p/w500" + object["poster_path"]


      genre = object["genre_ids"][0]

      case genre
      when 28
        @mov.genre = "Action"
      when 12
        @mov.genre = "Adventure"
      when 16
        @mov.genre = "Animation"
      when 35
        @mov.genre = "Comedy"
      when 80
        @mov.genre = "Crime"
      when 99
        @mov.genre = "Documentary"
      when 18
        @mov.genre = "Drama"
      when 10751
        @mov.genre = "Family"
      when 14
        @mov.genre = "Fantasy"
      when 36
        @mov.genre = "History"
      when 27
        @mov.genre = "Horror"
      when 10402
        @mov.genre = "Music"
      when 9648
        @mov.genre = "Mystery"
      when 10749
        @mov.genre = "Romance"
      when 878
        @mov.genre = "Science Fiction"
      when 10770
        @mov.genre = "TV Movie"
      when 53
        @mov.genre = "Thriller"
      when 10752
        @mov.genre = "War"
      when 37
        @mov.genre = "Western"
      else
        @mov.genre = "Unknown"
      end

      @mov.save

    end

  end

end
