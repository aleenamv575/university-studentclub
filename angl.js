var app = angular.module("simpleApp", []);

function simpleController() {
    this.collection = [{membername: "Aleena",club:"Music Academy", event: "Woodrock"},
        {membername: "Jhanya",club:"soundnest", event:" soundcurry"},
        {membername: "Catherine",club:"Magnifichoir", event: "Magnificat"},
        {membername: "Cameryn",club:"Acapella", event: " Signature"},
        {membername: "Gautami",club:"Rockband", event: "BOB"},
        {membername: "Anitha",club:"production", event: "OUAT"}];

    this.limit = 9;
    this.sortProperty = 'membername';
    this.reverseSort = false;
}

simpleController.prototype.addEntry = function () {
    this.collection.push(this.newData);
    this.newData = '';
};

simpleController.prototype.sort = function (prop) {
    this.sortProperty = prop;
    this.reverseSort = !this.reverseSort;
}


app.controller("simpleController", simpleController);