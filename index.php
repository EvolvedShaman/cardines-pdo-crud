<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Genshin', sans-serif;
        }

        .hero-section {
            height: 100vh;
            background: url('https://wallpapercave.com/wp/wp9999057.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
        }

        .hero-text {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 15px;
        }

        .container {
    padding: 100px; /* Increased padding */
    border-radius: 15px;
    margin-top: 100px; /* Increased margin */
    background: url('https://wallpapercave.com/wp/wp9999090.jpg') no-repeat center center fixed;
    background-size: cover;
}


        .navbar {
            background-color: rgba(0, 0, 0, 0.7);
        }

        .navbar-brand span {
            color: white;
            font-family: 'Genshin', sans-serif;
        }

        .form-inline .form-control {
            background-color: rgba(255, 255, 255, 0.8);
            color: black;
        }

        .form-inline .btn-outline-success {
            color: white;
            border-color: white;
        }

        .form-inline .btn-outline-success:hover {
            background-color: white;
            color: black;
        }

        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .card {
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease;
            position: relative;
            background-color: rgba(255, 255, 255, 0.9); /* Add background color for each card */
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card-title, .card-text, .price {
            color: black;
        }

        .card-img-top {
            width: 100%;
            height: 200px; /* Fixed height for all images */
            object-fit: cover; /* Ensures the image covers the area */
            transition: transform 0.3s ease;
        }

        .card:hover .card-img-top {
            transform: scale(1.1);
        }

        .btn-success {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-success:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        #cartContainer {
            position: fixed;
            top: 4em;
            right: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border: 1px solid #ddd;
            padding: 10px;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
            z-index: 999;
        }

        .modal-header, .modal-footer {
            background-color: rgba(255, 255, 255, 0.9);
        }

        .modal-body {
            background-color: rgba(255, 255, 255, 0.8);
        }

        .modal-title {
            color: black;
        }

        .modal-body p {
            color: black;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="#">
            <img src="https://www.pngmart.com/files/23/Genshin-Impact-Logo-PNG-Photo.png" width="150" height="30" class="d-inline-block align-top" alt="Softball Logo">
        </a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form class="form-inline my-2 my-lg-0 ml-auto">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>

    <div class="hero-section">
        <div class="hero-text">
            <h1>Welcome to Genshin Impact Swords</h1>
            <p>Explore our exclusive collection of swords.</p>
        </div>
    </div>

    <div class="container">
        <div id="productsDisplay" class="card-grid"></div>
    </div>
    <div id="cartContainer"></div>

    <div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="productModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="productModalLabel">Product Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="modalBody"></div>
                <div class="modal-footer">
                    <a id="paymentLink" class="btn btn-primary" href="#">Proceed to Payment</a>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        fetch('./products/products-api.php')
            .then(response => response.json())
            .then(data => {
                const productsContainer = document.getElementById('productsDisplay');
                data.forEach(product => {
                    const cardHTML = `
                    <div class="card">
                        <img class="card-img-top" src="${product.img}" alt="${product.title}">
                        <div class="card-body">
                            <h5 class="card-title">${product.title}</h5>
                            <span class="price">Price: ₱${product.rrp}</span>
                            <p class="card-text">${product.description}</p>
                            <p class="card-text">Quantity: ${product.quantity}</p>
                            <button class="btn btn-success" onclick="showProductModal('${product.title}', '${product.rrp}')">
                                <i class="fas fa-cart-plus"></i> Add to Cart
                            </button>
                        </div>
                    </div>`;
                    productsContainer.innerHTML += cardHTML;
                });
            })
            .catch(error => console.error('Error:', error));

        function showProductModal(title, price) {
            document.getElementById('modalBody').innerHTML = `
                <p>Name: ${title}</p>
                <p>Price: ₱${price}</p>`;
            document.getElementById('paymentLink').href = `it28-admin/pay_add/payment.php?productName=${encodeURIComponent(title)}&price=${encodeURIComponent(price)}`;
            $('#productModal').modal('show');
        }

        let cart = {};

        function addToCart(productId) {
            if (cart[productId]) {
                cart[productId]++;
            } else {
                cart[productId] = 1;
            }
            displayCart();
        }

        function displayCart() {
            const cartContainer = document.getElementById('cartContainer');
            let cartHTML = '<h3>Cart</h3>';
            for (const [productId, quantity] of Object.entries(cart)) {
                cartHTML += `<p>Product ID: ${productId}, Quantity: ${quantity}</p>`;
            }
            cartContainer.innerHTML = cartHTML;
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
