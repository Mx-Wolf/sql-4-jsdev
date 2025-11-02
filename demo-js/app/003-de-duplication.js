import continents from '../data/ContinentsTwice.json' with {type:"json"}

const result = new Set(
    continents.map(e=>e.ContinentName)
);
console.log(continents)
console.log(result)