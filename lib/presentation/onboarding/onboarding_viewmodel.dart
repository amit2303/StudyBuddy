import 'dart:async';
import 'package:advance_flutter/domain/model.dart';
import 'package:advance_flutter/presentation/base/baseviewmodel.dart';

class OnBoardingViewModel implements BaseViewModel, OnBoardingViewModelInputs, OnBoardingViewModelOutputs{
//stream controller
final StreamController _streamController =StreamController<SliderViewObject>();
  //inputs
  @override
  void dispose() {
    // TODO: implement dispose
  }
  
  @override
  void start() {
    // TODO: implement start
  }
  
  @override
  void goNext() {
    // TODO: implement goNext
  }
  
  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }
  
  @override
  void onPageChanged(int index) {
    // TODO: implement onPageChanged
  }


}







// inputs mean the orders that our view model will recieve from our view
abstract class OnBoardingViewModelInputs {
  void goNext(); // when user clicks on right arrow or swipe left.
  void goPrevious(); // when user clicks on left arrow or swipe right.
  void onPageChanged(int index);

  Sink get inputSliderViewObject; //this is the way to add data to the stream.. stream input
}

// outputs mean data or results that will be sent from our view model to our view
abstract class OnBoardingViewModelOutputs {

  Stream<SliderViewObject> get outputSliderViewObject;
}


class SliderViewObject {
  SliderObject sliderObject;
  int noOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject,this.noOfSlides,this.currentIndex);
}
