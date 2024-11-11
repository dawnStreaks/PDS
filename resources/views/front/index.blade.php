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
        <!-- <h1 class="text-white text-5xl font-bold">Pioneer Disability Services PTY LTD</h1> -->
    </div>



</section>
<div style="height: 20px;"></div> <!-- Adjust height as needed -->

<div style="height: 20px;"></div> <!-- Adjust height as needed -->

<section class="w-full bg-white text-center py-16">
        <div class="max-w-7xl mx-auto px-4">
            <h1 class="text-5xl font-extrabold text-gray-800 mb-6">
                PIONEER DISABILITY SERVICES 
            </h1>
        
        </div>
    </section>
<!-- Space Between Sections -->
<div style="height: 20px;"></div> <!-- Adjust height as needed -->

<!-- Container for Banner and Card -->
<div style="display: flex; width: 100%;">

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
    <h2 style="font-size: 2rem; font-weight: 600; margin-bottom: 16px; color: #333;">Welcome to Pioneer Disability Services</h2>
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
            width: 90%; /* Reduce width on mobile */
            padding: 15px; /* Adjust padding for smaller screens */
        }
        .responsive-section h2 {
            font-size: 1.5rem; /* Smaller font for mobile */
        }
        .responsive-section p {
            font-size: 0.9rem; /* Adjust text size for better readability */
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
<section class="w-full bg-white text-center py-16">
        <div class="max-w-7xl mx-auto px-4">
            <h1 class="text-5xl font-extrabold text-gray-800 mb-6">
                PIONEER DISABILITY SERVICES 
            </h1>
            <p style="margin-bottom: 16px; color: #555;">We provide ten NDIS service as listed below in the services section.</p>

        </div>
    </section>


    <!-- Posts Section -->
    <section class="w-full bg-gray-50 py-12">
    <div class="max-w-7xl mx-auto px-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-8">
        @forelse ($posts as $post)
        <article class="bg-white shadow-lg rounded-lg overflow-hidden border-2 border-blue-600" style="max-height: 400px;"> <!-- Reduced card height -->
            <!-- Post Image -->
            <a href="{{ route('post.show', $post->slug) }}" class="hover:opacity-90">
                <img src="{{ $post->image }}" alt="{{ $post->title }}" class="w-full h-48 object-cover"> <!-- Adjusted image height -->
            </a>
            <!-- Post Content -->
            <div class="p-4 flex flex-col justify-start" style="max-height: 250px; overflow: hidden;"> <!-- Reduced content height -->
                <!-- Post Category -->
                <a href="{{ route('category.show', $post->category->slug) }}" class="text-blue-600 text-sm font-bold uppercase pb-2">
                    {{ $post->category->name }}
                </a>
                <!-- Author and Date -->
               
                <!-- Post Snippet -->
                <p class="text-gray-600">{{ \Illuminate\Support\Str::limit(strip_tags($post->content), 30) }}</p>
                <!-- Continue Reading Link -->
                <a href="{{ route('category.show', $post->category->slug) }}" style="
                    background-color: #007bff; /* Button background color */
                    color: white; /* Text color */
                    padding: 8px 8px; /* Reduced padding for button */
                    border-radius: 25px; /* Rounded corners */
                    text-decoration: none; /* Remove underline */
                    display: inline-block; /* Make the link behave like a button */
                    font-weight: bold; /* Bold text */
                    transition: background-color 0.3s ease; /* Smooth transition */
                ">
                    Continue Reading <i class="fas fa-arrow-right"></i>
                </a>
            </div>
        </article>
        @empty
        <p class="text-gray-600">No Posts have been added.</p>
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
