Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/emd_new?download=true
inline.NumInlined: 208
inline.NumDeleted: 74
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv3EMDERKNS_11_InputArrayES2_iS2_PfRKNS_12_OutputArrayE:bb.a
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.3.i.us.i = phi float [ %.155.i.us.i, %bb.dj ], [ %.2.i47.us.i, %bb.di ] ; 2 uses
  %indvars.iv.next.i48.us.i = add nuw nsw i64 %indvars.iv.i46.us.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i48.us.i, %i.sg
  br i1 %exitcond.not.i, label %.loopexit.i.i, label %.lr.ph57.i.split.us.i.split, !llvm.loop !72

.lr.ph57.i.split.i:                               ; preds = %.lr.ph57.i.i, %bb.do
  %i.th = phi i32 [ %i.ur, %bb.do ], [ %i.rq, %.lr.ph57.i.i ]
  %i.ti = phi i32 [ %i.us, %bb.do ], [ %i.rq, %.lr.ph57.i.i ] ; 2 uses
  %indvars.iv.i46.i = phi i64 [ %indvars.iv.next.i48.i, %bb.do ], [ 0, %.lr.ph57.i.i ] ; 4 uses
  %.155.i.i = phi float [ %.3.i.i, %bb.do ], [ %.03858.i.i, %.lr.ph57.i.i ] ; 3 uses
  %i.tj = load ptr, ptr %i.dv, align 8, !tbaa !144
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %indvars.iv.i46.i
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !141 ; 2 uses
  %i.tm = icmp slt i32 %i.tl, 0
  br i1 %i.tm, label %bb.dl, label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.i.i

bb.dl:                                            ; preds = %.lr.ph57.i.split.i
  %.val49.i.i = load ptr, ptr %i.ps, align 8, !tbaa !169
  %i.tn = mul nuw nsw i32 %i.ti, %i.se
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds [4 x i8], ptr %.val49.i.i, i64 %i.to
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %indvars.iv.i46.i
  store float 0.000000e+00, ptr %i.tq, align 4, !tbaa !19
  br label %bb.do

_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.i.i:               ; preds = %.lr.ph57.i.split.i
  %i.tr = load i32, ptr %i.ec, align 4, !tbaa !140
  %i.ts = icmp slt i32 %i.tr, 2
  %i.tt = load ptr, ptr %i.ed, align 8, !tbaa !151 ; 2 uses
  %i.tu = load i64, ptr %i.ef, align 8, !tbaa !33 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tu
  %i.tw = mul i64 %i.tu, %i.sd
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tw
  %i.ty = load i64, ptr %i.rl, align 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.ty
  %.0.i.i.i = select i1 %i.ts, ptr %i.tv, ptr %i.tz
  %i.ua = load i32, ptr %i.ey, align 4, !tbaa !140
  %i.ub = icmp slt i32 %i.ua, 2
  %i.uc = load ptr, ptr %i.ez, align 8, !tbaa !151 ; 2 uses
  br i1 %i.ub, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.i.i
  %i.ud = load i64, ptr %i.fa, align 8, !tbaa !33
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ud
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit51.i.i

bb.dn:                                            ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.i.i
  %i.uf = zext nneg i32 %i.tl to i64
  %i.ug = load i64, ptr %i.fa, align 8, !tbaa !33
  %i.uh = mul i64 %i.ug, %i.uf
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.uh
  %i.uj = load i64, ptr %i.rm, align 8, !tbaa !33
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ui, i64 %i.uj
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit51.i.i

_ZNK2cv3Mat3ptrIfEEPKT_ii.exit51.i.i:             ; preds = %bb.dn, %bb.dm
  %.0.i50.i.i = phi ptr [ %i.ue, %bb.dm ], [ %i.uk, %bb.dn ]
  %i.ul = invoke noundef float %.0(ptr noundef %.0.i.i.i, ptr noundef %.0.i50.i.i, i32 noundef range(i32 -2147483648, 2147483647) %i.ae)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !73 ; 3 uses

.noexc107:                                        ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit51.i.i
  %.val46.pre.i.i = load i32, ptr %i.is, align 4, !tbaa !146 ; 3 uses
  %.val47.i.i = load ptr, ptr %i.ps, align 8, !tbaa !169
  %i.um = mul nsw i32 %.val46.pre.i.i, %i.se
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %.val47.i.i, i64 %i.un
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %indvars.iv.i46.i
  store float %i.ul, ptr %i.up, align 4, !tbaa !19
  %i.uq = fcmp olt float %.155.i.i, %i.ul
  %.2.i47.i = select i1 %i.uq, float %i.ul, float %.155.i.i
  br label %bb.do

bb.do:                                            ; preds = %.noexc107, %bb.dl
  %i.ur = phi i32 [ %i.th, %bb.dl ], [ %.val46.pre.i.i, %.noexc107 ] ; 2 uses
  %i.us = phi i32 [ %i.ti, %bb.dl ], [ %.val46.pre.i.i, %.noexc107 ] ; 2 uses
  %.3.i.i = phi float [ %.155.i.i, %bb.dl ], [ %.2.i47.i, %.noexc107 ] ; 2 uses
  %indvars.iv.next.i48.i = add nuw nsw i64 %indvars.iv.i46.i, 1 ; 2 uses
  %i.ut = sext i32 %i.us to i64
  %i.uu = icmp slt i64 %indvars.iv.next.i48.i, %i.ut
  br i1 %i.uu, label %.lr.ph57.i.split.i, label %.loopexit.loopexit.i.loopexit86.i, !llvm.loop !72

.loopexit.loopexit.i.loopexit86.i:                ; preds = %bb.do
  %.pre.i49.pre.i = load i32, ptr %51, align 8, !tbaa !145 ; 2 uses
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.dk, %bb.dh, %.loopexit.loopexit.i.loopexit86.i, %.preheader.i45.i, %.lr.ph.i44.i, %.preheader52.i.i
  %.pre.i49100.i = phi i32 [ %.pre.i4999.i, %.preheader52.i.i ], [ %.pre.i4999.i, %.preheader.i45.i ], [ %.pre.i4999.i, %.lr.ph.i44.i ], [ %.pre.i49.pre.i, %.loopexit.loopexit.i.loopexit86.i ], [ %.pre.i4999.i, %bb.dh ], [ %.pre.i4999.i, %bb.dk ] ; 7 uses
  %i.uv = phi i32 [ %i.rq, %.preheader52.i.i ], [ %i.rq, %.preheader.i45.i ], [ %i.rq, %.lr.ph.i44.i ], [ %i.ur, %.loopexit.loopexit.i.loopexit86.i ], [ %i.rq, %bb.dh ], [ %i.rq, %bb.dk ] ; 4 uses
  %i.uw = phi i32 [ %i.rr, %.preheader52.i.i ], [ %i.rr, %.preheader.i45.i ], [ %i.rr, %.lr.ph.i44.i ], [ %.pre.i49.pre.i, %.loopexit.loopexit.i.loopexit86.i ], [ %.pre.i4999.i, %bb.dh ], [ %.pre.i4999.i, %bb.dk ] ; 2 uses
  %.4.i.i = phi float [ %.03858.i.i, %.preheader52.i.i ], [ %.03858.i.i, %.preheader.i45.i ], [ %.03858.i.i, %.lr.ph.i44.i ], [ %.3.i.i, %.loopexit.loopexit.i.loopexit86.i ], [ %.3.i.us.i.us, %bb.dh ], [ %.3.i.us.i, %bb.dk ] ; 3 uses
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 2 uses
  %i.ux = sext i32 %i.uw to i64
  %i.uy = icmp slt i64 %indvars.iv.next67.i.i, %i.ux
  br i1 %i.uy, label %bb.de, label %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.i, !llvm.loop !74

_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.i: ; preds = %.loopexit.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %51, i64 180
  store float %.4.i.i, ptr %i.uz, align 4, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.va = fmul float %.4.i.i, f0x3727C5AC         ; 3 uses
  %i.vb = load ptr, ptr %i.pd, align 8, !tbaa !165 ; 13 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store ptr %i.vb, ptr %i.vc, align 8, !tbaa !167
  %i.vd = icmp sgt i32 %.pre.i49100.i, 0
  br i1 %i.vd, label %.lr.ph.preheader.i64.i, label %._crit_edge.i55.i

.lr.ph.preheader.i64.i:                           ; preds = %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.i
  %wide.trip.count.i65.i = zext nneg i32 %.pre.i49100.i to i64 ; 2 uses
  %xtraiter661 = and i64 %wide.trip.count.i65.i, 7 ; 3 uses
  %i.ve = icmp ult i32 %.pre.i49100.i, 8
  br i1 %i.ve, label %.lr.ph.i66.i.epil.preheader, label %.lr.ph.preheader.i64.i.new

.lr.ph.preheader.i64.i.new:                       ; preds = %.lr.ph.preheader.i64.i
  %unroll_iter = and i64 %wide.trip.count.i65.i, 2147483640
  br label %.lr.ph.i66.i

.lr.ph.i66.i:                                     ; preds = %.lr.ph.i66.i, %.lr.ph.preheader.i64.i.new
  %indvars.iv.i67.i = phi i64 [ 0, %.lr.ph.preheader.i64.i.new ], [ %indvars.iv.next.i68.i.7, %.lr.ph.i66.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i64.i.new ], [ %niter.next.7, %.lr.ph.i66.i ]
  %i.vf = getelementptr inbounds nuw [16 x i8], ptr %i.vb, i64 %indvars.iv.i67.i ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  store ptr %i.vg, ptr %i.vh, align 8, !tbaa !167
  %i.vi = getelementptr inbounds nuw [16 x i8], ptr %i.vb, i64 %indvars.iv.i67.i ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 32
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  store ptr %i.vj, ptr %i.vk, align 8, !tbaa !167
  %i.vl = getelementptr inbounds nuw [16 x i8], ptr %i.vb, i64 %indvars.iv.i67.i ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 48
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 40
  store ptr %i.vm, ptr %i.vn, align 8, !tbaa !167
  %i.vo = getelementptr inbounds nuw [16 x i8], ptr %i.vb, i64 %indvars.iv.i67.i ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 56
  store ptr %i.vp, ptr %i.vq, align 8, !tbaa !167
  %i.vr = getelementptr inbounds nuw [16 x i8], ptr %i.vb, i64 %indvars.iv.i67.i ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 80
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 72
  store ptr %i.vs, ptr %i.vt, align 8, !tbaa !167
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %i.vb, i64 %indvars.iv.i67.i ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 96
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 88
  store ptr %i.vv, ptr %i.vw, align 8, !tbaa !167
  %i.vx = getelementptr inbounds nuw [16 x i8], ptr %i.vb, i64 %indvars.iv.i67.i ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 112
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 104
  store ptr %i.vy, ptr %i.vz, align 8, !tbaa !167
  %i.wa = getelementptr inbounds nuw [16 x i8], ptr %i.vb, i64 %indvars.iv.i67.i ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 128
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 120
  store ptr %i.wb, ptr %i.wc, align 8, !tbaa !167
  %indvars.iv.next.i68.i.7 = add nuw nsw i64 %indvars.iv.i67.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i55.i.loopexit.unr-lcssa, label %.lr.ph.i66.i, !llvm.loop !75

._crit_edge.i55.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i66.i
  %lcmp.mod662.not = icmp eq i64 %xtraiter661, 0
  br i1 %lcmp.mod662.not, label %._crit_edge.i55.i, label %.lr.ph.i66.i.epil.preheader

.lr.ph.i66.i.epil.preheader:                      ; preds = %._crit_edge.i55.i.loopexit.unr-lcssa, %.lr.ph.preheader.i64.i
  %indvars.iv.i67.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i64.i ], [ %indvars.iv.next.i68.i.7, %._crit_edge.i55.i.loopexit.unr-lcssa ]
  %lcmp.mod663 = icmp ne i64 %xtraiter661, 0
  call void @llvm.assume(i1 %lcmp.mod663)
  br label %.lr.ph.i66.i.epil

.lr.ph.i66.i.epil:                                ; preds = %.lr.ph.i66.i.epil, %.lr.ph.i66.i.epil.preheader
  %indvars.iv.i67.i.epil = phi i64 [ %indvars.iv.i67.i.epil.init, %.lr.ph.i66.i.epil.preheader ], [ %indvars.iv.next.i68.i.epil, %.lr.ph.i66.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i66.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i66.i.epil ]
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %i.vb, i64 %indvars.iv.i67.i.epil ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  store ptr %i.we, ptr %i.wf, align 8, !tbaa !167
  %indvars.iv.next.i68.i.epil = add nuw nsw i64 %indvars.iv.i67.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter661
  br i1 %epil.iter.cmp.not, label %._crit_edge.i55.i, label %.lr.ph.i66.i.epil, !llvm.loop !76

._crit_edge.i55.i:                                ; preds = %._crit_edge.i55.i.loopexit.unr-lcssa, %.lr.ph.i66.i.epil, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.i, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.thread.i
  %i.wg = phi i32 [ %.pre, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.thread.i ], [ %i.uv, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.i ], [ %i.uv, %.lr.ph.i66.i.epil ], [ %i.uv, %._crit_edge.i55.i.loopexit.unr-lcssa ] ; 7 uses
  %i.wh = phi i1 [ false, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.thread.i ], [ false, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.i ], [ true, %.lr.ph.i66.i.epil ], [ true, %._crit_edge.i55.i.loopexit.unr-lcssa ] ; 2 uses
  %i.wi = phi ptr [ %i.rk, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.thread.i ], [ %i.vc, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.i ], [ %i.vc, %.lr.ph.i66.i.epil ], [ %i.vc, %._crit_edge.i55.i.loopexit.unr-lcssa ] ; 2 uses
  %i.wj = phi ptr [ %i.rj, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.thread.i ], [ %i.vb, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.i ], [ %i.vb, %.lr.ph.i66.i.epil ], [ %i.vb, %._crit_edge.i55.i.loopexit.unr-lcssa ] ; 9 uses
  %i.wk = phi float [ 0.000000e+00, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.thread.i ], [ %i.va, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.i ], [ %i.va, %.lr.ph.i66.i.epil ], [ %i.va, %._crit_edge.i55.i.loopexit.unr-lcssa ] ; 2 uses
  %i.wl = phi i32 [ %i.rg, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.thread.i ], [ %.pre.i49100.i, %_ZN12_GLOBAL__N_19EMDSolver8calcCostERKN2cv3MatES4_iPFfPKfS6_iES4_.exit.i ], [ %.pre.i49100.i, %.lr.ph.i66.i.epil ], [ %.pre.i49100.i, %._crit_edge.i55.i.loopexit.unr-lcssa ] ; 4 uses
  %i.wm = sext i32 %i.wl to i64
  %i.wn = getelementptr [16 x i8], ptr %i.wj, i64 %i.wm
  %i.wo = getelementptr i8, ptr %i.wn, i64 -8
  store ptr null, ptr %i.wo, align 8, !tbaa !167
  %i.wp = load ptr, ptr %i.pf, align 8, !tbaa !171 ; 25 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store ptr %i.wp, ptr %i.wq, align 8, !tbaa !167
  %i.wr = icmp sgt i32 %i.wg, 0
  br i1 %i.wr, label %.lr.ph184.preheader.i.i, label %._crit_edge185.thread.i.i

.lr.ph184.preheader.i.i:                          ; preds = %._crit_edge.i55.i
  %wide.trip.count273.i.i = zext nneg i32 %i.wg to i64 ; 15 uses
  %xtraiter670 = and i64 %wide.trip.count273.i.i, 3 ; 3 uses
  %i.ws = icmp ult i32 %i.wg, 4
  br i1 %i.ws, label %.lr.ph184.i.i.epil.preheader, label %.lr.ph184.preheader.i.i.new

.lr.ph184.preheader.i.i.new:                      ; preds = %.lr.ph184.preheader.i.i
  %unroll_iter674 = and i64 %wide.trip.count273.i.i, 2147483644
  br label %.lr.ph184.i.i

.lr.ph184.i.i:                                    ; preds = %.lr.ph184.i.i, %.lr.ph184.preheader.i.i.new
  %indvars.iv270.i.i = phi i64 [ 0, %.lr.ph184.preheader.i.i.new ], [ %indvars.iv.next271.i.i.3, %.lr.ph184.i.i ] ; 5 uses
  %niter675 = phi i64 [ 0, %.lr.ph184.preheader.i.i.new ], [ %niter675.next.3, %.lr.ph184.i.i ]
  %i.wt = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv270.i.i ; 3 uses
  store float -1.000000e+20, ptr %i.wt, align 8, !tbaa !172
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store ptr %i.wu, ptr %i.wv, align 8, !tbaa !167
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv270.i.i ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  store float -1.000000e+20, ptr %i.wx, align 8, !tbaa !172
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 32
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  store ptr %i.wy, ptr %i.wz, align 8, !tbaa !167
  %i.xa = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv270.i.i ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 32
  store float -1.000000e+20, ptr %i.xb, align 8, !tbaa !172
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 48
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 40
  store ptr %i.xc, ptr %i.xd, align 8, !tbaa !167
  %i.xe = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv270.i.i ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 48
  store float -1.000000e+20, ptr %i.xf, align 8, !tbaa !172
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 56
  store ptr %i.xg, ptr %i.xh, align 8, !tbaa !167
  %indvars.iv.next271.i.i.3 = add nuw nsw i64 %indvars.iv270.i.i, 4 ; 2 uses
  %niter675.next.3 = add i64 %niter675, 4         ; 2 uses
  %niter675.ncmp.3 = icmp eq i64 %niter675.next.3, %unroll_iter674
  br i1 %niter675.ncmp.3, label %._crit_edge185.i.i.unr-lcssa, label %.lr.ph184.i.i, !llvm.loop !77

._crit_edge185.i.i.unr-lcssa:                     ; preds = %.lr.ph184.i.i
  %lcmp.mod672.not = icmp eq i64 %xtraiter670, 0
  br i1 %lcmp.mod672.not, label %._crit_edge185.i.i, label %.lr.ph184.i.i.epil.preheader

.lr.ph184.i.i.epil.preheader:                     ; preds = %._crit_edge185.i.i.unr-lcssa, %.lr.ph184.preheader.i.i
  %indvars.iv270.i.i.epil.init = phi i64 [ 0, %.lr.ph184.preheader.i.i ], [ %indvars.iv.next271.i.i.3, %._crit_edge185.i.i.unr-lcssa ]
  %lcmp.mod673 = icmp ne i64 %xtraiter670, 0
  call void @llvm.assume(i1 %lcmp.mod673)
  br label %.lr.ph184.i.i.epil

.lr.ph184.i.i.epil:                               ; preds = %.lr.ph184.i.i.epil, %.lr.ph184.i.i.epil.preheader
  %indvars.iv270.i.i.epil = phi i64 [ %indvars.iv270.i.i.epil.init, %.lr.ph184.i.i.epil.preheader ], [ %indvars.iv.next271.i.i.epil, %.lr.ph184.i.i.epil ] ; 2 uses
  %epil.iter671 = phi i64 [ 0, %.lr.ph184.i.i.epil.preheader ], [ %epil.iter671.next, %.lr.ph184.i.i.epil ]
  %i.xi = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv270.i.i.epil ; 3 uses
  store float -1.000000e+20, ptr %i.xi, align 8, !tbaa !172
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  store ptr %i.xj, ptr %i.xk, align 8, !tbaa !167
  %indvars.iv.next271.i.i.epil = add nuw nsw i64 %indvars.iv270.i.i.epil, 1
  %epil.iter671.next = add i64 %epil.iter671, 1   ; 2 uses
  %epil.iter671.cmp.not = icmp eq i64 %epil.iter671.next, %xtraiter670
  br i1 %epil.iter671.cmp.not, label %._crit_edge185.i.i, label %.lr.ph184.i.i.epil, !llvm.loop !78

._crit_edge185.i.i:                               ; preds = %.lr.ph184.i.i.epil, %._crit_edge185.i.i.unr-lcssa
  %i.xl = getelementptr [16 x i8], ptr %i.wp, i64 %wide.trip.count273.i.i
  %i.xm = getelementptr i8, ptr %i.xl, i64 -8
  store ptr null, ptr %i.xm, align 8, !tbaa !167
  br i1 %i.wh, label %.preheader178.lr.ph.i.i, label %.preheader176.i.i.preheader

._crit_edge185.thread.i.i:                        ; preds = %._crit_edge.i55.i
  %i.xn = sext i32 %i.wg to i64
  %i.xo = getelementptr [16 x i8], ptr %i.wp, i64 %i.xn
  %i.xp = getelementptr i8, ptr %i.xo, i64 -8
  store ptr null, ptr %i.xp, align 8, !tbaa !167
  br i1 %i.wh, label %.preheader178.preheader.i.i, label %.preheader176.i.i.preheader

.preheader178.lr.ph.i.i:                          ; preds = %._crit_edge185.i.i
  %.val171.us.i.i = load ptr, ptr %i.ps, align 8, !tbaa !169 ; 4 uses
  %wide.trip.count288.i.i = zext i32 %i.wl to i64 ; 3 uses
  %xtraiter676 = and i64 %wide.trip.count273.i.i, 1
  %i.xq = icmp eq i32 %i.wg, 1
  %unroll_iter681 = and i64 %wide.trip.count273.i.i, 2147483646
  %lcmp.mod678.not = icmp eq i64 %xtraiter676, 0
  %lcmp.mod680 = trunc i32 %i.wg to i1
  br label %.preheader178.us.i.i

.preheader178.preheader.i.i:                      ; preds = %._crit_edge185.thread.i.i
  %wide.trip.count278.i.i = zext nneg i32 %i.wl to i64 ; 2 uses
  %xtraiter664 = and i64 %wide.trip.count278.i.i, 3 ; 3 uses
  %i.xr = add i32 %i.wl, -1
  %i.xs = icmp ult i32 %i.xr, 3
  br i1 %i.xs, label %.preheader178.i.i.epil.preheader, label %.preheader178.preheader.i.i.new

.preheader178.preheader.i.i.new:                  ; preds = %.preheader178.preheader.i.i
  %unroll_iter668 = and i64 %wide.trip.count278.i.i, 2147483644
  br label %.preheader178.i.i

.preheader178.us.i.i:                             ; preds = %._crit_edge190.us.i.i, %.preheader178.lr.ph.i.i
  %indvars.iv285.i.i = phi i64 [ %indvars.iv.next286.i.i, %._crit_edge190.us.i.i ], [ 0, %.preheader178.lr.ph.i.i ] ; 3 uses
  %i.xt = mul nuw nsw i64 %indvars.iv285.i.i, %wide.trip.count273.i.i
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %.val171.us.i.i, i64 %i.xt ; 3 uses
  br i1 %i.xq, label %.epil.preheader, label %.preheader178.us.i.i.new

.preheader178.us.i.i.new:                         ; preds = %.preheader178.us.i.i, %bb.ds
  %indvars.iv280.i.i = phi i64 [ %indvars.iv.next281.i.i.1, %bb.ds ], [ 0, %.preheader178.us.i.i ] ; 4 uses
  %.0112188.us.i.i = phi float [ %.1113.us.i.i.1, %bb.ds ], [ -1.000000e+20, %.preheader178.us.i.i ] ; 2 uses
  %niter682 = phi i64 [ %niter682.next.1, %bb.ds ], [ 0, %.preheader178.us.i.i ]
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv280.i.i
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !19 ; 4 uses
  %i.xx = fcmp olt float %.0112188.us.i.i, %i.xw
  %.1113.us.i.i = select i1 %i.xx, float %i.xw, float %.0112188.us.i.i ; 2 uses
  %i.xy = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv280.i.i ; 2 uses
  %i.xz = load float, ptr %i.xy, align 8, !tbaa !172
  %i.ya = fcmp olt float %i.xz, %i.xw
  br i1 %i.ya, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.preheader178.us.i.i.new
  store float %i.xw, ptr %i.xy, align 8, !tbaa !172
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.preheader178.us.i.i.new
  %indvars.iv.next281.i.i = or disjoint i64 %indvars.iv280.i.i, 1 ; 2 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv.next281.i.i
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !19 ; 4 uses
  %i.yd = fcmp olt float %.1113.us.i.i, %i.yc
  %.1113.us.i.i.1 = select i1 %i.yd, float %i.yc, float %.1113.us.i.i ; 3 uses
  %i.ye = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv.next281.i.i ; 2 uses
  %i.yf = load float, ptr %i.ye, align 8, !tbaa !172
  %i.yg = fcmp olt float %i.yf, %i.yc
  br i1 %i.yg, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store float %i.yc, ptr %i.ye, align 8, !tbaa !172
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %indvars.iv.next281.i.i.1 = add nuw nsw i64 %indvars.iv280.i.i, 2 ; 2 uses
  %niter682.next.1 = add i64 %niter682, 2         ; 2 uses
  %niter682.ncmp.1 = icmp eq i64 %niter682.next.1, %unroll_iter681
  br i1 %niter682.ncmp.1, label %._crit_edge190.us.i.i.unr-lcssa, label %.preheader178.us.i.i.new, !llvm.loop !79

._crit_edge190.us.i.i.unr-lcssa:                  ; preds = %bb.ds
  br i1 %lcmp.mod678.not, label %._crit_edge190.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge190.us.i.i.unr-lcssa, %.preheader178.us.i.i
  %indvars.iv280.i.i.epil.init = phi i64 [ 0, %.preheader178.us.i.i ], [ %indvars.iv.next281.i.i.1, %._crit_edge190.us.i.i.unr-lcssa ] ; 2 uses
  %.0112188.us.i.i.epil.init = phi float [ -1.000000e+20, %.preheader178.us.i.i ], [ %.1113.us.i.i.1, %._crit_edge190.us.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod680)
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv280.i.i.epil.init
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !19 ; 4 uses
  %i.yj = fcmp olt float %.0112188.us.i.i.epil.init, %i.yi
  %.1113.us.i.i.epil = select i1 %i.yj, float %i.yi, float %.0112188.us.i.i.epil.init ; 2 uses
  %i.yk = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv280.i.i.epil.init ; 2 uses
  %i.yl = load float, ptr %i.yk, align 8, !tbaa !172
  %i.ym = fcmp olt float %i.yl, %i.yi
  br i1 %i.ym, label %bb.dt, label %._crit_edge190.us.i.i

bb.dt:                                            ; preds = %.epil.preheader
  store float %i.yi, ptr %i.yk, align 8, !tbaa !172
  br label %._crit_edge190.us.i.i

._crit_edge190.us.i.i:                            ; preds = %.epil.preheader, %bb.dt, %._crit_edge190.us.i.i.unr-lcssa
  %.1113.us.i.i.lcssa = phi float [ %.1113.us.i.i.1, %._crit_edge190.us.i.i.unr-lcssa ], [ %.1113.us.i.i.epil, %bb.dt ], [ %.1113.us.i.i.epil, %.epil.preheader ]
  %i.yn = getelementptr inbounds nuw [16 x i8], ptr %i.wj, i64 %indvars.iv285.i.i
  store float %.1113.us.i.i.lcssa, ptr %i.yn, align 8, !tbaa !172
  %indvars.iv.next286.i.i = add nuw nsw i64 %indvars.iv285.i.i, 1 ; 2 uses
  %exitcond289.not.i.i = icmp eq i64 %indvars.iv.next286.i.i, %wide.trip.count288.i.i
  br i1 %exitcond289.not.i.i, label %.preheader177.i.i, label %.preheader178.us.i.i, !llvm.loop !80

.preheader178.i.i:                                ; preds = %.preheader178.i.i, %.preheader178.preheader.i.i.new
  %indvars.iv275.i.i = phi i64 [ 0, %.preheader178.preheader.i.i.new ], [ %indvars.iv.next276.i.i.3, %.preheader178.i.i ] ; 5 uses
  %niter669 = phi i64 [ 0, %.preheader178.preheader.i.i.new ], [ %niter669.next.3, %.preheader178.i.i ]
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.wj, i64 %indvars.iv275.i.i
  store float -1.000000e+20, ptr %i.yo, align 8, !tbaa !172
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.wj, i64 %indvars.iv275.i.i
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  store float -1.000000e+20, ptr %i.yq, align 8, !tbaa !172
  %i.yr = getelementptr inbounds nuw [16 x i8], ptr %i.wj, i64 %indvars.iv275.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 32
  store float -1.000000e+20, ptr %i.ys, align 8, !tbaa !172
  %i.yt = getelementptr inbounds nuw [16 x i8], ptr %i.wj, i64 %indvars.iv275.i.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 48
  store float -1.000000e+20, ptr %i.yu, align 8, !tbaa !172
  %indvars.iv.next276.i.i.3 = add nuw nsw i64 %indvars.iv275.i.i, 4 ; 2 uses
  %niter669.next.3 = add i64 %niter669, 4         ; 2 uses
  %niter669.ncmp.3 = icmp eq i64 %niter669.next.3, %unroll_iter668
  br i1 %niter669.ncmp.3, label %.preheader176.i.i.preheader.loopexit640.unr-lcssa, label %.preheader178.i.i, !llvm.loop !80

.preheader177.i.i:                                ; preds = %._crit_edge190.us.i.i
  %i.yv = load ptr, ptr %i.pn, align 8, !tbaa !173 ; 5 uses
  %i.yw = shl nuw nsw i64 %wide.trip.count273.i.i, 4
  %i.yx = getelementptr i8, ptr %i.wp, i64 %i.yw
  %scevgep578 = getelementptr i8, ptr %i.yx, i64 -12
  %i.yy = mul nuw nsw i64 %wide.trip.count273.i.i, %wide.trip.count288.i.i
  %52 = shl i64 %i.yy, 2
  %scevgep580 = getelementptr i8, ptr %i.yv, i64 %52
  %i.yz = shl nuw nsw i64 %wide.trip.count273.i.i, 2 ; 2 uses
  %scevgep579 = getelementptr i8, ptr %.val171.us.i.i, i64 %i.yz
  %scevgep580.a = getelementptr i8, ptr %i.yv, i64 %i.yz
  %min.iters.check582 = icmp ult i32 %i.wg, 9
  %bound0584 = icmp ult ptr %i.yv, %scevgep579
  %bound1585 = icmp ult ptr %.val171.us.i.i, %scevgep580.a
  %found.conflict586 = and i1 %bound0584, %bound1585
  %bound0587 = icmp ult ptr %i.yv, %scevgep578
  %bound1588 = icmp ult ptr %i.wp, %scevgep580
  %found.conflict589 = and i1 %bound0587, %bound1588
  %conflict.rdx = or i1 %found.conflict586, %found.conflict589
  %i.za = and i64 %wide.trip.count273.i.i, 7      ; 2 uses
  %i.zb = icmp eq i64 %i.za, 0
  %i.zc = select i1 %i.zb, i64 8, i64 %i.za
  %n.vec591 = sub nsw i64 %wide.trip.count273.i.i, %i.zc ; 2 uses
  %i.zd = add nsw i64 %wide.trip.count273.i.i, -1
  br label %.lr.ph195.i.i

.lr.ph195.i.i:                                    ; preds = %._crit_edge196.i.i, %.preheader177.i.i
  %indvars.iv295.i.i = phi i64 [ 0, %.preheader177.i.i ], [ %indvars.iv.next296.i.i, %._crit_edge196.i.i ] ; 3 uses
  %i.ze = getelementptr inbounds nuw [16 x i8], ptr %i.wj, i64 %indvars.iv295.i.i
  %i.zf = load float, ptr %i.ze, align 8, !tbaa !172 ; 4 uses
  %i.zg = mul nuw nsw i64 %indvars.iv295.i.i, %wide.trip.count273.i.i ; 2 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %i.zg ; 4 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %.val171.us.i.i, i64 %i.zg ; 4 uses
  %brmerge759 = select i1 %min.iters.check582, i1 true, i1 %conflict.rdx
  br i1 %brmerge759, label %scalar.ph581.preheader, label %vector.ph590

vector.ph590:                                     ; preds = %.lr.ph195.i.i
  %broadcast.splatinsert592 = insertelement <4 x float> poison, float %i.zf, i64 0
  %broadcast.splat593 = shufflevector <4 x float> %broadcast.splatinsert592, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body594

vector.body594:                                   ; preds = %vector.body594, %vector.ph590
  %index595 = phi i64 [ 0, %vector.ph590 ], [ %index.next598, %vector.body594 ] ; 11 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %index595 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %wide.load596 = load <4 x float>, ptr %i.zj, align 4, !tbaa !19, !alias.scope !174
  %wide.load597 = load <4 x float>, ptr %i.zk, align 4, !tbaa !19, !alias.scope !174
  %i.zl = fsub <4 x float> %wide.load596, %broadcast.splat593
  %i.zm = fsub <4 x float> %wide.load597, %broadcast.splat593
  %i.zn = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %index595
  %i.zo = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %index595
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %index595
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 32
  %i.zs = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %index595
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 48
  %i.zu = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %index595
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 64
  %i.zw = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %index595
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 80
  %i.zy = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %index595
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 96
  %i.aaa = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %index595
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 112
  %i.aac = load float, ptr %i.zn, align 8, !tbaa !172, !alias.scope !175
  %i.aad = load float, ptr %i.zp, align 8, !tbaa !172, !alias.scope !175
  %i.aae = load float, ptr %i.zr, align 8, !tbaa !172, !alias.scope !175
  %i.aaf = load float, ptr %i.zt, align 8, !tbaa !172, !alias.scope !175
  %i.aag = insertelement <4 x float> poison, float %i.aac, i64 0
  %i.aah = insertelement <4 x float> %i.aag, float %i.aad, i64 1
  %i.aai = insertelement <4 x float> %i.aah, float %i.aae, i64 2
  %i.aaj = insertelement <4 x float> %i.aai, float %i.aaf, i64 3
  %i.aak = load float, ptr %i.zv, align 8, !tbaa !172, !alias.scope !175
  %i.aal = load float, ptr %i.zx, align 8, !tbaa !172, !alias.scope !175
  %i.aam = load float, ptr %i.zz, align 8, !tbaa !172, !alias.scope !175
  %i.aan = load float, ptr %i.aab, align 8, !tbaa !172, !alias.scope !175
  %i.aao = insertelement <4 x float> poison, float %i.aak, i64 0
  %i.aap = insertelement <4 x float> %i.aao, float %i.aal, i64 1
  %i.aaq = insertelement <4 x float> %i.aap, float %i.aam, i64 2
  %i.aar = insertelement <4 x float> %i.aaq, float %i.aan, i64 3
  %i.aas = fsub <4 x float> %i.zl, %i.aaj
  %i.aat = fsub <4 x float> %i.zm, %i.aar
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %index595 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  store <4 x float> %i.aas, ptr %i.aau, align 4, !tbaa !19, !alias.scope !176, !noalias !177
  store <4 x float> %i.aat, ptr %i.aav, align 4, !tbaa !19, !alias.scope !176, !noalias !177
  %index.next598 = add nuw i64 %index595, 8       ; 2 uses
  %i.aaw = icmp eq i64 %index.next598, %n.vec591
  br i1 %i.aaw, label %scalar.ph581.preheader, label %vector.body594, !llvm.loop !85

scalar.ph581.preheader:                           ; preds = %vector.body594, %.lr.ph195.i.i
  %indvars.iv290.i.i.ph = phi i64 [ 0, %.lr.ph195.i.i ], [ %n.vec591, %vector.body594 ] ; 7 uses
  %i.aax = sub nsw i64 %wide.trip.count273.i.i, %indvars.iv290.i.i.ph
  %xtraiter683 = and i64 %i.aax, 1
  %lcmp.mod684.not = icmp eq i64 %xtraiter683, 0
  br i1 %lcmp.mod684.not, label %scalar.ph581.prol.loopexit, label %scalar.ph581.prol

scalar.ph581.prol:                                ; preds = %scalar.ph581.preheader
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv290.i.i.ph
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !19
  %i.aba = fsub float %i.aaz, %i.zf
  %i.abb = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv290.i.i.ph
  %i.abc = load float, ptr %i.abb, align 8, !tbaa !172
  %i.abd = fsub float %i.aba, %i.abc
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv290.i.i.ph
  store float %i.abd, ptr %i.abe, align 4, !tbaa !19
  %indvars.iv.next291.i.i.prol = add nuw nsw i64 %indvars.iv290.i.i.ph, 1
  br label %scalar.ph581.prol.loopexit

scalar.ph581.prol.loopexit:                       ; preds = %scalar.ph581.prol, %scalar.ph581.preheader
  %indvars.iv290.i.i.unr = phi i64 [ %indvars.iv290.i.i.ph, %scalar.ph581.preheader ], [ %indvars.iv.next291.i.i.prol, %scalar.ph581.prol ]
  %i.abf = icmp eq i64 %indvars.iv290.i.i.ph, %i.zd
  br i1 %i.abf, label %._crit_edge196.i.i, label %scalar.ph581

scalar.ph581:                                     ; preds = %scalar.ph581.prol.loopexit, %scalar.ph581
  %indvars.iv290.i.i = phi i64 [ %indvars.iv.next291.i.i.1, %scalar.ph581 ], [ %indvars.iv290.i.i.unr, %scalar.ph581.prol.loopexit ] ; 5 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv290.i.i
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !19
  %i.abi = fsub float %i.abh, %i.zf
  %i.abj = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv290.i.i
  %i.abk = load float, ptr %i.abj, align 8, !tbaa !172
  %i.abl = fsub float %i.abi, %i.abk
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv290.i.i
  store float %i.abl, ptr %i.abm, align 4, !tbaa !19
  %indvars.iv.next291.i.i = add nuw nsw i64 %indvars.iv290.i.i, 1 ; 3 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next291.i.i
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !19
  %i.abp = fsub float %i.abo, %i.zf
  %i.abq = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv.next291.i.i
  %i.abr = load float, ptr %i.abq, align 8, !tbaa !172
  %i.abs = fsub float %i.abp, %i.abr
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv.next291.i.i
  store float %i.abs, ptr %i.abt, align 4, !tbaa !19
  %indvars.iv.next291.i.i.1 = add nuw nsw i64 %indvars.iv290.i.i, 2 ; 2 uses
  %exitcond294.not.i.i.1 = icmp eq i64 %indvars.iv.next291.i.i.1, %wide.trip.count273.i.i
  br i1 %exitcond294.not.i.i.1, label %._crit_edge196.i.i, label %scalar.ph581, !llvm.loop !86

._crit_edge196.i.i:                               ; preds = %scalar.ph581, %scalar.ph581.prol.loopexit
  %indvars.iv.next296.i.i = add nuw nsw i64 %indvars.iv295.i.i, 1 ; 2 uses
  %exitcond299.not.i.i = icmp eq i64 %indvars.iv.next296.i.i, %wide.trip.count288.i.i
  br i1 %exitcond299.not.i.i, label %.preheader176.i.i.preheader, label %.lr.ph195.i.i, !llvm.loop !87

.preheader176.i.i.preheader.loopexit640.unr-lcssa: ; preds = %.preheader178.i.i
  %lcmp.mod666.not = icmp eq i64 %xtraiter664, 0
  br i1 %lcmp.mod666.not, label %.preheader176.i.i.preheader, label %.preheader178.i.i.epil.preheader

.preheader178.i.i.epil.preheader:                 ; preds = %.preheader176.i.i.preheader.loopexit640.unr-lcssa, %.preheader178.preheader.i.i
  %indvars.iv275.i.i.epil.init = phi i64 [ 0, %.preheader178.preheader.i.i ], [ %indvars.iv.next276.i.i.3, %.preheader176.i.i.preheader.loopexit640.unr-lcssa ]
  %lcmp.mod667 = icmp ne i64 %xtraiter664, 0
  call void @llvm.assume(i1 %lcmp.mod667)
  br label %.preheader178.i.i.epil

.preheader178.i.i.epil:                           ; preds = %.preheader178.i.i.epil, %.preheader178.i.i.epil.preheader
  %indvars.iv275.i.i.epil = phi i64 [ %indvars.iv275.i.i.epil.init, %.preheader178.i.i.epil.preheader ], [ %indvars.iv.next276.i.i.epil, %.preheader178.i.i.epil ] ; 2 uses
  %epil.iter665 = phi i64 [ 0, %.preheader178.i.i.epil.preheader ], [ %epil.iter665.next, %.preheader178.i.i.epil ]
  %i.abu = getelementptr inbounds nuw [16 x i8], ptr %i.wj, i64 %indvars.iv275.i.i.epil
  store float -1.000000e+20, ptr %i.abu, align 8, !tbaa !172
  %indvars.iv.next276.i.i.epil = add nuw nsw i64 %indvars.iv275.i.i.epil, 1
  %epil.iter665.next = add i64 %epil.iter665, 1   ; 2 uses
  %epil.iter665.cmp.not = icmp eq i64 %epil.iter665.next, %xtraiter664
  br i1 %epil.iter665.cmp.not, label %.preheader176.i.i.preheader, label %.preheader178.i.i.epil, !llvm.loop !88

.preheader176.i.i.preheader:                      ; preds = %.preheader176.i.i.preheader.loopexit640.unr-lcssa, %.preheader178.i.i.epil, %._crit_edge196.i.i, %._crit_edge185.thread.i.i, %._crit_edge185.i.i
  br label %.preheader176.i.i

.preheader176.i.i:                                ; preds = %.preheader176.i.i.preheader, %.loopexit174.i.i
  %i.abv = phi ptr [ %i.aiq, %.loopexit174.i.i ], [ %i.wp, %.preheader176.i.i.preheader ] ; 2 uses
  %i.abw = phi ptr [ %i.air, %.loopexit174.i.i ], [ %i.wj, %.preheader176.i.i.preheader ] ; 3 uses
  %.0133.i.i = phi i32 [ %.3136.i.i, %.loopexit174.i.i ], [ -1, %.preheader176.i.i.preheader ]
  %.0116.i.i = phi ptr [ %.3119.i.i, %.loopexit174.i.i ], [ null, %.preheader176.i.i.preheader ]
  %.0114.i.i = phi ptr [ %.3.i56.i, %.loopexit174.i.i ], [ null, %.preheader176.i.i.preheader ]
  %.not215.i.i = icmp eq ptr %i.abw, null
  %.pre239 = load i32, ptr %i.is, align 4         ; 3 uses
  br i1 %.not215.i.i, label %_ZN12_GLOBAL__N_19EMDSolver4initERKN2cv3MatES4_iPFfPKfS6_iES4_Pf.exit.threadsplit, label %.lr.ph224.i.i

.lr.ph224.i.i:                                    ; preds = %.preheader176.i.i
  %i.abx = load ptr, ptr %i.pd, align 8, !tbaa !165
  %i.aby = ptrtoint ptr %i.abx to i64
  %i.abz = load ptr, ptr %i.pn, align 8, !tbaa !173
  %.not159199.i.i = icmp eq ptr %i.abv, null
  br i1 %.not159199.i.i, label %_ZN12_GLOBAL__N_19EMDSolver4initERKN2cv3MatES4_iPFfPKfS6_iES4_Pf.exit.threadsplit, label %.lr.ph224.split.i.i

.lr.ph224.split.i.i:                              ; preds = %.lr.ph224.i.i
  %i.aca = load ptr, ptr %i.pf, align 8, !tbaa !171
  %i.acb = ptrtoint ptr %i.aca to i64
  br label %.lr.ph208.i.i

.lr.ph208.i.i:                                    ; preds = %._crit_edge209.i.i, %.lr.ph224.split.i.i
  %.1115222.i.i = phi ptr [ %.0114.i.i, %.lr.ph224.split.i.i ], [ %.3.i56.i, %._crit_edge209.i.i ]
  %.1117221.i.i = phi ptr [ %.0116.i.i, %.lr.ph224.split.i.i ], [ %.3119.i.i, %._crit_edge209.i.i ]
  %.0125220.i.i = phi ptr [ %21, %.lr.ph224.split.i.i ], [ %.0126219.i.i, %._crit_edge209.i.i ]
  %.0126219.i.i = phi ptr [ %i.abw, %.lr.ph224.split.i.i ], [ %i.acu, %._crit_edge209.i.i ] ; 3 uses
  %.0130218.i.i = phi float [ 1.000000e+20, %.lr.ph224.split.i.i ], [ %.2132.i.i, %._crit_edge209.i.i ]
  %.1134217.i.i = phi i32 [ %.0133.i.i, %.lr.ph224.split.i.i ], [ %.3136.i.i, %._crit_edge209.i.i ]
  %.0137216.i.i = phi i32 [ -1, %.lr.ph224.split.i.i ], [ %.2139.i.i, %._crit_edge209.i.i ]
  %i.acc = ptrtoint ptr %.0126219.i.i to i64
  %i.acd = sub i64 %i.acc, %i.aby
  %i.ace = lshr exact i64 %i.acd, 4
  %i.acf = trunc i64 %i.ace to i32                ; 2 uses
  %i.acg = mul nsw i32 %.pre239, %i.acf
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.abz, i64 %i.ach
  br label %bb.du

bb.du:                                            ; preds = %bb.dw, %.lr.ph208.i.i
  %.2206.i.i = phi ptr [ %.1115222.i.i, %.lr.ph208.i.i ], [ %.3.i56.i, %bb.dw ]
  %.2118205.i.i = phi ptr [ %.1117221.i.i, %.lr.ph208.i.i ], [ %.3119.i.i, %bb.dw ]
  %.0120204.i.i = phi ptr [ %22, %.lr.ph208.i.i ], [ %.0121203.i.i, %bb.dw ]
  %.0121203.i.i = phi ptr [ %i.abv, %.lr.ph208.i.i ], [ %i.acs, %bb.dw ] ; 3 uses
  %.1131202.i.i = phi float [ %.0130218.i.i, %.lr.ph208.i.i ], [ %.2132.i.i, %bb.dw ] ; 2 uses
  %.2135201.i.i = phi i32 [ %.1134217.i.i, %.lr.ph208.i.i ], [ %.3136.i.i, %bb.dw ]
  %.1138200.i.i = phi i32 [ %.0137216.i.i, %.lr.ph208.i.i ], [ %.2139.i.i, %bb.dw ]
  %i.acj = ptrtoint ptr %.0121203.i.i to i64
  %i.ack = sub i64 %i.acj, %i.acb                 ; 2 uses
  %sext160.i.i = shl i64 %i.ack, 28
  %i.acl = ashr i64 %sext160.i.i, 32
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.acl
end_hunk_0
