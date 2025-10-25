<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactUsMail;

class TestEmail extends Command
{
    protected $signature = 'test:email';
    protected $description = 'Test email configuration';

    public function handle()
    {
        $this->info('Testing email configuration...');
        
        try {
            $testData = [
                'name' => 'Test User',
                'email' => 'test@example.com',
                'message' => 'This is a test email to verify SMTP configuration.'
            ];

            Mail::to('enquiries@pioneerau.com')->send(new ContactUsMail($testData));
            
            $this->info('✅ Email sent successfully!');
            $this->info('Check enquiries@pioneerau.com inbox and spam folder.');
            
        } catch (\Exception $e) {
            $this->error('❌ Email failed to send:');
            $this->error($e->getMessage());
            
            // Additional debugging info
            $this->info('Current mail configuration:');
            $this->info('MAIL_MAILER: ' . config('mail.default'));
            $this->info('MAIL_HOST: ' . config('mail.mailers.smtp.host'));
            $this->info('MAIL_PORT: ' . config('mail.mailers.smtp.port'));
            $this->info('MAIL_USERNAME: ' . config('mail.mailers.smtp.username'));
            $this->info('MAIL_ENCRYPTION: ' . config('mail.mailers.smtp.encryption'));
        }
    }
}