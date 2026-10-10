Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/quad_prog_solve?download=true
inline.NumInlined: 28
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@constrained_majorization_new_with_gaps:bb.a
  tail call void @quicksort_placef(ptr noundef %i.c, ptr noundef %i.h, i32 noundef 0, i32 noundef %i.q) #17
  %i.r = load i32, ptr %i.h, align 4, !tbaa !55
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !15
  %i.v = fcmp olt float %i.u, -1.000000e+09
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float -1.000000e+09, ptr %i.t, align 4, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %exitcond.peel.not.i = icmp eq i32 %i.e, 1
  br i1 %exitcond.peel.not.i, label %.thread634, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 1, %bb.g ] ; 5 uses
  %.038.i = phi float [ %.1.i, %bb.m ], [ -1.000000e+09, %bb.g ]
  %.02737.i = phi i32 [ %.2.i, %bb.m ], [ %.128.peel.i, %bb.g ] ; 2 uses
  %.02936.i = phi i32 [ %.130.i, %bb.m ], [ 0, %bb.g ] ; 2 uses
  %i.w = sext i32 %.02737.i to i64
  %.not.i = icmp slt i64 %indvars.iv.i, %i.w
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.x = add nsw i32 %.02936.i, 1                 ; 3 uses
  %i.y = icmp eq i32 %i.x, %i.l
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.128.i = phi i32 [ %i.ab, %bb.i ], [ %i.e, %bb.h ] ; 2 uses
  %i.ac = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !55
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !15
  %i.ai = fadd float %5, %i.ah
  %i.aj = add nsw i32 %.128.i, -1
  %i.ak = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void @quicksort_placef(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h, i32 noundef %i.ak, i32 noundef %i.aj) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %.130.i = phi i32 [ %i.x, %bb.j ], [ %.02936.i, %.lr.ph.i ]
  %.2.i = phi i32 [ %.128.i, %bb.j ], [ %.02737.i, %.lr.ph.i ]
  %.1.i = phi float [ %i.ai, %bb.j ], [ %.038.i, %.lr.ph.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !55
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.an ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !15
  %i.aq = fcmp olt float %i.ap, %.1.i
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %.1.i, ptr %i.ao, align 4, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ensureMonotonicOrderingWithGaps.exit, label %.lr.ph.i, !llvm.loop !34

ensureMonotonicOrderingWithGaps.exit:             ; preds = %bb.m, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.ax = sext i32 %i.e to i64                    ; 4 uses
  %.not.i442 = icmp eq i32 %i.e, 0
  br i1 %.not.i442, label %gv_calloc.exit.thread, label %bb.n

gv_calloc.exit.thread:                            ; preds = %ensureMonotonicOrderingWithGaps.exit
  %i.ay = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %.preheader449

bb.n:                                             ; preds = %ensureMonotonicOrderingWithGaps.exit
  %mul.ov.i = icmp slt i32 %i.e, 0
  br i1 %mul.ov.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.1, i64 noundef range(i64 -2147483648, 2147483648) %i.ax, i64 noundef 4) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bb = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ax, i64 noundef 4) #16 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.q, label %gv_calloc.exit

.thread634:                                       ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.bj = tail call noalias dereferenceable_or_null(4) ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) 1, i64 noundef 4) #16 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.q, label %.lr.ph.preheader

bb.q:                                             ; preds = %.thread634, %bb.p
  %i.bl = phi i64 [ 1, %.thread634 ], [ %i.ax, %bb.p ]
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.bn = shl nuw nsw i64 %i.bl, 2
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str.2, i64 noundef %i.bn) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit:                                   ; preds = %bb.p
  br i1 %i.n, label %.lr.ph.preheader, label %.preheader449

.lr.ph.preheader:                                 ; preds = %.thread634, %gv_calloc.exit
  %i.bp = phi ptr [ %i.bb, %gv_calloc.exit ], [ %i.bj, %.thread634 ] ; 14 uses
  %i.bq = phi ptr [ %i.as, %gv_calloc.exit ], [ %i.be, %.thread634 ] ; 6 uses
  %i.br = phi ptr [ %i.au, %gv_calloc.exit ], [ %i.bg, %.thread634 ] ; 4 uses
  %i.bs = phi ptr [ %i.aw, %gv_calloc.exit ], [ %i.bi, %.thread634 ] ; 5 uses
  %i.bt = phi i64 [ %i.ax, %gv_calloc.exit ], [ 1, %.thread634 ] ; 2 uses
  %wide.trip.count = zext i32 %i.e to i64         ; 5 uses
  %i.bu = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.preheader449.lr.ph.unr-lcssa:                    ; preds = %bb.bm
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader449.lr.ph, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader449.lr.ph.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader449.lr.ph.unr-lcssa ] ; 2 uses
  %.0371454.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1372.1, %.preheader449.lr.ph.unr-lcssa ]
  %.0373453.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %.1374.1, %.preheader449.lr.ph.unr-lcssa ] ; 2 uses
  %lcmp.mod661 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod661)
  %i.bw = sext i32 %.0371454.epil.init to i64
  %.not425.epil = icmp slt i64 %indvars.iv.epil.init, %i.bw
  %i.bx = add nsw i32 %.0373453.epil.init, 1      ; 2 uses
  %i.by = icmp eq i32 %i.bx, %i.l
  %spec.select = select i1 %i.by, i32 %i.l, i32 %i.bx
  %.1374.epil = select i1 %.not425.epil, i32 %.0373453.epil.init, i32 %spec.select
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil.init
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !55
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.cb
  store i32 %.1374.epil, ptr %i.cc, align 4, !tbaa !55
  br label %.preheader449.lr.ph

.preheader449.lr.ph:                              ; preds = %.preheader449.lr.ph.unr-lcssa, %.lr.ph.epil.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !28 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  %i.ci = zext i32 %i.e to i64
  %i.cj = getelementptr [4 x i8], ptr %i.br, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4
  br i1 %i.n, label %.preheader449.us.preheader, label %.preheader449

.preheader449.us.preheader:                       ; preds = %.preheader449.lr.ph
  %i.cl = zext nneg i32 %i.e to i64
  %i.cm = add nsw i32 %i.e, -1
  %xtraiter662 = and i64 %wide.trip.count, 1
  %i.cn = icmp eq i64 %i.bu, 0
  %unroll_iter666 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod663.not = icmp eq i64 %xtraiter662, 0
  %lcmp.mod665 = trunc i32 %i.e to i1
  br label %.preheader449.us

.preheader449.us:                                 ; preds = %.preheader449.us.preheader, %._crit_edge548.us
  %.0367550.us = phi i32 [ %i.qc, %._crit_edge548.us ], [ 0, %.preheader449.us.preheader ]
  br label %bb.r

bb.r:                                             ; preds = %.preheader449.us, %bb.bg
  %.0383546.us = phi i32 [ 0, %.preheader449.us ], [ %.0382.lcssa.us, %bb.bg ] ; 5 uses
  %.0384545.us = phi float [ -1.000000e+09, %.preheader449.us ], [ %.2386.us, %bb.bg ]
  %.1389544.us = phi i1 [ true, %.preheader449.us ], [ %.2390.us, %bb.bg ] ; 3 uses
  %i.co = sext i32 %.0383546.us to i64            ; 6 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !55
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !15 ; 19 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cr
  store float 0.000000e+00, ptr %i.cu, align 4, !tbaa !15
  %.0382456.us = add nsw i32 %.0383546.us, 1      ; 2 uses
  %i.cv = icmp slt i32 %.0382456.us, %i.e
  br i1 %i.cv, label %.lr.ph461.us.preheader, label %._crit_edge462.us

.lr.ph461.us.preheader:                           ; preds = %bb.r
  %i.cw = add nsw i64 %i.co, 1
  br label %.lr.ph461.us

.lr.ph461.us:                                     ; preds = %.lr.ph461.us.preheader, %bb.s
  %indvars.iv566 = phi i64 [ %i.co, %.lr.ph461.us.preheader ], [ %indvars.iv.next567, %bb.s ] ; 3 uses
  %indvars.iv564 = phi i64 [ %i.cw, %.lr.ph461.us.preheader ], [ %indvars.iv.next565, %bb.s ] ; 4 uses
  %.0369458.us = phi float [ %i.ct, %.lr.ph461.us.preheader ], [ %.1370.us, %bb.s ] ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv564
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !55
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv566
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !55
  %i.db = icmp sgt i32 %i.cy, %i.da
  %i.dc = fadd float %5, %.0369458.us
  %.1370.us = select i1 %i.db, float %i.dc, float %.0369458.us ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv564
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !55
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !15 ; 2 uses
  %i.di = fsub float %i.dh, %.1370.us
  %i.dj = call float @llvm.fabs.f32(float %i.di)
  %i.dk = fpext float %i.dj to double
  %i.dl = fcmp ogt double %i.dk, 1.000000e-09
  br i1 %i.dl, label %._crit_edge462.us.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph461.us
  %i.dm = fsub float %i.dh, %i.ct
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.df
  store float %i.dm, ptr %i.dn, align 4, !tbaa !15
  %indvars.iv.next565 = add nsw i64 %indvars.iv564, 1 ; 2 uses
  %indvars.iv.next567 = add nsw i64 %indvars.iv566, 1
  %exitcond571.not = icmp eq i64 %indvars.iv.next565, %i.cl
  br i1 %exitcond571.not, label %._crit_edge462.us, label %.lr.ph461.us, !llvm.loop !35

._crit_edge462.us.loopexit.split.loop.exit:       ; preds = %.lr.ph461.us
  %i.do = trunc nsw i64 %indvars.iv564 to i32
  %i.dp = trunc nsw i64 %indvars.iv566 to i32
  br label %._crit_edge462.us

._crit_edge462.us:                                ; preds = %bb.s, %._crit_edge462.us.loopexit.split.loop.exit, %bb.r
  %.0382.in.lcssa.us = phi i32 [ %.0383546.us, %bb.r ], [ %i.dp, %._crit_edge462.us.loopexit.split.loop.exit ], [ %i.cm, %bb.s ] ; 7 uses
  %.0382.lcssa.us = phi i32 [ %.0382456.us, %bb.r ], [ %i.do, %._crit_edge462.us.loopexit.split.loop.exit ], [ %i.e, %bb.s ] ; 7 uses
  %.lcssa.us = phi i1 [ false, %bb.r ], [ true, %._crit_edge462.us.loopexit.split.loop.exit ], [ false, %bb.s ] ; 3 uses
  %.not415475.us = icmp sgt i32 %.0383546.us, %.0382.in.lcssa.us ; 3 uses
  br i1 %.not415475.us, label %.preheader448.us, label %.lr.ph472.us.preheader

.lr.ph472.us.preheader:                           ; preds = %._crit_edge462.us
  %i.dq = add i32 %.0382.in.lcssa.us, 1
  br label %.lr.ph472.us

.lr.ph472.us:                                     ; preds = %.lr.ph472.us.preheader, %._crit_edge473.us
  %indvars.iv577 = phi i64 [ %i.co, %.lr.ph472.us.preheader ], [ %indvars.iv.next578, %._crit_edge473.us ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv577
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !55 ; 2 uses
  %i.dt = sext i32 %i.ds to i64                   ; 5 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !15
  %i.dw = fneg float %i.dv                        ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.dt
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !12 ; 4 uses
  %i.dz = zext i32 %i.ds to i64                   ; 3 uses
  br i1 %i.cn, label %.epil.preheader, label %.lr.ph472.us.new

.lr.ph472.us.new:                                 ; preds = %.lr.ph472.us, %bb.w
  %indvars.iv572 = phi i64 [ %indvars.iv.next573.1, %bb.w ], [ 0, %.lr.ph472.us ] ; 5 uses
  %.0391469.us = phi float [ %.1392.us.1, %bb.w ], [ %i.dw, %.lr.ph472.us ] ; 2 uses
  %niter667 = phi i64 [ %niter667.next.1, %bb.w ], [ 0, %.lr.ph472.us ]
  %i.ea = icmp eq i64 %indvars.iv572, %i.dz
  br i1 %i.ea, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph472.us.new
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv572
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !15
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv572
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !15
  %i.ef = call float @llvm.fmuladd.f32(float %i.ec, float %i.ee, float %.0391469.us)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph472.us.new
  %.1392.us = phi float [ %.0391469.us, %.lr.ph472.us.new ], [ %i.ef, %bb.t ] ; 2 uses
  %indvars.iv.next573 = or disjoint i64 %indvars.iv572, 1 ; 3 uses
  %i.eg = icmp eq i64 %indvars.iv.next573, %i.dz
  br i1 %i.eg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next573
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !15
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next573
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !15
  %i.el = call float @llvm.fmuladd.f32(float %i.ei, float %i.ek, float %.1392.us)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1392.us.1 = phi float [ %.1392.us, %bb.u ], [ %i.el, %bb.v ] ; 3 uses
  %indvars.iv.next573.1 = add nuw nsw i64 %indvars.iv572, 2 ; 2 uses
  %niter667.next.1 = add i64 %niter667, 2         ; 2 uses
  %niter667.ncmp.1 = icmp eq i64 %niter667.next.1, %unroll_iter666
  br i1 %niter667.ncmp.1, label %._crit_edge473.us.unr-lcssa, label %.lr.ph472.us.new, !llvm.loop !36

.lr.ph481.us:                                     ; preds = %.preheader448.us, %bb.y
  %.0358480.us = phi i64 [ %i.er, %bb.y ], [ 0, %.preheader448.us ] ; 2 uses
  %i.em = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0358480.us) #17
  %i.en = load ptr, ptr %i.cg, align 8, !tbaa !58 ; 2 uses
  %magicptr.us = ptrtoint ptr %i.en to i64
  switch i64 %magicptr.us, label %bb.x [
    i64 1, label %.split.us
    i64 0, label %bb.y
  ]

bb.x:                                             ; preds = %.lr.ph481.us
  %i.eo = load ptr, ptr %6, align 8, !tbaa !59
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.em
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !55
  call void %i.en(i32 noundef %i.eq) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph481.us
  %i.er = add nuw i64 %.0358480.us, 1             ; 2 uses
  %.val441.us = load i64, ptr %i.cf, align 8, !tbaa !62
  %i.es = icmp ult i64 %i.er, %.val441.us
  br i1 %i.es, label %.lr.ph481.us, label %._crit_edge482.us, !llvm.loop !37

._crit_edge482.us:                                ; preds = %bb.y, %.preheader448.us
  call void @gv_list_clear_(ptr noundef nonnull %6, i64 noundef 4) #17
  br i1 %.not415475.us, label %.preheader447.us, label %.lr.ph493.us

.lr.ph493.us:                                     ; preds = %._crit_edge482.us, %.loopexit.us
  %.0357491.us = phi i32 [ %.0375.us, %.loopexit.us ], [ %.0383546.us, %._crit_edge482.us ] ; 2 uses
  %i.et = sext i32 %.0357491.us to i64            ; 4 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !55
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !55 ; 2 uses
  %i.ez = icmp eq i32 %i.ey, %i.l
  br i1 %i.ez, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph493.us
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !55
  %.0382..us = call i32 @llvm.smin.i32(i32 %.0382.lcssa.us, i32 %i.fc)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph493.us
  %.0375.us = phi i32 [ %.0382..us, %bb.z ], [ %.0382.lcssa.us, %.lr.ph493.us ] ; 6 uses
  %i.fd = icmp slt i32 %.0357491.us, %.0375.us
  br i1 %i.fd, label %.lr.ph485.us, label %.loopexit.us

.lr.ph485.us:                                     ; preds = %bb.aa, %bb.ac
  %indvars.iv581 = phi i64 [ %indvars.iv.next582, %bb.ac ], [ %i.et, %bb.aa ] ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv581
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !55 ; 2 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !15
  %i.fj = fcmp olt float %i.fi, %i.ct
  br i1 %i.fj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph485.us
  store i32 %i.ff, ptr %i.ch, align 8, !tbaa !63
  %i.fk = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 4) #17
  %i.fl = load i32, ptr %i.ch, align 8, !tbaa !63
  %i.fm = load ptr, ptr %6, align 8, !tbaa !59
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fk
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !55
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph485.us
  %indvars.iv.next582 = add nsw i64 %indvars.iv581, 1 ; 2 uses
  %lftr.wideiv584 = trunc i64 %indvars.iv.next582 to i32
  %exitcond585.not = icmp eq i32 %.0375.us, %lftr.wideiv584
  br i1 %exitcond585.not, label %.lr.ph487.us, label %.lr.ph485.us, !llvm.loop !38

.lr.ph487.us:                                     ; preds = %bb.ac, %bb.ae
  %indvars.iv586 = phi i64 [ %indvars.iv.next587, %bb.ae ], [ %i.et, %bb.ac ] ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv586
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !55 ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !15
  %i.ft = fcmp oeq float %i.fs, %i.ct
  br i1 %i.ft, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph487.us
  store i32 %i.fp, ptr %i.ch, align 8, !tbaa !63
  %i.fu = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 4) #17
  %i.fv = load i32, ptr %i.ch, align 8, !tbaa !63
  %i.fw = load ptr, ptr %6, align 8, !tbaa !59
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fu
  store i32 %i.fv, ptr %i.fx, align 4, !tbaa !55
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph487.us
  %indvars.iv.next587 = add nsw i64 %indvars.iv586, 1 ; 2 uses
  %lftr.wideiv589 = trunc i64 %indvars.iv.next587 to i32
  %exitcond590.not = icmp eq i32 %.0375.us, %lftr.wideiv589
  br i1 %exitcond590.not, label %.lr.ph489.us, label %.lr.ph487.us, !llvm.loop !39

.lr.ph489.us:                                     ; preds = %bb.ae, %bb.ag
  %indvars.iv591 = phi i64 [ %indvars.iv.next592, %bb.ag ], [ %i.et, %bb.ae ] ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv591
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !55 ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !15
  %i.gd = fcmp ogt float %i.gc, %i.ct
  br i1 %i.gd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph489.us
  store i32 %i.fz, ptr %i.ch, align 8, !tbaa !63
  %i.ge = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 4) #17
  %i.gf = load i32, ptr %i.ch, align 8, !tbaa !63
  %i.gg = load ptr, ptr %6, align 8, !tbaa !59
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.ge
  store i32 %i.gf, ptr %i.gh, align 4, !tbaa !55
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph489.us
  %indvars.iv.next592 = add nsw i64 %indvars.iv591, 1 ; 2 uses
  %lftr.wideiv594 = trunc i64 %indvars.iv.next592 to i32
  %exitcond595.not = icmp eq i32 %.0375.us, %lftr.wideiv594
  br i1 %exitcond595.not, label %.loopexit.us, label %.lr.ph489.us, !llvm.loop !40

.lr.ph504.us:                                     ; preds = %.preheader447.us, %._crit_edge498.us
  %.0353503.us = phi i64 [ %i.ho, %._crit_edge498.us ], [ 0, %.preheader447.us ] ; 5 uses
  %.0378502.us = phi float [ %i.hn, %._crit_edge498.us ], [ 0.000000e+00, %.preheader447.us ] ; 3 uses
  %.0380501.us = phi float [ %i.hj, %._crit_edge498.us ], [ 0.000000e+00, %.preheader447.us ]
  %i.gi = load ptr, ptr %6, align 8, !tbaa !59
  %i.gj = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0353503.us) #17
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !55
  %i.gm = sext i32 %i.gl to i64                   ; 3 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !12 ; 2 uses
  %.not558 = icmp eq i64 %.0353503.us, 0
  br i1 %.not558, label %._crit_edge498.us, label %.lr.ph497.us

.lr.ph497.us:                                     ; preds = %.lr.ph504.us, %.lr.ph497.us
  %.0352495.us = phi i64 [ %i.gx, %.lr.ph497.us ], [ 0, %.lr.ph504.us ] ; 2 uses
  %.0376494.us = phi float [ %i.gw, %.lr.ph497.us ], [ 0.000000e+00, %.lr.ph504.us ]
  %i.gp = load ptr, ptr %6, align 8, !tbaa !59
  %i.gq = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0352495.us) #17
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !55
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !15
  %i.gw = fsub float %.0376494.us, %i.gv          ; 2 uses
  %i.gx = add nuw i64 %.0352495.us, 1             ; 2 uses
  %exitcond596.not = icmp eq i64 %i.gx, %.0353503.us
  br i1 %exitcond596.not, label %._crit_edge498.us.loopexit, label %.lr.ph497.us, !llvm.loop !41

._crit_edge498.us.loopexit:                       ; preds = %.lr.ph497.us
  %i.gy = fmul float %i.gw, 2.000000e+00
  br label %._crit_edge498.us

._crit_edge498.us:                                ; preds = %._crit_edge498.us.loopexit, %.lr.ph504.us
  %.0376.lcssa.us = phi float [ 0.000000e+00, %.lr.ph504.us ], [ %i.gy, %._crit_edge498.us.loopexit ] ; 3 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gm ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !15 ; 2 uses
  %i.hb = fneg float %i.ha
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.gm
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !15
  %i.he = fmul float %i.hd, %i.hb
  %i.hf = call float @llvm.fmuladd.f32(float %.0378502.us, float %.0380501.us, float %i.he)
  %i.hg = call float @llvm.fmuladd.f32(float %.0376.lcssa.us, float %i.ct, float %i.hf)
  %i.hh = fsub float %.0378502.us, %i.ha
  %i.hi = fadd float %.0376.lcssa.us, %i.hh
  %i.hj = fdiv float %i.hg, %i.hi                 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.0353503.us
  store float %i.hj, ptr %i.hk, align 4, !tbaa !15
  %i.hl = load float, ptr %i.gz, align 4, !tbaa !15
  %i.hm = fsub float %.0376.lcssa.us, %i.hl
  %i.hn = fadd float %.0378502.us, %i.hm
  %i.ho = add nuw i64 %.0353503.us, 1             ; 2 uses
  %.val440.us = load i64, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %.val440.us
  br i1 %i.hp, label %.lr.ph504.us, label %._crit_edge505.us, !llvm.loop !42

._crit_edge505.us:                                ; preds = %._crit_edge498.us, %.preheader447.us
  %.val440.lcssa.us = phi i64 [ 0, %.preheader447.us ], [ %.val440.us, %._crit_edge498.us ] ; 3 uses
  %i.hq = icmp eq i64 %.val440.lcssa.us, %i.bt
  br i1 %i.hq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge505.us
  store float %i.ct, ptr %i.ck, align 4, !tbaa !15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge505.us
  %.not417515.us = icmp eq i64 %.val440.lcssa.us, 0
  br i1 %.not417515.us, label %._crit_edge522.us, label %.lr.ph521.us

.lr.ph521.us:                                     ; preds = %bb.ai, %._crit_edge512.us
  %.0351.in518.us = phi i64 [ %.0351519.us, %._crit_edge512.us ], [ %.val440.lcssa.us, %bb.ai ] ; 3 uses
  %.1379517.us = phi float [ %i.iy, %._crit_edge512.us ], [ 0.000000e+00, %bb.ai ] ; 3 uses
  %.1381516.us = phi float [ %i.iu, %._crit_edge512.us ], [ 0.000000e+00, %bb.ai ]
  %.0351519.us = add i64 %.0351.in518.us, -1      ; 4 uses
  %i.hr = load ptr, ptr %6, align 8, !tbaa !59
  %i.hs = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0351519.us) #17
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !55
  %i.hv = sext i32 %i.hu to i64                   ; 3 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !12 ; 2 uses
  %.val437507.us = load i64, ptr %i.cf, align 8, !tbaa !62
  %i.hy = icmp ult i64 %.0351.in518.us, %.val437507.us
  br i1 %i.hy, label %.lr.ph511.us, label %._crit_edge512.us

.lr.ph511.us:                                     ; preds = %.lr.ph521.us, %.lr.ph511.us
  %.0350509.us = phi i64 [ %i.ih, %.lr.ph511.us ], [ %.0351.in518.us, %.lr.ph521.us ] ; 2 uses
  %.1377508.us = phi float [ %i.ig, %.lr.ph511.us ], [ 0.000000e+00, %.lr.ph521.us ]
  %i.hz = load ptr, ptr %6, align 8, !tbaa !59
  %i.ia = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0350509.us) #17
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !55
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !15
  %i.ig = fsub float %.1377508.us, %i.if          ; 2 uses
  %i.ih = add nuw i64 %.0350509.us, 1             ; 2 uses
  %.val437.us = load i64, ptr %i.cf, align 8, !tbaa !62
  %i.ii = icmp ult i64 %i.ih, %.val437.us
  br i1 %i.ii, label %.lr.ph511.us, label %._crit_edge512.us.loopexit, !llvm.loop !43

._crit_edge512.us.loopexit:                       ; preds = %.lr.ph511.us
  %i.ij = fmul float %i.ig, 2.000000e+00
  br label %._crit_edge512.us

._crit_edge512.us:                                ; preds = %._crit_edge512.us.loopexit, %.lr.ph521.us
  %.1377.lcssa.us = phi float [ 0.000000e+00, %.lr.ph521.us ], [ %i.ij, %._crit_edge512.us.loopexit ] ; 3 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.hv ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !15 ; 2 uses
  %i.im = fneg float %i.il
  %i.in = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.hv
  %i.io = load float, ptr %i.in, align 4, !tbaa !15
  %i.ip = fmul float %i.io, %i.im
  %i.iq = call float @llvm.fmuladd.f32(float %.1379517.us, float %.1381516.us, float %i.ip)
  %i.ir = call float @llvm.fmuladd.f32(float %.1377.lcssa.us, float %i.ct, float %i.iq)
  %i.is = fsub float %.1379517.us, %i.il
  %i.it = fadd float %.1377.lcssa.us, %i.is
  %i.iu = fdiv float %i.ir, %i.it                 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0351519.us
  store float %i.iu, ptr %i.iv, align 4, !tbaa !15
  %i.iw = load float, ptr %i.ik, align 4, !tbaa !15
  %i.ix = fsub float %.1377.lcssa.us, %i.iw
  %i.iy = fadd float %.1379517.us, %i.ix
  %.not417.us = icmp eq i64 %.0351519.us, 0
  br i1 %.not417.us, label %._crit_edge522.us, label %.lr.ph521.us, !llvm.loop !44

._crit_edge522.us:                                ; preds = %._crit_edge512.us, %bb.ai
  %.val436.us = load i64, ptr %i.cf, align 8      ; 9 uses
  %i.iz = icmp eq i64 %.val436.us, %i.bt
  br i1 %i.iz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge522.us
  store float %i.ct, ptr %i.bs, align 4, !tbaa !15
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge522.us
  %.not559 = icmp eq i64 %.val436.us, 0
  br i1 %.not559, label %._crit_edge528.us.thread, label %.thread.us.peel

.thread.us.peel:                                  ; preds = %bb.ak
  %i.ja = load float, ptr %i.bs, align 4, !tbaa !15
  %i.jb = uitofp i64 %.val436.us to float
  %i.jc = fpext float %i.jb to double
  %i.jd = fsub float %i.ja, %i.ct
  %i.je = call float @llvm.fabs.f32(float %i.jd)
  %i.jf = fpext float %i.je to double             ; 2 uses
  %i.jg = fmul double %i.jf, 0.000000e+00
  %i.jh = call double @llvm.fmuladd.f64(double %i.jc, double %i.jf, double %i.jg) ; 2 uses
  %i.ji = fcmp ule double %i.jh, 0.000000e+00     ; 2 uses
  %.1.us.peel = sext i1 %i.ji to i64              ; 2 uses
  %exitcond597.peel.not = icmp eq i64 %.val436.us, 1
  br i1 %exitcond597.peel.not, label %._crit_edge528.us, label %.lr.ph527.us.peel.next

.lr.ph527.us.peel.next:                           ; preds = %.thread.us.peel
  %.1366.us.peel = select i1 %i.ji, double 0.000000e+00, double %i.jh
  %7 = insertelement <2 x float> poison, float %i.ct, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %.thread.us, %.lr.ph527.us.peel.next
  %.0348525.us = phi i64 [ %i.jz, %.thread.us ], [ 1, %.lr.ph527.us.peel.next ] ; 6 uses
  %.0349524.us = phi i64 [ %.1.us, %.thread.us ], [ %.1.us.peel, %.lr.ph527.us.peel.next ]
  %.0365523.us = phi double [ %.1366.us, %.thread.us ], [ %.1366.us.peel, %.lr.ph527.us.peel.next ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0348525.us
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !15 ; 6 uses
  %i.jl = getelementptr [4 x i8], ptr %i.br, i64 %.0348525.us
  %i.jm = getelementptr i8, ptr %i.jl, i64 -4
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !15 ; 5 uses
  %i.jo = fcmp olt float %i.jk, %i.jn
  br i1 %i.jo, label %bb.am, label %.thread.us

bb.am:                                            ; preds = %bb.al
  %i.jp = fcmp olt float %i.jk, %i.ct
  %i.jq = fcmp ogt float %i.jn, %i.ct             ; 2 uses
  br i1 %i.jp, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %i.jq, label %bb.ao, label %.thread.us

bb.ao:                                            ; preds = %bb.an
  br label %.thread.us

bb.ap:                                            ; preds = %bb.am
  %.0363.us = select i1 %i.jq, float %i.ct, float %i.jn ; 2 uses
  br label %.thread.us

.thread.us:                                       ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al
  %.1364.us = phi float [ %.0363.us, %bb.ap ], [ %i.jk, %bb.ao ], [ %i.jn, %bb.an ], [ %i.jn, %bb.al ]
  %.0361.us = phi float [ %.0363.us, %bb.ap ], [ %i.jk, %bb.ao ], [ %i.jk, %bb.an ], [ %i.jk, %bb.al ]
  %i.jr = sub nuw i64 %.val436.us, %.0348525.us
  %i.js = uitofp i64 %i.jr to float
  %i.jt = fpext float %i.js to double
  %9 = insertelement <2 x float> poison, float %.0361.us, i64 0
  %10 = insertelement <2 x float> %9, float %.1364.us, i64 1
  %11 = fsub <2 x float> %10, %8
  %i.ju = uitofp i64 %.0348525.us to float
  %i.jv = fpext nnan ninf float %i.ju to double
  %12 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %11)
  %13 = fpext <2 x float> %12 to <2 x double>     ; 2 uses
  %14 = extractelement <2 x double> %13, i64 1
  %i.jw = fmul double %14, %i.jv
  %15 = extractelement <2 x double> %13, i64 0
  %i.jx = call double @llvm.fmuladd.f64(double %i.jt, double %15, double %i.jw) ; 2 uses
  %i.jy = fcmp ogt double %i.jx, %.0365523.us     ; 2 uses
  %.1366.us = select i1 %i.jy, double %i.jx, double %.0365523.us
  %.1.us = select i1 %i.jy, i64 %.0348525.us, i64 %.0349524.us ; 2 uses
  %i.jz = add nuw i64 %.0348525.us, 1             ; 2 uses
  %exitcond597.not = icmp eq i64 %i.jz, %.val436.us
  br i1 %exitcond597.not, label %._crit_edge528.us, label %bb.al, !llvm.loop !45

._crit_edge528.us:                                ; preds = %.thread.us, %.thread.us.peel
  %.0349.lcssa.us = phi i64 [ %.1.us.peel, %.thread.us.peel ], [ %.1.us, %.thread.us ] ; 7 uses
  %.not418.us = icmp eq i64 %.0349.lcssa.us, -1
  br i1 %.not418.us, label %._crit_edge528.us.thread, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge528.us
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0349.lcssa.us
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !15 ; 2 uses
  %.not419.us = icmp eq i64 %.0349.lcssa.us, 0    ; 2 uses
  br i1 %.not419.us, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kc = getelementptr [4 x i8], ptr %i.br, i64 %.0349.lcssa.us
  %i.kd = getelementptr i8, ptr %i.kc, i64 -4
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.kf = phi float [ %i.ke, %bb.ar ], [ %i.kb, %bb.aq ]
  br i1 %.lcssa.us, label %.sink.split, label %bb.at

.sink.split:                                      ; preds = %bb.as
  %i.kg = sext i32 %.0382.lcssa.us to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !55
  %i.kj = sext i32 %i.ki to i64                   ; 2 uses
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !55
  %i.km = sext i32 %.0382.in.lcssa.us to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !55
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !55
  %i.ks = icmp sgt i32 %i.kl, %i.kr
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.kj
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !15 ; 2 uses
  %i.kv = fsub float %i.ku, %5
  %.sink = select i1 %i.ks, float %i.kv, float %i.ku
  %i.kw = load ptr, ptr %6, align 8, !tbaa !59
  %i.kx = add i64 %.val436.us, -1
  %i.ky = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.kx) #17
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !55
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.lb
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !15
  %i.le = fsub float %.sink, %i.ld
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %bb.as
  %.0387.us = phi float [ 1.000000e+09, %bb.as ], [ %i.le, %.sink.split ]
  %i.lf = call nsz float @llvm.minnum.f32(float %i.kb, float %.0387.us) ; 6 uses
  %i.lg = call nsz float @llvm.maxnum.f32(float %i.kf, float %.0384545.us) ; 5 uses
  %i.lh = fcmp olt float %i.lf, %i.lg
  br i1 %i.lh, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.li = fcmp olt float %i.lf, %i.ct
  %i.lj = fcmp ogt float %i.lg, %i.ct             ; 2 uses
  br i1 %i.li, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.lj, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %.2.us = select i1 %i.lj, float %i.ct, float %i.lg ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at
  %.3.us = phi float [ %.2.us, %bb.ax ], [ %i.lf, %bb.aw ], [ %i.lg, %bb.av ], [ %i.lg, %bb.at ] ; 2 uses
  %.1362.us = phi float [ %.2.us, %bb.ax ], [ %i.lf, %bb.aw ], [ %i.lf, %bb.av ], [ %i.lf, %bb.at ] ; 2 uses
  br i1 %.not419.us, label %.preheader446.us, label %.lr.ph533.us

.lr.ph533.us:                                     ; preds = %bb.ay, %.lr.ph533.us
  %.0347531.us = phi i64 [ %i.ly, %.lr.ph533.us ], [ 0, %bb.ay ] ; 3 uses
  %i.lk = load ptr, ptr %6, align 8, !tbaa !59
  %i.ll = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0347531.us) #17
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !55
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.lo
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !15
  %i.lr = fadd float %.3.us, %i.lq
  %i.ls = load ptr, ptr %6, align 8, !tbaa !59
  %i.lt = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0347531.us) #17
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !55
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.lw
  store float %i.lr, ptr %i.lx, align 4, !tbaa !15
  %i.ly = add nuw i64 %.0347531.us, 1             ; 2 uses
  %exitcond599.not = icmp eq i64 %i.ly, %.0349.lcssa.us
  br i1 %exitcond599.not, label %.preheader446.us, label %.lr.ph533.us, !llvm.loop !46

.lr.ph536.us:                                     ; preds = %.preheader446.us, %.lr.ph536.us
  %.0346535.us = phi i64 [ %i.mn, %.lr.ph536.us ], [ %.0349.lcssa.us, %.preheader446.us ] ; 3 uses
  %i.lz = load ptr, ptr %6, align 8, !tbaa !59
  %i.ma = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0346535.us) #17
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !55
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.md
  %i.mf = load float, ptr %i.me, align 4, !tbaa !15
  %i.mg = fadd float %.1362.us, %i.mf
  %i.mh = load ptr, ptr %6, align 8, !tbaa !59
  %i.mi = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0346535.us) #17
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !55
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ml
  store float %i.mg, ptr %i.mm, align 4, !tbaa !15
  %i.mn = add nuw i64 %.0346535.us, 1             ; 2 uses
  %.val431.us = load i64, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %i.mo = icmp ult i64 %i.mn, %.val431.us
  br i1 %i.mo, label %.lr.ph536.us, label %._crit_edge537.us, !llvm.loop !47

._crit_edge537.us:                                ; preds = %.lr.ph536.us, %.preheader446.us
  %.val431.lcssa.us = phi i64 [ %.val431534.us, %.preheader446.us ], [ %.val431.us, %.lr.ph536.us ] ; 2 uses
  br i1 %.lcssa.us, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %._crit_edge537.us
  %i.mp = sext i32 %.0382.lcssa.us to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !55
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !55
  %i.mv = sext i32 %.0382.in.lcssa.us to i64
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !55
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !55
  %i.nb = icmp sgt i32 %i.mu, %i.na
  br i1 %i.nb, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge537.us
  %i.nc = load ptr, ptr %6, align 8, !tbaa !59
  %i.nd = add i64 %.val431.lcssa.us, -1
  %i.ne = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.nd) #17
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !55
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nh
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !15
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.nk = load ptr, ptr %6, align 8, !tbaa !59
  %i.nl = add i64 %.val431.lcssa.us, -1
  %i.nm = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.nl) #17
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !55
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.np
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !15
  %i.ns = fadd float %5, %i.nr
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1385.us = phi float [ %i.ns, %bb.bb ], [ %i.nj, %bb.ba ]
  br i1 %.not415475.us, label %._crit_edge543.us, label %.lr.ph542.us.preheader

.lr.ph542.us.preheader:                           ; preds = %bb.bc
  %i.nt = add i32 %.0382.in.lcssa.us, 1
  br label %.lr.ph542.us

.lr.ph542.us:                                     ; preds = %.lr.ph542.us.preheader, %.lr.ph542.us
  %indvars.iv600 = phi i64 [ %i.co, %.lr.ph542.us.preheader ], [ %indvars.iv.next601, %.lr.ph542.us ] ; 3 uses
  %i.nu = load ptr, ptr %6, align 8, !tbaa !59
  %i.nv = sub nsw i64 %indvars.iv600, %i.co
  %i.nw = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.nv) #17
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !55
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv600
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !55
  %indvars.iv.next601 = add nsw i64 %indvars.iv600, 1 ; 2 uses
  %lftr.wideiv603 = trunc i64 %indvars.iv.next601 to i32
  %exitcond604.not = icmp eq i32 %i.nt, %lftr.wideiv603
  br i1 %exitcond604.not, label %._crit_edge543.us, label %.lr.ph542.us, !llvm.loop !48

._crit_edge543.us:                                ; preds = %.lr.ph542.us, %bb.bc
  %i.oa = fsub float %.3.us, %i.ct
  %i.ob = call float @llvm.fabs.f32(float %i.oa)
  %i.oc = fcmp olt float %i.ob, f0x3C23D70A
  %i.od = fsub float %.1362.us, %i.ct
  %i.oe = call float @llvm.fabs.f32(float %i.od)
  %i.of = fcmp olt float %i.oe, f0x3C23D70A
  %i.og = select i1 %i.oc, i1 %i.of, i1 false
end_hunk_0
begin_hunk_1_@constrained_majorization_new_with_gaps:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #4

declare hidden void @orthog1f(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @deleteCMajEnv(ptr noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.e) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.g) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.i) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.k) #17
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noalias nonnull ptr @initConstrainedMajorization(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #16 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, i64 noundef 72) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %3, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %4, ptr %i.h, align 8, !tbaa !24
  %i.i = tail call ptr @unpackMatrix(ptr noundef %0, i32 noundef %1)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !21
  %i.j = sext i32 %1 to i64                       ; 9 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %.thread.i32, label %bb.c

bb.c:                                             ; preds = %gv_alloc.exit
  %mul.ov.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.1, i64 noundef range(i64 -2147483648, 2147483648) %i.j, i64 noundef 4) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.j, i64 noundef 4) #16 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.p = shl nuw nsw i64 %i.j, 2
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.2, i64 noundef %i.p) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.r, align 8, !tbaa !25
  %i.s = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.j, i64 noundef 4) #16 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.v = shl nuw nsw i64 %i.j, 2
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.2, i64 noundef %i.v) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.s, ptr %i.x, align 8, !tbaa !26
  %i.y = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.j, i64 noundef 4) #16 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ab = shl nuw nsw i64 %i.j, 2
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.2, i64 noundef %i.ab) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

.thread.i32:                                      ; preds = %gv_alloc.exit
  %i.ad = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !25
  %i.af = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !26
  %i.ah = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !27
  %i.aj = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit33

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.y, ptr %i.ak, align 8, !tbaa !27
  %i.al = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.j, i64 noundef 4) #16 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %gv_calloc.exit33

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ao = shl nuw nsw i64 %i.j, 2
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.2, i64 noundef %i.ao) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit33:                                 ; preds = %.thread.i32, %bb.k
  %i.aq = phi ptr [ %i.aj, %.thread.i32 ], [ %i.al, %bb.k ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !28
  ret ptr %i.a
}

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #9 {
bb.a:
  tail call void @exit(i32 noundef 1) #20
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

declare hidden void @quicksort_placef(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { noreturn nounwind }
attributes #20 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"p1 float", !8, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"float", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any p2 pointer", !8, i64 0}
!17 = !{!"p2 float", !16, i64 0}
!18 = !{!"p1 int", !8, i64 0}
!19 = !{!"", !17, i64 0, !5, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !18, i64 48, !18, i64 56, !5, i64 64}
!20 = !{!19, !5, i64 8}
!21 = !{!19, !17, i64 0}
!22 = !{!19, !18, i64 48}
!23 = !{!19, !18, i64 56}
!24 = !{!19, !5, i64 64}
!25 = !{!19, !11, i64 16}
!26 = !{!19, !11, i64 24}
!27 = !{!19, !11, i64 32}
!28 = !{!19, !11, i64 40}
!29 = distinct !{!29, !33}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !13, !56}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13, !56}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = !{!5, !5, i64 0}
!56 = !{!"llvm.loop.peeled.count", i32 1}
!57 = !{!"", !4, i64 0, !8, i64 32, !5, i64 40}
!58 = !{!57, !8, i64 32}
!59 = !{!4, !4, i64 0}
!60 = !{!"long", !4, i64 0}
!61 = !{!"", !8, i64 0, !60, i64 8, !60, i64 16, !60, i64 24}
!62 = !{!61, !60, i64 16}
!63 = !{!57, !5, i64 40}
end_hunk_1
