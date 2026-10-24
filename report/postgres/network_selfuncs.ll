Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/network_selfuncs?download=true
inline.NumInlined: 67
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@networkjoinsel:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = fpext float %i.bq to double             ; 4 uses
  %i.bs = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %3, ptr noundef nonnull %i.bj, i32 noundef 1, i32 noundef 0, i32 noundef 3) #8 ; 4 uses
  %i.bt = load ptr, ptr %i.bi, align 8
  %i.bu = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %5, ptr noundef %i.bt, i32 noundef 2, i32 noundef 0, i32 noundef 1) #8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bw = load i32, ptr %i.bv, align 8            ; 4 uses
  %i.bx = call i32 @llvm.smin.i32(i32 %i.bw, i32 1024) ; 3 uses
  br i1 %i.bs, label %bb.l, label %mcv_population.exit83.thread.i

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bz = load ptr, ptr %i.by, align 8            ; 6 uses
  %i.ca = icmp sgt i32 %i.bw, 0                   ; 2 uses
  br i1 %i.ca, label %.lr.ph.preheader.i76.i, label %mcv_population.exit83.i

.lr.ph.preheader.i76.i:                           ; preds = %bb.l
  %wide.trip.count.i77.i = zext nneg i32 %i.bx to i64 ; 2 uses
  %xtraiter53 = and i64 %wide.trip.count.i77.i, 3 ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 4
  br i1 %i.cb, label %.lr.ph.i78.i.epil.preheader, label %.lr.ph.preheader.i76.i.new

.lr.ph.preheader.i76.i.new:                       ; preds = %.lr.ph.preheader.i76.i
  %unroll_iter58 = and i64 %wide.trip.count.i77.i, 2044
  br label %.lr.ph.i78.i

.lr.ph.i78.i:                                     ; preds = %.lr.ph.i78.i, %.lr.ph.preheader.i76.i.new
  %indvars.iv.i79.i = phi i64 [ 0, %.lr.ph.preheader.i76.i.new ], [ %indvars.iv.next.i81.i.3, %.lr.ph.i78.i ] ; 5 uses
  %.067.i80.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i76.i.new ], [ %i.cu, %.lr.ph.i78.i ]
  %niter59 = phi i64 [ 0, %.lr.ph.preheader.i76.i.new ], [ %niter59.next.3, %.lr.ph.i78.i ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i79.i
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = fpext float %i.cd to double
  %i.cf = fadd double %.067.i80.i, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i79.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = fpext float %i.ci to double
  %i.ck = fadd double %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i79.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = fpext float %i.cn to double
  %i.cp = fadd double %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i79.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = fpext float %i.cs to double
  %i.cu = fadd double %i.cp, %i.ct                ; 3 uses
  %indvars.iv.next.i81.i.3 = add nuw nsw i64 %indvars.iv.i79.i, 4 ; 2 uses
  %niter59.next.3 = add i64 %niter59, 4           ; 2 uses
  %niter59.ncmp.3 = icmp eq i64 %niter59.next.3, %unroll_iter58
  br i1 %niter59.ncmp.3, label %mcv_population.exit83.i.loopexit.unr-lcssa, label %.lr.ph.i78.i, !llvm.loop !0

.thread139.i:                                     ; preds = %mcv_population.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  br label %bb.u

mcv_population.exit83.i.loopexit.unr-lcssa:       ; preds = %.lr.ph.i78.i
  %lcmp.mod55.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod55.not, label %mcv_population.exit83.i, label %.lr.ph.i78.i.epil.preheader

.lr.ph.i78.i.epil.preheader:                      ; preds = %mcv_population.exit83.i.loopexit.unr-lcssa, %.lr.ph.preheader.i76.i
  %indvars.iv.i79.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i76.i ], [ %indvars.iv.next.i81.i.3, %mcv_population.exit83.i.loopexit.unr-lcssa ]
  %.067.i80.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i76.i ], [ %i.cu, %mcv_population.exit83.i.loopexit.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter53, 0
  call void @llvm.assume(i1 %lcmp.mod57)
  br label %.lr.ph.i78.i.epil

.lr.ph.i78.i.epil:                                ; preds = %.lr.ph.i78.i.epil, %.lr.ph.i78.i.epil.preheader
  %indvars.iv.i79.i.epil = phi i64 [ %indvars.iv.i79.i.epil.init, %.lr.ph.i78.i.epil.preheader ], [ %indvars.iv.next.i81.i.epil, %.lr.ph.i78.i.epil ] ; 2 uses
  %.067.i80.i.epil = phi double [ %.067.i80.i.epil.init, %.lr.ph.i78.i.epil.preheader ], [ %i.cy, %.lr.ph.i78.i.epil ]
  %epil.iter54 = phi i64 [ 0, %.lr.ph.i78.i.epil.preheader ], [ %epil.iter54.next, %.lr.ph.i78.i.epil ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i79.i.epil
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = fpext float %i.cw to double
  %i.cy = fadd double %.067.i80.i.epil, %i.cx     ; 2 uses
  %indvars.iv.next.i81.i.epil = add nuw nsw i64 %indvars.iv.i79.i.epil, 1
  %epil.iter54.next = add i64 %epil.iter54, 1     ; 2 uses
  %epil.iter54.cmp.not = icmp eq i64 %epil.iter54.next, %xtraiter53
  br i1 %epil.iter54.cmp.not, label %mcv_population.exit83.i, label %.lr.ph.i78.i.epil, !llvm.loop !11

mcv_population.exit83.i:                          ; preds = %mcv_population.exit83.i.loopexit.unr-lcssa, %.lr.ph.i78.i.epil, %bb.l
  %.065.i = phi double [ 0.000000e+00, %bb.l ], [ %i.cu, %mcv_population.exit83.i.loopexit.unr-lcssa ], [ %i.cy, %.lr.ph.i78.i.epil ] ; 2 uses
  br i1 %.064.shrunk.i, label %bb.m, label %mcv_population.exit83.thread.thread.i

bb.m:                                             ; preds = %mcv_population.exit83.i
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.df = call i32 @get_opcode(i32 noundef %i.g) #8
  call void @fmgr_info(i32 noundef %i.df, ptr noundef nonnull %1) #8
  %i.dg = icmp sgt i32 %.060.i, 0
  %or.cond.i.i = and i1 %i.dg, %i.ca
  br i1 %or.cond.i.i, label %.preheader.us.preheader.i.i, label %inet_mcv_join_sel.exit.i

.preheader.us.preheader.i.i:                      ; preds = %bb.m
  %wide.trip.count29.i.i = zext nneg i32 %.060.i to i64
  %wide.trip.count.i84.i = zext nneg i32 %i.bx to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv26.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next27.i.i, %._crit_edge.us.i.i ] ; 3 uses
  %.01720.us.i.i = phi double [ 0.000000e+00, %.preheader.us.preheader.i.i ], [ %.2.us.i.i, %._crit_edge.us.i.i ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv26.i.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv26.i.i
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.preheader.us.i.i
  %indvars.iv.i85.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i86.i, %bb.p ] ; 3 uses
  %.118.us.i.i = phi double [ %.01720.us.i.i, %.preheader.us.i.i ], [ %.2.us.i.i, %bb.p ] ; 2 uses
  %i.dj = load i64, ptr %i.dh, align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i85.i
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = call i64 @FunctionCall2Coll(ptr noundef nonnull %1, i32 noundef 0, i64 noundef %i.dj, i64 noundef %i.dl) #8
  %.not.us.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.us.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = load float, ptr %i.di, align 4
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i85.i
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fmul float %i.dn, %i.dp
  %i.dr = fpext float %i.dq to double
  %i.ds = fadd double %.118.us.i.i, %i.dr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2.us.i.i = phi double [ %i.ds, %bb.o ], [ %.118.us.i.i, %bb.n ] ; 3 uses
  %indvars.iv.next.i86.i = add nuw nsw i64 %indvars.iv.i85.i, 1 ; 2 uses
  %exitcond.not.i87.i = icmp eq i64 %indvars.iv.next.i86.i, %wide.trip.count.i84.i
  br i1 %exitcond.not.i87.i, label %._crit_edge.us.i.i, label %bb.n, !llvm.loop !12

._crit_edge.us.i.i:                               ; preds = %bb.p
  %indvars.iv.next27.i.i = add nuw nsw i64 %indvars.iv26.i.i, 1 ; 2 uses
  %exitcond30.not.i.i = icmp eq i64 %indvars.iv.next27.i.i, %wide.trip.count29.i.i
  br i1 %exitcond30.not.i.i, label %inet_mcv_join_sel.exit.loopexit.i, label %.preheader.us.i.i, !llvm.loop !13

inet_mcv_join_sel.exit.loopexit.i:                ; preds = %._crit_edge.us.i.i
  %i.dt = fadd double %.2.us.i.i, 0.000000e+00
  br label %inet_mcv_join_sel.exit.i

inet_mcv_join_sel.exit.i:                         ; preds = %inet_mcv_join_sel.exit.loopexit.i, %bb.m
  %.017.lcssa.i.i = phi double [ 0.000000e+00, %bb.m ], [ %i.dt, %inet_mcv_join_sel.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %mcv_population.exit83.thread.i

mcv_population.exit83.thread.i:                   ; preds = %inet_mcv_join_sel.exit.i, %bb.k
  %.065112.i = phi double [ %.065.i, %inet_mcv_join_sel.exit.i ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %.067.i = phi double [ %.017.lcssa.i.i, %inet_mcv_join_sel.exit.i ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %or.cond3.i = select i1 %.064.shrunk.i, i1 %i.bu, i1 false
  br i1 %or.cond3.i, label %bb.q, label %mcv_population.exit83.thread.thread.i

bb.q:                                             ; preds = %mcv_population.exit83.thread.i
  %i.du = fsub double 1.000000e+00, %i.br
  %i.dv = fsub double %i.du, %.065112.i
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = sub nsw i32 0, %.0.i
  %i.ef = icmp sgt i32 %.060.i, 0
  br i1 %i.ef, label %.lr.ph.preheader.i88.i, label %inet_mcv_hist_sel.exit.i

.lr.ph.preheader.i88.i:                           ; preds = %bb.q
  %wide.trip.count.i89.i = zext nneg i32 %.060.i to i64
  br label %.lr.ph.i90.i

.lr.ph.i90.i:                                     ; preds = %.lr.ph.i90.i, %.lr.ph.preheader.i88.i
  %indvars.iv.i91.i = phi i64 [ 0, %.lr.ph.preheader.i88.i ], [ %indvars.iv.next.i92.i, %.lr.ph.i90.i ] ; 3 uses
  %.01213.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i88.i ], [ %i.em, %.lr.ph.i90.i ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i91.i
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = fpext float %i.eh to double
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i91.i
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = call fastcc double @inet_hist_value_sel(ptr noundef readonly %i.eb, i32 noundef %i.ed, i64 noundef %i.ek, i32 noundef %i.ee)
  %i.em = call double @llvm.fmuladd.f64(double %i.ei, double %i.el, double %.01213.i.i) ; 2 uses
  %indvars.iv.next.i92.i = add nuw nsw i64 %indvars.iv.i91.i, 1 ; 2 uses
  %exitcond.not.i93.i = icmp eq i64 %indvars.iv.next.i92.i, %wide.trip.count.i89.i
  br i1 %exitcond.not.i93.i, label %inet_mcv_hist_sel.exit.i, label %.lr.ph.i90.i, !llvm.loop !14

inet_mcv_hist_sel.exit.i:                         ; preds = %.lr.ph.i90.i, %bb.q
  %.012.lcssa.i.i = phi double [ 0.000000e+00, %bb.q ], [ %i.em, %.lr.ph.i90.i ]
  %i.en = call double @llvm.fmuladd.f64(double %i.dv, double %.012.lcssa.i.i, double %.067.i)
  br label %mcv_population.exit83.thread.thread.i

mcv_population.exit83.thread.thread.i:            ; preds = %inet_mcv_hist_sel.exit.i, %mcv_population.exit83.thread.i, %mcv_population.exit83.i
  %.065112164.i = phi double [ %.065112.i, %inet_mcv_hist_sel.exit.i ], [ %.065112.i, %mcv_population.exit83.thread.i ], [ %.065.i, %mcv_population.exit83.i ]
  %.061.shrunk114124.i = phi i1 [ true, %inet_mcv_hist_sel.exit.i ], [ %i.bu, %mcv_population.exit83.thread.i ], [ %i.bu, %mcv_population.exit83.i ] ; 2 uses
  %.1.i = phi double [ %i.en, %inet_mcv_hist_sel.exit.i ], [ %.067.i, %mcv_population.exit83.thread.i ], [ 0.000000e+00, %mcv_population.exit83.i ] ; 2 uses
  %or.cond5.i = select i1 %i.bs, i1 %.062.shrunk.i, i1 false
  br i1 %or.cond5.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %mcv_population.exit83.thread.thread.i
  %i.eo = fsub double 1.000000e+00, %.069.i
  %i.ep = fsub double %i.eo, %.066.i
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = icmp sgt i32 %i.bw, 0
  br i1 %i.ey, label %.lr.ph.preheader.i95.i, label %inet_mcv_hist_sel.exit102.i

.lr.ph.preheader.i95.i:                           ; preds = %bb.r
  %wide.trip.count.i96.i = zext nneg i32 %i.bx to i64
  br label %.lr.ph.i97.i

.lr.ph.i97.i:                                     ; preds = %.lr.ph.i97.i, %.lr.ph.preheader.i95.i
  %indvars.iv.i98.i = phi i64 [ 0, %.lr.ph.preheader.i95.i ], [ %indvars.iv.next.i100.i, %.lr.ph.i97.i ] ; 3 uses
  %.01213.i99.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i95.i ], [ %i.ff, %.lr.ph.i97.i ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.i98.i
  %i.fa = load float, ptr %i.ez, align 4
  %i.fb = fpext float %i.fa to double
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i98.i
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = call fastcc double @inet_hist_value_sel(ptr noundef readonly %i.ev, i32 noundef %i.ex, i64 noundef %i.fd, i32 noundef range(i32 -2, 3) %.0.i)
  %i.ff = call double @llvm.fmuladd.f64(double %i.fb, double %i.fe, double %.01213.i99.i) ; 2 uses
  %indvars.iv.next.i100.i = add nuw nsw i64 %indvars.iv.i98.i, 1 ; 2 uses
  %exitcond.not.i101.i = icmp eq i64 %indvars.iv.next.i100.i, %wide.trip.count.i96.i
  br i1 %exitcond.not.i101.i, label %inet_mcv_hist_sel.exit102.i, label %.lr.ph.i97.i, !llvm.loop !14

inet_mcv_hist_sel.exit102.i:                      ; preds = %.lr.ph.i97.i, %bb.r
  %.012.lcssa.i94.i = phi double [ 0.000000e+00, %bb.r ], [ %i.ff, %.lr.ph.i97.i ]
  %i.fg = call double @llvm.fmuladd.f64(double %i.ep, double %.012.lcssa.i94.i, double %.1.i)
  br label %bb.s

bb.s:                                             ; preds = %inet_mcv_hist_sel.exit102.i, %mcv_population.exit83.thread.thread.i
  %.2.i = phi double [ %i.fg, %inet_mcv_hist_sel.exit102.i ], [ %.1.i, %mcv_population.exit83.thread.thread.i ] ; 2 uses
  %or.cond7.i = select i1 %.062.shrunk.i, i1 %.061.shrunk114124.i, i1 false
  br i1 %or.cond7.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fh = fsub double 1.000000e+00, %.069.i
  %i.fi = fsub double %i.fh, %.066.i
  %i.fj = fsub double 1.000000e+00, %i.br
  %i.fk = fsub double %i.fj, %.065112164.i
  %i.fl = fmul double %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ft = load i32, ptr %i.fs, align 8            ; 3 uses
  %i.fu = icmp slt i32 %i.ft, 3
  br i1 %i.fu, label %inet_hist_inclusion_join_sel.exit.i, label %.lr.ph.preheader.i103.i

.lr.ph.preheader.i103.i:                          ; preds = %bb.t
  %i.fv = add nsw i32 %i.ft, -3
  %i.fw = lshr i32 %i.fv, 10
  %i.fx = add nuw nsw i32 %i.fw, 1
  %i.fy = add nsw i32 %i.ft, -1
  br label %.lr.ph.i104.i

.lr.ph.i104.i:                                    ; preds = %.lr.ph.i104.i, %.lr.ph.preheader.i103.i
  %.021.i.i = phi i32 [ %i.ge, %.lr.ph.i104.i ], [ 0, %.lr.ph.preheader.i103.i ]
  %.01520.i.i = phi i32 [ %i.gf, %.lr.ph.i104.i ], [ 1, %.lr.ph.preheader.i103.i ] ; 2 uses
  %.01619.i.i = phi double [ %i.gd, %.lr.ph.i104.i ], [ 0.000000e+00, %.lr.ph.preheader.i103.i ]
  %i.fz = sext i32 %.01520.i.i to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = call fastcc double @inet_hist_value_sel(ptr noundef readonly %i.fn, i32 noundef %i.fp, i64 noundef %i.gb, i32 noundef range(i32 -2, 3) %.0.i)
  %i.gd = fadd double %.01619.i.i, %i.gc          ; 2 uses
  %i.ge = add i32 %.021.i.i, 1                    ; 2 uses
  %i.gf = add i32 %i.fx, %.01520.i.i              ; 2 uses
  %i.gg = icmp slt i32 %i.gf, %i.fy
  br i1 %i.gg, label %.lr.ph.i104.i, label %._crit_edge.i.i, !llvm.loop !15

._crit_edge.i.i:                                  ; preds = %.lr.ph.i104.i
  %i.gh = sitofp i32 %i.ge to double
  %i.gi = fdiv double %i.gd, %i.gh
  br label %inet_hist_inclusion_join_sel.exit.i

inet_hist_inclusion_join_sel.exit.i:              ; preds = %._crit_edge.i.i, %bb.t
  %.017.i.i = phi double [ %i.gi, %._crit_edge.i.i ], [ 0.000000e+00, %bb.t ]
  %i.gj = call double @llvm.fmuladd.f64(double %i.fl, double %.017.i.i, double %.2.i)
  br label %bb.u

bb.u:                                             ; preds = %inet_hist_inclusion_join_sel.exit.i, %bb.s, %.thread139.i
  %.068111127135148.i = phi double [ %i.br, %inet_hist_inclusion_join_sel.exit.i ], [ %i.br, %bb.s ], [ 0.000000e+00, %.thread139.i ]
  %.063.shrunk113125137147.i = phi i1 [ %i.bs, %inet_hist_inclusion_join_sel.exit.i ], [ %i.bs, %bb.s ], [ false, %.thread139.i ]
  %.061.shrunk114124138146.i = phi i1 [ true, %inet_hist_inclusion_join_sel.exit.i ], [ %.061.shrunk114124.i, %bb.s ], [ false, %.thread139.i ]
  %.3.i = phi double [ %i.gj, %inet_hist_inclusion_join_sel.exit.i ], [ %.2.i, %bb.s ], [ 0.000000e+00, %.thread139.i ]
  %or.cond9.i = select i1 %.064.shrunk.i, i1 true, i1 %.062.shrunk.i
  %or.cond11.i = select i1 %.063.shrunk113125137147.i, i1 true, i1 %.061.shrunk114124138146.i
  %or.cond73.i = select i1 %or.cond9.i, i1 %or.cond11.i, i1 false
  br i1 %or.cond73.i, label %networkjoinsel_inner.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gk = fsub double 1.000000e+00, %.069.i
  %i.gl = fsub double 1.000000e+00, %.068111127135148.i
  %i.gm = fmul double %i.gk, %i.gl
  %i.gn = icmp eq i32 %i.g, 3552
  %i.go = select i1 %i.gn, double 1.000000e-02, double 5.000000e-03
  %i.gp = fmul double %i.go, %i.gm
  br label %networkjoinsel_inner.exit

networkjoinsel_inner.exit:                        ; preds = %bb.u, %bb.v
  %.4.i = phi double [ %.3.i, %bb.u ], [ %i.gp, %bb.v ]
  call void @free_attstatsslot(ptr noundef nonnull %2) #8
  call void @free_attstatsslot(ptr noundef nonnull %3) #8
  call void @free_attstatsslot(ptr noundef nonnull %4) #8
  call void @free_attstatsslot(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.aa

bb.w:                                             ; preds = %inet_opr_codenum.exit, %inet_opr_codenum.exit
  %i.gq = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gs = call fastcc double @networkjoinsel_semi(i32 noundef %i.g, i32 noundef %.0.i, ptr noundef %6, ptr noundef %7)
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.gt = call i32 @get_commutator(i32 noundef %i.g) #8
  %i.gu = sub nsw i32 0, %.0.i
  %i.gv = call fastcc double @networkjoinsel_semi(i32 noundef %i.gt, i32 noundef %i.gu, ptr noundef %7, ptr noundef %6)
  br label %bb.aa

bb.z:                                             ; preds = %inet_opr_codenum.exit
  %i.gw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.gx = load i32, ptr %i.p, align 8
  %i.gy = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.gx) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 257, ptr noundef nonnull @__func__.networkjoinsel) #8
  unreachable

bb.aa:                                            ; preds = %networkjoinsel_inner.exit, %bb.y, %bb.x
  %.0 = phi double [ %.4.i, %networkjoinsel_inner.exit ], [ %i.gv, %bb.y ], [ %i.gs, %bb.x ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ha, null
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull %i.ha) #8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not20 = icmp eq ptr %i.he, null
  br i1 %.not20, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull %i.he) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.hh = fcmp olt double %.0, 0.000000e+00
  %i.hi = fcmp ogt double %.0, 1.000000e+00
  %i.hj = bitcast double %.0 to i64
  %i.hk = select i1 %i.hi, i64 4607182418800017408, i64 %i.hj
  %i.hl = select i1 %i.hh, i64 0, i64 %i.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i64 %i.hl
}

declare void @get_join_variables(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc double @networkjoinsel_semi(i32 noundef %0, i32 noundef range(i32 -2, 3) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.FmgrInfo, align 8           ; 5 uses
  %5 = alloca %struct.AttStatsSlot, align 8       ; 9 uses
  %6 = alloca %struct.AttStatsSlot, align 8       ; 9 uses
  %7 = alloca %struct.AttStatsSlot, align 8       ; 7 uses
  %8 = alloca %struct.AttStatsSlot, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val94 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val94, i64 22
  %i.e = load i8, ptr %i.d, align 2
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.val94, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 4
  %i.j = fpext float %i.i to double               ; 4 uses
  %i.k = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %5, ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef 0, i32 noundef 3) #8
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %7, ptr noundef %i.l, i32 noundef 2, i32 noundef 0, i32 noundef 1) #8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = call i32 @llvm.smin.i32(i32 %i.o, i32 1024) ; 5 uses
  br i1 %i.k, label %bb.c, label %mcv_population.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = icmp sgt i32 %i.o, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %mcv_population.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.p to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.t = icmp slt i32 %i.o, 4
  br i1 %i.t, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2044
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.067.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.am, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.v = load float, ptr %i.u, align 4
  %i.w = fpext float %i.v to double
  %i.x = fadd double %.067.i, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fpext float %i.aa to double
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fpext float %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.ah, %i.al                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %mcv_population.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  br label %mcv_population.exit

mcv_population.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mcv_population.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %mcv_population.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %mcv_population.exit.loopexit.unr-lcssa ]
  %.067.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.am, %mcv_population.exit.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.067.i.epil = phi double [ %.067.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.aq, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.epil
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %.067.i.epil, %i.ap         ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %mcv_population.exit, label %.lr.ph.i.epil, !llvm.loop !16

mcv_population.exit:                              ; preds = %mcv_population.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.c, %bb.b, %bb.d
  %.082 = phi double [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.am, %mcv_population.exit.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.i.epil ]
  %.080 = phi double [ 0.000000e+00, %bb.d ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %i.j, %.lr.ph.i.epil ], [ %i.j, %mcv_population.exit.loopexit.unr-lcssa ] ; 2 uses
end_hunk_0
