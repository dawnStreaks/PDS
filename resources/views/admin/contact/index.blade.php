<x-admin-layout>
    <div class="w-full h-screen overflow-x-hidden border-t flex flex-col">
        <main class="w-full flex-grow p-6">
            <div class="flex justify-between items-center mb-6">
                <h1 class="text-3xl text-black pb-6">Contact Submissions</h1>
            </div>

            <div class="w-full mt-6">
                <div class="bg-white shadow-md rounded my-6 overflow-x-auto">
                    <!-- Desktop Table -->
                    <table class="min-w-full table-auto hidden md:table">
                        <thead>
                            <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
                                <th class="py-3 px-6 text-left">Name</th>
                                <th class="py-3 px-6 text-left">Email</th>
                                <th class="py-3 px-6 text-left">Message</th>
                                <th class="py-3 px-6 text-center">Status</th>
                                <th class="py-3 px-6 text-center">Date</th>
                                <th class="py-3 px-6 text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-600 text-sm font-light">
                            @foreach($contacts as $contact)
                            <tr class="border-b border-gray-200 hover:bg-gray-100">
                                <td class="py-3 px-6 text-left whitespace-nowrap">
                                    <span class="font-medium">{{ $contact->name }}</span>
                                </td>
                                <td class="py-3 px-6 text-left">
                                    <span>{{ $contact->email }}</span>
                                </td>
                                <td class="py-3 px-6 text-left">
                                    <span>{{ Str::limit($contact->message, 50) }}</span>
                                </td>
                                <td class="py-3 px-6 text-center">
                                    @if($contact->is_read)
                                        <span class="bg-green-200 text-green-600 py-1 px-3 rounded-full text-xs">Read</span>
                                    @else
                                        <span class="bg-red-200 text-red-600 py-1 px-3 rounded-full text-xs">Unread</span>
                                    @endif
                                </td>
                                <td class="py-3 px-6 text-center">
                                    <span>{{ $contact->created_at->format('M d, Y') }}</span>
                                </td>
                                <td class="py-3 px-6 text-center">
                                    <div class="flex item-center justify-center">
                                        <a href="{{ route('admin.contact.show', $contact) }}" class="w-4 mr-2 transform hover:text-purple-500 hover:scale-110">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                            </svg>
                                        </a>
                                        <form action="{{ route('admin.contact.destroy', $contact) }}" method="POST" class="inline">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="w-4 mr-2 transform hover:text-red-500 hover:scale-110" onclick="return confirm('Are you sure?')">
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                                </svg>
                                            </button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>

                    <!-- Mobile Cards -->
                    <div class="md:hidden">
                        @foreach($contacts as $contact)
                        <div class="border-b border-gray-200 p-4">
                            <div class="flex justify-between items-start mb-2">
                                <h3 class="font-medium text-gray-900">{{ $contact->name }}</h3>
                                @if($contact->is_read)
                                    <span class="bg-green-200 text-green-600 py-1 px-2 rounded-full text-xs">Read</span>
                                @else
                                    <span class="bg-red-200 text-red-600 py-1 px-2 rounded-full text-xs">Unread</span>
                                @endif
                            </div>
                            <p class="text-sm text-gray-600 mb-2">{{ $contact->email }}</p>
                            <p class="text-sm text-gray-700 mb-3">{{ Str::limit($contact->message, 100) }}</p>
                            <div class="flex justify-between items-center">
                                <span class="text-xs text-gray-500">{{ $contact->created_at->format('M d, Y') }}</span>
                                <div class="flex space-x-2">
                                    <a href="{{ route('admin.contact.show', $contact) }}" class="text-purple-600 hover:text-purple-800">
                                        <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                        </svg>
                                    </a>
                                    <form action="{{ route('admin.contact.destroy', $contact) }}" method="POST" class="inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="text-red-600 hover:text-red-800" onclick="return confirm('Are you sure?')">
                                            <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                            </svg>
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                {{ $contacts->links() }}
            </div>
        </main>
    </div>
</x-admin-layout>