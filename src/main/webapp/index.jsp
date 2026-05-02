<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Crazy HTML World</title>

<style>
    body {
        margin: 0;
        height: 100vh;
        overflow: hidden;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        background: black;
        color: white;
    }

    /* Animated background */
    .bg {
        position: absolute;
        width: 200%;
        height: 200%;
        background: linear-gradient(45deg, #ff00cc, #3333ff, #00ffcc, #ffcc00);
        background-size: 400% 400%;
        animation: moveBg 8s infinite alternate;
        z-index: -1;
    }

    @keyframes moveBg {
        0% { transform: translate(0,0); }
        100% { transform: translate(-25%,-25%); }
    }

    /* Glitch text */
    h1 {
        font-size: 60px;
        text-transform: uppercase;
        position: relative;
        animation: flicker 2s infinite;
    }

    @keyframes flicker {
        0%, 100% { opacity: 1; text-shadow: 2px 2px red; }
        50% { opacity: 0.6; text-shadow: -2px -2px cyan; }
    }

    /* Button */
    button {
        padding: 15px 30px;
        font-size: 18px;
        border: none;
        border-radius: 50px;
        cursor: pointer;
        background: white;
        color: black;
        transition: 0.3s;
    }

    button:hover {
        transform: scale(1.2) rotate(5deg);
        background: yellow;
    }

    .box {
        text-align: center;
    }

</style>
</head>

<body>

<div class="bg"></div>

<div class="box">
    <h1 id="text">Hello Crazy World 🌍</h1>
    <button onclick="changeText()">Click Me 🔥</button>
</div>

<script>
    const messages = [
        "Welcome to Chaos 🤯",
        "HTML is Powerful ⚡",
        "You clicked reality 🔮",
        "System Overloaded 💥",
        "Boom! 💣"
    ];

    function changeText() {
        const text = document.getElementById("text");
        text.innerHTML = messages[Math.floor(Math.random() * messages.length)];
    }
</script>

</body>
</html>
