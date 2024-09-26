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
        <h1 class="text-white text-5xl font-bold">Pioneer Disability Services PTY LTD</h1>
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
            text-align: center;">
        <h2 style="font-size: 2rem; font-weight: 600; margin-bottom: 16px; color: #333;">        Welcome to Pioneer Disability Services</h2>
        <p style="margin-bottom: 16px; color: #555;">Empowering Lives, Enhancing Abilities</p>
        <p style="margin-bottom: 16px; color: #555;">At Pioneer Disability Services, we are committed to providing comprehensive services and support for individuals with disabilities. Our mission is to empower everyone to live life to the fullest, with dignity, independence, and the opportunity to achieve their goals.</p>
        <p style="margin-bottom: 16px; color: #555;">We provide ten NDIS service as listed below in the services section.</p>


        <!-- Links Section -->
        <div style="margin-top: auto; display: flex; gap: 10px; justify-content: center;"> <!-- Added justify-content: center for alignment -->
    <a href="#" style="
        background-color: #007bff; /* Blue background */
        color: white; 
        padding: 10px 20px; 
        border-radius: 25px; /* Rounded corners */
        text-decoration: none; 
        text-align: center;">
        Learn More
    </a>
    <a href="#" style="
        background-color: #28a745; /* Green background */
        color: white; 
        padding: 10px 20px; 
        border-radius: 25px; /* Rounded corners */
        text-decoration: none; 
        text-align: center;">
        Referral Form
    </a>
    <a href="{{ route('contact') }}" style="
        background-color: #17a2b8; /* Teal background */
        color: white; 
        padding: 10px 20px; 
        border-radius: 25px; /* Rounded corners */
        text-decoration: none; 
        text-align: center;">
        Contact Us
    </a>
</div>


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
                <p class="text-gray-600">{{ \Illuminate\Support\Str::limit($post->content, 30) }}</p>
                <!-- Continue Reading Link -->
                <a href="{{ route('post.show', $post->slug) }}" style="
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
