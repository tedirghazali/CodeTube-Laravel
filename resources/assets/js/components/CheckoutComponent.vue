<template>
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <h3 class="card-header">Order Summary</h3>
                    <div class="card-body">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th width="100">Quantity</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="cart in carts" v-bind:key="cart.id">
                                    <td>{{ cart.name }}</td>
                                    <td>Rp. {{ cart.price }}</td>
                                    <td>{{ cart.amount }}</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="mt-2 text-right">
                            <p>Total Price: {{ total }}</p>
                            <a href="/checkout/stripe" class="btn btn-info">Checkout with Stripe</a>
                            <button class="btn btn-primary">Checkout with Paypal Braintree</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<style>

</style>

<script>
export default{
    data(){
        return {
            carts: [],
            total: '0'
        }
    },
    created(){
        this.viewCart();
    },
    methods: {
        viewCart(){
            if(localStorage.getItem('carts')){
                this.carts = JSON.parse(localStorage.getItem('carts'));
                this.total = this.carts.reduce((total, item)=>{
                    return total + item.amount * item.price;
                }, 0);
                localStorage.setItem('total', this.total);
            }
        }
    }
}
</script>