/*
    Arithmetic operators (+, -, *, /, %, **, ++, --)
    Assignment operator (=, +=, -=, *=, /=)
*/

/*  Comparison operator (==, ===, !=, !==, >, <, >=, <=)
    '===' checks both value and type while '==' only checks value
    Both the variables will give true */
const result1 = 20 === 20;      //Checks as it is
const result2 = 20 == '20';     //First conversion to same datatype and then check value

//Exception
const myArray = [1, 2, 3, 4, 5];
const myArray1 = [1, 2, 3, 4, 5];
myArray == myArray1;    // false
myArray === myArray1    // false

//Ternary operator
const result = 20 === 20 ? 'Match' : 'Not Match';

//  Logical operator (&&, ||, !)