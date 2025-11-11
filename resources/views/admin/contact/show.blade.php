<x-admin-layout>
    <div class="w-full h-screen overflow-x-hidden border-t flex flex-col">
        <main class="w-full flex-grow p-6">
            <div class="flex justify-between items-center mb-6">
                <h1 class="text-3xl text-black pb-6">Contact Details</h1>
                <a href="{{ route('admin.contact.index') }}" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                    Back to List
                </a>
            </div>

            <div class="bg-white shadow-md rounded-lg p-6">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">Name:</label>
                        <p class="text-gray-900">{{ $contact->name }}</p>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">Email:</label>
                        <p class="text-gray-900">{{ $contact->email }}</p>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">Date:</label>
                        <p class="text-gray-900">{{ $contact->created_at->format('F d, Y \a\t g:i A') }}</p>
                    </div>
                    <div>
                        <label class="block text-gray-700 text-sm font-bold mb-2">Status:</label>
                        @if($contact->is_read)
                            <span class="bg-green-200 text-green-600 py-1 px-3 rounded-full text-xs">Read</span>
                        @else
                            <span class="bg-red-200 text-red-600 py-1 px-3 rounded-full text-xs">Unread</span>
                        @endif
                    </div>
                </div>
                
                <div class="mb-6">
                    <label class="block text-gray-700 text-sm font-bold mb-2">Message:</label>
                    <div class="bg-gray-50 p-4 rounded border">
                        <p class="text-gray-900 whitespace-pre-wrap">{{ $contact->message }}</p>
                    </div>
                </div>

                <div class="flex space-x-4">
                    <a href="mailto:{{ $contact->email }}" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
                        Reply via Email
                    </a>
                    <form action="{{ route('admin.contact.destroy', $contact) }}" method="POST" class="inline">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded" onclick="return confirm('Are you sure you want to delete this contact?')">
                            Delete
                        </button>
                    </form>
                </div>
            </div>
        </main>
    </div>
</x-admin-layout>