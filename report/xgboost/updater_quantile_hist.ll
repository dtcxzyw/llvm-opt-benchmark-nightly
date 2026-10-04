Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_quantile_hist?download=true
inline.NumInlined: 15946
inline.NumDeleted: 4545
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS_6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi1EEESB_TnNSt9enable_ifIXaasr10split_impl19IsVectorGradientSumIT_EE5valuesr10split_impl19IsVectorGradientSumIT0_EE5valueEiE4typeELi0EEEdRKS3_ijRKSD_RKSE_:bb.a
  %.sroa.448.0.copyload = load double, ptr %.sroa.448.0..sroa_idx, align 8, !tbaa !632 ; 5 uses
  %i.bw = mul i64 %i.f, %storemerge53
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.bw ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.bx, align 8, !tbaa !632 ; 11 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !632 ; 6 uses
  %i.by = insertelement <2 x double> poison, double %.sroa.448.0.copyload, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %.sroa.4.0.copyload, i64 1
  %i.ca = fadd <2 x double> %i.bt, %i.bz          ; 2 uses
  %i.cb = fcmp ugt double %.sroa.448.0.copyload, 0.000000e+00
  br i1 %i.cb, label %bb.b, label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit

bb.b:                                             ; preds = %.lr.ph.split
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cc = fmul double %.sroa.047.0.copyload, %.sroa.047.0.copyload
  %i.cd = fadd double %.sroa.448.0.copyload, %i.ab
  %i.ce = fdiv double %i.cc, %i.cd
  br label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit

bb.e:                                             ; preds = %bb.c
  %i.cf = fcmp ogt double %.sroa.047.0.copyload, %i.q
  br i1 %i.cf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cg = fsub double %.sroa.047.0.copyload, %i.q
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ch = fcmp olt double %.sroa.047.0.copyload, %i.s
  br i1 %i.ch, label %bb.h, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ci = fadd double %.sroa.047.0.copyload, %i.q
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i = phi double [ %i.cg, %bb.f ], [ %i.ci, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %i.cj = fmul double %.0.i.i, %.0.i.i
  %i.ck = fadd double %.sroa.448.0.copyload, %i.aa
  %i.cl = fdiv double %i.cj, %i.ck
  br label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit

bb.i:                                             ; preds = %bb.b
  %i.cm = fcmp ogt double %.sroa.047.0.copyload, %i.q
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = fsub double %.sroa.047.0.copyload, %i.q
  br label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.co = fcmp olt double %.sroa.047.0.copyload, %i.s
  br i1 %i.co, label %bb.l, label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cp = fadd double %.sroa.047.0.copyload, %i.q
  br label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit.thread

_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit: ; preds = %.lr.ph.split, %bb.d, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i
  %.0.i = phi double [ 0.000000e+00, %.lr.ph.split ], [ %i.ce, %bb.d ], [ %i.cl, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i ]
  %i.cq = fadd double %.03156, %.0.i              ; 4 uses
  %i.cr = fcmp ugt double %.sroa.4.0.copyload, 0.000000e+00
  br i1 %i.cr, label %bb.m, label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit42

_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.0.i.i.i = phi double [ %i.cn, %bb.j ], [ %i.cp, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.cs = fneg double %.0.i.i.i
  %i.ct = fadd double %.sroa.448.0.copyload, %i.v ; 2 uses
  %i.cu = fdiv double %i.cs, %i.ct                ; 3 uses
  %i.cv = tail call double @llvm.fabs.f64(double %i.cu)
  %i.cw = fcmp ogt double %i.cv, %i.w
  %i.cx = tail call double @llvm.copysign.f64(double %i.w, double %i.cu)
  %.012.i.i = select i1 %i.cw, double %i.cx, double %i.cu ; 4 uses
  %i.cy = fmul double %.sroa.047.0.copyload, 2.000000e+00
  %i.cz = fmul double %.012.i.i, %.012.i.i
  %i.da = fmul double %i.ct, %i.cz
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cy, double %.012.i.i, double %i.da)
  %i.dc = tail call noundef double @llvm.fabs.f64(double %.012.i.i)
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.x, double %i.dc, double %i.db)
  %i.de = fsub double %.03156, %i.dd              ; 2 uses
  %i.df = fcmp ugt double %.sroa.4.0.copyload, 0.000000e+00
  br i1 %i.df, label %.thread, label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit42

bb.m:                                             ; preds = %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit
  br i1 %i.n, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = fmul double %.sroa.0.0.copyload, %.sroa.0.0.copyload
  %i.dh = fadd double %.sroa.4.0.copyload, %i.v
  %i.di = fdiv double %i.dg, %i.dh
  br label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit42

bb.p:                                             ; preds = %bb.n
  %i.dj = fcmp ogt double %.sroa.0.0.copyload, %i.q
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dk = fsub double %.sroa.0.0.copyload, %i.q
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i40

bb.r:                                             ; preds = %bb.p
  %i.dl = fcmp olt double %.sroa.0.0.copyload, %i.s
  br i1 %i.dl, label %bb.s, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i40

bb.s:                                             ; preds = %bb.r
  %i.dm = fadd double %.sroa.0.0.copyload, %i.q
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i40

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i40: ; preds = %bb.s, %bb.r, %bb.q
  %.0.i.i41 = phi double [ %i.dk, %bb.q ], [ %i.dm, %bb.s ], [ 0.000000e+00, %bb.r ] ; 2 uses
  %i.dn = fmul double %.0.i.i41, %.0.i.i41
  %i.do = fadd double %.sroa.4.0.copyload, %i.ad
  %i.dp = fdiv double %i.dn, %i.do
  br label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit42

.thread:                                          ; preds = %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit.thread, %bb.m
  %i.dq = phi double [ %i.cq, %bb.m ], [ %i.de, %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit.thread ]
  %i.dr = fcmp ogt double %.sroa.0.0.copyload, %i.q
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  %i.ds = fsub double %.sroa.0.0.copyload, %i.q
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i37

bb.u:                                             ; preds = %.thread
  %i.dt = fcmp olt double %.sroa.0.0.copyload, %i.s
  br i1 %i.dt, label %bb.v, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i37

bb.v:                                             ; preds = %bb.u
  %i.du = fadd double %.sroa.0.0.copyload, %i.q
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i37

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i37: ; preds = %bb.v, %bb.u, %bb.t
  %.0.i.i.i38 = phi double [ %i.ds, %bb.t ], [ %i.du, %bb.v ], [ 0.000000e+00, %bb.u ]
  %i.dv = fneg double %.0.i.i.i38
  %i.dw = fadd double %.sroa.4.0.copyload, %i.ac  ; 2 uses
  %i.dx = fdiv double %i.dv, %i.dw                ; 3 uses
  %i.dy = tail call double @llvm.fabs.f64(double %i.dx)
  %i.dz = fcmp ogt double %i.dy, %i.w
  %i.ea = tail call double @llvm.copysign.f64(double %i.w, double %i.dx)
  %.012.i.i39 = select i1 %i.dz, double %i.ea, double %i.dx ; 4 uses
  %i.eb = fmul double %.sroa.0.0.copyload, 2.000000e+00
  %i.ec = fmul double %.012.i.i39, %.012.i.i39
  %i.ed = fmul double %i.dw, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.eb, double %.012.i.i39, double %i.ed)
  %i.ef = tail call noundef double @llvm.fabs.f64(double %.012.i.i39)
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ef, double %i.ee)
  %i.eh = fneg double %i.eg
  br label %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit42

_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit42: ; preds = %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit.thread, %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit, %bb.o, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i40, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i37
  %i.ei = phi double [ %i.dq, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i37 ], [ %i.cq, %bb.o ], [ %i.cq, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i40 ], [ %i.cq, %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit ], [ %i.de, %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit.thread ]
  %.0.i36 = phi double [ %i.eh, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i37 ], [ %i.di, %bb.o ], [ %i.dp, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i40 ], [ 0.000000e+00, %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit ], [ 0.000000e+00, %_ZN7xgboost4tree8CalcGainINS0_10TrainParamEdEET0_RKT_S3_S3_.exit.thread ]
  %i.ej = fadd double %i.ei, %.0.i36              ; 2 uses
  %i.ek = add nuw i64 %storemerge53, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !2183

bb.w:                                             ; preds = %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.em = load i8, ptr %i.el, align 8, !tbaa !440, !range !184, !noundef !185
  %i.en = trunc nuw i8 %i.em to i1
  %or.cond = and i1 %.not, %i.en
  br i1 %or.cond, label %.lr.ph63, label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread

.lr.ph63:                                         ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph63, %bb.x
  %.262 = phi double [ %.031.lcssa, %.lr.ph63 ], [ %i.fu, %bb.x ]
  %storemerge3561 = phi i64 [ 0, %.lr.ph63 ], [ %i.fv, %bb.x ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.er = load i64, ptr %4, align 8, !tbaa !91
  %i.es = mul i64 %i.er, %storemerge3561
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !530
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false), !tbaa.struct !648
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.ev = load i64, ptr %5, align 8, !tbaa !91
  %i.ew = mul i64 %i.ev, %storemerge3561
  %i.ex = load ptr, ptr %i.ep, align 8, !tbaa !530
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i64 16, i1 false), !tbaa.struct !648
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.ez = trunc i64 %storemerge3561 to i32
  call void @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE16CalcSplitWeightsINS_6detail20GradientPairInternalIdEES8_TnNSt9enable_ifIXntoosr10split_impl19IsVectorGradientSumIT_EE5valuesr10split_impl19IsVectorGradientSumIT0_EE5valueEiE4typeELi0EEESt5tupleIJffEERKS3_ijjRKSA_RKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.614") align 4 %8, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.fa = load <2 x float>, ptr %i.eq, align 8, !tbaa !241
  %i.fb = fpext <2 x float> %i.fa to <2 x double> ; 2 uses
  %i.fc = extractelement <2 x double> %i.fb, i64 1
  %i.fd = fmul double %i.fc, 2.000000e+00
  %i.fe = load <2 x double>, ptr %6, align 16, !tbaa !632 ; 2 uses
  %i.ff = load <2 x float>, ptr %8, align 8, !tbaa !241 ; 4 uses
  %i.fg = load <2 x double>, ptr %7, align 16, !tbaa !632 ; 2 uses
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.fi = fmul <2 x double> %i.fh, splat (double 2.000000e+00)
  %i.fj = fpext <2 x float> %i.ff to <2 x double>
  %i.fk = shufflevector <2 x double> %i.fg, <2 x double> %i.fe, <2 x i32> <i32 1, i32 3>
  %i.fl = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fadd <2 x double> %i.fk, %i.fl
  %i.fn = fmul <2 x float> %i.ff, %i.ff
  %i.fo = fpext <2 x float> %i.fn to <2 x double>
  %i.fp = fmul <2 x double> %i.fm, %i.fo
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fj, <2 x double> %i.fp)
  %i.fr = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ff)
  %i.fs = fpext <2 x float> %i.fr to <2 x double>
  %9 = insertelement <2 x double> poison, double %i.fd, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %i.fs, <2 x double> %i.fq) ; 2 uses
  %i.ft = extractelement <2 x double> %11, i64 1
  %12 = fsub double %.262, %i.ft
  %13 = extractelement <2 x double> %11, i64 0
  %i.fu = fsub double %12, %13                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.fv = add nuw i64 %storemerge3561, 1          ; 2 uses
  %exitcond72.not = icmp eq i64 %i.fv, %i.b
  br i1 %exitcond72.not, label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread, label %bb.x, !llvm.loop !2184

_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread: ; preds = %bb.x, %._crit_edge, %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit, %bb.w
  %.0 = phi double [ -inf, %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit ], [ %.031.lcssa, %bb.w ], [ -inf, %._crit_edge ], [ %i.fu, %bb.x ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateINS_6linalg10TensorViewIS5_Li1EEEEEbfjfbbRKT_SF_(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1, i32 noundef %2, float noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(52) %6, ptr noundef nonnull align 8 dereferenceable(52) %7) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %5 to i8
  %i.b = tail call float @llvm.fabs.f32(float %1)
  %i.c = fcmp oeq float %i.b, +inf
  br i1 %i.c, label %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit20, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !374
  %i.f = and i32 %i.e, 2147483647
  %.not.i = icmp ugt i32 %i.f, %2
  %i.g = load float, ptr %0, align 8, !tbaa !373  ; 2 uses
  br i1 %.not.i, label %.split, label %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit

.split:                                           ; preds = %bb.b
  %i.h = fcmp ule float %i.g, %1
  br i1 %i.h, label %bb.c, label %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit20

_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit: ; preds = %bb.b
  %i.i = fcmp ogt float %1, %i.g
  br i1 %i.i, label %bb.c, label %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit20

bb.c:                                             ; preds = %.split, %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit
  store float %1, ptr %0, align 8, !tbaa !373
  %i.j = or i32 %2, -2147483648
  %spec.select = select i1 %4, i32 %i.j, i32 %2
  store i32 %spec.select, ptr %i.d, align 4, !tbaa !374
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %3, ptr %i.k, align 8, !tbaa !375
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.a, ptr %i.l, align 8, !tbaa !557
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !531  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !401  ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !301  ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4                   ; 3 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw i64 %i.o, %i.v
  tail call void @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.x)
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !531
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.y = icmp ult i64 %i.o, %i.v
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.z
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.f
  store ptr %i.z, ptr %i.p, align 8, !tbaa !401
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.f, %bb.e, %bb.d
  %i.aa = phi i64 [ %.pre.i, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %_ZSt8_DestroyIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RSaIT0_E.exit.i.i.i ] ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i, label %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !404 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.ae = icmp eq i64 %i.aa, 1
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.new:                           ; preds = %.lr.ph.i.i.i.i.i.i
  %unroll_iter = and i64 %i.aa, 9223372036854775806
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.new
  %.049.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.new ], [ %i.aq, %bb.g ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.new ], [ %i.ap, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.af = load i64, ptr %6, align 8, !tbaa !91
  %i.ag = mul i64 %i.af, %.sroa.05.08.i.i.i.i.i.i
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !530
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.049.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !648
  %i.aj = or disjoint i64 %.sroa.05.08.i.i.i.i.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i, i64 16
  %i.al = load i64, ptr %6, align 8, !tbaa !91
  %i.am = mul i64 %i.al, %i.aj
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !530
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !648
  %i.ap = add nuw nsw i64 %.sroa.05.08.i.i.i.i.i.i, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i, i64 32 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !2185

_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i
  %.049.i.i.i.i.i.i.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.aq, %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit.loopexit.unr-lcssa ]
  %.sroa.05.08.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.ar = load i64, ptr %6, align 8, !tbaa !91
  %i.as = mul i64 %i.ar, %.sroa.05.08.i.i.i.i.i.i.epil.init
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !530
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.049.i.i.i.i.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !648
  br label %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit

_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit: ; preds = %.epil.preheader, %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit.loopexit.unr-lcssa, %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !531 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !401 ; 2 uses
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !301 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 4                 ; 3 uses
  %i.bf = icmp ugt i64 %i.ax, %i.be
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit
  %i.bg = sub nuw i64 %i.ax, %i.be
  tail call void @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef %i.bg)
  %.pre.i19 = load i64, ptr %i.aw, align 8, !tbaa !531
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i12

bb.i:                                             ; preds = %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit
  %i.bh = icmp ult i64 %i.ax, %i.be
  br i1 %i.bh, label %bb.j, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i12

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ax ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.az, %i.bi
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i12, label %_ZSt8_DestroyIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RSaIT0_E.exit.i.i.i18

_ZSt8_DestroyIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RSaIT0_E.exit.i.i.i18: ; preds = %bb.j
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !401
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i12

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i12: ; preds = %_ZSt8_DestroyIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RSaIT0_E.exit.i.i.i18, %bb.j, %bb.i, %bb.h
  %i.bj = phi i64 [ %.pre.i19, %bb.h ], [ %i.ax, %bb.i ], [ %i.ax, %bb.j ], [ %i.ax, %_ZSt8_DestroyIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RSaIT0_E.exit.i.i.i18 ] ; 5 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i13, label %_ZN7xgboost4tree9CopyStatsINS_6detail20GradientPairInternalIdEES4_EERSt6vectorIT_SaIS6_EERKNS_6linalg10TensorViewIT0_Li1EEEPS8_.exit20

.lr.ph.i.i.i.i.i.i13:                             ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE6resizeEm.exit.i12
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !404 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %xtraiter36 = and i64 %i.bj, 1
  %i.bn = icmp eq i64 %i.bj, 1
  br i1 %i.bn, label %.epil.preheader35, label %.lr.ph.i.i.i.i.i.i13.new

.lr.ph.i.i.i.i.i.i13.new:                         ; preds = %.lr.ph.i.i.i.i.i.i13
  %unroll_iter39 = and i64 %i.bj, 9223372036854775806
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i13.new
  %.049.i.i.i.i.i.i14 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i13.new ], [ %i.bz, %bb.k ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i.i15 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i13.new ], [ %i.by, %bb.k ] ; 3 uses
  %niter40 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i13.new ], [ %niter40.next.1, %bb.k ]
  %i.bo = load i64, ptr %7, align 8, !tbaa !91
  %i.bp = mul i64 %i.bo, %.sroa.05.08.i.i.i.i.i.i15
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !530
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.049.i.i.i.i.i.i14, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !648
  %i.bs = or disjoint i64 %.sroa.05.08.i.i.i.i.i.i15, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i14, i64 16
  %i.bu = load i64, ptr %7, align 8, !tbaa !91
  %i.bv = mul i64 %i.bu, %i.bs
  %i.bw = load ptr, ptr %i.bm, align 8, !tbaa !530
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !648
  %i.by = add nuw nsw i64 %.sroa.05.08.i.i.i.i.i.i15, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i14, i64 32 ; 2 uses
  %niter40.next.1 = add nuw nsw i64 %niter40, 2   ; 2 uses
  %niter40.ncmp.1 = icmp eq i64 %niter40.next.1, %unroll_iter39
end_hunk_0
