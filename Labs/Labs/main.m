// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Basics.h"

void FoolAroundWithPointers(void) {
    const int first[] = { 1, 2, 3 };
    const int *foo = first;
    
    printf("foo's value is %p, foo's address is %p, first's value is %p, first's address is %p\n", foo, &foo, first, &first);
}

void MessWithStrings(void) {
    char bar[] = { 'W', 'o', 'w', '!', ' ' };
    char foo[] = "Hello World!";
    
    printf("%s\n", bar);
}

int main(int argc, const char * argv[]) {
    MessWithStrings();
//    FoolAroundWithPointers();
    return 0;
}
