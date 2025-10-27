<?php

    //
    namespace App\Http\Controllers\Front;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactUsMail;
use App\Http\Controllers\Controller;


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
            'message' => 'required|min:10',
        ]);

        try {
            // Send the email
            Mail::to('enquiries@pioneerau.com')->send(new ContactUsMail($request->all()));
            \Log::info('Contact form email sent successfully', ['email' => $request->email]);
            
        } catch (\Exception $e) {
            // Fallback: Log to file for manual review
            \Log::error('Contact form email failed', ['error' => $e->getMessage(), 'email' => $request->email]);
            
            // Store message in log for manual review
            \Log::info('CONTACT FORM SUBMISSION', [
                'name' => $request->name,
                'email' => $request->email,
                'message' => $request->message,
                'timestamp' => now()
            ]);
        }
        
        return redirect()->route('contact.index')->with('success', 'Thank you for contacting us! We will get back to you soon.');
    }
}


