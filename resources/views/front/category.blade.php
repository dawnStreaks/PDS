<x-blog-layout title="{{ $category_name }}">
    <style>
        .uniform-content * { font-family: 'Karla', sans-serif !important; box-sizing: border-box !important; }
        .uniform-content div { font-size: 14px !important; line-height: 1.5 !important; color: #1f2937 !important; }
        .uniform-content p { font-size: 14px !important; line-height: 1.5 !important; margin-bottom: 12px !important; text-align: left !important; color: #1f2937 !important; }
        .uniform-content h1, .uniform-content h2, .uniform-content h3 { font-size: 16px !important; font-weight: 600 !important; margin: 16px 0 8px 0 !important; text-align: left !important; color: #111827 !important; }
        .uniform-content { overflow-x: auto !important; }
        .uniform-content [style*="text-align"] { text-align: left !important; }
        .uniform-content [style*="float"] { float: none !important; }
        .uniform-content [style*="gap:"] { gap: 10px !important; }
        .uniform-content [style*="margin-bottom: 40px"] { margin-bottom: 20px !important; }
        @media (max-width: 640px) {
            .uniform-content div, .uniform-content p, .uniform-content img { display: block !important; width: 100% !important; margin-bottom: 15px !important; }
            .uniform-content [style*="display: flex"] { display: block !important; }
            .uniform-content [style*="width: 50%"] { width: 100% !important; }
            .uniform-content [style*="width: 40%"] { width: 100% !important; }
            .uniform-content [style*="width: 60%"] { width: 100% !important; }
        }
        @media (min-width: 640px) {
            .uniform-content div, .uniform-content p { font-size: 16px !important; margin-bottom: 16px !important; }
            .uniform-content h1, .uniform-content h2, .uniform-content h3 { font-size: 20px !important; margin: 20px 0 12px 0 !important; }
        }
        @media (max-width: 768px) {
            .category-container {
                max-width: 100vw !important;
                margin: 0 !important;
                padding: 0 !important;
            }
            .category-container article {
                margin-left: 0 !important;
                margin-right: 0 !important;
                border-radius: 0 !important;
            }
            .category-container article img {
                width: 100vw !important;
                margin-left: calc(50% - 50vw) !important;
                margin-right: calc(50% - 50vw) !important;
            }
        }
    </style>
    
    <section class="w-full bg-gray-50 py-6 md:py-12">
        <div class="max-w-[900px] mx-auto px-2 sm:px-4 category-container">
            @forelse ($posts as $post)
                <article class="bg-white shadow-lg rounded-lg overflow-hidden border-2 border-blue-600 mb-4 md:mb-8">
                    <div class="relative">
                        <img src="{{ $post->image }}" alt="{{ $post->category->name }}" class="w-full h-auto object-cover" style="min-height: 450px; max-height: 600px;">
                        <div class="absolute inset-0 bg-black bg-opacity-40 flex items-center justify-center">
                            <h1 class="text-white text-lg sm:text-xl md:text-2xl font-bold text-center px-2 sm:px-4">{{ $post->category->name }}</h1>
                        </div>
                    </div>
                    <div class="p-4 sm:p-6 md:p-8">
                        <div class="uniform-content">{!! $post->content !!}</div>
                    </div>
                </article>
            @empty
                <p class="text-gray-600 text-center text-base md:text-lg">No Posts have been added.</p>
            @endforelse
        </div>
        
        <div class="max-w-7xl mx-auto py-4 md:py-8 px-2 sm:px-4">
            <div class="flex justify-center">
                {{ $posts->links() }}
            </div>
        </div>
    </section>
</x-blog-layout>