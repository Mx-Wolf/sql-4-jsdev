import AccomodationTypes 
  from "../data/AccomodationTypes.json" with {type: "json"}

console.log(
  AccomodationTypes.sort(
    (a, b) => (
      b.AccomodationTypesId - a.AccomodationTypesId
    )));