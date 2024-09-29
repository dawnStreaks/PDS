<<x-blog-layout>
    <!-- Hero Section -->
    <section class="w-full bg-white text-center py-16">
        <div class="max-w-7xl mx-auto px-4">
            <h1 class="text-5xl font-extrabold text-gray-800 mb-6">
Who We are?            </h1>
Pioneer Disability Services Pty Ltd is a newly registered NDIS provider,

 distinguished by our unique blend of expertise, commitment to innovation, and dedication to participant-centered care. Our team consists of seasoned professionals with extensive healthcare backgrounds, bringing a wealth of experience to the disability support sector.

We stand out for our personalized support services, which are tailored to the unique needs and aspirations of each individual, fostering higher participant satisfaction and outcomes. We are also devoted to continuous improvement, investing in staff training, technology and staying current with industry trends to ensure top-quality service delivery.

Ultimately, our success is measured by the positive impact we make on the lives of NDIS participants, empowering them to lead fulfilling and independent lives while making a meaningful difference in the community.
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
                At Pioneer Disability Services,
                our mission is to empower NDIS participants by delivering person-centered, innovative support that enhances independence and quality of life while fostering community inclusion.                </p>
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
                At Pioneer Disability Services,
                our vision is to transform the NDIS sector with innovative, person-centered support that empowers individuals with disabilities to achieve their goals and lead fulfilling lives, while establishing ourselves as leaders in excellence and compassion.                </p>
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