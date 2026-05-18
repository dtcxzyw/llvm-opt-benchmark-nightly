inline.NumInlined: 1554
inline.NumDeleted: 561
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE16FromPositiveRealIdEENS_6ResultIS2_EET_ii:bb.a

bb.u:                                             ; preds = %bb.t
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  br label %_ZN5arrow6StatusD2Ev.exit43

_ZN5arrow6StatusD2Ev.exit43:                      ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  store ptr null, ptr %0, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN5arrow6StatusD2Ev.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit: ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit, %bb.w
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias nonnull writable align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store double %1, ptr %i.a, align 8, !tbaa !58
  store i32 %2, ptr %i.b, align 4, !tbaa !3
  store i32 %3, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !450
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5arrow13DecimalTraitsINS_15BasicDecimal256EE9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(14) @.str.34, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.36), !noalias !450
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !16, !noalias !450 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !54, !noalias !450
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !16, !noalias !450 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !54, !noalias !450
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !450
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !450
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 8 ; 8 uses
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 8 uses
  %.sroa.017.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.418.0.copyload = load i64, ptr %.sroa.418.0..sroa_idx, align 8 ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.519.0.copyload = load i64, ptr %.sroa.519.0..sroa_idx, align 8 ; 2 uses
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.620.0.copyload = load i64, ptr %.sroa.620.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.sroa.620.0.copyload, 0
  %i.c = icmp eq i64 %.sroa.519.0.copyload, 0
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  %i.d = icmp eq i64 %.sroa.418.0.copyload, 0
  %or.cond21 = select i1 %or.cond, i1 %i.d, i1 false
  %i.e = icmp ult i64 %.sroa.017.0.copyload, 16777215
  %or.cond22 = select i1 %or.cond21, i1 %i.e, i1 false
  br i1 %or.cond22, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = sub nsw i32 0, %1                        ; 2 uses
  %i.g = add i32 %1, 76
  %i.h = icmp ult i32 %i.g, 153
  br i1 %i.h, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 304
  %i.l = load float, ptr %i.k, align 4, !tbaa !47
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit

bb.e:                                             ; preds = %bb.c
  %i.m = sitofp i32 %i.f to float
  %i.n = tail call noundef float @powf(float noundef 1.000000e+01, float noundef %i.m) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi float [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  %i.o = icmp eq i64 %.sroa.620.0.copyload, 0
  %i.p = icmp eq i64 %.sroa.519.0.copyload, 0
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  %i.r = uitofp i64 %.sroa.418.0.copyload to float
  %i.s = fmul nnan float %i.r, f0x5F800000
  %i.t = select i1 %i.q, float %i.s, float +inf
  %i.u = uitofp i64 %.sroa.017.0.copyload to float
  %i.v = fadd nnan float %i.t, %i.u
  %i.w = fmul float %i.v, %.0.i.i
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.sroa.013.0.copyload = load i64, ptr %2, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.515.0.copyload = load i64, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.616.0.copyload = load i64, ptr %.sroa.616.0..sroa_idx, align 8
  %i.x = icmp eq i64 %.sroa.616.0.copyload, 0
  %i.y = icmp eq i64 %.sroa.515.0.copyload, 0
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  %i.aa = uitofp i64 %.sroa.414.0.copyload to float
  %i.ab = fmul nnan float %i.aa, f0x5F800000
  %i.ac = select i1 %i.z, float %i.ab, float +inf
  %i.ad = uitofp i64 %.sroa.013.0.copyload to float
  %i.ae = fadd nnan float %i.ac, %i.ad
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.af = sub nsw i32 0, %1                       ; 2 uses
  %i.ag = icmp samesign ult i32 %1, 77
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !28

bb.g:                                             ; preds = %bb.f
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 304
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !47
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12

bb.h:                                             ; preds = %bb.f
  %i.al = sitofp i32 %i.af to float
  %i.am = call noundef float @powf(float noundef 1.000000e+01, float noundef %i.al) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12: ; preds = %bb.g, %bb.h
  %.0.i.i11 = phi float [ %i.ak, %bb.g ], [ %i.am, %bb.h ]
  %i.an = icmp eq i64 %.sroa.6.0.copyload, 0
  %i.ao = icmp eq i64 %.sroa.5.0.copyload, 0
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  %i.aq = uitofp i64 %.sroa.4.0.copyload to float
  %i.ar = fmul nnan float %i.aq, f0x5F800000
  %i.as = select i1 %i.ap, float %i.ar, float +inf
  %i.at = uitofp i64 %.sroa.0.0.copyload to float
  %i.au = fadd nnan float %i.as, %i.at
  %i.av = fmul float %i.au, %.0.i.i11
  %i.aw = fadd float %i.ae, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit
  %.0 = phi float [ %i.w, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit ], [ %i.aw, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12 ]
  ret float %.0
}

declare void @_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIdEET_RKNS_10Decimal256Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 8 ; 8 uses
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %i.a = load <4 x i64>, ptr %0, align 8          ; 4 uses
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shufflevector <4 x i64> %i.a, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.d = icmp eq <2 x i64> %i.c, zeroinitializer  ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %or.cond = select i1 %i.f, i1 %i.e, i1 false
  %i.g = extractelement <4 x i64> %i.a, i64 1
  %i.h = icmp eq i64 %i.g, 0
  %or.cond21 = select i1 %or.cond, i1 %i.h, i1 false
  %i.i = extractelement <4 x i64> %i.a, i64 0
  %i.j = icmp ult i64 %i.i, 9007199254740991
  %or.cond22 = select i1 %or.cond21, i1 %i.j, i1 false
  br i1 %or.cond22, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = sub nsw i32 0, %1                        ; 2 uses
  %i.l = add i32 %1, 76
  %i.m = icmp ult i32 %i.l, 153
  br i1 %i.m, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 608
  %i.q = load double, ptr %i.p, align 8, !tbaa !58
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit

bb.e:                                             ; preds = %bb.c
  %i.r = sitofp i32 %i.k to double
  %i.s = tail call double @pow(double noundef 1.000000e+01, double noundef %i.r) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi double [ %i.q, %bb.d ], [ %i.s, %bb.e ]
  %i.t = uitofp <4 x i64> %i.a to <4 x double>    ; 2 uses
  %i.u = fmul nnan <4 x double> %i.t, <double poison, double f0x43F0000000000000, double f0x47F0000000000000, double f0x4BF0000000000000> ; 3 uses
  %i.v = extractelement <4 x double> %i.u, i64 2
  %i.w = extractelement <4 x double> %i.u, i64 3
  %i.x = fadd double %i.v, %i.w
  %i.y = extractelement <4 x double> %i.u, i64 1
  %i.z = fadd double %i.y, %i.x
  %i.aa = extractelement <4 x double> %i.t, i64 0
  %i.ab = fadd double %i.z, %i.aa
  %i.ac = fmul double %i.ab, %.0.i.i
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.sroa.013.0.copyload = load i64, ptr %2, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.013.0.copyload.a = load i64, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.616.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx.a, align 8
  %4 = uitofp i64 %.sroa.616.0.copyload to double
  %5 = fmul nnan double %4, f0x4BF0000000000000
  %6 = uitofp i64 %.sroa.013.0.copyload.a to double
  %7 = fmul nnan double %6, f0x47F0000000000000
  %i.ad = fadd double %7, %5
  %8 = uitofp i64 %.sroa.414.0.copyload to double
  %9 = fmul nnan double %8, f0x43F0000000000000
  %i.ae = fadd double %9, %i.ad
  %i.af = uitofp i64 %.sroa.013.0.copyload to double
  %i.ag = fadd double %i.ae, %i.af
  %i.ah = load <4 x i64>, ptr %3, align 8
  %i.ai = sub nsw i32 0, %1                       ; 2 uses
  %i.aj = icmp samesign ult i32 %1, 77
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !28

bb.g:                                             ; preds = %bb.f
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 608
  %i.an = load double, ptr %i.am, align 8, !tbaa !58
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit12

bb.h:                                             ; preds = %bb.f
  %i.ao = sitofp i32 %i.ai to double
  %i.ap = call double @pow(double noundef 1.000000e+01, double noundef %i.ao) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit12

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit12: ; preds = %bb.g, %bb.h
  %.0.i.i11 = phi double [ %i.an, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = uitofp <4 x i64> %i.ah to <4 x double>  ; 2 uses
  %i.ar = fmul nnan <4 x double> %i.aq, <double poison, double f0x43F0000000000000, double f0x47F0000000000000, double f0x4BF0000000000000> ; 3 uses
  %i.as = extractelement <4 x double> %i.ar, i64 2
  %i.at = extractelement <4 x double> %i.ar, i64 3
  %i.au = fadd double %i.as, %i.at
  %i.av = extractelement <4 x double> %i.ar, i64 1
  %i.aw = fadd double %i.av, %i.au
  %i.ax = extractelement <4 x double> %i.aq, i64 0
  %i.ay = fadd double %i.aw, %i.ax
  %i.az = fmul double %i.ay, %.0.i.i11
  %i.ba = fadd double %i.ag, %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit12, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit
  %.0 = phi double [ %i.ac, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit ], [ %i.ba, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit12 ]
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn nounwind }
attributes #31 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN5arrow6StatusE", !9, i64 0}
!9 = !{!"p1 _ZTSN5arrow6Status5StateE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN5arrow6Status2OKEv: argument 0"}
!13 = distinct !{!13, !"_ZN5arrow6Status2OKEv"}
!14 = !{!15, !4, i64 0}
!15 = !{!"_ZTSN5arrow17SmallBasicDecimalIiEE", !4, i64 0}
!16 = !{!17, !19, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !20, i64 8, !5, i64 16}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN5arrow9Decimal3210FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!23 = distinct !{!23, !"_ZN5arrow9Decimal3210FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!24 = !{!17, !20, i64 8}
!25 = !{!26, !22}
!26 = distinct !{!26, !27, !"_ZN5arrow9Decimal3210FromStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!27 = distinct !{!27, !"_ZN5arrow9Decimal3210FromStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!28 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!29 = !{!30, !32, i64 1}
!30 = !{!"_ZTSN5arrow6Status5StateE", !31, i64 0, !32, i64 1, !17, i64 8, !33, i64 40}
!31 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!32 = !{!"bool", !5, i64 0}
!33 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !34, i64 0}
!34 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !36, i64 8}
!35 = !{!"p1 _ZTSN5arrow12StatusDetailE", !10, i64 0}
!36 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN5arrow9Decimal3210FromStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!43 = distinct !{!43, !"_ZN5arrow9Decimal3210FromStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal32ENS0_23Decimal32RealConversionEE8FromRealIfEENS_6ResultIS2_EET_ii: argument 0"}
!46 = distinct !{!46, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal32ENS0_23Decimal32RealConversionEE8FromRealIfEENS_6ResultIS2_EET_ii"}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !5, i64 0}
!49 = !{!50, !52, !45}
!50 = distinct !{!50, !51, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA15_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!51 = distinct !{!51, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA15_S2_EEES0_NS_10StatusCodeEDpOT_"}
!52 = distinct !{!52, !53, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA15_S2_EEES0_DpOT_: argument 0"}
!53 = distinct !{!53, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA15_S2_EEES0_DpOT_"}
!54 = !{!5, !5, i64 0}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal32ENS0_23Decimal32RealConversionEE8FromRealIdEENS_6ResultIS2_EET_ii: argument 0"}
!57 = distinct !{!57, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal32ENS0_23Decimal32RealConversionEE8FromRealIdEENS_6ResultIS2_EET_ii"}
!58 = !{!59, !59, i64 0}
!59 = !{!"double", !5, i64 0}
!60 = !{!61, !63, !56}
!61 = distinct !{!61, !62, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA15_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!62 = distinct !{!62, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA15_S2_EEES0_NS_10StatusCodeEDpOT_"}
!63 = distinct !{!63, !64, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA15_S2_EEES0_DpOT_: argument 0"}
!64 = distinct !{!64, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA15_S2_EEES0_DpOT_"}
!65 = !{!18, !19, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!69, !20, i64 0}
!69 = !{!"_ZTSN5arrow17SmallBasicDecimalIlEE", !20, i64 0}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN5arrow9Decimal6410FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!72 = distinct !{!72, !"_ZN5arrow9Decimal6410FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!73 = !{!74, !71}
!74 = distinct !{!74, !75, !"_ZN5arrow9Decimal6410FromStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!75 = distinct !{!75, !"_ZN5arrow9Decimal6410FromStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN5arrow9Decimal6410FromStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!78 = distinct !{!78, !"_ZN5arrow9Decimal6410FromStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE8FromRealIfEENS_6ResultIS2_EET_ii: argument 0"}
end_hunk_0
