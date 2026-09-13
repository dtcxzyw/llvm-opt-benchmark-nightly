Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/shap?download=true
inline.NumInlined: 4414
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE11ChildWeightEii:bb.a
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.ag
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !279
  %i.bk = fdiv float %i.bj, %i.bc                 ; 2 uses
  %i.bl = fcmp olt float %i.bk, f0x2B8CBCCC
  %..i = select i1 %i.bl, float f0x2B8CBCCC, float %i.bk
  br label %_ZN7xgboost16interpretability6detail12BranchWeightEff.exit

_ZN7xgboost16interpretability6detail12BranchWeightEff.exit: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit38, %bb.n
  %.1.i = phi float [ %..i, %bb.n ], [ 5.000000e-01, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret float %.1.i

bb.o:                                             ; preds = %bb.k, %bb.e
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.k ], [ %.pn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %.pn9.pn

bb.p:                                             ; preds = %bb.j, %bb.d
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE10VisitChildEiifbRKSt5arrayIfLm8EEfPS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, float noundef %3, i1 noundef zeroext %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %5, float noundef %6, ptr nofree noundef nonnull captures(none) %7) unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.std::array", align 16      ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !389, !nonnull !198, !align !199
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [20 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !391
  %i.h = and i32 %i.g, 2147483647
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !380
  %i.k = zext nneg i32 %i.h to i64                ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !97 ; 6 uses
  %i.o = fcmp oeq float %i.n, -9.990000e+02       ; 2 uses
  %. = select i1 %i.o, float 1.000000e+00, float %i.n
  %i.p = fdiv float %., %3
  %i.q = select i1 %4, float %i.p, float 0.000000e+00 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !392
  %i.r = fadd float %i.q, -1.000000e+00
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !390, !nonnull !198, !align !369 ; 2 uses
  %i.u = load <4 x float>, ptr %i.t, align 4, !tbaa !97 ; 2 uses
  %i.v = insertelement <4 x float> poison, float %i.r, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.u, <4 x float> splat (float 1.000000e+00))
  %i.y = load <4 x float>, ptr %8, align 16, !tbaa !97
  %i.z = fmul <4 x float> %i.y, %i.x              ; 2 uses
  store <4 x float> %i.z, ptr %8, align 16, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ac = load <4 x float>, ptr %i.aa, align 4, !tbaa !97 ; 2 uses
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.ac, <4 x float> splat (float 1.000000e+00))
  %i.ae = load <4 x float>, ptr %i.ab, align 16, !tbaa !97
  %i.af = fmul <4 x float> %i.ae, %i.ad           ; 2 uses
  store <4 x float> %i.af, ptr %i.ab, align 16, !tbaa !97
  %i.ag = fcmp une float %i.n, -9.990000e+02
  br i1 %i.ag, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.ah = fadd float %i.n, -1.000000e+00          ; 2 uses
  %i.ai = fcmp une float %i.ah, 0.000000e+00
  br i1 %i.ai, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.aj = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.al = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.u, <4 x float> splat (float 1.000000e+00))
  %i.am = fdiv <4 x float> %i.z, %i.al
  store <4 x float> %i.am, ptr %8, align 16, !tbaa !97
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.ac, <4 x float> splat (float 1.000000e+00))
  %i.ao = fdiv <4 x float> %i.af, %i.an
  store <4 x float> %i.ao, ptr %i.ab, align 16, !tbaa !97
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.a
  store float %i.q, ptr %i.m, align 4, !tbaa !97
  %i.ap = fmul float %3, %6
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(32) %8, float noundef %i.ap, ptr noundef %7)
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !390, !nonnull !198, !align !369
  %i.ar = select i1 %i.o, float 1.000000e+00, float %i.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.as, align 8, !tbaa !393
  %i.at = tail call fastcc noundef float @_ZN7xgboost16interpretability12_GLOBAL__N_122ExtractQuadratureDeltaERKNS0_6detail14QuadratureRuleERKSt5arrayIfLm8EEff(ptr noundef nonnull readonly align 4 dereferenceable(64) %i.aq, ptr noundef nonnull readonly align 4 dereferenceable(32) %7, float noundef %i.q, float noundef %i.ar)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.k ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !97
  %i.aw = fadd float %i.at, %i.av
  store float %i.aw, ptr %i.au, align 4, !tbaa !97
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !380
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !94
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.k
  store float %i.n, ptr %i.az, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, float noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.02.0.copyload = load i64, ptr %3, align 8, !tbaa !29 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !133
  %i.a = icmp eq i64 %.sroa.02.0.copyload, 0
  br i1 %i.a, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = icmp ugt i64 %.sroa.02.0.copyload, %i.b
  br i1 %i.c, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit, label %bb.c, !prof !161

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !163
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.d, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread

bb.d:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = sext i32 %1 to i64                       ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !394
  %i.k = icmp ugt i64 %i.j, %i.i
  br i1 %i.k, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14, label %bb.e, !prof !161

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !395
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.i ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !397  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !398  ; 3 uses
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %.split.i, label %bb.f

.split.i:                                         ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14
  %i.s = load i64, ptr %i.g, align 8, !tbaa !333  ; 2 uses
  %.not8.i = icmp ugt i64 %i.o, %i.s
  br i1 %.not8.i, label %bb.g, label %bb.h, !prof !131

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14
  %i.t = add i64 %i.q, %i.o
  %i.u = load i64, ptr %i.g, align 8, !tbaa !333
  %.not.i = icmp ugt i64 %i.t, %i.u
  br i1 %.not.i, label %bb.g, label %bb.i, !prof !131

bb.g:                                             ; preds = %bb.f, %.split.i
  tail call void @_ZSt9terminatev() #31
  unreachable

bb.h:                                             ; preds = %.split.i
  %i.v = sub nuw i64 %i.s, %i.o
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.w = phi i64 [ %i.v, %bb.h ], [ %i.q, %bb.f ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %.in.i, align 8, !tbaa !334 ; 2 uses
  %i.y = icmp ne ptr %i.x, null
  %i.z = icmp eq i64 %i.w, 0
  %i.aa = or i1 %i.z, %i.y
  br i1 %i.aa, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, label %bb.j, !prof !161

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit: ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.o
  %i.ac = fcmp olt float %2, 0.000000e+00
  %i.ad = fcmp oge float %2, f0x4B800000
  %i.ae = or i1 %i.ac, %i.ad
  br i1 %i.ae, label %_ZN7xgboost6common8DecisionENS0_4SpanIKjLm18446744073709551615EEEf.exit, label %bb.k, !prof !131

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit
  %i.af = fptoui float %2 to i64
  %i.ag = lshr i64 %i.af, 5
  %.not.i15 = icmp ult i64 %i.ag, %i.w
  br i1 %.not.i15, label %bb.l, label %_ZN7xgboost6common8DecisionENS0_4SpanIKjLm18446744073709551615EEEf.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = fptosi float %2 to i32                  ; 2 uses
  %4 = sext i32 %i.ah to i64
  %5 = lshr i64 %4, 5
  %i.ai = and i32 %i.ah, 31
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %5
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = lshr exact i32 -2147483648, %i.ai
  %i.am = and i32 %i.ak, %i.al
  %.not5.i = icmp eq i32 %i.am, 0
  br label %_ZN7xgboost6common8DecisionENS0_4SpanIKjLm18446744073709551615EEEf.exit

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread: ; preds = %bb.a, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !273
  %i.ap = sext i32 %1 to i64
  %i.aq = getelementptr inbounds [20 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !28
  %i.at = fcmp olt float %2, %i.as
  br label %_ZN7xgboost6common8DecisionENS0_4SpanIKjLm18446744073709551615EEEf.exit

_ZN7xgboost6common8DecisionENS0_4SpanIKjLm18446744073709551615EEEf.exit: ; preds = %bb.l, %bb.k, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread
  %.0 = phi i1 [ %i.at, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit ], [ %.not5.i, %bb.l ], [ true, %bb.k ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef float @_ZN7xgboost16interpretability12_GLOBAL__N_122ExtractQuadratureDeltaERKNS0_6detail14QuadratureRuleERKSt5arrayIfLm8EEff(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, float noundef %2, float noundef %3) unnamed_addr #25 {
bb.a:
  %i.a = fcmp une float %2, 1.000000e+00
  br i1 %i.a, label %.loopexit26.loopexit, label %.loopexit26

.loopexit26.loopexit:                             ; preds = %bb.a
  %i.b = fadd float %2, -1.000000e+00
  %i.c = load <8 x float>, ptr %1, align 4, !tbaa !97
  %i.d = insertelement <8 x float> poison, float %i.b, i64 0
  %i.e = shufflevector <8 x float> %i.d, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.f = fmul <8 x float> %i.e, %i.c
  %i.g = load <8 x float>, ptr %0, align 4, !tbaa !97
  %i.h = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.e, <8 x float> %i.g, <8 x float> splat (float 1.000000e+00))
  %i.i = fdiv <8 x float> %i.f, %i.h              ; 8 uses
  %i.j = extractelement <8 x float> %i.i, i64 0
  %i.k = fadd float %i.j, 0.000000e+00
  %i.l = extractelement <8 x float> %i.i, i64 1
  %i.m = fadd float %i.k, %i.l
  %i.n = extractelement <8 x float> %i.i, i64 2
  %i.o = fadd float %i.m, %i.n
  %i.p = extractelement <8 x float> %i.i, i64 3
  %i.q = fadd float %i.o, %i.p
  %i.r = extractelement <8 x float> %i.i, i64 4
  %i.s = fadd float %i.q, %i.r
  %i.t = extractelement <8 x float> %i.i, i64 5
  %i.u = fadd float %i.s, %i.t
  %i.v = extractelement <8 x float> %i.i, i64 6
  %i.w = fadd float %i.u, %i.v
  %i.x = extractelement <8 x float> %i.i, i64 7
  %i.y = fadd float %i.w, %i.x
  br label %.loopexit26

.loopexit26:                                      ; preds = %.loopexit26.loopexit, %bb.a
  %.1 = phi float [ 0.000000e+00, %bb.a ], [ %i.y, %.loopexit26.loopexit ] ; 2 uses
  %i.z = fcmp une float %3, 1.000000e+00
  br i1 %i.z, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit26
  %i.aa = fadd float %3, -1.000000e+00
  %i.ab = load <2 x float>, ptr %1, align 4, !tbaa !97
  %i.ac = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ae = fmul <2 x float> %i.ad, %i.ab
  %i.af = load <2 x float>, ptr %0, align 4, !tbaa !97
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.af, <2 x float> splat (float 1.000000e+00))
  %i.ah = fdiv <2 x float> %i.ae, %i.ag           ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = fsub float %.1, %i.ai
  %i.ak = extractelement <2 x float> %i.ah, i64 1
  %i.al = fsub float %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load <2 x float>, ptr %i.am, align 4, !tbaa !97
  %i.ap = fmul <2 x float> %i.ad, %i.ao
  %i.aq = load <2 x float>, ptr %i.an, align 4, !tbaa !97
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.aq, <2 x float> splat (float 1.000000e+00))
  %i.as = fdiv <2 x float> %i.ap, %i.ar           ; 2 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  %i.au = fsub float %i.al, %i.at
  %i.av = extractelement <2 x float> %i.as, i64 1
  %i.aw = fsub float %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load <2 x float>, ptr %i.ax, align 4, !tbaa !97
  %i.ba = fmul <2 x float> %i.ad, %i.az
  %i.bb = load <2 x float>, ptr %i.ay, align 4, !tbaa !97
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.bb, <2 x float> splat (float 1.000000e+00))
  %i.bd = fdiv <2 x float> %i.ba, %i.bc           ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = fsub float %i.aw, %i.be
  %i.bg = extractelement <2 x float> %i.bd, i64 1
  %i.bh = fsub float %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load <2 x float>, ptr %i.bi, align 4, !tbaa !97
  %i.bl = fmul <2 x float> %i.ad, %i.bk
  %i.bm = load <2 x float>, ptr %i.bj, align 4, !tbaa !97
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.bm, <2 x float> splat (float 1.000000e+00))
  %i.bo = fdiv <2 x float> %i.bl, %i.bn           ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %i.bq = fsub float %i.bh, %i.bp
  %i.br = extractelement <2 x float> %i.bo, i64 1
  %i.bs = fsub float %i.bq, %i.br
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit26
  %.3 = phi float [ %.1, %.loopexit26 ], [ %i.bs, %.loopexit.loopexit ]
  ret float %.3
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %2, float noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.std::array", align 16      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !198, !align !199 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268
  %i.d = sext i32 %1 to i64                       ; 7 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18   ; 3 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !400, !nonnull !198, !align !369
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !384
  tail call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_123WriteWeightedLeafReturnINS_4tree19MultiTargetTreeViewEEEvRKT_RKNS0_6detail14QuadratureRuleEijRKSt5arrayIfLm8EEfPSD_(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %i.i, i32 noundef %1, i32 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %4)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !269
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.d
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18   ; 2 uses
  %i.p = tail call fastcc noundef float @_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE11ChildWeightEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %i.f)
  %i.q = tail call fastcc noundef float @_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE11ChildWeightEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %i.o)
  %i.r = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !198, !align !199 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !401
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.d
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !998, !nonnull !198, !align !199
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !97 ; 2 uses
  %i.ac = fcmp uno float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !402
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.d
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %.pn.in.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 48
  %.pn.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pn.in.v.i.i.i
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 8, !tbaa !286
  %.in.i.i.i = getelementptr inbounds [4 x i8], ptr %.pn.i.i.i, i64 %i.d
  %i.ah = load i32, ptr %.in.i.i.i, align 4, !tbaa !18
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE16EvaluateGoesLeftEi.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !268
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.d
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18
  %i.am = tail call noundef zeroext i1 @_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE(ptr noundef nonnull align 8 dereferenceable(192) %i.r, i32 noundef %1, float noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.r)
  %i.an = xor i1 %i.am, true
  %i.ao = zext i1 %i.an to i32
  %i.ap = add nsw i32 %i.al, %i.ao
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !399
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE16EvaluateGoesLeftEi.exit

_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE16EvaluateGoesLeftEi.exit: ; preds = %bb.d, %bb.e
  %i.aq = phi ptr [ %i.r, %bb.d ], [ %.pre.i, %bb.e ]
  %.0.i.i = phi i32 [ %i.ah, %bb.d ], [ %i.ap, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !268
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.d
  %i.au = load i32, ptr %i.at, align 4, !tbaa !18
  %i.av = icmp eq i32 %.0.i.i, %i.au              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  tail call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE10VisitChildEiifbRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %i.f, float noundef %i.p, i1 noundef zeroext %i.av, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %4)
  %i.aw = xor i1 %i.av, true
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE10VisitChildEiifbRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %i.o, float noundef %i.q, i1 noundef zeroext %i.aw, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %5)
  %i.ax = load <4 x float>, ptr %5, align 16, !tbaa !97
  %i.ay = load <4 x float>, ptr %4, align 4, !tbaa !97
  %i.az = fadd <4 x float> %i.ax, %i.ay
  store <4 x float> %i.az, ptr %4, align 4, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4dmlc14LogCheckFormatIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEj.exit
  %i.f = load i64, ptr %2, align 8, !tbaa !29
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.f)
          to label %_ZNSolsEm.exit unwind label %bb.f

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.16, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZNSolsEm.exit
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !254, !alias.scope !1011
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !27, !alias.scope !1011
  store i8 0, ptr %i.j, align 8, !tbaa !28, !alias.scope !1011
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !258, !noalias !1011 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1011 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !259, !noalias !1011 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !26, !alias.scope !1011 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.j, align 8, !tbaa !28, !alias.scope !1011
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #30
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.i, ptr %0, align 8, !tbaa !21
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !31
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !28
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #13
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.f:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #30
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %.body ], [ %i.aq, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, float noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.02.0.copyload = load i64, ptr %3, align 8, !tbaa !29 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !133
  %i.a = icmp eq i64 %.sroa.02.0.copyload, 0
  br i1 %i.a, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = icmp ugt i64 %.sroa.02.0.copyload, %i.b
  br i1 %i.c, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit, label %bb.c, !prof !161

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !163
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.d, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread

bb.d:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = sext i32 %1 to i64                       ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !394
  %i.k = icmp ugt i64 %i.j, %i.i
  br i1 %i.k, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14, label %bb.e, !prof !161

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !395
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.i ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !397  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !398  ; 3 uses
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %.split.i, label %bb.f

.split.i:                                         ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14
  %i.s = load i64, ptr %i.g, align 8, !tbaa !333  ; 2 uses
  %.not8.i = icmp ugt i64 %i.o, %i.s
  br i1 %.not8.i, label %bb.g, label %bb.h, !prof !131

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14
  %i.t = add i64 %i.q, %i.o
  %i.u = load i64, ptr %i.g, align 8, !tbaa !333
  %.not.i = icmp ugt i64 %i.t, %i.u
  br i1 %.not.i, label %bb.g, label %bb.i, !prof !131

bb.g:                                             ; preds = %bb.f, %.split.i
  tail call void @_ZSt9terminatev() #31
  unreachable

bb.h:                                             ; preds = %.split.i
  %i.v = sub nuw i64 %i.s, %i.o
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.w = phi i64 [ %i.v, %bb.h ], [ %i.q, %bb.f ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %.in.i, align 8, !tbaa !334 ; 2 uses
  %i.y = icmp ne ptr %i.x, null
  %i.z = icmp eq i64 %i.w, 0
  %i.aa = or i1 %i.z, %i.y
  br i1 %i.aa, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, label %bb.j, !prof !161

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit: ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.o
  %i.ac = fcmp olt float %2, 0.000000e+00
  %i.ad = fcmp oge float %2, f0x4B800000
  %i.ae = or i1 %i.ac, %i.ad
  br i1 %i.ae, label %_ZN7xgboost6common8DecisionENS0_4SpanIKjLm18446744073709551615EEEf.exit, label %bb.k, !prof !131

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit
  %i.af = fptoui float %2 to i64
  %i.ag = lshr i64 %i.af, 5
  %.not.i15 = icmp ult i64 %i.ag, %i.w
  br i1 %.not.i15, label %bb.l, label %_ZN7xgboost6common8DecisionENS0_4SpanIKjLm18446744073709551615EEEf.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = fptosi float %2 to i32                  ; 2 uses
  %4 = sext i32 %i.ah to i64
  %5 = lshr i64 %4, 5
  %i.ai = and i32 %i.ah, 31
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %5
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = lshr exact i32 -2147483648, %i.ai
  %i.am = and i32 %i.ak, %i.al
  %.not5.i = icmp eq i32 %i.am, 0
  br label %_ZN7xgboost6common8DecisionENS0_4SpanIKjLm18446744073709551615EEEf.exit

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread: ; preds = %bb.a, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1012
  %i.ap = sext i32 %1 to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !97
  %i.as = fcmp olt float %2, %i.ar
  br label %_ZN7xgboost6common8DecisionENS0_4SpanIKjLm18446744073709551615EEEf.exit

_ZN7xgboost6common8DecisionENS0_4SpanIKjLm18446744073709551615EEEf.exit: ; preds = %bb.l, %bb.k, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread
  %.0 = phi i1 [ %i.as, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit ], [ %.not5.i, %bb.l ], [ true, %bb.k ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !29
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.b)
          to label %_ZNSolsEm.exit unwind label %bb.f ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.15, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEm.exit
  %i.e = load i32, ptr %2, align 4, !tbaa !18
  %i.f = zext i32 %i.e to i64
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.f)
          to label %_ZNSolsEj.exit unwind label %bb.f

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.16, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZNSolsEj.exit
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !254, !alias.scope !1019
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !27, !alias.scope !1019
  store i8 0, ptr %i.j, align 8, !tbaa !28, !alias.scope !1019
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !258, !noalias !1019 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1019 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !259, !noalias !1019 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !26, !alias.scope !1019 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.j, align 8, !tbaa !28, !alias.scope !1019
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #30
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.i, ptr %0, align 8, !tbaa !21
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !31
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !28
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #13
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.f:                                             ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #30
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %.body ], [ %i.aq, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #26

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EEC2IS3_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #13 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #13, !inline_history !1020
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
end_hunk_1
