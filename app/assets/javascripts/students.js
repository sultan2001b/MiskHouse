// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// Anytime I work with an API, I need to answer the following questions:





// // URL?
// const baseURL = "https://api.github.com";
// // Method?
// var username = "sami";
// const path = "/users/sami";
// //apikey 
// const apikey = "c6807b2ba219dcfbd06ef82d9efce293974fe563";
// const params = `?access_token=${apikey}`;
// const url = baseURL + path + params;
//     console.log(url);
//     fetch(url)
//     .then(r => r.json())
//     .then(data => console.log(data));



// Data Type?
// const dataType = "application/json";

// const httpOptions = {
//   method: method
// };

// function turnResponseIntoObject(response) {
//   return response.json();
// }

// function displayData(data) {
//   const outputDiv = document.querySelector("#output");
//   outputDiv.innerHTML = "";

//   for (let person of data.results) {
//     const html = `
//       <h2>${person.name.first} ${person.name.last}</h2>
//       <img src="${person.picture.medium}">
//       <p>Email: ${person.email}</p>
//     `;
//     outputDiv.innerHTML += html;
//   }
// }

// function fetchNewUser() {
//   const numInput = document.querySelector("input");
//   const val = numInput.value;

//   const genderSelect = document.querySelector("select");
//   const gender = genderSelect.value;

//   const params = `?results=${val}&gender=${gender}`;
//   fetch(baseURL + params, httpOptions)
//     .then(turnResponseIntoObject)
//     .then(displayData);
// }

// const button = document.querySelector("button");
// button.addEventListener("click", fetchNewUser);

// Material Select Initialization
