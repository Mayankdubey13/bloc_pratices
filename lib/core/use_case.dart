

//Here R stands for the Response we want to send and P stands for the params that is send as arguments
//in the function.....

abstract class UseCase<R, P> {
  Future<R> call({required P? params});
}