inline.NumInlined: 1554
inline.NumDeleted: 561
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE13OverflowErrorIdEENS_6StatusET_ii:bb.a
  store double %1, ptr %i.a, align 8, !tbaa !58
  store i32 %2, ptr %i.b, align 4, !tbaa !3
  store i32 %3, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !393
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5arrow13DecimalTraitsINS_15BasicDecimal128EE9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(14) @.str.34, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.36), !noalias !393
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !16, !noalias !393 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !54, !noalias !393
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !16, !noalias !393 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !54, !noalias !393
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !393
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !393
  ret void
}

declare void @_ZNK5arrow15BasicDecimal12819GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_122ParseDecimalComponentsEPKcmPNS0_17DecimalComponentsE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::internal::StringConverter", align 1 ; 3 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !54      ; 2 uses
  switch i8 %i.b, label %.lr.ph.i [
    i8 45, label %.split
    i8 43, label %.split
  ]

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.011.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.011.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !54
  %i.e = add i8 %i.d, -48
  %i.f = icmp ult i8 %i.e, 10
  br i1 %i.f, label %bb.c, label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = add nuw i64 %.011.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.g, %1
  br i1 %exitcond.not.i, label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i, !llvm.loop !398

.split:                                           ; preds = %bb.b, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 %i.b, ptr %i.h, align 4, !tbaa !159
  %.not60 = icmp eq i64 %1, 1
  br i1 %.not60, label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.split, %bb.d
  %.011.i51 = phi i64 [ %i.m, %bb.d ], [ 1, %.split ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.011.i51
  %i.j = load i8, ptr %i.i, align 1, !tbaa !54
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.d, label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53

bb.d:                                             ; preds = %.lr.ph.i50
  %i.m = add i64 %.011.i51, 1                     ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i52, label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53, label %.lr.ph.i50, !llvm.loop !398

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53: ; preds = %.lr.ph.i50, %bb.d, %.split
  %.0.lcssa.i48 = phi i64 [ 1, %.split ], [ %1, %bb.d ], [ %.011.i51, %.lr.ph.i50 ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.o = add i64 %.0.lcssa.i48, -1
  br label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.c, %.lr.ph.i, %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53
  %.0.lcssa.i.sink = phi i64 [ %i.o, %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53 ], [ %1, %bb.c ], [ %.011.i, %.lr.ph.i ] ; 3 uses
  %.sink = phi ptr [ %i.n, %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53 ], [ %0, %.lr.ph.i ], [ %0, %bb.c ]
  %phi.call = phi i64 [ %.0.lcssa.i48, %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit53 ], [ %1, %bb.c ], [ %.011.i, %.lr.ph.i ] ; 4 uses
  store i64 %.0.lcssa.i.sink, ptr %2, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !136
  %i.p = icmp eq i64 %phi.call, %1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.q = icmp ne i64 %.0.lcssa.i.sink, 0
  br label %bb.r

bb.f:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %phi.call
  %i.s = load i8, ptr %i.r, align 1, !tbaa !54
  %i.t = icmp eq i8 %i.s, 46
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = add i64 %phi.call, 1                     ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = icmp ult i64 %i.u, %1
  br i1 %i.w, label %.lr.ph.i56, label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59

.lr.ph.i56:                                       ; preds = %bb.g, %bb.h
  %.011.i57 = phi i64 [ %i.ab, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.011.i57
  %i.y = load i8, ptr %i.x, align 1, !tbaa !54
  %i.z = add i8 %i.y, -48
  %i.aa = icmp ult i8 %i.z, 10
  br i1 %i.aa, label %bb.h, label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59

bb.h:                                             ; preds = %.lr.ph.i56
  %i.ab = add i64 %.011.i57, 1                    ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %i.ab, %1
  br i1 %exitcond.not.i58, label %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59, label %.lr.ph.i56, !llvm.loop !398

_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59: ; preds = %.lr.ph.i56, %bb.h, %bb.g
  %.0.lcssa.i54 = phi i64 [ %i.u, %bb.g ], [ %1, %bb.h ], [ %.011.i57, %.lr.ph.i56 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.ad = sub i64 %.0.lcssa.i54, %i.u
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i55, align 8, !tbaa !136
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59, %bb.f
  %.143 = phi i64 [ %.0.lcssa.i54, %_ZN5arrow12_GLOBAL__N_114ParseDigitsRunEPKcmmPSt17basic_string_viewIcSt11char_traitsIcEE.exit59 ], [ %phi.call, %bb.f ] ; 4 uses
  %i.ae = icmp eq i64 %.0.lcssa.i.sink, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !147
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = icmp eq i64 %.143, %1
  br i1 %i.ai, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.143
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !54
  %i.al = and i8 %i.ak, -33
  %i.am = icmp eq i8 %i.al, 69
  br i1 %i.am, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.an = add i64 %.143, 1                        ; 3 uses
  %.not = icmp eq i64 %i.an, %1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !54
  %i.aq = icmp eq i8 %i.ap, 43
  %i.ar = add i64 %.143, 2
  %spec.select = select i1 %i.aq, i64 %i.ar, i64 %i.an
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2 = phi i64 [ %1, %bb.m ], [ %spec.select, %bb.n ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 37
  store i8 1, ptr %i.as, align 1, !tbaa !151
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.2
  %i.au = sub i64 %1, %.2
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.p, label %_ZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !399

bb.p:                                             ; preds = %bb.o
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %_ZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow9Int32TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !300
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %_ZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ba = call noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr noundef nonnull %i.at, i64 noundef %i.au, ptr noundef nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, %bb.j, %bb.k, %bb.l, %bb.a, %bb.e
  %.1 = phi i1 [ false, %bb.a ], [ %i.q, %bb.e ], [ true, %bb.k ], [ false, %bb.j ], [ %i.ba, %_ZN5arrow8internal10ParseValueINS_9Int32TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit ], [ false, %bb.l ]
  ret i1 %.1
}

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZN5arrow14BasicDecimal3218GetScaleMultiplierEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(37) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(37) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317 ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !136    ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !300
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !338
  %i.m = or i32 %i.l, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.j, i32 noundef %i.m)
          to label %_ZZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit unwind label %bb.f

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #26
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.f, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.pn6 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, label %bb.b, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %3, 2
  %i.d = load i8, ptr %2, align 1, !tbaa !54      ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !54
  switch i8 %i.g, label %.thread [
    i8 120, label %bb.d
    i8 88, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = add i64 %3, -3                           ; 8 uses
  %i.j = icmp ult i64 %i.i, 8
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !28

.lr.ph.i:                                         ; preds = %bb.d
  %i.k = load i8, ptr %i.h, align 1, !tbaa !54    ; 5 uses
  %i.l = add i8 %i.k, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.l, 10
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.m = zext nneg i8 %i.l to i32
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph.i
  %i.n = add i8 %i.k, -65
  %or.cond39.i = icmp ult i8 %i.n, 6
  br i1 %or.cond39.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i8 %i.k to i32
  %i.p = add nsw i32 %i.o, -55
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = add i8 %i.k, -97
  %or.cond40.i = icmp ult i8 %i.q, 6
  br i1 %or.cond40.i, label %bb.i, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !417

bb.i:                                             ; preds = %bb.h
  %i.r = zext nneg i8 %i.k to i32
  %i.s = add nsw i32 %i.r, -87
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  %.pn.i = phi i32 [ %i.m, %bb.e ], [ %i.p, %bb.g ], [ %i.s, %bb.i ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, 0
  br i1 %exitcond.not.i, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.j
  %i.t = shl nsw i32 %.pn.i, 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !54    ; 5 uses
  %i.w = add i8 %i.v, -48                         ; 2 uses
  %or.cond.i.1 = icmp ult i8 %i.w, 10
  br i1 %or.cond.i.1, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.1
  %i.x = add i8 %i.v, -65
  %or.cond39.i.1 = icmp ult i8 %i.x, 6
  br i1 %or.cond39.i.1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = add i8 %i.v, -97
  %or.cond40.i.1 = icmp ult i8 %i.y, 6
  br i1 %or.cond40.i.1, label %bb.m, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !417

bb.m:                                             ; preds = %bb.l
  %i.z = zext nneg i8 %i.v to i32
  %i.aa = add nsw i32 %i.z, -87
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ab = zext nneg i8 %i.v to i32
  %i.ac = add nsw i32 %i.ab, -55
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.1
  %i.ad = zext nneg i8 %i.w to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.pn.i.1 = phi i32 [ %i.ad, %bb.o ], [ %i.ac, %bb.n ], [ %i.aa, %bb.m ]
  %.1.i.1 = or i32 %.pn.i.1, %i.t                 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.i, 1
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.p
  %i.ae = shl nsw i32 %.1.i.1, 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !54  ; 5 uses
  %i.ah = add i8 %i.ag, -48                       ; 2 uses
  %or.cond.i.2 = icmp ult i8 %i.ah, 10
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal13ParseUnsignedEPKcmPj:bb.a
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i32 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %.not141 = icmp eq i64 %1, 6
  br i1 %.not141, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !54
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i32 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %.not142 = icmp eq i64 %1, 7
  br i1 %.not142, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !54
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i32 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %.not143 = icmp eq i64 %1, 8
  br i1 %.not143, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !54
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i32 %i.bb, 10
  %i.bg = add i64 %1, -9                          ; 2 uses
  %i.bh = icmp ult i8 %i.be, 10
  %i.bi = zext i8 %i.be to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi            ; 3 uses
  br i1 %i.bh, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %.not144 = icmp eq i64 %i.bg, 0
  br i1 %.not144, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %.critedge, label %bb.u, !prof !132

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !54
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %.not145 = icmp ne i64 %i.bg, 1
  %i.bn = icmp ugt i8 %i.bm, 9
  %or.cond = or i1 %.not145, %i.bn
  br i1 %or.cond, label %.critedge, label %bb.v, !prof !419

bb.v:                                             ; preds = %bb.u
  %i.bo = mul nuw i32 %i.bj, 10                   ; 3 uses
  %i.bp = zext nneg i8 %i.bm to i32
  %i.bq = add i32 %i.bo, %i.bp                    ; 2 uses
  %.not147 = icmp ult i32 %i.bq, %i.bo
  %.146 = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bo)
  br i1 %.not147, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10105 = phi i32 [ %.146, %bb.v ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10105, ptr %2, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.t, %bb.v, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.w
  %.10 = phi i1 [ false, %bb.b ], [ true, %bb.w ], [ false, %bb.v ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.t ], [ false, %bb.u ]
  ret i1 %.10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(8) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSO_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSO_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !121
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !136
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS9_EEDaSO_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS9_EEDaSO_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSO_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #26
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISB_EEDaSO_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISB_EEDaSO_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS9_EEDaSO_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317 ; 3 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !136    ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISB_EEDaSO_.exit
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !300
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !338
  %i.r = or i32 %i.q, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISD_EEDaSO_.exit unwind label %bb.h

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISB_EEDaSO_.exit
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #26
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.k, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISD_EEDaSO_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISD_EEDaSO_.exit: ; preds = %bb.b, %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317
  %i.v = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(8) %5) #26
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 1 dereferenceable(8) %5, i64 noundef %i.v)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISF_EEDaSO_.exit unwind label %bb.i ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISF_EEDaSO_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISD_EEDaSO_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISF_EEDaSO_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSO_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS9_EEDaSO_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISD_EEDaSO_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISF_EEDaSO_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.h, %bb.f, %bb.j
  %.pn15 = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.x, %bb.e ], [ %i.y, %bb.f ], [ %i.z, %bb.g ], [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !399

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !300
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit, label %bb.e, !prof !132

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ugt i64 %1, 2
  br i1 %i.f, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr %0, align 1, !tbaa !54
  %i.h = icmp eq i8 %i.g, 48
  br i1 %i.h, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !54
  switch i8 %i.j, label %bb.n [
    i8 120, label %bb.h
    i8 88, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = add i64 %1, -3                           ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit, !prof !28

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.m
  %.03049.i.i = phi i64 [ %i.v, %bb.m ], [ 0, %bb.h ] ; 3 uses
  %.03148.i.i = phi i64 [ %.1.i.i, %bb.m ], [ 0, %bb.h ]
  %i.n = shl i64 %.03148.i.i, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.03049.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !54    ; 5 uses
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.r = add i8 %i.p, -65
  %or.cond42.i.i = icmp ult i8 %i.r, 6
  br i1 %or.cond42.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %narrow40.i.i = add nuw nsw i8 %i.p, 9
  %i.s = and i8 %narrow40.i.i, 31
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.t = add i8 %i.p, -97
  %or.cond43.i.i = icmp ult i8 %i.t, 6
  br i1 %or.cond43.i.i, label %bb.l, label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit

bb.l:                                             ; preds = %bb.k
  %narrow.i.i = add nuw nsw i8 %i.p, 9
  %i.u = and i8 %narrow.i.i, 31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %.lr.ph.i.i
  %.pn.in.i.i = phi i8 [ %i.u, %bb.l ], [ %i.s, %bb.j ], [ %i.q, %.lr.ph.i.i ]
  %.pn.i.i = zext nneg i8 %.pn.in.i.i to i64
  %.1.i.i = or i64 %i.n, %.pn.i.i                 ; 2 uses
  %i.v = add nuw nsw i64 %.03049.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.03049.i.i, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !420

._crit_edge.i.i:                                  ; preds = %bb.m
  store i64 %.1.i.i, ptr %2, align 8, !tbaa !121
  br label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.e
  %scevgep.i = getelementptr i8, ptr %0, i64 %1
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.01722.i = phi i64 [ %1, %bb.n ], [ %i.y, %bb.p ] ; 2 uses
  %.01821.i = phi ptr [ %0, %bb.n ], [ %i.z, %bb.p ] ; 3 uses
  %i.w = load i8, ptr %.01821.i, align 1, !tbaa !54
  %i.x = icmp eq i8 %i.w, 48
  br i1 %i.x, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.y = add i64 %.01722.i, -1                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01821.i, i64 1
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %.critedge.i, label %bb.o, !llvm.loop !421

.critedge.i:                                      ; preds = %bb.p, %bb.o
  %.018.lcssa.i = phi ptr [ %scevgep.i, %bb.p ], [ %.01821.i, %bb.o ]
  %.017.lcssa.i = phi i64 [ 0, %bb.p ], [ %.01722.i, %bb.o ]
  %i.aa = tail call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i, i64 noundef %.017.lcssa.i, ptr noundef %2)
  br label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit

_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit: ; preds = %bb.k, %bb.d, %bb.h, %._crit_edge.i.i, %.critedge.i
  %.0.i = phi i1 [ %i.aa, %.critedge.i ], [ false, %bb.d ], [ false, %bb.h ], [ true, %._crit_edge.i.i ], [ false, %bb.k ]
  ret i1 %.0.i
}

declare void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA90_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(90) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !300
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !300
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZN5arrow11IntegerTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !54
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext nneg i8 %i.c to i64                 ; 2 uses
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not247 = icmp eq i64 %1, 1
  br i1 %.not247, label %bb.aq, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !54
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext nneg i8 %i.h to i64
  %i.l = add nuw nsw i64 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not248 = icmp eq i64 %1, 2
  br i1 %.not248, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !54
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i64 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext nneg i8 %i.o to i64
  %i.s = add nuw nsw i64 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %.not249 = icmp eq i64 %1, 3
  br i1 %.not249, label %bb.aq, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !54
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i64 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext nneg i8 %i.v to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not250 = icmp eq i64 %1, 4
  br i1 %.not250, label %bb.aq, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !54
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i64 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext nneg i8 %i.ac to i64
  %i.ag = add nuw nsw i64 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %.thread
end_hunk_1
