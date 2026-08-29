Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/decimal?download=true
inline.NumInlined: 1474
inline.NumDeleted: 558
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE16FromPositiveRealIdEENS_6ResultIS2_EET_ii:bb.a
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN5arrow6StatusD2Ev.exit43

_ZN5arrow6StatusD2Ev.exit43:                      ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  store ptr null, ptr %0, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit: ; preds = %bb.e, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit, %bb.t
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias nonnull writable align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store double %1, ptr %i.a, align 8, !tbaa !53
  store i32 %2, ptr %i.b, align 4, !tbaa !142
  store i32 %3, ptr %i.c, align 4, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !490
  call void @_ZN5arrow4util13StringBuilderIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.28, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.30, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5arrow13DecimalTraitsINS_15BasicDecimal256EE9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(14) @.str.31, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.32, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.33), !noalias !490
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !10, !noalias !490 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !490
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !10, !noalias !490 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !49, !noalias !490
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !490
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !490
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
  br i1 %i.h, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 304
  %i.l = load float, ptr %i.k, align 4, !tbaa !42
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit

bb.e:                                             ; preds = %bb.c
  %i.m = sitofp i32 %i.f to float
  %i.n = tail call noundef float @powf(float noundef 1.000000e+01, float noundef %i.m) #24
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
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
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 304
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !42
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12

bb.h:                                             ; preds = %bb.f
  %i.al = sitofp i32 %i.af to float
  %i.am = call noundef float @powf(float noundef 1.000000e+01, float noundef %i.al) #24
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit
  %.0 = phi float [ %i.w, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit ], [ %i.aw, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12 ]
  ret float %.0
}

declare void @_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIdEET_RKNS_10Decimal256Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 16 ; 6 uses
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %i.a = load <4 x i64>, ptr %0, align 8          ; 3 uses
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = shufflevector <4 x i64> %i.a, <4 x i64> <i64 0, i64 0, i64 0, i64 poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0> ; 2 uses
  %5 = shufflevector <4 x i64> %i.a, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 9007199254740991>, <4 x i32> <i32 3, i32 2, i32 1, i32 7> ; 2 uses
  %6 = icmp eq <4 x i64> %4, %5
  %7 = icmp ult <4 x i64> %4, %5
  %8 = shufflevector <4 x i1> %6, <4 x i1> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %9 = freeze <4 x i1> %8
  %10 = bitcast <4 x i1> %9 to i4
  %11 = icmp eq i4 %10, -1
  br i1 %11, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = sub nsw i32 0, %1                        ; 2 uses
  %i.d = add i32 %1, 76
  %i.e = icmp ult i32 %i.d, 153
  br i1 %i.e, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 608
  %i.i = load double, ptr %i.h, align 8, !tbaa !53
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit

bb.e:                                             ; preds = %bb.c
  %i.j = sitofp i32 %i.c to double
  %i.k = tail call double @pow(double noundef 1.000000e+01, double noundef %i.j) #24
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi double [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  %i.l = uitofp <4 x i64> %i.a to <4 x double>    ; 2 uses
  %i.m = fmul nnan <4 x double> %i.l, <double poison, double f0x43F0000000000000, double f0x47F0000000000000, double f0x4BF0000000000000> ; 3 uses
  %i.n = extractelement <4 x double> %i.m, i64 2
  %i.o = extractelement <4 x double> %i.m, i64 3
  %i.p = fadd double %i.n, %i.o
  %i.q = extractelement <4 x double> %i.m, i64 1
  %i.r = fadd double %i.q, %i.p
  %i.s = extractelement <4 x double> %i.l, i64 0
  %i.t = fadd double %i.r, %i.s
  %i.u = fmul double %i.t, %.0.i.i
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load <2 x i64>, ptr %.sroa.515.0..sroa_idx, align 16
  %i.w = uitofp <2 x i64> %i.v to <2 x double>
  %i.x = fmul nnan <2 x double> %i.w, <double f0x47F0000000000000, double f0x4BF0000000000000> ; 2 uses
  %shift = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.x, %shift
  %i.y = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.z = load <2 x i64>, ptr %2, align 16
  %i.aa = uitofp <2 x i64> %i.z to <2 x double>   ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 1
  %i.ac = fmul nnan double %i.ab, f0x43F0000000000000
  %i.ad = fadd double %i.ac, %i.y
  %i.ae = extractelement <2 x double> %i.aa, i64 0
  %i.af = fadd double %i.ad, %i.ae
  %i.ag = load <4 x i64>, ptr %3, align 8
  %i.ah = sub nsw i32 0, %1                       ; 2 uses
  %i.ai = icmp samesign ult i32 %1, 77
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 608
  %i.am = load double, ptr %i.al, align 8, !tbaa !53
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit12

bb.h:                                             ; preds = %bb.f
  %i.an = sitofp i32 %i.ah to double
  %i.ao = call double @pow(double noundef 1.000000e+01, double noundef %i.an) #24
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit12

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit12: ; preds = %bb.g, %bb.h
  %.0.i.i11 = phi double [ %i.am, %bb.g ], [ %i.ao, %bb.h ]
  %i.ap = uitofp <4 x i64> %i.ag to <4 x double>  ; 2 uses
  %i.aq = fmul nnan <4 x double> %i.ap, <double poison, double f0x43F0000000000000, double f0x47F0000000000000, double f0x4BF0000000000000> ; 3 uses
  %i.ar = extractelement <4 x double> %i.aq, i64 2
  %i.as = extractelement <4 x double> %i.aq, i64 3
  %i.at = fadd double %i.ar, %i.as
  %i.au = extractelement <4 x double> %i.aq, i64 1
  %i.av = fadd double %i.au, %i.at
  %i.aw = extractelement <4 x double> %i.ap, i64 0
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = fmul double %i.ax, %.0.i.i11
  %i.az = fadd double %i.af, %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit12, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit
  %.0 = phi double [ %i.u, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit ], [ %i.az, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit12 ]
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN5arrow17SmallBasicDecimalIiEE", !5, i64 0}
!10 = !{!11, !13, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !15, i64 8, !6, i64 16}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN5arrow9Decimal3210FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!18 = distinct !{!18, !"_ZN5arrow9Decimal3210FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!19 = !{!11, !15, i64 8}
!20 = !{!21, !17}
!21 = distinct !{!21, !22, !"_ZN5arrow9Decimal3210FromStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!22 = distinct !{!22, !"_ZN5arrow9Decimal3210FromStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!25 = distinct !{!25, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow6StatusE", !28, i64 0}
!28 = !{!"p1 _ZTSN5arrow6Status5StateE", !14, i64 0}
!29 = !{!24, !21, !17}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
end_hunk_0
