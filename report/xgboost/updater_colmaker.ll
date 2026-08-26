Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_colmaker?download=true
inline.NumInlined: 4970
inline.NumDeleted: 2084
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_:bb.a
  %.sroa.0.0.copyload.i.i = load double, ptr %4, align 8, !tbaa !737 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.u = load float, ptr %i.t, align 4, !tbaa !738 ; 3 uses
  %i.v = fpext float %i.u to double               ; 7 uses
  %i.w = fcmp ogt double %.sroa.0.0.copyload.i.i, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = fsub double %.sroa.0.0.copyload.i.i, %i.v
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = fneg float %i.u
  %i.z = fpext float %i.y to double
  %i.aa = fcmp olt double %.sroa.0.0.copyload.i.i, %i.z
  br i1 %i.aa, label %bb.h, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = fadd double %.sroa.0.0.copyload.i.i, %i.v
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i.i.i.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ac = fneg double %.0.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !739
  %i.af = fpext float %i.ae to double             ; 2 uses
  %i.ag = fadd double %i.b, %i.af                 ; 2 uses
  %i.ah = fdiv double %i.ac, %i.ag                ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !740 ; 3 uses
  %i.ak = fcmp une float %i.aj, 0.000000e+00      ; 2 uses
  br i1 %i.ak, label %bb.i, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.i:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %i.al = tail call double @llvm.fabs.f64(double %i.ah)
  %i.am = fpext float %i.aj to double             ; 2 uses
  %i.an = fcmp ogt double %i.al, %i.am
  br i1 %i.an, label %bb.j, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call double @llvm.copysign.f64(double %i.am, double %i.ah)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i: ; preds = %bb.j, %bb.i, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %.012.i.i.i.i = phi double [ %i.ah, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i ], [ %i.ao, %bb.j ], [ %i.ah, %bb.i ]
  %i.ap = fptrunc double %.012.i.i.i.i to float   ; 4 uses
  br i1 %i.n, label %bb.k, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

bb.k:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !885
  %i.as = zext i32 %i.ar to i64
  %i.at = sext i32 %2 to i64
  %i.au = mul nsw i64 %i.as, %i.at                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !882
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !108 ; 2 uses
  %i.az = fcmp ogt float %i.ay, %i.ap
  br i1 %i.az, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !883
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.au
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !108 ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.ap
  %..i.i.i = select i1 %i.be, float %i.bd, float %i.ap
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i, %bb.k, %bb.l
  %.1.i.i.i = phi float [ %i.ap, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i ], [ %i.ay, %bb.k ], [ %..i.i.i, %bb.l ] ; 3 uses
  %.sroa.0.0.copyload.i.i29 = load double, ptr %5, align 8, !tbaa !737 ; 5 uses
  %i.bf = fcmp ogt double %.sroa.0.0.copyload.i.i29, %i.v
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %i.bg = fsub double %.sroa.0.0.copyload.i.i29, %i.v
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36

bb.n:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %i.bh = fneg float %i.u
  %i.bi = fpext float %i.bh to double
  %i.bj = fcmp olt double %.sroa.0.0.copyload.i.i29, %i.bi
  br i1 %i.bj, label %bb.o, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36

bb.o:                                             ; preds = %bb.n
  %i.bk = fadd double %.sroa.0.0.copyload.i.i29, %i.v
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36: ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i.i.i.i37 = phi double [ %i.bg, %bb.m ], [ %i.bk, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.bl = fneg double %.0.i.i.i.i.i37
  %i.bm = fadd double %i.d, %i.af                 ; 2 uses
  %i.bn = fdiv double %i.bl, %i.bm                ; 4 uses
  br i1 %i.ak, label %bb.p, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32

bb.p:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36
  %i.bo = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bp = fpext float %i.aj to double             ; 2 uses
  %i.bq = fcmp ogt double %i.bo, %i.bp
  br i1 %i.bq, label %bb.q, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32

bb.q:                                             ; preds = %bb.p
  %i.br = tail call double @llvm.copysign.f64(double %i.bp, double %i.bn)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32: ; preds = %bb.q, %bb.p, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36
  %.012.i.i.i.i33 = phi double [ %i.bn, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36 ], [ %i.br, %bb.q ], [ %i.bn, %bb.p ]
  %i.bs = fptrunc double %.012.i.i.i.i33 to float ; 4 uses
  br i1 %i.n, label %bb.r, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38

bb.r:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !885
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sext i32 %2 to i64
  %i.bx = mul nsw i64 %i.bv, %i.bw                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !882
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bx
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !108 ; 2 uses
  %i.cc = fcmp ogt float %i.cb, %i.bs
  br i1 %i.cc, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !883
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bx
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !108 ; 2 uses
  %i.ch = fcmp olt float %i.cg, %i.bs
  %..i.i.i35 = select i1 %i.ch, float %i.cg, float %i.bs
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38: ; preds = %bb.s, %bb.r, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32
  %.1.i.i.i34 = phi float [ %i.bs, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32 ], [ %i.cb, %bb.r ], [ %..i.i.i35, %bb.s ] ; 3 uses
  %i.ci = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i.i, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %.sroa.0.0.copyload.i.i29, i64 1
  %i.ck = fmul <2 x double> %i.cj, splat (double 2.000000e+00)
  %i.cl = insertelement <2 x float> poison, float %.1.i.i.i, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %.1.i.i.i34, i64 1 ; 4 uses
  %i.cn = fpext <2 x float> %i.cm to <2 x double>
  %i.co = fmul <2 x float> %i.cm, %i.cm
  %i.cp = fmul double %i.v, 2.000000e+00
  %i.cq = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cm)
  %i.cr = fpext <2 x float> %i.co to <2 x double>
  %i.cs = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.bm, i64 1
  %i.cu = fmul <2 x double> %i.ct, %i.cr
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cn, <2 x double> %i.cu)
  %i.cw = fpext <2 x float> %i.cq to <2 x double>
  %i.cx = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cw, <2 x double> %i.cv)
  %i.da = fptrunc <2 x double> %i.cz to <2 x float> ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = fneg float %i.db
  %i.dd = extractelement <2 x float> %i.da, i64 1
  %i.de = fsub float %i.dc, %i.dd                 ; 3 uses
  %i.df = icmp eq i32 %i.s, 0
  br i1 %i.df, label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38
  %i.dg = icmp sgt i32 %i.s, 0
  br i1 %i.dg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dh = fcmp ole float %.1.i.i.i, %.1.i.i.i34
  %i.di = select i1 %i.dh, float %i.de, float -inf
  br label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.dj = fcmp oge float %.1.i.i.i, %.1.i.i.i34
  %i.dk = select i1 %i.dj, float %i.de, float -inf
  br label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread

_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread: ; preds = %bb.a, %bb.b, %bb.u, %bb.v, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38
  %.1 = phi float [ -inf, %bb.a ], [ %i.dk, %bb.v ], [ %i.di, %bb.u ], [ %i.de, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38 ], [ -inf, %bb.b ]
  ret float %.1
}

declare void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.xgboost::tree::ScalarTreeView", align 8 ; 7 uses
  %5 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %6 = alloca %"class.xgboost::BatchIterator", align 16 ; 12 uses
  %7 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %8 = alloca %"class.xgboost::common::Span.265", align 8 ; 10 uses
  %9 = alloca %class.anon.317, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %3)
  %i.b = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %.not103 = icmp eq ptr %i.b, %i.d
  br i1 %.not103, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.not.i.i = icmp eq ptr %.sroa.26.1, %.sroa.15.1
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = ptrtoint ptr %.sroa.15.1 to i64          ; 2 uses
  %i.g = ptrtoint ptr %.sroa.26.1 to i64          ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = ashr exact i64 %i.h, 2                   ; 8 uses
  %i.j = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.26.1, ptr %.sroa.15.1, i64 noundef %i.l)
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.b
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.26.1, ptr %.sroa.15.1)
          to label %.preheader.i.i.i unwind label %bb.aw

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.sroa.071.0107 = phi ptr [ null, %.lr.ph ], [ %.sroa.26.1, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 8 uses
  %.sroa.26.0106 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 7 uses
  %.sroa.15.0105 = phi ptr [ null, %.lr.ph ], [ %.sroa.074.1.a, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %.sroa.074.0104 = phi ptr [ %i.b, %.lr.ph ], [ %i.am, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.m = load i32, ptr %.sroa.074.0104, align 4, !tbaa !95
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !757
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [20 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !574
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !914
  %i.v = and i32 %i.u, 2147483647                 ; 2 uses
  %.not.i.i38 = icmp eq ptr %.sroa.26.0106, %.sroa.15.0105
  br i1 %.not.i.i38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.v, ptr %.sroa.26.0106, align 4, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.26.0106, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.f:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %.sroa.26.0106 to i64
  %i.y = ptrtoint ptr %.sroa.071.0107 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.aa, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #36
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #37
          to label %.noexc40 unwind label %.loopexit ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store i32 %i.v, ptr %i.ai, align 4, !tbaa !95
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %.sroa.071.0107, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %.noexc40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.071.0107, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0107, i64 noundef %i.z) #35
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.e, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.c
  %.sroa.074.1.a = phi ptr [ %.sroa.15.0105, %bb.c ], [ %i.al, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.15.0105, %bb.e ] ; 10 uses
  %.sroa.15.1 = phi ptr [ %.sroa.26.0106, %bb.c ], [ %i.ak, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.w, %bb.e ] ; 15 uses
  %.sroa.26.1 = phi ptr [ %.sroa.071.0107, %bb.c ], [ %i.ah, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.071.0107, %bb.e ] ; 18 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.074.0104, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.d
  br i1 %.not, label %._crit_edge, label %bb.c

.preheader.i.i.i:                                 ; preds = %.noexc, %bb.j
  %.sroa.09.0.i.i.i = phi ptr [ %i.an, %bb.j ], [ %.sroa.26.1, %.noexc ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, %.sroa.15.1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i
  %i.ao = load i32, ptr %.sroa.09.0.i.i.i, align 4, !tbaa !95 ; 2 uses
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !95
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !915

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.ar, %.sroa.15.1
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %bb.l
  %i.as = phi i32 [ %i.au, %bb.l ], [ %i.ao, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ]
  %i.at = phi ptr [ %i.ax, %bb.l ], [ %i.ar, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.l ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !95 ; 3 uses
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 4 ; 2 uses
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.aw, %bb.k ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.ax, %.sroa.15.1
  br i1 %.not.i.i41, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !916

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit: ; preds = %bb.l, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.l ]
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %.pre145 = ptrtoint ptr %10 to i64
  %.pre147 = sub i64 %.pre145, %i.g               ; 2 uses
  %.pre149 = ashr exact i64 %.pre147, 2           ; 3 uses
  %11 = icmp eq ptr %.sroa.15.1, %10
  %i.ay = icmp ugt i64 %.pre149, %i.i
  br i1 %i.ay, label %bb.m, label %bb.s

bb.m:                                             ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit
  %i.az = sub nuw nsw i64 %.pre149, %i.i          ; 6 uses
  %i.ba = ptrtoint ptr %.sroa.074.1.a to i64      ; 2 uses
  %i.bb = sub i64 %i.ba, %i.f
  %i.bc = ashr exact i64 %i.bb, 2                 ; 2 uses
  %i.bd = icmp ult i64 %i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.bd)
  %i.be = xor i64 %i.i, 2305843009213693951       ; 2 uses
  %i.bf = icmp ule i64 %i.bc, %i.be
  call void @llvm.assume(i1 %i.bf)
  %.not28.i = icmp ult i64 %i.bc, %i.az
  br i1 %.not28.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %.sroa.15.1, align 4, !tbaa !95
  %i.bg = getelementptr i8, ptr %.sroa.15.1, i64 4 ; 3 uses
  %i.bh = add nsw i64 %i.az, -1                   ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.n
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bh, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bg, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !95
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.o:                                             ; preds = %bb.m
  %i.bk = icmp ult i64 %i.be, %i.az
  br i1 %i.bk, label %bb.p, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #36
          to label %.noexc61 unwind label %bb.ax

.noexc61:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.o
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.i, i64 %i.az)
  %i.bl = add nuw nsw i64 %.sroa.speculated.i.i, %i.i
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bl, i64 2305843009213693951) ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #37
          to label %.noexc62 unwind label %bb.ax  ; 4 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.h ; 3 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !95
  %i.bq = add nsw i64 %i.az, -1                   ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc62
  %i.bs = getelementptr i8, ptr %i.bp, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.bq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bs, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !95
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc62
  %i.bt = icmp sgt i64 %i.h, 0
  br i1 %i.bt, label %bb.q, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr align 4 %.sroa.26.1, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.q, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.26.1, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.bu = sub i64 %i.ba, %i.g
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.26.1, i64 noundef %i.bu) #35
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i: ; preds = %bb.r, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.az
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bm
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.s:                                             ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit
  %i.bx = icmp ult i64 %.pre149, %i.i
  br i1 %i.bx, label %bb.t, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.26.1, i64 %.pre147
  %spec.select = select i1 %11, ptr %.sroa.15.1, ptr %i.by
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %.preheader.i.i.i, %._crit_edge, %bb.a, %bb.t, %bb.s, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.n
  %.sroa.26.4 = phi ptr [ %.sroa.074.1.a, %bb.s ], [ %.sroa.074.1.a, %bb.t ], [ %.sroa.074.1.a, %bb.n ], [ %.sroa.074.1.a, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bw, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ], [ null, %bb.a ], [ %.sroa.074.1.a, %._crit_edge ], [ %.sroa.074.1.a, %.preheader.i.i.i ] ; 3 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.1, %bb.s ], [ %spec.select, %bb.t ], [ %i.bg, %bb.n ], [ %i.bj, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bv, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ], [ null, %bb.a ], [ %.sroa.15.1, %._crit_edge ], [ %.sroa.15.1, %.preheader.i.i.i ] ; 3 uses
  %.sroa.074.4 = phi ptr [ %.sroa.26.1, %bb.s ], [ %.sroa.26.1, %bb.t ], [ %.sroa.26.1, %bb.n ], [ %.sroa.26.1, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bo, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ], [ null, %bb.a ], [ %.sroa.26.1, %._crit_edge ], [ %.sroa.26.1, %.preheader.i.i.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !527
  %i.cb = load ptr, ptr %2, align 8, !tbaa !53, !noalias !917
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !917
  invoke void %i.cd(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::BatchSet") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ca)
          to label %_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit unwind label %bb.ay, !inline_history !503

_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit: ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !288, !noalias !920 ; 2 uses
  %i.ch = load <2 x ptr>, ptr %5, align 16, !tbaa !175, !noalias !920
  store <2 x ptr> %i.ch, ptr %6, align 16, !tbaa !175, !alias.scope !920
  %.not.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15, !noalias !920
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !95, !noalias !920
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !95, !noalias !920
  br label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit

bb.w:                                             ; preds = %bb.u
  %i.cm = atomicrmw volatile add ptr %i.ci, i32 1 acq_rel, align 4, !noalias !920 ; 0 uses
  br label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit

_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit: ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit, %bb.v, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !923
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
          to label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit.preheader unwind label %bb.ab

_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit.preheader: ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit
  %.not93110 = icmp eq ptr %.sroa.074.4, %.sroa.15.3
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.not93110.fr = freeze i1 %.not93110
  br i1 %.not93110.fr, label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit.us, label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit

_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit.us: ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit.preheader, %bb.aa
  %i.cr = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_13SortedCSCPageEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.x unwind label %.split119.us

bb.x:                                             ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit.us
  br i1 %i.cr, label %.split122.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_13SortedCSCPageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.z unwind label %.split124.us ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
          to label %.noexc56.us unwind label %.split127.us ; 0 uses

.noexc56.us:                                      ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %bb.aa unwind label %.split127.us ; 0 uses

bb.aa:                                            ; preds = %.noexc56.us
  %i.cx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit.us unwind label %.split119.us ; 0 uses

.split119.us:                                     ; preds = %bb.aa, %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit.us
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.split124.us:                                     ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.split127.us:                                     ; preds = %.noexc56.us, %bb.z
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ab:                                            ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #21
  br label %.body

_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit: ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit.preheader, %._crit_edge114
  %i.dc = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_13SortedCSCPageEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.ac unwind label %.split119

bb.ac:                                            ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit
  br i1 %i.dc, label %.split122.us, label %bb.az

.split122.us:                                     ; preds = %bb.ac, %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !288 ; 8 uses
  %.not.i.i.i46 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i46, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %.split122.us
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.df, align 8, !tbaa !281
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !283
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !53
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #21, !inline_history !510
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #21, !inline_history !510
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i47 = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i.i47, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = add nsw i32 %i.di, -1
  store i32 %i.dr, ptr %i.df, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.ds = atomicrmw volatile add ptr %i.df, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i = phi i32 [ %i.di, %bb.ag ], [ %i.ds, %bb.ah ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dt, label %bb.ai, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit, !prof !143

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #21
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit: ; preds = %.split122.us, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.du = load ptr, ptr %i.ce, align 8, !tbaa !288 ; 8 uses
  %.not.i.i.i48 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i48, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit52, label %bb.aj

bb.aj:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dv, align 8, !tbaa !281
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !283
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !53
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #21, !inline_history !510
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !53
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #21, !inline_history !510
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit52

bb.al:                                            ; preds = %bb.aj
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i49 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i49, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i50

bb.an:                                            ; preds = %bb.al
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i50: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i51 = phi i32 [ %i.dy, %bb.am ], [ %i.ei, %bb.an ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i51, 1
  br i1 %i.ej, label %bb.ao, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit52, !prof !143

end_hunk_0
begin_hunk_1_@_ZN7xgboost4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeE:bb.a
bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #21
  br label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEED2Ev.exit

_ZN7xgboost8BatchSetINS_13SortedCSCPageEED2Ev.exit: ; preds = %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit52, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i.i55 = icmp eq ptr %.sroa.074.4, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEED2Ev.exit
  %i.fa = ptrtoint ptr %.sroa.26.4 to i64
  %i.fb = ptrtoint ptr %.sroa.074.4 to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.4, i64 noundef %i.fc) #35
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEED2Ev.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.aw:                                            ; preds = %.noexc, %bb.b
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ax:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, %bb.p
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ay:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.split119:                                        ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit, %._crit_edge114
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.az:                                            ; preds = %bb.ac
  %i.fh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_13SortedCSCPageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.ba unwind label %.split124 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %.noexc56 unwind label %.split127

.noexc56:                                         ; preds = %bb.ba
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !513, !noalias !926 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %.lr.ph113 unwind label %.split127

.lr.ph113:                                        ; preds = %.noexc56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !517, !noalias !926
  %.fr129 = freeze ptr %i.fn                      ; 2 uses
  %.not130 = icmp eq ptr %.fr129, null
  br i1 %.not130, label %.lr.ph113.split, label %.lr.ph113.split.us

.lr.ph113.split.us:                               ; preds = %.lr.ph113, %_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iOT0_.exit.us
  %.sroa.063.0111.us = phi ptr [ %i.fy, %_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iOT0_.exit.us ], [ %.sroa.074.4, %.lr.ph113 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.fo = load i32, ptr %.sroa.063.0111.us, align 4, !tbaa !95 ; 2 uses
  store i32 %i.fo, ptr %i.a, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !17
  %i.ft = load i64, ptr %i.fq, align 8, !tbaa !17 ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.fr129, i64 %i.ft
  store i64 %i.fu, ptr %8, align 8
  store ptr %i.fv, ptr %i.cn, align 8
  %i.fw = load ptr, ptr %i.bz, align 8, !tbaa !527
  %i.fx = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.fw)
          to label %bb.bb unwind label %.split.us

bb.bb:                                            ; preds = %.lr.ph113.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %8, ptr %9, align 8, !tbaa !929
  store ptr %0, ptr %i.co, align 8, !tbaa !931
  store ptr %4, ptr %i.cp, align 8, !tbaa !570
  store ptr %i.a, ptr %i.cq, align 8, !tbaa !102
  invoke void @_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iNS0_5SchedEOT0_(i64 noundef %i.fu, i32 noundef %i.fx, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iOT0_.exit.us unwind label %.split116.us

_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iOT0_.exit.us: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.063.0111.us, i64 4 ; 2 uses
  %.not93.us = icmp eq ptr %i.fy, %.sroa.15.3
  br i1 %.not93.us, label %._crit_edge114, label %.lr.ph113.split.us

.split.us:                                        ; preds = %.lr.ph113.split.us
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.split116.us:                                     ; preds = %bb.bb
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

._crit_edge114:                                   ; preds = %_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iOT0_.exit.us, %_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iOT0_.exit
  %i.gb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit unwind label %.split119 ; 0 uses

.split124:                                        ; preds = %bb.az
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.split127:                                        ; preds = %.noexc56, %bb.ba
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.lr.ph113.split:                                  ; preds = %.lr.ph113, %_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iOT0_.exit
  %.sroa.063.0111 = phi ptr [ %i.go, %_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iOT0_.exit ], [ %.sroa.074.4, %.lr.ph113 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ge = load i32, ptr %.sroa.063.0111, align 4, !tbaa !95 ; 2 uses
  store i32 %i.ge, ptr %i.a, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !17 ; 2 uses
  %i.gj = load i64, ptr %i.gg, align 8, !tbaa !17
  %i.gk = icmp eq i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.bd, label %bb.bc, !prof !379

bb.bc:                                            ; preds = %.lr.ph113.split
  call void @_ZSt9terminatev() #38
  unreachable

bb.bd:                                            ; preds = %.lr.ph113.split
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr null, i64 %i.gi
  store i64 0, ptr %8, align 8
  store ptr %i.gl, ptr %i.cn, align 8
  %i.gm = load ptr, ptr %i.bz, align 8, !tbaa !527
  %i.gn = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.gm)
          to label %bb.be unwind label %.split

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %8, ptr %9, align 8, !tbaa !929
  store ptr %0, ptr %i.co, align 8, !tbaa !931
  store ptr %4, ptr %i.cp, align 8, !tbaa !570
  store ptr %i.a, ptr %i.cq, align 8, !tbaa !102
  invoke void @_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iNS0_5SchedEOT0_(i64 noundef 0, i32 noundef %i.gn, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iOT0_.exit unwind label %.split116

_ZN7xgboost6common11ParallelForImZNS_4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeEEUlT_E_EEvSF_iOT0_.exit: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.063.0111, i64 4 ; 2 uses
  %.not93 = icmp eq ptr %i.go, %.sroa.15.3
  br i1 %.not93, label %._crit_edge114, label %.lr.ph113.split

.split:                                           ; preds = %bb.bd
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.split116:                                        ; preds = %bb.be
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.split116.us, %.split116
  %.us-phi117 = phi { ptr, i32 } [ %i.gq, %.split116 ], [ %i.ga, %.split116.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bg

bb.bg:                                            ; preds = %.split, %.split.us, %bb.bf
  %.pn27 = phi { ptr, i32 } [ %.us-phi117, %bb.bf ], [ %i.gp, %.split ], [ %i.fz, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.bh

bb.bh:                                            ; preds = %.split127, %.split127.us, %.split124, %.split124.us, %.split119, %.split119.us, %bb.bg
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %.split124.us ], [ %i.cy, %.split119.us ], [ %.pn27, %bb.bg ], [ %i.fg, %.split119 ], [ %i.gc, %.split124 ], [ %i.gd, %.split127 ], [ %i.da, %.split127.us ]
  call void @_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #21
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.bh
  %.pn27.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn.pn, %bb.bh ], [ %i.db, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7xgboost8BatchSetINS_13SortedCSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ax, %bb.ay, %.body, %bb.aw
  %.sroa.074.2.a = phi ptr [ %.sroa.074.1.a, %bb.aw ], [ %.sroa.26.4, %.body ], [ %.sroa.26.4, %bb.ay ], [ %.sroa.074.1.a, %bb.ax ], [ %.sroa.26.0106, %.loopexit ], [ %.sroa.26.0106, %.loopexit.split-lp ]
  %.sroa.26.2 = phi ptr [ %.sroa.26.1, %bb.aw ], [ %.sroa.074.4, %.body ], [ %.sroa.074.4, %bb.ay ], [ %.sroa.26.1, %bb.ax ], [ %.sroa.071.0107, %.loopexit ], [ %.sroa.071.0107, %.loopexit.split-lp ] ; 3 uses
  %.pn34.pn = phi { ptr, i32 } [ %i.fd, %bb.aw ], [ %.pn27.pn.pn.pn.pn, %.body ], [ %i.ff, %bb.ay ], [ %i.fe, %bb.ax ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i59 = icmp eq ptr %.sroa.26.2, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIjSaIjEED2Ev.exit60, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gr = ptrtoint ptr %.sroa.074.2.a to i64
  %i.gs = ptrtoint ptr %.sroa.26.2 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.26.2, i64 noundef %i.gt) #35
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit60

_ZNSt6vectorIjSaIjEED2Ev.exit60:                  ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !933

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !95   ; 2 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !95
  store i32 %i.k, ptr %i.i, align 4, !tbaa !95
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !95
  %i.x = load i32, ptr %i.v, align 4, !tbaa !95
  %i.y = icmp ult i32 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !95
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !95
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !934

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !95
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !95
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !95 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !95
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !935

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.ar, align 4, !tbaa !95
  %i.as = icmp sgt i64 %i.m, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !936

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.01841, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1742, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !95  ; 5 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !95 ; 5 uses
  %i.ba = icmp ult i32 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !95 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bc = icmp ult i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i32, ptr %0, align 4, !tbaa !95
  store i32 %i.az, ptr %0, align 4, !tbaa !95
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !95
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp ult i32 %i.ay, %i.bb
  %i.bf = load i32, ptr %0, align 4, !tbaa !95    ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bb, ptr %0, align 4, !tbaa !95
  store i32 %i.bf, ptr %i.ax, align 4, !tbaa !95
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ay, ptr %0, align 4, !tbaa !95
  store i32 %i.bf, ptr %i.f, align 4, !tbaa !95
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bg = icmp ult i32 %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %0, align 4, !tbaa !95
  store i32 %i.ay, ptr %0, align 4, !tbaa !95
  store i32 %i.bh, ptr %i.f, align 4, !tbaa !95
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp ult i32 %i.az, %i.bb
  %i.bj = load i32, ptr %0, align 4, !tbaa !95    ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.bb, ptr %0, align 4, !tbaa !95
  store i32 %i.bj, ptr %i.ax, align 4, !tbaa !95
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.az, ptr %0, align 4, !tbaa !95
  store i32 %i.bj, ptr %i.aw, align 4, !tbaa !95
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !95    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !95 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !937

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
end_hunk_1
