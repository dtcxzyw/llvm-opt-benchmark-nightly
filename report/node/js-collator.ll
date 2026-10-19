Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-collator?download=true
inline.NumInlined: 1290
inline.NumDeleted: 698
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_:bb.a
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1
  store i8 %i.j, ptr %i.a, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.c, %bb.e, %bb.d
  %i.k = load i64, ptr %i.g, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  %.pre = load ptr, ptr %1, align 8
  br label %bb.h

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  %i.r = load i64, ptr %i.e, align 8
  store i64 %i.r, ptr %i.b, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread
  %i.s = load i64, ptr %i.b, align 8
  store ptr %i.d, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load i64, ptr %i.e, align 8
  store i64 %i.w, ptr %i.b, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.a, ptr %1, align 8
  store i64 %i.s, ptr %i.e, align 8
  br label %bb.h

bb.g:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.e, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = phi ptr [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8
  store i8 0, ptr %i.x, align 1
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal10JSCollator3NewEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6ObjectEEES8_PKc(ptr noundef %0, ptr %1, ptr %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca [2 x %"class.v8::internal::DirectHandle.459"], align 8 ; 5 uses
  %6 = alloca [3 x %"class.v8::internal::DirectHandle.459"], align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::DirectHandle.451", align 8 ; 10 uses
  %8 = alloca %"class.v8::Maybe.465", align 8     ; 8 uses
  %9 = alloca %"class.std::vector.467", align 8   ; 8 uses
  %10 = alloca %"class.v8::internal::DirectHandle.451", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %13 = alloca %"struct.v8::internal::Intl::ResolvedLocale", align 8 ; 17 uses
  %14 = alloca %"class.v8::Maybe.495", align 8    ; 7 uses
  %15 = alloca %"class.std::set.497", align 8     ; 6 uses
  %16 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %17 = alloca %"class.std::allocator.296", align 1 ; 3 uses
  %18 = alloca %"class.std::allocator.296", align 1 ; 3 uses
  %19 = alloca %"class.std::allocator.296", align 1 ; 3 uses
  %20 = alloca %"struct.std::less", align 1       ; 3 uses
  %21 = alloca %"class.std::allocator.469", align 1 ; 3 uses
  %22 = alloca %"class.icu_78::Locale", align 8   ; 11 uses
  %i.f = alloca i32, align 4                      ; 18 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator.296", align 1 ; 3 uses
  %25 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %26 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %27 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %28 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %29 = alloca %"class.std::unique_ptr.503", align 8 ; 20 uses
  %30 = alloca %"class.icu_78::Locale", align 8   ; 7 uses
  %31 = alloca %"class.icu_78::Locale", align 8   ; 5 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::allocator.296", align 1 ; 3 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator.296", align 1 ; 3 uses
  %36 = alloca %"struct.std::array.522", align 8  ; 7 uses
  %37 = alloca %"struct.std::array.523", align 16 ; 4 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %38 = alloca %"class.std::shared_ptr.526", align 8 ; 3 uses
  %39 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.447", align 8 ; 4 uses
  %40 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.447", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZN2v88internal4Intl22CanonicalizeLocaleListB5cxx11EPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEb(ptr dead_on_unwind nonnull writable sret(%"class.v8::Maybe.465") align 8 %8, ptr noundef %0, ptr %2, i1 noundef zeroext false) #17
  %i.i = load i8, ptr %8, align 8, !range !12, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNKR2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE8FromJustEv.exit, label %bb.an

_ZNKR2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE8FromJustEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  %i.l = call ptr @_ZN2v88internal21CoerceOptionsToObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPKc(ptr noundef %0, ptr %3, ptr noundef %4) #17 ; 8 uses
  %.not227 = icmp eq ptr %i.l, null
  br i1 %.not227, label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKR2v85MaybeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE8FromJustEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr null, ptr %7, align 8
  %i.n = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef nonnull %0, ptr nonnull %i.l, ptr nonnull %i.m, ptr noundef %4, ptr noundef nonnull %7) #17 ; 2 uses
  %i.o = trunc i16 %i.n to i1
  br i1 %i.o, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, label %_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_15UsageEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread

_ZNKR2v85MaybeIbE8FromJustEv.exit.i:              ; preds = %bb.b
  %i.p = and i16 %i.n, 256
  %.not15.i = icmp eq i16 %i.p, 0
  br i1 %.not15.i, label %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_15UsageEE8FromJustEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %7, align 8
  %i.q = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.r = add i64 %i.q, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr nonnull @.str.8, i64 4, ptr noundef nonnull %0)
  br i1 %i.t, label %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_15UsageEE8FromJustEv.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload.i.i.1 = load ptr, ptr %7, align 8
  %i.u = load i64, ptr %.sroa.0.0.copyload.i.i.1, align 8
  %i.v = add i64 %i.u, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr nonnull @.str.10, i64 6, ptr noundef nonnull %0)
  br i1 %i.x, label %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_15UsageEE8FromJustEv.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.1
  %i.y = load ptr, ptr %7, align 8
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.ab = ptrtoint ptr %i.aa to i64
  store i64 %i.ab, ptr %7, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit.i
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19
  %i.ad = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %4, i64 %i.ac, i8 noundef zeroext 0) #17 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.e, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !11

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #20
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %bb.d
  %.sroa.03.0.copyload.i = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %.sroa.03.0.copyload.i, ptr %6, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.m, ptr %i.ag, align 8
  %i.ah = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 276, ptr nonnull %6, i64 3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ai, ptr noundef null) #17 ; 0 uses
  br label %_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_15UsageEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread

_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_15UsageEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit.thread: ; preds = %bb.b, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_15UsageEE8FromJustEv.exit: ; preds = %.lr.ph.i.preheader, %.lr.ph.i.1, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i
  %i.ak = phi i1 [ true, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i ], [ false, %.lr.ph.i.1 ], [ true, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.al = call i64 @_ZN2v88internal4Intl16GetLocaleMatcherEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPKc(ptr noundef nonnull %0, ptr nonnull %i.l, ptr noundef %4) #17 ; 2 uses
  %.sroa.5170.0.extract.shift = lshr i64 %i.al, 32
  %.sroa.5170.0.extract.trunc = trunc nuw i64 %.sroa.5170.0.extract.shift to i32
  %i.am = trunc i64 %i.al to i1
  br i1 %i.am, label %_ZNKR2v85MaybeINS_8internal4Intl13MatcherOptionEE8FromJustEv.exit, label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNKR2v85MaybeINS_8internal4Intl13MatcherOptionEE8FromJustEv.exit: ; preds = %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_15UsageEE8FromJustEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr null, ptr %10, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  %i.ao = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef nonnull %0, ptr nonnull %i.l, ptr nonnull %i.an, ptr noundef %4, ptr noundef nonnull %10) #17 ; 2 uses
  %i.ap = trunc i16 %i.ao to i1
  br i1 %i.ap, label %_ZNKR2v85MaybeIbE8FromJustEv.exit89, label %bb.al

_ZNKR2v85MaybeIbE8FromJustEv.exit89:              ; preds = %_ZNKR2v85MaybeINS_8internal4Intl13MatcherOptionEE8FromJustEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.aq, ptr %11, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.ar, align 8
  store i8 0, ptr %i.aq, align 8
  %i.as = and i16 %i.ao, 256
  %.not228 = icmp eq i16 %i.as, 0                 ; 2 uses
  br i1 %.not228, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %.sroa.0.0.copyload.i = load ptr, ptr %10, align 8
  %i.at = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.au = add i64 %i.at, -1
  %i.av = inttoptr i64 %i.au to ptr
  call void @_ZN2v88internal6String11ToStdStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(16) %i.av) #17
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12) #17 ; 0 uses
  %i.ax = load ptr, ptr %12, align 8              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ba = load i64, ptr %i.ay, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.bc = load ptr, ptr %11, align 8
  %i.bd = load i64, ptr %i.ar, align 8
  %i.be = call noundef zeroext i1 @_ZN2v88internal8JSLocale16Is38AlphaNumListESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.bd, ptr %i.bc) #17
  br i1 %i.be, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.029.0.copyload = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %i.an, ptr %5, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.029.0.copyload, ptr %i.bf, align 8
  %i.bg = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 237, ptr nonnull %5, i64 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bh, ptr noundef null) #17 ; 0 uses
  br label %bb.ak

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKR2v85MaybeIbE8FromJustEv.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.bk = call i16 @_ZN2v88internal13GetBoolOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPb(ptr noundef nonnull %0, ptr nonnull %i.l, ptr nonnull %i.bj, ptr noundef %4, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.bl = trunc i16 %i.bk to i1
  br i1 %i.bl, label %bb.i, label %bb.aj

bb.i:                                             ; preds = %bb.h
  %i.bm = call fastcc i64 @_ZN2v88internal12_GLOBAL__N_112GetCaseFirstEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPKc(ptr noundef nonnull %0, ptr nonnull %i.l, ptr noundef %4) ; 2 uses
  %.sroa.5151.0.extract.shift = lshr i64 %i.bm, 32 ; 2 uses
  %i.bn = trunc i64 %i.bm to i1
  br i1 %i.bn, label %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_19CaseFirstEE8FromJustEv.exit, label %bb.aj

_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_19CaseFirstEE8FromJustEv.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.bo, ptr %13, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.bp, align 8
  store i8 0, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bq) #17
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 6 uses
  store i32 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 88
  store ptr null, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 96
  store ptr %i.br, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr %i.br, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 112
  store i64 0, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.bw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2v88internal10JSCollator19GetAvailableLocalesB5cxx11Ev() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %17)
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %18)
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ESt16initializer_listIS5_ERKS7_RKS8_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr nonnull %16, i64 3, ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21)
  call void @_ZN2v88internal4Intl13ResolveLocaleEPNS0_7IsolateERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EERKSt6vectorISA_SD_ENS1_13MatcherOptionESG_(ptr dead_on_unwind nonnull writable sret(%"class.v8::Maybe.495") align 8 %14, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal10JSCollator19GetAvailableLocalesB5cxx11EvE17available_locales, i64 16), ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %.sroa.5170.0.extract.trunc, ptr noundef nonnull align 8 dereferenceable(48) %15) #17
  %i.bz = load i8, ptr %14, align 8, !range !12, !noundef !13
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.j, label %_ZNK2v85MaybeINS_8internal4Intl14ResolvedLocaleEE2ToEPS3_.exit, !prof !14

bb.j:                                             ; preds = %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_19CaseFirstEE8FromJustEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cc = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN2v88internal4Intl14ResolvedLocaleaSERKS2_(ptr noundef nonnull align 8 dereferenceable(120) %13, ptr noundef nonnull align 8 dereferenceable(120) %i.cb) ; 0 uses
  %.pre = load i8, ptr %14, align 8, !range !12
  %i.cd = trunc nuw i8 %.pre to i1
  br label %_ZNK2v85MaybeINS_8internal4Intl14ResolvedLocaleEE2ToEPS3_.exit

_ZNK2v85MaybeINS_8internal4Intl14ResolvedLocaleEE2ToEPS3_.exit: ; preds = %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_19CaseFirstEE8FromJustEv.exit, %bb.j
  %i.ce = phi i1 [ false, %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_19CaseFirstEE8FromJustEv.exit ], [ %i.cd, %bb.j ]
  call void @_ZN2v85MaybeINS_8internal4Intl14ResolvedLocaleEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %14) #17
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNK2v85MaybeINS_8internal4Intl14ResolvedLocaleEE2ToEPS3_.exit
  %i.cl = load i64, ptr %i.cj, align 8
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNK2v85MaybeINS_8internal4Intl14ResolvedLocaleEE2ToEPS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.cr = load i64, ptr %i.cp, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.1
  %i.ct = load ptr, ptr %16, align 8              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.1
  %i.cw = load i64, ptr %i.cu, align 8
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.2
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %i.ce, label %_ZNKR2v85MaybeIbE8FromJustEv.exit88, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.2
  %i.cy = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 12, ptr null, i64 0) #17
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.cz, ptr noundef null) #17 ; 0 uses
  br label %bb.ai

_ZNKR2v85MaybeIbE8FromJustEv.exit88:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.2
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(40) %i.bq) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 0, ptr %i.f, align 4
  br i1 %.not228, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit88
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %24)
  %i.dc = call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %23) ; 3 uses
  %i.dd = load ptr, ptr %23, align 8              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.l
  %i.dg = load i64, ptr %i.de, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  %i.di = icmp eq ptr %i.dc, %i.br
  br i1 %i.di, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.dl = load i64, ptr %i.dk, align 8            ; 3 uses
  %i.dm = load i64, ptr %i.ar, align 8
  %i.dn = icmp eq i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread224

bb.n:                                             ; preds = %bb.m
  %i.do = icmp eq i64 %i.dl, 0
  br i1 %i.do, label %.critedge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.n
  %i.dp = load ptr, ptr %11, align 8
  %i.dq = load ptr, ptr %i.dj, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.dq, ptr %i.dp, i64 %i.dl)
  %i.dr = icmp eq i32 %bcmp.i, 0
  br i1 %i.dr, label %.critedge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread224

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread224: ; preds = %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %25, ptr noundef nonnull @.str.9) #17
  %i.ds = load ptr, ptr %25, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.du = load i32, ptr %i.dt, align 8
  call void @_ZN6icu_786Locale22setUnicodeKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr %i.ds, i32 %i.du, ptr null, i32 0, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  br i1 %i.ak, label %_ZNKR2v85MaybeIbE8FromJustEv.exit87, label %bb.o

.critedge.thread:                                 ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit88
  br i1 %i.ak, label %_ZNKR2v85MaybeIbE8FromJustEv.exit87.thread, label %bb.o

bb.o:                                             ; preds = %.critedge.thread, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i32 0, ptr %i.g, align 4
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %26, ptr noundef nonnull @.str.9) #17
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %27, ptr noundef nonnull @.str.10) #17
  %i.dv = load ptr, ptr %26, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = load ptr, ptr %27, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ea = load i32, ptr %i.dz, align 8
  call void @_ZN6icu_786Locale22setUnicodeKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr %i.dv, i32 %i.dx, ptr %i.dy, i32 %i.ea, ptr noundef nonnull align 4 dereferenceable(4) %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit87.thread

_ZNKR2v85MaybeIbE8FromJustEv.exit87:              ; preds = %.critedge
  %i.eb = call noundef zeroext i1 @_ZN2v88internal4Intl16IsValidCollationERKN6icu_786LocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  br i1 %i.eb, label %bb.p, label %_ZNKR2v85MaybeIbE8FromJustEv.exit87.thread

bb.p:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit87
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %28, ptr noundef nonnull @.str.9) #17
  %i.ec = load ptr, ptr %11, align 8
  %i.ed = load i64, ptr %i.ar, align 8
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = load ptr, ptr %28, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.eh = load i32, ptr %i.eg, align 8
  call void @_ZN6icu_786Locale22setUnicodeKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr %i.ef, i32 %i.eh, ptr %i.ec, i32 %i.ee, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #17
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit87.thread

_ZNKR2v85MaybeIbE8FromJustEv.exit87.thread:       ; preds = %.critedge.thread, %_ZNKR2v85MaybeIbE8FromJustEv.exit87, %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  %i.ei = call noundef ptr @_ZN6icu_788Collator14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #17 ; 3 uses
  store ptr %i.ei, ptr %29, align 8
  %i.ej = load i32, ptr %i.f, align 4
  %i.ek = icmp sgt i32 %i.ej, 0
  %.not.i = icmp eq ptr %i.ei, null
  %or.cond225 = or i1 %.not.i, %i.ek
  br i1 %or.cond225, label %bb.q, label %_ZNKR2v85MaybeIbE8FromJustEv.exit86

bb.q:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit87.thread
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  %i.el = call noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40) %22) #17
  call void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef %i.el, ptr noundef null, ptr noundef null, ptr noundef null) #17
  %i.em = call noundef ptr @_ZN6icu_788Collator14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #17 ; 2 uses
  %i.en = load ptr, ptr %29, align 8              ; 3 uses
  store ptr %i.em, ptr %29, align 8
  %.not.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6icu_788CollatorESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6icu_788CollatorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6icu_788CollatorEEclEPS1_.exit.i.i: ; preds = %bb.q
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.en) #17, !inline_history !28
  %.pre235.a = load ptr, ptr %29, align 8
  br label %_ZNSt10unique_ptrIN6icu_788CollatorESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN6icu_788CollatorESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIN6icu_788CollatorEEclEPS1_.exit.i.i
  %i.er = phi ptr [ %i.em, %bb.q ], [ %.pre235.a, %_ZNKSt14default_deleteIN6icu_788CollatorEEclEPS1_.exit.i.i ]
  %i.es = load i32, ptr %i.f, align 4
  %i.et = icmp sgt i32 %i.es, 0
  %.not.i99 = icmp eq ptr %i.er, null
  %or.cond226 = select i1 %i.et, i1 true, i1 %.not.i99
  br i1 %or.cond226, label %.critedge85, label %bb.r

.critedge85:                                      ; preds = %_ZNSt10unique_ptrIN6icu_788CollatorESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.eu = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 12, ptr null, i64 0) #17
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ev, ptr noundef null) #17 ; 0 uses
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %30) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  br label %bb.ah

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN6icu_788CollatorESt14default_deleteIS1_EE5resetEPS1_.exit
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %30) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  %.pre236 = load ptr, ptr %29, align 8
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit86

_ZNKR2v85MaybeIbE8FromJustEv.exit86:              ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit87.thread, %bb.r
  %i.ex = phi ptr [ %i.ei, %_ZNKR2v85MaybeIbE8FromJustEv.exit87.thread ], [ %.pre236, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 136
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %31, ptr noundef nonnull align 8 dereferenceable(8) %i.ex, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #17
  store i32 0, ptr %i.f, align 4
  %i.fb = and i16 %i.bk, 256
  %.not = icmp eq i16 %i.fb, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit86
  %i.fc = load ptr, ptr %29, align 8              ; 2 uses
  %i.fd = load i8, ptr %i.e, align 1, !range !12, !noundef !13
  %i.fe = trunc nuw i8 %i.fd to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4
  %i.ff = select i1 %i.fe, i32 17, i32 16
  %i.fg = load ptr, ptr %i.fc, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 184
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, i32 noundef 7, i32 noundef %i.ff, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #17, !inline_history !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.v

bb.t:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit86
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %33)
  %i.fk = call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %32) ; 2 uses
  %i.fl = load ptr, ptr %32, align 8              ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.t
  %i.fo = load i64, ptr %i.fm, align 8
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  %i.fq = icmp eq ptr %i.fk, %i.br
  br i1 %i.fq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.fr = load ptr, ptr %29, align 8              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.ft = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull @.str.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.c, align 4
  %i.fu = select i1 %i.ft, i32 17, i32 16
  %i.fv = load ptr, ptr %i.fr, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 184
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, i32 noundef 7, i32 noundef %i.fu, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #17, !inline_history !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.u, %bb.s
  %.not83 = icmp eq i64 %.sroa.5151.0.extract.shift, 0
  br i1 %.not83, label %bb.w, label %switch.lookup

switch.lookup:                                    ; preds = %bb.v
  %i.fy = load ptr, ptr %29, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4
  %i.fz = getelementptr i8, ptr @switch.table._ZN2v88internal10JSCollator3NewEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6ObjectEEES8_PKc, i64 %.sroa.5151.0.extract.shift
  %switch.gep = getelementptr i8, ptr %i.fz, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.ga = load ptr, ptr %i.fy, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 184
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, i32 noundef 2, i32 noundef %switch.ext, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #17, !inline_history !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %35)
  %i.ge = call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %34) ; 2 uses
  %i.gf = load ptr, ptr %34, align 8              ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.w
  %i.gi = load i64, ptr %i.gg, align 8
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  %i.gk = icmp eq ptr %i.ge, %i.br
  br i1 %i.gk, label %bb.x, label %switch.lookup274

switch.lookup274:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.gl = load ptr, ptr %29, align 8              ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_111ToCaseFirstEPKc(ptr noundef %i.gn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  %i.gp = zext nneg i32 %i.go to i64
  %switch.gep275 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal10JSCollator3NewEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6ObjectEEES8_PKc.35, i64 %i.gp
  %switch.load276 = load i8, ptr %switch.gep275, align 1
  %switch.ext277 = zext i8 %switch.load276 to i32
  %i.gq = load ptr, ptr %i.gl, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 184
end_hunk_0
