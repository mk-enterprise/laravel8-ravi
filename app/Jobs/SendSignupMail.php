<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use DB;

class SendSignupMail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    private $userId;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($userId)
    {
        $this->userId = $userId;
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        sleep(10);
        DB::table('logs')->insert([
            // 'user_id' => '',
            'user_id' => $this->userId,
            'comment' => 'Mail sent on '. date('Y-m-d H:i:s')
        ]);
        
        //
    }
}
