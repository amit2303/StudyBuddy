abstract class Base{
  //shared variables and functions that will be used through any view model.
}

abstract class BaseViewModelInput{
    void start(); //will be called while init. of view model
    void dispose();//will be called when viewmodle dies.
}

abstract class BaseViewModelOutput{
  
}