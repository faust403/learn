var animals = ["dog", "cat", "elk"];

for(i = 0; i < animals.length; i += 1)
    animals[i] = animals[i] + "!";

var addBang = function()
{
    return s + "!";
}
animals = animals.map(addBang)