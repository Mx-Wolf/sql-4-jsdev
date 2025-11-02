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
            ContinentName: c.ContinentName,
            Rating: a.Rating,            
        }))        
    })
    .reduce((a,b)=>{
        const v = a[b.ContinentName] ?? {averageRating:0, ratingCount:0};
        v.ratingCount += 1;
        v.averageRating += (b.Rating - v.averageRating) / v.ratingCount;
        a[b.ContinentName] = v;
        return a;
    }, {})    
)