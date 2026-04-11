inline.NumInlined: 1137
inline.NumDeleted: 352
begin_hunk_0_@_ZN6duckdbL16ArrayGenericFoldIfNS_18CosineSimilarityOpEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.033.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.dy, %._crit_edge.loopexit.i.unr-lcssa ]
  %.033.i.epil.init.a = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %18, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02030.i.epil.init = phi ptr [ %i.dk, %.lr.ph.i.preheader ], [ %i.dw, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02129.i.epil.init = phi ptr [ %i.dl, %.lr.ph.i.preheader ], [ %i.du, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02228.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %19, %._crit_edge.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod217)
  %i.dm = load float, ptr %.02129.i.epil.init, align 4, !tbaa !138 ; 3 uses
  %i.dn = load float, ptr %.02030.i.epil.init, align 4, !tbaa !138 ; 3 uses
  %i.do = call float @llvm.fmuladd.f32(float %i.dm, float %i.dn, float %.033.i.epil.init)
  %13 = call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %.033.i.epil.init.a)
  %14 = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %.02228.i.epil.init)
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa214 = phi float [ %i.dy, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.do, %.lr.ph.i.epil.preheader ]
  %.lcssa213 = phi float [ %18, %._crit_edge.loopexit.i.unr-lcssa ], [ %13, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi float [ %19, %._crit_edge.loopexit.i.unr-lcssa ], [ %14, %.lr.ph.i.epil.preheader ]
  %15 = fmul float %.lcssa213, %.lcssa
  br label %bb.al

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.033.i = phi float [ %i.dy, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.033.i.a = phi float [ %18, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.02030.i = phi ptr [ %i.dw, %.lr.ph.i ], [ %i.dk, %.lr.ph.i.preheader ] ; 3 uses
  %.02129.i = phi ptr [ %i.du, %.lr.ph.i ], [ %i.dl, %.lr.ph.i.preheader ] ; 3 uses
  %.02228.i = phi float [ %19, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.02129.i, i64 4
  %i.dq = load float, ptr %.02129.i, align 4, !tbaa !138 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.02030.i, i64 4
  %i.ds = load float, ptr %.02030.i, align 4, !tbaa !138 ; 3 uses
  %i.dt = call float @llvm.fmuladd.f32(float %i.dq, float %i.ds, float %.033.i)
  %16 = call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %.033.i.a)
  %17 = call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %.02228.i)
  %i.du = getelementptr inbounds nuw i8, ptr %.02129.i, i64 8 ; 2 uses
  %i.dv = load float, ptr %i.dp, align 4, !tbaa !138 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.02030.i, i64 8 ; 2 uses
  %i.dx = load float, ptr %i.dr, align 4, !tbaa !138 ; 3 uses
  %i.dy = call float @llvm.fmuladd.f32(float %i.dv, float %i.dx, float %i.dt) ; 3 uses
  %18 = call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %16) ; 3 uses
  %19 = call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %17) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !263

bb.al:                                            ; preds = %._crit_edge.loopexit.i, %.loopexit
  %.0.lcssa.i = phi float [ 0.000000e+00, %.loopexit ], [ %.lcssa214, %._crit_edge.loopexit.i ]
  %i.dz = phi float [ 0.000000e+00, %.loopexit ], [ %15, %._crit_edge.loopexit.i ]
  %i.ea = call noundef float @sqrtf(float noundef %i.dz) #21, !tbaa !3
  %i.eb = fdiv float %.0.lcssa.i, %i.ea           ; 2 uses
  %i.ec = fcmp ogt float %i.eb, 1.000000e+00
end_hunk_0
begin_hunk_1_@_ZN6duckdbL16ArrayGenericFoldIdNS_18CosineSimilarityOpEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.033.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %17, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01832.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %18, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02129.i.epil.init.a = phi ptr [ %i.dk, %.lr.ph.i.preheader ], [ %i.dx, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02129.i.epil.init = phi ptr [ %i.dl, %.lr.ph.i.preheader ], [ %i.dv, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02228.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.dz, %._crit_edge.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod216)
  %i.dm = load double, ptr %.02129.i.epil.init, align 8, !tbaa !144 ; 3 uses
  %i.dn = load double, ptr %.02129.i.epil.init.a, align 8, !tbaa !144 ; 3 uses
  %13 = call double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %.033.i.epil.init)
  %14 = call double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %.01832.i.epil.init)
  %i.do = call double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %.02228.i.epil.init)
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa214 = phi double [ %17, %._crit_edge.loopexit.i.unr-lcssa ], [ %13, %.lr.ph.i.epil.preheader ]
  %.lcssa.a = phi double [ %18, %._crit_edge.loopexit.i.unr-lcssa ], [ %14, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi double [ %i.dz, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.do, %.lr.ph.i.epil.preheader ]
  %i.dp = fmul double %.lcssa.a, %.lcssa
  br label %bb.al

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.033.i = phi double [ %17, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.01832.i = phi double [ %18, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.02129.i.a = phi ptr [ %i.dx, %.lr.ph.i ], [ %i.dk, %.lr.ph.i.preheader ] ; 3 uses
  %.02129.i = phi ptr [ %i.dv, %.lr.ph.i ], [ %i.dl, %.lr.ph.i.preheader ] ; 3 uses
  %.02228.i = phi double [ %i.dz, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.02129.i, i64 8
  %i.dr = load double, ptr %.02129.i, align 8, !tbaa !144 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02129.i.a, i64 8
  %i.dt = load double, ptr %.02129.i.a, align 8, !tbaa !144 ; 3 uses
  %15 = call double @llvm.fmuladd.f64(double %i.dr, double %i.dt, double %.033.i)
  %16 = call double @llvm.fmuladd.f64(double %i.dr, double %i.dr, double %.01832.i)
  %i.du = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %.02228.i)
  %i.dv = getelementptr inbounds nuw i8, ptr %.02129.i, i64 16 ; 2 uses
  %i.dw = load double, ptr %i.dq, align 8, !tbaa !144 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02129.i.a, i64 16 ; 2 uses
  %i.dy = load double, ptr %i.ds, align 8, !tbaa !144 ; 3 uses
  %17 = call double @llvm.fmuladd.f64(double %i.dw, double %i.dy, double %15) ; 3 uses
  %18 = call double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %16) ; 3 uses
  %i.dz = call double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.du) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !265

bb.al:                                            ; preds = %._crit_edge.loopexit.i, %.loopexit
  %.0.lcssa.i = phi double [ 0.000000e+00, %.loopexit ], [ %.lcssa214, %._crit_edge.loopexit.i ]
  %i.ea = phi double [ 0.000000e+00, %.loopexit ], [ %i.dp, %._crit_edge.loopexit.i ]
  %i.eb = call double @sqrt(double noundef %i.ea) #21, !tbaa !3
  %i.ec = fdiv double %.0.lcssa.i, %i.eb          ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdbL16ArrayGenericFoldIfNS_16CosineDistanceOpEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.033.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.dy, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.033.i.i.epil.init.a = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %18, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02030.i.i.epil.init = phi ptr [ %i.dk, %.lr.ph.i.i.preheader ], [ %i.dw, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02129.i.i.epil.init = phi ptr [ %i.dl, %.lr.ph.i.i.preheader ], [ %i.du, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02228.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %19, %._crit_edge.loopexit.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod216)
  %i.dm = load float, ptr %.02129.i.i.epil.init, align 4, !tbaa !138 ; 3 uses
  %i.dn = load float, ptr %.02030.i.i.epil.init, align 4, !tbaa !138 ; 3 uses
  %i.do = call float @llvm.fmuladd.f32(float %i.dm, float %i.dn, float %.033.i.i.epil.init)
  %13 = call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %.033.i.i.epil.init.a)
  %14 = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %.02228.i.i.epil.init)
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa213 = phi float [ %i.dy, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.do, %.lr.ph.i.i.epil.preheader ]
  %.lcssa212 = phi float [ %18, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %13, %.lr.ph.i.i.epil.preheader ]
  %.lcssa = phi float [ %19, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %14, %.lr.ph.i.i.epil.preheader ]
  %15 = fmul float %.lcssa212, %.lcssa
  br label %bb.al

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.033.i.i = phi float [ %i.dy, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %.033.i.i.a = phi float [ %18, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %.02030.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.dk, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02129.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %i.dl, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02228.i.i = phi float [ %19, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 4
  %i.dq = load float, ptr %.02129.i.i, align 4, !tbaa !138 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.02030.i.i, i64 4
  %i.ds = load float, ptr %.02030.i.i, align 4, !tbaa !138 ; 3 uses
  %i.dt = call float @llvm.fmuladd.f32(float %i.dq, float %i.ds, float %.033.i.i)
  %16 = call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %.033.i.i.a)
  %17 = call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %.02228.i.i)
  %i.du = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 8 ; 2 uses
  %i.dv = load float, ptr %i.dp, align 4, !tbaa !138 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.02030.i.i, i64 8 ; 2 uses
  %i.dx = load float, ptr %i.dr, align 4, !tbaa !138 ; 3 uses
  %i.dy = call float @llvm.fmuladd.f32(float %i.dv, float %i.dx, float %i.dt) ; 3 uses
  %18 = call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %16) ; 3 uses
  %19 = call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %17) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !263

bb.al:                                            ; preds = %._crit_edge.loopexit.i.i, %.loopexit
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %.loopexit ], [ %.lcssa213, %._crit_edge.loopexit.i.i ]
  %i.dz = phi float [ 0.000000e+00, %.loopexit ], [ %15, %._crit_edge.loopexit.i.i ]
  %i.ea = call noundef float @sqrtf(float noundef %i.dz) #21, !tbaa !3
  %i.eb = fdiv float %.0.lcssa.i.i, %i.ea         ; 2 uses
  %i.ec = fcmp ogt float %i.eb, 1.000000e+00
end_hunk_2
begin_hunk_3_@_ZN6duckdbL16ArrayGenericFoldIdNS_16CosineDistanceOpEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.033.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %17, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.01832.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %18, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02129.i.i.epil.init.a = phi ptr [ %i.dk, %.lr.ph.i.i.preheader ], [ %i.dx, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02129.i.i.epil.init = phi ptr [ %i.dl, %.lr.ph.i.i.preheader ], [ %i.dv, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02228.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.dz, %._crit_edge.loopexit.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod215)
  %i.dm = load double, ptr %.02129.i.i.epil.init, align 8, !tbaa !144 ; 3 uses
  %i.dn = load double, ptr %.02129.i.i.epil.init.a, align 8, !tbaa !144 ; 3 uses
  %13 = call double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %.033.i.i.epil.init)
  %14 = call double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %.01832.i.i.epil.init)
  %i.do = call double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %.02228.i.i.epil.init)
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa213 = phi double [ %17, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %13, %.lr.ph.i.i.epil.preheader ]
  %.lcssa.a = phi double [ %18, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %14, %.lr.ph.i.i.epil.preheader ]
  %.lcssa = phi double [ %i.dz, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.do, %.lr.ph.i.i.epil.preheader ]
  %i.dp = fmul double %.lcssa.a, %.lcssa
  br label %bb.al

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.033.i.i = phi double [ %17, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %.01832.i.i = phi double [ %18, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %.02129.i.i.a = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.dk, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02129.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.dl, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02228.i.i = phi double [ %i.dz, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 8
  %i.dr = load double, ptr %.02129.i.i, align 8, !tbaa !144 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02129.i.i.a, i64 8
  %i.dt = load double, ptr %.02129.i.i.a, align 8, !tbaa !144 ; 3 uses
  %15 = call double @llvm.fmuladd.f64(double %i.dr, double %i.dt, double %.033.i.i)
  %16 = call double @llvm.fmuladd.f64(double %i.dr, double %i.dr, double %.01832.i.i)
  %i.du = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %.02228.i.i)
  %i.dv = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 16 ; 2 uses
  %i.dw = load double, ptr %i.dq, align 8, !tbaa !144 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02129.i.i.a, i64 16 ; 2 uses
  %i.dy = load double, ptr %i.ds, align 8, !tbaa !144 ; 3 uses
  %17 = call double @llvm.fmuladd.f64(double %i.dw, double %i.dy, double %15) ; 3 uses
  %18 = call double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %16) ; 3 uses
  %i.dz = call double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.du) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !265

bb.al:                                            ; preds = %._crit_edge.loopexit.i.i, %.loopexit
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %.loopexit ], [ %.lcssa213, %._crit_edge.loopexit.i.i ]
  %i.ea = phi double [ 0.000000e+00, %.loopexit ], [ %i.dp, %._crit_edge.loopexit.i.i ]
  %i.eb = call double @sqrt(double noundef %i.ea) #21, !tbaa !3
  %i.ec = fdiv double %.0.lcssa.i.i, %i.eb        ; 2 uses
end_hunk_3
