@extends('main')

@section('title', '| Forgot my password')

@section('content')

    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel panel-heading">Reset Password</div>
                <div class="panel-body">

                    {!! Form::open(['url' => 'password/reset', 'method' => 'POST']) !!}

                    {{ Form::hidden('token', $token) }}

                    {{ Form::label('email', 'Email Adress') }}
                    {{ Form::email('email', $email, ['class' => 'form-control']) }}

                    {{ Form::password('password', 'New Password:') }}
                    {{ Form::password('password', ['class' => 'form-control']) }}

                    {{ Form::password_confirmation('password_confirmation', 'Confirm New Password:') }}
                    {{ Form::password_confirmation('password_confirmation', ['class' => 'form-control']) }}

                    {{ Form::submit('Reset Password', ['class' => 'btn btn-primary']) }}

                    {!! Form::close() !!}}

                </div>
            </div>
        </div>
    </div>

@endsection