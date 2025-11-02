import Accomodations 
  from "../data/Accomodations.json" with {type:"json"}
import Continents
  from "../data/Continents.json" with {type: "json"}

console.log(
    Accomodations.flatMap(a=>{
        return Continents
        .filter(
            c=>c.ContinentsId === a.ContinentsId)
        .map(c=>({
            ContinentName: c.ContinentName            
        }))        
    })
    .reduce((a,b)=>{
        const v = a[b.ContinentName] ?? 0;
        a[b.ContinentName] = v + 1;
        return a;
    }, {})    
)