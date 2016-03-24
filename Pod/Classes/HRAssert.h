//
//  HRAssert.h
//  HRAssert
//
//  Created by Ivan Shevelev on 24/03/16.
//  Copyright © 2016 Sibers. All rights reserved.
//

#ifndef HRAssert_h
#define HRAssert_h

#define HRKindOfClassAssert(waiting, current) NSAssert([waiting class] == [current class] || [[current class] isSubclassOfClass:[waiting class]], @"'%@' is not kind of '%@' class", @#current, @#waiting)

#define HRConformsToProtocolAssert(waiting, current) NSAssert([[current class] conformsToProtocol:@protocol(waiting)], @"'%@' do not support '%@' protocol", @#current, @#waiting);

#define HRConformsToProtocolTypeAssert(waiting, current) NSAssert([[current class] conformsToProtocol:waiting], @"'%@' do not support '%@' protocol", @#current, @#waiting);


#endif /* HRAssert_h */
