// OBJECTIVE - Change colors of body element on click

// Select the body element and store it in variable
const htmlbody = document.querySelector('body');

// Function to Execute logic
const randomClickFunction = function () {

    // Array of colors which will be used for body-color
    const colors = ["red", "orange", "yellow", "green"];
    
    // Generating a random number within a range
    const randomIndex = Math.floor(Math.random() * colors.length);
    
    // Selecting a random color
    const randomColor = colors[randomIndex];
    
    // Setting the selected color
    htmlbody.style.backgroundColor = randomColor;
    
    // Printing message
    console.log('The user clicked and set the color to' + randomColor);
}

// Binding the function with onclick functionality
htmlbody.onclick = randomClickFunction;