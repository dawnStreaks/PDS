<x-blog-layout>
    <!-- Hero Section -->
    <section class="w-full bg-white text-center py-16">
        <div class="max-w-7xl mx-auto px-4">
            <h1 class="text-5xl font-extrabold text-gray-800 mb-6">
            Contact Us            </h1>
            <!-- <p class="text-lg text-gray-600 mb-8">
                Unlock the potential of your business with our platform. Discover our services and start growing today.
            </p>
            <a href="#" class="bg-blue-600 text-white px-8 py-3 rounded-md hover:bg-blue-700 transition-all">
                Get Started
            </a> -->
        </div>
    </section>

    <!-- Posts Section -->
    <section class="w-full bg-gray-50 py-12">

    <!-- Contact Form Section -->
    <div class="container mx-auto py-10">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    <!-- <h1 class="text-3xl font-bold text-gray-800">Contact Us</h1> -->
                    <p class="text-gray-600">We'd love to hear from you. Please fill out the form below and we'll get in touch with you as soon as possible.</p>

                    @if (session('success'))
                        <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative mt-4" role="alert">
                            {{ session('success') }}
                        </div>
                    @endif

                    <form action="{{ route('contact.send') }}" method="POST" class="mt-6">
                        @csrf
                        <div class="grid grid-cols-1 gap-6 sm:grid-cols-2">
                            <div>
                                <label class="block text-sm font-medium text-gray-700">Name</label>
                                <input type="text" name="name" class="mt-1 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" required>
                            </div>
                            <div>
                                <label class="block text-sm font-medium text-gray-700">Email</label>
                                <input type="email" name="email" class="mt-1 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" required>
                            </div>
                        </div>

                        <div class="mt-6">
                            <label class="block text-sm font-medium text-gray-700">Message</label>
                            <textarea name="message" rows="5" class="mt-1 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" required></textarea>
                        </div>

                        <div class="mt-6">
                            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600">
                                Send Message
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact Information -->
    <div class="container mx-auto py-10">
        <div class="bg-white shadow-lg p-8 rounded-md">
            <h2 class="text-2xl font-bold text-gray-800">Our Contact Information</h2>
            <p class="text-gray-600">Feel free to reach out to us through any of the following methods:</p>
            <div class="w-full bg-white shadow-lg p-6 my-4">
    <h2 class="text-2xl font-semibold mb-4 text-center">Contact Information</h2>
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
        <!-- Card for Phone -->
        <div class="bg-gray-100 p-4 rounded-lg shadow hover:shadow-lg transition-shadow flex flex-col items-center">
            <svg class="w-10 h-10 text-blue-600 mb-2" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h18M3 12h18m-6 9h6M3 21h18" /></svg>
            <h3 class="text-lg font-semibold mb-2 text-center">Call Us</h3>
            <p class="text-gray-700 text-center">+61 2 1234 5678</p>
        </div>
        <!-- Card for Email -->
        <div class="bg-gray-100 p-4 rounded-lg shadow hover:shadow-lg transition-shadow flex flex-col items-center">
            <svg class="w-10 h-10 text-blue-600 mb-2" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 12H8m0 0h8m-8 0V8m8 4v4" /></svg>
            <h3 class="text-lg font-semibold mb-2 text-center">Email Us</h3>
            <p class="text-gray-700 text-center">info@vcal.com.au</p>
        </div>
        <!-- Card for Address -->
        <div class="bg-gray-100 p-4 rounded-lg shadow hover:shadow-lg transition-shadow flex flex-col items-center">
            <svg class="w-10 h-10 text-blue-600 mb-2" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h18M3 12h18m-6 9h6M3 21h18" /></svg>
            <h3 class="text-lg font-semibold mb-2 text-center">Our Address</h3>
            <p class="text-gray-700 text-center">123 Sample St, City, State, 2000</p>
        </div>
        <!-- Additional Cards can be added here -->
    </div>
</div>

            <div class="mt-6">
                <h3 class="text-lg font-bold text-gray-800">Follow Us</h3>
                <div class="flex space-x-4 mt-2">
                    <a href="#" class="text-blue-600 hover:text-blue-800"><i class="fab fa-facebook"></i></a>
                    <a href="#" class="text-blue-400 hover:text-blue-600"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="text-pink-600 hover:text-pink-800"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="text-red-600 hover:text-red-800"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
        </div>
    </div>

    <!-- Google Map -->
    <div class="container mx-auto py-10">
        <div class="w-full h-64">
            <iframe src="https://maps.google.com/maps?q=yourcompanylocation&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" style="border:0; width: 100%; height: 100%;" allowfullscreen></iframe>
        </div>
    </div>


    </section>


</x-blog-layout>