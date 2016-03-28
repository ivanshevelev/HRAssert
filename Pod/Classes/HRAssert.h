//
//  HRAssert.h
//  HRAssert
//
//  Created by Ivan Shevelev on 24/03/16.
//  Copyright © 2016 Sibers. All rights reserved.
//

#ifndef HRAssert_h
#define HRAssert_h

/**
 *  Assert for check current class is kind of waiting class.
 *
 *  @param waiting Waiting value can be instance, Class type instance or class name(like NSString).
 *  @param current Current value can be instance, Class type instance or class name(like NSString).
 *
 */
#define HRKindOfClassAssert(waiting, current) NSAssert([waiting class] == [current class] || [[current class] isSubclassOfClass:[waiting class]], @"'%@' is not kind of '%@' class", @#current, @#waiting)

/**
 *  Assert for check instance conforms to protocol.
 *
 *  @param waiting Waiting value must be protocol name(like NSCopying).
 *  @param current Current value can be instance, Class type instance or class name(like NSString).
 *
 */
#define HRConformsToProtocolAssert(waiting, current) NSAssert([[current class] conformsToProtocol:@protocol(waiting)], @"'%@' do not support '%@' protocol", @#current, @#waiting);

/**
 *  Assert for check instance conforms to protocol.
 *
 *  @param waiting Waiting value must be Protocol type instance.
 *  @param current Current value can be instance, Class type instance or class name(like NSString).
 *
 */
#define HRConformsToProtocolTypeAssert(waiting, current) NSAssert([[current class] conformsToProtocol:waiting], @"'%@' do not support '%@' protocol", @#current, @#waiting);


#endif /* HRAssert_h */
