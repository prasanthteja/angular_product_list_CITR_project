import { Component, OnInit } from '@angular/core';
import { DataService } from '../data.service'

@Component({
  selector: 'app-products-list',
  templateUrl: './products-list.component.html',
  styleUrls: ['./products-list.component.css']
})
export class ProductsListComponent implements OnInit {

  products = [];

  constructor(private dataService: DataService) { }

  ngOnInit() {
    this.dataService.getProducts().subscribe((data: any[]) => {
      this.products = data.reverse();
    })
  }

}
