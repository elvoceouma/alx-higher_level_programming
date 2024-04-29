#!/usr/bin/node
function funcFactorial (n) {
  if (isNaN(n)) {
    return 1;
  } else if (n <= 1) {
    return 1;
  } else {
    return n * funcFactorial(n - 1);
  }
}
const number = parseInt(process.argv[2]);
console.log(funcFactorial(number));
