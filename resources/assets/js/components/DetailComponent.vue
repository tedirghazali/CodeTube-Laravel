<template>
<div class="container">
  <div class="row mt-2 mb-2">
    <div class="col-md-10">&nbsp;</div>
    <div class="col-md-2 text-right">
      <button class="btn btn-primary" data-toggle="modal" data-target="#cart">
        <i class="fa fa-shopping-cart"></i> <span class="badge badge-light">{{badge}}</span>
      </button>
      <div class="modal fade" id="cart">
        <div class="modal-dialog modal-dialog-centered modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Your Cart</h5>
              <button class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
              <table class="table table-striped text-left">
                <tbody>
                  <tr v-for="(cart, n) in carts" v-bind:key="cart.id">
                    <td>{{ cart.name }}</td>
                    <td>Rp. {{ cart.price }}</td>
                    <td width="100"><input type="text" readonly class="form-control" v-model="cart.amount"></td>
                    <td width="60"><button @click="removeCartProduct(n)" class="btn btn-danger btn-sm"><i class="fa fa-close"></i></button></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="modal-footer">
              Total Price: Rp. {{ totalprice }} &nbsp;
              <a href="/checkout" class="btn btn-primary">Checkout</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-9">
      <div class="card mb-2">
        <div class="card-body">
          <h3 class="card-title">{{ product.name }}</h3>
          <p>{{ product.description }}</p>
          <p>Rp. {{ product.price }}</p>
          <div class="text-right">
            <input type="number" v-model="quantity" style="width:60px"/>
            <button @click="cartProduct(product)" class="btn btn-primary">Add to Cart</button>
          </div>
        </div>
      </div>
      <div class="card">
        <div class="card-body">
          <h3 class="heading">User Rating</h3>
          <div class="row">
            <div class="col-md-6">
              <star-rating v-model="rating" :increment="0.5" text-class="custom-text"></star-rating>
            </div>
            <div class="col-md-6"></div>
          </div>
          <button @click="setRating" class="btn btn-primary">Publish</button>
          <h3 class="heading">Reviews</h3>
          <div class="review-rating">
              <div class="left-review">
                  <div class="review-title">3.5</div>
                  <div class="review-star">
                      <span class="fa fa-star"></span>
                      <span class="fa fa-star"></span>
                      <span class="fa fa-star"></span>
                      <span class="fa fa-star-half-o"></span>
                      <span class="fa fa-star-o"></span>
                  </div>
                  <div class="review-people"><i class="fa fa-user"></i> 8,337,200 total</div>
              </div>
              <div class="right-review">
                  <div class="row-bar">
                      <div class="left-bar">5</div>
                      <div class="right-bar">
                          <div class="bar-container">
                              <div class="bar-5" style="width: 60%;"></div>
                          </div>
                      </div>
                  </div>
                  <div class="row-bar">
                      <div class="left-bar">4</div>
                      <div class="right-bar">
                          <div class="bar-container">
                              <div class="bar-4" style="width: 30%;"></div>
                          </div>
                      </div>
                  </div>
                  <div class="row-bar">
                      <div class="left-bar">3</div>
                      <div class="right-bar">
                          <div class="bar-container">
                              <div class="bar-3" style="width: 10%;"></div>
                          </div>
                      </div>
                  </div>
                  <div class="row-bar">
                      <div class="left-bar">2</div>
                      <div class="right-bar">
                          <div class="bar-container">
                              <div class="bar-2" style="width: 4%;"></div>
                          </div>
                      </div>
                  </div>
                  <div class="row-bar">
                      <div class="left-bar">1</div>
                      <div class="right-bar">
                          <div class="bar-container">
                              <div class="bar-1" style="width: 15%;"></div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div v-for="productx in products" v-bind:key="productx.id" class="card mb-2">
        <div class="card-body">
          <h4 class="card-title">{{ productx.name }}</h4>
          <p>{{ productx.description.slice(0, 60) }}...</p>
          <div class="row">
            <div class="col-md-6">Stock {{ productx.amount }}</div>
            <div class="col-md-6 text-right">Rp. {{ productx.price }}</div>
          </div>
          <div class="text-right">
            <button @click="viewLink(productx.id)" class="btn btn-primary">View</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</template>

<style>
/* Star Rating */
* {
    box-sizing: border-box;
}
.fa {
    font-size: 25px;
}
.left-bar {
    float: left;
    width: 5%;
    margin-top:10px;
}
.right-bar {
    margin-top:10px;
    float: left;
    width: 95%;
}
.row-bar:after {
    content: "";
    display: table;
    clear: both;
}
.review-rating:after {
    content: "";
    display: table;
    clear: both;
}
.left-review {
    float: left;
    width: 30%;
    margin-top:10px;
    text-align: center;
}
.right-review {
    float: left;
    width: 70%;
    margin-top:10px;
}
.review-title{
    font-size: 56pt;
}
.review-star{
    margin: 0 0 10px 0;
}
.review-people .fa{
    font-size: 11pt;
}
.bar-container {
    width: 100%;
    background-color: #f1f1f1;
    text-align: center;
    color: white;
}
.bar-5 {height: 18px; background-color: #57bb8a;}
.bar-4 {height: 18px; background-color: #9ace6a;}
.bar-3 {height: 18px; background-color: #ffcf02;}
.bar-2 {height: 18px; background-color: #ff9f02;}
.bar-1 {height: 18px; background-color: #ff6f31;}
.star-rating{
    text-align: center;
}
.star-rating .fa:hover{
    color: orange;
}
.heading {
    font-size: 25px;
    color: #999;
    border-bottom: 2px solid #eee;
}
@media (max-width: 400px) {
    .left-bar, .right-bar, .left-review, .right-review {
        width: 100%;
    }
}
.custom-text {
  font-weight: bold;
  font-size: 1.9em;
  border: 1px solid #cfcfcf;
  padding-left: 10px;
  padding-right: 10px;
  border-radius: 5px;
  color: #999;
  background: #fff;
}
</style>

<script>
export default{
  data(){
    return {
      products: [],
      product: {
        id:'',
        name:'',
        description:'',
        price:'',
        amount:''
      },
      carts: [],
      cart: {
        id: '',
        name: '',
        price: '',
        amount: ''
      },
      badge: '0',
      quantity: 1,
      totalprice: '0',
      rating: 0
    }
  },
  created(){
    this.viewProduct();
    this.viewOne();
    this.localStorageProduct();
  },
  methods: {
    setRating(){
        var pathArray = location.pathname.split('/');
        var uid = pathArray[2];
        fetch('/api/rating/new', {
          method: 'post',
          body: JSON.stringify({ product:uid, user:'3', rating:this.rating }),
          headers: {
            'content-type': 'application/json'
          }
        }).then(res => res.json())
        .then(data => {
          swal('Thank you!', 'Terima kasih atas rating and', 'success');
        }).catch(err => {
          swal('Failed', 'gagal load data', 'error');
        });
    },
    viewProduct(){
      fetch('/api/products')
      .then(res => res.json())
      .then(res => {
        this.products = res.data;
      })
      .catch(err => console.log(err));
    },
    viewOne(){
      var pathArray = location.pathname.split('/');
      var uid = pathArray[2];
      fetch(`/api/products/${uid}`)
      .then(res => res.json())
      .then(res => {
        this.product.id = res.data.id;
        this.product.name = res.data.name;
        this.product.description = res.data.description;
        this.product.price = res.data.price;
        this.product.amount = res.data.amount;
      })
      .catch(err => console.log(err));
    },
    localStorageProduct(){
      if(localStorage.getItem('carts')){
        this.carts = JSON.parse(localStorage.getItem('carts'));
        this.badge = this.carts.length;
        this.totalprice = this.carts.reduce((total, item) => {
            return total + item.amount * item.price;
        }, 0);
      }
    },
    cartProduct(pro){
      this.cart.id = pro.id;
      this.cart.name = pro.name;
      this.cart.price = pro.price;
      this.cart.amount = this.quantity;
      this.carts.push(this.cart);
      this.cart = {};
      this.storeCartProduct();
    },
    removeCartProduct(pro){
      this.carts.splice(pro, 1);
      this.storeCartProduct();
    },
    storeCartProduct(){
      let parsed = JSON.stringify(this.carts);
      localStorage.setItem('carts', parsed);
      this.localStorageProduct();
    },
    viewLink(mylink){
      location.href = '/detail/'+mylink;
    }
  }
}
</script>

