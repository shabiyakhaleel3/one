<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>NexusShop — Pink E-Commerce</title>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --bg: #fff5fa;
            --primary: #8a174f;
            --accent: #ff4f9a;
            --accent-dark: #d92d7a;
            --muted: #8b6b7a;
            --card: #ffffff;
            --surface: #ffe4f0;
            --success: #e83e8c;
            --radius: 12px;
            --container: 1200px;
        }

        * {
            box-sizing: border-box;
        }

        html,
        body {
            height: 100%;
        }

        body {
            margin: 0;
            font-family: Inter, system-ui, -apple-system,
                "Segoe UI", Roboto, Arial, sans-serif;
            color: var(--primary);
            background: var(--bg);
            line-height: 1.5;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        /* HEADER */

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 245, 250, 0.96);
            border-bottom: 1px solid rgba(255, 79, 154, 0.15);
            backdrop-filter: blur(8px);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 14px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            font-family: Poppins, sans-serif;
            font-weight: 700;
            font-size: 22px;
            color: var(--primary);
        }

        .brand .accent {
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 10px;
            border-radius: 8px;
            font-weight: 500;
        }

        nav.main-nav li a:hover {
            background: var(--surface);
            color: var(--accent);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--surface);
            padding: 8px 12px;
            border-radius: 999px;
            min-width: 240px;
        }

        .search:focus-within {
            box-shadow: 0 0 0 3px rgba(255, 79, 154, 0.18);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            color: var(--primary);
        }

        .icon-btn {
            background: transparent;
            border: 0;
            color: var(--primary);
            cursor: pointer;
            font-size: 16px;
        }

        .icon-btn:hover {
            color: var(--accent);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .cart {
            position: relative;
            padding: 6px 8px;
            border-radius: 8px;
        }

        .cart:hover {
            background: var(--surface);
            color: var(--accent);
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            color: var(--primary);
            font-size: 20px;
            cursor: pointer;
        }

        /* HERO */

        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            min-height: 420px;
            padding: 56px 20px;
            color: white;

            background:
                linear-gradient(
                    180deg,
                    rgba(138, 23, 79, 0.78),
                    rgba(217, 45, 122, 0.75)
                ),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80")
                center/cover no-repeat;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: 42px;
            margin: 0 0 12px;
        }

        .hero p {
            max-width: 800px;
            margin: 0 auto 24px;
        }

        /* BUTTONS */

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 11px 20px;
            border-radius: 999px;
            font-weight: 600;
            cursor: pointer;
            border: 0;
        }

        .btn-primary {
            background: var(--accent);
            color: white;
        }

        .btn-primary:hover {
            background: var(--accent-dark);
        }

        .btn-ghost {
            background: transparent;
            color: white;
            border: 2px solid rgba(255,255,255,.35);
        }

        /* SECTIONS */

        .section {
            padding: 50px 0;
        }

        .title {
            text-align: center;
            margin-bottom: 24px;
        }

        .muted {
            color: var(--muted);
        }

        .grid {
            display: grid;
            gap: 20px;
        }

        /* CATEGORIES */

        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            border: 1px solid rgba(255,79,154,.1);
            border-radius: var(--radius);
            padding: 20px;
            text-align: center;
            cursor: pointer;
            box-shadow: 0 8px 20px rgba(138,23,79,.08);
            transition: .2s;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 20px 40px rgba(255,79,154,.18);
        }

        .cat-card .icon {
            font-size: 30px;
            color: var(--accent);
            margin-bottom: 8px;
        }

        /* PRODUCTS */

        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            position: relative;
            background: var(--card);
            border: 1px solid rgba(255,79,154,.1);
            border-radius: var(--radius);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: 0 8px 20px rgba(138,23,79,.08);
        }

        .product img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .product-body {
            padding: 14px;
            flex: 1;
        }

        .product h5 {
            margin: 0 0 6px;
            font-size: 16px;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
        }

        .price {
            font-weight: 700;
            color: var(--primary);
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 13px;
        }

        .rating {
            color: #f5a623;
            font-size: 13px;
        }

        .product-footer {
            padding: 12px;
            display: flex;
            gap: 10px;
        }

        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 10px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
        }

        .add-btn:hover {
            background: var(--accent-dark);
        }

        .wish-btn {
            background: transparent;
            border: 1px solid rgba(255,79,154,.25);
            color: var(--primary);
            padding: 8px 12px;
            border-radius: 8px;
            cursor: pointer;
        }

        .wish-btn:hover {
            background: var(--surface);
            color: var(--accent);
        }

        /* DEAL */

        .deal {
            display: flex;
            gap: 20px;
            background: var(--surface);
            border-radius: var(--radius);
            overflow: hidden;
        }

        .deal img {
            width: 50%;
            height: 320px;
            object-fit: cover;
        }

        .deal .content {
            padding: 30px;
            flex: 1;
        }

        .timer {
            display: flex;
            gap: 12px;
            margin: 20px 0;
        }

        .time-box {
            background: var(--primary);
            color: white;
            padding: 12px;
            border-radius: 8px;
            min-width: 70px;
            text-align: center;
        }

        /* TESTIMONIALS */

        .testimonials {
            display: flex;
            gap: 16px;
            overflow-x: auto;
            padding: 10px 0;
        }

        .testimonial {
            min-width: 320px;
            background: white;
            padding: 20px;
            border-radius: var(--radius);
            border: 1px solid rgba(255,79,154,.1);
            box-shadow: 0 8px 20px rgba(138,23,79,.08);
        }

        /* NEWSLETTER */

        .newsletter {
            background: linear-gradient(
                135deg,
                var(--primary),
                var(--accent-dark)
            );
            color: white;
            border-radius: var(--radius);
            padding: 35px;
            text-align: center;
        }

        .newsletter input {
            padding: 12px 16px;
            border-radius: 999px;
            border: 0;
            width: 320px;
            max-width: 100%;
        }

        /* FOOTER */

        footer {
            margin-top: 20px;
            padding: 36px 0;
            background: #fff0f6;
            border-top: 1px solid rgba(255,79,154,.15);
            color: var(--muted);
        }

        /* RESPONSIVE */

        @media (max-width: 1000px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            nav.main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }
        }

        @media (max-width: 700px) {
            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .search {
                min-width: 150px;
            }

            .deal {
                flex-direction: column;
            }

            .deal img {
                width: 100%;
            }
        }

        @media (max-width: 500px) {
            .products,
            .categories {
                grid-template-columns: 1fr;
            }

            .hero h1 {
                font-size: 30px;
            }

            .search {
                display: none;
            }
        }
    </style>
</head>

<body>

<header>
    <div class="container header-inner">

        <div style="display:flex;align-items:center;gap:18px">

            <button class="mobile-toggle"
                    id="mobileToggle">
                <i class="fas fa-bars"></i>
            </button>

            <a class="brand" href="#">
                Nexus<span class="accent">Shop</span>
            </a>

        </div>

        <nav class="main-nav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
            </ul>
        </nav>

        <div style="display:flex;align-items:center;gap:14px">

            <div class="search">
                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                >

                <button class="icon-btn" id="searchBtn">
                    <i class="fas fa-search"></i>
                </button>
            </div>

            <div class="header-actions">

                <button class="icon-btn">
                    <i class="far fa-user"></i>
                </button>

                <button class="icon-btn">
                    <i class="far fa-heart"></i>
                </button>

                <div class="cart">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </div>

            </div>

        </div>

    </div>

    <div id="mobileMenu"
         style="display:none;background:var(--surface);padding:15px">

        <div class="container">

            <a href="#">Home</a><br><br>
            <a href="#categories">Categories</a><br><br>
            <a href="#products">Trending</a><br><br>
            <a href="#deals">Deals</a>

        </div>

    </div>

</header>

<main>

    <!-- HERO -->

    <section class="hero">

        <div class="container">

            <h1>New Collection — Premium Picks</h1>

            <p>
                Discover the latest trends in fashion,
                technology and accessories.
            </p>

            <button class="btn btn-primary"
                    id="shopNow">

                Shop Now
                <i class="fas fa-arrow-right"></i>

            </button>

            <button class="btn btn-ghost"
                    id="exploreDeals">

                Explore Deals

            </button>

        </div>

    </section>


    <!-- CATEGORIES -->

    <section class="section container"
             id="categories">

        <div class="title">

            <h2>Shop by Category</h2>

            <p class="muted">
                Browse our popular categories.
            </p>

        </div>

        <div class="grid categories"
             id="categoriesGrid">

        </div>

    </section>


    <!-- PRODUCTS -->

    <section class="section container"
             id="products">

        <div class="title">

            <h2>Trending Products</h2>

            <p class="muted">
                Popular products selected for you.
            </p>

        </div>

        <div class="grid products"
             id="productsGrid">

        </div>

    </section>


    <!-- DEALS -->

    <section class="section container"
             id="deals">

        <div class="title">

            <h2>Flash Sale</h2>

            <p class="muted">
                Limited-time offer.
            </p>

        </div>

        <div class="deal">

            <img
                src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80"
                alt="Laptop Deal"
            >

            <div class="content">

                <h3>MacBook Air M2</h3>

                <p class="muted">
                    Thin, light and powerful.
                </p>

                <div class="timer">

                    <div class="time-box">
                        <div id="dealDays">00</div>
                        <small>Days</small>
                    </div>

                    <div class="time-box">
                        <div id="dealHours">00</div>
                        <small>Hours</small>
                    </div>

                    <div class="time-box">
                        <div id="dealMinutes">00</div>
                        <small>Minutes</small>
                    </div>

                    <div class="time-box">
                        <div id="dealSeconds">00</div>
                        <small>Seconds</small>
                    </div>

                </div>

                <div class="price">

                    $999

                    <span class="old-price">
                        $1,199
                    </span>

                </div>

                <br>

                <button class="btn btn-primary"
                        id="buyDeal">

                    Buy Now

                </button>

            </div>

        </div>

    </section>


    <!-- TESTIMONIALS -->

    <section class="section container">

        <div class="title">

            <h2>What Our Customers Say</h2>

        </div>

        <div class="testimonials">

            <div class="testimonial">

                <div class="rating">
                    ★★★★★
                </div>

                <p>
                    "Fast shipping and excellent customer
                    support. The product exceeded my expectations!"
                </p>

                <strong>Ava Martin</strong>

                <div class="muted">
                    Verified Buyer
                </div>

            </div>


            <div class="testimonial">

                <div class="rating">
                    ★★★★☆
                </div>

                <p>
                    "Great selection and smooth checkout.
                    Will shop again."
                </p>

                <strong>Michael Lee</strong>

                <div class="muted">
                    Frequent Buyer
                </div>

            </div>

        </div>

    </section>


    <!-- NEWSLETTER -->

    <section class="section container">

        <div class="newsletter">

            <h3>Stay in the Loop</h3>

            <p>
                Subscribe to get exclusive offers and new arrivals.
            </p>

            <form id="newsletterForm">

                <input
                    id="newsletterEmail"
                    type="email"
                    placeholder="Enter your email"
                    required
                >

                <button class="btn btn-primary">
                    Subscribe
                </button>

            </form>

            <div id="newsletterMsg"
                 style="margin-top:10px">

            </div>

        </div>

    </section>

</main>


<footer id="about">

    <div class="container"
         style="text-align:center">

        <h3>NexusShop</h3>

        <p>
            A modern e-commerce demo built with
            HTML, CSS and JavaScript.
        </p>

        <p>
            © <span id="year"></span>
            NexusShop. All rights reserved.
        </p>

    </div>

</footer>


<script>

const CATEGORIES = [
    {
        name: "Smartphones",
        icon: "fa-mobile-alt"
    },
    {
        name: "Laptops",
        icon: "fa-laptop"
    },
    {
        name: "Clothing",
        icon: "fa-shirt"
    },
    {
        name: "Gadgets",
        icon: "fa-headphones"
    },
    {
        name: "Footwear",
        icon: "fa-shoe-prints"
    },
    {
        name: "Accessories",
        icon: "fa-watch"
    }
];


const PRODUCTS = [

    {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        rating: 5,
        category: "Smartphones",
        img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80"
    },

    {
        id: 2,
        title: "MacBook Pro 14",
        price: 1999,
        rating: 4,
        category: "Laptops",
        img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80"
    },

    {
        id: 3,
        title: "Apple Watch",
        price: 349,
        rating: 5,
        category: "Accessories",
        img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80"
    },

    {
        id: 4,
        title: "Nike Air Max",
        price: 150,
        rating: 4,
        category: "Footwear",
        img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80"
    },

    {
        id: 5,
        title: "Sony Camera",
        price: 2499,
        rating: 5,
        category: "Gadgets",
        img: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80"
    },

    {
        id: 6,
        title: "Travel Backpack",
        price: 79,
        rating: 4,
        category: "Accessories",
        img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80"
    }

];


const categoriesGrid =
    document.getElementById("categoriesGrid");

const productsGrid =
    document.getElementById("productsGrid");

const cartCountEl =
    document.getElementById("cartCount");

const searchInput =
    document.getElementById("searchInput");


let cartCount = 0;


/* RENDER CATEGORIES */

function renderCategories() {

    categoriesGrid.innerHTML = "";

    CATEGORIES.forEach(category => {

        const element =
            document.createElement("div");

        element.className =
            "cat-card";

        element.innerHTML = `

            <div class="icon">
                <i class="fas ${category.icon}"></i>
            </div>

            <h4>
                ${category.name}
            </h4>

            <div class="muted">
                Explore
            </div>
        `;

        element.addEventListener(
            "click",
            () => {

                searchInput.value =
                    category.name;

                filterProducts(
                    category.name
                );

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            }
        );

        categoriesGrid.appendChild(
            element
        );

    });

}


/* RENDER PRODUCTS */

function renderProducts(products) {

    productsGrid.innerHTML = "";

    if (products.length === 0) {

        productsGrid.innerHTML =
            "<p>No products found.</p>";

        return;

    }

    products.forEach(product => {

        const element =
            document.createElement("article");

        element.className =
            "product";

        element.innerHTML = `

            <img
                src="${product.img}"
                alt="${product.title}"
            >

            <div class="product-body">

                <h5>
                    ${product.title}
                </h5>

                <div class="muted">
                    ${product.category}
                </div>

                <div class="price-row">

                    <div class="price">
                        $${product.price}
                    </div>

                    <div class="rating">
                        ${"★".repeat(product.rating)}
                    </div>

                </div>

            </div>

            <div class="product-footer">

                <button
                    class="add-btn"
                    data-id="${product.id}"
                >

                    <i class="fas fa-cart-plus"></i>
                    Add

                </button>

                <button
                    class="wish-btn">

                    <i class="far fa-heart"></i>

                </button>

            </div>
        `;

        productsGrid.appendChild(
            element
        );

    });


    document
        .querySelectorAll(".add-btn")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    cartCount++;

                    cartCountEl.textContent =
                        cartCount;

                    const original =
                        button.innerHTML;

                    button.innerHTML =
                        "Added ✓";

                    setTimeout(() => {

                        button.innerHTML =
                            original;

                    }, 1000);

                }
            );

        });

}


/* SEARCH */

function filterProducts(query) {

    const value =
        query
        .toLowerCase()
        .trim();

    const filtered =
        PRODUCTS.filter(product =>
            product.title
                .toLowerCase()
                .includes(value)
            ||
            product.category
                .toLowerCase()
                .includes(value)
        );

    renderProducts(filtered);

}


document
    .getElementById("searchBtn")
    .addEventListener(
        "click",
        () => {

            filterProducts(
                searchInput.value
            );

        }
    );


searchInput.addEventListener(
    "keyup",
    event => {

        if (event.key === "Enter") {

            filterProducts(
                searchInput.value
            );

        }

    }
);


/* MOBILE MENU */

document
    .getElementById("mobileToggle")
    .addEventListener(
        "click",
        () => {

            const menu =
                document.getElementById(
                    "mobileMenu"
                );

            menu.style.display =
                menu.style.display === "block"
                    ? "none"
                    : "block";

        }
    );


/* SHOP NOW */

document
    .getElementById("shopNow")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


/* EXPLORE DEALS */

document
    .getElementById("exploreDeals")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


/* BUY DEAL */

document
    .getElementById("buyDeal")
    .addEventListener(
        "click",
        () => {

            cartCount++;

            cartCountEl.textContent =
                cartCount;

            alert(
                "Deal added to cart!"
            );

        }
    );


/* NEWSLETTER */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();

            const email =
                document
                    .getElementById(
                        "newsletterEmail"
                    )
                    .value;

            const message =
                document
                    .getElementById(
                        "newsletterMsg"
                    );

            if (
                !email ||
                !email.includes("@")
            ) {

                message.textContent =
                    "Please enter a valid email.";

                message.style.color =
                    "#ffe0ef";

                return;

            }

            message.textContent =
                "Thanks! You are subscribed.";

            message.style.color =
                "white";

        }
    );


/* DEAL TIMER */

const target =
    new Date(
        Date.now()
        + (24 * 60 * 60 * 1000)
    );


function updateTimer() {

    const difference =
        target - new Date();

    const days =
        Math.floor(
            difference /
            (1000 * 60 * 60 * 24)
        );

    const hours =
        Math.floor(
            difference /
            (1000 * 60 * 60)
        ) % 24;

    const minutes =
        Math.floor(
            difference /
            (1000 * 60)
        ) % 60;

    const seconds =
        Math.floor(
            difference /
            1000
        ) % 60;


    document
        .getElementById("dealDays")
        .textContent =
            String(days)
            .padStart(2, "0");

    document
        .getElementById("dealHours")
        .textContent =
            String(hours)
            .padStart(2, "0");

    document
        .getElementById("dealMinutes")
        .textContent =
            String(minutes)
            .padStart(2, "0");

    document
        .getElementById("dealSeconds")
        .textContent =
            String(seconds)
            .padStart(2, "0");

}


setInterval(
    updateTimer,
    1000
);

updateTimer();


/* INITIALIZATION */

renderCategories();

renderProducts(PRODUCTS);

document
    .getElementById("year")
    .textContent =
        new Date()
        .getFullYear();

</script>

</body>
</html>
