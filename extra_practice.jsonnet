local util = import 'pod.json';

local fruits = ["apple", "banana", "cherry", "pears"];
local movies = ["Interstellar", "Batman", "Joker"];
local snacks = ["Hershey", "Doritos"];

local assignFood(index) =({
   fruit: fruits[index%std.length(fruits)],
   snacks: snacks[index%std.length(snacks)]
});

local assignMovies(index) =({
   movies: movies[index%std.length(movies)]
});

local listKeys = std.objectFieldsAll(util.pods);

{
  pod: {
    [listKeys[index]]: {
    POD_NUMBER: std.parseInt(std.substr(listKeys[index], 3, std.length(listKeys[index]))),
    food: assignFood(index = index),
    movies: assignMovies(index = index)
    
    }
    for index in std.range(0, std.length(listKeys) - 1)
  },
}

