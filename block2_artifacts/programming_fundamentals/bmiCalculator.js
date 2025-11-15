// Function to calculate BMI
function calculateBMI() {
    let unit = document.getElementById('unit').value; // Get selected unit (metric or imperial)
    let bmi = 0; // Initialize BMI variable
    let resultText = ''; // Initialize result text

    // Check if the unit is metric
    if (unit === 'metric') {
        // Get the values of weight and height in metric
        let weight = parseFloat(document.getElementById('weight-metric').value);
        let height = parseFloat(document.getElementById('height-metric').value);

        // Check if the inputs are valid
        if (isNaN(weight) || isNaN(height) || weight <= 0 || height <= 0) {
            alert("Please enter valid values for weight and height.");
            return;
        }

        // Calculate BMI using metric units (kg/m²)
        bmi = weight / (height * height);
    } else if (unit === 'imperial') {
        // Get the values of weight and height in imperial
        let weight = parseFloat(document.getElementById('weight-imperial').value);
        let height = parseFloat(document.getElementById('height-imperial').value);

        // Check if the inputs are valid
        if (isNaN(weight) || isNaN(height) || weight <= 0 || height <= 0) {
            alert("Please enter valid values for weight and height.");
            return;
        }

        // Calculate BMI using imperial units (lbs/inches²)
        bmi = (weight * 703) / (height * height);
    }

    // Classify BMI value
    if (bmi < 18.5) {
        resultText = 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
        resultText = 'Normal weight';
    } else if (bmi >= 25 && bmi < 29.9) {
        resultText = 'Overweight';
    } else {
        resultText = 'Obese';
    }

    // Display the BMI and result
    document.getElementById('result').innerText = `BMI: ${bmi.toFixed(2)} - ${resultText}`;

    // Ask user if they want to recalculate or exit
    setTimeout(() => {
        let userChoice = confirm("Would you like to calculate again? Click OK to recalculate or Cancel to exit.");
        if (userChoice) {
            resetCalculator(); // Reset the calculator for new input
        } else {
            alert("Thank you for using the BMI calculator!");
        }
    }, 100);
}

// Function to reset the calculator
function resetCalculator() {
    // Clear all inputs and result
    document.getElementById('weight-metric').value = '';
    document.getElementById('height-metric').value = '';
    document.getElementById('weight-imperial').value = '';
    document.getElementById('height-imperial').value = '';
    document.getElementById('result').innerText = '';
    document.getElementById('unit').value = 'metric';

    // Reset to default unit display
    document.getElementById('metric-inputs').style.display = 'block';
    document.getElementById('imperial-inputs').style.display = 'none';
}

// Event listener for switching between metric and imperial inputs
document.getElementById('unit').addEventListener('change', function () {
    if (this.value === 'metric') {
        document.getElementById('metric-inputs').style.display = 'block';  // Show metric inputs
        document.getElementById('imperial-inputs').style.display = 'none'; // Hide imperial inputs
    } else {
        document.getElementById('metric-inputs').style.display = 'none'; // Hide metric inputs
        document.getElementById('imperial-inputs').style.display = 'block'; // Show imperial inputs
    }
});