Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/time_test?download=true
inline.NumInlined: 7926
inline.NumDeleted: 2008
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7testing8internal11MatcherBaseIRKdE19MatchAndExplainImplINS4_11ValuePolicyIPKNS_16MatcherInterfaceIS3_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKS4_S3_PNS_19MatchResultListenerE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKdE12DescribeImplINS4_11ValuePolicyIPKNS_16MatcherInterfaceIS3_EELb1EEEEEvRKS4_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %. = select i1 %2, i64 24, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKdE16GetDescriberImplINS4_11ValuePolicyIPKNS_16MatcherInterfaceIS3_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKdEESt14default_deleteIS7_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !206  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKdEESt14default_deleteIS7_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKdEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKdEEEclEPS5_.exit.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #26, !inline_history !984
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKdEESt14default_deleteIS7_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKdEESt14default_deleteIS7_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKdEEEclEPS5_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKdEESt14default_deleteIS7_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing25MatcherDescriberInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal17FloatingEqMatcherIdE4ImplIRKdED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal17FloatingEqMatcherIdE4ImplIRKdE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !187
  store i64 17, ptr %i.e, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !199  ; 2 uses
  %i.i = and i64 %i.h, 9218868437227405312
  %i.j = icmp eq i64 %i.i, 9218868437227405312
  %i.k = and i64 %i.h, 4503599627370495
  %i.l = icmp ne i64 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !200, !range !81, !noundef !82
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.267, i64 noundef 6) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.268, i64 noundef 13) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.269, i64 noundef 17) ; 0 uses
  %i.t = load double, ptr %i.g, align 8, !tbaa !199
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !201
  %i.x = fcmp ult double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.270, i64 noundef 20) ; 0 uses
  %i.z = load double, ptr %i.v, align 8, !tbaa !201
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.z)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.109, i64 noundef 1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %i.ac = load ptr, ptr %1, align 8, !tbaa !54
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.f, ptr %i.ag, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal17FloatingEqMatcherIdE4ImplIRKdE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !187
  store i64 17, ptr %i.e, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !199  ; 2 uses
  %i.i = and i64 %i.h, 9218868437227405312
  %i.j = icmp eq i64 %i.i, 9218868437227405312
  %i.k = and i64 %i.h, 4503599627370495
  %i.l = icmp ne i64 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !200, !range !81, !noundef !82
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.271, i64 noundef 9) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.272, i64 noundef 11) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.273, i64 noundef 20) ; 0 uses
  %i.t = load double, ptr %i.g, align 8, !tbaa !199
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !201
  %i.x = fcmp ult double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.274, i64 noundef 19) ; 0 uses
  %i.z = load double, ptr %i.v, align 8, !tbaa !201
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.z)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.109, i64 noundef 1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %i.ac = load ptr, ptr %1, align 8, !tbaa !54
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.f, ptr %i.ag, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal17FloatingEqMatcherIdE4ImplIRKdE15MatchAndExplainES5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !186 ; 5 uses
  %i.b = bitcast double %i.a to i64               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !199 ; 4 uses
  %i.e = bitcast double %i.d to i64               ; 3 uses
  %i.f = fcmp uno double %i.a, 0.000000e+00
  %i.g = fcmp uno double %i.d, 0.000000e+00       ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit8, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit8

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !200, !range !81, !noundef !82
  %i.j = trunc nuw i8 %i.i to i1
  br label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit8

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load double, ptr %i.k, align 8, !tbaa !201 ; 2 uses
  %i.m = fcmp ult double %i.l, 0.000000e+00
  br i1 %i.m, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = fcmp oeq double %i.a, %i.d
  br i1 %i.n, label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = fsub double %i.a, %i.d                   ; 2 uses
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp ugt double %i.p, %i.l
  br i1 %i.q, label %bb.h, label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit8

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing19MatchResultListenerlsIA10_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.275) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !138  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, double noundef %i.o) ; 0 uses
  br label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit: ; preds = %bb.i, %bb.j
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 1 dereferenceable(7) @.str.276)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !138  ; 2 uses
  %.not.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i7, label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit8, label %bb.k

bb.k:                                             ; preds = %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit
  %i.aa = load double, ptr %i.c, align 8, !tbaa !186
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, double noundef %i.aa) ; 0 uses
  br label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit8

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit: ; preds = %bb.e
  %i.ac = sub i64 0, %i.b
  %i.ad = tail call double @llvm.fabs.f64(double %i.a)
  %i.ae = fneg double %i.ad
  %i.af = bitcast double %i.ae to i64
  %.not4.i.i.i = icmp slt i64 %i.b, 0
  %.0.i.i.i = select i1 %.not4.i.i.i, i64 %i.ac, i64 %i.af
  %i.ag = sub i64 -9223372036854775808, %i.e
  %.not4.i10.i.i = icmp slt i64 %i.e, 0
  %.0.i11.i.i = select i1 %.not4.i10.i.i, i64 %i.e, i64 %i.ag
  %3 = add i64 %.0.i.i.i, 4
  %4 = add i64 %3, %.0.i11.i.i
  %i.ah = icmp ult i64 %4, 9
  br label %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit8

_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit8: ; preds = %bb.g, %bb.h, %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit, %bb.k, %bb.b, %bb.f, %bb.c, %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit, %bb.d
  %.1 = phi i1 [ %i.j, %bb.d ], [ %i.ah, %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.k ], [ false, %_ZN7testing19MatchResultListenerlsIdEERS0_RKT_.exit ], [ false, %bb.h ], [ true, %bb.g ]
  ret i1 %.1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(7) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %1, i64 noundef %i.c) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal16UniversalPrinterIdE5PrintERKdPSo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !186 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !54
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !187
  %i.h = fcmp olt double %i.a, 0.000000e+00
  %i.i = fneg double %i.a
  %.032.i.i = select i1 %i.h, double %i.i, double %i.a ; 20 uses
  %i.j = fcmp olt double %.032.i.i, 1.000000e+06
  br i1 %i.j, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.k = fcmp ult double %.032.i.i, 1.000000e+05
  br i1 %i.k, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.l = fcmp ult double %.032.i.i, 1.000000e+04
  br i1 %i.l, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.m = fcmp ult double %.032.i.i, 1.000000e+03
  br i1 %i.m, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp ult double %.032.i.i, 1.000000e+02
  br i1 %i.n, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.o = fcmp ult double %.032.i.i, 1.000000e+01
  br i1 %i.o, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.p = fcmp ult double %.032.i.i, 1.000000e+00
  br i1 %i.p, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.q = fcmp ult double %.032.i.i, 1.000000e-01
  br i1 %i.q, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.r = fcmp ult double %.032.i.i, 1.000000e-02
  br i1 %i.r, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.s = fcmp ult double %.032.i.i, 1.000000e-03
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = fcmp ult double %.032.i.i, 1.000000e-04
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.031.i.i = phi double [ 1.000000e+10, %bb.k ], [ 1.000000e+00, %bb.b ], [ 1.000000e+01, %bb.c ], [ 1.000000e+02, %bb.d ], [ 1.000000e+03, %bb.e ], [ 1.000000e+04, %bb.f ], [ 1.000000e+05, %bb.g ], [ 1.000000e+06, %bb.h ], [ 1.000000e+07, %bb.i ], [ 1.000000e+09, %bb.l ], [ 1.000000e+08, %bb.j ] ; 2 uses
  %i.u = tail call double @llvm.fmuladd.f64(double %.032.i.i, double %.031.i.i, double 5.000000e-01)
  %i.v = fptosi double %i.u to i32
  %i.w = sitofp i32 %i.v to double
  %i.x = fdiv double %i.w, %.031.i.i
  %i.y = fcmp une double %i.x, %.032.i.i
  br i1 %i.y, label %bb.u, label %_ZN7testing8internal7PrintToEdPSo.exit

bb.n:                                             ; preds = %bb.a
  %i.z = fcmp olt double %.032.i.i, 1.000000e+10
  br i1 %i.z, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.aa = fcmp ult double %.032.i.i, 1.000000e+09
  br i1 %i.aa, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ab = fcmp ult double %.032.i.i, 1.000000e+08
  br i1 %i.ab, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ac = fcmp ult double %.032.i.i, 1.000000e+07
  br i1 %i.ac, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ad = fcmp ult double %.032.i.i, 1.000000e+06
  br i1 %i.ad, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.i = phi double [ 1.000000e+00, %bb.r ], [ 1.000000e+04, %bb.o ], [ 1.000000e+03, %bb.p ], [ 1.000000e+01, %bb.s ], [ 1.000000e+02, %bb.q ] ; 2 uses
  %i.ae = fdiv double %.032.i.i, %.0.i.i
  %i.af = fadd double %i.ae, 5.000000e-01
  %i.ag = fptosi double %i.af to i32
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = fmul nnan double %.0.i.i, %i.ah
  %i.aj = fcmp une double %i.ai, %.032.i.i
  br i1 %i.aj, label %bb.u, label %_ZN7testing8internal7PrintToEdPSo.exit

bb.u:                                             ; preds = %bb.t, %bb.n, %bb.m
  br label %_ZN7testing8internal7PrintToEdPSo.exit

_ZN7testing8internal7PrintToEdPSo.exit:           ; preds = %bb.m, %bb.t, %bb.u
  %.2.i.i = phi i64 [ 17, %bb.u ], [ 6, %bb.m ], [ 6, %bb.t ]
  store i64 %.2.i.i, ptr %i.f, align 8, !tbaa !187
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.a) ; 0 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !54
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.g, ptr %i.ap, align 8, !tbaa !187
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_120Time_FromChrono_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_120Time_FromChrono_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_120Time_FromChrono_TestE, i64 16), ptr %i.a, align 8, !tbaa !54
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120Time_FromChrono_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120Time_FromChrono_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.absl::lts_20260526::Time", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::Time", align 8 ; 5 uses
  %4 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20260526::Time", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20260526::Time", align 8 ; 5 uses
  %10 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %14 = alloca %"class.absl::lts_20260526::Time", align 8 ; 5 uses
  %15 = alloca %"class.absl::lts_20260526::Time", align 8 ; 5 uses
end_hunk_0
