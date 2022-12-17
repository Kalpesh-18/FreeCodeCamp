const firstVariable = 'Learning to code gives you superpowers';
const secondVariable = 10;
const thirdVariable = { firstProperty: 'hello world' };

// const variable;              const would not allow this as it needs declarations to be initialized as well
//                              let allows to declare and initialize separately
let variable;
variable = 20;


// Difference between var, const and let
var newVariable = 10;           // redeclaration and reassignment is allowed multiple times, not advised to use
var newVariable = 20;

const newConstVariable = 10;    // No redeclaration, reassignment allowed
//                                 const newConstVariable = 20; THIS WILL GIVE ERROR

let counter = 0;                //Only reassignment allowed
counter = counter + 1;

// typeof keyword
typeof counter;

// type converstion
let number1 = '10';
let number2 = 20;

let stringConcat = number1 + number2;     //Implicitly converts number to string to perform string concatenation
let addition = Number(number1) + number2; //Explicitly converting string to number to perform addition

// Arrays
const firstArray = [10, 20, 'KALPESH', { prop: 'name' }, [1, 2]];

// Objects
const objectVariable = {
    name: 'Kalpesh',
    age: 22,
    prop1: 100
};

let name = objectVariable.name;         //Stores the value pointed by name key of objectVariable
let newName = objectVariable['name'];   //Stores the value pointed by name key of objectVariable

// Functions
const functionVariable = function() {
    return 20;
}