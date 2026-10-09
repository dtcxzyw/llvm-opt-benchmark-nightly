Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumber.pb?download=true
inline.NumInlined: 250
inline.NumDeleted: 137
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.google::protobuf::internal::ExplicitlyConstructed" = type { %"union.google::protobuf::internal::ExplicitlyConstructed<std::__cxx11::basic_string<char>, 8>::AlignedUnion" }
%"union.google::protobuf::internal::ExplicitlyConstructed<std::__cxx11::basic_string<char>, 8>::AlignedUnion" = type { i64, [24 x i8] }
%"class.google::protobuf::internal::InternalMetadata" = type { i64 }
%"class.google::protobuf::internal::HasBits" = type { [1 x i32] }
%"struct.google::protobuf::internal::ArenaStringPtr" = type { %"class.google::protobuf::internal::TaggedStringPtr" }
%"class.google::protobuf::internal::TaggedStringPtr" = type { ptr }
%"struct.google::protobuf::internal::EnumEntry" = type <{ %"class.google::protobuf::stringpiece_internal::StringPiece", i32, [4 x i8] }>
%"class.google::protobuf::stringpiece_internal::StringPiece" = type { ptr, i64 }
%"class.google::protobuf::internal::ExplicitlyConstructed.1" = type { %"union.google::protobuf::internal::ExplicitlyConstructed<std::__cxx11::basic_string<char>>::AlignedUnion" }
%"union.google::protobuf::internal::ExplicitlyConstructed<std::__cxx11::basic_string<char>>::AlignedUnion" = type { i64, [24 x i8] }
%"struct.std::atomic.3" = type { %"struct.std::__atomic_base.4" }
%"struct.std::__atomic_base.4" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.2 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.2 = type { i64, [8 x i8] }

$_ZN6google8protobuf11MessageLiteD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK4i18n12phonenumbers11PhoneNumber3NewEPN6google8protobuf5ArenaE = comdat any

$_ZNK4i18n12phonenumbers11PhoneNumber13GetCachedSizeEv = comdat any

$_ZN6google8protobuf11MessageLite25OnDemandRegisterArenaDtorEPNS0_5ArenaE = comdat any

$_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v = comdat any

$_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv = comdat any

$_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv = comdat any

$_ZTIN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTSN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTIN6google8protobuf8internal16InternalMetadata13ContainerBaseE = comdat any

$_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE = comdat any

@_ZTVN4i18n12phonenumbers11PhoneNumberE = dso_local constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN4i18n12phonenumbers11PhoneNumberE, ptr @_ZN4i18n12phonenumbers11PhoneNumberD2Ev, ptr @_ZN4i18n12phonenumbers11PhoneNumberD0Ev, ptr @_ZNK4i18n12phonenumbers11PhoneNumber11GetTypeNameB5cxx11Ev, ptr @_ZNK4i18n12phonenumbers11PhoneNumber3NewEPN6google8protobuf5ArenaE, ptr @_ZN4i18n12phonenumbers11PhoneNumber5ClearEv, ptr @_ZNK4i18n12phonenumbers11PhoneNumber13IsInitializedEv, ptr @_ZNK6google8protobuf11MessageLite25InitializationErrorStringB5cxx11Ev, ptr @_ZN4i18n12phonenumbers11PhoneNumber21CheckTypeAndMergeFromERKN6google8protobuf11MessageLiteE, ptr @_ZNK4i18n12phonenumbers11PhoneNumber12ByteSizeLongEv, ptr @_ZNK4i18n12phonenumbers11PhoneNumber13GetCachedSizeEv, ptr @_ZN4i18n12phonenumbers11PhoneNumber14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE, ptr @_ZN6google8protobuf11MessageLite25OnDemandRegisterArenaDtorEPNS0_5ArenaE, ptr @_ZNK4i18n12phonenumbers11PhoneNumber18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE] }, align 8
@_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E = external global %"class.google::protobuf::internal::ExplicitlyConstructed", align 8
@_ZN4i18n12phonenumbers30_PhoneNumber_default_instance_E = dso_local local_unnamed_addr global { { { ptr, %"class.google::protobuf::internal::InternalMetadata", { { %"class.google::protobuf::internal::HasBits", { { i32 } }, %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", i64, i32, i8, i32, i32 } } } } } { { { ptr, %"class.google::protobuf::internal::InternalMetadata", { { %"class.google::protobuf::internal::HasBits", { { i32 } }, %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", i64, i32, i8, i32, i32 } } } } { { ptr, %"class.google::protobuf::internal::InternalMetadata", { { %"class.google::protobuf::internal::HasBits", { { i32 } }, %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", i64, i32, i8, i32, i32 } } } { ptr getelementptr inbounds inrange(-16, 104) ({ [15 x ptr] }, ptr @_ZTVN4i18n12phonenumbers11PhoneNumberE, i32 0, i32 0, i32 2), %"class.google::protobuf::internal::InternalMetadata" zeroinitializer, { { %"class.google::protobuf::internal::HasBits", { { i32 } }, %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", i64, i32, i8, i32, i32 } } { { %"class.google::protobuf::internal::HasBits", { { i32 } }, %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr", i64, i32, i8, i32, i32 } { %"class.google::protobuf::internal::HasBits" zeroinitializer, { { i32 } } zeroinitializer, %"struct.google::protobuf::internal::ArenaStringPtr" { %"class.google::protobuf::internal::TaggedStringPtr" { ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E } }, %"struct.google::protobuf::internal::ArenaStringPtr" { %"class.google::protobuf::internal::TaggedStringPtr" { ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E } }, %"struct.google::protobuf::internal::ArenaStringPtr" { %"class.google::protobuf::internal::TaggedStringPtr" { ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E } }, i64 0, i32 0, i8 0, i32 0, i32 1 } } } } }, align 8
@_ZN4i18n12phonenumbersL37PhoneNumber_CountryCodeSource_entriesE = internal constant [5 x %"struct.google::protobuf::internal::EnumEntry"] [%"struct.google::protobuf::internal::EnumEntry" <{ %"class.google::protobuf::stringpiece_internal::StringPiece" { ptr @_ZN4i18n12phonenumbersL35PhoneNumber_CountryCodeSource_namesE, i64 20 }, i32 20, [4 x i8] zeroinitializer }>, %"struct.google::protobuf::internal::EnumEntry" <{ %"class.google::protobuf::stringpiece_internal::StringPiece" { ptr getelementptr inbounds nuw (i8, ptr @_ZN4i18n12phonenumbersL35PhoneNumber_CountryCodeSource_namesE, i64 20), i64 29 }, i32 10, [4 x i8] zeroinitializer }>, %"struct.google::protobuf::internal::EnumEntry" <{ %"class.google::protobuf::stringpiece_internal::StringPiece" { ptr getelementptr inbounds nuw (i8, ptr @_ZN4i18n12phonenumbersL35PhoneNumber_CountryCodeSource_namesE, i64 49), i64 20 }, i32 5, [4 x i8] zeroinitializer }>, %"struct.google::protobuf::internal::EnumEntry" <{ %"class.google::protobuf::stringpiece_internal::StringPiece" { ptr getelementptr inbounds nuw (i8, ptr @_ZN4i18n12phonenumbersL35PhoneNumber_CountryCodeSource_namesE, i64 69), i64 26 }, i32 1, [4 x i8] zeroinitializer }>, %"struct.google::protobuf::internal::EnumEntry" <{ %"class.google::protobuf::stringpiece_internal::StringPiece" { ptr getelementptr inbounds nuw (i8, ptr @_ZN4i18n12phonenumbersL35PhoneNumber_CountryCodeSource_namesE, i64 95), i64 11 }, i32 0, [4 x i8] zeroinitializer }>], align 16
@_ZN4i18n12phonenumbersL35PhoneNumber_CountryCodeSource_namesE = internal constant [107 x i8] c"FROM_DEFAULT_COUNTRYFROM_NUMBER_WITHOUT_PLUS_SIGNFROM_NUMBER_WITH_IDDFROM_NUMBER_WITH_PLUS_SIGNUNSPECIFIED\00", align 16
@_ZZN4i18n12phonenumbers34PhoneNumber_CountryCodeSource_NameB5cxx11ENS0_29PhoneNumber_CountryCodeSourceEE5dummy = internal global i8 0, align 1
@_ZGVZN4i18n12phonenumbers34PhoneNumber_CountryCodeSource_NameB5cxx11ENS0_29PhoneNumber_CountryCodeSourceEE5dummy = internal global i64 0, align 8
@_ZN4i18n12phonenumbersL47PhoneNumber_CountryCodeSource_entries_by_numberE = internal constant [5 x i32] [i32 4, i32 3, i32 2, i32 1, i32 0], align 16
@_ZN4i18n12phonenumbersL37PhoneNumber_CountryCodeSource_stringsB5cxx11E = internal global [5 x %"class.google::protobuf::internal::ExplicitlyConstructed.1"] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [30 x i8] c"i18n.phonenumbers.PhoneNumber\00", align 1
@_ZTIN4i18n12phonenumbers11PhoneNumberE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4i18n12phonenumbers11PhoneNumberE, ptr @_ZTIN6google8protobuf11MessageLiteE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4i18n12phonenumbers11PhoneNumberE = dso_local constant [35 x i8] c"N4i18n12phonenumbers11PhoneNumberE\00", align 1
@_ZTIN6google8protobuf11MessageLiteE = external constant ptr
@_ZN6google8protobuf8internal28init_protobuf_defaults_stateE = external local_unnamed_addr global %"struct.std::atomic.3", align 1
@_ZTVN6google8protobuf11MessageLiteE = external constant { [15 x ptr] }, align 8
@_ZTIN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN6google8protobuf8internal16InternalMetadata13ContainerBaseE }, comdat, align 8
@_ZTSN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant [110 x i8] c"N6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTIN6google8protobuf8internal16InternalMetadata13ContainerBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE = linkonce_odr dso_local constant [61 x i8] c"N6google8protobuf8internal16InternalMetadata13ContainerBaseE\00", comdat, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN4i18n12phonenumbers11PhoneNumberC1EPN6google8protobuf5ArenaEb = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN4i18n12phonenumbers11PhoneNumberC2EPN6google8protobuf5ArenaEb
@_ZN4i18n12phonenumbers11PhoneNumberC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4i18n12phonenumbers11PhoneNumberC2ERKS1_
@_ZN4i18n12phonenumbers11PhoneNumberD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4i18n12phonenumbers11PhoneNumberD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers37PhoneNumber_CountryCodeSource_IsValidEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 21
  %switch.cast = trunc i32 %0 to i21
  %switch.downshift = lshr i21 -1047517, %switch.cast
  %switch.masked = trunc i21 %switch.downshift to i1
  %.0 = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4i18n12phonenumbers34PhoneNumber_CountryCodeSource_NameB5cxx11ENS0_29PhoneNumber_CountryCodeSourceE(i32 noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4i18n12phonenumbers34PhoneNumber_CountryCodeSource_NameB5cxx11ENS0_29PhoneNumber_CountryCodeSourceEE5dummy acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4i18n12phonenumbers34PhoneNumber_CountryCodeSource_NameB5cxx11ENS0_29PhoneNumber_CountryCodeSourceEE5dummy) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 @_ZN6google8protobuf8internal21InitializeEnumStringsEPKNS1_9EnumEntryEPKimPNS1_21ExplicitlyConstructedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE(ptr noundef nonnull @_ZN4i18n12phonenumbersL37PhoneNumber_CountryCodeSource_entriesE, ptr noundef nonnull @_ZN4i18n12phonenumbersL47PhoneNumber_CountryCodeSource_entries_by_numberE, i64 noundef 5, ptr noundef nonnull @_ZN4i18n12phonenumbersL37PhoneNumber_CountryCodeSource_stringsB5cxx11E)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr @_ZZN4i18n12phonenumbers34PhoneNumber_CountryCodeSource_NameB5cxx11ENS0_29PhoneNumber_CountryCodeSourceEE5dummy, align 1, !tbaa !44
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZN4i18n12phonenumbers34PhoneNumber_CountryCodeSource_NameB5cxx11ENS0_29PhoneNumber_CountryCodeSourceEE5dummy) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4i18n12phonenumbers34PhoneNumber_CountryCodeSource_NameB5cxx11ENS0_29PhoneNumber_CountryCodeSourceEE5dummy) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = tail call noundef i32 @_ZN6google8protobuf8internal14LookUpEnumNameEPKNS1_9EnumEntryEPKimi(ptr noundef nonnull @_ZN4i18n12phonenumbersL37PhoneNumber_CountryCodeSource_entriesE, ptr noundef nonnull @_ZN4i18n12phonenumbersL47PhoneNumber_CountryCodeSource_entries_by_numberE, i64 noundef 5, i32 noundef %0) ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = load atomic i8, ptr @_ZN6google8protobuf8internal28init_protobuf_defaults_stateE acquire, align 1, !range !10, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv()
  br label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds [32 x i8], ptr @_ZN4i18n12phonenumbersL37PhoneNumber_CountryCodeSource_stringsB5cxx11E, i64 %i.k
  br label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit

_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit: ; preds = %bb.g, %bb.f, %bb.h
  %i.m = phi ptr [ %i.l, %bb.h ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, %bb.f ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, %bb.g ]
  ret ptr %i.m

bb.i:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4i18n12phonenumbers34PhoneNumber_CountryCodeSource_NameB5cxx11ENS0_29PhoneNumber_CountryCodeSourceEE5dummy) #19
  resume { ptr, i32 } %i.n
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6google8protobuf8internal21InitializeEnumStringsEPKNS1_9EnumEntryEPKimPNS1_21ExplicitlyConstructedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_ZN6google8protobuf8internal14LookUpEnumNameEPKNS1_9EnumEntryEPKimi(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers35PhoneNumber_CountryCodeSource_ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_29PhoneNumber_CountryCodeSourceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  %i.e = call noundef zeroext i1 @_ZN6google8protobuf8internal15LookUpEnumValueEPKNS1_9EnumEntryEmNS0_20stringpiece_internal11StringPieceEPi(ptr noundef nonnull @_ZN4i18n12phonenumbersL37PhoneNumber_CountryCodeSource_entriesE, i64 noundef 5, ptr %i.b, i64 %i.d, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !20
  store i32 %i.f, ptr %1, align 4, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %i.e
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal15LookUpEnumValueEPKNS1_9EnumEntryEmNS0_20stringpiece_internal11StringPieceEPi(ptr noundef, i64 noundef, ptr, i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumberC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 61), (64, 72)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4i18n12phonenumbers11PhoneNumberE, i64 16), ptr %0, align 8, !tbaa !24
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.h, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 45, i1 false)
  store i32 1, ptr %i.i, align 4, !tbaa !33
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.e, align 8, !tbaa !34
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.f, align 8, !tbaa !34
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.g, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = and i64 %i.b, 2
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN6google8protobuf8internal16InternalMetadataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -2                     ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6google8protobuf8internal16InternalMetadataD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %i.d to ptr                 ; 2 uses
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(40) %i.f) #19
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef 40) #20
  br label %_ZN6google8protobuf8internal16InternalMetadataD2Ev.exit

_ZN6google8protobuf8internal16InternalMetadataD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumberC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 61), (64, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.a, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4i18n12phonenumbers11PhoneNumberE, i64 16), ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  store i32 %i.d, ptr %i.b, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.j, align 4, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.e, i8 0, i64 41, i1 false)
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %.noexc17, label %bb.a

.noexc17:                                         ; preds = %.noexc
  %i.n = and i64 %i.l, -4
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc, %.noexc17
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.f, align 8, !tbaa !34
  %i.q = load i32, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, -4
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.y = trunc i64 %i.x to i1
  %i.z = and i64 %i.x, -4
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  br i1 %i.y, label %bb.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.aa, %bb.b ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %.noexc17, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  resume { ptr, i32 } %i.ac

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.a
  %i.ad = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.q, %bb.a ] ; 2 uses
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.g, align 8, !tbaa !34
  %i.ae = and i32 %i.ad, 2
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, -4
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.al = trunc i64 %i.ak to i1
  %i.am = and i64 %i.ak, -4
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  br i1 %i.al, label %bb.g, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21, !prof !37

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21: ; preds = %bb.g, %bb.f
  %.0.i.i20 = phi ptr [ %i.ao, %bb.g ], [ %i.an, %bb.f ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef %.0.i.i20)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21
  %.pre25 = load i32, ptr %i.c, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge, %bb.e
  %i.ap = phi i32 [ %.pre25, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge ], [ %i.ad, %bb.e ]
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.h, align 8, !tbaa !34
  %i.aq = and i32 %i.ap, 4
  %.not24 = icmp eq i32 %i.aq, 0
  br i1 %.not24, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = and i64 %i.at, -4
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ax = trunc i64 %i.aw to i1
  %i.ay = and i64 %i.aw, -4
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  br i1 %i.ax, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23, !prof !37

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23: ; preds = %bb.j, %bb.i
  %.0.i.i22 = phi ptr [ %i.ba, %bb.j ], [ %i.az, %bb.i ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef %.0.i.i22)
          to label %bb.k unwind label %bb.d

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumberD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata17DeleteReturnArenaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, -4
  %i.f = inttoptr i64 %i.e to ptr
  br label %_ZN6google8protobuf8internal16InternalMetadata17DeleteReturnArenaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv.exit

_ZN6google8protobuf8internal16InternalMetadata17DeleteReturnArenaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv.exit: ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.d, label %_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata17DeleteReturnArenaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2 unwind label %bb.g

.noexc2:                                          ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %.noexc2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit unwind label %bb.g

_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit: ; preds = %.noexc3, %_ZN6google8protobuf8internal16InternalMetadata17DeleteReturnArenaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !24
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit
  %i.l = add nsw i64 %i.j, -2                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = inttoptr i64 %i.l to ptr                 ; 2 uses
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(40) %i.n) #19
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef 40) #20
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %.noexc3, %.noexc2, %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #21
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumberD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4i18n12phonenumbers11PhoneNumberD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4i18n12phonenumbers11PhoneNumber13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumber5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %i.c = and i32 %i.b, 7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -4
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !19
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !18
  store i8 0, ptr %i.k, align 1, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i32 %i.b, 2
  %.not6 = icmp eq i32 %i.l, 0
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !18
  store i8 0, ptr %i.s, align 1, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = and i32 %i.b, 4
  %.not7 = icmp eq i32 %i.t, 0
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, -4
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !19
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !18
  store i8 0, ptr %i.aa, align 1, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %i.ab = and i32 %i.b, 248
  %.not8 = icmp eq i32 %i.ab, 0
  br i1 %.not8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.ad, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.k, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4i18n12phonenumbers11PhoneNumber14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit: ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader
  %.sroa.0.0 = phi i32 [ 0, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader ], [ %.sroa.0.0.be, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge ] ; 19 uses
  %.088 = phi ptr [ %1, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader ], [ %.088.be, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge ] ; 4 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !53
  %i.o = load ptr, ptr %2, align 8, !tbaa !54
  %i.p = icmp ult ptr %.088, %i.o
  br i1 %i.p, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91, label %bb.a, !prof !12

bb.a:                                             ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.r = ptrtoint ptr %.088 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !56
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %bb.b, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %i.u, 0
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null
  %or.cond.i.i = select i1 %i.x, i1 %i.aa, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.088
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.a
  %i.ab = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackEii(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %i.u, i32 noundef %i.n) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.ab, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.ab, 1
  %i.ac = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.ac, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91: ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.394 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.088, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit ] ; 4 uses
  %i.ad = load i8, ptr %.394, align 1, !tbaa !35  ; 2 uses
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = icmp sgt i8 %i.ad, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %.394, i64 1 ; 2 uses
  br i1 %i.af, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35  ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 7
  %i.ak = add nsw i32 %i.ae, -128
  %i.al = or disjoint i32 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp sgt i8 %i.ah, -1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.394, i64 2
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.e:                                             ; preds = %bb.c
  %i.ao = tail call { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef nonnull %.394, i32 noundef %i.al) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ao, 1
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91, %bb.d, %bb.e
  %.0 = phi i32 [ %.fca.1.extract.i, %bb.e ], [ %i.al, %bb.d ], [ %i.ae, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91 ] ; 13 uses
  %.1.i = phi ptr [ %.fca.0.extract.i, %bb.e ], [ %i.an, %bb.d ], [ %i.ag, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91 ] ; 26 uses
  %i.ap = lshr i32 %.0, 3
  switch i32 %i.ap, label %bb.ao [
    i32 1, label %bb.f
    i32 2, label %bb.j
    i32 3, label %bb.o
    i32 4, label %bb.r
    i32 5, label %bb.w
    i32 6, label %bb.z
    i32 7, label %bb.ah
    i32 8, label %bb.ak
  ]

bb.f:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.aq = and i32 %.0, 255
  %i.ar = icmp eq i32 %i.aq, 8
  br i1 %i.ar, label %bb.g, label %bb.ao, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.as = or i32 %.sroa.0.0, 16                   ; 3 uses
  %i.at = load i8, ptr %.1.i, align 1, !tbaa !35  ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %.not.i.i = icmp sgt i8 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread, label %bb.h
end_hunk_0
begin_hunk_1_@_ZNK4i18n12phonenumbers11PhoneNumber18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE:bb.a
  br label %.preheader.i64

.preheader.i64:                                   ; preds = %.preheader.i64.preheader, %.preheader.i64
  %store_forwarded115 = phi i8 [ %load_initial114, %.preheader.i64.preheader ], [ %i.dh, %.preheader.i64 ]
  %.018.i.i.i65 = phi i64 [ %i.cz, %.preheader.i64.preheader ], [ %i.dg, %.preheader.i64 ] ; 2 uses
  %.0.i.i.i66 = phi ptr [ %i.dd, %.preheader.i64.preheader ], [ %i.di, %.preheader.i64 ] ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.0.i.i.i66, i64 -1
  %i.df = or i8 %store_forwarded115, -128
  store i8 %i.df, ptr %i.de, align 1, !tbaa !35
  %i.dg = lshr i64 %.018.i.i.i65, 7               ; 2 uses
  %i.dh = trunc i64 %i.dg to i8                   ; 2 uses
  store i8 %i.dh, ptr %.0.i.i.i66, align 1, !tbaa !35
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i66, i64 1 ; 2 uses
  %i.dj = icmp samesign ugt i64 %.018.i.i.i65, 16383
  br i1 %i.dj, label %.preheader.i64, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68, !llvm.loop !59

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68: ; preds = %.preheader.i64, %bb.t, %bb.s, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit59
  %.5 = phi ptr [ %.4, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit59 ], [ %i.cw, %bb.s ], [ %i.dd, %bb.t ], [ %i.di, %.preheader.i64 ] ; 6 uses
  %i.dk = and i32 %i.b, 4
  %.not37 = icmp eq i32 %i.dk, 0
  br i1 %.not37, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74, label %bb.u

bb.u:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !36
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = and i64 %i.dn, -4
  %i.dp = inttoptr i64 %i.do to ptr               ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !19 ; 5 uses
  %i.ds = icmp sgt i64 %i.dr, 127
  br i1 %i.ds, label %.critedge.i73, label %bb.v, !prof !37

bb.v:                                             ; preds = %bb.u
  %i.dt = load ptr, ptr %2, align 8, !tbaa !62
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %.5 to i64
  %reass.sub92 = sub i64 %i.du, %i.dv
  %i.dw = add i64 %reass.sub92, 14
  %i.dx = icmp slt i64 %i.dw, %i.dr
  br i1 %i.dx, label %.critedge.i73, label %.thread.i70, !prof !37

.thread.i70:                                      ; preds = %bb.v
  store i8 58, ptr %.5, align 1, !tbaa !35
  %i.dy = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.dz = trunc i64 %i.dr to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 2 uses
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !35
  %i.eb = load ptr, ptr %i.dp, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr align 1 %i.eb, i64 %i.dr, i1 false)
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 %i.dr
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74

.critedge.i73:                                    ; preds = %bb.v, %bb.u
  %i.ed = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef %.5)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74: ; preds = %.thread.i70, %.critedge.i73, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68
  %.6 = phi ptr [ %.5, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68 ], [ %i.ed, %.critedge.i73 ], [ %i.ec, %.thread.i70 ] ; 4 uses
  %i.ee = and i32 %i.b, 128
  %.not38 = icmp eq i32 %i.ee, 0
  br i1 %.not38, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83, label %bb.w

bb.w:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74
  %i.ef = load ptr, ptr %2, align 8, !tbaa !62
  %.not.i75 = icmp ult ptr %.6, %i.ef
  br i1 %.not.i75, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit77, label %bb.x, !prof !12

bb.x:                                             ; preds = %bb.w
  %i.eg = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.6)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit77

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit77: ; preds = %bb.w, %bb.x
  %.0.i76 = phi ptr [ %i.eg, %bb.x ], [ %.6, %bb.w ] ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !35 ; 4 uses
  store i8 64, ptr %.0.i76, align 1, !tbaa !35
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i76, i64 1 ; 2 uses
  %i.ek = trunc i32 %i.ei to i8                   ; 2 uses
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !35
  %i.el = icmp ult i32 %i.ei, 128
  br i1 %i.el, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit77
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i76, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83

bb.z:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit77
  %i.en = sext i32 %i.ei to i64
  %i.eo = or i8 %i.ek, -128
  store i8 %i.eo, ptr %i.ej, align 1, !tbaa !35
  %i.ep = lshr i64 %i.en, 7                       ; 2 uses
  %i.eq = trunc i64 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i76, i64 2
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !35
  %i.es = icmp ult i32 %i.ei, 16384
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i76, i64 3 ; 2 uses
  br i1 %i.es, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83, label %.preheader.i79.preheader

.preheader.i79.preheader:                         ; preds = %bb.z
  %scevgep = getelementptr i8, ptr %.0.i76, i64 2
  %load_initial = load i8, ptr %scevgep, align 1
  br label %.preheader.i79

.preheader.i79:                                   ; preds = %.preheader.i79.preheader, %.preheader.i79
  %store_forwarded = phi i8 [ %load_initial, %.preheader.i79.preheader ], [ %i.ex, %.preheader.i79 ]
  %.018.i.i.i80 = phi i64 [ %i.ep, %.preheader.i79.preheader ], [ %i.ew, %.preheader.i79 ] ; 2 uses
  %.0.i.i.i81 = phi ptr [ %i.et, %.preheader.i79.preheader ], [ %i.ey, %.preheader.i79 ] ; 3 uses
  %i.eu = getelementptr inbounds i8, ptr %.0.i.i.i81, i64 -1
  %i.ev = or i8 %store_forwarded, -128
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !35
  %i.ew = lshr i64 %.018.i.i.i80, 7               ; 2 uses
  %i.ex = trunc i64 %i.ew to i8                   ; 2 uses
  store i8 %i.ex, ptr %.0.i.i.i81, align 1, !tbaa !35
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i.i.i81, i64 1 ; 2 uses
  %i.ez = icmp samesign ugt i64 %.018.i.i.i80, 16383
  br i1 %i.ez, label %.preheader.i79, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83, !llvm.loop !59

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83: ; preds = %.preheader.i79, %bb.z, %bb.y, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74
  %.7 = phi ptr [ %.6, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74 ], [ %i.em, %bb.y ], [ %i.et, %bb.z ], [ %i.ey, %.preheader.i79 ] ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !22 ; 2 uses
  %i.fc = trunc i64 %i.fb to i1
  br i1 %i.fc, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit, !prof !37

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83
  %i.fd = and i64 %i.fb, -4
  %i.fe = inttoptr i64 %i.fd to ptr               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19 ; 2 uses
  %.pre96 = load ptr, ptr %2, align 8, !tbaa !62
  %i.fh = ptrtoint ptr %.pre96 to i64
  %i.fi = ptrtoint ptr %.7 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %sext = shl i64 %.pre, 32
  %i.fk = ashr exact i64 %sext, 32                ; 3 uses
  %i.fl = icmp slt i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.aa, label %bb.ab, !prof !37

bb.aa:                                            ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.fm = trunc i64 %.pre to i32
  %i.fn = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %i.fg, i32 noundef %i.fm, ptr noundef %.7)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

bb.ab:                                            ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.7, ptr align 1 %i.fg, i64 %i.fk, i1 false)
  %i.fo = getelementptr inbounds i8, ptr %.7, i64 %i.fk
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit: ; preds = %bb.ab, %bb.aa, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83
  %.8 = phi ptr [ %.7, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83 ], [ %i.fn, %bb.aa ], [ %i.fo, %bb.ab ]
  ret ptr %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i64 0, 23) i64 @_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = or i64 %i.e, 1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = xor i64 %i.g, 63
  %i.i = mul nuw nsw i64 %i.h, 9
  %i.j = add nuw nsw i64 %i.i, 137
  %i.k = lshr i64 %i.j, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.l = and i32 %i.b, 16
  %.not3 = icmp eq i32 %i.l, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35
  %i.o = or i32 %i.n, 1
  %i.p = sext i32 %i.o to i64
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = mul nuw nsw i64 %i.r, 9
  %i.t = add nuw nsw i64 %i.s, 137
  %i.u = lshr i64 %i.t, 6
  %i.v = add nuw nsw i64 %i.u, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.v, %bb.d ], [ %.0, %bb.c ]
  ret i64 %.1
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK4i18n12phonenumbers11PhoneNumber12ByteSizeLongEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 11 uses
  %i.c = and i32 %i.b, 24
  %i.d = icmp eq i32 %i.c, 24
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = or i64 %i.f, 1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = xor i64 %i.h, 63
  %i.j = mul nuw nsw i64 %i.i, 9
  %i.k = add nuw nsw i64 %i.j, 137
  %i.l = lshr i64 %i.k, 6
  br label %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.m = and i32 %i.b, 8
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35
  %i.p = or i64 %i.o, 1
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = mul nuw nsw i64 %i.r, 9
  %i.t = add nuw nsw i64 %i.s, 137
  %i.u = lshr i64 %i.t, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i28 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.v = and i32 %i.b, 16
  %.not3.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i, label %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit, label %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit.sink.split

_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit.sink.split: ; preds = %bb.e, %bb.b
  %.0.i28.sink = phi i64 [ %i.l, %bb.b ], [ %.0.i28, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = or i32 %i.x, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = xor i64 %i.aa, 63
  %i.ac = mul nuw nsw i64 %i.ab, 9
  %i.ad = add nuw nsw i64 %i.ac, 137
  %i.ae = lshr i64 %i.ad, 6
  %i.af = add nuw nsw i64 %i.ae, %.0.i28.sink
  br label %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit

_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit: ; preds = %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit.sink.split, %bb.e
  %.0 = phi i64 [ %.0.i28, %bb.e ], [ %i.af, %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit.sink.split ] ; 3 uses
  %i.ag = and i32 %i.b, 7
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit
  %i.ah = and i32 %i.b, 1
  %.not21 = icmp eq i32 %i.ah, 0
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, -4
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = or i32 %i.ap, 1
  %i.ar = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aq, i1 true)
  %i.as = xor i32 %i.ar, 31
  %i.at = mul nuw nsw i32 %i.as, 9
  %i.au = add nuw nsw i32 %i.at, 73
  %i.av = lshr i32 %i.au, 6
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add nuw nsw i64 %.0, 1
  %i.ay = add i64 %i.ax, %i.ao
  %i.az = add i64 %i.ay, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i64 [ %i.az, %bb.g ], [ %.0, %bb.f ]  ; 2 uses
  %i.ba = and i32 %i.b, 2
  %.not22 = icmp eq i32 %i.ba, 0
  br i1 %.not22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !36
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = and i64 %i.bd, -4
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = or i32 %i.bi, 1
  %i.bk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bj, i1 true)
  %i.bl = xor i32 %i.bk, 31
  %i.bm = mul nuw nsw i32 %i.bl, 9
  %i.bn = add nuw nsw i32 %i.bm, 73
  %i.bo = lshr i32 %i.bn, 6
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = add i64 %.1, 1
  %i.br = add i64 %i.bq, %i.bh
  %i.bs = add i64 %i.br, %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i64 [ %i.bs, %bb.i ], [ %.1, %bb.h ]  ; 2 uses
  %i.bt = and i32 %i.b, 4
  %.not23 = icmp eq i32 %i.bt, 0
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = and i64 %i.bw, -4
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !19 ; 2 uses
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = or i32 %i.cb, 1
  %i.cd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cc, i1 true)
  %i.ce = xor i32 %i.cd, 31
  %i.cf = mul nuw nsw i32 %i.ce, 9
  %i.cg = add nuw nsw i32 %i.cf, 73
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = add i64 %.2, 1
  %i.ck = add i64 %i.cj, %i.ca
  %i.cl = add i64 %i.ck, %i.ci
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit
  %.3 = phi i64 [ %i.cl, %bb.k ], [ %.2, %bb.j ], [ %.0, %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit ] ; 2 uses
  %i.cm = and i32 %i.b, 224
  %.not24 = icmp eq i32 %i.cm, 0
  br i1 %.not24, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = lshr i32 %i.b, 4
  %i.co = and i32 %i.cn, 2
  %i.cp = zext nneg i32 %i.co to i64
  %spec.select = add i64 %.3, %i.cp               ; 2 uses
  %i.cq = and i32 %i.b, 64
  %.not26 = icmp eq i32 %i.cq, 0
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !35
  %i.ct = or i32 %i.cs, 1
  %i.cu = sext i32 %i.ct to i64
  %i.cv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true)
  %i.cw = xor i64 %i.cv, 63
  %i.cx = mul nuw nsw i64 %i.cw, 9
  %i.cy = add nuw nsw i64 %i.cx, 73
  %i.cz = lshr i64 %i.cy, 6
  %i.da = add i64 %spec.select, 1
  %i.db = add i64 %i.da, %i.cz
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5 = phi i64 [ %i.db, %bb.n ], [ %spec.select, %bb.m ] ; 2 uses
  %i.dc = and i32 %i.b, 128
  %.not27 = icmp eq i32 %i.dc, 0
  br i1 %.not27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !35
  %i.df = or i32 %i.de, 1
  %i.dg = sext i32 %i.df to i64
  %i.dh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true)
  %i.di = xor i64 %i.dh, 63
  %i.dj = mul nuw nsw i64 %i.di, 9
  %i.dk = add nuw nsw i64 %i.dj, 137
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = add i64 %i.dl, %.5
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.l
  %.6 = phi i64 [ %i.dm, %bb.p ], [ %.5, %bb.o ], [ %.3, %bb.l ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !22 ; 2 uses
  %i.dp = trunc i64 %i.do to i1
  br i1 %i.dp, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %bb.r, !prof !37

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.q
  %i.dq = and i64 %i.do, -4
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
end_hunk_1
begin_hunk_2_@_ZN4i18n12phonenumbers11PhoneNumber9MergeFromERKS1_:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit41

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit41: ; preds = %bb.i, %bb.j
  %.0.i.i40 = phi ptr [ %i.ay, %bb.j ], [ %i.ax, %bb.i ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef %.0.i.i40)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit41, %bb.h
  %i.az = and i32 %i.b, 8
  %.not33 = icmp eq i32 %i.az, 0
  br i1 %.not33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bd = and i32 %i.b, 16
  %.not34 = icmp eq i32 %i.bd, 0
  br i1 %.not34, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bh = and i32 %i.b, 32
  %.not35 = icmp eq i32 %i.bh, 0
  br i1 %.not35, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !35, !range !10, !noundef !11
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.bj, ptr %i.bk, align 4, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bl = and i32 %i.b, 64
  %.not36 = icmp eq i32 %i.bl, 0
  br i1 %.not36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = and i32 %i.b, 128
  %.not37 = icmp eq i32 %i.bp, 0
  br i1 %.not37, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !20
  %i.bv = or i32 %i.bu, %i.b
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !22 ; 2 uses
  %i.by = trunc i64 %i.bx to i1
  br i1 %i.by, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = and i64 %i.bx, -4
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.cc)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.v, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumber8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 5 uses
  %i.d = and i32 %i.c, 7
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1
  %.not5.i = icmp eq i32 %i.e, 0
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !19
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !18
  store i8 0, ptr %i.l, align 1, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = and i32 %i.c, 2
  %.not6.i = icmp eq i32 %i.m, 0
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, -4
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !19
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !18
  store i8 0, ptr %i.t, align 1, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = and i32 %i.c, 4
  %.not7.i = icmp eq i32 %i.u, 0
  br i1 %.not7.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, -4
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !19
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !18
  store i8 0, ptr %i.ab, align 1, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  %i.ac = and i32 %i.c, 248
  %.not8.i = icmp eq i32 %i.ac, 0
  br i1 %.not8.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ad, i8 0, i64 20, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.ae, align 4, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 0, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %bb.l, label %_ZN4i18n12phonenumbers11PhoneNumber5ClearEv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  br label %_ZN4i18n12phonenumbers11PhoneNumber5ClearEv.exit

_ZN4i18n12phonenumbers11PhoneNumber5ClearEv.exit: ; preds = %bb.k, %bb.l
  tail call void @_ZN4i18n12phonenumbers11PhoneNumber9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4i18n12phonenumbers11PhoneNumber5ClearEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4i18n12phonenumbers11PhoneNumber13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = and i32 %i.b, 24
  %.not = icmp eq i32 %i.c, 24
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumber12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #14 align 2 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !41
  store i64 %i.b, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !20
  %i.h = load i32, ptr %i.f, align 8, !tbaa !20
  store i32 %i.h, ptr %i.e, align 8, !tbaa !20
  store i32 %i.g, ptr %i.f, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.k = load i64, ptr %i.i, align 8, !tbaa !34
  store i64 %i.k, ptr %i.j, align 8, !tbaa !34
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i17 = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.n = load i64, ptr %i.l, align 8, !tbaa !34
  store i64 %i.n, ptr %i.m, align 8, !tbaa !34
  store ptr %.sroa.0.0.copyload.i17, ptr %i.l, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i18 = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.q = load i64, ptr %i.o, align 8, !tbaa !34
  store i64 %i.q, ptr %i.p, align 8, !tbaa !34
  store ptr %.sroa.0.0.copyload.i18, ptr %i.o, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.r, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.t, align 8
  %i.v = load i32, ptr %i.u, align 8
  store i32 %i.v, ptr %i.t, align 8
  store i32 %.0.copyload.i.i.i, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !20
  %i.z = load i32, ptr %i.x, align 4, !tbaa !20
  store i32 %i.z, ptr %i.w, align 4, !tbaa !20
  store i32 %i.y, ptr %i.x, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers11PhoneNumber11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 29, ptr %i.a, align 8, !tbaa !41
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !18
  %i.d = load i64, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.c, ptr noundef nonnull align 1 dereferenceable(29) @.str.2, i64 29, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN4i18n12phonenumbers11PhoneNumberEJEEEPT_PS1_DpOT0_(ptr noundef %0) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN6google8protobuf5Arena14InternalHelperIN4i18n12phonenumbers11PhoneNumberEE3NewEv.exit, label %bb.b

_ZN6google8protobuf5Arena14InternalHelperIN4i18n12phonenumbers11PhoneNumberEE3NewEv.exit: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !22
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN4i18n12phonenumbers11PhoneNumberEEEPT_PS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 72, ptr noundef nonnull @_ZTIN4i18n12phonenumbers11PhoneNumberE) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = ptrtoint ptr %0 to i64
  store i64 %i.f, ptr %i.e, align 8, !tbaa !22
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN4i18n12phonenumbers11PhoneNumberEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateMessageInternalIN4i18n12phonenumbers11PhoneNumberEEEPT_PS1_.exit: ; preds = %_ZN6google8protobuf5Arena14InternalHelperIN4i18n12phonenumbers11PhoneNumberEE3NewEv.exit, %bb.b
  %.sink11 = phi ptr [ %i.b, %_ZN6google8protobuf5Arena14InternalHelperIN4i18n12phonenumbers11PhoneNumberEE3NewEv.exit ], [ %i.d, %bb.b ] ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4i18n12phonenumbers11PhoneNumberE, i64 16), ptr %.sink11, align 8, !tbaa !24
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %.sink11, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sink11, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %.sink11, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.sink11, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %.sink11, i64 64
  store i32 0, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %.sink11, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i.i, i8 0, i64 45, i1 false)
  store i32 1, ptr %i.k, align 4, !tbaa !33
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.g, align 8, !tbaa !34
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.h, align 8, !tbaa !34
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.i, align 8, !tbaa !34
  ret ptr %.sink11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4i18n12phonenumbers11PhoneNumber3NewEPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN4i18n12phonenumbers11PhoneNumberEJEEEPT_PS1_DpOT0_(ptr noundef %1), !inline_history !64
  ret ptr %i.a
}

declare void @_ZNK6google8protobuf11MessageLite25InitializationErrorStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4i18n12phonenumbers11PhoneNumber13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf11MessageLite25OnDemandRegisterArenaDtorEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33)) unnamed_addr #16

declare void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZN6google8protobuf8internal17VarintParseSlow32EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  br i1 %i.b, label %bb.b, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.g = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !42
  store i8 0, ptr %i.i, align 8, !tbaa !35
  br label %_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_St17integral_constantIbLb0EEDpOT0_.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.j = tail call { ptr, ptr } @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %.0.i, i64 noundef 40, ptr noundef nonnull @_ZTIN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 5 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv, ptr %i.m, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i8 0, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !42
  store i8 0, ptr %i.o, align 8, !tbaa !35
  %.pre = load i64, ptr %0, align 8, !tbaa !22
  br label %_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_St17integral_constantIbLb0EEDpOT0_.exit

_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_St17integral_constantIbLb0EEDpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %i.a, %bb.c ], [ %.pre, %bb.d ]
  %.0.i6 = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ] ; 3 uses
  %i.q = and i64 %i.p, 2
  %i.r = ptrtoint ptr %.0.i6 to i64
  %i.s = or i64 %i.q, %i.r
  %i.t = or i64 %i.s, 1
  store i64 %i.t, ptr %0, align 8, !tbaa !22
  store ptr %.0.i, ptr %.0.i6, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  ret ptr %i.u
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv(ptr noundef %0) #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !35
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare { ptr, ptr } @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22     ; 4 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  br i1 %i.b, label %bb.b, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.f = and i64 %i.a, 2
  %i.g = ptrtoint ptr %.0.i to i64
  %i.h = or i64 %i.f, %i.g
  br label %bb.f

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.i = and i64 %i.a, -4                         ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.n, align 8, !tbaa !35
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 40) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %bb.c
  %storemerge = phi i64 [ %i.h, %bb.c ], [ 0, %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ], [ 0, %bb.d ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !22
  ret ptr %.0.i
}

declare void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !5, i64 16}
!18 = !{!17, !14, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{!6, !6, i64 0}
!21 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !16, i64 0}
!22 = !{!21, !16, i64 0}
!23 = !{!"vtable pointer", !4, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"_ZTSN6google8protobuf8internal7HasBitsILm1EEE", !5, i64 0}
!26 = !{!"_ZTSSt13__atomic_baseIiE", !6, i64 0}
!27 = !{!"_ZTSSt6atomicIiE", !26, i64 0}
!28 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !27, i64 0}
!29 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !13, i64 0}
!30 = !{!"_ZTSN6google8protobuf8internal14ArenaStringPtrE", !29, i64 0}
!31 = !{!"_ZTSN4i18n12phonenumbers11PhoneNumber5Impl_E", !25, i64 0, !28, i64 4, !30, i64 8, !30, i64 16, !30, i64 24, !16, i64 32, !6, i64 40, !9, i64 44, !6, i64 48, !6, i64 52}
!32 = !{!31, !6, i64 48}
!33 = !{!31, !6, i64 52}
!34 = !{!13, !13, i64 0}
!35 = !{!5, !5, i64 0}
!36 = !{!29, !13, i64 0}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !13, i64 0}
!39 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !38, i64 0}
!40 = !{!39, !38, i64 0}
!41 = !{!16, !16, i64 0}
!42 = !{!15, !14, i64 0}
!43 = !{!"branch_weights", i32 1, i32 1048575}
!44 = !{!9, !9, i64 0}
!45 = !{!"_ZTSN4i18n12phonenumbers29PhoneNumber_CountryCodeSourceE", !5, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !13, i64 0}
!48 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !14, i64 0, !14, i64 8, !14, i64 16, !6, i64 24, !6, i64 28, !47, i64 32, !5, i64 40, !16, i64 72, !6, i64 80, !6, i64 84}
!49 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !13, i64 0}
!50 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !13, i64 0}
!51 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !49, i64 0, !50, i64 8, !38, i64 16}
!52 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !48, i64 0, !6, i64 88, !6, i64 92, !51, i64 96}
!53 = !{!52, !6, i64 92}
!54 = !{!48, !14, i64 0}
!55 = !{!48, !14, i64 8}
!56 = !{!48, !6, i64 28}
!57 = !{!"branch_weights", !"expected", i32 7631680, i32 2139851968}
!58 = !{!48, !6, i64 80}
!59 = distinct !{!59, !63}
!60 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !13, i64 0}
!61 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !14, i64 0, !14, i64 8, !5, i64 16, !60, i64 48, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59}
!62 = !{!61, !14, i64 0}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{null}
!65 = !{!"_ZTSN6google8protobuf8internal11SerialArena11CleanupNodeE", !13, i64 0, !13, i64 8}
!66 = !{!65, !13, i64 0}
!67 = !{!65, !13, i64 8}
end_hunk_2
