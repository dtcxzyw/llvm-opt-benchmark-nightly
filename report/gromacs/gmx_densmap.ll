Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_densmap?download=true
inline.NumInlined: 156
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_Z11gmx_densmapiPPc:bb.a
  %indvars.iv.next623.3 = add nuw nsw i64 %indvars.iv622, 4 ; 2 uses
  %niter1072.next.3 = add i64 %niter1072, 4       ; 2 uses
  %niter1072.ncmp.3 = icmp eq i64 %niter1072.next.3, %unroll_iter1071
  br i1 %niter1072.ncmp.3, label %._crit_edge506.us.unr-lcssa, label %.preheader475.us.new, !llvm.loop !34

._crit_edge506.us.unr-lcssa:                      ; preds = %.preheader475.us.new
  br i1 %lcmp.mod1068.not, label %._crit_edge506.us, label %.epil.preheader1066

.epil.preheader1066:                              ; preds = %._crit_edge506.us.unr-lcssa, %.preheader475.us
  %indvars.iv622.epil.init = phi i64 [ 0, %.preheader475.us ], [ %indvars.iv.next623.3, %._crit_edge506.us.unr-lcssa ]
  %.1267504.us.epil.init = phi float [ %.0266509.us, %.preheader475.us ], [ %spec.select349.us.3, %._crit_edge506.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1070)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.epil.preheader1066
  %indvars.iv622.epil = phi i64 [ %indvars.iv622.epil.init, %.epil.preheader1066 ], [ %indvars.iv.next623.epil, %bb.cl ] ; 2 uses
  %.1267504.us.epil = phi float [ %.1267504.us.epil.init, %.epil.preheader1066 ], [ %spec.select349.us.epil, %bb.cl ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader1066 ], [ %epil.iter.next, %bb.cl ]
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv622.epil ; 2 uses
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !80
  %i.sl = fdiv float %i.sk, %i.rm                 ; 3 uses
  store float %i.sl, ptr %i.sj, align 4, !tbaa !80
  %i.sm = fcmp ogt float %i.sl, %.1267504.us.epil
  %spec.select349.us.epil = select i1 %i.sm, float %i.sl, float %.1267504.us.epil ; 2 uses
  %indvars.iv.next623.epil = add nuw nsw i64 %indvars.iv622.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1067
  br i1 %epil.iter.cmp.not, label %._crit_edge506.us, label %bb.cl, !llvm.loop !35

._crit_edge506.us:                                ; preds = %bb.cl, %._crit_edge506.us.unr-lcssa
  %spec.select349.us.lcssa = phi float [ %spec.select349.us.3, %._crit_edge506.us.unr-lcssa ], [ %spec.select349.us.epil, %bb.cl ] ; 2 uses
  %indvars.iv.next628 = add nuw nsw i64 %indvars.iv627, 1 ; 2 uses
  %exitcond631.not = icmp eq i64 %indvars.iv.next628, %wide.trip.count630
  br i1 %exitcond631.not, label %.loopexit474, label %.preheader475.us, !llvm.loop !36

.preheader473:                                    ; preds = %bb.ck
  br i1 %i.rj, label %.preheader472.lr.ph, label %.loopexit474

.preheader472.lr.ph:                              ; preds = %.preheader473
  %i.sn = icmp sgt i32 %.0276, 0
  %i.so = extractelement <2 x float> %i.et, i64 0 ; 2 uses
  %i.sp = extractelement <2 x float> %i.et, i64 1 ; 3 uses
  %i.sq = fmul float %i.so, %i.sp                 ; 6 uses
  %i.sr = fmul float %i.sp, %i.sp
  %i.ss = fmul float %i.so, %i.sr
  %i.st = fpext float %i.ss to double             ; 6 uses
  %i.su = uitofp nneg i32 %i.rg to float          ; 12 uses
  br i1 %i.sn, label %.preheader472.lr.ph.split.us, label %.loopexit474

.preheader472.lr.ph.split.us:                     ; preds = %.preheader472.lr.ph
  %i.sv = load i8, ptr @_ZZ11gmx_densmapiPPcE7bMirror, align 1, !range !89
  %i.sw = trunc nuw i8 %i.sv to i1
  %i.sx = zext nneg i32 %.0276 to i64             ; 10 uses
  br i1 %i.sw, label %.preheader472.us.us.preheader, label %.preheader472.us.preheader

.preheader472.us.preheader:                       ; preds = %.preheader472.lr.ph.split.us
  %wide.trip.count641 = zext nneg i32 %i.ri to i64
  %xtraiter1074 = and i64 %i.sx, 1
  %i.sy = icmp eq i32 %.0276, 1
  %unroll_iter1079 = and i64 %i.sx, 2147483646
  %lcmp.mod1076.not = icmp eq i64 %xtraiter1074, 0
  %lcmp.mod1078 = trunc i32 %.0276 to i1
  br label %.preheader472.us

.preheader472.us.us.preheader:                    ; preds = %.preheader472.lr.ph.split.us
  %i.sz = zext nneg i32 %.0276 to i64
  %wide.trip.count664 = zext nneg i32 %i.ri to i64
  %i.ta = add nsw i64 %i.sx, -1                   ; 3 uses
  %xtraiter1081 = and i64 %i.sx, 1
  %i.tb = icmp eq i64 %i.ta, 0
  %unroll_iter1086 = and i64 %i.sx, 2147483646
  %lcmp.mod1083.not = icmp eq i64 %xtraiter1081, 0
  %lcmp.mod1085 = trunc i32 %.0276 to i1
  %xtraiter1088 = and i64 %i.sx, 1
  %i.tc = icmp eq i64 %i.ta, 0
  %unroll_iter1093 = and i64 %i.sx, 2147483646
  %lcmp.mod1090.not = icmp eq i64 %xtraiter1088, 0
  %lcmp.mod1092 = trunc i32 %.0276 to i1
  %xtraiter1095 = and i64 %i.sx, 1
  %i.td = icmp eq i64 %i.ta, 0
  %unroll_iter1100 = and i64 %i.sx, 2147483646
  %lcmp.mod1097.not = icmp eq i64 %xtraiter1095, 0
  %lcmp.mod1099 = trunc i32 %.0276 to i1
  br label %.preheader472.us.us

.preheader472.us.us:                              ; preds = %.preheader472.us.us.preheader, %._crit_edge515.split.us.us.us
  %indvars.iv661 = phi i64 [ 0, %.preheader472.us.us.preheader ], [ %indvars.iv.next662, %._crit_edge515.split.us.us.us ] ; 2 uses
  %.3269519.us.us = phi float [ 0.000000e+00, %.preheader472.us.us.preheader ], [ %.us-phi532, %._crit_edge515.split.us.us.us ] ; 6 uses
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv661
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !92 ; 2 uses
  %invariant.gep808 = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %i.sz ; 9 uses
  %i.tg = getelementptr [4 x i8], ptr %i.tf, i64 %i.sx ; 9 uses
  switch i32 %.0274, label %.lr.ph514.split.us.us.us.split.preheader [
    i32 -3, label %.lr.ph514.split.us.us.us.split.us.preheader
    i32 -2, label %.lr.ph514.split.us.us.us.split.us533.preheader
  ]

.lr.ph514.split.us.us.us.split.us533.preheader:   ; preds = %.preheader472.us.us
  br i1 %i.tb, label %.lr.ph514.split.us.us.us.split.us533.epil.preheader, label %.lr.ph514.split.us.us.us.split.us533

.lr.ph514.split.us.us.us.split.us.preheader:      ; preds = %.preheader472.us.us
  br i1 %i.tc, label %.lr.ph514.split.us.us.us.split.us.epil.preheader, label %.lr.ph514.split.us.us.us.split.us

.lr.ph514.split.us.us.us.split.preheader:         ; preds = %.preheader472.us.us
  br i1 %i.td, label %.lr.ph514.split.us.us.us.split.epil.preheader, label %.lr.ph514.split.us.us.us.split

.lr.ph514.split.us.us.us.split.us:                ; preds = %.lr.ph514.split.us.us.us.split.us.preheader, %.lr.ph514.split.us.us.us.split.us
  %indvars.iv649 = phi i64 [ %indvars.iv.next650.1, %.lr.ph514.split.us.us.us.split.us ], [ 0, %.lr.ph514.split.us.us.us.split.us.preheader ] ; 5 uses
  %.0253513.us.us.us.us = phi float [ %i.ua, %.lr.ph514.split.us.us.us.split.us ], [ 0.000000e+00, %.lr.ph514.split.us.us.us.split.us.preheader ]
  %.4270512.us.us.us.us = phi float [ %spec.select350.us.us.us.us.1, %.lr.ph514.split.us.us.us.split.us ], [ %.3269519.us.us, %.lr.ph514.split.us.us.us.split.us.preheader ] ; 2 uses
  %niter1094 = phi i64 [ %niter1094.next.1, %.lr.ph514.split.us.us.us.split.us ], [ 0, %.lr.ph514.split.us.us.us.split.us.preheader ]
  %indvars.iv.next650 = or disjoint i64 %indvars.iv649, 1 ; 2 uses
  %i.th = trunc nuw nsw i64 %indvars.iv.next650 to i32
  %i.ti = uitofp nneg i32 %i.th to double         ; 2 uses
  %i.tj = fmul nnan double %i.ti, f0x400921FB54442D18
  %i.tk = fmul nnan double %i.tj, %i.ti
  %i.tl = fdiv double %i.tk, %i.st
  %i.tm = fptrunc double %i.tl to float           ; 2 uses
  %i.tn = fsub float %i.tm, %.0253513.us.us.us.us
  %i.to = fmul float %i.tn, %i.su
  %gep807 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep808, i64 %indvars.iv649 ; 3 uses
  %i.tp = load float, ptr %gep807, align 4, !tbaa !80
  %i.tq = fdiv float %i.tp, %i.to                 ; 2 uses
  store float %i.tq, ptr %gep807, align 4, !tbaa !80
  %i.tr = xor i64 %indvars.iv649, -1
  %i.ts = getelementptr [4 x i8], ptr %i.tg, i64 %i.tr
  store float %i.tq, ptr %i.ts, align 4, !tbaa !80
  %i.tt = load float, ptr %gep807, align 4, !tbaa !80 ; 2 uses
  %i.tu = fcmp ogt float %i.tt, %.4270512.us.us.us.us
  %spec.select350.us.us.us.us = select i1 %i.tu, float %i.tt, float %.4270512.us.us.us.us ; 2 uses
  %indvars.iv.next650.1 = add nuw nsw i64 %indvars.iv649, 2 ; 3 uses
  %i.tv = trunc nuw nsw i64 %indvars.iv.next650.1 to i32
  %i.tw = uitofp nneg i32 %i.tv to double         ; 2 uses
  %i.tx = fmul nnan double %i.tw, f0x400921FB54442D18
  %i.ty = fmul double %i.tx, %i.tw
  %i.tz = fdiv double %i.ty, %i.st
  %i.ua = fptrunc double %i.tz to float           ; 3 uses
  %i.ub = fsub float %i.ua, %i.tm
  %i.uc = fmul float %i.ub, %i.su
  %gep807.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep808, i64 %indvars.iv.next650 ; 2 uses
  %i.ud = load float, ptr %gep807.1, align 4, !tbaa !80
  %i.ue = fdiv float %i.ud, %i.uc                 ; 4 uses
  store float %i.ue, ptr %gep807.1, align 4, !tbaa !80
  %i.uf = xor i64 %indvars.iv649, -2
  %i.ug = getelementptr [4 x i8], ptr %i.tg, i64 %i.uf
  store float %i.ue, ptr %i.ug, align 4, !tbaa !80
  %i.uh = fcmp ogt float %i.ue, %spec.select350.us.us.us.us
  %spec.select350.us.us.us.us.1 = select i1 %i.uh, float %i.ue, float %spec.select350.us.us.us.us ; 3 uses
  %niter1094.next.1 = add i64 %niter1094, 2       ; 2 uses
  %niter1094.ncmp.1 = icmp eq i64 %niter1094.next.1, %unroll_iter1093
  br i1 %niter1094.ncmp.1, label %._crit_edge515.split.us.us.us.loopexit1018.unr-lcssa, label %.lr.ph514.split.us.us.us.split.us, !llvm.loop !37

.lr.ph514.split.us.us.us.split.us533:             ; preds = %.lr.ph514.split.us.us.us.split.us533.preheader, %.lr.ph514.split.us.us.us.split.us533
  %indvars.iv643 = phi i64 [ %indvars.iv.next644.1, %.lr.ph514.split.us.us.us.split.us533 ], [ 0, %.lr.ph514.split.us.us.us.split.us533.preheader ] ; 5 uses
  %.0253513.us.us.us.us534 = phi float [ %i.uv, %.lr.ph514.split.us.us.us.split.us533 ], [ 0.000000e+00, %.lr.ph514.split.us.us.us.split.us533.preheader ]
  %.4270512.us.us.us.us535 = phi float [ %spec.select350.us.us.us.us539.1, %.lr.ph514.split.us.us.us.split.us533 ], [ %.3269519.us.us, %.lr.ph514.split.us.us.us.split.us533.preheader ] ; 2 uses
  %niter1087 = phi i64 [ %niter1087.next.1, %.lr.ph514.split.us.us.us.split.us533 ], [ 0, %.lr.ph514.split.us.us.us.split.us533.preheader ]
  %indvars.iv.next644 = or disjoint i64 %indvars.iv643, 1 ; 2 uses
  %i.ui = trunc nuw nsw i64 %indvars.iv.next644 to i32
  %i.uj = uitofp nneg i32 %i.ui to float
  %i.uk = fdiv float %i.uj, %i.sq                 ; 2 uses
  %i.ul = fsub float %i.uk, %.0253513.us.us.us.us534
  %i.um = fmul float %i.ul, %i.su
  %gep805 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep808, i64 %indvars.iv643 ; 3 uses
  %i.un = load float, ptr %gep805, align 4, !tbaa !80
  %i.uo = fdiv float %i.un, %i.um                 ; 2 uses
  store float %i.uo, ptr %gep805, align 4, !tbaa !80
  %i.up = xor i64 %indvars.iv643, -1
  %i.uq = getelementptr [4 x i8], ptr %i.tg, i64 %i.up
  store float %i.uo, ptr %i.uq, align 4, !tbaa !80
  %i.ur = load float, ptr %gep805, align 4, !tbaa !80 ; 2 uses
  %i.us = fcmp ogt float %i.ur, %.4270512.us.us.us.us535
  %spec.select350.us.us.us.us539 = select i1 %i.us, float %i.ur, float %.4270512.us.us.us.us535 ; 2 uses
  %indvars.iv.next644.1 = add nuw nsw i64 %indvars.iv643, 2 ; 3 uses
  %i.ut = trunc nuw nsw i64 %indvars.iv.next644.1 to i32
  %i.uu = uitofp nneg i32 %i.ut to float
  %i.uv = fdiv float %i.uu, %i.sq                 ; 3 uses
  %i.uw = fsub float %i.uv, %i.uk
  %i.ux = fmul float %i.uw, %i.su
  %gep805.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep808, i64 %indvars.iv.next644 ; 2 uses
  %i.uy = load float, ptr %gep805.1, align 4, !tbaa !80
  %i.uz = fdiv float %i.uy, %i.ux                 ; 4 uses
  store float %i.uz, ptr %gep805.1, align 4, !tbaa !80
  %i.va = xor i64 %indvars.iv643, -2
  %i.vb = getelementptr [4 x i8], ptr %i.tg, i64 %i.va
  store float %i.uz, ptr %i.vb, align 4, !tbaa !80
  %i.vc = fcmp ogt float %i.uz, %spec.select350.us.us.us.us539
  %spec.select350.us.us.us.us539.1 = select i1 %i.vc, float %i.uz, float %spec.select350.us.us.us.us539 ; 3 uses
  %niter1087.next.1 = add i64 %niter1087, 2       ; 2 uses
  %niter1087.ncmp.1 = icmp eq i64 %niter1087.next.1, %unroll_iter1086
  br i1 %niter1087.ncmp.1, label %._crit_edge515.split.us.us.us.loopexit1019.unr-lcssa, label %.lr.ph514.split.us.us.us.split.us533, !llvm.loop !37

.lr.ph514.split.us.us.us.split:                   ; preds = %.lr.ph514.split.us.us.us.split.preheader, %.lr.ph514.split.us.us.us.split
  %indvars.iv655 = phi i64 [ %indvars.iv.next656.1, %.lr.ph514.split.us.us.us.split ], [ 0, %.lr.ph514.split.us.us.us.split.preheader ] ; 5 uses
  %.0253513.us.us.us = phi float [ %i.vo, %.lr.ph514.split.us.us.us.split ], [ 0.000000e+00, %.lr.ph514.split.us.us.us.split.preheader ]
  %.4270512.us.us.us = phi float [ %spec.select350.us.us.us.1, %.lr.ph514.split.us.us.us.split ], [ %.3269519.us.us, %.lr.ph514.split.us.us.us.split.preheader ] ; 2 uses
  %niter1101 = phi i64 [ %niter1101.next.1, %.lr.ph514.split.us.us.us.split ], [ 0, %.lr.ph514.split.us.us.us.split.preheader ]
  %indvars.iv.next656 = or disjoint i64 %indvars.iv655, 1 ; 2 uses
  %i.vd = trunc nuw nsw i64 %indvars.iv.next656 to i32
  %i.ve = uitofp nneg i32 %i.vd to float          ; 2 uses
  %i.vf = fsub nnan ninf float %i.ve, %.0253513.us.us.us
  %i.vg = fmul nnan float %i.vf, %i.su
  %gep809 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep808, i64 %indvars.iv655 ; 3 uses
  %i.vh = load float, ptr %gep809, align 4, !tbaa !80
  %i.vi = fdiv float %i.vh, %i.vg                 ; 2 uses
  store float %i.vi, ptr %gep809, align 4, !tbaa !80
  %i.vj = xor i64 %indvars.iv655, -1
  %i.vk = getelementptr [4 x i8], ptr %i.tg, i64 %i.vj
  store float %i.vi, ptr %i.vk, align 4, !tbaa !80
  %i.vl = load float, ptr %gep809, align 4, !tbaa !80 ; 2 uses
  %i.vm = fcmp ogt float %i.vl, %.4270512.us.us.us
  %spec.select350.us.us.us = select i1 %i.vm, float %i.vl, float %.4270512.us.us.us ; 2 uses
  %indvars.iv.next656.1 = add nuw nsw i64 %indvars.iv655, 2 ; 3 uses
  %i.vn = trunc nuw nsw i64 %indvars.iv.next656.1 to i32
  %i.vo = uitofp nneg i32 %i.vn to float          ; 3 uses
  %i.vp = fsub nnan ninf float %i.vo, %i.ve
  %i.vq = fmul nnan float %i.vp, %i.su
  %gep809.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep808, i64 %indvars.iv.next656 ; 2 uses
  %i.vr = load float, ptr %gep809.1, align 4, !tbaa !80
  %i.vs = fdiv float %i.vr, %i.vq                 ; 4 uses
  store float %i.vs, ptr %gep809.1, align 4, !tbaa !80
  %i.vt = xor i64 %indvars.iv655, -2
  %i.vu = getelementptr [4 x i8], ptr %i.tg, i64 %i.vt
  store float %i.vs, ptr %i.vu, align 4, !tbaa !80
  %i.vv = fcmp ogt float %i.vs, %spec.select350.us.us.us
  %spec.select350.us.us.us.1 = select i1 %i.vv, float %i.vs, float %spec.select350.us.us.us ; 3 uses
  %niter1101.next.1 = add i64 %niter1101, 2       ; 2 uses
  %niter1101.ncmp.1 = icmp eq i64 %niter1101.next.1, %unroll_iter1100
  br i1 %niter1101.ncmp.1, label %._crit_edge515.split.us.us.us.loopexit.unr-lcssa, label %.lr.ph514.split.us.us.us.split, !llvm.loop !37

._crit_edge515.split.us.us.us.loopexit.unr-lcssa: ; preds = %.lr.ph514.split.us.us.us.split
  br i1 %lcmp.mod1097.not, label %._crit_edge515.split.us.us.us, label %.lr.ph514.split.us.us.us.split.epil.preheader

.lr.ph514.split.us.us.us.split.epil.preheader:    ; preds = %._crit_edge515.split.us.us.us.loopexit.unr-lcssa, %.lr.ph514.split.us.us.us.split.preheader
  %indvars.iv655.epil.init = phi i64 [ 0, %.lr.ph514.split.us.us.us.split.preheader ], [ %indvars.iv.next656.1, %._crit_edge515.split.us.us.us.loopexit.unr-lcssa ] ; 3 uses
  %.0253513.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph514.split.us.us.us.split.preheader ], [ %i.vo, %._crit_edge515.split.us.us.us.loopexit.unr-lcssa ]
  %.4270512.us.us.us.epil.init = phi float [ %.3269519.us.us, %.lr.ph514.split.us.us.us.split.preheader ], [ %spec.select350.us.us.us.1, %._crit_edge515.split.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1099)
  %i.vw = trunc i64 %indvars.iv655.epil.init to i32
  %i.vx = add i32 %i.vw, 1
  %i.vy = uitofp nneg i32 %i.vx to float
  %i.vz = fsub nnan ninf float %i.vy, %.0253513.us.us.us.epil.init
  %i.wa = fmul nnan float %i.vz, %i.su
  %gep809.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep808, i64 %indvars.iv655.epil.init ; 3 uses
  %i.wb = load float, ptr %gep809.epil, align 4, !tbaa !80
  %i.wc = fdiv float %i.wb, %i.wa                 ; 2 uses
  store float %i.wc, ptr %gep809.epil, align 4, !tbaa !80
  %i.wd = xor i64 %indvars.iv655.epil.init, -1
  %i.we = getelementptr [4 x i8], ptr %i.tg, i64 %i.wd
  store float %i.wc, ptr %i.we, align 4, !tbaa !80
  %i.wf = load float, ptr %gep809.epil, align 4, !tbaa !80 ; 2 uses
  %i.wg = fcmp ogt float %i.wf, %.4270512.us.us.us.epil.init
  %spec.select350.us.us.us.epil = select i1 %i.wg, float %i.wf, float %.4270512.us.us.us.epil.init
  br label %._crit_edge515.split.us.us.us

._crit_edge515.split.us.us.us.loopexit1018.unr-lcssa: ; preds = %.lr.ph514.split.us.us.us.split.us
  br i1 %lcmp.mod1090.not, label %._crit_edge515.split.us.us.us, label %.lr.ph514.split.us.us.us.split.us.epil.preheader

.lr.ph514.split.us.us.us.split.us.epil.preheader: ; preds = %._crit_edge515.split.us.us.us.loopexit1018.unr-lcssa, %.lr.ph514.split.us.us.us.split.us.preheader
  %indvars.iv649.epil.init = phi i64 [ 0, %.lr.ph514.split.us.us.us.split.us.preheader ], [ %indvars.iv.next650.1, %._crit_edge515.split.us.us.us.loopexit1018.unr-lcssa ] ; 3 uses
  %.0253513.us.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph514.split.us.us.us.split.us.preheader ], [ %i.ua, %._crit_edge515.split.us.us.us.loopexit1018.unr-lcssa ]
  %.4270512.us.us.us.us.epil.init = phi float [ %.3269519.us.us, %.lr.ph514.split.us.us.us.split.us.preheader ], [ %spec.select350.us.us.us.us.1, %._crit_edge515.split.us.us.us.loopexit1018.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1092)
  %i.wh = trunc i64 %indvars.iv649.epil.init to i32
  %i.wi = add i32 %i.wh, 1
  %i.wj = uitofp nneg i32 %i.wi to double         ; 2 uses
  %i.wk = fmul nnan double %i.wj, f0x400921FB54442D18
  %i.wl = fmul double %i.wk, %i.wj
  %i.wm = fdiv double %i.wl, %i.st
  %i.wn = fptrunc double %i.wm to float
  %i.wo = fsub float %i.wn, %.0253513.us.us.us.us.epil.init
  %i.wp = fmul float %i.wo, %i.su
  %gep807.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep808, i64 %indvars.iv649.epil.init ; 3 uses
  %i.wq = load float, ptr %gep807.epil, align 4, !tbaa !80
  %i.wr = fdiv float %i.wq, %i.wp                 ; 2 uses
  store float %i.wr, ptr %gep807.epil, align 4, !tbaa !80
  %i.ws = xor i64 %indvars.iv649.epil.init, -1
  %i.wt = getelementptr [4 x i8], ptr %i.tg, i64 %i.ws
  store float %i.wr, ptr %i.wt, align 4, !tbaa !80
  %i.wu = load float, ptr %gep807.epil, align 4, !tbaa !80 ; 2 uses
  %i.wv = fcmp ogt float %i.wu, %.4270512.us.us.us.us.epil.init
  %spec.select350.us.us.us.us.epil = select i1 %i.wv, float %i.wu, float %.4270512.us.us.us.us.epil.init
  br label %._crit_edge515.split.us.us.us

._crit_edge515.split.us.us.us.loopexit1019.unr-lcssa: ; preds = %.lr.ph514.split.us.us.us.split.us533
  br i1 %lcmp.mod1083.not, label %._crit_edge515.split.us.us.us, label %.lr.ph514.split.us.us.us.split.us533.epil.preheader

.lr.ph514.split.us.us.us.split.us533.epil.preheader: ; preds = %._crit_edge515.split.us.us.us.loopexit1019.unr-lcssa, %.lr.ph514.split.us.us.us.split.us533.preheader
  %indvars.iv643.epil.init = phi i64 [ 0, %.lr.ph514.split.us.us.us.split.us533.preheader ], [ %indvars.iv.next644.1, %._crit_edge515.split.us.us.us.loopexit1019.unr-lcssa ] ; 3 uses
  %.0253513.us.us.us.us534.epil.init = phi float [ 0.000000e+00, %.lr.ph514.split.us.us.us.split.us533.preheader ], [ %i.uv, %._crit_edge515.split.us.us.us.loopexit1019.unr-lcssa ]
  %.4270512.us.us.us.us535.epil.init = phi float [ %.3269519.us.us, %.lr.ph514.split.us.us.us.split.us533.preheader ], [ %spec.select350.us.us.us.us539.1, %._crit_edge515.split.us.us.us.loopexit1019.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1085)
  %i.ww = trunc i64 %indvars.iv643.epil.init to i32
  %i.wx = add i32 %i.ww, 1
  %i.wy = uitofp nneg i32 %i.wx to float
  %i.wz = fdiv float %i.wy, %i.sq
  %i.xa = fsub float %i.wz, %.0253513.us.us.us.us534.epil.init
  %i.xb = fmul float %i.xa, %i.su
  %gep805.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep808, i64 %indvars.iv643.epil.init ; 3 uses
  %i.xc = load float, ptr %gep805.epil, align 4, !tbaa !80
  %i.xd = fdiv float %i.xc, %i.xb                 ; 2 uses
  store float %i.xd, ptr %gep805.epil, align 4, !tbaa !80
  %i.xe = xor i64 %indvars.iv643.epil.init, -1
  %i.xf = getelementptr [4 x i8], ptr %i.tg, i64 %i.xe
  store float %i.xd, ptr %i.xf, align 4, !tbaa !80
  %i.xg = load float, ptr %gep805.epil, align 4, !tbaa !80 ; 2 uses
  %i.xh = fcmp ogt float %i.xg, %.4270512.us.us.us.us535.epil.init
  %spec.select350.us.us.us.us539.epil = select i1 %i.xh, float %i.xg, float %.4270512.us.us.us.us535.epil.init
  br label %._crit_edge515.split.us.us.us

._crit_edge515.split.us.us.us:                    ; preds = %.lr.ph514.split.us.us.us.split.us533.epil.preheader, %._crit_edge515.split.us.us.us.loopexit1019.unr-lcssa, %.lr.ph514.split.us.us.us.split.us.epil.preheader, %._crit_edge515.split.us.us.us.loopexit1018.unr-lcssa, %.lr.ph514.split.us.us.us.split.epil.preheader, %._crit_edge515.split.us.us.us.loopexit.unr-lcssa
  %.us-phi532 = phi float [ %spec.select350.us.us.us.us.epil, %.lr.ph514.split.us.us.us.split.us.epil.preheader ], [ %spec.select350.us.us.us.epil, %.lr.ph514.split.us.us.us.split.epil.preheader ], [ %spec.select350.us.us.us.1, %._crit_edge515.split.us.us.us.loopexit.unr-lcssa ], [ %spec.select350.us.us.us.us.1, %._crit_edge515.split.us.us.us.loopexit1018.unr-lcssa ], [ %spec.select350.us.us.us.us539.1, %._crit_edge515.split.us.us.us.loopexit1019.unr-lcssa ], [ %spec.select350.us.us.us.us539.epil, %.lr.ph514.split.us.us.us.split.us533.epil.preheader ] ; 2 uses
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next662, %wide.trip.count664
  br i1 %exitcond665.not, label %.loopexit474, label %.preheader472.us.us, !llvm.loop !38

.preheader472.us:                                 ; preds = %.preheader472.us.preheader, %._crit_edge515.split.us528
  %indvars.iv638 = phi i64 [ 0, %.preheader472.us.preheader ], [ %indvars.iv.next639, %._crit_edge515.split.us528 ] ; 2 uses
  %.3269519.us = phi float [ 0.000000e+00, %.preheader472.us.preheader ], [ %spec.select350.us527.lcssa, %._crit_edge515.split.us528 ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv638
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !92 ; 3 uses
  br i1 %i.sy, label %.epil.preheader1073, label %.preheader472.us.new

.preheader472.us.new:                             ; preds = %.preheader472.us, %bb.ct
  %indvars.iv632 = phi i64 [ %i.xz, %bb.ct ], [ 0, %.preheader472.us ] ; 3 uses
  %.0253513.us522 = phi float [ %.0252.us525.1, %bb.ct ], [ 0.000000e+00, %.preheader472.us ]
  %.4270512.us523 = phi float [ %spec.select350.us527.1, %bb.ct ], [ %.3269519.us, %.preheader472.us ] ; 2 uses
  %niter1080 = phi i64 [ %niter1080.next.1, %bb.ct ], [ 0, %.preheader472.us ]
  %i.xk = or disjoint i64 %indvars.iv632, 1       ; 2 uses
  %i.xl = trunc nuw nsw i64 %i.xk to i32          ; 3 uses
  switch i32 %.0274, label %bb.co [
    i32 -3, label %bb.cn
    i32 -2, label %bb.cm
  ]

bb.cm:                                            ; preds = %.preheader472.us.new
  %i.xm = uitofp nneg i32 %i.xl to float
  %i.xn = fdiv float %i.xm, %i.sq
  br label %bb.cp

bb.cn:                                            ; preds = %.preheader472.us.new
  %i.xo = uitofp nneg i32 %i.xl to double         ; 2 uses
  %i.xp = fmul nnan double %i.xo, f0x400921FB54442D18
  %i.xq = fmul nnan double %i.xp, %i.xo
  %i.xr = fdiv double %i.xq, %i.st
  %i.xs = fptrunc double %i.xr to float
  br label %bb.cp

bb.co:                                            ; preds = %.preheader472.us.new
  %i.xt = uitofp nneg i32 %i.xl to float
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %.0252.us525 = phi float [ %i.xt, %bb.co ], [ %i.xs, %bb.cn ], [ %i.xn, %bb.cm ] ; 2 uses
  %i.xu = fsub float %.0252.us525, %.0253513.us522
  %i.xv = fmul float %i.xu, %i.su
  %gep803 = getelementptr [4 x i8], ptr %i.xj, i64 %indvars.iv632 ; 2 uses
  %i.xw = load float, ptr %gep803, align 4, !tbaa !80
  %i.xx = fdiv float %i.xw, %i.xv                 ; 3 uses
  store float %i.xx, ptr %gep803, align 4, !tbaa !80
  %i.xy = fcmp ogt float %i.xx, %.4270512.us523
  %spec.select350.us527 = select i1 %i.xy, float %i.xx, float %.4270512.us523 ; 2 uses
  %i.xz = add nuw nsw i64 %indvars.iv632, 2       ; 3 uses
  %i.ya = trunc nuw nsw i64 %i.xz to i32          ; 3 uses
  switch i32 %.0274, label %bb.cs [
    i32 -3, label %bb.cr
    i32 -2, label %bb.cq
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.yb = uitofp nneg i32 %i.ya to float
  %i.yc = fdiv float %i.yb, %i.sq
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cp
  %i.yd = uitofp nneg i32 %i.ya to double         ; 2 uses
  %i.ye = fmul nnan double %i.yd, f0x400921FB54442D18
  %i.yf = fmul double %i.ye, %i.yd
  %i.yg = fdiv double %i.yf, %i.st
  %i.yh = fptrunc double %i.yg to float
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  %i.yi = uitofp nneg i32 %i.ya to float
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  %.0252.us525.1 = phi float [ %i.yi, %bb.cs ], [ %i.yh, %bb.cr ], [ %i.yc, %bb.cq ] ; 3 uses
  %i.yj = fsub float %.0252.us525.1, %.0252.us525
  %i.yk = fmul float %i.yj, %i.su
  %gep803.1 = getelementptr [4 x i8], ptr %i.xj, i64 %i.xk ; 2 uses
  %i.yl = load float, ptr %gep803.1, align 4, !tbaa !80
  %i.ym = fdiv float %i.yl, %i.yk                 ; 3 uses
  store float %i.ym, ptr %gep803.1, align 4, !tbaa !80
  %i.yn = fcmp ogt float %i.ym, %spec.select350.us527
  %spec.select350.us527.1 = select i1 %i.yn, float %i.ym, float %spec.select350.us527 ; 3 uses
  %niter1080.next.1 = add i64 %niter1080, 2       ; 2 uses
  %niter1080.ncmp.1 = icmp eq i64 %niter1080.next.1, %unroll_iter1079
  br i1 %niter1080.ncmp.1, label %._crit_edge515.split.us528.unr-lcssa, label %.preheader472.us.new, !llvm.loop !37

._crit_edge515.split.us528.unr-lcssa:             ; preds = %bb.ct
  br i1 %lcmp.mod1076.not, label %._crit_edge515.split.us528, label %.epil.preheader1073

.epil.preheader1073:                              ; preds = %._crit_edge515.split.us528.unr-lcssa, %.preheader472.us
  %indvars.iv632.epil.init = phi i64 [ 0, %.preheader472.us ], [ %i.xz, %._crit_edge515.split.us528.unr-lcssa ] ; 2 uses
  %.0253513.us522.epil.init = phi float [ 0.000000e+00, %.preheader472.us ], [ %.0252.us525.1, %._crit_edge515.split.us528.unr-lcssa ]
  %.4270512.us523.epil.init = phi float [ %.3269519.us, %.preheader472.us ], [ %spec.select350.us527.1, %._crit_edge515.split.us528.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1078)
  %i.yo = trunc i64 %indvars.iv632.epil.init to i32
  %i.yp = add i32 %i.yo, 1                        ; 3 uses
  switch i32 %.0274, label %bb.cw [
    i32 -3, label %bb.cv
    i32 -2, label %bb.cu
  ]

bb.cu:                                            ; preds = %.epil.preheader1073
  %i.yq = uitofp nneg i32 %i.yp to float
  %i.yr = fdiv float %i.yq, %i.sq
  br label %._crit_edge515.split.us528.epilog-lcssa

bb.cv:                                            ; preds = %.epil.preheader1073
  %i.ys = uitofp nneg i32 %i.yp to double         ; 2 uses
  %i.yt = fmul nnan double %i.ys, f0x400921FB54442D18
  %i.yu = fmul double %i.yt, %i.ys
  %i.yv = fdiv double %i.yu, %i.st
  %i.yw = fptrunc double %i.yv to float
  br label %._crit_edge515.split.us528.epilog-lcssa

bb.cw:                                            ; preds = %.epil.preheader1073
  %i.yx = uitofp nneg i32 %i.yp to float
  br label %._crit_edge515.split.us528.epilog-lcssa

._crit_edge515.split.us528.epilog-lcssa:          ; preds = %bb.cw, %bb.cv, %bb.cu
  %.0252.us525.epil = phi float [ %i.yx, %bb.cw ], [ %i.yw, %bb.cv ], [ %i.yr, %bb.cu ]
  %i.yy = fsub float %.0252.us525.epil, %.0253513.us522.epil.init
  %i.yz = fmul float %i.yy, %i.su
  %gep803.epil = getelementptr [4 x i8], ptr %i.xj, i64 %indvars.iv632.epil.init ; 2 uses
  %i.za = load float, ptr %gep803.epil, align 4, !tbaa !80
  %i.zb = fdiv float %i.za, %i.yz                 ; 3 uses
  store float %i.zb, ptr %gep803.epil, align 4, !tbaa !80
  %i.zc = fcmp ogt float %i.zb, %.4270512.us523.epil.init
  %spec.select350.us527.epil = select i1 %i.zc, float %i.zb, float %.4270512.us523.epil.init
  br label %._crit_edge515.split.us528
end_hunk_0
