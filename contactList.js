var friends = {
    spencer: {
        firstName:"Spencer",
        lastName:"Duhaime",
        number:"201",
        address: ['251 1st avenue',"NYC","NY","324"]
        },
    alex: {
        firstName:"Alex",
        lastName:"Fields",
        number: "202",
        address: ['251 1st avenue',"NYC","NY","324"]
        },
    bill: {
        firstName:"Bill",
        lastName:"Cosby",
        number: "4",
        address: ['251 1st avenue',"NYC","NY","324"]
        },
    steve: {
        firstName:"Steve",
        lastName:"Blue's Clues",
        number:"5",
        address: ['251 1st avenue',"NYC","NY","324"]
        }
};

var list = function(par) {
    for(var elmt in par) {
        console.log(elmt);
    }
};

var search = function(name) {
    for(var key in friends) {
        if (friends[key].firstName === name) {
            console.log(friends[key]);
            return friends[key];
        }
    }
};
