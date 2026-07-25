import React, { useState } from "react";

import CurrencyConvertor from "./CurrencyConvertor";

function App() {

    const [count, setCount] = useState(0);

    function increment() {
        setCount(count + 1);
    }

    function decrement() {
        setCount(count - 1);
    }

    function sayHello() {
        alert("Hello Member!");
    }

    function incrementAndHello() {
        increment();
        sayHello();
    }

    function sayWelcome(msg) {
        alert(msg);
    }

    function onPress() {
        alert("I was clicked");
    }

    return (

        <div>

            <h2>{count}</h2>

            <button onClick={incrementAndHello}>
                Increment
            </button>

            <br /><br />

            <button onClick={decrement}>
                Decrement
            </button>

            <br /><br />

            <button
                onClick={() => sayWelcome("Welcome")}
            >
                Say Welcome
            </button>

            <br /><br />

            <button onClick={onPress}>
                Click on me
            </button>

            <br /><br />

            <CurrencyConvertor />

        </div>

    );

}

export default App;