local util = import 'pod.json';

local assignFood(fruit, snacks) =({
   fruit: fruit,
   snacks: snacks
});

local assignMovies(movies) =({
   movies: movies
});

local listKeys = std.objectFieldsAll(util.pods);

{
  pod: {
    [key]: {
    POD_NUMBER: std.parseInt(std.substr(key, 3, std.length(key))),
    food: assignFood(fruit = "orange", snacks = "Hershey"),
    movies: assignMovies(movies = "Interstellar")
    
    }
    for key in listKeys
  },
}
