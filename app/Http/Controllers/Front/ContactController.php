<?php

    //
    namespace App\Http\Controllers\Front;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use App\Models\Contact;
use App\Services\ZeptoMailService;


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
            $html = view('emails.contact', ['data' => $request->all()])->render();
            $zepto = new ZeptoMailService();
            $sent = $zepto->send(
                'enquiries@pioneerau.com',
                'New Contact Us Message',
                $html,
                $request->email
            );

            if (!$sent) {
                return back()->with('error', 'Unable to send email at this time. Please try again later.');
            }
        } catch (\Exception $e) {
            Log::error('Contact form mail error: '.$e->getMessage(), [
                'request' => $request->only('name', 'email'),
                'exception' => $e,
            ]);
            return back()->with('error', 'Unable to send email at this time. Please try again later.');
        }
        
        return redirect()->route('contact.index')->with('success', 'Thank you for contacting us! We will get back to you soon.');
    }
}


