<x-blog-layout>
    <!-- Hero Section -->
    <section class="w-full bg-white text-center py-16">
        <div class="max-w-7xl mx-auto px-4">
            <h1 class="text-5xl font-extrabold text-gray-800 mb-6">
                Contact Us
            </h1>
        </div>
    </section>

    <!-- Contact Information Cards Section -->
    <section class="w-full bg-gray-50 py-12">
        <div class="container mx-auto py-10">
            <div class="max-w-7xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Card for Call Us -->
                <div class="bg-white p-6 rounded-lg shadow-lg text-center">
                    <div class="flex justify-center">
                    <svg class="w-16 h-16 text-blue-600 mb-4" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
    <rect x="4" y="2" width="16" height="20" rx="2" ry="2" stroke="currentColor" stroke-width="2"/>
    <path d="M8 2h8" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
    <path d="M12 18h0" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
</svg>
                    </div>
                    <h3 class="text-lg font-semibold mb-2">Call Us</h3>
                    <p class="text-gray-600">75 675 683 575</p>
                </div>

                <!-- Card for Email Us -->
                <div class="bg-white p-6 rounded-lg shadow-lg text-center">
                    <div class="flex justify-center">
                    <svg class="w-16 h-16 text-blue-600 mb-4" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
  <!-- Envelope Body -->
  <rect x="3" y="5" width="18" height="14" fill="none" stroke="currentColor" stroke-width="2" rx="2"/>
  <!-- Envelope Flap -->
  <path d="M3 5l9 7 9-7" fill="none" stroke="currentColor" stroke-width="2"/>
</svg>


                    </div>
                    <h3 class="text-lg font-semibold mb-2">Email Us</h3>
                    <p class="text-gray-600">enquiries@pioneerau.com</p>
                </div>

                <!-- Card for Address -->
                <div class="bg-white p-6 rounded-lg shadow-lg text-center">
                    <div class="flex justify-center">
                    <svg class="w-16 h-16 text-blue-600 mb-4" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 2C8.134 2 5 5.134 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.866-3.134-7-7-7zm0 10a3 3 0 110-6 3 3 0 010 6z" />
</svg>
                    </div>
                    <h3 class="text-lg font-semibold mb-2">Our Address</h3>
                    <p class="text-gray-600">17 Grace Perry Street, Wright, ACT 2611</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Form Section -->
    <section class="w-full bg-gray-50 py-12">
        <div class="container mx-auto py-10">
            <div class="max-w-7xl mx-auto">
                <div class="bg-white overflow-hidden shadow-lg sm:rounded-lg p-6">
                    <p class="text-gray-600 mb-6">We'd love to hear from you. Please fill out the form below, and we'll get in touch with you as soon as possible.</p>

                    @if (session('success'))
                        <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative mt-4" role="alert">
                            {{ session('success') }}
                        </div>
                    @endif

                    <form action="{{ route('contact.send') }}" method="POST">
                        @csrf
                        <div class="grid grid-cols-1 gap-6 sm:grid-cols-2">
    <!-- Name Field -->
    <div>
        <label class="block text-lg font-medium text-gray-700">Name</label>
        <input type="text" name="name" class="mt-2 block w-full p-4 shadow-sm sm:text-lg border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent" required>
    </div>
    
    <!-- Email Field -->
    <div>
        <label class="block text-lg font-medium text-gray-700">Email</label>
        <input type="email" name="email" class="mt-2 block w-full p-4 shadow-sm sm:text-lg border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent" required>
    </div>
</div>


                        <div class="mt-6">
                            <label class="block text-sm font-medium text-gray-700">Message</label>
                            <textarea name="message" rows="5" class="mt-1 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md" required></textarea>
                        </div>

                        <div class="mt-6">
                            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600 transition-all">
                                Send Message
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Google Map Section -->
    <section class="w-full bg-gray-50 py-12">
        <div class="container mx-auto">
            <div class="w-full h-64">
                <iframe 
                    src="https://maps.google.com/maps?q=Pioneer%20Disability%20Services%20Pty%20Ltd,%2017%20Grace%20Perry%20Street,%20Wright,%20ACT%202611&t=&z=13&ie=UTF8&iwloc=&output=embed" 
                    frameborder="0" 
                    style="border:0; width: 100%; height: 100%;" 
                    allowfullscreen>
                </iframe>
            </div>
        </div>
    </section>
</x-blog-layout>
