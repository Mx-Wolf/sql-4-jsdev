import Accomodations
  from "../data/Accomodations.json" with {type:"json"}

console.log(
    Accomodations
    .sort((a,b)=>(
        b.AccomodationsId-a.AccomodationsId))
    .slice(1*5, 2*5)
)  