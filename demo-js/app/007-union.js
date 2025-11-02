import Continents 
  from "../data/Continents.json" with {type:"json"}
import HotelChains
  from "../data/HotelChains.json" with {type:"json"}

console.log(
    Continents.map(c=>({
        id: c.ContinentsId, 
        name: c.ContinentName}))
        .concat(HotelChains.map(h=>({
            id: h.HotelChainsId,
            name: h.HotelChainName
        })))
)