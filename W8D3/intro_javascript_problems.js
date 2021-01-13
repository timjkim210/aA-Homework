function madLib(verb, adjective, noun) {
    let string = "We shall " + verb.toUpperCase() + " the " + adjective.toUpperCase() + " " + noun.toUpperCase() + "."
    return string 
}

function isSubstring(searchString, subString) {
    let searchWords = searchString.split(" ");

    return searchWords.includes(subString);
}

function fizzBuzz(array) {
    var result_array = [];

    for (let i = 0; i < array.length; i++) {
        var num = array[i];

        if (((num % 3 === 0) || (num % 5 === 0)) && !((num % 3 === 0) && (num % 5 === 0))) {
            result_array.push(num);
        }
    }

    return result_array;
}

function isPrime(num) {
    if (num < 2) {
        return false
    }

    for (var i = 2; i < num; i++) {
        if (num % i === 0) {
            return false
        }
    }

    return true
}

function firstNPrimes(n) {
    var primes = [];
    for (var i = 2; i <= n; i++) {
        if (isPrime(i)) {
            primes.push(i)
        }
    }

    return primes;
}

function sumOfNPrimes(n) {
    var primes = firstNPrimes(n);
    var sum = 0;

    for (var i = 0; i < primes.length; i++) {
        sum += primes[i];
    }

    return sum
}




