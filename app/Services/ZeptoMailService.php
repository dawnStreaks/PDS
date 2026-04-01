<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class ZeptoMailService
{
    public function send(string $to, string $subject, string $htmlBody, ?string $replyTo = null): bool
    {
        $payload = [
            'from' => [
                'address' => config('services.zeptomail.from_address'),
                'name' => config('app.name'),
            ],
            'to' => [
                ['email_address' => ['address' => $to]],
            ],
            'subject' => $subject,
            'htmlbody' => $htmlBody,
        ];

        if ($replyTo) {
            $payload['reply_to'] = [['address' => $replyTo]];
        }

        $response = Http::withHeaders([
            'Authorization' => 'Zoho-enczapikey ' . config('services.zeptomail.api_key'),
            'Content-Type' => 'application/json',
        ])->post('https://api.zeptomail.com.au/v1.1/email', $payload);

        if ($response->successful()) {
            return true;
        }

        Log::error('ZeptoMail send failed', [
            'status' => $response->status(),
            'body' => $response->body(),
        ]);

        return false;
    }
}
