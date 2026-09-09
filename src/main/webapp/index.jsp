<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop · Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES ========== */
        :root {
            --bg: #f6f9fc;
            --bg-card: #ffffff;
            --primary: #0a2540;
            --primary-light: #1a3a5c;
            --accent: #0077b6;
            --accent-light: #caf0f8;
            --accent-dark: #023e8a;
            --muted: #4a5c6c;
            --muted-light: #8a9aa8;
            --surface: #eef3f7;
            --success: #2a9d8f;
            --warning: #f4a261;
            --radius: 20px;
            --radius-sm: 12px;
            --shadow: 0 8px 30px rgba(10, 37, 64, 0.06);
            --shadow-hover: 0 16px 56px rgba(10, 37, 64, 0.10);
            --transition: 0.25s cubic-bezier(0.2, 0, 0, 1);
            --container: 1280px;
        }

        /* ========== RESET ========== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html { scroll-behavior: smooth; }
        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }
        a { color: inherit; text-decoration: none; }
        img { display: block; max-width: 100%; }
        button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
        input { font-family: inherit; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ========== UTILITIES ========== */
        .muted { color: var(--muted); }
        .text-center { text-align: center; }
        .sr-only {
            position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px;
            overflow: hidden; clip: rect(0,0,0,0); border: 0;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 14px 32px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 15px;
            transition: var(--transition);
            border: 2px solid transparent;
            letter-spacing: -0.01em;
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            box-shadow: 0 4px 12px rgba(0,119,182,0.20);
        }
        .btn-primary:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-2px) scale(1.02);
            box-shadow: 0 12px 28px rgba(0,119,182,0.30);
        }
        .btn-secondary {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }
        .btn-secondary:hover {
            background: var(--primary-light);
            border-color: var(--primary-light);
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(10,37,64,0.15);
        }
        .btn-outline {
            background: transparent;
            color: var(--primary);
            border-color: rgba(10,37,64,0.20);
        }
        .btn-outline:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
            transform: translateY(-2px);
        }
        .btn-ghost {
            background: rgba(255,255,255,0.12);
            color: #fff;
            border-color: rgba(255,255,255,0.25);
            backdrop-filter: blur(4px);
        }
        .btn-ghost:hover {
            background: rgba(255,255,255,0.25);
            border-color: rgba(255,255,255,0.4);
            transform: translateY(-2px);
        }
        .btn-sm {
            padding: 10px 20px;
            font-size: 13px;
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 110;
            background: rgba(255,255,255,0.88);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
            border-bottom: 1px solid rgba(10,37,64,0.04);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 10px 0;
            min-height: 72px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 24px;
            letter-spacing: -0.02em;
            color: var(--primary);
            flex-shrink: 0;
        }
        .brand .accent { color: var(--accent); }
        .brand i { font-size: 28px; color: var(--accent); }

        nav.main-nav ul {
            display: flex;
            gap: 2px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 18px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--surface);
            color: var(--primary);
        }
        nav.main-nav li a i { font-size: 15px; }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 8px;
            flex-shrink: 0;
        }
        .header-actions .icon-btn {
            width: 44px;
            height: 44px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 18px;
            color: var(--muted);
            transition: var(--transition);
            position: relative;
        }
        .header-actions .icon-btn:hover {
            background: var(--surface);
            color: var(--primary);
        }

        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 60px;
            padding: 0 16px 0 22px;
            transition: var(--transition);
            border: 2px solid transparent;
            min-width: 240px;
        }
        .search-wrap:focus-within {
            border-color: var(--accent);
            background: #fff;
            box-shadow: 0 0 0 6px rgba(0,119,182,0.08);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 12px 0;
            font-size: 14px;
            color: var(--primary);
        }
        .search-wrap input::placeholder { color: var(--muted-light); }
        .search-wrap button {
            padding: 8px 0 8px 10px;
            color: var(--muted);
            font-size: 16px;
            transition: var(--transition);
        }
        .search-wrap button:hover { color: var(--accent); }

        .mobile-toggle {
            display: none;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            font-size: 20px;
            background: var(--surface);
            color: var(--primary);
            transition: var(--transition);
        }
        .mobile-toggle:hover { background: var(--accent-light); }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid rgba(10,37,64,0.04);
            padding: 16px 0 24px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 14px 20px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--primary);
            transition: var(--transition);
        }
        #mobileMenu ul li a:hover { background: var(--surface); }
        #mobileMenu ul li a i { width: 24px; color: var(--muted); }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            min-height: 520px;
            padding: 60px 0;
            border-radius: var(--radius);
            overflow: hidden;
            margin: 24px 24px 0;
            background: linear-gradient(135deg, #0a2540 0%, #1a3a5c 100%);
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.20;
            z-index: 0;
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero .badge {
            display: inline-block;
            background: rgba(0,119,182,0.30);
            color: #caf0f8;
            padding: 6px 20px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 13px;
            letter-spacing: 0.4px;
            margin-bottom: 20px;
            backdrop-filter: blur(4px);
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 54px;
            font-weight: 700;
            color: #fff;
            line-height: 1.1;
            max-width: 660px;
            margin-bottom: 16px;
        }
        .hero p {
            color: rgba(255,255,255,0.85);
            font-size: 18px;
            max-width: 540px;
            margin-bottom: 32px;
            line-height: 1.6;
        }
        .hero .actions {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        /* ========== SECTION ========== */
        .section {
            padding: 60px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 36px;
            flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-size: 30px;
            font-weight: 700;
            letter-spacing: -0.02em;
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 4px;
            font-size: 16px;
        }
        .section-header .view-all {
            font-weight: 600;
            color: var(--accent);
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 15px;
            transition: var(--transition);
            white-space: nowrap;
        }
        .section-header .view-all:hover {
            gap: 14px;
            color: var(--accent-dark);
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px 14px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
            border: 2px solid transparent;
        }
        .cat-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
            background: #fff;
        }
        .cat-card .icon-wrap {
            width: 64px;
            height: 64px;
            border-radius: 50%;
            background: var(--accent-light);
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
            font-size: 26px;
            color: var(--accent);
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: var(--accent);
            color: #fff;
            transform: scale(1.05);
        }
        .cat-card h4 {
            font-size: 16px;
            font-weight: 600;
        }
        .cat-card .count {
            font-size: 13px;
            color: var(--muted);
            margin-top: 6px;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 2px solid transparent;
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: var(--surface);
            aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.05);
        }
        .product-card .badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--accent);
            color: #fff;
            padding: 4px 16px;
            border-radius: 60px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.3px;
        }
        .product-card .badge.sale {
            background: var(--warning);
            color: var(--primary);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 14px;
            right: 14px;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: rgba(255,255,255,0.90);
            display: grid;
            place-items: center;
            font-size: 17px;
            color: var(--muted);
            transition: var(--transition);
            backdrop-filter: blur(4px);
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: var(--accent);
            transform: scale(1.10);
        }
        .product-card .body {
            padding: 18px 20px 12px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .product-card .body .category-tag {
            font-size: 12px;
            color: var(--muted-light);
            text-transform: uppercase;
            letter-spacing: 0.6px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 16px;
            font-weight: 600;
            line-height: 1.3;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: 4px;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 20px;
            color: var(--primary);
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 15px;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 14px;
            color: #f5a623;
        }
        .product-card .body .rating span {
            color: var(--muted);
            font-weight: 400;
        }
        .product-card .footer {
            padding: 0 20px 20px;
            display: flex;
            gap: 12px;
        }
        .product-card .footer .add-btn {
            flex: 1;
            padding: 12px;
            border-radius: var(--radius-sm);
            background: var(--primary);
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent);
            transform: scale(1.02);
        }
        .product-card .footer .add-btn.added {
            background: var(--success);
        }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
        }
        .deal-wrap .deal-img {
            flex: 0 0 48%;
            background: var(--surface);
            min-height: 300px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 44px 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-block;
            background: var(--warning);
            color: var(--primary);
            padding: 6px 18px;
            border-radius: 60px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.6px;
            align-self: flex-start;
            margin-bottom: 14px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 30px;
            font-weight: 700;
            margin-bottom: 8px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 20px;
            font-size: 16px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 36px;
            font-weight: 800;
            color: var(--primary);
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 22px;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 12px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 15px;
            color: var(--muted);
            margin: 6px 0 18px;
        }
        .deal-wrap .deal-content .stock strong {
            color: var(--accent);
        }

        .timer-grid {
            display: flex;
            gap: 14px;
            margin: 16px 0 24px;
        }
        .timer-box {
            background: var(--primary);
            color: #fff;
            padding: 12px 18px;
            border-radius: var(--radius-sm);
            min-width: 72px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 28px;
            font-weight: 700;
            line-height: 1.2;
        }
        .timer-box .label {
            font-size: 11px;
            opacity: 0.70;
            text-transform: uppercase;
            letter-spacing: 0.6px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 8px 4px 16px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 6px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent-light);
            border-radius: 60px;
        }
        .testimonial-card {
            flex: 0 0 360px;
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px 30px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            transition: var(--transition);
        }
        .testimonial-card:hover {
            box-shadow: var(--shadow-hover);
        }
        .testimonial-card .stars {
            color: #f5a623;
            font-size: 18px;
            letter-spacing: 3px;
            margin-bottom: 12px;
        }
        .testimonial-card blockquote {
            font-size: 16px;
            line-height: 1.6;
            color: var(--primary);
            margin-bottom: 16px;
            font-style: italic;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 14px;
        }
        .testimonial-card .author .avatar {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--surface);
        }
        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 15px;
        }
        .testimonial-card .author .role {
            font-size: 13px;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
            border-radius: var(--radius);
            padding: 52px 60px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 4px;
        }
        .newsletter-wrap .text p {
            opacity: 0.80;
            font-size: 16px;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 500px;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 200px;
            padding: 16px 24px;
            border-radius: 60px;
            border: 0;
            font-size: 15px;
            background: rgba(255,255,255,0.10);
            color: #fff;
            transition: var(--transition);
            outline: 2px solid transparent;
        }
        .newsletter-wrap form input::placeholder {
            color: rgba(255,255,255,0.5);
        }
        .newsletter-wrap form input:focus {
            outline-color: var(--accent);
            background: rgba(255,255,255,0.18);
        }
        .newsletter-wrap form .btn {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            padding: 16px 36px;
        }
        .newsletter-wrap form .btn:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
        }
        #newsletterMsg {
            margin-top: 12px;
            font-size: 14px;
            opacity: 0.9;
            width: 100%;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 20px;
            padding: 48px 0 32px;
            border-top: 1px solid rgba(10,37,64,0.04);
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 44px;
            margin-bottom: 36px;
        }
        .footer-grid .brand-col .brand {
            font-size: 22px;
            margin-bottom: 8px;
        }
        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 15px;
            max-width: 320px;
            line-height: 1.6;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 12px;
            margin-top: 16px;
        }
        .footer-grid .brand-col .socials a {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: var(--surface);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
            font-size: 17px;
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--accent);
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 15px;
            margin-bottom: 14px;
            color: var(--primary);
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 14px;
            transition: var(--transition);
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent);
        }
        .footer-bottom {
            text-align: center;
            padding-top: 24px;
            border-top: 1px solid rgba(10,37,64,0.04);
            color: var(--muted-light);
            font-size: 14px;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
        }

        @media (max-width: 992px) {
            .hero h1 { font-size: 40px; }
            .hero { min-height: 400px; margin: 16px 16px 0; padding: 40px 0; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { flex: 0 0 240px; }
            .deal-wrap .deal-content { padding: 32px 36px; }
            .newsletter-wrap { padding: 36px 32px; flex-direction: column; text-align: center; }
            .newsletter-wrap form { max-width: 100%; }
            .search-wrap { min-width: 160px; }
        }

        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; place-items: center; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .hero h1 { font-size: 30px; }
            .hero p { font-size: 16px; }
            .section-header h2 { font-size: 24px; }
            .deal-wrap .deal-content h3 { font-size: 24px; }
            .deal-wrap .deal-content .price-big { font-size: 28px; }
            .timer-box { min-width: 60px; padding: 10px 14px; }
            .timer-box .num { font-size: 22px; }
            .footer-grid { grid-template-columns: 1fr; gap: 24px; }
            .header-inner { flex-wrap: nowrap; }
            .brand { font-size: 20px; }
            .brand i { font-size: 22px; }
            .search-wrap { min-width: 100px; padding: 0 10px 0 14px; }
            .search-wrap input { font-size: 13px; padding: 10px 0; }
            .header-actions .icon-btn { width: 38px; height: 38px; font-size: 16px; }
            .cart-count { width: 20px; height: 20px; font-size: 10px; }
            .testimonial-card { flex: 0 0 280px; }
            .hero .actions .btn { padding: 12px 24px; font-size: 14px; }
            .section { padding: 40px 0; }
        }

        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
            .categories-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
            .hero { margin: 10px 10px 0; min-height: 280px; padding: 24px 0; border-radius: var(--radius-sm); }
            .hero h1 { font-size: 26px; }
            .container { padding: 0 14px; }
            .deal-wrap .deal-content { padding: 20px 18px; }
            .deal-wrap .deal-img { flex: 0 0 160px; }
            .newsletter-wrap { padding: 20px 16px; }
            .newsletter-wrap .text h3 { font-size: 22px; }
            .product-card .body { padding: 12px 14px 8px; }
            .product-card .body h5 { font-size: 14px; }
            .product-card .body .price { font-size: 17px; }
            .product-card .footer { padding: 0 14px 14px; }
            .product-card .footer .add-btn { font-size: 12px; padding: 10px; }
            .timer-box { min-width: 50px; padding: 8px 10px; }
            .timer-box .num { font-size: 18px; }
            .timer-box .label { font-size: 9px; }
            .cat-card { padding: 18px 10px; }
            .cat-card .icon-wrap { width: 48px; height: 48px; font-size: 20px; }
            .cat-card h4 { font-size: 14px; }
        }
    </style>
</head>
<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-store-alt"></i>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:12px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search for anything..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li
