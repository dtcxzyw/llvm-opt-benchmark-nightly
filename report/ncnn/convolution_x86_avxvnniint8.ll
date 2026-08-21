inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii:bb.a
.preheader119.loopexit.i.i:                       ; preds = %.loopexit121.i.i.us99, %.loopexit121.i.i.loopexit.us.us, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.preheader, %.loopexit121.i.i.preheader
  %.us-phi = phi ptr [ %.lcssa402, %.loopexit121.i.i.loopexit.us.us ], [ %.7.lcssa.i.i, %.loopexit121.i.i.preheader ], [ %.7.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.preheader ], [ %.20.i.i.us100, %.loopexit121.i.i.us99 ]
  %.us-phi95 = phi i64 [ %indvars.iv.next284.i.i.us.us, %.loopexit121.i.i.loopexit.us.us ], [ %i.mt, %.loopexit121.i.i.preheader ], [ %i.nc, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.preheader ], [ %indvars.iv.next284.i.i.us101, %.loopexit121.i.i.us99 ]
  %i.sw = trunc nsw i64 %.us-phi95 to i32
  br label %.preheader119.i.i

.preheader119.i.i:                                ; preds = %.preheader119.loopexit.i.i, %.preheader124.i.i
  %.2358.lcssa.i.i = phi i32 [ %.1357.lcssa.i.i, %.preheader124.i.i ], [ %i.sw, %.preheader119.loopexit.i.i ] ; 3 uses
  %.14.lcssa.i.i = phi ptr [ %.7.lcssa.i.i, %.preheader124.i.i ], [ %.us-phi, %.preheader119.loopexit.i.i ] ; 2 uses
  %i.sx = icmp slt i32 %.2358.lcssa.i.i, %3
  br i1 %i.sx, label %.lr.ph238.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph238.i.i:                                    ; preds = %.preheader119.i.i
  %i.sy = sdiv i32 %4, 8
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.tb = sdiv i32 %5, 8                          ; 3 uses
  %i.tc = shl i64 %i.l, 3                         ; 9 uses
  %i.td = icmp eq i32 %i.n, 1
  %i.te = sext i32 %4 to i64
  %i.tf = icmp sgt i32 %5, 3
  %i.tg = shl i64 %i.l, 1                         ; 3 uses
  %i.th = mul i64 %i.l, 3                         ; 3 uses
  %i.ti = shl i64 %i.l, 2                         ; 3 uses
  br i1 %i.td, label %.lr.ph238.split.us.preheader.i.i, label %.lr.ph238.split.i.i

.lr.ph238.split.us.preheader.i.i:                 ; preds = %.lr.ph238.i.i
  %i.tj = and i32 %5, -4                          ; 2 uses
  %i.tk = sext i32 %.2358.lcssa.i.i to i64
  %i.tl = sext i32 %2 to i64
  %wide.trip.count296.i.i = sext i32 %3 to i64
  %i.tm = add i32 %5, -4                          ; 2 uses
  %i.tn = lshr i32 %i.tm, 2                       ; 2 uses
  %i.to = add nuw nsw i32 %i.tn, 1                ; 2 uses
  %i.tp = icmp eq i32 %i.tn, 0
  %unroll_iter511 = and i32 %i.to, 2147483646
  %i.tq = and i32 %i.tm, 4
  %lcmp.mod507.not.not = icmp eq i32 %i.tq, 0
  %lcmp.mod510 = trunc i32 %i.to to i1
  br label %.lr.ph238.split.us.i.i

.lr.ph238.split.us.i.i:                           ; preds = %.loopexit.us.i.i, %.lr.ph238.split.us.preheader.i.i
  %indvars.iv293.i.i = phi i64 [ %i.tk, %.lr.ph238.split.us.preheader.i.i ], [ %indvars.iv.next294.i.i, %.loopexit.us.i.i ] ; 2 uses
  %.21237.us.i.i = phi ptr [ %.14.lcssa.i.i, %.lr.ph238.split.us.preheader.i.i ], [ %.25.lcssa.us.i.i, %.loopexit.us.i.i ] ; 3 uses
  %.pre298.i.i = load ptr, ptr %0, align 8, !tbaa !16, !noalias !57
  %.pre300.i.i = load i64, ptr %i.k, align 8, !tbaa !9, !noalias !57
  %.pre302.i.i = load i64, ptr %i.ta, align 8, !tbaa !20, !noalias !57
  %i.tr = mul i64 %.pre300.i.i, %i.te
  %i.ts = mul i64 %i.tr, %.pre302.i.i
  %i.tt = getelementptr inbounds nuw i8, ptr %.pre298.i.i, i64 %i.ts
  %i.tu = getelementptr i8, ptr %i.tt, i64 %indvars.iv293.i.i
  %i.tv = getelementptr i8, ptr %i.tu, i64 %i.tl  ; 3 uses
  br i1 %i.tf, label %.lr.ph227.us.i.i.preheader, label %.preheader.us.i.i

.lr.ph227.us.i.i.preheader:                       ; preds = %.lr.ph238.split.us.i.i
  br i1 %i.tp, label %.lr.ph227.us.i.i.epil.preheader, label %.lr.ph227.us.i.i

.lr.ph227.us.i.i:                                 ; preds = %.lr.ph227.us.i.i.preheader, %.lr.ph227.us.i.i
  %.0344225.us.i.i = phi ptr [ %i.ut, %.lr.ph227.us.i.i ], [ %i.tv, %.lr.ph227.us.i.i.preheader ] ; 5 uses
  %.24224.us.i.i = phi ptr [ %i.us, %.lr.ph227.us.i.i ], [ %.21237.us.i.i, %.lr.ph227.us.i.i.preheader ] ; 9 uses
  %niter512 = phi i32 [ %niter512.next.1, %.lr.ph227.us.i.i ], [ 0, %.lr.ph227.us.i.i.preheader ]
  %i.tw = load i8, ptr %.0344225.us.i.i, align 1, !tbaa !21
  store i8 %i.tw, ptr %.24224.us.i.i, align 1, !tbaa !21
  %i.tx = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i, i64 %i.l
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !21
  %i.tz = getelementptr inbounds nuw i8, ptr %.24224.us.i.i, i64 1
  store i8 %i.ty, ptr %i.tz, align 1, !tbaa !21
  %i.ua = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i, i64 %i.tg
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !21
  %i.uc = getelementptr inbounds nuw i8, ptr %.24224.us.i.i, i64 2
  store i8 %i.ub, ptr %i.uc, align 1, !tbaa !21
  %i.ud = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i, i64 %i.th
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !21
  %i.uf = getelementptr inbounds nuw i8, ptr %.24224.us.i.i, i64 3
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !21
  %i.ug = getelementptr inbounds nuw i8, ptr %.24224.us.i.i, i64 4
  %i.uh = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i, i64 %i.ti ; 5 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !21
  store i8 %i.ui, ptr %i.ug, align 1, !tbaa !21
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.l
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !21
  %i.ul = getelementptr inbounds nuw i8, ptr %.24224.us.i.i, i64 5
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !21
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.tg
  %i.un = load i8, ptr %i.um, align 1, !tbaa !21
  %i.uo = getelementptr inbounds nuw i8, ptr %.24224.us.i.i, i64 6
  store i8 %i.un, ptr %i.uo, align 1, !tbaa !21
  %i.up = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.th
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !21
  %i.ur = getelementptr inbounds nuw i8, ptr %.24224.us.i.i, i64 7
  store i8 %i.uq, ptr %i.ur, align 1, !tbaa !21
  %i.us = getelementptr inbounds nuw i8, ptr %.24224.us.i.i, i64 8 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.ti ; 3 uses
  %niter512.next.1 = add i32 %niter512, 2         ; 2 uses
  %niter512.ncmp.1.not = icmp eq i32 %niter512.next.1, %unroll_iter511
  br i1 %niter512.ncmp.1.not, label %.preheader.us.i.i.loopexit.unr-lcssa, label %.lr.ph227.us.i.i, !llvm.loop !58

.lr.ph234.us.i.i:                                 ; preds = %.lr.ph234.us.i.i.prol.loopexit, %.lr.ph234.us.i.i
  %.1233.us.i.i = phi i32 [ %i.vs, %.lr.ph234.us.i.i ], [ %.1233.us.i.i.unr, %.lr.ph234.us.i.i.prol.loopexit ]
  %.1345232.us.i.i = phi ptr [ %i.vr, %.lr.ph234.us.i.i ], [ %.1345232.us.i.i.unr, %.lr.ph234.us.i.i.prol.loopexit ] ; 2 uses
  %.25231.us.i.i = phi ptr [ %i.vq, %.lr.ph234.us.i.i ], [ %.25231.us.i.i.unr, %.lr.ph234.us.i.i.prol.loopexit ] ; 9 uses
  %i.uu = load i8, ptr %.1345232.us.i.i, align 1, !tbaa !21
  store i8 %i.uu, ptr %.25231.us.i.i, align 1, !tbaa !21
  %i.uv = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 1
  %i.uw = getelementptr inbounds nuw i8, ptr %.1345232.us.i.i, i64 %i.l ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !21
  store i8 %i.ux, ptr %i.uv, align 1, !tbaa !21
  %i.uy = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 2
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.l ; 2 uses
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !21
  store i8 %i.va, ptr %i.uy, align 1, !tbaa !21
  %i.vb = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 3
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.l ; 2 uses
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !21
  store i8 %i.vd, ptr %i.vb, align 1, !tbaa !21
  %i.ve = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 4
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.l ; 2 uses
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !21
  store i8 %i.vg, ptr %i.ve, align 1, !tbaa !21
  %i.vh = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 5
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.l ; 2 uses
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !21
  store i8 %i.vj, ptr %i.vh, align 1, !tbaa !21
  %i.vk = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 6
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.l ; 2 uses
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !21
  store i8 %i.vm, ptr %i.vk, align 1, !tbaa !21
  %i.vn = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 7
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.l ; 2 uses
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !21
  store i8 %i.vp, ptr %i.vn, align 1, !tbaa !21
  %i.vq = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 8 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.l
  %i.vs = add nuw nsw i32 %.1233.us.i.i, 8        ; 2 uses
  %exitcond292.not.i.i.7 = icmp eq i32 %i.vs, %5
  br i1 %exitcond292.not.i.i.7, label %.loopexit.us.i.i, label %.lr.ph234.us.i.i, !llvm.loop !59

.preheader.us.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph227.us.i.i
  br i1 %lcmp.mod507.not.not, label %.lr.ph227.us.i.i.epil.preheader, label %.preheader.us.i.i

.lr.ph227.us.i.i.epil.preheader:                  ; preds = %.preheader.us.i.i.loopexit.unr-lcssa, %.lr.ph227.us.i.i.preheader
  %.0344225.us.i.i.epil.init = phi ptr [ %i.tv, %.lr.ph227.us.i.i.preheader ], [ %i.ut, %.preheader.us.i.i.loopexit.unr-lcssa ] ; 5 uses
  %.24224.us.i.i.epil.init = phi ptr [ %.21237.us.i.i, %.lr.ph227.us.i.i.preheader ], [ %i.us, %.preheader.us.i.i.loopexit.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod510)
  %i.vt = load i8, ptr %.0344225.us.i.i.epil.init, align 1, !tbaa !21
  store i8 %i.vt, ptr %.24224.us.i.i.epil.init, align 1, !tbaa !21
  %i.vu = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i.epil.init, i64 %i.l
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !21
  %i.vw = getelementptr inbounds nuw i8, ptr %.24224.us.i.i.epil.init, i64 1
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !21
  %i.vx = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i.epil.init, i64 %i.tg
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !21
  %i.vz = getelementptr inbounds nuw i8, ptr %.24224.us.i.i.epil.init, i64 2
  store i8 %i.vy, ptr %i.vz, align 1, !tbaa !21
  %i.wa = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i.epil.init, i64 %i.th
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !21
  %i.wc = getelementptr inbounds nuw i8, ptr %.24224.us.i.i.epil.init, i64 3
  store i8 %i.wb, ptr %i.wc, align 1, !tbaa !21
  %i.wd = getelementptr inbounds nuw i8, ptr %.24224.us.i.i.epil.init, i64 4
  %i.we = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i.epil.init, i64 %i.ti
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.lr.ph227.us.i.i.epil.preheader, %.preheader.us.i.i.loopexit.unr-lcssa, %.lr.ph238.split.us.i.i
  %.24.lcssa.us.i.i = phi ptr [ %.21237.us.i.i, %.lr.ph238.split.us.i.i ], [ %i.us, %.preheader.us.i.i.loopexit.unr-lcssa ], [ %i.wd, %.lr.ph227.us.i.i.epil.preheader ] ; 3 uses
  %.0344.lcssa.us.i.i = phi ptr [ %i.tv, %.lr.ph238.split.us.i.i ], [ %i.ut, %.preheader.us.i.i.loopexit.unr-lcssa ], [ %i.we, %.lr.ph227.us.i.i.epil.preheader ] ; 2 uses
  %.0.lcssa.us.i.i = phi i32 [ 0, %.lr.ph238.split.us.i.i ], [ %i.tj, %.preheader.us.i.i.loopexit.unr-lcssa ], [ %i.tj, %.lr.ph227.us.i.i.epil.preheader ] ; 5 uses
  %i.wf = icmp slt i32 %.0.lcssa.us.i.i, %5
  br i1 %i.wf, label %.lr.ph234.us.i.i.preheader, label %.loopexit.us.i.i

.lr.ph234.us.i.i.preheader:                       ; preds = %.preheader.us.i.i
  %i.wg = sub i32 %5, %.0.lcssa.us.i.i
  %xtraiter513 = and i32 %i.wg, 7                 ; 2 uses
  %lcmp.mod514.not = icmp eq i32 %xtraiter513, 0
  br i1 %lcmp.mod514.not, label %.lr.ph234.us.i.i.prol.loopexit, label %.lr.ph234.us.i.i.prol

.lr.ph234.us.i.i.prol:                            ; preds = %.lr.ph234.us.i.i.preheader, %.lr.ph234.us.i.i.prol
  %.1233.us.i.i.prol = phi i32 [ %i.wk, %.lr.ph234.us.i.i.prol ], [ %.0.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ]
  %.1345232.us.i.i.prol = phi ptr [ %i.wj, %.lr.ph234.us.i.i.prol ], [ %.0344.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ] ; 2 uses
  %.25231.us.i.i.prol = phi ptr [ %i.wi, %.lr.ph234.us.i.i.prol ], [ %.24.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ] ; 2 uses
  %prol.iter515 = phi i32 [ %prol.iter515.next, %.lr.ph234.us.i.i.prol ], [ 0, %.lr.ph234.us.i.i.preheader ]
  %i.wh = load i8, ptr %.1345232.us.i.i.prol, align 1, !tbaa !21
  store i8 %i.wh, ptr %.25231.us.i.i.prol, align 1, !tbaa !21
  %i.wi = getelementptr inbounds nuw i8, ptr %.25231.us.i.i.prol, i64 1 ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.1345232.us.i.i.prol, i64 %i.l ; 2 uses
  %i.wk = add nuw nsw i32 %.1233.us.i.i.prol, 1   ; 2 uses
  %prol.iter515.next = add i32 %prol.iter515, 1   ; 2 uses
  %prol.iter515.cmp.not = icmp eq i32 %prol.iter515.next, %xtraiter513
  br i1 %prol.iter515.cmp.not, label %.lr.ph234.us.i.i.prol.loopexit, label %.lr.ph234.us.i.i.prol, !llvm.loop !60

.lr.ph234.us.i.i.prol.loopexit:                   ; preds = %.lr.ph234.us.i.i.prol, %.lr.ph234.us.i.i.preheader
  %.lcssa399.unr = phi ptr [ poison, %.lr.ph234.us.i.i.preheader ], [ %i.wi, %.lr.ph234.us.i.i.prol ]
  %.1233.us.i.i.unr = phi i32 [ %.0.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ], [ %i.wk, %.lr.ph234.us.i.i.prol ]
  %.1345232.us.i.i.unr = phi ptr [ %.0344.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ], [ %i.wj, %.lr.ph234.us.i.i.prol ]
  %.25231.us.i.i.unr = phi ptr [ %.24.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ], [ %i.wi, %.lr.ph234.us.i.i.prol ]
  %i.wl = sub i32 %.0.lcssa.us.i.i, %5
  %i.wm = icmp ugt i32 %i.wl, -8
  br i1 %i.wm, label %.loopexit.us.i.i, label %.lr.ph234.us.i.i

.loopexit.us.i.i:                                 ; preds = %.lr.ph234.us.i.i.prol.loopexit, %.lr.ph234.us.i.i, %.preheader.us.i.i
  %.25.lcssa.us.i.i = phi ptr [ %.24.lcssa.us.i.i, %.preheader.us.i.i ], [ %.lcssa399.unr, %.lr.ph234.us.i.i.prol.loopexit ], [ %i.vq, %.lr.ph234.us.i.i ]
  %indvars.iv.next294.i.i = add nuw nsw i64 %indvars.iv293.i.i, 1 ; 2 uses
  %exitcond297.not.i.i = icmp eq i64 %indvars.iv.next294.i.i, %wide.trip.count296.i.i
  br i1 %exitcond297.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %.lr.ph238.split.us.i.i, !llvm.loop !61

.lr.ph238.split.i.i:                              ; preds = %.lr.ph238.i.i
  %i.wn = icmp slt i32 %5, 8
  %i.wo = icmp ne i32 %i.n, 8
  %brmerge.i.i = or i1 %i.wn, %i.wo
  br i1 %brmerge.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit385.preheader.i.i

_ZN4ncnn3MatD2Ev.exit385.preheader.i.i:           ; preds = %.lr.ph238.split.i.i
  %i.wp = sext i32 %.2358.lcssa.i.i to i64
  %i.wq = sext i32 %2 to i64
  %wide.trip.count.i.i = sext i32 %3 to i64
  %i.wr = add nsw i32 %i.tb, -1
  %xtraiter498 = and i32 %i.tb, 7                 ; 3 uses
  %i.ws = icmp ult i32 %i.wr, 7
  %unroll_iter503 = and i32 %i.tb, 268435448
  %lcmp.mod500.not = icmp eq i32 %xtraiter498, 0
  %lcmp.mod502 = icmp ne i32 %xtraiter498, 0
  br label %_ZN4ncnn3MatD2Ev.exit385.i.i

_ZN4ncnn3MatD2Ev.exit385.i.i:                     ; preds = %..loopexit118_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit385.preheader.i.i
  %indvars.iv287.i.i = phi i64 [ %i.wp, %_ZN4ncnn3MatD2Ev.exit385.preheader.i.i ], [ %indvars.iv.next288.i.i, %..loopexit118_crit_edge.i.i ] ; 2 uses
  %.21237.i.i = phi ptr [ %.14.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit385.preheader.i.i ], [ %.lcssa401, %..loopexit118_crit_edge.i.i ] ; 2 uses
  %i.wt = load ptr, ptr %0, align 8, !tbaa !16, !noalias !62
  %i.wu = load i64, ptr %i.k, align 8, !tbaa !9, !noalias !62
  %i.wv = mul i64 %i.wu, %i.sz
  %i.ww = load i64, ptr %i.ta, align 8, !tbaa !20, !noalias !62
  %i.wx = mul i64 %i.wv, %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wx
  %i.wz = add nsw i64 %indvars.iv287.i.i, %i.wq
  %i.xa = shl nsw i64 %i.wz, 3
  %i.xb = getelementptr inbounds i8, ptr %i.wy, i64 %i.xa ; 2 uses
  br i1 %i.ws, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit385.i.i.new

_ZN4ncnn3MatD2Ev.exit385.i.i.new:                 ; preds = %_ZN4ncnn3MatD2Ev.exit385.i.i, %_ZN4ncnn3MatD2Ev.exit385.i.i.new
  %.0347220.i.i = phi ptr [ %i.xz, %_ZN4ncnn3MatD2Ev.exit385.i.i.new ], [ %i.xb, %_ZN4ncnn3MatD2Ev.exit385.i.i ] ; 2 uses
  %.22219.i.i = phi ptr [ %i.xy, %_ZN4ncnn3MatD2Ev.exit385.i.i.new ], [ %.21237.i.i, %_ZN4ncnn3MatD2Ev.exit385.i.i ] ; 9 uses
  %niter504 = phi i32 [ %niter504.next.7, %_ZN4ncnn3MatD2Ev.exit385.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit385.i.i ]
  %i.xc = load i64, ptr %.0347220.i.i, align 1, !tbaa !21
  store i64 %i.xc, ptr %.22219.i.i, align 1, !tbaa !21
  %i.xd = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 8
  %i.xe = getelementptr inbounds nuw i8, ptr %.0347220.i.i, i64 %i.tc ; 2 uses
  %i.xf = load i64, ptr %i.xe, align 1, !tbaa !21
  store i64 %i.xf, ptr %i.xd, align 1, !tbaa !21
  %i.xg = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 16
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.tc ; 2 uses
  %i.xi = load i64, ptr %i.xh, align 1, !tbaa !21
  store i64 %i.xi, ptr %i.xg, align 1, !tbaa !21
  %i.xj = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 24
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.tc ; 2 uses
  %i.xl = load i64, ptr %i.xk, align 1, !tbaa !21
  store i64 %i.xl, ptr %i.xj, align 1, !tbaa !21
  %i.xm = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 32
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.tc ; 2 uses
  %i.xo = load i64, ptr %i.xn, align 1, !tbaa !21
  store i64 %i.xo, ptr %i.xm, align 1, !tbaa !21
  %i.xp = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 40
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.tc ; 2 uses
  %i.xr = load i64, ptr %i.xq, align 1, !tbaa !21
  store i64 %i.xr, ptr %i.xp, align 1, !tbaa !21
  %i.xs = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 48
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.tc ; 2 uses
  %i.xu = load i64, ptr %i.xt, align 1, !tbaa !21
  store i64 %i.xu, ptr %i.xs, align 1, !tbaa !21
  %i.xv = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 56
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.tc ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 1, !tbaa !21
  store i64 %i.xx, ptr %i.xv, align 1, !tbaa !21
  %i.xy = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 64 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.tc ; 2 uses
  %niter504.next.7 = add i32 %niter504, 8         ; 2 uses
  %niter504.ncmp.7 = icmp eq i32 %niter504.next.7, %unroll_iter503
  br i1 %niter504.ncmp.7, label %..loopexit118_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit385.i.i.new, !llvm.loop !65

..loopexit118_crit_edge.i.i.unr-lcssa:            ; preds = %_ZN4ncnn3MatD2Ev.exit385.i.i.new
  br i1 %lcmp.mod500.not, label %..loopexit118_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit118_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit385.i.i
  %.0347220.i.i.epil.init = phi ptr [ %i.xb, %_ZN4ncnn3MatD2Ev.exit385.i.i ], [ %i.xz, %..loopexit118_crit_edge.i.i.unr-lcssa ]
  %.22219.i.i.epil.init = phi ptr [ %.21237.i.i, %_ZN4ncnn3MatD2Ev.exit385.i.i ], [ %i.xy, %..loopexit118_crit_edge.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod502)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.0347220.i.i.epil = phi ptr [ %.0347220.i.i.epil.init, %.epil.preheader ], [ %i.yc, %bb.c ] ; 2 uses
  %.22219.i.i.epil = phi ptr [ %.22219.i.i.epil.init, %.epil.preheader ], [ %i.yb, %bb.c ] ; 2 uses
  %epil.iter499 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter499.next, %bb.c ]
  %i.ya = load i64, ptr %.0347220.i.i.epil, align 1, !tbaa !21
  store i64 %i.ya, ptr %.22219.i.i.epil, align 1, !tbaa !21
  %i.yb = getelementptr inbounds nuw i8, ptr %.22219.i.i.epil, i64 8 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.0347220.i.i.epil, i64 %i.tc
  %epil.iter499.next = add i32 %epil.iter499, 1   ; 2 uses
  %epil.iter499.cmp.not = icmp eq i32 %epil.iter499.next, %xtraiter498
  br i1 %epil.iter499.cmp.not, label %..loopexit118_crit_edge.i.i, label %bb.c, !llvm.loop !66

..loopexit118_crit_edge.i.i:                      ; preds = %bb.c, %..loopexit118_crit_edge.i.i.unr-lcssa
  %.lcssa401 = phi ptr [ %i.xy, %..loopexit118_crit_edge.i.i.unr-lcssa ], [ %i.yb, %bb.c ]
  %indvars.iv.next288.i.i = add nuw nsw i64 %indvars.iv287.i.i, 1 ; 2 uses
  %exitcond290.not.i.i = icmp eq i64 %indvars.iv.next288.i.i, %wide.trip.count.i.i
  br i1 %exitcond290.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit385.i.i, !llvm.loop !61

bb.d:                                             ; preds = %bb.a
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !67 ; 9 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !15 ; 9 uses
  %i.yh = add nsw i32 %6, -1                      ; 2 uses
  %i.yi = mul nsw i32 %8, %i.yh
  %.neg.i.i = xor i32 %i.yi, -1
  %i.yj = add i32 %i.ye, %.neg.i.i
  %i.yk = sdiv i32 %i.yj, %10                     ; 3 uses
  %i.yl = add nsw i32 %i.yk, 1                    ; 10 uses
  %i.ym = mul nsw i32 %7, %6                      ; 64 uses
  %i.yn = icmp eq i32 %i.yk, 0
  br i1 %i.yn, label %_ZN17FastDivider_epu32C2Ej.exit1263.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.yo = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.yk, i1 true) ; 3 uses
  %i.yp = sub nuw nsw i32 32, %i.yo
  %i.yq = icmp eq i32 %i.yo, 0
  %i.yr = shl nuw i32 1, %i.yp
  %i.ys = select i1 %i.yq, i32 0, i32 %i.yr
  %i.yt = sub i32 %i.ys, %i.yl
  %i.yu = zext i32 %i.yt to i64
  %i.yv = shl nuw i64 %i.yu, 32
  %i.yw = zext i32 %i.yl to i64
  %i.yx = udiv i64 %i.yv, %i.yw
  %i.yy = trunc i64 %i.yx to i32
  %i.yz = add i32 %i.yy, 1
  %i.za = xor i32 %i.yo, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1263.i.i

_ZN17FastDivider_epu32C2Ej.exit1263.i.i:          ; preds = %bb.e, %bb.d
  %.012.i1260.i.i = phi i32 [ %i.za, %bb.e ], [ 0, %bb.d ]
  %.011.i1261.i.i = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  %.0.i1262.i.i = phi i32 [ %i.yz, %bb.e ], [ 1, %bb.d ]
  %i.zb = insertelement <8 x i32> poison, i32 %.0.i1262.i.i, i64 0
  %i.zc = shufflevector <8 x i32> %i.zb, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.zd = bitcast <8 x i32> %i.zc to <4 x i64>
  %i.ze = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1261.i.i, i64 0 ; 2 uses
  %i.zf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1260.i.i, i64 0 ; 2 uses
  %i.zg = icmp eq i32 %i.ym, 1
  br i1 %i.zg, label %_ZN17FastDivider_epu32C2Ej.exit1259.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN17FastDivider_epu32C2Ej.exit1263.i.i
  %i.zh = add nsw i32 %i.ym, -1
  %i.zi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.zh, i1 true) ; 3 uses
  %i.zj = sub nuw nsw i32 32, %i.zi
  %i.zk = icmp eq i32 %i.zi, 0
  %i.zl = shl nuw i32 1, %i.zj
  %i.zm = select i1 %i.zk, i32 0, i32 %i.zl
  %i.zn = sub i32 %i.zm, %i.ym
  %i.zo = zext i32 %i.zn to i64
  %i.zp = shl nuw i64 %i.zo, 32
  %i.zq = zext i32 %i.ym to i64
  %i.zr = udiv i64 %i.zp, %i.zq
  %i.zs = trunc i64 %i.zr to i32
  %i.zt = add i32 %i.zs, 1
  %i.zu = xor i32 %i.zi, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1259.i.i

_ZN17FastDivider_epu32C2Ej.exit1259.i.i:          ; preds = %bb.f, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i
  %.012.i1256.i.i = phi i32 [ %i.zu, %bb.f ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i ]
  %.011.i1257.i.i = phi i32 [ 1, %bb.f ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i ]
  %.0.i1258.i.i = phi i32 [ %i.zt, %bb.f ], [ 1, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i ]
  %i.zv = insertelement <8 x i32> poison, i32 %.0.i1258.i.i, i64 0
  %i.zw = shufflevector <8 x i32> %i.zv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zx = bitcast <8 x i32> %i.zw to <4 x i64>    ; 4 uses
  %i.zy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1257.i.i, i64 0 ; 4 uses
  %i.zz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1256.i.i, i64 0 ; 7 uses
  br i1 %i.a, label %_ZN17FastDivider_epu32C2Ej.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN17FastDivider_epu32C2Ej.exit1259.i.i
  %i.aaa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.yh, i1 true) ; 3 uses
  %i.aab = sub nuw nsw i32 32, %i.aaa
  %i.aac = icmp eq i32 %i.aaa, 0
  %i.aad = shl nuw i32 1, %i.aab
  %i.aae = select i1 %i.aac, i32 0, i32 %i.aad
  %i.aaf = sub i32 %i.aae, %6
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = shl nuw i64 %i.aag, 32
  %i.aai = zext i32 %6 to i64
  %i.aaj = udiv i64 %i.aah, %i.aai
  %i.aak = trunc i64 %i.aaj to i32
  %i.aal = add i32 %i.aak, 1
  %i.aam = xor i32 %i.aaa, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit.i.i

_ZN17FastDivider_epu32C2Ej.exit.i.i:              ; preds = %bb.g, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i
  %.012.i.i.i = phi i32 [ %i.aam, %bb.g ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i ]
  %.011.i.i.i = phi i32 [ 1, %bb.g ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i ]
  %.0.i.i.i = phi i32 [ %i.aal, %bb.g ], [ 1, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i ]
  %i.aan = insertelement <8 x i32> poison, i32 %.0.i.i.i, i64 0
  %i.aao = shufflevector <8 x i32> %i.aan, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aap = bitcast <8 x i32> %i.aao to <4 x i64>  ; 4 uses
  %i.aaq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i.i.i, i64 0 ; 4 uses
  %i.aar = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i.i.i, i64 0 ; 7 uses
  %i.aas = icmp sgt i32 %3, 7
  br i1 %i.aas, label %.lr.ph265.i.i, label %.preheader216.i.i

.lr.ph265.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %i.aat = bitcast <8 x i32> %i.zc to <4 x i64>
  %i.aau = and <4 x i64> %i.aat, splat (i64 4294967295) ; 2 uses
  %i.aav = shufflevector <4 x i32> %i.ze, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.aaw = insertelement <8 x i32> poison, i32 %i.yl, i64 0
  %i.aax = shufflevector <8 x i32> %i.aaw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aay = insertelement <8 x i32> poison, i32 %10, i64 0
  %i.aaz = shufflevector <8 x i32> %i.aay, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.ye, %11
  %i.aba = insertelement <8 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.abb = shufflevector <8 x i32> %i.aba, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abc = icmp eq i32 %i.yg, 1                   ; 2 uses
  %i.abd = icmp sgt i32 %5, 3                     ; 2 uses
  %i.abe = shufflevector <4 x i64> %i.zx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.abf = and <2 x i64> %i.abe, splat (i64 4294967295) ; 4 uses
  %i.abg = shufflevector <4 x i32> %i.zy, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abh = insertelement <4 x i32> poison, i32 %i.ym, i64 0
  %i.abi = shufflevector <4 x i32> %i.abh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abj = shufflevector <4 x i64> %i.aap, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.abk = and <2 x i64> %i.abj, splat (i64 4294967295) ; 4 uses
  %i.abl = shufflevector <4 x i32> %i.aaq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abm = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.abn = shufflevector <4 x i32> %i.abm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abo = trunc i64 %i.l to i32                  ; 5 uses
  %i.abp = insertelement <4 x i32> poison, i32 %i.abo, i64 0
  %i.abq = shufflevector <4 x i32> %i.abp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abr = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.abs = shufflevector <4 x i32> %i.abr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar451.i.i = mul i32 %i.ye, %9             ; 9 uses
  %i.abt = insertelement <4 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.abu = shufflevector <4 x i32> %i.abt, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abv = icmp ne i32 %i.yg, 8
  %i.abw = sdiv i32 %5, 8                         ; 2 uses
  %i.abx = icmp slt i32 %5, 8
  %i.aby = sdiv i32 %4, 8                         ; 2 uses
  %brmerge375.i.i = or i1 %i.abx, %i.abv          ; 2 uses
  br label %bb.h

.preheader216.i.i:                                ; preds = %.loopexit218.i.i, %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %.01222.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %i.are, %.loopexit218.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %.12.i.i, %.loopexit218.i.i ] ; 2 uses
  %i.abz = or disjoint i32 %.01222.lcssa.i.i, 3
  %i.aca = icmp slt i32 %i.abz, %3
  br i1 %i.aca, label %.lr.ph306.i.i, label %.preheader203.i.i

.lr.ph306.i.i:                                    ; preds = %.preheader216.i.i
  %i.acb = shufflevector <4 x i64> %i.zd, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.acc = and <2 x i64> %i.acb, splat (i64 4294967295) ; 2 uses
  %i.acd = shufflevector <4 x i32> %i.ze, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ace = insertelement <4 x i32> poison, i32 %i.yl, i64 0
  %i.acf = shufflevector <4 x i32> %i.ace, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acg = insertelement <4 x i32> poison, i32 %10, i64 0
  %i.ach = shufflevector <4 x i32> %i.acg, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar453.i.i = mul i32 %i.ye, %11
  %i.aci = insertelement <4 x i32> poison, i32 %.scalar453.i.i, i64 0
  %i.acj = shufflevector <4 x i32> %i.aci, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ack = icmp eq i32 %i.yg, 1                   ; 2 uses
  %i.acl = icmp sgt i32 %5, 3                     ; 2 uses
  %i.acm = shufflevector <4 x i64> %i.zx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.acn = and <2 x i64> %i.acm, splat (i64 4294967295) ; 4 uses
  %i.aco = shufflevector <4 x i32> %i.zy, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acp = insertelement <4 x i32> poison, i32 %i.ym, i64 0
  %i.acq = shufflevector <4 x i32> %i.acp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acr = shufflevector <4 x i64> %i.aap, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.acs = and <2 x i64> %i.acr, splat (i64 4294967295) ; 4 uses
  %i.act = shufflevector <4 x i32> %i.aaq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acu = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.acv = shufflevector <4 x i32> %i.acu, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acw = trunc i64 %i.l to i32                  ; 5 uses
  %i.acx = insertelement <4 x i32> poison, i32 %i.acw, i64 0
  %i.acy = shufflevector <4 x i32> %i.acx, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acz = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.ada = shufflevector <4 x i32> %i.acz, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar454.i.i = mul i32 %i.ye, %9             ; 9 uses
  %i.adb = insertelement <4 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.adc = shufflevector <4 x i32> %i.adb, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.add = icmp ne i32 %i.yg, 8
  %i.ade = sdiv i32 %5, 8                         ; 2 uses
  %i.adf = icmp slt i32 %5, 8
  %i.adg = sdiv i32 %4, 8                         ; 2 uses
  %brmerge381.i.i = or i1 %i.adf, %i.add          ; 2 uses
  br label %bb.o

bb.h:                                             ; preds = %.loopexit218.i.i, %.lr.ph265.i.i
  %.0264.i.i = phi ptr [ %.val, %.lr.ph265.i.i ], [ %.12.i.i, %.loopexit218.i.i ] ; 8 uses
  %.01222263.i.i = phi i32 [ 0, %.lr.ph265.i.i ], [ %i.are, %.loopexit218.i.i ] ; 2 uses
  %i.adh = add nsw i32 %.01222263.i.i, %2
  %i.adi = insertelement <8 x i32> poison, i32 %i.adh, i64 0
  %i.adj = shufflevector <8 x i32> %i.adi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.adk = add <8 x i32> %i.adj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.adl = bitcast <8 x i32> %i.adk to <4 x i64>
  %i.adm = bitcast <8 x i32> %i.adk to <4 x i64>
  %i.adn = and <4 x i64> %i.adm, splat (i64 4294967295)
  %i.ado = mul nuw <4 x i64> %i.adn, %i.aau
  %i.adp = lshr <4 x i64> %i.ado, splat (i64 32)
  %i.adq = lshr <4 x i64> %i.adl, splat (i64 32)
  %i.adr = mul nuw <4 x i64> %i.adq, %i.aau
  %i.ads = bitcast <4 x i64> %i.adp to <16 x i16>
end_hunk_0
