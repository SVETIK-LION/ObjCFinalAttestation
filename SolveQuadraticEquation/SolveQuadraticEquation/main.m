#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a, b, c, d;
        
        printf("Введите константу a: ");
        scanf("%d", &a);
        printf("Введите константу b: ");
        scanf("%d", &b);
        printf("Введите константу c: ");
        scanf("%d", &c);
        
        NSLog(@"Коэффициент a: %d\nКоэффициент b: %d\nКоэффициент c: %d", a, b, c);
        
        d = b * b - 4 * a * c;
        
        if (a != 0) {
            if (d > 0) {
                CGFloat x1 = (-b + sqrt(d)) / 2 * a;
                CGFloat x2 = (-b - sqrt(d)) / 2 * a;
                NSLog(@"Первый корень: %f\nВторой корень: %f\n", x1, x2);
            } else  if (d == 0) {
                CGFloat x1 = (-b - sqrt(d)) / 2 * a;
                NSLog(@"Один корень: %f\n", x1);
            } else {
                printf("Нет корней.\n");
            }
        } else {
            printf("В квадратном уравнении коэффициент 'а' не может быть равным нулю.\n");
        }
    }
}
