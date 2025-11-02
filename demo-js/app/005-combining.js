import 
  Countries 
  from "../data/Countries.json" with {type:"json"}
import
  Cities
  from "../data/Cities.json" with {type:"json"}

console.log(
    Cities.map(ci=>{
        const co = Countries.find(e=>e.CountriesId===ci.CountriesId);
        return {
            CountryName: co.CountryName,
            ...ci
        }
    })
)