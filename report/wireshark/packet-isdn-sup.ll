Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-isdn-sup?download=true
inline.NumInlined: 59
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@isdn_sup_str_operation = internal constant [33 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.444 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.445 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.446 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.447 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.448 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.449 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.450 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.451 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.452 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.453 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.454 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.455 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.456 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.457 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.458 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.459 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.460 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.461 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.462 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.463 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.464 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.465 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.466 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.467 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.468 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.469 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.470 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.471 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.472 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.473 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.474 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.475 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.477 = private unnamed_addr constant [14 x i8] c"notSubscribed\00", align 1
@.str.478 = private unnamed_addr constant [15 x i8] c"notImplemented\00", align 1
@.str.479 = private unnamed_addr constant [20 x i8] c"invalidServedUserNr\00", align 1
@.str.480 = private unnamed_addr constant [17 x i8] c"invalidCallState\00", align 1
@.str.481 = private unnamed_addr constant [24 x i8] c"basicServiceNotProvided\00", align 1
@.str.482 = private unnamed_addr constant [16 x i8] c"notIncomingCall\00", align 1
@.str.483 = private unnamed_addr constant [42 x i8] c"supplementaryServiceInteractionNotAllowed\00", align 1
@.str.484 = private unnamed_addr constant [20 x i8] c"resourceUnavailable\00", align 1
@.str.485 = private unnamed_addr constant [24 x i8] c"noChargingInfoAvailable\00", align 1
@.str.486 = private unnamed_addr constant [30 x i8] c"invalidOrUnregisteredCUGIndex\00", align 1
@.str.487 = private unnamed_addr constant [44 x i8] c"requestedBasicServiceViolatesCUGConstraints\00", align 1
@.str.488 = private unnamed_addr constant [29 x i8] c"outgoingCallsBarredWithinCUG\00", align 1
@.str.489 = private unnamed_addr constant [29 x i8] c"incomingCallsBarredWithinCUG\00", align 1
@.str.490 = private unnamed_addr constant [19 x i8] c"userNotMemberOfCUG\00", align 1
@.str.491 = private unnamed_addr constant [52 x i8] c"inconsistencyInDesignatedFacilityAndSubscriberClass\00", align 1
@.str.492 = private unnamed_addr constant [16 x i8] c"illConferenceId\00", align 1
@.str.493 = private unnamed_addr constant [11 x i8] c"illPartyId\00", align 1
@.str.494 = private unnamed_addr constant [24 x i8] c"numberOfPartiesExceeded\00", align 1
@.str.495 = private unnamed_addr constant [10 x i8] c"notActive\00", align 1
@.str.496 = private unnamed_addr constant [11 x i8] c"notAllowed\00", align 1
@.str.497 = private unnamed_addr constant [20 x i8] c"invalidDivertedToNr\00", align 1
@.str.498 = private unnamed_addr constant [17 x i8] c"specialServiceNr\00", align 1
@.str.499 = private unnamed_addr constant [24 x i8] c"diversionToServedUserNr\00", align 1
@.str.500 = private unnamed_addr constant [21 x i8] c"incomingCallAccepted\00", align 1
@.str.501 = private unnamed_addr constant [27 x i8] c"numberOfDiversionsExceeded\00", align 1
@.str.502 = private unnamed_addr constant [13 x i8] c"notActivated\00", align 1
@.str.503 = private unnamed_addr constant [23 x i8] c"requestAlreadyAccepted\00", align 1
@.str.504 = private unnamed_addr constant [21 x i8] c"rejectedByTheNetwork\00", align 1
@.str.505 = private unnamed_addr constant [18 x i8] c"rejectedByTheUser\00", align 1
@.str.506 = private unnamed_addr constant [28 x i8] c"unauthorizedPrecedenceLevel\00", align 1
@isdn_sup_str_error = internal constant [32 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.477 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.238 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.478 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.479 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.480 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.481 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.482 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.483 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.484 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.485 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.486 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.487 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.488 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.489 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.490 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.491 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.492 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.493 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.494 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.495 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.496 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.497 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.498 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.499 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.500 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.501 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.502 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.503 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.504 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.505 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.506 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.508 = private unnamed_addr constant [31 x i8] c"chargingInformationAtCallSetup\00", align 1
@.str.509 = private unnamed_addr constant [20 x i8] c"chargingDuringACall\00", align 1
@.str.510 = private unnamed_addr constant [24 x i8] c"chargingAtTheEndOfACall\00", align 1
@isdn_sup_ChargingCase_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.508 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.509 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.510 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_ChargingRequestRes_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.151 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.155 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCSCurrencyArg_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.151 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCSSpecialArrArg_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCDCurrencyArg_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.159 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCDChargingUnitArg_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.161 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCECurrencyArg_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.163 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCEChargingUnitArg_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.165 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_PartyNumber_vals = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.119 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.122 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.124 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.126 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.128 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.130 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.132 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.520 = private unnamed_addr constant [32 x i8] c"successCalledUserMLPPSubscriber\00", align 1
@.str.521 = private unnamed_addr constant [35 x i8] c"successCalledUserNotMLPPSubscriber\00", align 1
@.str.522 = private unnamed_addr constant [13 x i8] c"failureCaseA\00", align 1
@.str.523 = private unnamed_addr constant [13 x i8] c"failureCaseB\00", align 1
@isdn_sup_StatusRequest_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.520 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.521 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.522 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.523 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.525 = private unnamed_addr constant [24 x i8] c"circuitReservedForReuse\00", align 1
@.str.526 = private unnamed_addr constant [27 x i8] c"circuitNotReservedForReuse\00", align 1
@isdn_sup_PreemptParams_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.525 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.526 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.528 = private unnamed_addr constant [24 x i8] c"userProvidedNotScreened\00", align 1
@.str.529 = private unnamed_addr constant [30 x i8] c"userProvidedVerifiedAndPassed\00", align 1
@.str.530 = private unnamed_addr constant [30 x i8] c"userProvidedVerifiedAndFailed\00", align 1
@.str.531 = private unnamed_addr constant [16 x i8] c"networkProvided\00", align 1
@isdn_sup_ScreeningIndicator_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.528 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.529 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.530 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.531 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_PartySubaddress_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.142 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.144 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.534 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.535 = private unnamed_addr constant [20 x i8] c"internationalNumber\00", align 1
@.str.536 = private unnamed_addr constant [15 x i8] c"nationalNumber\00", align 1
@.str.537 = private unnamed_addr constant [22 x i8] c"networkSpecificNumber\00", align 1
@.str.538 = private unnamed_addr constant [17 x i8] c"subscriberNumber\00", align 1
@.str.539 = private unnamed_addr constant [18 x i8] c"abbreviatedNumber\00", align 1
@isdn_sup_PublicTypeOfNumber_vals = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.534 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.535 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.536 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.537 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.538 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.539 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.541 = private unnamed_addr constant [21 x i8] c"level2RegionalNumber\00", align 1
@.str.542 = private unnamed_addr constant [21 x i8] c"level1RegionalNumber\00", align 1
@.str.543 = private unnamed_addr constant [18 x i8] c"pTNSpecificNumber\00", align 1
@.str.544 = private unnamed_addr constant [12 x i8] c"localNumber\00", align 1
@isdn_sup_PrivateTypeOfNumber_vals = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.534 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.541 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.542 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.543 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.544 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.539 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCDCurrencyInfo_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.173 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.184 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCDChargingUnitInfo_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.184 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.548 = private unnamed_addr constant [19 x i8] c"basicCommunication\00", align 1
@.str.549 = private unnamed_addr constant [12 x i8] c"callAttempt\00", align 1
@.str.550 = private unnamed_addr constant [10 x i8] c"callSetup\00", align 1
@.str.551 = private unnamed_addr constant [15 x i8] c"userToUserInfo\00", align 1
@.str.552 = private unnamed_addr constant [29 x i8] c"operationOfSupplementaryServ\00", align 1
@isdn_sup_ChargedItem_vals = internal constant [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.548 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.549 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.550 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.551 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.552 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_T_chargingtype_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.173 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.182 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.184 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.186 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCSChargingTypeSpecificCurrency_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.176 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.178 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.180 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.556 = private unnamed_addr constant [19 x i8] c"continuousCharging\00", align 1
@.str.557 = private unnamed_addr constant [13 x i8] c"stepFunction\00", align 1
@isdn_sup_ChargingType_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.556 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.557 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.559 = private unnamed_addr constant [6 x i8] c"octet\00", align 1
@.str.560 = private unnamed_addr constant [8 x i8] c"segment\00", align 1
@.str.561 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@isdn_sup_VolumeUnit_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.559 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.560 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.561 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.563 = private unnamed_addr constant [9 x i8] c"subTotal\00", align 1
@.str.564 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@isdn_sup_TypeOfChargingInfo_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.563 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.564 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.566 = private unnamed_addr constant [15 x i8] c"normalCharging\00", align 1
@.str.567 = private unnamed_addr constant [16 x i8] c"reverseCharging\00", align 1
@.str.568 = private unnamed_addr constant [19 x i8] c"creditCardCharging\00", align 1
@isdn_sup_AOCDBillingId_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.566 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.567 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.568 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_RecoredUnitsCc_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.235 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.238 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCECurrencyCc_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.173 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.184 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.572 = private unnamed_addr constant [28 x i8] c"callForwardingUnconditional\00", align 1
@.str.573 = private unnamed_addr constant [19 x i8] c"callForwardingBusy\00", align 1
@.str.574 = private unnamed_addr constant [22 x i8] c"callForwardingNoReply\00", align 1
@.str.575 = private unnamed_addr constant [13 x i8] c"callTransfer\00", align 1
@isdn_sup_AOCEBillingId_vals = internal constant [9 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.566 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.567 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.568 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.572 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.573 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.574 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.453 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.575 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_ChargingAssociation_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.263 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.265 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_AOCEChargingUnitCc_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.184 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.579 = private unnamed_addr constant [14 x i8] c"oneThousandth\00", align 1
@.str.580 = private unnamed_addr constant [13 x i8] c"oneHundredth\00", align 1
@.str.581 = private unnamed_addr constant [9 x i8] c"oneTenth\00", align 1
@.str.582 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.583 = private unnamed_addr constant [4 x i8] c"ten\00", align 1
@.str.584 = private unnamed_addr constant [8 x i8] c"hundred\00", align 1
@.str.585 = private unnamed_addr constant [9 x i8] c"thousand\00", align 1
@isdn_sup_Multiplier_vals = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.579 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.580 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.581 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.582 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.583 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.584 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.585 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.587 = private unnamed_addr constant [19 x i8] c"oneHundredthSecond\00", align 1
@.str.588 = private unnamed_addr constant [15 x i8] c"oneTenthSecond\00", align 1
@.str.589 = private unnamed_addr constant [10 x i8] c"oneSecond\00", align 1
@.str.590 = private unnamed_addr constant [11 x i8] c"tenSeconds\00", align 1
@.str.591 = private unnamed_addr constant [10 x i8] c"oneMinute\00", align 1
@.str.592 = private unnamed_addr constant [8 x i8] c"oneHour\00", align 1
@.str.593 = private unnamed_addr constant [16 x i8] c"twentyFourHours\00", align 1
@isdn_sup_Scale_vals = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.587 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.588 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.589 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.590 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.591 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.592 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.593 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.595 = private unnamed_addr constant [4 x i8] c"cfu\00", align 1
@.str.596 = private unnamed_addr constant [4 x i8] c"cfb\00", align 1
@.str.597 = private unnamed_addr constant [5 x i8] c"cfnr\00", align 1
@isdn_sup_Procedure_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.595 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.596 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.597 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.599 = private unnamed_addr constant [12 x i8] c"allServices\00", align 1
@.str.600 = private unnamed_addr constant [7 x i8] c"speech\00", align 1
@.str.601 = private unnamed_addr constant [31 x i8] c"unrestrictedDigitalInformation\00", align 1
@.str.602 = private unnamed_addr constant [11 x i8] c"audio3k1Hz\00", align 1
@.str.603 = private unnamed_addr constant [56 x i8] c"unrestrictedDigitalInformationWithTonesAndAnnouncements\00", align 1
@.str.604 = private unnamed_addr constant [10 x i8] c"multirate\00", align 1
@.str.605 = private unnamed_addr constant [15 x i8] c"telephony3k1Hz\00", align 1
@.str.606 = private unnamed_addr constant [8 x i8] c"teletex\00", align 1
@.str.607 = private unnamed_addr constant [20 x i8] c"telefaxGroup4Class1\00", align 1
@.str.608 = private unnamed_addr constant [20 x i8] c"videotexSyntaxBased\00", align 1
@.str.609 = private unnamed_addr constant [15 x i8] c"videotelephony\00", align 1
@.str.610 = private unnamed_addr constant [16 x i8] c"telefaxGroup2-3\00", align 1
@.str.611 = private unnamed_addr constant [14 x i8] c"telephony7kHz\00", align 1
@.str.612 = private unnamed_addr constant [17 x i8] c"euroFileTransfer\00", align 1
@.str.613 = private unnamed_addr constant [32 x i8] c"fileTransferAndAccessManagement\00", align 1
@.str.614 = private unnamed_addr constant [16 x i8] c"videoconference\00", align 1
@.str.615 = private unnamed_addr constant [23 x i8] c"audioGraphicConference\00", align 1
@isdn_sup_BasicService_vals = internal constant [18 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.599 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.600 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.601 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.602 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.603 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.604 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.605 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.606 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.607 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.608 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.609 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.610 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.611 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.612 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.613 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.614 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.615 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_ServedUserNr_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.334 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.336 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.618 = private unnamed_addr constant [11 x i8] c"cdAlerting\00", align 1
@.str.619 = private unnamed_addr constant [12 x i8] c"cdImmediate\00", align 1
@isdn_sup_DiversionReason_vals = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.534 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.595 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.596 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.597 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.618 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.619 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_PresentedAddressScreened_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.93 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.96 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.98 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.100 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@isdn_sup_PresentedNumberUnscreened_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.105 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.96 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.98 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.108 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.623 = private unnamed_addr constant [15 x i8] c"noNotification\00", align 1
@.str.624 = private unnamed_addr constant [32 x i8] c"notificationWithoutDivertedToNr\00", align 1
@.str.625 = private unnamed_addr constant [29 x i8] c"notificationWithDivertedToNr\00", align 1
@isdn_sup_SubscriptionOption_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.623 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.624 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.625 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.627 = private unnamed_addr constant [9 x i8] c"service1\00", align 1
@.str.628 = private unnamed_addr constant [9 x i8] c"service2\00", align 1
@.str.629 = private unnamed_addr constant [9 x i8] c"service3\00", align 1
@isdn_sup_Service_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.627 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.628 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.629 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.631 = private unnamed_addr constant [14 x i8] c"flashOverride\00", align 1
@.str.632 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@.str.633 = private unnamed_addr constant [10 x i8] c"immediate\00", align 1
@.str.634 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.635 = private unnamed_addr constant [8 x i8] c"routine\00", align 1
@isdn_sup_PrecLevel_vals = internal constant [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.631 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.632 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.633 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.634 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.635 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.637 = private unnamed_addr constant [11 x i8] c"ifbAllowed\00", align 1
@.str.638 = private unnamed_addr constant [14 x i8] c"ifbNotAllowed\00", align 1
@.str.639 = private unnamed_addr constant [13 x i8] c"pathReserved\00", align 1
@isdn_sup_LFBIndictn_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.637 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.638 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.639 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.641 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.642 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.643 = private unnamed_addr constant [30 x i8] c"bearerCapabilityNotAuthorized\00", align 1
@.str.644 = private unnamed_addr constant [31 x i8] c"bearerCapabilityNotlmplemented\00", align 1
@.str.645 = private unnamed_addr constant [29 x i8] c"bearerCapabilityNotAvailable\00", align 1
@.str.646 = private unnamed_addr constant [22 x i8] c"pathReservationDenied\00", align 1
@isdn_sup_StatusQuery_vals = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.641 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.642 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.643 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.644 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.645 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.646 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.648 = private unnamed_addr constant [29 x i8] c"%s:%u: failed assertion \22%s\22\00", align 1
@.str.649 = private unnamed_addr constant [34 x i8] c"epan/dissectors/packet-isdn-sup.c\00", align 1
@.str.650 = private unnamed_addr constant [5 x i8] c"rctx\00", align 1
@.str.651 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.652 = private unnamed_addr constant [6 x i8] c" - %s\00", align 1
@.str.653 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@switch.table.dissect_isdn_sup_res = private unnamed_addr constant [46 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 672), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 168), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 648), ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 360), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 384), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 408), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 432), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 456), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 504), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 528), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 552), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 600), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 480), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 576), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 624), ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 696), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 720), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 744), ptr poison, ptr poison, ptr poison, ptr @isdn_sup_op_tab, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 24), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 48), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 72), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 96), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 120), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 144), ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 192), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 216), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 240), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 264), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 288), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 312), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_op_tab, i64 336)], align 8
@switch.table.dissect_isdn_sup_err = private unnamed_addr constant [49 x ptr] [ptr @isdn_sup_err_tab, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 448), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 464), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 16), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 32), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 48), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 64), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 80), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 96), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 112), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 128), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 336), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 352), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 368), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 160), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 176), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 192), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 208), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 224), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 240), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 384), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 400), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 144), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 256), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 272), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 288), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 304), ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 320), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 480), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 416), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @isdn_sup_err_tab, i64 432)], align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_isdn_sup() local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.a = getelementptr [24 x i8], ptr @isdn_sup_op_tab, i64 %indvars.iv
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr @isdn_sup_arg_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str, i32 noundef %i.b, ptr noundef %i.c)
  %i.d = load ptr, ptr @isdn_sup_res_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.1, i32 noundef %i.b, ptr noundef %i.d)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.preheader17.preheader, label %bb.b, !llvm.loop !6

.preheader17.preheader:                           ; preds = %bb.b
  %i.e = load i32, ptr @proto_isdn_sup, align 4
  %i.f = tail call ptr @create_dissector_handle(ptr noundef @dissect_CalledFreephoneNrArg_PDU, i32 noundef %i.e)
  tail call void @dissector_add_string(ptr noundef @.str.2, ptr noundef @.str.436, ptr noundef %i.f)
  %i.g = load i32, ptr @proto_isdn_sup, align 4
  %i.h = tail call ptr @create_dissector_handle(ptr noundef @dissect_Monitor_T_FPHArg_PDU, i32 noundef %i.g)
  tail call void @dissector_add_string(ptr noundef @.str.2, ptr noundef @.str.437, ptr noundef %i.h)
  %i.i = load i32, ptr @proto_isdn_sup, align 4
  %i.j = tail call ptr @create_dissector_handle(ptr noundef @dissect_Free_T_FPHArg_PDU, i32 noundef %i.i)
  tail call void @dissector_add_string(ptr noundef @.str.2, ptr noundef @.str.438, ptr noundef %i.j)
  %i.k = load i32, ptr @proto_isdn_sup, align 4
  %i.l = tail call ptr @create_dissector_handle(ptr noundef @dissect_Call_T_FPHArg_PDU, i32 noundef %i.k)
  tail call void @dissector_add_string(ptr noundef @.str.2, ptr noundef @.str.439, ptr noundef %i.l)
  %i.m = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 0, ptr noundef %i.m)
  %i.n = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 3, ptr noundef %i.n)
  %i.o = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 4, ptr noundef %i.o)
  %i.p = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 6, ptr noundef %i.p)
  %i.q = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 7, ptr noundef %i.q)
  %i.r = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 8, ptr noundef %i.r)
  %i.s = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 9, ptr noundef %i.s)
  %i.t = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 10, ptr noundef %i.t)
  %i.u = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 11, ptr noundef %i.u)
  %i.v = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 26, ptr noundef %i.v)
  %i.w = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 16, ptr noundef %i.w)
  %i.x = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 17, ptr noundef %i.x)
  %i.y = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 18, ptr noundef %i.y)
  %i.z = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 19, ptr noundef %i.z)
  %i.aa = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 20, ptr noundef %i.aa)
  %i.ab = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 21, ptr noundef %i.ab)
  %i.ac = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 28, ptr noundef %i.ac)
  %i.ad = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 29, ptr noundef %i.ad)
  %i.ae = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 30, ptr noundef %i.ae)
  %i.af = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 31, ptr noundef %i.af)
  %i.ag = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 32, ptr noundef %i.ag)
  %i.ah = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 12, ptr noundef %i.ah)
  %i.ai = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 14, ptr noundef %i.ai)
  %i.aj = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 15, ptr noundef %i.aj)
  %i.ak = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 23, ptr noundef %i.ak)
  %i.al = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 24, ptr noundef %i.al)
  %i.am = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 46, ptr noundef %i.am)
  %i.an = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 48, ptr noundef %i.an)
  %i.ao = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 1, ptr noundef %i.ao)
  %i.ap = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 2, ptr noundef %i.ap)
  %i.aq = load ptr, ptr @isdn_sup_err_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.4, i32 noundef 44, ptr noundef %i.aq)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @create_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_isdn_sup() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.369, ptr noundef @.str.370, ptr noundef @.str.5) ; 2 uses
  store i32 %i.a, ptr @proto_isdn_sup, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_isdn_sup.hf, i32 noundef 171)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_isdn_sup.ett, i32 noundef 68)
  %i.b = load i32, ptr @proto_isdn_sup, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef @proto_register_isdn_sup.ei, i32 noundef 2)
  %i.d = load i32, ptr @proto_isdn_sup, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef @.str.371, ptr noundef @dissect_isdn_sup_arg, i32 noundef %i.d)
  store ptr %i.e, ptr @isdn_sup_arg_handle, align 8
  %i.f = load i32, ptr @proto_isdn_sup, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef @.str.372, ptr noundef @dissect_isdn_sup_res, i32 noundef %i.f)
  store ptr %i.g, ptr @isdn_sup_res_handle, align 8
  %i.h = load i32, ptr @proto_isdn_sup, align 4
  %i.i = tail call ptr @register_dissector(ptr noundef @.str.373, ptr noundef @dissect_isdn_sup_err, i32 noundef %i.h)
  store ptr %i.i, ptr @isdn_sup_err_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_isdn_sup_arg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %get_op.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @get_rose_ctx(ptr noundef nonnull %3) ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.648, ptr noundef @.str.649, i32 noundef 2787, ptr noundef @.str.650) #4
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8
  %.not49 = icmp eq i32 %i.d, 1
  br i1 %.not49, label %bb.e, label %get_op.exit

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %i.b, i64 84
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %get_op.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.b, i64 88
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %switch.tableidx = add i32 %i.i, -1             ; 3 uses
  %i.j = icmp ult i32 %switch.tableidx, 46
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 69887230181319, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.j, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %get_op.exit

switch.lookup:                                    ; preds = %bb.f
  %i.k = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_isdn_sup_res, i64 %i.k
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.l = load i32, ptr @proto_isdn_sup, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.n = load i32, ptr @ett_isdn_sup, align 4
  %i.o = tail call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.n) ; 2 uses
  %i.p = load i32, ptr @hf_isdn_sup_operation, align 4
  %i.q = tail call ptr @proto_tree_add_uint(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.i) ; 0 uses
  %i.r = tail call ptr @try_val_to_str(i32 noundef %i.i, ptr noundef @isdn_sup_str_operation) ; 4 uses
  %.not51 = icmp eq ptr %i.r, null
  br i1 %.not51, label %bb.i, label %bb.g

bb.g:                                             ; preds = %switch.lookup
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.m, ptr noundef @.str.651, ptr noundef nonnull %i.r)
  %i.s = getelementptr i8, ptr %i.b, i64 104
  %i.t = load ptr, ptr %i.s, align 8
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.t, ptr noundef @.str.652, ptr noundef nonnull %i.r)
  %i.u = getelementptr i8, ptr %i.b, i64 56       ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @proto_tree_get_parent(ptr noundef %2)
  %i.y = load i32, ptr %i.u, align 8
  %i.z = tail call ptr @proto_item_get_parent_nth(ptr noundef %i.x, i32 noundef %i.y)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.z, ptr noundef @.str.653, ptr noundef nonnull %i.r)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %switch.lookup
  %i.aa = getelementptr i8, ptr %switch.load, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not52 = icmp eq ptr %i.ab, null
  br i1 %.not52, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call i32 %i.ab(ptr noundef %0, ptr noundef %1, ptr noundef %i.o, ptr noundef null)
  br label %get_op.exit

end_hunk_0
