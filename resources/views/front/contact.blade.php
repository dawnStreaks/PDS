<x-blog-layout>
    <!-- Hero Section -->
    <section class="w-full bg-white text-center py-8 sm:py-12 md:py-16">
        <div class="max-w-7xl mx-auto px-2 sm:px-4">
            <h1 class="text-2xl sm:text-3xl md:text-4xl lg:text-5xl font-extrabold text-gray-800 mb-4 sm:mb-6">
                Contact Us
            </h1>
        </div>
    </section>

    <!-- Contact Information Cards Section -->
    <section class="w-full bg-gray-50 py-6 sm:py-8 md:py-12">
        <div class="container mx-auto py-4 sm:py-6 md:py-10">
            <div class="max-w-7xl mx-auto grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4 sm:gap-6 md:gap-8">
                <!-- Card for Call Us -->
                <div class="bg-white p-4 sm:p-6 rounded-lg shadow-lg text-center">
                    <div class="flex justify-center">
                    <svg class="w-12 h-12 sm:w-16 sm:h-16 text-blue-600 mb-4" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
    <rect x="4" y="2" width="16" height="20" rx="2" ry="2" stroke="currentColor" stroke-width="2"/>
    <path d="M8 2h8" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
    <path d="M12 18h0" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
</svg>
                    </div>
                    <h3 class="text-base sm:text-lg font-semibold mb-2">Call Us</h3>
                    <p class="text-sm sm:text-base text-gray-600">75 675 683 575</p>
                </div>

                <!-- Card for Email Us -->
                <div class="bg-white p-4 sm:p-6 rounded-lg shadow-lg text-center">
                    <div class="flex justify-center">
                    <svg class="w-12 h-12 sm:w-16 sm:h-16 text-blue-600 mb-4" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
  <!-- Envelope Body -->
  <rect x="3" y="5" width="18" height="14" fill="none" stroke="currentColor" stroke-width="2" rx="2"/>
  <!-- Envelope Flap -->
  <path d="M3 5l9 7 9-7" fill="none" stroke="currentColor" stroke-width="2"/>
</svg>


                    </div>
                    <h3 class="text-base sm:text-lg font-semibold mb-2">Email Us</h3>
                    <p class="text-sm sm:text-base text-gray-600">enquiries@pioneerau.com</p>
                </div>

                <!-- Card for Address -->
                <div class="bg-white p-4 sm:p-6 rounded-lg shadow-lg text-center">
                    <div class="flex justify-center">
                    <svg class="w-12 h-12 sm:w-16 sm:h-16 text-blue-600 mb-4" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 2C8.134 2 5 5.134 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.866-3.134-7-7-7zm0 10a3 3 0 110-6 3 3 0 010 6z" />
</svg>
                    </div>
                    <h3 class="text-base sm:text-lg font-semibold mb-2">Our Address</h3>
                    <p class="text-sm sm:text-base text-gray-600">P O Box 3283, Weston Creek, ACT-2611</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Form Section -->
    <section class="w-full bg-gray-50 py-6 sm:py-8 md:py-12">
        <div class="container mx-auto py-4 sm:py-6 md:py-10">
            <div class="max-w-7xl mx-auto">
                <div class="bg-white overflow-hidden shadow-lg sm:rounded-lg p-4 sm:p-6">
                    <p class="text-sm sm:text-base text-gray-600 mb-4 sm:mb-6">We'd love to hear from you. Please fill out the form below, and we'll get in touch with you as soon as possible.</p>

                    @if (session('success'))
                        <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative mt-4" role="alert">
                            {{ session('success') }}
                        </div>
                    @endif

                    <form action="{{ route('contact.send') }}" method="POST">
                        @csrf
                        <div class="grid grid-cols-1 gap-4 sm:gap-6 sm:grid-cols-2">
    <!-- Name Field -->
    <div>
        <label class="block text-sm sm:text-base md:text-lg font-medium text-gray-700">Name</label>
        <input type="text" name="name" class="mt-2 block w-full p-3 sm:p-4 shadow-sm text-sm sm:text-base border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent" required>
    </div>
    
    <!-- Email Field -->
    <div>
        <label class="block text-sm sm:text-base md:text-lg font-medium text-gray-700">Email</label>
        <input type="email" name="email" class="mt-2 block w-full p-3 sm:p-4 shadow-sm text-sm sm:text-base border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent" required>
    </div>
</div>


                        <div class="mt-4 sm:mt-6">
                            <label class="block text-sm sm:text-base font-medium text-gray-700">Message</label>
                            <textarea name="message" rows="4" class="mt-1 block w-full shadow-sm text-sm sm:text-base border-gray-300 rounded-md p-3" required></textarea>
                        </div>

                        <div class="mt-4 sm:mt-6">
                            <button type="submit" class="bg-blue-500 text-white px-4 sm:px-6 py-2 sm:py-3 rounded-md hover:bg-blue-600 transition-all text-sm sm:text-base">
                                Send Message
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Google Map Section -->
    <section class="w-full bg-gray-50 py-6 sm:py-8 md:py-12">
        <div class="container mx-auto px-2 sm:px-4">
            <div class="w-full h-48 sm:h-56 md:h-64">
                <iframe 
                    src="https://maps.google.com/maps?q=P%20O%20Box%203283,%20Weston%20Creek,%20ACT-2611&t=&z=13&ie=UTF8&iwloc=&output=embed" 
                    frameborder="0" 
                    style="border:0; width: 100%; height: 100%;" 
                    allowfullscreen>
                </iframe>
            </div>
        </div>
    </section>
</x-blog-layout>