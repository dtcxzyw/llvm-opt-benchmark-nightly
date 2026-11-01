Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableBodySolver?download=true
inline.NumInlined: 1163
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN22btDeformableBodySolver15applyTransformsEf:bb.a
  %indvars.iv.next.i77.i = or disjoint i64 %indvars.iv.i75.i, 1 ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i77.i
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !62, !noalias !452
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next.i77.i
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !62, !noalias !452
  %i.se = call float @llvm.fmuladd.f32(float %i.sb, float %i.sd, float %i.rz)
  %indvars.iv.next.i77.i.1 = or disjoint i64 %indvars.iv.i75.i, 2 ; 2 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i77.i.1
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !62, !noalias !452
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next.i77.i.1
  %i.si = load float, ptr %i.sh, align 4, !tbaa !62, !noalias !452
  %i.sj = call float @llvm.fmuladd.f32(float %i.sg, float %i.si, float %i.se)
  %indvars.iv.next.i77.i.2 = or disjoint i64 %indvars.iv.i75.i, 3 ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i77.i.2
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !62, !noalias !452
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next.i77.i.2
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !62, !noalias !452
  %i.so = call float @llvm.fmuladd.f32(float %i.sl, float %i.sn, float %i.sj) ; 3 uses
  %indvars.iv.next.i77.i.3 = add nuw nsw i64 %indvars.iv.i75.i, 4 ; 2 uses
  %niter374.next.3 = add i64 %niter374, 4         ; 2 uses
  %niter374.ncmp.3 = icmp eq i64 %niter374.next.3, %unroll_iter373
  br i1 %niter374.ncmp.3, label %.lr.ph.i83.i.preheader.unr-lcssa, label %.lr.ph.i74.i, !llvm.loop !431

.lr.ph.i83.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i74.i
  %lcmp.mod370.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod370.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil.preheader

.lr.ph.i74.i.epil.preheader:                      ; preds = %.lr.ph.i83.i.preheader.unr-lcssa, %.lr.ph.i74.i.preheader
  %indvars.iv.i75.i.epil.init = phi i64 [ 0, %.lr.ph.i74.i.preheader ], [ %indvars.iv.next.i77.i.3, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %.089.i76.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i74.i.preheader ], [ %i.so, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %lcmp.mod372 = icmp ne i64 %xtraiter368, 0
  call void @llvm.assume(i1 %lcmp.mod372)
  br label %.lr.ph.i74.i.epil

.lr.ph.i74.i.epil:                                ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i74.i.epil.preheader
  %indvars.iv.i75.i.epil = phi i64 [ %indvars.iv.next.i77.i.epil, %.lr.ph.i74.i.epil ], [ %indvars.iv.i75.i.epil.init, %.lr.ph.i74.i.epil.preheader ] ; 3 uses
  %.089.i76.i.epil = phi float [ %i.st, %.lr.ph.i74.i.epil ], [ %.089.i76.i.epil.init, %.lr.ph.i74.i.epil.preheader ]
  %epil.iter369 = phi i64 [ %epil.iter369.next, %.lr.ph.i74.i.epil ], [ 0, %.lr.ph.i74.i.epil.preheader ]
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i75.i.epil
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !62, !noalias !452
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.i75.i.epil
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !62, !noalias !452
  %i.st = call float @llvm.fmuladd.f32(float %i.sq, float %i.ss, float %.089.i76.i.epil) ; 2 uses
  %indvars.iv.next.i77.i.epil = add nuw nsw i64 %indvars.iv.i75.i.epil, 1
  %epil.iter369.next = add i64 %epil.iter369, 1   ; 2 uses
  %epil.iter369.cmp.not = icmp eq i64 %epil.iter369.next, %xtraiter368
  br i1 %epil.iter369.cmp.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil, !llvm.loop !438

.lr.ph.i83.i.preheader:                           ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i83.i.preheader.unr-lcssa
  %.lcssa328 = phi float [ %i.so, %.lr.ph.i83.i.preheader.unr-lcssa ], [ %i.st, %.lr.ph.i74.i.epil ]
  %xtraiter375 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.su = icmp ult i64 %i.lt, 3
  br i1 %i.su, label %.lr.ph.i83.i.epil.preheader, label %.lr.ph.i83.i.preheader.new

.lr.ph.i83.i.preheader.new:                       ; preds = %.lr.ph.i83.i.preheader
  %unroll_iter380 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.lr.ph.i83.i, %.lr.ph.i83.i.preheader.new
  %indvars.iv.i84.i = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i83.i ] ; 6 uses
  %.089.i85.i = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader.new ], [ %i.to, %.lr.ph.i83.i ]
  %niter381 = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %niter381.next.3, %.lr.ph.i83.i ]
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i84.i
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !62, !noalias !452
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i84.i
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !62, !noalias !452
  %i.sz = call float @llvm.fmuladd.f32(float %i.sw, float %i.sy, float %.089.i85.i)
  %indvars.iv.next.i86.i = or disjoint i64 %indvars.iv.i84.i, 1 ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i86.i
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !62, !noalias !452
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i86.i
  %i.td = load float, ptr %i.tc, align 4, !tbaa !62, !noalias !452
  %i.te = call float @llvm.fmuladd.f32(float %i.tb, float %i.td, float %i.sz)
  %indvars.iv.next.i86.i.1 = or disjoint i64 %indvars.iv.i84.i, 2 ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i86.i.1
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !62, !noalias !452
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i86.i.1
  %i.ti = load float, ptr %i.th, align 4, !tbaa !62, !noalias !452
  %i.tj = call float @llvm.fmuladd.f32(float %i.tg, float %i.ti, float %i.te)
  %indvars.iv.next.i86.i.2 = or disjoint i64 %indvars.iv.i84.i, 3 ; 2 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i86.i.2
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !62, !noalias !452
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i86.i.2
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !62, !noalias !452
  %i.to = call float @llvm.fmuladd.f32(float %i.tl, float %i.tn, float %i.tj) ; 3 uses
  %indvars.iv.next.i86.i.3 = add nuw nsw i64 %indvars.iv.i84.i, 4 ; 2 uses
  %niter381.next.3 = add i64 %niter381, 4         ; 2 uses
  %niter381.ncmp.3 = icmp eq i64 %niter381.next.3, %unroll_iter380
  br i1 %niter381.ncmp.3, label %.lr.ph.i92.i.preheader.unr-lcssa, label %.lr.ph.i83.i, !llvm.loop !431

.lr.ph.i92.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i83.i
  %lcmp.mod377.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil.preheader

.lr.ph.i83.i.epil.preheader:                      ; preds = %.lr.ph.i92.i.preheader.unr-lcssa, %.lr.ph.i83.i.preheader
  %indvars.iv.i84.i.epil.init = phi i64 [ 0, %.lr.ph.i83.i.preheader ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %.089.i85.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader ], [ %i.to, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %lcmp.mod379 = icmp ne i64 %xtraiter375, 0
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph.i83.i.epil

.lr.ph.i83.i.epil:                                ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i83.i.epil.preheader
  %indvars.iv.i84.i.epil = phi i64 [ %indvars.iv.next.i86.i.epil, %.lr.ph.i83.i.epil ], [ %indvars.iv.i84.i.epil.init, %.lr.ph.i83.i.epil.preheader ] ; 3 uses
  %.089.i85.i.epil = phi float [ %i.tt, %.lr.ph.i83.i.epil ], [ %.089.i85.i.epil.init, %.lr.ph.i83.i.epil.preheader ]
  %epil.iter376 = phi i64 [ %epil.iter376.next, %.lr.ph.i83.i.epil ], [ 0, %.lr.ph.i83.i.epil.preheader ]
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i84.i.epil
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !62, !noalias !452
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i84.i.epil
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !62, !noalias !452
  %i.tt = call float @llvm.fmuladd.f32(float %i.tq, float %i.ts, float %.089.i85.i.epil) ; 2 uses
  %indvars.iv.next.i86.i.epil = add nuw nsw i64 %indvars.iv.i84.i.epil, 1
  %epil.iter376.next = add i64 %epil.iter376, 1   ; 2 uses
  %epil.iter376.cmp.not = icmp eq i64 %epil.iter376.next, %xtraiter375
  br i1 %epil.iter376.cmp.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil, !llvm.loop !439

.lr.ph.i92.i.preheader:                           ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i92.i.preheader.unr-lcssa
  %.lcssa329 = phi float [ %i.to, %.lr.ph.i92.i.preheader.unr-lcssa ], [ %i.tt, %.lr.ph.i83.i.epil ]
  %xtraiter382 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.tu = icmp ult i64 %i.lt, 3
  br i1 %i.tu, label %.lr.ph.i92.i.epil.preheader, label %.lr.ph.i92.i.preheader.new

.lr.ph.i92.i.preheader.new:                       ; preds = %.lr.ph.i92.i.preheader
  %unroll_iter387 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i.preheader.new
  %indvars.iv.i93.i = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %indvars.iv.next.i95.i.3, %.lr.ph.i92.i ] ; 6 uses
  %.089.i94.i = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader.new ], [ %i.uo, %.lr.ph.i92.i ]
  %niter388 = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %niter388.next.3, %.lr.ph.i92.i ]
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i93.i
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !62, !noalias !452
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i93.i
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !62, !noalias !452
  %i.tz = call float @llvm.fmuladd.f32(float %i.tw, float %i.ty, float %.089.i94.i)
  %indvars.iv.next.i95.i = or disjoint i64 %indvars.iv.i93.i, 1 ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i95.i
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !62, !noalias !452
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.next.i95.i
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !62, !noalias !452
  %i.ue = call float @llvm.fmuladd.f32(float %i.ub, float %i.ud, float %i.tz)
  %indvars.iv.next.i95.i.1 = or disjoint i64 %indvars.iv.i93.i, 2 ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i95.i.1
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !62, !noalias !452
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.next.i95.i.1
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !62, !noalias !452
  %i.uj = call float @llvm.fmuladd.f32(float %i.ug, float %i.ui, float %i.ue)
  %indvars.iv.next.i95.i.2 = or disjoint i64 %indvars.iv.i93.i, 3 ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i95.i.2
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !62, !noalias !452
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.next.i95.i.2
  %i.un = load float, ptr %i.um, align 4, !tbaa !62, !noalias !452
  %i.uo = call float @llvm.fmuladd.f32(float %i.ul, float %i.un, float %i.uj) ; 3 uses
  %indvars.iv.next.i95.i.3 = add nuw nsw i64 %indvars.iv.i93.i, 4 ; 2 uses
  %niter388.next.3 = add i64 %niter388, 4         ; 2 uses
  %niter388.ncmp.3 = icmp eq i64 %niter388.next.3, %unroll_iter387
  br i1 %niter388.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i92.i, !llvm.loop !431

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i92.i
  %lcmp.mod384.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod384.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil.preheader

.lr.ph.i92.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i92.i.preheader
  %indvars.iv.i93.i.epil.init = phi i64 [ 0, %.lr.ph.i92.i.preheader ], [ %indvars.iv.next.i95.i.3, %.loopexit.loopexit.unr-lcssa ]
  %.089.i94.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader ], [ %i.uo, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod386 = icmp ne i64 %xtraiter382, 0
  call void @llvm.assume(i1 %lcmp.mod386)
  br label %.lr.ph.i92.i.epil

.lr.ph.i92.i.epil:                                ; preds = %.lr.ph.i92.i.epil, %.lr.ph.i92.i.epil.preheader
  %indvars.iv.i93.i.epil = phi i64 [ %indvars.iv.next.i95.i.epil, %.lr.ph.i92.i.epil ], [ %indvars.iv.i93.i.epil.init, %.lr.ph.i92.i.epil.preheader ] ; 3 uses
  %.089.i94.i.epil = phi float [ %i.ut, %.lr.ph.i92.i.epil ], [ %.089.i94.i.epil.init, %.lr.ph.i92.i.epil.preheader ]
  %epil.iter383 = phi i64 [ %epil.iter383.next, %.lr.ph.i92.i.epil ], [ 0, %.lr.ph.i92.i.epil.preheader ]
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i93.i.epil
  %i.uq = load float, ptr %i.up, align 4, !tbaa !62, !noalias !452
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i93.i.epil
  %i.us = load float, ptr %i.ur, align 4, !tbaa !62, !noalias !452
  %i.ut = call float @llvm.fmuladd.f32(float %i.uq, float %i.us, float %.089.i94.i.epil) ; 2 uses
  %indvars.iv.next.i95.i.epil = add nuw nsw i64 %indvars.iv.i93.i.epil, 1
  %epil.iter383.next = add i64 %epil.iter383, 1   ; 2 uses
  %epil.iter383.cmp.not = icmp eq i64 %epil.iter383.next, %xtraiter382
  br i1 %epil.iter383.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil, !llvm.loop !440

.loopexit.loopexit:                               ; preds = %.lr.ph.i92.i.epil, %.loopexit.loopexit.unr-lcssa
  %.lcssa330 = phi float [ %i.uo, %.loopexit.loopexit.unr-lcssa ], [ %i.ut, %.lr.ph.i92.i.epil ]
  %i.uu = insertelement <4 x float> poison, float %.lcssa326, i64 0
  %i.uv = insertelement <4 x float> %i.uu, float %.lcssa327, i64 1
  %i.uw = insertelement <4 x float> %i.uv, float %.lcssa323, i64 2
  %i.ux = insertelement <4 x float> %i.uw, float %.lcssa324, i64 3
  %i.uy = fadd <4 x float> %i.ux, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.uz = fadd float %.lcssa325, 0.000000e+00
  %i.va = fadd float %.lcssa328, 0.000000e+00
  %i.vb = fadd float %.lcssa329, 0.000000e+00
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.s
  %.08.lcssa.i80220.i = phi float [ 0.000000e+00, %bb.s ], [ %i.vb, %.loopexit.loopexit ]
  %.08.lcssa.i44142149173186216.i = phi float [ 0.000000e+00, %bb.s ], [ %i.uz, %.loopexit.loopexit ] ; 3 uses
  %.08.lcssa.i115119128138153169190212.i = phi float [ 0.000000e+00, %bb.s ], [ %.lcssa, %.loopexit.loopexit ]
  %.08.lcssa.i71196206.i = phi float [ 0.000000e+00, %bb.s ], [ %i.va, %.loopexit.loopexit ] ; 3 uses
  %.08.lcssa.i89.i = phi float [ 0.000000e+00, %bb.s ], [ %.lcssa330, %.loopexit.loopexit ]
  %i.vc = phi <4 x float> [ zeroinitializer, %bb.s ], [ %i.uy, %.loopexit.loopexit ] ; 7 uses
  %i.vd = fadd float %i.lq, %.08.lcssa.i115119128138153169190212.i ; 4 uses
  %i.ve = fadd float %i.lq, %.08.lcssa.i89.i      ; 3 uses
  %i.vf = extractelement <4 x float> %i.vc, i64 1 ; 2 uses
  %i.vg = fneg float %i.vf
  %i.vh = fneg float %.08.lcssa.i44142149173186216.i
  %i.vi = insertelement <4 x float> %i.vc, float %i.vd, i64 0
  %i.vj = shufflevector <2 x float> %i.ld, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.vk = shufflevector <4 x float> %i.vi, <4 x float> %i.vj, <4 x i32> <i32 0, i32 0, i32 2, i32 4>
  %i.vl = insertelement <4 x float> poison, float %.08.lcssa.i44142149173186216.i, i64 0 ; 2 uses
  %i.vm = insertelement <4 x float> %i.vl, float %.08.lcssa.i71196206.i, i64 1
  %i.vn = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %i.lq, i64 0
  %i.vo = fadd <4 x float> %i.vn, %i.vc           ; 4 uses
  %i.vp = insertelement <4 x float> poison, float %.08.lcssa.i71196206.i, i64 0
  %i.vq = insertelement <4 x float> %i.vp, float %.08.lcssa.i80220.i, i64 1
  %i.vr = insertelement <4 x float> %i.vq, float %i.ve, i64 2 ; 2 uses
  %i.vs = shufflevector <4 x float> %i.vr, <4 x float> %i.vo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.vt = fneg <4 x float> %i.vs                  ; 3 uses
  %i.vu = fneg float %i.ve
  %i.vv = fmul float %.08.lcssa.i44142149173186216.i, %i.vu
  %i.vw = call noundef float @llvm.fmuladd.f32(float %i.vf, float %.08.lcssa.i71196206.i, float %i.vv) ; 2 uses
  %i.vx = extractelement <4 x float> %i.vc, i64 2
  %i.vy = fmul float %i.vx, %i.vw
  %i.vz = fmul <4 x float> %i.vo, %i.vt
  %i.wa = shufflevector <4 x float> %i.vl, <4 x float> %i.vo, <4 x i32> <i32 0, i32 4, i32 7, i32 6>
  %i.wb = shufflevector <4 x float> %i.vr, <4 x float> %i.vc, <4 x i32> <i32 1, i32 2, i32 1, i32 5>
  %i.wc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wa, <4 x float> %i.wb, <4 x float> %i.vz) ; 3 uses
  %i.wd = extractelement <4 x float> %i.wc, i64 1
  %i.we = call float @llvm.fmuladd.f32(float %i.vd, float %i.wd, float %i.vy)
  %i.wf = extractelement <4 x float> %i.wc, i64 0
  %i.wg = extractelement <4 x float> %i.vc, i64 3 ; 2 uses
  %i.wh = call noundef float @llvm.fmuladd.f32(float %i.wg, float %i.wf, float %i.we)
  %i.wi = fdiv float 1.000000e+00, %i.wh          ; 5 uses
  %10 = extractelement <4 x float> %i.vt, i64 0
  %11 = fmul float %i.wg, %10
  %i.wj = call noundef float @llvm.fmuladd.f32(float %i.vd, float %i.ve, float %11)
  %i.wk = insertelement <4 x float> poison, float %i.wi, i64 0
  %i.wl = shufflevector <4 x float> %i.wk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wm = fmul <4 x float> %i.wc, %i.wl           ; 5 uses
  %i.wn = insertelement <4 x float> %i.vt, float %i.vg, i64 0
  %i.wo = insertelement <4 x float> %i.wn, float %i.vh, i64 2
  %i.wp = shufflevector <4 x float> %i.wm, <4 x float> %i.vc, <4 x i32> <i32 7, i32 6, i32 poison, i32 1>
  %i.wq = insertelement <4 x float> %i.wp, float %i.vd, i64 2
  %i.wr = shufflevector <4 x float> %i.vm, <4 x float> %i.vo, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ws = shufflevector <2 x float> %i.lc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.wt = shufflevector <4 x float> %i.wr, <4 x float> %i.ws, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.wu = shufflevector <2 x float> %i.lc, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.wv = shufflevector <2 x float> %i.li, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ww = shufflevector <3 x float> %i.wv, <3 x float> %i.wu, <4 x i32> <i32 0, i32 5, i32 4, i32 4>
  %i.wx = shufflevector <4 x float> %i.wm, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.wy = shufflevector <2 x float> %i.le, <2 x float> %i.li, <4 x i32> <i32 0, i32 3, i32 2, i32 2>
  %i.wz = fmul float %i.vw, %i.wi                 ; 2 uses
  %i.xa = fmul float %i.wj, %i.wi                 ; 2 uses
  %i.xb = insertelement <4 x float> %i.wo, float %i.wz, i64 3
  %i.xc = fmul <4 x float> %i.vk, %i.xb
  %i.xd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wq, <4 x float> %i.wt, <4 x float> %i.xc) ; 3 uses
  %i.xe = extractelement <4 x float> %i.xd, i64 0
  %i.xf = fmul float %i.xe, %i.wi                 ; 2 uses
  %i.xg = shufflevector <4 x float> %i.xd, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.xh = insertelement <2 x float> poison, float %i.wi, i64 0
  %i.xi = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xj = fmul <2 x float> %i.xg, %i.xi           ; 2 uses
  %i.xk = shufflevector <4 x float> %i.xd, <4 x float> %i.vj, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.xl = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.wz, i64 1
  %i.xm = insertelement <4 x float> %i.xl, float %i.xa, i64 2
  %i.xn = insertelement <4 x float> %i.xm, float %i.xf, i64 3 ; 2 uses
  %i.xo = fmul <4 x float> %i.xk, %i.xn
  %i.xp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wm, <4 x float> %i.ww, <4 x float> %i.xo) ; 2 uses
  %i.xq = extractelement <2 x float> %i.lg, i64 0
  %i.xr = fmul float %i.xq, %i.xa
  %i.xs = shufflevector <2 x float> %i.xj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.xt = shufflevector <4 x float> %i.wx, <4 x float> %i.xs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xu = insertelement <4 x float> %i.xp, float %i.xr, i64 0
  %i.xv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xt, <4 x float> %i.wy, <4 x float> %i.xu) ; 4 uses
  %i.xw = shufflevector <2 x float> %i.lg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 0>
  %i.xx = shufflevector <4 x float> %i.xv, <4 x float> %i.xw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.xy = fmul <4 x float> %i.xx, %i.xn
  %i.xz = shufflevector <4 x float> %i.xs, <4 x float> %i.wm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ya = shufflevector <2 x float> %i.le, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.yb = shufflevector <2 x float> %i.lj, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.yc = shufflevector <3 x float> %i.yb, <3 x float> %i.ya, <4 x i32> <i32 0, i32 5, i32 5, i32 4>
  %i.yd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xz, <4 x float> %i.yc, <4 x float> %i.xy) ; 2 uses
  %i.ye = fmul float %i.lh, %i.xf
  %i.yf = shufflevector <4 x float> %i.wm, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 poison, i32 poison>
  %i.yg = shufflevector <4 x float> %i.yf, <4 x float> %i.xs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.yh = shufflevector <2 x float> %i.lj, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.yi = insertelement <3 x float> %i.yh, float %i.lf, i64 2
  %i.yj = shufflevector <3 x float> %i.yi, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 1, i32 0>
  %i.yk = insertelement <4 x float> %i.yd, float %i.ye, i64 0
  %i.yl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yg, <4 x float> %i.yj, <4 x float> %i.yk) ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.yn = shufflevector <2 x float> %i.ld, <2 x float> %i.lg, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.yo = insertelement <4 x float> %i.yn, float 0.000000e+00, i64 3
  %i.yp = insertelement <4 x float> %i.yo, float %i.lh, i64 2 ; 3 uses
  %i.yq = shufflevector <4 x float> %i.xv, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.yr = fmul <4 x float> %i.yp, %i.yq
  %i.ys = shufflevector <2 x float> %i.lc, <2 x float> %i.le, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.yt = insertelement <4 x float> %i.ys, float 0.000000e+00, i64 3
  %i.yu = insertelement <4 x float> %i.yt, float %i.lf, i64 2 ; 3 uses
  %i.yv = shufflevector <4 x float> %i.xp, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.yw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yu, <4 x float> %i.yv, <4 x float> %i.yr)
  %i.yx = shufflevector <2 x float> %i.li, <2 x float> %i.lj, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.yy = insertelement <4 x float> %i.yx, float 0.000000e+00, i64 3
  %i.yz = insertelement <4 x float> %i.yy, float %i.lk, i64 2 ; 3 uses
  %i.za = shufflevector <4 x float> %i.xv, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.zb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yz, <4 x float> %i.za, <4 x float> %i.yw)
  store <4 x float> %i.zb, ptr %i.ym, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ex, i64 80
  %i.zd = shufflevector <4 x float> %i.yd, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.ze = fmul <4 x float> %i.yp, %i.zd
  %i.zf = shufflevector <4 x float> %i.xv, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.zg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yu, <4 x float> %i.zf, <4 x float> %i.ze)
  %i.zh = shufflevector <4 x float> %i.yl, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.zi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yz, <4 x float> %i.zh, <4 x float> %i.zg)
  store <4 x float> %i.zi, ptr %i.zc, align 8
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ex, i64 96
  %i.zk = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.xj, <2 x i32> <i32 3, i32 1>
  %i.zl = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.lk, i64 0
  %i.zm = shufflevector <4 x float> %i.yl, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.zn = insertelement <2 x float> %i.zm, float -0.000000e+00, i64 1
  %i.zo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zk, <2 x float> %i.zl, <2 x float> %i.zn)
  %i.zp = shufflevector <2 x float> %i.zo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.zq = shufflevector <4 x float> %i.yl, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.zr = fmul <4 x float> %i.yp, %i.zq
  %i.zs = shufflevector <4 x float> %i.yl, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.zt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yu, <4 x float> %i.zs, <4 x float> %i.zr)
  %i.zu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yz, <4 x float> %i.zp, <4 x float> %i.zt)
  store <4 x float> %i.zu, ptr %i.zj, align 8
  %i.zv = getelementptr inbounds nuw i8, ptr %i.ex, i64 192
  %i.zw = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.zv, ptr noundef nonnull align 8 dereferenceable(204) %7)
          to label %bb.t unwind label %bb.bg      ; 0 uses

bb.t:                                             ; preds = %.loopexit
  %i.zx = getelementptr inbounds nuw i8, ptr %i.ex, i64 400
  %i.zy = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.zx, ptr noundef nonnull align 8 dereferenceable(204) %8)
          to label %bb.u unwind label %bb.bg      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.zz = getelementptr inbounds nuw i8, ptr %i.ex, i64 608
  %i.aaa = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.zz, ptr noundef nonnull align 8 dereferenceable(204) %9)
          to label %bb.v unwind label %bb.bg      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ex, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aab, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !60
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ex, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aac, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !60
  %i.aad = load ptr, ptr %i.cd, align 8, !tbaa !285 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.aad, null
  %i.aae = load i8, ptr %i.cc, align 8, !range !52
  %i.aaf = trunc nuw i8 %i.aae to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.aaf, i1 false
  br i1 %or.cond.i.i.i, label %bb.w, label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aad)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aag = landingpad { ptr, i32 }
          catch ptr null
  %i.aah = extractvalue { ptr, i32 } %i.aag, 0
  call void @__clang_call_terminate(ptr %i.aah) #26
  unreachable

_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i: ; preds = %bb.w, %bb.v
  %i.aai = load ptr, ptr %i.bz, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i1.i = icmp ne ptr %i.aai, null
  %i.aaj = load i8, ptr %i.by, align 8, !range !52
  %i.aak = trunc nuw i8 %i.aaj to i1
  %or.cond.i.i2.i = select i1 %.not.i.i.i1.i, i1 %i.aak, i1 false
  br i1 %or.cond.i.i2.i, label %bb.y, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i

bb.y:                                             ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aai)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aal = landingpad { ptr, i32 }
          catch ptr null
  %i.aam = extractvalue { ptr, i32 } %i.aal, 0
  call void @__clang_call_terminate(ptr %i.aam) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i: ; preds = %bb.y, %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i
  %i.aan = load ptr, ptr %i.bv, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i3.i = icmp ne ptr %i.aan, null
  %i.aao = load i8, ptr %i.bu, align 8, !range !52
  %i.aap = trunc nuw i8 %i.aao to i1
  %or.cond.i.i4.i = select i1 %.not.i.i.i3.i, i1 %i.aap, i1 false
  br i1 %or.cond.i.i4.i, label %bb.aa, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i

bb.aa:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aan)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aaq = landingpad { ptr, i32 }
          catch ptr null
  %i.aar = extractvalue { ptr, i32 } %i.aaq, 0
  call void @__clang_call_terminate(ptr %i.aar) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit.i:          ; preds = %bb.aa, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  %i.aas = load ptr, ptr %i.br, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i5.i = icmp ne ptr %i.aas, null
  %i.aat = load i8, ptr %i.bq, align 8, !range !52
  %i.aau = trunc nuw i8 %i.aat to i1
  %or.cond.i.i6.i = select i1 %.not.i.i.i5.i, i1 %i.aau, i1 false
  br i1 %or.cond.i.i6.i, label %bb.ac, label %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i

bb.ac:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aas)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aav = landingpad { ptr, i32 }
          catch ptr null
  %i.aaw = extractvalue { ptr, i32 } %i.aav, 0
  call void @__clang_call_terminate(ptr %i.aaw) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit7.i:         ; preds = %bb.ac, %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  %i.aax = load ptr, ptr %i.bn, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i8.i = icmp ne ptr %i.aax, null
  %i.aay = load i8, ptr %i.bm, align 8, !range !52
  %i.aaz = trunc nuw i8 %i.aay to i1
  %or.cond.i.i9.i = select i1 %.not.i.i.i8.i, i1 %i.aaz, i1 false
  br i1 %or.cond.i.i9.i, label %bb.ae, label %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i

bb.ae:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aax)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aba = landingpad { ptr, i32 }
end_hunk_0
