package aspects;

public aspect MyAspect {

    pointcut logAllMethod(): execution(* Robot.*(..));

    Object around(): logAllMethod() {
        try {
            System.out.println("Aspect...Before method " + thisJoinPoint.getSignature());
            return proceed();
        } finally {
            System.out.println("Aspect...After method " + thisJoinPoint.getSignature());
        }
    }

}
