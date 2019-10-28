import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
    providedIn: 'root'
})
export class DataService {

    private REST_API_SERVER = "http://localhost:8888/citr/products_list.php";

    constructor(private httpClient: HttpClient) { }

    public getProducts() {
        return this.httpClient.get(this.REST_API_SERVER);
    }

    public getProductById(id: string) {
        const path = "http://localhost:8888/citr/get_product_details.php?product_id=" + id;
        return this.httpClient.get(path)
    }

    public addComment(id: string, comment: string) {
        const path = "http://localhost:8888/citr/add_comment.php?product_id=" + id + "&comment=" + comment;
        return this.httpClient.get(path)
    }

    public deleteComment(id: string, cId: string) {
        const path = "http://localhost:8888/citr/delete_comment.php?product_id=" + id + "&comment_id=" + cId;
        return this.httpClient.get(path)
    }
}