<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <title>Stripe Payment</title>
    <link href="{{asset('css/app.css')}}" rel="stylesheet"/>
    <script src="https://js.stripe.com/v3/"></script>
    <style>
    .StripeElement {
        background-color: white;
        height: 40px;
        padding: 10px 12px;
        border-radius: 4px;
        border: 1px solid #ccc;
        box-shadow: 0 1px 3px 0 #e6ebf1;
        -webkit-transition: box-shadow 150ms ease;
        transition: box-shadow 150ms ease;
    }

    .StripeElement--focus {
        box-shadow: 0 1px 3px 0 #cfd7df;
    }

    .StripeElement--invalid {
        border-color: #fa755a;
    }

    .StripeElement--webkit-autofill {
        background-color: #fefde5 !important;
    }
    #card-errors{
        color: #fa755a;
    }
    </style>
</head>
<body>

    <div class="container mt-4 mb-4">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h3>Payment Form</h3>
                @if(Session::get('success_message'))
                    <div class="alert alert-success">{{Session::get('success_message')}}</div>
                @endif
                <form action="{{route('stripepayment')}}" method="post" id="payment-form">
                    @csrf
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" id="email" name="email" value="{{ Auth::user()->email }}" class="form-control" readonly/>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" id="name" name="name" value="{{Auth::user()->name}}" class="form-control" readonly/>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Address</label>
                            <input type="text" id="address" name="address" class="form-control"/>
                        </div>
                        <div class="form-group col-md-3">
                            <label>City</label>
                            <input type="text" id="city" name="city" class="form-control"/>
                        </div>
                        <div class="form-group col-md-3">
                            <label>State</label>
                            <input type="text" id="state" name="state" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label>Country</label>
                            <input type="text" id="country" name="country" class="form-control"/>
                        </div>
                        <div class="form-group col-md-5">
                            <label>Phone</label>
                            <input type="text" id="phone" name="phone" class="form-control"/>
                        </div>
                        <div class="form-group col-md-3">
                            <label>Total</label>
                            <input type="text" id="total" name="total" class="form-control" readonly/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="card-element">
                        Credit or debit card
                        </label>
                        <div id="card-element">
                        <!-- A Stripe Element will be inserted here. -->
                        </div>

                        <!-- Used to display form errors. -->
                        <div id="card-errors" role="alert"></div>
                    </div>

                    <button class="btn btn-primary">Submit Payment</button>
                </form>
            </div>
        </div>
    </div>

    <script>
    document.getElementById('total').value = localStorage.getItem('total');
    var stripe = Stripe('{{ config('services.stripe.key') }}');

    // Create an instance of Elements.
    var elements = stripe.elements();

    // Custom styling can be passed to options when creating an Element.
    // (Note that this demo uses a wider set of styles than the guide below.)
    var style = {
    base: {
        color: '#32325d',
        lineHeight: '18px',
        fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
        fontSmoothing: 'antialiased',
        fontSize: '16px',
        '::placeholder': {
        color: '#aab7c4'
        }
    },
    invalid: {
        color: '#fa755a',
        iconColor: '#fa755a'
    }
    };

    // Create an instance of the card Element.
    var card = elements.create('card', {style: style});

    // Add an instance of the card Element into the `card-element` <div>.
    card.mount('#card-element');

    // Handle real-time validation errors from the card Element.
    card.addEventListener('change', function(event) {
    var displayError = document.getElementById('card-errors');
    if (event.error) {
        displayError.textContent = event.error.message;
    } else {
        displayError.textContent = '';
    }
    });

    // Handle form submission.
    var form = document.getElementById('payment-form');
    form.addEventListener('submit', function(event) {
    event.preventDefault();

    var options = {
        name: document.getElementById('name').value,
        address_line1: document.getElementById('address').value,
        address_city: document.getElementById('city').value,
        address_state: document.getElementById('state').value,
        address_country: document.getElementById('country').value
    }

    stripe.createToken(card, options).then(function(result) {
        if (result.error) {
        // Inform the user if there was an error.
        var errorElement = document.getElementById('card-errors');
        errorElement.textContent = result.error.message;
        } else {
        // Send the token to your server.
        stripeTokenHandler(result.token);
        }
    });
    });
    function stripeTokenHandler(token) {
        // Insert the token ID into the form so it gets submitted to the server
        var form = document.getElementById('payment-form');
        var hiddenInput = document.createElement('input');
        hiddenInput.setAttribute('type', 'hidden');
        hiddenInput.setAttribute('name', 'stripeToken');
        hiddenInput.setAttribute('value', token.id);
        form.appendChild(hiddenInput);

        // Submit the form
        form.submit();
    }
    </script>
</body>
</html>