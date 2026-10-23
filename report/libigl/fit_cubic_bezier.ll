Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/fit_cubic_bezier?download=true
inline.NumInlined: 2199
inline.NumDeleted: 1099
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 48
begin_hunk_0_@"_ZZN3igl16fit_cubic_bezierERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdRSt6vectorIS2_SaIS2_EEENK3$_0clES4_ii":bb.a
  br i1 %i.eh, label %.thread, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread.backedge

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread.backedge: ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESB_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.ei = add nsw i32 %i.y, %3                    ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, -1
  %.not = icmp slt i32 %i.ei, %i.c
  %or.cond = and i1 %i.ej, %.not
  br i1 %or.cond, label %bb.f, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread._crit_edge, !llvm.loop !97

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %thread-pre-split.i.i.i.i.i.i.i, %.invoke, %bb.p
  %lpad.loopexit.split-lp95 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.ek = load <2 x double>, ptr %i.aj, align 16, !tbaa !32, !noalias !105 ; 2 uses
  %i.el = fmul <2 x double> %i.ek, %i.ek          ; 3 uses
  %i.em = icmp sgt i64 %i.ai, 3
  br i1 %i.em, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.en = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.eo = load <2 x double>, ptr %i.en, align 16, !tbaa !32, !noalias !105 ; 2 uses
  %i.ep = fmul <2 x double> %i.eo, %i.eo          ; 2 uses
  %i.eq = icmp samesign ugt i64 %i.ai, 7
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.m
  %.075.lcssa.i.i.i.i.i = phi <2 x double> [ %i.ep, %bb.m ], [ %i.fb, %.lr.ph.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i = phi <2 x double> [ %i.el, %bb.m ], [ %i.ew, %.lr.ph.i.i.i.i.i ]
  %i.er = fadd <2 x double> %.075.lcssa.i.i.i.i.i, %.072.lcssa.i.i.i.i.i ; 2 uses
  %i.es = icmp sgt i64 %i.cc, %i.ca
  br i1 %i.es, label %bb.n, label %bb.o

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %.05480.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 4, %bb.m ] ; 3 uses
  %.054.in79.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.m ]
  %.07278.i.i.i.i.i = phi <2 x double> [ %i.ew, %.lr.ph.i.i.i.i.i ], [ %i.el, %bb.m ]
  %.07577.i.i.i.i.i = phi <2 x double> [ %i.fb, %.lr.ph.i.i.i.i.i ], [ %i.ep, %bb.m ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.05480.i.i.i.i.i
  %i.eu = load <2 x double>, ptr %i.et, align 16, !tbaa !32, !noalias !105 ; 2 uses
  %i.ev = fmul <2 x double> %i.eu, %i.eu
  %i.ew = fadd <2 x double> %.07278.i.i.i.i.i, %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.054.in79.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.ez = load <2 x double>, ptr %i.ey, align 16, !tbaa !32, !noalias !105 ; 2 uses
  %i.fa = fmul <2 x double> %i.ez, %i.ez
  %i.fb = fadd <2 x double> %.07577.i.i.i.i.i, %i.fa ; 2 uses
  %.054.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i, 4 ; 2 uses
  %i.fc = icmp slt i64 %.054.i.i.i.i.i, %i.ca
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !1

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ca
  %i.fe = load <2 x double>, ptr %i.fd, align 16, !tbaa !32, !noalias !105 ; 2 uses
  %i.ff = fmul <2 x double> %i.fe, %i.fe
  %i.fg = fadd <2 x double> %i.er, %i.ff
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i, %bb.l
  %.274.i.i.i.i.i = phi <2 x double> [ %i.el, %bb.l ], [ %i.fg, %bb.n ], [ %i.er, %._crit_edge.i.i.i.i.i ]
  %i.fh = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i) ; 3 uses
  %i.fi = icmp slt i64 %i.cc, %i.ai
  br i1 %i.fi, label %.lr.ph85.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.o
  %i.fj = sub i64 %i.ai, %i.cc
  %xtraiter115 = and i64 %i.fj, 3                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.fo, %.lr.ph85.i.i.i.i.i.prol ], [ %i.cc, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.fn, %.lr.ph85.i.i.i.i.i.prol ], [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter117 = phi i64 [ %prol.iter117.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.05283.i.i.i.i.i.prol
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !24, !noalias !105 ; 2 uses
  %i.fm = fmul double %i.fl, %i.fl
  %i.fn = fadd double %.182.i.i.i.i.i.prol, %i.fm ; 3 uses
  %i.fo = add nsw i64 %.05283.i.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !100

.lr.ph85.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fn, %.lr.ph85.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.cc, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fo, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fn, %.lr.ph85.i.i.i.i.i.prol ]
  %i.fp = sub i64 %i.cc, %i.ai
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.i, label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.gk, %.lr.ph85.i.i.i.i.i ], [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %i.gj, %.lr.ph85.i.i.i.i.i ], [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.05283.i.i.i.i.i
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24, !noalias !105 ; 2 uses
  %i.ft = fmul double %i.fs, %i.fs
  %i.fu = fadd double %.182.i.i.i.i.i, %i.ft
  %i.fv = getelementptr [8 x i8], ptr %i.aj, i64 %.05283.i.i.i.i.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !24, !noalias !105 ; 2 uses
  %i.fy = fmul double %i.fx, %i.fx
  %i.fz = fadd double %i.fu, %i.fy
  %i.ga = getelementptr [8 x i8], ptr %i.aj, i64 %.05283.i.i.i.i.i
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !24, !noalias !105 ; 2 uses
  %i.gd = fmul double %i.gc, %i.gc
  %i.ge = fadd double %i.fz, %i.gd
  %i.gf = getelementptr [8 x i8], ptr %i.aj, i64 %.05283.i.i.i.i.i
  %i.gg = getelementptr i8, ptr %i.gf, i64 24
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !24, !noalias !105 ; 2 uses
  %i.gi = fmul double %i.gh, %i.gh
  %i.gj = fadd double %i.ge, %i.gi                ; 2 uses
  %i.gk = add nsw i64 %.05283.i.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gk, %i.ai
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !2

.thread:                                          ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.thread
  %i.gl = fmul double %i.ef, %i.ef
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.i

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %.thread, %bb.o
  %.0.i.i.i = phi double [ %i.gl, %.thread ], [ %i.fh, %bb.o ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.gj, %.lr.ph85.i.i.i.i.i ] ; 2 uses
  %i.gm = fcmp ogt double %.0.i.i.i, 0.000000e+00
  br i1 %i.gm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !105
  %.scalar.i = call double @llvm.sqrt.f64(double %.0.i.i.i)
  store ptr %5, ptr %4, align 8, !tbaa !34, !alias.scope !106, !noalias !105
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ai, ptr %i.gn, align 8, !alias.scope !106, !noalias !105
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %.scalar.i, ptr %i.go, align 8, !tbaa !36, !alias.scope !106, !noalias !105
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS2_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEES9_EEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !105
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit

bb.q:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit.i
  %i.gp = icmp ugt i64 %i.ai, 2305843009213693951
  br i1 %i.gp, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i: ; preds = %bb.q
  %i.gq = shl nuw i64 %i.ai, 3                    ; 2 uses
  %i.gr = call noalias ptr @malloc(i64 noundef %i.gq) #21, !noalias !105 ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %.invoke, label %bb.r

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i, %bb.q
  %i.gt = call ptr @__cxa_allocate_exception(i64 8) #20, !noalias !105 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gt, align 8, !tbaa !38, !noalias !105
  invoke void @__cxa_throw(ptr nonnull %i.gt, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i
  store ptr %i.gr, ptr %0, align 8, !tbaa !27, !alias.scope !105
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.gu, align 8, !tbaa !28, !alias.scope !105
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull align 8 %i.aj, i64 %i.gq, i1 false), !noalias !105
  br label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit, %bb.r, %.noexc20, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.gv = load ptr, ptr %5, align 8, !tbaa !27
  call void @free(ptr noundef %i.gv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %.pn18 = phi { ptr, i32 } [ %i.u, %bb.e ], [ %lpad.loopexit.split-lp95, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.gw = load ptr, ptr %5, align 8, !tbaa !27
  call void @free(ptr noundef %i.gw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn18
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.Eigen::Matrix.3", align 8   ; 10 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 12 uses
  %11 = alloca %"class.Eigen::Matrix.3", align 8  ; 9 uses
  %12 = alloca %"class.Eigen::Matrix.3", align 8  ; 8 uses
  %13 = alloca %"class.Eigen::Matrix", align 8    ; 11 uses
  %14 = alloca %"class.Eigen::Matrix.42", align 8 ; 14 uses
  %15 = alloca %"class.Eigen::Matrix", align 8    ; 20 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %16 = alloca %"class.Eigen::Matrix.42", align 8 ; 12 uses
  %17 = alloca %"class.Eigen::Matrix.3", align 8  ; 9 uses
  %18 = alloca %"class.Eigen::CwiseBinaryOp", align 8 ; 16 uses
  %19 = alloca %"class.Eigen::Matrix.3", align 8  ; 10 uses
  %i.b = fmul double %5, 1.000000e+02
  %i.c = sub nsw i32 %2, %1                       ; 5 uses
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke fastcc void @"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_0clES4_iiS7_S7_RS2_"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.n = mul nsw i64 %i.m, %i.k                   ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.p, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.q = shl nuw i64 %i.n, 3
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #21 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.invoke, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.e
  %i.t = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.r, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ] ; 2 uses
  store ptr %.0.i.i, ptr %i.g, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.k, ptr %i.u, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.m, ptr %i.v, align 8, !tbaa !22
  %i.w = load i64, ptr %i.j, align 8, !tbaa !20
  %i.x = load i64, ptr %i.l, align 8, !tbaa !22
  %i.y = mul nsw i64 %i.x, %i.w                   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.noexc, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i
  %.idx.i166 = shl nsw i64 %i.y, 3
  %i.aa = load ptr, ptr %13, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0.i.i, ptr align 8 %i.aa, i64 %.idx.i166, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !42
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE9push_backERKS2_.exit unwind label %bb.h

_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc, %bb.g
  %i.ac = load ptr, ptr %13, align 8, !tbaa !21
  call void @free(ptr noundef %i.ac) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bk

bb.h:                                             ; preds = %.invoke, %bb.g, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %13, align 8, !tbaa !21
  call void @free(ptr noundef %i.ae) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.af = zext nneg i32 %i.d to i64               ; 7 uses
  %i.ag = icmp sgt i32 %i.c, -1
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = shl nuw nsw i64 %i.af, 3
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #21 ; 14 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ak, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.i
  store ptr %i.ai, ptr %14, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i64 %i.af, ptr %i.al, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !24
  %.not248.not = icmp slt i32 %1, %2
  br i1 %.not248.not, label %.lr.ph, label %._crit_edge

common.resume:                                    ; preds = %bb.h, %bb.bq, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.ad, %bb.h ], [ %.pn119.pn.pn.pn.pn, %bb.bq ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @free(ptr noundef %i.an) #20
  br label %common.resume

.lr.ph:                                           ; preds = %.sink.split.i.i.i.i
  %i.ao = load ptr, ptr %0, align 8, !tbaa !21, !noalias !159
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !22, !noalias !160 ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = icmp sgt i64 %i.aq, 1
  br i1 %i.ar, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.at = sext i32 %1 to i64                      ; 6 uses
  %i.au = add nsw i64 %i.at, 1                    ; 2 uses
  %i.av = add i32 %2, 1
  %load_initial = load double, ptr %i.ai, align 8
  %i.aw = fadd double %load_initial, 0.000000e+00 ; 5 uses
  %xtraiter513 = and i32 %i.c, 3                  ; 2 uses
  %lcmp.mod514.not = icmp eq i32 %xtraiter513, 0
  br i1 %lcmp.mod514.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv270.prol = phi i64 [ %indvars.iv.next271.prol, %.lr.ph.split.us.prol ], [ %i.au, %.lr.ph.split.us.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.ax = sub nsw i64 %indvars.iv270.prol, %i.at
  %i.ay = getelementptr [8 x i8], ptr %i.ai, i64 %i.ax
  store double %i.aw, ptr %i.ay, align 8, !tbaa !24
  %indvars.iv.next271.prol = add nsw i64 %indvars.iv270.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter513
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !111

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv270.unr = phi i64 [ %i.au, %.lr.ph.split.us.preheader ], [ %indvars.iv.next271.prol, %.lr.ph.split.us.prol ]
  %i.az = sub i32 %1, %2
  %i.ba = icmp ugt i32 %i.az, -4
  br i1 %i.ba, label %.lr.ph252, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.prol.loopexit
  %invariant.op = sub i64 1, %i.at
  %invariant.op586 = sub i64 2, %i.at
  %invariant.op588 = sub i64 3, %i.at
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv270 = phi i64 [ %indvars.iv270.unr, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next271.3, %.lr.ph.split.us ] ; 5 uses
  %i.bb = sub nsw i64 %indvars.iv270, %i.at
  %i.bc = getelementptr [8 x i8], ptr %i.ai, i64 %i.bb
  store double %i.aw, ptr %i.bc, align 8, !tbaa !24
  %.reass = add i64 %indvars.iv270, %invariant.op
  %i.bd = getelementptr [8 x i8], ptr %i.ai, i64 %.reass
  store double %i.aw, ptr %i.bd, align 8, !tbaa !24
  %.reass587 = add i64 %indvars.iv270, %invariant.op586
  %i.be = getelementptr [8 x i8], ptr %i.ai, i64 %.reass587
  store double %i.aw, ptr %i.be, align 8, !tbaa !24
  %.reass589 = add i64 %indvars.iv270, %invariant.op588
  %i.bf = getelementptr [8 x i8], ptr %i.ai, i64 %.reass589
  store double %i.aw, ptr %i.bf, align 8, !tbaa !24
  %indvars.iv.next271.3 = add nsw i64 %indvars.iv270, 4 ; 2 uses
  %lftr.wideiv273.3 = trunc i64 %indvars.iv.next271.3 to i32
  %exitcond274.not.3 = icmp eq i32 %i.av, %lftr.wideiv273.3
  br i1 %exitcond274.not.3, label %.lr.ph252, label %.lr.ph.split.us, !llvm.loop !112

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !20 ; 3 uses
  %i.bi = sext i32 %1 to i64                      ; 2 uses
  %i.bj = add nsw i64 %i.bi, 1
  %i.bk = add i32 %2, 1
  %i.bl = add i64 %i.aq, -1                       ; 3 uses
  %xtraiter = and i64 %i.bl, 1
end_hunk_0
begin_hunk_1_@_ZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EE:bb.a
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !24
  %i.cb = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv ; 5 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8     ; 4 uses
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !24
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !24
  %i.cf = fsub double %i.cd, %i.ce                ; 2 uses
  %i.cg = fmul double %i.cf, %i.cf                ; 3 uses
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit238

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.l
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.02223.i.i.i.i.i = phi double [ %i.cx, %.lr.ph.i.i.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ch = mul nsw i64 %.01724.i.i.i.i.i, %i.bh    ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %i.cb, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !24
  %i.ck = getelementptr [8 x i8], ptr %i.cc, i64 %i.ch
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !24
  %i.cm = fsub double %i.cj, %i.cl                ; 2 uses
  %i.cn = fmul double %i.cm, %i.cm
  %i.co = fadd double %.02223.i.i.i.i.i, %i.cn
  %i.cp = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.cq = mul nsw i64 %i.cp, %i.bh                ; 2 uses
  %i.cr = getelementptr [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !24
  %i.ct = getelementptr [8 x i8], ptr %i.cc, i64 %i.cq
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !24
  %i.cv = fsub double %i.cs, %i.cu                ; 2 uses
  %i.cw = fmul double %i.cv, %i.cv
  %i.cx = fadd double %i.co, %i.cw                ; 3 uses
  %i.cy = add nuw nsw i64 %.01724.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit238.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit238.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i.i.i.i
  br i1 %lcmp.mod.not, label %.loopexit238, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %.loopexit238.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.loopexit238.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.cg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %.loopexit238.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod512)
  %i.cz = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %i.bh ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.cb, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = getelementptr [8 x i8], ptr %i.cc, i64 %i.cz
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24
  %i.de = fsub double %i.db, %i.dd                ; 2 uses
  %i.df = fmul double %i.de, %i.de
  %i.dg = fadd double %.02223.i.i.i.i.i.epil.init, %i.df
  br label %.loopexit238

.loopexit238:                                     ; preds = %.lr.ph.i.i.i.i.i.epil.preheader, %.loopexit238.loopexit.unr-lcssa, %bb.l
  %.0.i.i.i = phi double [ %i.cg, %bb.l ], [ %i.cx, %.loopexit238.loopexit.unr-lcssa ], [ %i.dg, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %.0.i.i.i)
  %i.dh = fadd double %i.ca, %.scalar.i
  store double %i.dh, ptr %i.by, align 8, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bk, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph252, label %bb.l, !llvm.loop !112

bb.m:                                             ; preds = %bb.m, %.lr.ph252.new
  %indvars.iv275 = phi i64 [ %indvars.iv275.unr, %.lr.ph252.new ], [ %indvars.iv.next276.1, %bb.m ] ; 3 uses
  %i.di = sub nsw i64 %indvars.iv275, %i.bp
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.di ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !24
  %i.dl = load double, ptr %i.bo, align 8, !tbaa !24
  %i.dm = fdiv double %i.dk, %i.dl
  store double %i.dm, ptr %i.dj, align 8, !tbaa !24
  %.reass591 = add i64 %indvars.iv275, %invariant.op590
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %.reass591 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !24
  %i.dp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.dq = fdiv double %i.do, %i.dp
  store double %i.dq, ptr %i.dn, align 8, !tbaa !24
  %indvars.iv.next276.1 = add nsw i64 %indvars.iv275, 2 ; 2 uses
  %lftr.wideiv278.1 = trunc i64 %indvars.iv.next276.1 to i32
  %exitcond279.not.1 = icmp eq i32 %i.br, %lftr.wideiv278.1
  br i1 %exitcond279.not.1, label %._crit_edge, label %bb.m, !llvm.loop !113

._crit_edge:                                      ; preds = %.prol.loopexit, %bb.m, %.sink.split.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke fastcc void @"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_1clES4_iiRKNS1_IdLin1ELi1ELi0ELin1ELi1EEES7_S7_RS2_"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.dr = invoke fastcc noundef double @"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_2clES4_iiS4_RKNS1_IdLin1ELi1ELi0ELin1ELi1EEERi"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.o unwind label %bb.v       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ds = fcmp uge double %i.dr, %5
  %or.cond.not = or i1 %6, %i.ds
  br i1 %or.cond.not, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !43
  %.not.i138 = icmp eq ptr %i.du, %i.dw
  br i1 %.not.i138, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !20 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !22 ; 2 uses
  %i.eb = mul nsw i64 %i.ea, %i.dy                ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i170, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ed = icmp ugt i64 %i.eb, 2305843009213693951
  br i1 %i.ed, label %.invoke357, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i169

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i169: ; preds = %bb.r
  %i.ee = shl nuw i64 %i.eb, 3
  %i.ef = call noalias ptr @malloc(i64 noundef %i.ee) #21 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %.invoke357, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i170

.invoke357:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i169, %bb.r
  %i.eh = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.eh, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.eh, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont358 unwind label %bb.v

.cont358:                                         ; preds = %.invoke357
  unreachable

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i170: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i169, %bb.q
  %.0.i.i171 = phi ptr [ null, %bb.q ], [ %i.ef, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i169 ] ; 2 uses
  store ptr %.0.i.i171, ptr %i.du, align 8, !tbaa !21
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %i.dy, ptr %i.ei, align 8, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %i.ea, ptr %i.ej, align 8, !tbaa !22
  %i.ek = load i64, ptr %i.dx, align 8, !tbaa !20
  %i.el = load i64, ptr %i.dz, align 8, !tbaa !22
  %i.em = mul nsw i64 %i.el, %i.ek                ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %.noexc139, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i170
  %.idx.i172 = shl nsw i64 %i.em, 3
  %i.eo = load ptr, ptr %15, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0.i.i171, ptr align 8 %i.eo, i64 %.idx.i172, i1 false)
  br label %.noexc139

.noexc139:                                        ; preds = %bb.s, %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i170
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %i.ep, ptr %i.dt, align 8, !tbaa !42
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE9push_backERKS2_.exit141

bb.t:                                             ; preds = %bb.p
  invoke void @_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.du, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE9push_backERKS2_.exit141 unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.v:                                             ; preds = %.invoke357, %bb.t, %bb.n
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.w:                                             ; preds = %bb.o
  %i.es = fcmp olt double %i.dr, %i.b
  br i1 %i.es, label %.preheader, label %.loopexit235

.preheader:                                       ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.eu = shl nuw nsw i64 %i.af, 3
  %.not113253 = icmp sgt i32 %1, %2
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ff = sext i32 %1 to i64                      ; 2 uses
  %i.fg = add i32 %2, 1
  br label %bb.x

bb.x:                                             ; preds = %.preheader, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit
  %.090257 = phi i32 [ 0, %.preheader ], [ %i.abh, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.fh = call noalias ptr @malloc(i64 noundef %i.eu) #21 ; 3 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %.invoke359.invoke, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.x
  store ptr %i.fh, ptr %16, align 8, !tbaa !45
  store i64 %i.af, ptr %i.et, align 8, !tbaa !46
  br i1 %.not113253, label %._crit_edge256, label %.lr.ph255

._crit_edge256:                                   ; preds = %.loopexit, %.sink.split.i.i
  invoke fastcc void @"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_1clES4_iiRKNS1_IdLin1ELi1ELi0ELin1ELi1EEES7_S7_RS2_"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.ax unwind label %.loopexit.split-lp371.loopexit.split-lp

.lr.ph255:                                        ; preds = %.sink.split.i.i, %.loopexit
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %.loopexit ], [ %i.ff, %.sink.split.i.i ] ; 3 uses
  %i.fj = load ptr, ptr %0, align 8, !tbaa !21, !noalias !161
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %indvars.iv280 ; 6 uses
  %i.fl = load i64, ptr %i.ev, align 8, !tbaa !22, !noalias !161 ; 11 uses
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %.loopexit234, label %bb.y

bb.y:                                             ; preds = %.lr.ph255
  %i.fn = sdiv i64 9223372036854775807, %i.fl
  %i.fo = icmp slt i64 %i.fn, 1
  br i1 %i.fo, label %.invoke359.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.y
  %i.fp = icmp sgt i64 %i.fl, 0
  br i1 %i.fp, label %bb.z, label %.loopexit234

bb.z:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fq = icmp samesign ugt i64 %i.fl, 2305843009213693951
  br i1 %i.fq, label %.invoke359.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i179

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i179: ; preds = %bb.z
  %i.fr = shl nuw i64 %i.fl, 3
  %i.fs = call noalias ptr @malloc(i64 noundef %i.fr) #21 ; 10 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %.invoke359.invoke, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i179
  %i.fu = load i64, ptr %i.ew, align 8, !tbaa !20 ; 6 uses
  %min.iters.check453 = icmp ugt i64 %i.fl, 3
  %ident.check451.not = icmp eq i64 %i.fu, 1
  %or.cond = select i1 %min.iters.check453, i1 %ident.check451.not, i1 false
  br i1 %or.cond, label %vector.ph454, label %.lr.ph.i.i.i.i.i.i.i.preheader488

vector.ph454:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec455 = and i64 %i.fl, 2305843009213693948  ; 3 uses
  br label %vector.body456

vector.body456:                                   ; preds = %vector.body456, %vector.ph454
  %index457 = phi i64 [ 0, %vector.ph454 ], [ %index.next460, %vector.body456 ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %index457 ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %index457 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load458 = load <2 x double>, ptr %i.fw, align 8, !tbaa !24
  %wide.load459 = load <2 x double>, ptr %i.fx, align 8, !tbaa !24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <2 x double> %wide.load458, ptr %i.fv, align 8, !tbaa !24
  store <2 x double> %wide.load459, ptr %i.fy, align 8, !tbaa !24
  %index.next460 = add nuw i64 %index457, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next460, %n.vec455
  br i1 %i.fz, label %middle.block461, label %vector.body456, !llvm.loop !116

middle.block461:                                  ; preds = %vector.body456
  %cmp.n462 = icmp eq i64 %i.fl, %n.vec455
  br i1 %cmp.n462, label %.loopexit234, label %.lr.ph.i.i.i.i.i.i.i.preheader488

.lr.ph.i.i.i.i.i.i.i.preheader488:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block461
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec455, %middle.block461 ] ; 3 uses
  %xtraiter518 = and i64 %i.fl, 3                 ; 2 uses
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader488, %.lr.ph.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.prol = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader488 ] ; 3 uses
  %prol.iter520 = phi i64 [ %prol.iter520.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader488 ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.05.i.i.i.i.i.i.i.prol
  %i.gb = mul nsw i64 %.05.i.i.i.i.i.i.i.prol, %i.fu
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.gb
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !24
  store double %i.gd, ptr %i.ga, align 8, !tbaa !24
  %i.ge = add nuw nsw i64 %.05.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter520.next = add i64 %prol.iter520, 1   ; 2 uses
  %prol.iter520.cmp.not = icmp eq i64 %prol.iter520.next, %xtraiter518
  br i1 %prol.iter520.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !117

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader488
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader488 ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.gf = sub nsw i64 %.05.i.i.i.i.i.i.i.ph, %i.fl
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %.loopexit234, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.ha, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.05.i.i.i.i.i.i.i
  %i.gi = mul nsw i64 %.05.i.i.i.i.i.i.i, %i.fu
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !24
  store double %i.gk, ptr %i.gh, align 8, !tbaa !24
  %i.gl = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gl
  %i.gn = mul nsw i64 %i.gl, %i.fu
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8, !tbaa !24
  store double %i.gp, ptr %i.gm, align 8, !tbaa !24
  %i.gq = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gq
  %i.gs = mul nsw i64 %i.gq, %i.fu
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !24
  store double %i.gu, ptr %i.gr, align 8, !tbaa !24
  %i.gv = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gv
  %i.gx = mul nsw i64 %i.gv, %i.fu
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.gx
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !24
  store double %i.gz, ptr %i.gw, align 8, !tbaa !24
  %i.ha = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ha, %i.fl
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %.loopexit234, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !118

.loopexit.split-lp371.loopexit.split-lp:          ; preds = %thread-pre-split.i.i.i.i.i.i.i, %bb.ax, %._crit_edge256, %.invoke359.invoke, %bb.bd
  %lpad.loopexit.split-lp491 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.a

.loopexit234:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block461, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.lr.ph255
  %.sroa.0.1 = phi ptr [ null, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i ], [ null, %.lr.ph255 ], [ %i.fs, %middle.block461 ], [ %i.fs, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 20 uses
  %i.hb = sub nsw i64 %indvars.iv280, %i.ff       ; 2 uses
  %i.hc = load ptr, ptr %14, align 8, !tbaa !45
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load double, ptr %i.hd, align 8, !tbaa !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !162
  invoke void @_ZN3igl6bezierIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 8 dereferenceable(24) %15, double noundef %i.he, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_4clES4_d.exit.i" unwind label %bb.aa

bb.aa:                                            ; preds = %.loopexit234
  %i.hf = landingpad { ptr, i32 }
          cleanup
  %i.hg = load ptr, ptr %8, align 8, !tbaa !27, !alias.scope !162
  call void @free(ptr noundef %i.hg) #20
  br label %.body149

"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_4clES4_d.exit.i": ; preds = %.loopexit234
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.hh = load i64, ptr %i.ex, align 8, !tbaa !22 ; 41 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.preheader.split.i, label %bb.ab

bb.ab:                                            ; preds = %"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_4clES4_d.exit.i"
  %i.hj = sdiv i64 9223372036854775807, %i.hh
  %i.hk = icmp slt i64 %i.hj, 3
  br i1 %i.hk, label %.invoke.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hl = icmp sgt i64 %i.hh, 0
  br i1 %i.hl, label %bb.ad, label %.preheader.split.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.hm = icmp samesign ugt i64 %i.hh, 768614336404564650
  br i1 %i.hm, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.ad
  %i.hn = mul nuw i64 %i.hh, 24
  %i.ho = call noalias ptr @malloc(i64 noundef %i.hn) #21 ; 16 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i96.i

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.ad, %bb.ab
  %i.hq = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hq, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.hq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont.i unwind label %bb.ae

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ae:                                            ; preds = %.invoke.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i96.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  store ptr %i.ho, ptr %9, align 8, !tbaa !21
  store i64 3, ptr %i.ey, align 8, !tbaa !20
  store i64 %i.hh, ptr %i.ez, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.hs = shl nuw i64 %i.hh, 4
  %i.ht = call noalias ptr @malloc(i64 noundef %i.hs) #21 ; 6 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %.invoke180.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader.i

.invoke180.i:                                     ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i96.i
  %i.hv = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hv, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.hv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont181.i unwind label %bb.af

.cont181.i:                                       ; preds = %.invoke180.i
  unreachable

bb.af:                                            ; preds = %.invoke180.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i

.preheader.split.thread.i:                        ; preds = %bb.ac
  store i64 3, ptr %i.ey, align 8, !tbaa !20
  store i64 %i.hh, ptr %i.ez, align 8, !tbaa !22
  br label %.split134.i.sink.split

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i96.i
  store ptr %i.ht, ptr %10, align 8, !tbaa !21
  store i64 2, ptr %i.fa, align 8, !tbaa !20
  store i64 %i.hh, ptr %i.fb, align 8, !tbaa !22
  %i.hx = load ptr, ptr %15, align 8, !tbaa !21, !noalias !163 ; 11 uses
  %i.hy = load i64, ptr %i.fc, align 8, !tbaa !20 ; 12 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 9 uses
  %min.iters.check439 = icmp ugt i64 %i.hh, 5
  %ident.check429.not = icmp eq i64 %i.hy, 1
  %or.cond482 = select i1 %min.iters.check439, i1 %ident.check429.not, i1 false
  br i1 %or.cond482, label %vector.memcheck430, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

vector.memcheck430:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader.i
  %scevgep431.a = getelementptr i8, ptr %i.ho, i64 -16
  %i.ia = mul i64 %i.hh, 24
  %scevgep432 = getelementptr i8, ptr %scevgep431.a, i64 %i.ia
  %scevgep433 = getelementptr i8, ptr %i.hx, i64 8
  %i.ib = shl nuw nsw i64 %i.hh, 3
  %scevgep434 = getelementptr i8, ptr %scevgep433, i64 %i.ib
  %bound0435 = icmp ult ptr %i.ho, %scevgep434
  %bound1436 = icmp ult ptr %i.hx, %scevgep432
  %found.conflict437 = and i1 %bound0435, %bound1436
  br i1 %found.conflict437, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph440

vector.ph440:                                     ; preds = %vector.memcheck430
  %n.vec441 = and i64 %i.hh, 1152921504606846974  ; 3 uses
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body442, %vector.ph440
  %index443 = phi i64 [ 0, %vector.ph440 ], [ %index.next446, %vector.body442 ] ; 5 uses
  %i.ic = mul nuw nsw i64 %index443, 24
  %i.id = mul nuw i64 %index443, 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.ic
  %i.if = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.id
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %index443
  %wide.load444 = load <2 x double>, ptr %i.ih, align 8, !tbaa !24, !alias.scope !164
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %index443
  %wide.load445 = load <2 x double>, ptr %i.ii, align 8, !tbaa !24, !alias.scope !164
  %i.ij = fsub <2 x double> %wide.load444, %wide.load445
  %i.ik = fmul <2 x double> %i.ij, splat (double 3.000000e+00) ; 2 uses
  %i.il = extractelement <2 x double> %i.ik, i64 0
  store double %i.il, ptr %i.ie, align 8, !tbaa !24, !alias.scope !165, !noalias !164
  %i.im = extractelement <2 x double> %i.ik, i64 1
  store double %i.im, ptr %i.ig, align 8, !tbaa !24, !alias.scope !165, !noalias !164
  %index.next446 = add nuw i64 %index443, 2       ; 2 uses
  %i.in = icmp eq i64 %index.next446, %n.vec441
  br i1 %i.in, label %middle.block447, label %vector.body442, !llvm.loop !126

middle.block447:                                  ; preds = %vector.body442
  %cmp.n448 = icmp eq i64 %i.hh, %n.vec441
  br i1 %cmp.n448, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESD_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %vector.memcheck430, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader.i, %middle.block447
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck430 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader.i ], [ %n.vec441, %middle.block447 ] ; 5 uses
  %.neg555 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter521 = and i64 %i.hh, 1
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  br i1 %lcmp.mod522.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.idx158.i.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, 24
  %i.io = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx158.i.prol
  %i.ip = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %i.hy ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ip
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !24
  %i.is = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.ip
  %i.it = load double, ptr %i.is, align 8, !tbaa !24
  %i.iu = fsub double %i.ir, %i.it
  %i.iv = fmul double %i.iu, 3.000000e+00
  store double %i.iv, ptr %i.io, align 8, !tbaa !24
  %i.iw = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.iw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ix = icmp eq i64 %i.hh, %.neg555
  br i1 %i.ix, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESD_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.preheader.split.i:                               ; preds = %"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_4clES4_d.exit.i"
  store i64 3, ptr %i.ey, align 8, !tbaa !20
  br label %.split134.i.sink.split

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.idx158.i = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx158.i
  %i.iz = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, %i.hy ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !24
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.iz
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !24
  %i.je = fsub double %i.jb, %i.jd
  %i.jf = fmul double %i.je, 3.000000e+00
  store double %i.jf, ptr %i.iy, align 8, !tbaa !24
  %i.jg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx158.i.1 = mul nuw nsw i64 %i.jg, 24
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx158.i.1
  %i.ji = mul nsw i64 %i.jg, %i.hy                ; 2 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ji
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !24
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.ji
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !24
  %i.jn = fsub double %i.jk, %i.jm
  %i.jo = fmul double %i.jn, 3.000000e+00
  store double %i.jo, ptr %i.jh, align 8, !tbaa !24
  %i.jp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.jp, %i.hh
end_hunk_1
begin_hunk_2_@_ZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EE:bb.a
  %i.vn = load <2 x double>, ptr %i.vm, align 16, !tbaa !32
  %i.vo = fmul <2 x double> %i.vl, %i.vn          ; 2 uses
  %i.vp = icmp samesign ugt i64 %i.uu, 7
  br i1 %i.vp, label %.lr.ph.i.i.i85.i, label %._crit_edge.i.i.i82.i

._crit_edge.i.i.i82.i:                            ; preds = %.lr.ph.i.i.i85.i, %bb.at
  %.075.lcssa.i.i.i83.i = phi <2 x double> [ %i.vo, %bb.at ], [ %i.wk, %.lr.ph.i.i.i85.i ]
  %.072.lcssa.i.i.i84.i = phi <2 x double> [ %i.vf, %bb.at ], [ %i.wa, %.lr.ph.i.i.i85.i ]
  %i.vq = fadd <2 x double> %.075.lcssa.i.i.i83.i, %.072.lcssa.i.i.i84.i ; 2 uses
  %i.vr = icmp sgt i64 %i.va, %i.uy
  br i1 %i.vr, label %bb.au, label %bb.av

.lr.ph.i.i.i85.i:                                 ; preds = %bb.at, %.lr.ph.i.i.i85.i
  %.05480.i.i.i86.i = phi i64 [ %.054.i.i.i90.i, %.lr.ph.i.i.i85.i ], [ 4, %bb.at ] ; 5 uses
  %.054.in79.i.i.i87.i = phi i64 [ %.05480.i.i.i86.i, %.lr.ph.i.i.i85.i ], [ 0, %bb.at ]
  %.07278.i.i.i88.i = phi <2 x double> [ %i.wa, %.lr.ph.i.i.i85.i ], [ %i.vf, %bb.at ]
  %.07577.i.i.i89.i = phi <2 x double> [ %i.wk, %.lr.ph.i.i.i85.i ], [ %i.vo, %bb.at ]
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %.05480.i.i.i86.i
  %i.vt = load <2 x double>, ptr %i.vs, align 16, !tbaa !32
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1, i64 %.05480.i.i.i86.i
  %i.vv = load <2 x double>, ptr %i.vu, align 16, !tbaa !32
  %i.vw = fsub <2 x double> %i.vt, %i.vv
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %.pre146.i, i64 %.05480.i.i.i86.i
  %i.vy = load <2 x double>, ptr %i.vx, align 16, !tbaa !32
  %i.vz = fmul <2 x double> %i.vw, %i.vy
  %i.wa = fadd <2 x double> %.07278.i.i.i88.i, %i.vz ; 2 uses
  %i.wb = add nuw nsw i64 %.054.in79.i.i.i87.i, 6 ; 3 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.wb
  %i.wd = load <2 x double>, ptr %i.wc, align 16, !tbaa !32
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1, i64 %i.wb
  %i.wf = load <2 x double>, ptr %i.we, align 16, !tbaa !32
  %i.wg = fsub <2 x double> %i.wd, %i.wf
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %.pre146.i, i64 %i.wb
  %i.wi = load <2 x double>, ptr %i.wh, align 16, !tbaa !32
  %i.wj = fmul <2 x double> %i.wg, %i.wi
  %i.wk = fadd <2 x double> %.07577.i.i.i89.i, %i.wj ; 2 uses
  %.054.i.i.i90.i = add nuw nsw i64 %.05480.i.i.i86.i, 4 ; 2 uses
  %i.wl = icmp slt i64 %.054.i.i.i90.i, %i.uy
  br i1 %i.wl, label %.lr.ph.i.i.i85.i, label %._crit_edge.i.i.i82.i, !llvm.loop !143

bb.au:                                            ; preds = %._crit_edge.i.i.i82.i
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.uy
  %i.wn = load <2 x double>, ptr %i.wm, align 16, !tbaa !32
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1, i64 %i.uy
  %i.wp = load <2 x double>, ptr %i.wo, align 16, !tbaa !32
  %i.wq = fsub <2 x double> %i.wn, %i.wp
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %.pre146.i, i64 %i.uy
  %i.ws = load <2 x double>, ptr %i.wr, align 16, !tbaa !32
  %i.wt = fmul <2 x double> %i.wq, %i.ws
  %i.wu = fadd <2 x double> %i.vq, %i.wt
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge.i.i.i82.i, %bb.as
  %.274.i.i.i76.i = phi <2 x double> [ %i.vf, %bb.as ], [ %i.wu, %bb.au ], [ %i.vq, %._crit_edge.i.i.i82.i ]
  %i.wv = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i76.i) ; 3 uses
  %i.ww = icmp slt i64 %i.va, %i.uu
  br i1 %i.ww, label %.lr.ph85.i.i.i78.i.preheader, label %.loopexit

.lr.ph85.i.i.i78.i.preheader:                     ; preds = %bb.av
  %.neg559 = or disjoint i64 %i.va, 1
  %xtraiter546 = and i64 %i.uu, 1
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %.lr.ph85.i.i.i78.i.prol.loopexit, label %.lr.ph85.i.i.i78.i.prol

.lr.ph85.i.i.i78.i.prol:                          ; preds = %.lr.ph85.i.i.i78.i.preheader
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.uw, i64 %i.va
  %i.wy = getelementptr inbounds [8 x i8], ptr %.sroa.0.1, i64 %i.va
  %i.wz = load double, ptr %i.wx, align 8, !tbaa !24
  %i.xa = load double, ptr %i.wy, align 8, !tbaa !24
  %i.xb = fsub double %i.wz, %i.xa
  %i.xc = getelementptr inbounds [8 x i8], ptr %.pre146.i, i64 %i.va
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !24
  %i.xe = fmul double %i.xb, %i.xd
  %i.xf = fadd double %i.wv, %i.xe                ; 2 uses
  %i.xg = or disjoint i64 %i.va, 1
  br label %.lr.ph85.i.i.i78.i.prol.loopexit

.lr.ph85.i.i.i78.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i78.i.prol, %.lr.ph85.i.i.i78.i.preheader
  %.lcssa499.unr = phi double [ poison, %.lr.ph85.i.i.i78.i.preheader ], [ %i.xf, %.lr.ph85.i.i.i78.i.prol ]
  %.05283.i.i.i79.i.unr = phi i64 [ %i.va, %.lr.ph85.i.i.i78.i.preheader ], [ %i.xg, %.lr.ph85.i.i.i78.i.prol ]
  %.182.i.i.i80.i.unr = phi double [ %i.wv, %.lr.ph85.i.i.i78.i.preheader ], [ %i.xf, %.lr.ph85.i.i.i78.i.prol ]
  %i.xh = icmp eq i64 %i.uu, %.neg559
  br i1 %i.xh, label %.loopexit, label %.lr.ph85.i.i.i78.i

.lr.ph85.i.i.i78.i:                               ; preds = %.lr.ph85.i.i.i78.i.prol.loopexit, %.lr.ph85.i.i.i78.i
  %.05283.i.i.i79.i = phi i64 [ %i.yb, %.lr.ph85.i.i.i78.i ], [ %.05283.i.i.i79.i.unr, %.lr.ph85.i.i.i78.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i80.i = phi double [ %i.ya, %.lr.ph85.i.i.i78.i ], [ %.182.i.i.i80.i.unr, %.lr.ph85.i.i.i78.i.prol.loopexit ]
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.uw, i64 %.05283.i.i.i79.i
  %i.xj = getelementptr inbounds [8 x i8], ptr %.sroa.0.1, i64 %.05283.i.i.i79.i
  %i.xk = load double, ptr %i.xi, align 8, !tbaa !24
  %i.xl = load double, ptr %i.xj, align 8, !tbaa !24
  %i.xm = fsub double %i.xk, %i.xl
  %i.xn = getelementptr inbounds [8 x i8], ptr %.pre146.i, i64 %.05283.i.i.i79.i
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !24
  %i.xp = fmul double %i.xm, %i.xo
  %i.xq = fadd double %.182.i.i.i80.i, %i.xp
  %i.xr = add nsw i64 %.05283.i.i.i79.i, 1        ; 3 uses
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.uw, i64 %i.xr
  %i.xt = getelementptr inbounds [8 x i8], ptr %.sroa.0.1, i64 %i.xr
  %i.xu = load double, ptr %i.xs, align 8, !tbaa !24
  %i.xv = load double, ptr %i.xt, align 8, !tbaa !24
  %i.xw = fsub double %i.xu, %i.xv
  %i.xx = getelementptr inbounds [8 x i8], ptr %.pre146.i, i64 %i.xr
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !24
  %i.xz = fmul double %i.xw, %i.xy
  %i.ya = fadd double %i.xq, %i.xz                ; 2 uses
  %i.yb = add nsw i64 %.05283.i.i.i79.i, 2        ; 2 uses
  %exitcond.not.i.i.i81.i.1 = icmp eq i64 %i.yb, %i.uu
  br i1 %exitcond.not.i.i.i81.i.1, label %.loopexit, label %.lr.ph85.i.i.i78.i, !llvm.loop !144

bb.aw:                                            ; preds = %bb.ar
  %i.yc = load double, ptr %i.uw, align 8, !tbaa !24
  %i.yd = load double, ptr %.sroa.0.1, align 8, !tbaa !24
  %i.ye = fsub double %i.yc, %i.yd
  %i.yf = load double, ptr %.pre146.i, align 8, !tbaa !24
  %i.yg = fmul double %i.ye, %i.yf
  br label %.loopexit

.body65.i:                                        ; preds = %.body71.i, %bb.ag
  %.pn42.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.pf, %.body71.i ], [ %i.nk, %bb.ag ]
  %i.yh = load ptr, ptr %11, align 8, !tbaa !27
  call void @free(ptr noundef %i.yh) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %.body62.i

.body62.i:                                        ; preds = %.body65.i, %bb.af
  %.pn52.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn.i, %.body65.i ], [ %i.hw, %bb.af ]
  %i.yi = load ptr, ptr %10, align 8, !tbaa !21
  call void @free(ptr noundef %i.yi) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.body.i

.body.i:                                          ; preds = %.body62.i, %bb.ae
  %.pn52.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.i, %.body62.i ], [ %i.hr, %bb.ae ]
  %i.yj = load ptr, ptr %9, align 8, !tbaa !21
  call void @free(ptr noundef %i.yj) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.yk = load ptr, ptr %8, align 8, !tbaa !27
  call void @free(ptr noundef %i.yk) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body149

.loopexit:                                        ; preds = %.lr.ph85.i.i.i78.i.prol.loopexit, %.lr.ph85.i.i.i78.i, %.loopexit.i, %bb.av, %bb.aw
  %.0.i77.i = phi double [ 0.000000e+00, %.loopexit.i ], [ %i.wv, %bb.av ], [ %i.yg, %bb.aw ], [ %.lcssa499.unr, %.lr.ph85.i.i.i78.i.prol.loopexit ], [ %i.ya, %.lr.ph85.i.i.i78.i ]
  %i.yl = fadd double %.0.i.i.i145, %.0.i77.i
  %i.ym = fdiv double %.0.i122.i, %i.yl
  %i.yn = fsub double %i.he, %i.ym
  call void @free(ptr noundef %.pre146.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.yo = load ptr, ptr %11, align 8, !tbaa !27
  call void @free(ptr noundef %i.yo) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.yp = load ptr, ptr %10, align 8, !tbaa !21
  call void @free(ptr noundef %i.yp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.yq = load ptr, ptr %9, align 8, !tbaa !21
  call void @free(ptr noundef %i.yq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.yr = load ptr, ptr %8, align 8, !tbaa !27
  call void @free(ptr noundef %i.yr) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ys = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.hb
  store double %i.yn, ptr %i.ys, align 8, !tbaa !24
  call void @free(ptr noundef %.sroa.0.1) #20
  %indvars.iv.next281 = add nsw i64 %indvars.iv280, 1 ; 2 uses
  %lftr.wideiv283 = trunc i64 %indvars.iv.next281 to i32
  %exitcond284.not = icmp eq i32 %i.fg, %lftr.wideiv283
  br i1 %exitcond284.not, label %._crit_edge256, label %.lr.ph255, !llvm.loop !146

.body149:                                         ; preds = %bb.aa, %.body.i
  %eh.lpad-body150 = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.i, %.body.i ], [ %i.hf, %bb.aa ]
  call void @free(ptr noundef %.sroa.0.1) #20
  br label %.loopexit.split-lp.a

bb.ax:                                            ; preds = %._crit_edge256
  %i.yt = invoke fastcc noundef double @"_ZZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EEENK3$_2clES4_iiS4_RKNS1_IdLin1ELi1ELi0ELin1ELi1EEERi"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ay unwind label %.loopexit.split-lp371.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  %i.yu = fcmp uge double %i.yt, %5
  %or.cond134.not = or i1 %6, %i.yu
  br i1 %or.cond134.not, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.yv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !42 ; 6 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !43
  %.not.i151 = icmp eq ptr %i.yw, %i.yy
  br i1 %.not.i151, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.yz = load i64, ptr %i.fc, align 8, !tbaa !20 ; 2 uses
  %i.za = load i64, ptr %i.ex, align 8, !tbaa !22 ; 2 uses
  %i.zb = mul nsw i64 %i.za, %i.yz                ; 3 uses
  %i.zc = icmp eq i64 %i.zb, 0
  br i1 %i.zc, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i184, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.zd = icmp ugt i64 %i.zb, 2305843009213693951
  br i1 %i.zd, label %.invoke359.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i183.a

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i183.a: ; preds = %bb.bb
  %20 = shl nuw i64 %i.zb, 3
  %i.ze = call noalias ptr @malloc(i64 noundef %20) #21 ; 2 uses
  %21 = icmp eq ptr %i.ze, null
  br i1 %21, label %.invoke359.invoke, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i184

.invoke359.invoke:                                ; preds = %bb.x, %bb.y, %bb.z, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i179, %bb.bb, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i183.a
  %i.zf = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.zf, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.zf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.invoke359.cont unwind label %.loopexit.split-lp371.loopexit.split-lp

.invoke359.cont:                                  ; preds = %.invoke359.invoke
  unreachable

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i184: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i183.a, %bb.ba
  %.0.i.i185 = phi ptr [ null, %bb.ba ], [ %i.ze, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i183.a ] ; 2 uses
  store ptr %.0.i.i185, ptr %i.yw, align 8, !tbaa !21
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store i64 %i.yz, ptr %i.zg, align 8, !tbaa !20
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store i64 %i.za, ptr %i.zh, align 8, !tbaa !22
  %i.zi = load i64, ptr %i.fc, align 8, !tbaa !20
  %i.zj = load i64, ptr %i.ex, align 8, !tbaa !22
  %i.zk = mul nsw i64 %i.zj, %i.zi                ; 2 uses
  %i.zl = icmp eq i64 %i.zk, 0
  br i1 %i.zl, label %.noexc152, label %bb.bc

bb.bc:                                            ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i184
  %.idx.i186 = shl nsw i64 %i.zk, 3
  %i.zm = load ptr, ptr %15, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0.i.i185, ptr align 8 %i.zm, i64 %.idx.i186, i1 false)
  br label %.noexc152

.noexc152:                                        ; preds = %bb.bc, %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i184
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  store ptr %i.zn, ptr %i.yv, align 8, !tbaa !42
  br label %.critedge

bb.bd:                                            ; preds = %bb.az
  invoke void @_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.yw, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %.critedge unwind label %.loopexit.split-lp371.loopexit.split-lp

bb.be:                                            ; preds = %bb.ay
  %22 = load ptr, ptr %16, align 8, !tbaa !45     ; 9 uses
  %23 = ptrtoaddr ptr %22 to i64
  %i.zo = load i64, ptr %i.al, align 8, !tbaa !46
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.zo, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bf, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.be
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.af, i64 noundef 1)
          to label %.noexc155 unwind label %.loopexit.split-lp371.loopexit.split-lp

.noexc155:                                        ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !46
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc155, %bb.be
  %i.zp = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc155 ], [ %i.af, %bb.be ] ; 7 uses
  %i.zq = load ptr, ptr %14, align 8, !tbaa !45   ; 8 uses
  %i.zr = ptrtoaddr ptr %i.zq to i64
  %i.zs = sdiv i64 %i.zp, 2
  %i.zt = shl nsw i64 %i.zs, 1                    ; 6 uses
  %i.zu = icmp sgt i64 %i.zp, 1
  br i1 %i.zu, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.bf
  %i.zv = icmp slt i64 %i.zt, %i.zp
  br i1 %i.zv, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.zw = sub i64 %i.zp, %i.zt                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.zw, 4
  %i.zx = sub i64 %23, %i.zr
  %diff.check = icmp ugt i64 %i.zx, -32
  %or.cond485 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond485, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader489, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.zw, -4                      ; 3 uses
  %i.zy = add i64 %i.zt, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zz = add i64 %i.zt, %index                   ; 2 uses
  %i.aaa = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %i.zz ; 2 uses
  %i.aab = getelementptr inbounds [8 x i8], ptr %22, i64 %i.zz ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %wide.load = load <2 x double>, ptr %i.aab, align 8, !tbaa !24
  %wide.load390 = load <2 x double>, ptr %i.aac, align 8, !tbaa !24
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  store <2 x double> %wide.load, ptr %i.aaa, align 8, !tbaa !24
  store <2 x double> %wide.load390, ptr %i.aad, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aae = icmp eq i64 %index.next, %n.vec
  br i1 %i.aae, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zw, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader489

.lr.ph.i.i.i.i.i.i.i.i.i.preheader489:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.zt, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.zy, %middle.block ] ; 4 uses
  %i.aaf = sub i64 %i.zp, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter549 = and i64 %i.aaf, 3                ; 2 uses
  %lcmp.mod550.not = icmp eq i64 %xtraiter549, 0
  br i1 %lcmp.mod550.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader489, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.aaj, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader489 ] ; 3 uses
  %prol.iter551 = phi i64 [ %prol.iter551.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader489 ]
  %i.aag = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.aah = getelementptr inbounds [8 x i8], ptr %22, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !24
  store double %i.aai, ptr %i.aag, align 8, !tbaa !24
  %i.aaj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter551.next = add i64 %prol.iter551, 1   ; 2 uses
  %prol.iter551.cmp.not = icmp eq i64 %prol.iter551.next, %xtraiter549
  br i1 %prol.iter551.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !148

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader489
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader489 ], [ %i.aaj, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.aak = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.zp
  %i.aal = icmp ugt i64 %i.aak, -4
  br i1 %i.aal, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.abb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.aam = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.aan = getelementptr inbounds [8 x i8], ptr %22, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !24
  store double %i.aao, ptr %i.aam, align 8, !tbaa !24
  %i.aap = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %i.aaq = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %i.aap
  %i.aar = getelementptr inbounds [8 x i8], ptr %22, i64 %i.aap
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !24
  store double %i.aas, ptr %i.aaq, align 8, !tbaa !24
  %i.aat = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %i.aat
  %i.aav = getelementptr inbounds [8 x i8], ptr %22, i64 %i.aat
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !24
  store double %i.aaw, ptr %i.aau, align 8, !tbaa !24
  %i.aax = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3  ; 2 uses
  %i.aay = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %i.aax
  %i.aaz = getelementptr inbounds [8 x i8], ptr %22, i64 %i.aax
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !24
  store double %i.aba, ptr %i.aay, align 8, !tbaa !24
  %i.abb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.abb, %i.zp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !149

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bf, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.abf, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.bf ] ; 3 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %.011.i.i.i.i.i.i.i.i
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %.011.i.i.i.i.i.i.i.i
  %i.abe = load <2 x double>, ptr %i.abd, align 16, !tbaa !32
  store <2 x double> %i.abe, ptr %i.abc, align 16, !tbaa !32
  %i.abf = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.abg = icmp slt i64 %i.abf, %i.zt
  br i1 %i.abg, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !150

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  call void @free(ptr noundef %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.abh = add nuw nsw i32 %.090257, 1            ; 2 uses
  %exitcond286 = icmp eq i32 %i.abh, 4
  br i1 %exitcond286, label %.loopexit235, label %bb.x, !llvm.loop !151

.loopexit.split-lp.a:                             ; preds = %.body149, %.loopexit.split-lp371.loopexit.split-lp
  %.pn119.pn = phi { ptr, i32 } [ %eh.lpad-body150, %.body149 ], [ %lpad.loopexit.split-lp491, %.loopexit.split-lp371.loopexit.split-lp ]
  %24 = load ptr, ptr %16, align 8, !tbaa !45
  call void @free(ptr noundef %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.bp

.critedge:                                        ; preds = %.noexc152, %bb.bd
  %25 = load ptr, ptr %16, align 8, !tbaa !45
  call void @free(ptr noundef %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE9push_backERKS2_.exit141

.loopexit235:                                     ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.abi = load i32, ptr %i.a, align 4, !tbaa !47 ; 4 uses
  %i.abj = add nsw i32 %i.abi, -1
  %i.abk = sext i32 %i.abj to i64                 ; 2 uses
  %i.abl = load ptr, ptr %0, align 8, !tbaa !21, !noalias !172 ; 2 uses
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %i.abk
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !22, !noalias !172 ; 2 uses
  %i.abp = add nsw i32 %i.abi, 1
  %i.abq = sext i32 %i.abp to i64                 ; 2 uses
  %i.abr = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %i.abq
  store ptr %i.abm, ptr %18, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.abo, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %0, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.7197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %i.abk, ptr %.sroa.7197.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 0, ptr %.sroa.8198.0..sroa_idx, align 8
  %.sroa.9199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 1, ptr %.sroa.9199.0..sroa_idx, align 8
  %i.abs = getelementptr inbounds nuw i8, ptr %18, i64 56
  store ptr %i.abr, ptr %i.abs, align 8
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %i.abo, ptr %.sroa.5192.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 80
  store ptr %0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %i.abq, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.3") align 8 %17, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %.loopexit235
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  invoke void @_ZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %i.abi, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %17, double noundef %5, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false), !alias.scope !173
  %i.abt = load ptr, ptr %17, align 8, !tbaa !27, !noalias !173 ; 8 uses
  %i.abu = ptrtoaddr ptr %i.abt to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !28, !noalias !173 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.abw, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE4evalEv.exit, label %thread-pre-split.i.i.i.i.i.i.i156

thread-pre-split.i.i.i.i.i.i.i156:                ; preds = %bb.bh
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef 1, i64 noundef %i.abw)
          to label %bb.bi unwind label %.body164

bb.bi:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i156
  %.pr.i.i.i.i.i.i.i157 = load i64, ptr %i.abx, align 8, !tbaa !28, !alias.scope !173 ; 7 uses
  %.pre.i.i = load ptr, ptr %19, align 8, !tbaa !27, !alias.scope !173 ; 8 uses
  %.pre.i.i467 = ptrtoaddr ptr %.pre.i.i to i64
  %i.aby = sdiv i64 %.pr.i.i.i.i.i.i.i157, 2
  %i.abz = shl nsw i64 %i.aby, 1                  ; 6 uses
  %i.aca = icmp sgt i64 %.pr.i.i.i.i.i.i.i157, 1
  br i1 %i.aca, label %.lr.ph.i.i.i.i.i.i.i.i162, label %._crit_edge.i.i.i.i.i.i.i.i158

._crit_edge.i.i.i.i.i.i.i.i158:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i162, %bb.bi
  %i.acb = icmp slt i64 %i.abz, %.pr.i.i.i.i.i.i.i157
  br i1 %i.acb, label %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE4evalEv.exit

.lr.ph.i.i.i.i.i.i.i.i.i159.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i158
  %i.acc = sub i64 %.pr.i.i.i.i.i.i.i157, %i.abz  ; 3 uses
  %min.iters.check469 = icmp ult i64 %i.acc, 6
  %i.acd = sub i64 %i.abu, %.pre.i.i467
  %diff.check471 = icmp ugt i64 %i.acd, -32
  %or.cond486 = select i1 %min.iters.check469, i1 true, i1 %diff.check471
  br i1 %or.cond486, label %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader487, label %vector.ph472

vector.ph472:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader
  %n.vec473 = and i64 %i.acc, -4                  ; 3 uses
  %i.ace = add i64 %i.abz, %n.vec473
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph472
  %index475 = phi i64 [ 0, %vector.ph472 ], [ %index.next478, %vector.body474 ] ; 2 uses
  %i.acf = add i64 %i.abz, %index475              ; 2 uses
  %i.acg = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.acf ; 2 uses
  %i.ach = getelementptr inbounds [8 x i8], ptr %i.abt, i64 %i.acf ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  %wide.load476 = load <2 x double>, ptr %i.ach, align 8, !tbaa !24
  %wide.load477 = load <2 x double>, ptr %i.aci, align 8, !tbaa !24
  %i.acj = fneg <2 x double> %wide.load476
  %i.ack = fneg <2 x double> %wide.load477
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  store <2 x double> %i.acj, ptr %i.acg, align 8, !tbaa !24
  store <2 x double> %i.ack, ptr %i.acl, align 8, !tbaa !24
  %index.next478 = add nuw i64 %index475, 4       ; 2 uses
  %i.acm = icmp eq i64 %index.next478, %n.vec473
  br i1 %i.acm, label %middle.block479, label %vector.body474, !llvm.loop !156

middle.block479:                                  ; preds = %vector.body474
  %cmp.n480 = icmp eq i64 %i.acc, %n.vec473
  br i1 %cmp.n480, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader487

.lr.ph.i.i.i.i.i.i.i.i.i159.preheader487:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader, %middle.block479
  %.05.i.i.i.i.i.i.i.i.i160.ph = phi i64 [ %i.abz, %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader ], [ %i.ace, %middle.block479 ] ; 4 uses
  %i.acn = sub i64 %.pr.i.i.i.i.i.i.i157, %.05.i.i.i.i.i.i.i.i.i160.ph
  %xtraiter552 = and i64 %i.acn, 3                ; 2 uses
  %lcmp.mod553.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %.lr.ph.i.i.i.i.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i159.prol

.lr.ph.i.i.i.i.i.i.i.i.i159.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader487, %.lr.ph.i.i.i.i.i.i.i.i.i159.prol
  %.05.i.i.i.i.i.i.i.i.i160.prol = phi i64 [ %i.acs, %.lr.ph.i.i.i.i.i.i.i.i.i159.prol ], [ %.05.i.i.i.i.i.i.i.i.i160.ph, %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader487 ] ; 3 uses
  %prol.iter554 = phi i64 [ %prol.iter554.next, %.lr.ph.i.i.i.i.i.i.i.i.i159.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader487 ]
  %i.aco = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i.i160.prol
  %i.acp = getelementptr inbounds [8 x i8], ptr %i.abt, i64 %.05.i.i.i.i.i.i.i.i.i160.prol
  %i.acq = load double, ptr %i.acp, align 8, !tbaa !24
  %i.acr = fneg double %i.acq
  store double %i.acr, ptr %i.aco, align 8, !tbaa !24
  %i.acs = add nsw i64 %.05.i.i.i.i.i.i.i.i.i160.prol, 1 ; 2 uses
  %prol.iter554.next = add i64 %prol.iter554, 1   ; 2 uses
  %prol.iter554.cmp.not = icmp eq i64 %prol.iter554.next, %xtraiter552
  br i1 %prol.iter554.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i159.prol, !llvm.loop !157

.lr.ph.i.i.i.i.i.i.i.i.i159.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i159.prol, %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader487
  %.05.i.i.i.i.i.i.i.i.i160.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i160.ph, %.lr.ph.i.i.i.i.i.i.i.i.i159.preheader487 ], [ %i.acs, %.lr.ph.i.i.i.i.i.i.i.i.i159.prol ]
  %i.act = sub i64 %.05.i.i.i.i.i.i.i.i.i160.ph, %.pr.i.i.i.i.i.i.i157
  %i.acu = icmp ugt i64 %i.act, -4
  br i1 %i.acu, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i159

.lr.ph.i.i.i.i.i.i.i.i.i159:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i159.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i159
  %.05.i.i.i.i.i.i.i.i.i160 = phi i64 [ %i.ado, %.lr.ph.i.i.i.i.i.i.i.i.i159 ], [ %.05.i.i.i.i.i.i.i.i.i160.unr, %.lr.ph.i.i.i.i.i.i.i.i.i159.prol.loopexit ] ; 6 uses
  %i.acv = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i.i160
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.abt, i64 %.05.i.i.i.i.i.i.i.i.i160
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !24
  %i.acy = fneg double %i.acx
  store double %i.acy, ptr %i.acv, align 8, !tbaa !24
  %i.acz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i160, 1 ; 2 uses
  %i.ada = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.acz
  %i.adb = getelementptr inbounds [8 x i8], ptr %i.abt, i64 %i.acz
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !24
  %i.add = fneg double %i.adc
  store double %i.add, ptr %i.ada, align 8, !tbaa !24
  %i.ade = add nsw i64 %.05.i.i.i.i.i.i.i.i.i160, 2 ; 2 uses
  %i.adf = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.ade
  %i.adg = getelementptr inbounds [8 x i8], ptr %i.abt, i64 %i.ade
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !24
  %i.adi = fneg double %i.adh
  store double %i.adi, ptr %i.adf, align 8, !tbaa !24
  %i.adj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i160, 3 ; 2 uses
  %i.adk = getelementptr inbounds [8 x i8], ptr %.pre.i.i, i64 %i.adj
  %i.adl = getelementptr inbounds [8 x i8], ptr %i.abt, i64 %i.adj
  %i.adm = load double, ptr %i.adl, align 8, !tbaa !24
  %i.adn = fneg double %i.adm
  store double %i.adn, ptr %i.adk, align 8, !tbaa !24
  %i.ado = add nsw i64 %.05.i.i.i.i.i.i.i.i.i160, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i161.3 = icmp eq i64 %i.ado, %.pr.i.i.i.i.i.i.i157
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i161.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE4evalEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i159, !llvm.loop !158

.lr.ph.i.i.i.i.i.i.i.i162:                        ; preds = %bb.bi, %.lr.ph.i.i.i.i.i.i.i.i162
  %.011.i.i.i.i.i.i.i.i163 = phi i64 [ %i.adt, %.lr.ph.i.i.i.i.i.i.i.i162 ], [ 0, %bb.bi ] ; 3 uses
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.011.i.i.i.i.i.i.i.i163
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %.011.i.i.i.i.i.i.i.i163
  %i.adr = load <2 x double>, ptr %i.adq, align 16, !tbaa !32
  %i.ads = fneg <2 x double> %i.adr
  store <2 x double> %i.ads, ptr %i.adp, align 16, !tbaa !32
  %i.adt = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i163, 2 ; 2 uses
  %i.adu = icmp slt i64 %i.adt, %i.abz
  br i1 %i.adu, label %.lr.ph.i.i.i.i.i.i.i.i162, label %._crit_edge.i.i.i.i.i.i.i.i158, !llvm.loop !4

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE4evalEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i159.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i159, %middle.block479, %._crit_edge.i.i.i.i.i.i.i.i158, %bb.bh
  invoke void @_ZN3igl26fit_cubic_bezier_substringERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiRKNS1_IdLi1ELin1ELi1ELi1ELin1EEES7_dbRSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.abi, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %5, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bj unwind label %.body164

bb.bj:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE4evalEv.exit
  %i.adv = load ptr, ptr %19, align 8, !tbaa !27
  call void @free(ptr noundef %i.adv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.adw = load ptr, ptr %17, align 8, !tbaa !27
  call void @free(ptr noundef %i.adw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE9push_backERKS2_.exit141

_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE9push_backERKS2_.exit141: ; preds = %.critedge, %.noexc139, %bb.t, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.adx = load ptr, ptr %15, align 8, !tbaa !21
  call void @free(ptr noundef %i.adx) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.ady = load ptr, ptr %14, align 8, !tbaa !45
  call void @free(ptr noundef %i.ady) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE9push_backERKS2_.exit141, %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE9push_backERKS2_.exit
end_hunk_2
