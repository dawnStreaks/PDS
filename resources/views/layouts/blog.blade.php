<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        @isset($title)
            {{ ucfirst($title) }} -
        @endisset {{ config('app.name') }}
    </title>
    <!-- Tailwind CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Karla:400,700&display=swap');

        .font-family-karla {
            font-family: karla, sans-serif;
        }

        /* Colors matching vcal.com */
        .primary-bg {
            background-color: #1e3a8a; /* Dark blue */
        }

        .secondary-bg {
            background-color: #e5e7eb; /* Light gray */
        }

        .primary-text {
            color: #1e3a8a; /* Dark blue */
        }

        .secondary-text {
            color: #6b7280; /* Muted text */
        }

        .hover-primary {
            color: #1e3a8a;
            background-color: #f3f4f6; /* Light gray hover */
        }

        .footer-bg {
            background-color: #111827; /* Very dark gray/black */
            color: #ffffff;
        }

        .footer-link:hover {
            color: #1e40af;
        }
    </style>

    <!-- AlpineJS -->
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@2.x.x/dist/alpine.min.js" defer></script>
    <!-- Font Awesome -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" integrity="sha256-KzZiKy0DWYsnwMF+X1DvQngQ2/FxF7MF3Ff72XcpuPs=" crossorigin="anonymous"></script>
</head>

<body class="bg-white font-family-karla">

    <!-- Session Messages -->
    @if (Session::has('message'))
        <div class="flex items-center bg-green-500 text-white text-sm font-bold px-4 py-3" role="alert">
            <svg class="fill-current w-4 h-4 mr-2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                <path d="M12.432 0c1.34 0 2.01.912 2.01 1.957 0 1.305-1.164 2.512-2.679 2.512-1.269 0-2.009-.75-1.974-1.99C9.789 1.436 10.67 0 12.432 0zM8.309 20c-1.058 0-1.833-.652-1.093-3.524l1.214-5.092c.211-.814.246-1.141 0-1.141-.317 0-1.689.562-2.502 1.117l-.528-.88c2.572-2.186 5.531-3.467 6.801-3.467 1.057 0 1.233 1.273.705 3.23l-1.391 5.352c-.246.945-.141 1.271.106 1.271.317 0 1.357-.392 2.379-1.207l.6.814C12.098 19.02 9.365 20 8.309 20z" />
            </svg>
            <p>{{ Session::get('message') }}.</p>
        </div>
    @elseif (Session::has('error'))
        <div class="flex items-center bg-red-500 text-white text-sm font-bold px-4 py-3" role="alert">
            <svg class="fill-current w-4 h-4 mr-2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                <path d="M12.432 0c1.34 0 2.01.912 2.01 1.957 0 1.305-1.164 2.512-2.679 2.512-1.269 0-2.009-.75-1.974-1.99C9.789 1.436 10.67 0 12.432 0zM8.309 20c-1.058 0-1.833-.652-1.093-3.524l1.214-5.092c.211-.814.246-1.141 0-1.141-.317 0-1.689.562-2.502 1.117l-.528-.88c2.572-2.186 5.531-3.467 6.801-3.467 1.057 0 1.233 1.273.705 3.23l-1.391 5.352c-.246.945-.141 1.271.106 1.271.317 0 1.357-.392 2.379-1.207l.6.814C12.098 19.02 9.365 20 8.309 20z" />
            </svg>
            <p>{{ Session::get('error') }}.</p>
        </div>
    @endif

    <!-- Navigation Bar -->
    <nav class="w-full py-4 primary-bg shadow">
        <div class="container mx-auto flex flex-wrap items-center justify-between">
            <nav class="flex items-center w-full md:w-auto justify-between">
                <img src="{{ asset('/import/assets/logo.png') }}" class="w-1/3 md:w-20" alt="Logo">
                <button class="text-white inline-block md:hidden focus:outline-none" @click="navOpen = !navOpen">
                    <i class="fas fa-bars"></i>
                </button>
                <ul class="hidden md:flex items-center font-bold text-sm text-white uppercase no-underline">
                    @foreach ($pages_nav as $page)
                        <li><a class="hover:text-gray-200 hover:underline px-4" href="{{ route('page.show', $page->slug) }}">{{ $page->name }}</a></li>
                    @endforeach
                    <li><a class="hover:text-gray-200 hover:underline px-4" href="{{ route('webhome') }}">Home</a></li>
                    <li><a class="hover:text-gray-200 hover:underline px-4" href="{{ route('about.index') }}">ABOUT US</a></li>
                    <li><a class="hover:text-gray-200 hover:underline px-4" href="{{ route('contact.index') }}">CONTACT US</a></li>
                </ul>
            </nav>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="flex flex-wrap py-8">
        <section class="w-full flex flex-col items-center px-3">
            {{ $slot }}
        </section>
    </div>

    <!-- Footer Section -->
    <footer class="footer-bg bg-gray-800">
        <div class="container mx-auto py-8 px-4">
            <div class="flex flex-wrap justify-between">
                <!-- Contact Section -->
                <div class="w-full md:w-1/3 mb-6 md:mb-0">
                    <p class="text-white font-semibold text-lg">Contact</p>
                    <ul class="mt-4 space-y-2">
                        <li class="text-gray-400 flex items-center">
                            <i class="fas fa-phone-alt mr-2"></i> 75 675 683 575
                        </li>
                        <li class="text-gray-400 flex items-center">
                            <i class="fas fa-envelope mr-2"></i> enquiries@pioneerau.com
                        </li>
                        <li class="text-gray-400 flex items-center">
                            <i class="fas fa-map-marker-alt mr-2"></i> 17 Gracy Perry Street, Wright, ACT 2611
                        </li>
                    </ul>
                </div>

                <!-- Quick Links Section -->
                <div class="w-full md:w-1/3 mb-6 md:mb-0">
                    <p class="text-white font-semibold text-lg">Quick Links</p>
                    <ul class="mt-4 space-y-2">
                        <li><a class="footer-link hover:underline text-gray-400" href="{{ route('privacy') }}">Privacy Policy</a></li>
                        <li><a class="footer-link hover:underline text-gray-400" href="{{ route('terms') }}">Terms & Conditions</a></li>
                        <li><a class="footer-link hover:underline text-gray-400" href="{{ route('faq') }}">FAQ</a></li>
                    </ul>
                </div>

                <!-- Subscribe Section -->
                <div class="w-full md:w-1/3">
                    <p class="text-white font-semibold text-lg">Subscribe</p>
                    <form class="mt-4">
                        <div class="flex items-center border-b border-b-2 border-gray-500 py-2">
                            <input class="bg-transparent appearance-none border-none w-full text-white mr-3 py-1 px-2 leading-tight focus:outline-none" type="email" placeholder="youremail@example.com" aria-label="Email">
                            <button class="flex-shrink-0 bg-blue-500 hover:bg-blue-600 text-sm text-white py-1 px-2 rounded" type="button">
                                Subscribe
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </footer>

</body>

</html>
