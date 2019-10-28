import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { DataService } from '../data.service';
import { product } from '../mock-products'

@Component({
  selector: 'app-single-product',
  templateUrl: './single-product.component.html',
  styleUrls: ['./single-product.component.css']
})



export class SingleProductComponent implements OnInit {
  sub;
  id;
  values = '';
  product = {};
  comments = {};
  filterName;

  constructor(private _Activatedroute: ActivatedRoute,
    private _router: Router,
    private dataService: DataService
  ) { }


  ngOnInit() {
    this.sub = this._Activatedroute.paramMap.subscribe(params => {
      this.id = params.get('id');
      this.dataService.getProductById(this.id).subscribe((data: product) => {
        this.product = data;
        const { comments } = data;
        this.comments = comments;
      })
    })
  }

  addComment() {
    // this.filterName.value = '';
    if (this.values === '') {
      alert('Please comment')
    } else {
      this.dataService.addComment(this.id, this.values).subscribe((data: product) => {
        this.product = data;
        const { comments } = data;
        this.comments = comments;
      })
    }
  }

  deleteComment(cid: string) {
    this.dataService.deleteComment(this.id, cid).subscribe((data: product) => {
      this.product = data;
      const { comments } = data;
      this.comments = comments
    })
  }

  onKey(event: any) { // without type info
    this.values = (event.target as HTMLInputElement).value;
  }
}
