#!/bin/bash
DIR="/Users/anuragkeshav/Desktop/hermes/hermes-demo-sites/santhalia-company"
mkdir -p "$DIR"

# COMMON HEADER & FOOTER HTML SNIPPETS
HEAD='<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Santhalia & Company | Chartered Accountants</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: { navy: { 800: "#1e3a8a", 900: "#172554" }, gold: "#d4af37" },
                    fontFamily: { sans: ["Inter", "sans-serif"], serif: ["Playfair Display", "serif"] }
                }
            }
        }
    </script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Playfair+Display:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .hero-bg { background-image: linear-gradient(rgba(23, 37, 84, 0.8), rgba(23, 37, 84, 0.95)), url("https://loremflickr.com/1920/1080/finance"); background-size: cover; background-position: center; }
        .hero-bg-sm { background-image: linear-gradient(rgba(23, 37, 84, 0.85), rgba(23, 37, 84, 0.95)), url("https://loremflickr.com/1920/1080/accounting"); background-size: cover; background-position: center; }
    </style>
</head>
<body class="font-sans text-gray-800 antialiased bg-gray-50 flex flex-col min-h-screen">'

NAV='
    <!-- Top Bar -->
    <div class="bg-navy-900 text-white text-sm py-2 px-6 lg:px-16 flex justify-between items-center hidden md:flex">
        <div class="flex space-x-6">
            <span><i class="fa-solid fa-location-dot mr-2 text-gold"></i> Bhagalpur, Bihar</span>
            <span><i class="fa-solid fa-envelope mr-2 text-gold"></i> info@santhaliaco.com</span>
        </div>
        <div><span class="font-semibold"><i class="fa-solid fa-phone mr-2 text-gold"></i> +91 84050 05086</span></div>
    </div>
    <!-- Navigation -->
    <nav class="bg-white shadow-md sticky top-0 z-50">
        <div class="px-6 lg:px-16 mx-auto flex justify-between items-center py-4">
            <div class="flex items-center">
                <a href="index.html" class="font-serif text-2xl font-bold text-navy-900 flex items-center">
                    <span class="w-10 h-10 bg-navy-900 text-white flex justify-center items-center rounded-sm mr-3">S&C</span>
                    Santhalia & Company
                </a>
            </div>
            <div class="hidden md:flex space-x-8 items-center font-medium">
                <a href="index.html" class="text-gray-600 hover:text-navy-900 transition">Home</a>
                <a href="about.html" class="text-gray-600 hover:text-navy-900 transition">About Firm</a>
                <a href="services.html" class="text-gray-600 hover:text-navy-900 transition">Services</a>
                <a href="contact.html" class="text-gray-600 hover:text-navy-900 transition">Contact Us</a>
                <a href="contact.html" class="bg-navy-900 text-white px-5 py-2 rounded hover:bg-navy-800 transition shadow-lg">Consult Now</a>
            </div>
        </div>
    </nav>
'

FOOTER='
    <!-- Footer -->
    <footer class="bg-navy-900 text-white pt-16 pb-8 border-t-4 border-gold mt-auto">
        <div class="px-6 lg:px-16 mx-auto max-w-7xl">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-12 mb-12">
                <div class="col-span-1 md:col-span-2">
                    <a href="index.html" class="font-serif text-2xl font-bold text-white flex items-center mb-6">
                        <span class="w-10 h-10 bg-white text-navy-900 flex justify-center items-center rounded-sm mr-3">S&C</span>
                        Santhalia & Company
                    </a>
                    <p class="text-gray-400 mb-6 max-w-md leading-relaxed">A premier Chartered Accountant firm in Bhagalpur, dedicated to delivering exceptional financial, taxation, and advisory services.</p>
                </div>
                <div>
                    <h4 class="font-bold text-lg mb-6 text-gold">Quick Links</h4>
                    <ul class="space-y-3">
                        <li><a href="index.html" class="text-gray-400 hover:text-white transition">Home</a></li>
                        <li><a href="about.html" class="text-gray-400 hover:text-white transition">About Firm</a></li>
                        <li><a href="services.html" class="text-gray-400 hover:text-white transition">Services</a></li>
                        <li><a href="contact.html" class="text-gray-400 hover:text-white transition">Contact Us</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="font-bold text-lg mb-6 text-gold">Contact Info</h4>
                    <ul class="space-y-4 text-gray-400">
                        <li class="flex items-start"><i class="fa-solid fa-location-dot mt-1.5 mr-3 text-gold"></i><span>Bhagalpur, Bihar, India</span></li>
                        <li class="flex items-center"><i class="fa-solid fa-phone mr-3 text-gold"></i><span>+91 84050 05086</span></li>
                    </ul>
                </div>
            </div>
            <div class="border-t border-navy-800 pt-8 flex flex-col md:flex-row justify-between items-center text-gray-500 text-sm">
                <p>&copy; 2026 Santhalia & Company. All Rights Reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>
'

# Generate index.html
cat << INDEX > "$DIR/index.html"
$HEAD
$NAV
    <header class="hero-bg text-white h-[80vh] flex items-center">
        <div class="px-6 lg:px-16 mx-auto w-full max-w-7xl">
            <div class="max-w-2xl">
                <div class="inline-block px-3 py-1 bg-gold text-navy-900 font-semibold text-sm rounded mb-6 tracking-wider uppercase">Expert Chartered Accountants</div>
                <h1 class="font-serif text-5xl lg:text-6xl font-bold leading-tight mb-6">Navigating Complexities. Ensuring Growth.</h1>
                <p class="text-lg text-gray-300 mb-10 leading-relaxed">Trusted advisory, tax, and audit services for businesses and individuals in Bhagalpur.</p>
                <div class="flex space-x-4">
                    <a href="services.html" class="bg-gold text-navy-900 font-semibold px-8 py-4 rounded hover:bg-yellow-500 transition shadow-lg">Our Expertise</a>
                    <a href="contact.html" class="border border-white text-white font-semibold px-8 py-4 rounded hover:bg-white hover:text-navy-900 transition">Contact Us</a>
                </div>
            </div>
        </div>
    </header>
    <section class="py-20 bg-white">
        <div class="px-6 lg:px-16 mx-auto max-w-7xl">
            <div class="text-center mb-16">
                <h2 class="font-serif text-3xl lg:text-4xl font-bold text-navy-900 mb-4">Why Santhalia & Company?</h2>
                <div class="w-16 h-1 bg-gold mx-auto"></div>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-10">
                <div class="p-8 border border-gray-100 rounded-lg shadow-sm hover:shadow-xl transition group bg-gray-50 text-center">
                    <i class="fa-solid fa-scale-balanced text-4xl text-navy-900 mb-4"></i>
                    <h3 class="font-bold text-xl text-navy-900 mb-3">Unmatched Integrity</h3>
                    <p class="text-gray-600">Highest standards of ethics and transparency in every financial audit and advisory service.</p>
                </div>
                <div class="p-8 border border-gray-100 rounded-lg shadow-sm hover:shadow-xl transition group bg-gray-50 text-center">
                    <i class="fa-solid fa-chart-line text-4xl text-navy-900 mb-4"></i>
                    <h3 class="font-bold text-xl text-navy-900 mb-3">Strategic Growth</h3>
                    <p class="text-gray-600">Beyond compliance, we optimize your tax position and foster long-term business growth.</p>
                </div>
                <div class="p-8 border border-gray-100 rounded-lg shadow-sm hover:shadow-xl transition group bg-gray-50 text-center">
                    <i class="fa-solid fa-handshake text-4xl text-navy-900 mb-4"></i>
                    <h3 class="font-bold text-xl text-navy-900 mb-3">Client-Centric</h3>
                    <p class="text-gray-600">Personalized attention to local businesses in Bhagalpur, understanding regional challenges.</p>
                </div>
            </div>
        </div>
    </section>
$FOOTER
INDEX

# Generate about.html
cat << ABOUT > "$DIR/about.html"
$HEAD
$NAV
    <header class="hero-bg-sm text-white py-24 flex items-center">
        <div class="px-6 lg:px-16 mx-auto w-full max-w-7xl text-center">
            <h1 class="font-serif text-4xl lg:text-5xl font-bold mb-4">About the Firm</h1>
            <div class="w-16 h-1 bg-gold mx-auto"></div>
        </div>
    </header>
    <section class="py-20 bg-white flex-grow">
        <div class="px-6 lg:px-16 mx-auto max-w-7xl grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
            <div>
                <img src="https://loremflickr.com/800/600/business" alt="Office" class="rounded-lg shadow-2xl">
            </div>
            <div>
                <h2 class="font-serif text-3xl font-bold text-navy-900 mb-6">Our Legacy in Bhagalpur</h2>
                <p class="text-gray-600 mb-6 leading-relaxed">Santhalia & Company is a prominent firm of Chartered Accountants based in Bhagalpur, Bihar. For years, we have provided comprehensive audit, tax, and financial advisory services to a diverse clientele ranging from individuals to large corporations.</p>
                <p class="text-gray-600 mb-8 leading-relaxed">Our mission is to add value to our clients' businesses by delivering professional, objective, and bespoke solutions. We believe in building lasting relationships founded on trust, integrity, and proactive communication.</p>
                <div class="grid grid-cols-2 gap-6">
                    <div class="border-l-4 border-gold pl-4">
                        <div class="text-3xl font-bold text-navy-900">500+</div>
                        <div class="text-sm text-gray-500 font-medium">Happy Clients</div>
                    </div>
                    <div class="border-l-4 border-gold pl-4">
                        <div class="text-3xl font-bold text-navy-900">100%</div>
                        <div class="text-sm text-gray-500 font-medium">Compliance Rate</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
$FOOTER
ABOUT

# Generate services.html
cat << SERVICES > "$DIR/services.html"
$HEAD
$NAV
    <header class="hero-bg-sm text-white py-24 flex items-center">
        <div class="px-6 lg:px-16 mx-auto w-full max-w-7xl text-center">
            <h1 class="font-serif text-4xl lg:text-5xl font-bold mb-4">Our Practice Areas</h1>
            <div class="w-16 h-1 bg-gold mx-auto"></div>
        </div>
    </header>
    <section class="py-20 bg-gray-50 flex-grow">
        <div class="px-6 lg:px-16 mx-auto max-w-7xl">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- S1 -->
                <div class="bg-white p-8 rounded-lg shadow-sm border border-gray-100 hover:shadow-lg transition">
                    <i class="fa-solid fa-file-signature text-3xl text-gold mb-6"></i>
                    <h3 class="font-bold text-xl text-navy-900 mb-3">Audit & Assurance</h3>
                    <p class="text-gray-600">Statutory audits, tax audits, internal audits, and concurrent audits to ensure your business remains compliant and secure.</p>
                </div>
                <!-- S2 -->
                <div class="bg-white p-8 rounded-lg shadow-sm border border-gray-100 hover:shadow-lg transition">
                    <i class="fa-solid fa-calculator text-3xl text-gold mb-6"></i>
                    <h3 class="font-bold text-xl text-navy-900 mb-3">Direct & Indirect Taxation</h3>
                    <p class="text-gray-600">Expert filing of Income Tax Returns, GST compliances, tax planning, and litigation support for individuals and corporates.</p>
                </div>
                <!-- S3 -->
                <div class="bg-white p-8 rounded-lg shadow-sm border border-gray-100 hover:shadow-lg transition">
                    <i class="fa-solid fa-lightbulb text-3xl text-gold mb-6"></i>
                    <h3 class="font-bold text-xl text-navy-900 mb-3">Corporate Advisory</h3>
                    <p class="text-gray-600">Strategic financial management, business valuations, mergers & acquisitions consulting, and restructuring services.</p>
                </div>
                <!-- S4 -->
                <div class="bg-white p-8 rounded-lg shadow-sm border border-gray-100 hover:shadow-lg transition">
                    <i class="fa-solid fa-building text-3xl text-gold mb-6"></i>
                    <h3 class="font-bold text-xl text-navy-900 mb-3">Business Setup</h3>
                    <p class="text-gray-600">Assistance in company formation, LLP registration, partnership deeds, and obtaining necessary licenses and registrations.</p>
                </div>
                <!-- S5 -->
                <div class="bg-white p-8 rounded-lg shadow-sm border border-gray-100 hover:shadow-lg transition">
                    <i class="fa-solid fa-book text-3xl text-gold mb-6"></i>
                    <h3 class="font-bold text-xl text-navy-900 mb-3">Accounting Services</h3>
                    <p class="text-gray-600">End-to-end bookkeeping, payroll processing, and preparation of financial statements in accordance with accounting standards.</p>
                </div>
                <!-- S6 -->
                <div class="bg-white p-8 rounded-lg shadow-sm border border-gray-100 hover:shadow-lg transition">
                    <i class="fa-solid fa-gavel text-3xl text-gold mb-6"></i>
                    <h3 class="font-bold text-xl text-navy-900 mb-3">ROC Compliances</h3>
                    <p class="text-gray-600">Filing annual returns, maintaining statutory registers, and ensuring comprehensive compliance with the Companies Act.</p>
                </div>
            </div>
        </div>
    </section>
$FOOTER
SERVICES

# Generate contact.html
cat << CONTACT > "$DIR/contact.html"
$HEAD
$NAV
    <header class="hero-bg-sm text-white py-24 flex items-center">
        <div class="px-6 lg:px-16 mx-auto w-full max-w-7xl text-center">
            <h1 class="font-serif text-4xl lg:text-5xl font-bold mb-4">Contact Us</h1>
            <div class="w-16 h-1 bg-gold mx-auto"></div>
        </div>
    </header>
    <section class="py-20 bg-white flex-grow">
        <div class="px-6 lg:px-16 mx-auto max-w-7xl grid grid-cols-1 lg:grid-cols-2 gap-16">
            <div>
                <h2 class="font-serif text-3xl font-bold text-navy-900 mb-6">Get In Touch</h2>
                <p class="text-gray-600 mb-10">We would love to hear from you. Reach out to discuss how Santhalia & Company can assist in securing your financial future.</p>
                
                <div class="space-y-6">
                    <div class="flex items-start">
                        <div class="w-12 h-12 bg-navy-900 text-gold rounded flex justify-center items-center text-xl shrink-0">
                            <i class="fa-solid fa-location-dot"></i>
                        </div>
                        <div class="ml-6">
                            <h4 class="font-bold text-navy-900 text-lg">Our Office</h4>
                            <p class="text-gray-600 mt-1">Bhagalpur, Bihar<br>India</p>
                        </div>
                    </div>
                    <div class="flex items-start">
                        <div class="w-12 h-12 bg-navy-900 text-gold rounded flex justify-center items-center text-xl shrink-0">
                            <i class="fa-solid fa-phone"></i>
                        </div>
                        <div class="ml-6">
                            <h4 class="font-bold text-navy-900 text-lg">Phone Number</h4>
                            <p class="text-gray-600 mt-1">+91 84050 05086</p>
                        </div>
                    </div>
                    <div class="flex items-start">
                        <div class="w-12 h-12 bg-navy-900 text-gold rounded flex justify-center items-center text-xl shrink-0">
                            <i class="fa-solid fa-envelope"></i>
                        </div>
                        <div class="ml-6">
                            <h4 class="font-bold text-navy-900 text-lg">Email Address</h4>
                            <p class="text-gray-600 mt-1">info@santhaliaco.com</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="bg-gray-50 p-8 rounded-lg shadow-sm border border-gray-200">
                <form class="space-y-6">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">First Name</label>
                            <input type="text" class="w-full border border-gray-300 rounded px-4 py-2 focus:outline-none focus:border-navy-900 focus:ring-1 focus:ring-navy-900" placeholder="John">
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">Last Name</label>
                            <input type="text" class="w-full border border-gray-300 rounded px-4 py-2 focus:outline-none focus:border-navy-900 focus:ring-1 focus:ring-navy-900" placeholder="Doe">
                        </div>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-2">Email Address</label>
                        <input type="email" class="w-full border border-gray-300 rounded px-4 py-2 focus:outline-none focus:border-navy-900 focus:ring-1 focus:ring-navy-900" placeholder="john@example.com">
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-2">Your Message</label>
                        <textarea rows="4" class="w-full border border-gray-300 rounded px-4 py-2 focus:outline-none focus:border-navy-900 focus:ring-1 focus:ring-navy-900" placeholder="How can we help you?"></textarea>
                    </div>
                    <button type="submit" class="w-full bg-navy-900 text-white font-semibold py-3 rounded hover:bg-navy-800 transition shadow-md">Send Message</button>
                </form>
            </div>
        </div>
    </section>
$FOOTER
CONTACT

