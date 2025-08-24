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
<!-- Navigation Bar -->
<nav class="w-full py-4 bg-gray-800 shadow" x-data="{ open: false }"> <!-- Changed background color to a darker blue -->
    <div class="w-full container mx-auto flex flex-wrap items-center justify-center">
        <!-- Logo Section -->
        <div class="flex justify-between items-center w-full md:w-auto">
        <img src="{{ asset('/import/assets/logo.png') }}" 
     class="h-16 w-auto sm:h-20 md:h-24 lg:h-28 drop-shadow-lg" 
     alt="Logo"> <!-- Responsive logo -->

            <!-- Hamburger Menu for Mobile -->
            <div class="md:hidden">
                <button @click="open = !open" class="text-white focus:outline-none">
                    <svg class="h-8 w-8 fill-current" viewBox="0 0 24 24">
                        <path x-show="!open" fill-rule="evenodd" clip-rule="evenodd"
                            d="M4 5h16M4 12h16M4 19h16" />
                        <path x-show="open" fill-rule="evenodd" clip-rule="evenodd"
                            d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>

        <!-- Full Menu for Desktop -->
        <div class="hidden md:flex w-full md:w-auto items-center">
            <ul class="flex items-center font-bold text-sm sm:text-base md:text-lg text-white uppercase">
                @foreach ($pages_nav as $page)
                    <li><a class="hover:text-gray-200 hover:underline px-4"
                           href="{{ route('page.show', $page->slug) }}">{{ $page->name }}</a></li>
                @endforeach
                <li><a class="hover:text-gray-200 hover:underline px-4"
                       href="{{ route('webhome') }}">Home</a></li>
                <li><a class="hover:text-gray-200 hover:underline px-4"
                       href="{{ route('about.index') }}">About Us</a></li>
                <li><a class="hover:text-gray-200 hover:underline px-4"
                       href="{{ route('contact.index') }}">Contact Us</a></li>
                       
                <div x-data="{ open: false }" class="relative">
                    <button @click="open = !open"
                        class="font-bold text-lg text-white uppercase hover:text-gray-200 hover:underline px-4">
                        Services
                    </button>

                    <div x-show="open" @click.away="open = false"
                        class="absolute bg-green-600 border border-green-500 rounded shadow-lg mt-2 w-80 uppercase transition duration-300 z-50">
                        @forelse ($categories as $category)
                            <a href="{{ route('category.show', $category->slug) }}"
                               class="block hover:bg-green-700 text-white font-bold text-lg py-2 px-4">{{ $category->name }}</a>
                        @empty
                            <span class="block py-2 px-4 text-white font-bold text-lg">No Categories!</span>
                        @endforelse
                    </div>
                </div>
            </ul>
        </div>

        <!-- Mobile Menu -->
        <div :class="{ 'block': open, 'hidden': !open }" class="w-full md:hidden">
            <ul class="block text-white text-center font-bold text-lg uppercase">
                @foreach ($pages_nav as $page)
                    <li><a class="block hover:text-gray-200 py-2"
                           href="{{ route('page.show', $page->slug) }}">{{ $page->name }}</a></li>
                @endforeach
                <li><a class="block hover:text-gray-200 py-2"
                       href="{{ route('webhome') }}">Home</a></li>
                <li><a class="block hover:text-gray-200 py-2"
                       href="{{ route('about.index') }}">About Us</a></li>
                <li><a class="block hover:text-gray-200 py-2"
                       href="{{ route('contact.index') }}">Contact Us</a></li>

                <!-- Mobile Dropdown for Services -->
                <div x-data="{ openMobile: false }">
                    <button @click="openMobile = !openMobile"
                            class="block text-white font-bold text-lg hover:text-gray-200 py-2">
                        Services
                    </button>
                    <div x-show="openMobile" @click.away="openMobile = false"
                         class="bg-green-600 border border-green-500 mt-2 rounded shadow-lg transition duration-300">
                        @forelse ($categories as $category)
                            <a href="{{ route('category.show', $category->slug) }}"
                               class="block hover:bg-green-700 text-white font-bold text-lg py-2 px-4">{{ $category->name }}</a>
                        @empty
                            <span class="block py-2 px-4 text-white font-bold text-lg">No Categories!</span>
                        @endforelse
                    </div>
                </div>
            </ul>
        </div>
    </div>
</nav>



    <!-- Main Content -->
    <div class="flex flex-wrap py-4 sm:py-6 md:py-8">
    <!-- Main Section -->
    <section class="w-3/4 flex flex-col items-center px-2 sm:px-3 md:px-4 mx-auto">

    
            {{ $slot }}
            
        </section>

        <!-- Sidebar Section -->
        <!-- <aside class="w-full md:w-1/3 flex flex-col items-center px-3">
            <div class="w-full bg-white shadow flex flex-col my-4 p-6">
                <p class="text-xl font-semibold pb-5 primary-text">Top Users</p>
                @forelse ($top_users as $topuser)
                    <div class="hover:bg-gray-200">
                        <a href="">{{ $topuser->name }}</a>
                    </div>
                @empty
                    <span class="secondary-text">No Users yet.</span>
                @endforelse
            </div>

            <div class="w-full bg-white shadow flex flex-col my-4 p-6">
                <p class="text-xl font-semibold pb-5 primary-text">Contact Information</p>
                <p class="secondary-text">Phone: {{ $setting->phone }}</p>
                <p class="secondary-text">Address: {{ $setting->address }}</p>
            </div>

            
        </aside> -->
    </div>

    <!-- Footer Section -->
    <footer class="footer-bg bg-gray-800">
    <div class="container mx-auto py-8 px-8 md:px-4">
        <div class="flex flex-wrap justify-between">
            <!-- Contact Section -->
            <div class="w-full md:w-1/3 mb-6 md:mb-0">
                <p class="text-white font-semibold text-lg">Contact</p>
                <ul class="mt-4 space-y-2">
                    <!-- Phone -->
                    <li class="text-gray-400 flex items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M3 5h2l3.6 7.2a1 1 0 00.8.4H18l2-3.6a1 1 0 00-.2-1.2L15.4 4a1 1 0 00-1.2-.2L10 6H7a1 1 0 00-1 1v3L4 8.4V5z" />
                        </svg>
                    75 675 683 575
                    </li>
                    <!-- Email -->
                    <li class="text-gray-400 flex items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M16 12a4 4 0 11-8 0 4 4 0 018 0z" />
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 14v7" />
                        </svg>
                        enquiries@pioneerau.com
                    </li>
                    <!-- Address -->
                    <li class="text-gray-400 flex items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M3 21v-2a4 4 0 014-4h10a4 4 0 014 4v2M12 11a4 4 0 100-8 4 4 0 000 8z" />
                        </svg>
                        P O Box 3283, Weston Creek, ACT-2611
                    </li>
                </ul>
            </div>

            <!-- Aboriginal Acknowledgement Image -->

            <div class="w-full md:w-auto text-right mt-4 md:mt-0">
    <img src="{{ asset('/import/assets/aboriginal-acknowledgement.png') }}" alt="Aboriginal Acknowledgement" class="h-96 md:h-96">
</div>

            <!-- Quick Links Section -->
            <div class="w-full md:w-1/3 mb-6 md:mb-0">
                <p class="text-white font-semibold text-lg">Quick Links</p>
                <ul class="mt-4">
                    @foreach ($pages_nav as $page)
                        <li><a class="text-gray-400 hover:text-blue-400" href="{{ route('page.show', $page->slug) }}">{{ $page->name }}</a></li>
                    @endforeach
                    <li><a class="hover:text-gray-200 hover:underline px-4" href="{{ route('webhome') }}">Home</a></li>
                    <li><a class="hover:text-gray-200 hover:underline px-4" href="{{ route('about.index') }}">About Us</a></li>
                    <li><a class="hover:text-gray-200 hover:underline px-4" href="{{ route('contact.index') }}">Contact Us</a></li>
                </ul>
            </div>

            
        </div>
    </div>

    <!-- Bottom Footer with Logo and Description Section -->
    <div class="py-4 bg-gray-900">
        <div class="container mx-auto flex flex-wrap items-center justify-between">
            <!-- Logo Section -->
            <div class="w-full md:w-1/3 mb-6 md:mb-0 text-center">
                <img src="{{ asset('/import/assets/logo.png') }}" alt="Footer Logo" class="h-24 mx-auto">
                <p class="mt-4 text-gray-400">{{ $setting->site_desc }}</p>
            </div>
            <div class="flex items-center text-lg no-underline text-white pr-6">
                <a class="hover-primary" href="{{ $setting->url_fb }}"><i class="fab fa-facebook"></i></a>
                <a class="hover-primary pl-6" href="{{ $setting->url_tw }}"><i class="fab fa-twitter"></i></a>
                <a class="hover-primary pl-6" href="{{ $setting->url_insta }}"><i class="fab fa-instagram"></i></a>
                <a class="hover-primary pl-6" href="{{ $setting->url_ytb }}"><i class="fab fa-youtube"></i></a>
            </div>
            <!-- Copyright Info -->
            <p class="text-white text-sm mt-4 md:mt-0">© {{ date('Y') }} {{ config('app.name') }}</p>
        </div>
    </div>
</footer>


