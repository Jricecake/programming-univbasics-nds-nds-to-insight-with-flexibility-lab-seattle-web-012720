# Provided, don't edit
require 'directors_database'

# A method we're giving you. This "flattens"  Arrays of Arrays so: [[1,2],
# [3,4,5], [6]] => [1,2,3,4,5,6].

def flatten_a_o_a(aoa)
  result = []
  i = 0

  while i < aoa.length do
    k = 0
    while k < aoa[i].length do
      result << aoa[i][k]
      k += 1
    end
    i += 1
  end

  result
end

def movie_with_director_name(director_name, movie_data)
  { 
    :title => movie_data[:title],
    :worldwide_gross => movie_data[:worldwide_gross],
    :release_year => movie_data[:release_year],
    :studio => movie_data[:studio],
    :director_name => director_name
  }
end


# Your code after this point


def movies_with_director_key(name, movies_collection)
  i = 0 
  movies_key = []
  director_name = name
  #binding.pry
  while i < movies_collection.length do
    movie = movies_collection[i]
    movies_key[i] = movie_with_director_name(director_name, movie)
    i += 1 
  end
movies_key


#we want to end up with an array of hashes-
#[{director: movie name}, etc. etc.]
# method movie_with_director_name takes
  # GOAL: For each Hash in an Array (movies_collection), provide a collection
  # of movies and a directors name to the movie_with_director_name method
  # and accumulate the returned Array of movies into a new Array that's
  # returned by this method.
  #
  # INPUT:
  # * name: A director's name
  # * movies_collection: An Array of Hashes where each Hash represents a movie
  #
  # RETURN:
  #
  # Array of Hashes where each Hash represents a movie; however, they should all have a
  # :director_name key. This addition can be done by using the provided
  # movie_with_director_name method
end


def gross_per_studio(collection)
  
  i = 0
  total_studio_grosses = {}

  while i < collection.length do
    current_studio = collection[i][:studio]
    current_gross = collection[i][:worldwide_gross]
<<<<<<< HEAD

    if !total_studio_grosses[current_studio]
      total_studio_grosses[current_studio] = current_gross
    else 
      total_studio_grosses[current_studio] += current_gross
#binding.pry
=======
<<<<<<< HEAD
    binding.pry
    if !total_studio_grosses[current_studio]
      total_studio_grosses[current_studio] = current_gross
    else total_studio_grosses[current_studio] += current_gross

=======

    if !total_studio_grosses[current_studio]
      total_studio_grosses[current_studio] = current_gross
    else total_studio_grosses[current_studio] += current_gross
>>>>>>> afcf5a9229972f076d9523c925083ab9a010a99c
>>>>>>> d1e0002c44f23946b27ffbd498dfd1b73ed91d5e
    end
    i += 1
end

total_studio_grosses
  # GOAL: Given an Array of Hashes where each Hash represents a movie,
  # return a Hash that includes the total worldwide_gross of all the movies from
  # each studio.
  #
  # INPUT:
  # * collection: Array of Hashes where each Hash where each Hash represents a movie
  #
  # RETURN:
  #
  # Hash whose keys are the studio names and whose values are the sum
  # total of all the worldwide_gross numbers for every movie in the input Hash
end

def movies_with_directors_set(source)
  director_set = []
  i = 0

  while i < source.length do
    director_combo = []
    director_name = source[i][:name]
    current_movies = source[i][:movies]
    #director_combo[director_name] = current_movies
    director_set << movies_with_director_key(director_name, current_movies)  
binding.pry
    i += 1
  end  
director_set
  # GOAL: For each director, find their :movies Array and stick it in a new Array
  #
  # INPUT:
  # * source: An Array of Hashes containing director information including
  # :name and :movies
  #
  # RETURN:
  #
  # Array of Arrays containing all of a director's movies. Each movie will need
  # to have a :director_name key added to it.
end

# ----------------    End of Your Code Region --------------------
# Don't edit the following code! Make the methods above work with this method
# call code. You'll have to "see-saw" to get this to work!

def studios_totals(nds)
  a_o_a_movies_with_director_names = movies_with_directors_set(nds)
  movies_with_director_names = flatten_a_o_a(a_o_a_movies_with_director_names)
  return gross_per_studio(movies_with_director_names)
end
