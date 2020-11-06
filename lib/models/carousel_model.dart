class CarouselModel {
  String image;
  CarouselModel(this.image);
}

List<CarouselModel> carousel =
    carouselsData.map((e) => CarouselModel(e['image'])).toList();
var carouselsData = [
  {'image': 'assets/images/carousel_flight_discount.png'},
  {'image': 'assets/images/carousel_hotel_discount.png'},
  {'image': 'assets/images/carousel_covid_discount.png'}
];
