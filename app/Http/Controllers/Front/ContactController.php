<?php

    //
    namespace App\Http\Controllers\Front;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactUsMail;
use App\Http\Controllers\Controller;
use App\Models\Contact;


class ContactController extends Controller
{
    // Display the contact form
    public function index()
    {
        return view('front.contact');
    }

    // Handle the form submission
    public function send(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required|min:2',
        ]);

        // Save to database
        Contact::create([
            'name' => $request->name,
            'email' => $request->email,
            'message' => $request->message,
        ]);

        try {
            // Send the email
            Mail::to('enquiries@pioneerau.com')->send(new ContactUsMail($request->all()));
        } catch (\Exception $e) {
            // Continue even if email fails
        }
        
        return redirect()->route('contact.index')->with('success', 'Thank you for contacting us! We will get back to you soon.');
    }
}


