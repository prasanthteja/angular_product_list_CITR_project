import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { HttpClientModule } from '@angular/common/http';
import { AppComponent } from './app.component';
import { ProductsListComponent } from './products-list/products-list.component';
import { SingleProductComponent } from './single-product/single-product.component';

@NgModule({
  declarations: [
    AppComponent,
    ProductsListComponent,
    SingleProductComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
