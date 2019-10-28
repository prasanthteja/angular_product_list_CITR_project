import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ProductsListComponent } from './products-list/products-list.component'
import { SingleProductComponent } from './single-product/single-product.component'

const routes: Routes = [
  { path: '', component: ProductsListComponent },
  { path: 'single_product/:id', component: SingleProductComponent }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
