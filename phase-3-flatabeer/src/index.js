

//change beer's description, and patch to server


const beerUrl = "http://localhost:3000/beers/"

document.addEventListener('DOMContentLoaded', function(){
    getBeerList()
})

function getBeerList(){
    fetch(beerUrl)
        .then(resp => resp.json())
        .then(beerData => beerData.forEach(beer => {
            showBeerData(beer)    
        }))      
}

// when page loads, show first beers details - name, image, description and reviews
function showBeerData(beer){
   const beerDiv = document.querySelector(".beer-details")

   const beerName = document.querySelector(".beer-name")
   beerName.innerText = beer.name

   const beerImage = document.querySelector('img')
   beerImage.src = beer.image_url

   const beerDescription = document.querySelector(".description")

   const beerTextArea = document.querySelector(".text-area")
   beerTextArea.innerText = beer.description

   const updateButton = document.querySelector(".update-button")
   updateButton.addEventListener('click', (event) => {
       event.preventDefault()
       updateBeer(beer)
   })

   const customerReviews = document.querySelector(".reviews li")
   customerReviews.innerHTML = beer.reviews
   
   //add a review for beer with no refreshing of page (persistence)...does not need to be updated to
   const addBeerReview = document.querySelector(".review-form")
   addBeerReview.addEventListener('submit',(event) => {
       event.preventDefault()
       const textArea = document.querySelector(".review-text-area").value
       customerReviews.append(textArea)
       //realizing at the end of the challenge that 
       //I probably want to create a new li and then append the new review to that?
   })
}


// - Change the beer's description and **still see that change when reloading the page**
// no refresh
function updateBeer(beer){
    let reqPack = {
        headers: {'Content-Type': 'application/json'},
        method: "PATCH",
        body: JSON.stringify(beer),
    }

    fetch(`${beerUrl}${beer.id}`, reqPack)
        .then(res => res.json())
        .then(showBeerData)
}
//change is not happening on the server side for some reason.



