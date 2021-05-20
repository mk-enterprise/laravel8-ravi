<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Comment;
use App\Models\PostDescription;

class Post extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'details',
        'user_id',
    ];

    public function userInfo() {
        return $this->belongsTo(User::class, 'user_id', 'id')
            ->select('id','name');
    }

    public function comments() {
        return $this->hasMany(Comment::class, 'post_id', 'id');
    }

    public function description() {
        return $this->hasOne(PostDescription::class, 'post_id', 'id');
    }

    // Accessor
    /**
     *
     * @param  string  $value
     * @return string
     */
    public function getCreatedAtAttribute($value)
    {
        return date('d M Y H:i a', strtotime($value));
    }

    // public function getNameAttribute($value)
    // {
    //     return ucfirst($value);
    // }

    //mutator
    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtoupper($value);
        // return ucfirst($value);
    }

    public function scopeShowActive($query, $status){
        return $query->where('status',$status);

    }
}
