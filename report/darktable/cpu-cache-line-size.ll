begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<long>::_Storage", i8 }>
%"union.std::_Optional_payload_base<long>::_Storage" = type { i64 }
%"struct.std::nullopt_t" = type { i8 }
%"struct.std::_Optional_payload_base" = type <{ %"union.std::_Optional_payload_base<long>::_Storage", i8, [7 x i8] }>
%"struct.std::in_place_t" = type { i8 }

$_ZNSt8optionalIlEC2Ev = comdat any

$_ZNKSt8optionalIlEcvbEv = comdat any

$_ZNRSt8optionalIlEdeEv = comdat any

$_ZNSt14_Optional_baseIlLb1ELb1EEC2Ev = comdat any

$_ZNSt17_Optional_payloadIlLb1ELb1ELb1EEC2Ev = comdat any

$_ZNSt22_Optional_payload_baseIlEC2Ev = comdat any

$_ZNSt22_Optional_payload_baseIlE8_StorageIlLb1EEC2Ev = comdat any

$_ZNKSt19_Optional_base_implIlSt14_Optional_baseIlLb1ELb1EEE13_M_is_engagedEv = comdat any

$_ZNSt8optionalIlEC2ESt9nullopt_t = comdat any

$_ZNSt8optionalIlEC2IlTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_IS4_ISt10in_place_tSB_EESt16is_constructibleIlJS7_EESt14is_convertibleIS7_lEEEbE4typeELb1EEEOS7_ = comdat any

$_ZNSt14_Optional_baseIlLb1ELb1EEC2IJlETnNSt9enable_ifIX18is_constructible_vIlDpT_EEbE4typeELb0EEESt10in_place_tDpOS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt17_Optional_payloadIlLb1ELb1ELb1EECI2St22_Optional_payload_baseIlEIJlEEESt10in_place_tDpOT_ = comdat any

$_ZNSt22_Optional_payload_baseIlEC2IJlEEESt10in_place_tDpOT_ = comdat any

$_ZNSt22_Optional_payload_baseIlE8_StorageIlLb1EEC2IJlEEESt10in_place_tDpOT_ = comdat any

$_ZNSt8optionalIlEC2ImTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_IS4_ISt10in_place_tSB_EESt16is_constructibleIlJS7_EESt14is_convertibleIS7_lEEEbE4typeELb1EEEOS7_ = comdat any

$_ZNSt14_Optional_baseIlLb1ELb1EEC2IJmETnNSt9enable_ifIX18is_constructible_vIlDpT_EEbE4typeELb0EEESt10in_place_tDpOS3_ = comdat any

$_ZNSt17_Optional_payloadIlLb1ELb1ELb1EECI2St22_Optional_payload_baseIlEIJmEEESt10in_place_tDpOT_ = comdat any

$_ZNSt22_Optional_payload_baseIlEC2IJmEEESt10in_place_tDpOT_ = comdat any

$_ZNSt22_Optional_payload_baseIlE8_StorageIlLb1EEC2IJmEEESt10in_place_tDpOT_ = comdat any

$_ZNSt19_Optional_base_implIlSt14_Optional_baseIlLb1ELb1EEE6_M_getEv = comdat any

$_ZNSt22_Optional_payload_baseIlE6_M_getEv = comdat any

@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [66 x i8] c"Do not know how to query CPU L1d cache line size for this system!\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %0 = alloca %"class.std::optional", align 8     ; 11 uses
  %1 = alloca %"class.std::optional", align 8     ; 2 uses
  %2 = alloca %"class.std::optional", align 8     ; 2 uses
  %3 = alloca %"class.std::optional", align 8     ; 2 uses
  %4 = alloca %"class.std::optional", align 8     ; 2 uses
  store i32 0, ptr %i.a, align 4
  call void @_ZNSt8optionalIlEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  %i.b = call noundef zeroext i1 @_ZNKSt8optionalIlEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %5 = call fastcc { i64, i8 } @_ZL30get_cachelinesize_from_sysconfv() ; 2 uses
  %6 = getelementptr inbounds nuw %"class.std::optional", ptr %1, i32 0, i32 0
  %7 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %6, i32 0, i32 0 ; 2 uses
  %i.c = getelementptr inbounds nuw { i64, i8 }, ptr %7, i32 0, i32 0
  %i.d = extractvalue { i64, i8 } %5, 0
  store i64 %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw { i64, i8 }, ptr %7, i32 0, i32 1
  %i.f = extractvalue { i64, i8 } %5, 1
  store i8 %i.f, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call noundef zeroext i1 @_ZNKSt8optionalIlEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %8 = call fastcc { i64, i8 } @_ZL32get_cachelinesize_from_getauxvalv() ; 2 uses
  %9 = getelementptr inbounds nuw %"class.std::optional", ptr %2, i32 0, i32 0
  %10 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %9, i32 0, i32 0 ; 2 uses
  %i.h = getelementptr inbounds nuw { i64, i8 }, ptr %10, i32 0, i32 0
  %i.i = extractvalue { i64, i8 } %8, 0
  store i64 %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw { i64, i8 }, ptr %10, i32 0, i32 1
  %i.k = extractvalue { i64, i8 } %8, 1
  store i8 %i.k, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %2, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call noundef zeroext i1 @_ZNKSt8optionalIlEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %11 = call fastcc { i64, i8 } @_ZL35get_cachelinesize_from_sysctlbynamev() ; 2 uses
  %12 = getelementptr inbounds nuw %"class.std::optional", ptr %3, i32 0, i32 0
  %13 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %12, i32 0, i32 0 ; 2 uses
  %i.m = getelementptr inbounds nuw { i64, i8 }, ptr %13, i32 0, i32 0
  %i.n = extractvalue { i64, i8 } %11, 0
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw { i64, i8 }, ptr %13, i32 0, i32 1
  %i.p = extractvalue { i64, i8 } %11, 1
  store i8 %i.p, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %3, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = call noundef zeroext i1 @_ZNKSt8optionalIlEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %14 = call fastcc { i64, i8 } @_ZL53get_cachelinesize_from_GetLogicalProcessorInformationv() ; 2 uses
  %15 = getelementptr inbounds nuw %"class.std::optional", ptr %4, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %15, i32 0, i32 0 ; 2 uses
  %i.r = getelementptr inbounds nuw { i64, i8 }, ptr %16, i32 0, i32 0
  %i.s = extractvalue { i64, i8 } %14, 0
  store i64 %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw { i64, i8 }, ptr %16, i32 0, i32 1
  %i.u = extractvalue { i64, i8 } %14, 1
  store i8 %i.u, ptr %i.t, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %4, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = call noundef zeroext i1 @_ZNKSt8optionalIlEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef @.str)
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) ; 0 uses
  store i32 1, ptr %i.a, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNRSt8optionalIlEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.z)
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) ; 0 uses
  store i32 0, ptr %i.a, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = load i32, ptr %i.a, align 4
  ret i32 %i.ac
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8optionalIlEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  call void @_ZNSt14_Optional_baseIlLb1ELb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8optionalIlEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZNKSt19_Optional_base_implIlSt14_Optional_baseIlLb1ELb1EEE13_M_is_engagedEv(ptr noundef nonnull align 1 dereferenceable(1) %i.b) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define internal fastcc { i64, i8 } @_ZL30get_cachelinesize_from_sysconfv() unnamed_addr #2 {
bb.a:
  %0 = alloca %"class.std::optional", align 8     ; 3 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %1 = alloca %"struct.std::nullopt_t", align 1   ; 0 uses
  %i.b = call i64 @sysconf(i32 noundef 190) #10
  store i64 %i.b, ptr %i.a, align 8
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt8optionalIlEC2ESt9nullopt_t(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt8optionalIlEC2IlTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_IS4_ISt10in_place_tSB_EESt16is_constructibleIlJS7_EESt14is_convertibleIS7_lEEEbE4typeELb1EEEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %2 = getelementptr inbounds nuw %"class.std::optional", ptr %0, i32 0, i32 0
  %3 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %2, i32 0, i32 0
  %i.e = load { i64, i8 }, ptr %3, align 8
  ret { i64, i8 } %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define internal fastcc { i64, i8 } @_ZL32get_cachelinesize_from_getauxvalv() unnamed_addr #2 {
bb.a:
  %0 = alloca %"class.std::optional", align 8     ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"struct.std::nullopt_t", align 1   ; 0 uses
  %i.b = call i64 @getauxval(i64 noundef 43) #10
  store i64 %i.b, ptr %i.a, align 8
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @__errno_location() #11
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt8optionalIlEC2ESt9nullopt_t(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = load i64, ptr %i.a, align 8
  %i.i = and i64 %i.h, 65535
  store i64 %i.i, ptr %i.a, align 8
  call void @_ZNSt8optionalIlEC2ImTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_IS4_ISt10in_place_tSB_EESt16is_constructibleIlJS7_EESt14is_convertibleIS7_lEEEbE4typeELb1EEEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %2 = getelementptr inbounds nuw %"class.std::optional", ptr %0, i32 0, i32 0
  %3 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %2, i32 0, i32 0
  %i.j = load { i64, i8 }, ptr %3, align 8
  ret { i64, i8 } %i.j
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define internal fastcc { i64, i8 } @_ZL35get_cachelinesize_from_sysctlbynamev() unnamed_addr #2 {
bb.a:
  %0 = alloca %"class.std::optional", align 8     ; 2 uses
  %1 = alloca %"struct.std::nullopt_t", align 1   ; 0 uses
  call void @_ZNSt8optionalIlEC2ESt9nullopt_t(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  %2 = getelementptr inbounds nuw %"class.std::optional", ptr %0, i32 0, i32 0
  %3 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %2, i32 0, i32 0
  %i.a = load { i64, i8 }, ptr %3, align 8
  ret { i64, i8 } %i.a
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define internal fastcc { i64, i8 } @_ZL53get_cachelinesize_from_GetLogicalProcessorInformationv() unnamed_addr #2 {
bb.a:
  %0 = alloca %"class.std::optional", align 8     ; 2 uses
  %1 = alloca %"struct.std::nullopt_t", align 1   ; 0 uses
  call void @_ZNSt8optionalIlEC2ESt9nullopt_t(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  %2 = getelementptr inbounds nuw %"class.std::optional", ptr %0, i32 0, i32 0
  %3 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %2, i32 0, i32 0
  %i.a = load { i64, i8 }, ptr %3, align 8
  ret { i64, i8 } %i.a
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNRSt8optionalIlEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt19_Optional_base_implIlSt14_Optional_baseIlLb1ELb1EEE6_M_getEv(ptr noundef nonnull align 1 dereferenceable(1) %i.b) #10
  ret ptr %i.c
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIlLb1ELb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %i.b, i32 0, i32 0
  call void @_ZNSt17_Optional_payloadIlLb1ELb1ELb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(9) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt17_Optional_payloadIlLb1ELb1ELb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  call void @_ZNSt22_Optional_payload_baseIlEC2Ev(ptr noundef nonnull align 8 dereferenceable(9) %i.b) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseIlEC2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %1 = getelementptr inbounds nuw %"struct.std::_Optional_payload_base", ptr %i.b, i32 0, i32 0
  call void @_ZNSt22_Optional_payload_baseIlE8_StorageIlLb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %2 = getelementptr inbounds nuw %"struct.std::_Optional_payload_base", ptr %i.b, i32 0, i32 1
  store i8 0, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseIlE8_StorageIlLb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 0 uses
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt19_Optional_base_implIlSt14_Optional_baseIlLb1ELb1EEE13_M_is_engagedEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %i.b, i32 0, i32 0
  %2 = getelementptr inbounds nuw %"struct.std::_Optional_payload_base", ptr %1, i32 0, i32 1
  %i.c = load i8, ptr %2, align 8
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8optionalIlEC2ESt9nullopt_t(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::nullopt_t", align 1   ; 0 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  call void @_ZNSt14_Optional_baseIlLb1ELb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8optionalIlEC2IlTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_IS4_ISt10in_place_tSB_EESt16is_constructibleIlJS7_EESt14is_convertibleIS7_lEEEbE4typeELb1EEEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"struct.std::in_place_t", align 1  ; 0 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6
  invoke void @_ZNSt14_Optional_baseIlLb1ELb1EEC2IJlETnNSt9enable_ifIX18is_constructible_vIlDpT_EEbE4typeELb0EEESt10in_place_tDpOS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #12
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIlLb1ELb1EEC2IJlETnNSt9enable_ifIX18is_constructible_vIlDpT_EEbE4typeELb0EEESt10in_place_tDpOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::in_place_t", align 1  ; 0 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"struct.std::in_place_t", align 1  ; 0 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_base", ptr %i.c, i32 0, i32 0
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6
  call void @_ZNSt17_Optional_payloadIlLb1ELb1ELb1EECI2St22_Optional_payload_baseIlEIJlEEESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt17_Optional_payloadIlLb1ELb1ELb1EECI2St22_Optional_payload_baseIlEIJlEEESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::in_place_t", align 1  ; 0 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8
  call void @_ZNSt22_Optional_payload_baseIlEC2IJlEEESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseIlEC2IJlEEESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::in_place_t", align 1  ; 0 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"struct.std::in_place_t", align 1  ; 0 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_payload_base", ptr %i.c, i32 0, i32 0
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6
  call void @_ZNSt22_Optional_payload_baseIlE8_StorageIlLb1EEC2IJlEEESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %5 = getelementptr inbounds nuw %"struct.std::_Optional_payload_base", ptr %i.c, i32 0, i32 1
  store i8 1, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseIlE8_StorageIlLb1EEC2IJlEEESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::in_place_t", align 1  ; 0 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.c, align 8
  ret void
}

end_hunk_0
