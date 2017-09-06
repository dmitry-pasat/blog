<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Api\Http\Requests;
use Mail;
use Session;
use App\Post;

class PagesController extends Controller{

    public function getIndex(){
        #process variable data or params
        #talk to the model
        #recieve from the model
        #compile or process data from the model if needed
        #pass that data to the correct view

        $posts = Post::orderBy('created_at', 'desc')->limit(4)->get();
        return view('pages.welcome')->withPosts($posts);

    }

    public function getAbout(){

        $first = "Alex";
        $last = "Curtis";
        $fullname = $first. " " .$last;
        $email = "alex@curtis";
        $data = [];
        $data["email"] = $email;
        $data["fullname"] = $fullname;

        return view('pages.about')->withData($data);
    }
    
    public function getContact(){
        return view('pages.contact');
    }

    public function postContact(request $request){

        $this->validate($request, [
            'subject' => 'required|max:255',
            'email' => 'required|email',
            'message' => 'required|min:6',
        ]);

        $data = array(
            'subject' => $request->subject,
            'email' => $request->email,
            'bodyMessage' => $request->message
        );

        Mail::send('emails.welcome', $data, function($message) use ($data){
            $message->from($data['email']);
            $message->to('dipasatdi@gmail.com');
            $message->subject($data['subject']);
        });

        Session::flash('success', 'Your email was send!');

        return redirect('/');
    }

}