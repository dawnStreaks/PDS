<x-blog-layout>
    <!-- Hero Section -->
    <!-- <section class="w-full bg-white text-center py-16">
        <div class="max-w-7xl mx-auto px-4">
            <h1 class="text-5xl font-extrabold text-gray-800 mb-6">
                PIONEER DISABILITY SERVICES PTY LTD
            </h1>
<a href="#" class="bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition-all mr-2 mb-2">
            Contact Us
        </a>
        
        </div>
    </section> -->

    <!-- Posts Section -->

    <!-- First Banner Section -->
<section 
    class="bg-cover bg-center h-96" 
    style="
        background-image: url('{{ asset('/import/assets/home.jpg') }}'); 
        background-size: cover; 
        background-position: center; 
        width: 100%; 
        height: 600px;">
    <div class="h-full w-full bg-opacity-50 bg-black flex items-center justify-center">
        <!-- Removed duplicate heading -->
    </div>



</section>
<div style="height: 20px;"></div> <!-- Adjust height as needed -->

<div style="height: 20px;"></div> <!-- Adjust height as needed -->

<!-- <section class="w-full bg-white text-center py-16">
        <div class="max-w-7xl mx-auto px-4">
            <h1 class="text-5xl font-extrabold text-gray-800 mb-6">
                PIONEER DISABILITY SERVICES 
            </h1>
        
        </div>
    </section> -->
<!-- Space Between Sections -->
<div style="height: 20px;"></div> <!-- Adjust height as needed -->

<!-- Container for Banner and Card -->
<div style="display: flex; width: 100%; flex-direction: column;" class="banner-card-container">
<style>
@media (min-width: 769px) {
    .banner-card-container {
        flex-direction: row !important;
    }
}
</style>

    <!-- Banner Section -->
    <section 
        style="
            background-image: url('{{ asset('/import/assets/homeBanner.jpg') }}'); 
            background-size: cover; 
            background-position: center; 
            height: 400px; 
            width: 50%; 
            display: flex; 
            justify-content: center; 
            align-items: center; 
            color: white;">
        <h1 style="font-size: 3rem; font-weight: bold; text-align: center;"></h1>
    </section>

    <!-- Card Section -->
    <div style="
    background: linear-gradient(to bottom right, #f8f9fa, #e9ecef); /* Gradient background */
    padding: 20px; 
    border-radius: 10px; 
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); 
    width: 50%; 
    display: flex; 
    flex-direction: column; 
    justify-content: center;
    text-align: center;
    margin: auto; /* Centers the div on the screen */
" class="responsive-section">
    <!-- Removed Welcome heading as requested -->
    <p style="margin-bottom: 16px; color: #555; text-align: justify;">
        Pioneer Disability Services Pty Ltd is a newly registered NDIS provider, distinguished by our unique blend of expertise, commitment to innovation, and dedication to participant-centered care. Our team consists of seasoned professionals with extensive healthcare backgrounds, bringing a wealth of experience to the disability support sector.

        We stand out for our personalized support services, which are tailored to the unique needs and aspirations of each individual, fostering higher participant satisfaction and outcomes. We are also devoted to continuous improvement, investing in staff training, technology and staying current with industry trends to ensure top-quality service delivery.

        Ultimately, our success is measured by the positive impact we make on the lives of NDIS participants, empowering them to lead fulfilling and independent lives while making a meaningful difference in the community.
    </p>

    <!-- Links Section -->
    <div style="margin-top: auto; display: flex; gap: 10px; justify-content: center; flex-wrap: wrap;"> <!-- Added flex-wrap: wrap for responsiveness -->
        <a href="{{ route('about.index') }}" style="
            background-color: #007bff; /* Blue background */
            color: white; 
            padding: 10px 20px; 
            border-radius: 25px; 
            text-decoration: none; 
            text-align: center;
            margin-bottom: 10px; /* Added margin for better spacing */
            flex-grow: 1; /* Allow button to grow on mobile screens */
        ">
            Learn More
        </a>
        <a href="#" style="
            background-color: #28a745; /* Green background */
            color: white; 
            padding: 10px 20px; 
            border-radius: 25px; 
            text-decoration: none; 
            text-align: center;
            margin-bottom: 10px; /* Added margin for better spacing */
            flex-grow: 1; /* Allow button to grow on mobile screens */
        ">
            Referral Form
        </a>
        <a href="{{ route('contact.index') }}" style="
            background-color: #17a2b8; /* Teal background */
            color: white; 
            padding: 10px 20px; 
            border-radius: 25px; 
            text-decoration: none; 
            text-align: center;
            margin-bottom: 10px; /* Added margin for better spacing */
            flex-grow: 1; /* Allow button to grow on mobile screens */
        ">
            Contact Us
        </a>
    </div>
</div>

<!-- Media Queries for Mobile Responsiveness -->
<style>
    @media (max-width: 768px) {
        .responsive-section {
            width: 100% !important; /* Full width on mobile */
            padding: 15px; /* Adjust padding for smaller screens */
        }
        .responsive-section h2 {
            font-size: 1.5rem; /* Smaller font for mobile */
        }
        .responsive-section p {
            font-size: 0.9rem; /* Adjust text size for better readability */
            text-align: left !important; /* Force left alignment */
            clear: both !important; /* Clear any floats */
        }
        .responsive-section a {
            width: 100%; /* Buttons take full width on mobile */
            padding: 10px; /* Ensure proper spacing */
        }
    }
</style>


    </div>
</div>
<div style="height: 20px;"></div> <!-- Adjust height as needed -->
    <!-- Removed NDIS services heading as requested -->


    <!-- Posts Section -->
    
<section class="w-full bg-gray-50 py-12">
    <div class="max-w-[1400px] mx-auto px-2 sm:px-4 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 sm:gap-6 md:gap-8">
        @forelse ($posts as $post)
        <article class="relative bg-white shadow-lg rounded-lg overflow-hidden border-2 border-blue-600">
            <!-- Image with text overlay -->
            <a href="{{ route('category.show', $post->category->slug) }}" class="block relative group">
            <!-- <a href="{{ route('category.show', $post->category->slug) }}" class="text-blue-600 text-sm font-bold uppercase pb-2"> -->
                    <!-- {{ $post->category->name }} -->
                <!-- </a> -->

                <img src="{{ $post->image }}" alt="{{ $post->title }}" class="w-full h-48 sm:h-56 md:h-64 object-cover">
                <!-- Always visible overlay -->
                <div class="absolute inset-0 bg-black bg-opacity-40 flex items-center justify-center">
                    <h1 class="text-white text-sm sm:text-base md:text-lg lg:text-xl font-bold text-center">{{ $post->category->name }}</h1>
                </div>
            </a>
        </article>
        @empty
        <p class="text-gray-600 col-span-4 text-center">No Posts have been added.</p>
        @endforelse
    </div>
</section>




    <!-- Pagination Section -->
    <div class="max-w-7xl mx-auto py-8 px-4">
        <div class="flex justify-center">
            {{ $posts->links() }}
        </div>
    </div>
</x-blog-layout>
