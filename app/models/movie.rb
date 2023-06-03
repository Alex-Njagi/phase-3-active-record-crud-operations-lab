class Movie < ActiveRecord::Base
    def self.create_with_title (title)
        Movie.create(title: title)
    end

    def self.first_movie
        first_movie = Movie.first
    end

    def self.last_movie
        last_movie = Movie.last
    end

    def self.movie_count
        movie_count = Movie.count
    end
    
    def self.find_movie_with_id (id)
        find_movie_with_id = Movie.find(id)
    end

    def self.find_movie_with_attributes (title)
        find_movie_with_attributes = Movie.find_by(title)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > ?", 2002)
      end

      def update_with_attributes(title)
        movie = Movie.find(id)
        movie.update(title)
      end
      
      

    def self.update_all_titles (title)
        all_titles = Movie.all
        all_titles.update(title: title)
    end
    
    def self.delete_by_id (id)
        deleted_by_id = Movie.find(id)
        deleted_by_id.destroy
    end
    
    def self.delete_all_movies
        Movie.destroy_all
      end
      
end