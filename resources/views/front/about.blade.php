<<x-blog-layout>
    <!-- Hero Section -->
    <section class="w-full bg-white text-center py-16">
        <div class="max-w-7xl mx-auto px-4">
            <h1 class="text-5xl font-extrabold text-gray-800 mb-6">
Who We are?            </h1>
<a href="{{ route('contact.index') }}" class="bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition-all mr-2 mb-2">
            Contact Us
        </a>
        
        </div>
    </section>

    <!-- Posts Section -->

    <!-- Banner Section -->
    <section class="bg-cover bg-center h-96" style="background-image: url('{{ asset('/import/assets/aboutUsBanner.jpg') }}');background-size: cover; 
            background-position: center; 
            width: 100%; 
            height: 600px;">">
        <div class="h-full w-full bg-opacity-50 bg-black flex items-center justify-center">
            <h1 class="text-white text-5xl font-bold">PDS Empowering Participants</h1>
        </div>
    </section>

    <!-- Mission Section -->
    <section class="py-16 bg-gray-100">
        <div class="container mx-auto flex flex-col md:flex-row items-center">
            <!-- Image on the left -->
            <div class="w-full md:w-1/2 mb-8 md:mb-0">
                <img src="{{ asset('/import/assets/mission.jpg') }}" alt="Mission Image" class="rounded shadow-lg">
            </div>
            <!-- Text on the right -->
            <div class="w-full md:w-1/2 md:pl-12">
                <h2 class="text-3xl font-semibold text-gray-800 mb-6">Our Mission</h2>
                <p class="text-gray-600 leading-relaxed">
                    Our mission is to [describe your mission]. We believe in delivering high-quality services/products that meet our customers' needs and exceed expectations. [Add more mission statement here].
                </p>
            </div>
        </div>
    </section>

    <!-- Vision Section -->
    <section class="py-16 bg-white">
        <div class="container mx-auto flex flex-col md:flex-row items-center">
            <!-- Image on the left -->
            <div class="w-full md:w-1/2 mb-8 md:mb-0 order-last md:order-first">
                <img src="{{ asset('/import/assets/vision.jpg') }}" alt="Vision Image" class="rounded shadow-lg">
            </div>
            <!-- Text on the right -->
            <div class="w-full md:w-1/2 md:pl-12">
                <h2 class="text-3xl font-semibold text-gray-800 mb-6">Our Vision</h2>
                <p class="text-gray-600 leading-relaxed">
                    Our vision is to [describe your vision]. We aspire to [vision goals or long-term aspirations] and to be leaders in our industry through innovation and quality.
                </p>
            </div>
            
        </div>
    </section>

   
    <section class="py-16 bg-white">
        <div class="container mx-auto flex flex-col md:flex-row items-center">
            <!-- Image on the left -->
            <div class="w-full md:w-1/2 mb-8 md:mb-0 order-last md:order-first">
                <img src="{{ asset('/import/assets/purpose.jpg') }}" alt="Vision Image" class="rounded shadow-lg">
            </div>
            <!-- Text on the right -->
            <div class="w-full md:w-1/2 md:pl-12">
                <h2 class="text-3xl font-semibold text-gray-800 mb-6">Our Purpose</h2>
                <p class="text-gray-600 leading-relaxed">
                    Our vision is to [describe your vision]. We aspire to [vision goals or long-term aspirations] and to be leaders in our industry through innovation and quality.
                </p>
            </div>
            
        </div>
    </section>

    </x-blog-layout>