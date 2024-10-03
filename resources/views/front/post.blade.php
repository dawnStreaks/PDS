<x-blog-layout title="{{ $post_title }}">

    <!-- Main Section -->
    <section class="w-full flex flex-col items-center px-3">
        <!-- Banner Image -->
        <img src="{{ $post->image }}" alt="{{ $post->title }}" class="w-full h-80 object-cover">

        <article class="flex flex-col shadow my-4 w-full">
            <div class="bg-white flex flex-col justify-start p-6">
                <!-- Category -->
                <a href="{{ route('category.show', $post->category->slug) }}"
                    class="text-blue-700 text-sm font-bold uppercase pb-4">
                    {{ $post->category->name }}
                </a>
                
                <!-- Post Content -->
                <div class="text-lg font-bold pb-4">{{ $post->title }}</div>
                {!! $post->content !!}
            </div>
        </article>

        <!-- Author Section -->
        <div class="w-full flex flex-col text-center md:text-left md:flex-row shadow bg-white mt-10 mb-10 p-6">
            <div class="w-full md:w-1/5 flex justify-center md:justify-start pb-4">
            <a href="{{ route('webhome') }}">
                    <img src="{{ asset('/import/assets/logo.png') }}" alt="Footer Logo" class="h-16 md:h-24">
                </a>
            </div>
            <div class="flex-1 flex flex-col justify-center md:justify-start">
                <p class="font-semibold text-2xl">{{ $post->user->name }}</p>
                <p class="pt-2">{{ $post->user->bio }}</p>
                <div class="flex items-center justify-center md:justify-start text-2xl text-blue-800 pt-4">
                    <a href="{{ $post->user->url_fb }}" class="pl-4"><i class="fab fa-facebook"></i></a>
                    <a href="{{ $post->user->url_insta }}" class="pl-4"><i class="fab fa-instagram"></i></a>
                    <a href="{{ $post->user->url_twitter }}" class="pl-4"><i class="fab fa-twitter"></i></a>
                    <a href="{{ $post->user->url_linkedin }}" class="pl-4"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
        </div>

        <!-- Contact Us Section -->
        <div class="w-full bg-white shadow flex flex-col my-4 p-6">
            <a href="{{ route('contact.index') }}" class="bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition-all">
                Contact Us
            </a>
        </div>

        <!-- Comment Section -->
        <!-- @auth
            @if ($errors->any())
                <div role="alert" class="mx-4">
                    <div class="bg-red-500 text-white font-bold rounded-t px-4 py-2">Validation Errors</div>
                    <div class="border border-t-0 border-red-400 rounded-b bg-red-100 px-4 py-3 text-red-700">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            @endif

            <div class="w-full shadow bg-white mt-10 mb-10 p-6">
                <p class="font-semibold text-2xl">Comment As: {{ auth()->user()->name }}</p>
                <form method="POST" action="{{ route('post.comment', $post) }}">
                    @csrf
                    <textarea name="body" class="w-full p-2.5 bg-gray-50 border text-sm rounded-lg" placeholder="Write your comment here..."></textarea>
                    <button type="submit" class="mt-2 py-2 px-4 bg-green-500 hover:bg-green-700 text-white">Submit Comment</button>
                </form>
            </div>
        @else
            <div class="w-full shadow bg-red-400 mt-10 mb-10 p-6">
                <p class="font-semibold text-white text-2xl">Sign in to be able to comment!</p>
            </div>
        @endauth-->

        <!-- Display Comments -->
        <!-- <div class="w-full shadow bg-white mt-10 mb-10 p-6">
            <p class="font-semibold text-2xl">Comments</p>
            @foreach ($comments as $comment)
                <div class="w-full shadow bg-white mt-10 mb-10 p-6">
                    <p class="font-semibold text-xl">{{ $comment->user->name }}</p>
                    <p class="text-lg text-gray-600">{{ $comment->body }}</p>
                    @can('delete', $comment)
                        <form method="POST" action="{{ route('comment.destroy', $comment->id) }}" onsubmit="return confirm('Are you sure?')">
                            @csrf
                            @method('DELETE')
                            <button class="py-2 px-4 bg-red-500 hover:bg-red-700 text-white">Delete</button>
                        </form>
                    @endcan
                </div>
            @endforeach
        </div>
-->
        <!-- Navigation to Previous/Next Post -->
        <!-- <div class="w-full flex pt-6">
            @if (isset($post->previous))
                <a href="{{ route('post.show', $post->previous->slug) }}" class="w-1/2 shadow bg-white hover:shadow-md text-left p-6">
                    <p class="text-lg text-blue-800 font-bold flex items-center"><i class="fas fa-arrow-left pr-1"></i> Previous</p>
                    <p>{{ $post->previous->title }}</p>
                </a>
            @else
                <div class="w-1/2 shadow bg-white hover:shadow-md text-left p-6">
                    <p>This is the first post</p>
                </div>
            @endif

            @if (isset($post->next))
                <a href="{{ route('post.show', $post->next->slug) }}" class="w-1/2 shadow bg-white hover:shadow-md text-right p-6">
                    <p class="text-lg text-blue-800 font-bold flex items-center justify-end">Next <i class="fas fa-arrow-right pl-1"></i></p>
                    <p>{{ $post->next->title }}</p>
                </a>
            @else
                <div class="w-1/2 shadow bg-white hover:shadow-md text-right p-6">
                    <p>This is the last post</p>
                </div>
            @endif
        </div> --> 
    </section> 

</x-blog-layout>
