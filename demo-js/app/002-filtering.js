import continents 
  from '../data/Continents.json' with {type:"json"}

console.log(
    continents.filter(c=>{
        return c.ContinentsId % 2 === 0;
    })
)