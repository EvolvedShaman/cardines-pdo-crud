<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <style>
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideIn {
            from {
                transform: translateY(-20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-30px);
            }
            60% {
                transform: translateY(-15px);
            }
        }

        @keyframes pulse {
            0%, 100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
        }

        @keyframes slideBackground {
            from {
                background-position: 0% 50%;
            }
            to {
                background-position: 100% 50%;
            }
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            background-size: 400% 400%;
            animation: slideBackground 10s ease infinite;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        .container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-in-out;
            max-width: 600px;
            margin: 0 20px;
        }

        h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
            animation: slideIn 1s ease-in-out;
        }

        p {
            font-size: 1.2em;
            margin-bottom: 30px;
            animation: slideIn 1.5s ease-in-out;
        }

        a {
            text-decoration: none;
            color: #ffd700;
            font-weight: bold;
            padding: 10px 30px;
            border: 2px solid #ffd700;
            border-radius: 30px;
            animation: bounce 2s infinite;
            transition: background-color 0.3s, color 0.3s;
            display: inline-block;
        }

        a:hover {
            background-color: #ffd700;
            color: #333;
        }

        .horizontal.timeline {
            display: flex;
            position: relative;
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
            width: 80%;
            margin-top: 50px;
        }

        .horizontal.timeline:before {
            content: '';
            display: block;
            position: absolute;
            width: 100%;
            height: 4px;
            background-color: rgba(255, 255, 255, 0.2);
            top: 50%;
            left: 0;
            transform: translateY(-50%);
        }

        .line {
            display: block;
            position: absolute;
            width: 60%;
            height: 4px;
            background-color: #ffd700;
            top: 50%;
            left: 0;
            transform: translateY(-50%);
            z-index: 1;
            animation: slideIn 2s ease-in-out;
        }

        .steps {
            display: flex;
            position: relative;
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }

        .step {
            display: block;
            position: relative;
            padding: 10px;
            margin: 0 10px;
            box-sizing: content-box;
            color: #ffd700;
            background-color: rgba(255, 255, 255, 0.2);
            border: 4px solid rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            z-index: 2;
            transition: transform 0.3s, background-color 0.3s, border 0.3s;
            text-align: center;
            width: 50px;
            height: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.9em;
            animation: bounce 2s infinite;
        }

        .step:first-child {
            margin-left: 0;
        }

        .step:last-child {
            margin-right: 0;
        }

        .step span {
            position: absolute;
            top: calc(100% + 10px);
            left: 50%;
            transform: translateX(-50%);
            white-space: nowrap;
            color: rgba(255, 255, 255, 0.7);
        }

        .step.current {
            animation: pulse 2s infinite;
            background-color: #ffd700;
            border: 4px solid #ffd700;
        }

        .step:hover {
            transform: scale(1.2);
            background-color: #ffd700;
            border: 4px solid #ffd700;
        }

        .step.current span {
            color: #ffd700;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Success!</h2>
        <p>Your address has been recorded successfully.</p>
        <a href="../../index.php">Go back to home</a>
    </div>
    <div class="horizontal timeline">
        <div class="steps">
            <div class="step">
                <span>To be prepared</span>
            </div>
            <div class="step">
                <span>Sent to logistics</span>
            </div>
            <div class="step current">
                <span>In preparation</span>
            </div>
            <div class="step">
                <span>Shipped</span>
            </div>
            <div class="step">
                <span>Delivered</span>
            </div>
        </div>
        <div class="line"></div>
    </div>
</body>
</html>
