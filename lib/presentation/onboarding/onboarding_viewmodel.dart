import 'dart:async';
import 'package:advance_flutter/domain/model.dart';
import 'package:advance_flutter/presentation/base/baseviewmodel.dart';
import 'package:advance_flutter/presentation/resources/assets_manager.dart';
import 'package:advance_flutter/presentation/resources/strings_manager.dart';

class OnBoardingViewModel implements BaseViewModel, OnBoardingViewModelInputs, OnBoardingViewModelOutputs{
//stream controller
final StreamController _streamController =StreamController<SliderViewObject>();

  late final List<SliderObject> _list ;
  int _currentIndex = 0;
  //inputs
  @override
  void dispose() {
    _streamController.close(); //after finishing the use of stream we need to dispose it
                              //so our view will be disposed
  }
  
  @override
  void start() {
    _list =_getSliderData();
    //send this slider data to our view
    _postDataToView();
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
  
  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject => _streamController.sink;
  
  //output
  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((SliderObject) => SliderObject);

    List<SliderObject> _getSliderData() => [
        SliderObject(AppStrings.onBoardingTitle1,
            AppStrings.onBoardingSubTitle1, ImageAssets.onboardingLogo1),
        SliderObject(AppStrings.onBoardingTitle2,
            AppStrings.onBoardingSubTitle2, ImageAssets.onboardingLogo2),
        SliderObject(AppStrings.onBoardingTitle3,
            AppStrings.onBoardingSubTitle3, ImageAssets.onboardingLogo3),
        SliderObject(AppStrings.onBoardingTitle4,
            AppStrings.onBoardingSubTitle4, ImageAssets.onboardingLogo4)
      ];

  _postDataToView(){
    inputSliderViewObject.add(SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
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
