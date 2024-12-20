<x-blog-layout title="{{ $category_name }}">
    <!-- Posts Section -->
    <section class="w-full md:w-2/3 flex flex-col items-center px-3">


        <!-- Article -->
        @forelse ($posts as $post)
            <article class="flex flex-col shadow my-4">
                <!-- <a href="{{ route('post.show', $post->slug) }}" class="hover:opacity-75">
                        <img src="{{ $post->image }}" width="1000" height="500">
                </a> -->
                <!-- <a href="{{ route('post.show', $post->slug) }}" class="hover:opacity-75">
                      <img src="{{ $post->image }}" class="w-full h-auto object-cover" alt="{{ $post->title }}">
                </a> -->

        <!-- <img src="{{ $post->image }}" class="w-full h-auto object-cover" alt="{{$post->category->name }}">
             {{ $post->category->name }} -->
             <div class="relative w-full">
    <!-- Image -->
    <img src="{{ $post->image }}" class="w-full h-auto object-cover" alt="{{ $post->category->name }}">

    <!-- Category name overlay -->
    <div class="absolute top-0 left-0 w-full h-full flex items-center justify-center bg-black bg-opacity-50">
    <span class="text-white text-4xl font-bold">{{ $post->category->name }}</span>
    </div>
</div>


                <div class="bg-white flex flex-col justify-start p-6">
                    <!-- <a href="{{ route('category.show', $post->category->slug) }} "
                        class="text-blue-700 text-sm font-bold uppercase pb-4">{{ $post->category->name }}</a> -->
                    <!-- <a href="{{ route('post.show', $post->slug) }}"
                        class="text-3xl font-bold hover:text-gray-700 pb-4">{{ $post->title }}</a> -->
                    <!-- <p href="#" class="text-sm pb-1">
                        By <a href="#" class="font-semibold hover:text-gray-800">{{ $post->user->name }}</a>,
                        //Published on {{ $post->created_at }} 
                    </p> -->
                    <p class="pb-3">{!! $post->content !!} ...</p>
                    {{-- <br /> --}}
                    <!-- <a href="{{ route('post.show', $post->slug) }}"
                        class="mt-px uppercase text-gray-800 font-bold hover:text-black">Continue Reading <i
                            class="fas fa-arrow-right"></i></a> -->
                </div>
            </article>
        @empty
            <p>
                No Posts has been added
            </p>
        @endforelse

        <!-- Pagination -->
        <div class="flex items-center py-8">
            {{ $posts->links() }}

            {{-- <a href="#"
                class="h-10 w-10 bg-blue-800 hover:bg-blue-600 font-semibold text-white text-sm flex items-center justify-center">1</a>
            <a href="#"
                class="h-10 w-10 font-semibold text-gray-800 hover:bg-blue-600 hover:text-white text-sm flex items-center justify-center">2</a>
            <a href="#"
                class="h-10 w-10 font-semibold text-gray-800 hover:text-gray-900 text-sm flex items-center justify-center ml-3">Next
                <i class="fas fa-arrow-right ml-2"></i></a> --}}
        </div>

    </section>
</x-blog-layout>
