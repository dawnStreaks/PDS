<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class ZohoOAuthController extends Controller
{
    public function callback(Request $request)
    {
        $code = $request->get('code');
        
        if (!$code) {
            return response()->json(['error' => 'Authorization code not received'], 400);
        }

        try {
            // Exchange code for access token
            $response = Http::post('https://accounts.zoho.com/oauth/v2/token', [
                'grant_type' => 'authorization_code',
                'client_id' => '1000.7ZP6Q5PSEQQQGLHA781JNT5CDCA95V',
                'client_secret' => env('ZOHO_CLIENT_SECRET'), // Add this to .env
                'redirect_uri' => 'https://pioneerau.com/oauth/zoho/callback',
                'code' => $code,
            ]);

            if ($response->successful()) {
                $data = $response->json();
                
                // Log the tokens (store securely in production)
                Log::info('Zoho OAuth Success', [
                    'access_token' => $data['access_token'],
                    'refresh_token' => $data['refresh_token'] ?? null,
                    'expires_in' => $data['expires_in'] ?? null,
                ]);

                return response()->json([
                    'success' => true,
                    'message' => 'OAuth successful! Check logs for tokens.',
                    'access_token' => $data['access_token']
                ]);
            } else {
                Log::error('Zoho OAuth failed', ['response' => $response->body()]);
                return response()->json(['error' => 'Failed to get access token'], 400);
            }
        } catch (\Exception $e) {
            Log::error('Zoho OAuth exception', ['error' => $e->getMessage()]);
            return response()->json(['error' => 'OAuth process failed'], 500);
        }
    }
}