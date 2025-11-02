import Accomodations 
  from "../data/Accomodations.json" with {type:"json"}
import Continents
  from "../data/Continents.json" with {type: "json"}

console.log(
    Continents.map(c => {
        const qty = Accomodations.filter(
            a=>a.ContinentsId === c.ContinentsId);
        return {
            ContinentName: c.ContinentName,
            Qty: qty
        }
    })
)