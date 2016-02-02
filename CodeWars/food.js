var youKnow = "You know what's actually really good? ";

function capitalize(s) {return s.charAt(0).toUpperCase() + s.slice(1).toLowerCase();}

function actuallyReallyGood(foods){
  var unique = {};
  for (var i = 0; i < foods.length; i++) unique[foods[i]] = null;
  var uniqFoods = Object.keys(unique);
  var len = uniqFoods.length;
  if (len === 0) return youKnow + "Nothing!";
  return youKnow + capitalize(uniqFoods[0]) + " and more " + uniqFoods[len === 1 ? 0 : 1].toLowerCase() + ".";
}

//very cool and interesting the way he gets the unique keys to each object in order to get uniq foods.
