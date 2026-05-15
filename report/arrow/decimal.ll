inline.NumInlined: 1554
inline.NumDeleted: 561
begin_hunk_0_@_ZN5arrow10Decimal1288FromRealEfii:bb.a
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  br label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit9.i

_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit9.i:   ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !105
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE8FromRealIfEENS_6ResultIS2_EET_ii.exit

bb.t:                                             ; preds = %bb.i
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE16FromPositiveRealIfEENS_6ResultIS2_EET_ii(ptr dead_on_unwind noalias writable align 8 %0, float noundef %1, i32 noundef %2, i32 noundef %3)
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE8FromRealIfEENS_6ResultIS2_EET_ii.exit

_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE8FromRealIfEENS_6ResultIS2_EET_ii.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.h, %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit9.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal1288FromRealEdii(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.11") align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.arrow::Result.11", align 8  ; 11 uses
  %7 = alloca %"class.arrow::Decimal128", align 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %1, ptr %i.a, align 8, !tbaa !58, !noalias !113
  %i.b = tail call double @llvm.fabs.f64(double %1)
  %i.c = fcmp ueq double %i.b, +inf
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !116
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRdRA15_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.31), !noalias !116
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d, !noalias !113

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %4, align 8, !tbaa !16, !noalias !116 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA15_S2_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.e, align 8, !tbaa !54, !noalias !116
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27, !noalias !113
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA15_S2_EEES0_DpOT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !16, !noalias !116 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !54, !noalias !116
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27, !noalias !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i

common.resume.i:                                  ; preds = %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i ], [ %i.ab, %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !116
  br label %common.resume.i

_ZN5arrow6Status7InvalidIJRA16_KcRdRA15_S2_EEES0_DpOT_.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !116
  call void @_ZN5arrow6ResultINS_10Decimal128EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.o = load ptr, ptr %5, align 8, !tbaa !7, !noalias !113 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.e, !prof !28

bb.e:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA16_KcRdRA15_S2_EEES0_DpOT_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29, !range !38, !noundef !39
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.f, %bb.e, %_ZN5arrow6Status7InvalidIJRA16_KcRdRA15_S2_EEES0_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !113
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE8FromRealIdEENS_6ResultIS2_EET_ii.exit

bb.g:                                             ; preds = %bb.a
  %i.s = fcmp oeq double %1, 0.000000e+00
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !113
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE8FromRealIdEENS_6ResultIS2_EET_ii.exit

bb.i:                                             ; preds = %bb.g
  %i.t = fcmp olt double %1, 0.000000e+00
  br i1 %i.t, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !113
  %i.u = fneg double %1
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE16FromPositiveRealIdEENS_6ResultIS2_EET_ii(ptr dead_on_unwind noalias nonnull writable align 8 %6, double noundef %i.u, i32 noundef %2, i32 noundef %3), !noalias !113
  %i.v = load ptr, ptr %6, align 8, !tbaa !7, !noalias !113
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.l, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6ResultINS_10Decimal128EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !113
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load <2 x i64>, ptr %i.x, align 8, !noalias !113
  store <2 x i64> %i.y, ptr %7, align 16, !noalias !113
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.m unwind label %bb.n, !noalias !113

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %0, align 8, !tbaa !7, !alias.scope !113
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !113
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !113
  %i.ac = load ptr, ptr %6, align 8, !tbaa !7, !noalias !113 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i, label %bb.o, !prof !28

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29, !range !38, !noalias !113, !noundef !39
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #26, !noalias !113
  br label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i

_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i:    ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !113
  br label %common.resume.i

bb.q:                                             ; preds = %bb.m, %bb.k
  %i.ag = load ptr, ptr %6, align 8, !tbaa !7, !noalias !113 ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i8.i, label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit9.i, label %bb.r, !prof !28

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29, !range !38, !noundef !39
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit9.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  br label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit9.i

_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit9.i:   ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !113
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE8FromRealIdEENS_6ResultIS2_EET_ii.exit

bb.t:                                             ; preds = %bb.i
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE16FromPositiveRealIdEENS_6ResultIS2_EET_ii(ptr dead_on_unwind noalias writable align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3)
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE8FromRealIdEENS_6ResultIS2_EET_ii.exit

_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE8FromRealIdEENS_6ResultIS2_EET_ii.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.h, %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit9.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK5arrow10Decimal1287ToFloatEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %4 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %5 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %6 = alloca %"class.arrow::Decimal128", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !121  ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.d = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  %i.e = icmp slt i32 %1, 1
  %.val14.pre.i.i = load i64, ptr %6, align 8, !tbaa !121 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val15.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !121 ; 2 uses
  br i1 %i.e, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.f = sitofp i64 %.val15.pre.i.i to float
  %i.g = fmul nnan float %i.f, f0x5F800000
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %.val15.pre.i.i, 0
  %i.i = icmp ult i64 %.val14.pre.i.i, 16777216
  %or.cond.i.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.val15.i.i = phi float [ %i.g, %._crit_edge.i.i ], [ 0.000000e+00, %bb.c ]
  %i.j = sub nsw i32 0, %1                        ; 2 uses
  %i.k = add i32 %1, 76
  %i.l = icmp ult i32 %i.k, 153
  br i1 %i.l, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 304
  %i.p = load float, ptr %i.o, align 4, !tbaa !47
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = sitofp i32 %i.j to float
  %i.r = call noundef float @powf(float noundef 1.000000e+01, float noundef %i.q) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit.i.i

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi float [ %i.p, %bb.e ], [ %i.r, %bb.f ]
  %i.s = uitofp i64 %.val14.pre.i.i to float
  %i.t = fadd nnan float %.val15.i.i, %i.s
  %i.u = fmul float %i.t, %.0.i.i.i.i
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIfEET_RKNS_10Decimal128Ei.exit.i

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZNK5arrow15BasicDecimal12819GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.sroa.019.0.copyload.i.i = load i64, ptr %4, align 8
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.420.0.copyload.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i.i, align 8
  %i.v = sitofp i64 %.sroa.420.0.copyload.i.i to float
  %i.w = fmul nnan float %i.v, f0x5F800000
  %i.x = uitofp i64 %.sroa.019.0.copyload.i.i to float
  %i.y = fadd nnan float %i.w, %i.x
  %.sroa.0.0.copyload.i.i = load i64, ptr %5, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.z = sub nsw i32 0, %1                        ; 2 uses
  %i.aa = icmp samesign ult i32 %1, 77
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 304
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !47
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit18.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = sitofp i32 %i.z to float
  %i.ag = call noundef float @powf(float noundef 1.000000e+01, float noundef %i.af) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit18.i.i

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit18.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i17.i.i = phi float [ %i.ae, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = sitofp i64 %.sroa.4.0.copyload.i.i to float
  %i.ai = fmul nnan float %i.ah, f0x5F800000
  %i.aj = uitofp i64 %.sroa.0.0.copyload.i.i to float
  %i.ak = fadd nnan float %i.ai, %i.aj
  %i.al = fmul float %i.ak, %.0.i.i17.i.i
  %i.am = fadd float %i.y, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIfEET_RKNS_10Decimal128Ei.exit.i

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIfEET_RKNS_10Decimal128Ei.exit.i: ; preds = %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit18.i.i, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit.i.i
  %.0.i.i = phi float [ %i.u, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit.i.i ], [ %i.am, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit18.i.i ]
  %i.an = fneg float %.0.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE6ToRealIfEET_RKS2_i.exit

bb.j:                                             ; preds = %bb.a
  %i.ao = icmp slt i32 %1, 1
  %.val14.pre.i5.i = load i64, ptr %0, align 8, !tbaa !121 ; 2 uses
  br i1 %i.ao, label %._crit_edge.i21.i, label %bb.k

._crit_edge.i21.i:                                ; preds = %bb.j
  %i.ap = uitofp nneg i64 %i.b to float
  %i.aq = fmul nnan float %i.ap, f0x5F800000
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp eq i64 %i.b, 0
  %i.as = icmp ult i64 %.val14.pre.i5.i, 16777216
  %or.cond.i8.i = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond.i8.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k, %._crit_edge.i21.i
  %.val15.i18.i = phi float [ %i.aq, %._crit_edge.i21.i ], [ 0.000000e+00, %bb.k ]
  %i.at = sub nsw i32 0, %1                       ; 2 uses
  %i.au = add i32 %1, 76
  %i.av = icmp ult i32 %i.au, 153
  br i1 %i.av, label %bb.m, label %bb.n, !prof !28

bb.m:                                             ; preds = %bb.l
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 304
  %i.az = load float, ptr %i.ay, align 4, !tbaa !47
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit.i19.i

bb.n:                                             ; preds = %bb.l
  %i.ba = sitofp i32 %i.at to float
  %i.bb = tail call noundef float @powf(float noundef 1.000000e+01, float noundef %i.ba) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit.i19.i

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit.i19.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i20.i = phi float [ %i.az, %bb.m ], [ %i.bb, %bb.n ]
  %i.bc = uitofp i64 %.val14.pre.i5.i to float
  %i.bd = fadd nnan float %.val15.i18.i, %i.bc
  %i.be = fmul float %i.bd, %.0.i.i.i20.i
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE6ToRealIfEET_RKS2_i.exit

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_ZNK5arrow15BasicDecimal12819GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.sroa.019.0.copyload.i9.i = load i64, ptr %2, align 8
  %.sroa.420.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.420.0.copyload.i11.i = load i64, ptr %.sroa.420.0..sroa_idx.i10.i, align 8
  %i.bf = sitofp i64 %.sroa.420.0.copyload.i11.i to float
  %i.bg = fmul nnan float %i.bf, f0x5F800000
  %i.bh = uitofp i64 %.sroa.019.0.copyload.i9.i to float
  %i.bi = fadd nnan float %i.bg, %i.bh
  %.sroa.0.0.copyload.i12.i = load i64, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i14.i = load i64, ptr %.sroa.4.0..sroa_idx.i13.i, align 8
  %i.bj = sub nsw i32 0, %1                       ; 2 uses
  %i.bk = icmp samesign ult i32 %1, 77
  br i1 %i.bk, label %bb.p, label %bb.q, !prof !28

bb.p:                                             ; preds = %bb.o
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 304
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !47
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit18.i15.i

bb.q:                                             ; preds = %bb.o
  %i.bp = sitofp i32 %i.bj to float
  %i.bq = call noundef float @powf(float noundef 1.000000e+01, float noundef %i.bp) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit18.i15.i

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit18.i15.i: ; preds = %bb.q, %bb.p
  %.0.i.i17.i16.i = phi float [ %i.bo, %bb.p ], [ %i.bq, %bb.q ]
  %i.br = sitofp i64 %.sroa.4.0.copyload.i14.i to float
  %i.bs = fmul nnan float %i.br, f0x5F800000
  %i.bt = uitofp i64 %.sroa.0.0.copyload.i12.i to float
  %i.bu = fadd nnan float %i.bs, %i.bt
  %i.bv = fmul float %i.bu, %.0.i.i17.i16.i
  %i.bw = fadd float %i.bi, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE6ToRealIfEET_RKS2_i.exit

_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE6ToRealIfEET_RKS2_i.exit: ; preds = %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIfEET_RKNS_10Decimal128Ei.exit.i, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit.i19.i, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit18.i15.i
  %.0.i = phi float [ %i.an, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIfEET_RKNS_10Decimal128Ei.exit.i ], [ %i.be, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit.i19.i ], [ %i.bw, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal128Ei.exit18.i15.i ]
  ret float %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK5arrow10Decimal1288ToDoubleEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %4 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %5 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %6 = alloca %"class.arrow::Decimal128", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !121  ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.d = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  %i.e = icmp slt i32 %1, 1
  %.val14.pre.i.i = load i64, ptr %6, align 8, !tbaa !121 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val15.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !121 ; 2 uses
  br i1 %i.e, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.f = sitofp i64 %.val15.pre.i.i to double
  %i.g = fmul nnan double %i.f, f0x43F0000000000000
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %.val15.pre.i.i, 0
  %i.i = icmp ult i64 %.val14.pre.i.i, 9007199254740992
  %or.cond.i.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.val15.i.i = phi double [ %i.g, %._crit_edge.i.i ], [ 0.000000e+00, %bb.c ]
  %i.j = sub nsw i32 0, %1                        ; 2 uses
  %i.k = add i32 %1, 76
  %i.l = icmp ult i32 %i.k, 153
  br i1 %i.l, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 608
  %i.p = load double, ptr %i.o, align 8, !tbaa !58
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = sitofp i32 %i.j to double
  %i.r = call double @pow(double noundef 1.000000e+01, double noundef %i.q) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i.i

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi double [ %i.p, %bb.e ], [ %i.r, %bb.f ]
  %i.s = uitofp i64 %.val14.pre.i.i to double
  %i.t = fadd nnan double %.val15.i.i, %i.s
  %i.u = fmul double %i.t, %.0.i.i.i.i
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIdEET_RKNS_10Decimal128Ei.exit.i

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZNK5arrow15BasicDecimal12819GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.sroa.019.0.copyload.i.i = load i64, ptr %4, align 8
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.420.0.copyload.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i.i, align 8
  %i.v = sitofp i64 %.sroa.420.0.copyload.i.i to double
  %i.w = fmul nnan double %i.v, f0x43F0000000000000
  %i.x = uitofp i64 %.sroa.019.0.copyload.i.i to double
  %i.y = fadd nnan double %i.w, %i.x
  %.sroa.0.0.copyload.i.i = load i64, ptr %5, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.z = sub nsw i32 0, %1                        ; 2 uses
  %i.aa = icmp samesign ult i32 %1, 77
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 608
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !58
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = sitofp i32 %i.z to double
  %i.ag = call double @pow(double noundef 1.000000e+01, double noundef %i.af) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i.i

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i17.i.i = phi double [ %i.ae, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = sitofp i64 %.sroa.4.0.copyload.i.i to double
  %i.ai = fmul nnan double %i.ah, f0x43F0000000000000
  %i.aj = uitofp i64 %.sroa.0.0.copyload.i.i to double
  %i.ak = fadd nnan double %i.ai, %i.aj
  %i.al = fmul double %i.ak, %.0.i.i17.i.i
  %i.am = fadd double %i.y, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIdEET_RKNS_10Decimal128Ei.exit.i

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIdEET_RKNS_10Decimal128Ei.exit.i: ; preds = %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i.i, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i.i
  %.0.i.i = phi double [ %i.u, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i.i ], [ %i.am, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i.i ]
  %i.an = fneg double %.0.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE6ToRealIdEET_RKS2_i.exit

bb.j:                                             ; preds = %bb.a
  %i.ao = icmp slt i32 %1, 1
  %.val14.pre.i5.i = load i64, ptr %0, align 8, !tbaa !121 ; 2 uses
  br i1 %i.ao, label %._crit_edge.i21.i, label %bb.k

._crit_edge.i21.i:                                ; preds = %bb.j
  %i.ap = uitofp nneg i64 %i.b to double
  %i.aq = fmul nnan double %i.ap, f0x43F0000000000000
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp eq i64 %i.b, 0
  %i.as = icmp ult i64 %.val14.pre.i5.i, 9007199254740992
  %or.cond.i8.i = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond.i8.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k, %._crit_edge.i21.i
  %.val15.i18.i = phi double [ %i.aq, %._crit_edge.i21.i ], [ 0.000000e+00, %bb.k ]
  %i.at = sub nsw i32 0, %1                       ; 2 uses
  %i.au = add i32 %1, 76
  %i.av = icmp ult i32 %i.au, 153
  br i1 %i.av, label %bb.m, label %bb.n, !prof !28

bb.m:                                             ; preds = %bb.l
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 608
  %i.az = load double, ptr %i.ay, align 8, !tbaa !58
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i19.i

bb.n:                                             ; preds = %bb.l
  %i.ba = sitofp i32 %i.at to double
  %i.bb = tail call double @pow(double noundef 1.000000e+01, double noundef %i.ba) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i19.i

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i19.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i20.i = phi double [ %i.az, %bb.m ], [ %i.bb, %bb.n ]
  %i.bc = uitofp i64 %.val14.pre.i5.i to double
  %i.bd = fadd nnan double %.val15.i18.i, %i.bc
  %i.be = fmul double %i.bd, %.0.i.i.i20.i
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE6ToRealIdEET_RKS2_i.exit

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_ZNK5arrow15BasicDecimal12819GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.sroa.019.0.copyload.i9.i = load i64, ptr %2, align 8
  %.sroa.420.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.420.0.copyload.i11.i = load i64, ptr %.sroa.420.0..sroa_idx.i10.i, align 8
  %i.bf = sitofp i64 %.sroa.420.0.copyload.i11.i to double
  %i.bg = fmul nnan double %i.bf, f0x43F0000000000000
  %i.bh = uitofp i64 %.sroa.019.0.copyload.i9.i to double
  %i.bi = fadd nnan double %i.bg, %i.bh
  %.sroa.0.0.copyload.i12.i = load i64, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i14.i = load i64, ptr %.sroa.4.0..sroa_idx.i13.i, align 8
  %i.bj = sub nsw i32 0, %1                       ; 2 uses
  %i.bk = icmp samesign ult i32 %1, 77
  br i1 %i.bk, label %bb.p, label %bb.q, !prof !28

bb.p:                                             ; preds = %bb.o
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 608
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !58
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i15.i

bb.q:                                             ; preds = %bb.o
  %i.bp = sitofp i32 %i.bj to double
  %i.bq = call double @pow(double noundef 1.000000e+01, double noundef %i.bp) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i15.i

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i15.i: ; preds = %bb.q, %bb.p
  %.0.i.i17.i16.i = phi double [ %i.bo, %bb.p ], [ %i.bq, %bb.q ]
  %i.br = sitofp i64 %.sroa.4.0.copyload.i14.i to double
  %i.bs = fmul nnan double %i.br, f0x43F0000000000000
  %i.bt = uitofp i64 %.sroa.0.0.copyload.i12.i to double
  %i.bu = fadd nnan double %i.bs, %i.bt
  %i.bv = fmul double %i.bu, %.0.i.i17.i16.i
  %i.bw = fadd double %i.bi, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE6ToRealIdEET_RKS2_i.exit

_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE6ToRealIdEET_RKS2_i.exit: ; preds = %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIdEET_RKNS_10Decimal128Ei.exit.i, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i19.i, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i15.i
  %.0.i = phi double [ %i.an, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIdEET_RKNS_10Decimal128Ei.exit.i ], [ %i.be, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i19.i ], [ %i.bw, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i15.i ]
  ret double %.0.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow10Decimal12815ToIntegerStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Decimal128", align 16 ; 6 uses
  %3 = alloca %"struct.std::array", align 16      ; 5 uses
  %4 = alloca %"struct.std::array", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !24
  store i8 0, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  store i8 45, ptr %i.a, align 8, !tbaa !54
  store i64 1, ptr %i.b, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.h = load <2 x i64>, ptr %2, align 16, !tbaa !121
  store <2 x i64> %i.h, ptr %3, align 16, !tbaa !121
  invoke fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.k = load i64, ptr %1, align 8, !tbaa !121
  store i64 %i.k, ptr %4, align 8, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !121
  invoke fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.i
  ret void

bb.l:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.m, %bb.j ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.p = load i64, ptr %i.a, align 8, !tbaa !54
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %2 = alloca %"struct.std::array.23", align 1    ; 3 uses
  %3 = alloca %"struct.std::array.23", align 1    ; 3 uses
  %4 = alloca %"struct.std::array", align 8       ; 8 uses
  %5 = alloca %"struct.std::array.57", align 4    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.val.i.i.i = load i64, ptr %i.a, align 8, !tbaa !121, !noalias !122
  %.not14.i.i.i = icmp eq i64 %.val2.val.i.i.i, 0
  %.sroa.gep125 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not14.i.i.i, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread

_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit: ; preds = %._crit_edge.i.i.i
  %.val.val.i.i.i = load i64, ptr %0, align 8, !tbaa !121, !noalias !122
  %.not15.i.i.i = icmp eq i64 %.val.val.i.i.i, 0
  br i1 %.not15.i.i.i, label %bb.a, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread

end_hunk_0
