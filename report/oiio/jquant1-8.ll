inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@jinit_1pass_quantizer:bb.a
  br label %.lr.ph.i.i

.lr.ph67.us.preheader.i.i:                        ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa72 = phi i32 [ %i.bx, %middle.block ], [ %i.ea, %.lr.ph.i.i ] ; 2 uses
  %i.by = load i32, ptr %i.as, align 8, !tbaa !55
  %i.bz = icmp eq i32 %i.by, 2
  %narrow101.i64.i = select i1 %i.bz, i32 %i.aw, i32 0
  %spec.select.i65.i = sext i32 %narrow101.i64.i to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %spec.select.i65.i ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3  ; 2 uses
  %i.cc = sdiv i32 %.lcssa72, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = add nsw i32 %i.cb, 1                    ; 3 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i64 %i.cd, %i.cf                ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, %i.bd
  br i1 %i.ch, label %select_ncolors.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph67.us.preheader.i.i
  %exitcond90.peel.not.i.i = icmp eq i32 %i.ar, 1
  br i1 %exitcond90.peel.not.i.i, label %._crit_edge.us73.i.us.i, label %.peel.next.i.preheader.i

._crit_edge.us73.i.us.i:                          ; preds = %.lr.ph.i, %._crit_edge.us73.i.us.i
  %i.ci = phi i64 [ %i.cu, %._crit_edge.us73.i.us.i ], [ %i.cg, %.lr.ph.i ]
  %i.cj = phi i32 [ %i.cs, %._crit_edge.us73.i.us.i ], [ %i.ce, %.lr.ph.i ]
  %i.ck = phi ptr [ %i.co, %._crit_edge.us73.i.us.i ], [ %i.ca, %.lr.ph.i ]
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  %i.cl = trunc i64 %i.ci to i32                  ; 2 uses
  %i.cm = load i32, ptr %i.as, align 8, !tbaa !55
  %i.cn = icmp eq i32 %i.cm, 2
  %narrow101.i.us.i = select i1 %i.cn, i32 %i.aw, i32 0
  %spec.select.i.us.i = sext i32 %narrow101.i.us.i to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %spec.select.i.us.i ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %i.cq = sdiv i32 %i.cl, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = add nsw i32 %i.cp, 1                    ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.cr, %i.ct                ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, %i.bd
  br i1 %i.cv, label %select_ncolors.exit.i, label %._crit_edge.us73.i.us.i

.peel.next.i.preheader.i:                         ; preds = %.lr.ph.i, %._crit_edge.us73.i.loopexit.i
  %i.cw = phi i64 [ %i.dx, %._crit_edge.us73.i.loopexit.i ], [ %i.cg, %.lr.ph.i ]
  %i.cx = phi i32 [ %i.dv, %._crit_edge.us73.i.loopexit.i ], [ %i.ce, %.lr.ph.i ]
  %i.cy = phi ptr [ %i.dr, %._crit_edge.us73.i.loopexit.i ], [ %i.ca, %.lr.ph.i ]
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !3
  %i.cz = trunc i64 %i.cw to i32
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.p, %.peel.next.i.preheader.i
  %indvars.iv87.i.i = phi i64 [ %indvars.iv.next88.i.i, %bb.p ], [ 1, %.peel.next.i.preheader.i ] ; 3 uses
  %.265.us.i.i = phi i32 [ %i.do, %bb.p ], [ %i.cz, %.peel.next.i.preheader.i ] ; 2 uses
  %i.da = load i32, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %i.db = icmp eq i32 %i.da, 2
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.peel.next.i.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = sext i32 %i.dd to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.peel.next.i.i
  %i.df = phi i64 [ %i.de, %bb.n ], [ %indvars.iv87.i.i, %.peel.next.i.i ]
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3  ; 2 uses
  %i.di = sdiv i32 %.265.us.i.i, %i.dh
  %i.dj = sext i32 %i.di to i64
  %i.dk = add nsw i32 %i.dh, 1                    ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = mul nsw i64 %i.dj, %i.dl                ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, %i.bd
  br i1 %i.dn, label %._crit_edge.us73.i.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.dk, ptr %i.dg, align 4, !tbaa !3
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  %indvars.iv.next88.i.i = add nuw nsw i64 %indvars.iv87.i.i, 1 ; 2 uses
  %exitcond90.not.i.i = icmp eq i64 %indvars.iv.next88.i.i, %wide.trip.count85.i.i
  br i1 %exitcond90.not.i.i, label %.._crit_edge.us73.i.loopexit_crit_edge.i, label %.peel.next.i.i, !llvm.loop !65

.._crit_edge.us73.i.loopexit_crit_edge.i:         ; preds = %bb.p
  %.pre.i = load i32, ptr %i.as, align 8, !tbaa !55
  br label %._crit_edge.us73.i.loopexit.i, !llvm.loop !65

._crit_edge.us73.i.loopexit.i:                    ; preds = %bb.o, %.._crit_edge.us73.i.loopexit_crit_edge.i
  %i.dp = phi i32 [ %.pre.i, %.._crit_edge.us73.i.loopexit_crit_edge.i ], [ %i.da, %bb.o ]
  %.2.lcssa.us.i.ph.i = phi i32 [ %i.do, %.._crit_edge.us73.i.loopexit_crit_edge.i ], [ %.265.us.i.i, %bb.o ] ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 2
  %narrow101.i.i = select i1 %i.dq, i32 %i.aw, i32 0
  %spec.select.i.i = sext i32 %narrow101.i.i to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %spec.select.i.i ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3  ; 2 uses
  %i.dt = sdiv i32 %.2.lcssa.us.i.ph.i, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = add nsw i32 %i.ds, 1                    ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul nsw i64 %i.du, %i.dw                ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, %i.bd
  br i1 %i.dy, label %select_ncolors.exit.i, label %.peel.next.i.preheader.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv82.i.i = phi i64 [ %indvars.iv.next83.i.i, %.lr.ph.i.i ], [ %indvars.iv82.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.04863.i.i = phi i32 [ %i.ea, %.lr.ph.i.i ], [ %.04863.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv82.i.i
  store i32 %.us-phi.i.i, ptr %i.dz, align 4, !tbaa !3
  %i.ea = mul nuw nsw i32 %.04863.i.i, %.us-phi.i.i ; 2 uses
  %indvars.iv.next83.i.i = add nuw nsw i64 %indvars.iv82.i.i, 1 ; 2 uses
  %exitcond86.not.i.i = icmp eq i64 %indvars.iv.next83.i.i, %wide.trip.count85.i.i
  br i1 %exitcond86.not.i.i, label %.lr.ph67.us.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !67

select_ncolors.exit.i:                            ; preds = %._crit_edge.us73.i.loopexit.i, %._crit_edge.us73.i.us.i, %.lr.ph67.us.preheader.i.i, %bb.m
  %.us-phi76.i.i = phi i32 [ 1, %bb.m ], [ %.lcssa72, %.lr.ph67.us.preheader.i.i ], [ %i.cl, %._crit_edge.us73.i.us.i ], [ %.2.lcssa.us.i.ph.i, %._crit_edge.us73.i.loopexit.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.eb = load i32, ptr %i.y, align 8, !tbaa !53
  %i.ec = icmp eq i32 %i.eb, 3
  %i.ed = load ptr, ptr %0, align 8, !tbaa !32    ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 44
  store i32 %.us-phi76.i.i, ptr %i.ee, align 4, !tbaa !36
  br i1 %i.ec, label %bb.q, label %bb.r

bb.q:                                             ; preds = %select_ncolors.exit.i
  %i.ef = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 52
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !3
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ap, i64 76
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  store i32 %i.el, ptr %i.em, align 4, !tbaa !3
  br label %bb.s

bb.r:                                             ; preds = %select_ncolors.exit.i
  %i.en = load ptr, ptr %0, align 8, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i32 [ 96, %bb.q ], [ 97, %bb.r ]
  %.sink.i = phi ptr [ %i.ed, %bb.q ], [ %i.en, %bb.r ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i32 %.sink, ptr %i.eo, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !68
  tail call void %i.eq(ptr noundef nonnull %0, i32 noundef 1) #8, !inline_history !69
  %i.er = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !70
  %i.eu = load i32, ptr %i.y, align 8, !tbaa !53
  %i.ev = tail call ptr %i.et(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %.us-phi76.i.i, i32 noundef %i.eu) #8, !inline_history !69 ; 2 uses
  %i.ew = load i32, ptr %i.y, align 8, !tbaa !53  ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph76.preheader.i, label %create_colormap.exit

.lr.ph76.preheader.i:                             ; preds = %bb.s
  %i.ey = sext i32 %.us-phi76.i.i to i64
  br label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %._crit_edge73.i, %.lr.ph76.preheader.i
  %i.ez = phi i32 [ %i.ew, %.lr.ph76.preheader.i ], [ %i.gn, %._crit_edge73.i ] ; 2 uses
  %indvars.iv93.i = phi i64 [ 0, %.lr.ph76.preheader.i ], [ %indvars.iv.next94.i, %._crit_edge73.i ] ; 3 uses
  %.06074.i = phi i32 [ %.us-phi76.i.i, %.lr.ph76.preheader.i ], [ %.fr77.i, %._crit_edge73.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv93.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3  ; 4 uses
  %i.fc = sdiv i32 %.06074.i, %i.fb
  %.fr77.i = freeze i32 %i.fc                     ; 5 uses
  %i.fd = icmp sgt i32 %i.fb, 0
  br i1 %i.fd, label %.lr.ph72.i, label %._crit_edge73.i

.lr.ph72.i:                                       ; preds = %.lr.ph76.i
  %i.fe = add nsw i32 %i.fb, -1                   ; 2 uses
  %i.ff = lshr i32 %i.fe, 1
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = zext nneg i32 %i.fe to i64
  %i.fi = icmp sgt i32 %.fr77.i, 0
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv93.i ; 5 uses
  br i1 %i.fi, label %.lr.ph72.split.us.preheader.i, label %._crit_edge73.i

.lr.ph72.split.us.preheader.i:                    ; preds = %.lr.ph72.i
  %i.fk = zext nneg i32 %.fr77.i to i64           ; 3 uses
  %i.fl = sext i32 %.06074.i to i64
  %wide.trip.count91.i = zext nneg i32 %i.fb to i64
  %xtraiter87 = and i64 %i.fk, 3                  ; 3 uses
  %i.fm = icmp ult i32 %.fr77.i, 4
  %unroll_iter91 = and i64 %i.fk, 2147483644
  %lcmp.mod89.not = icmp eq i64 %xtraiter87, 0
  %lcmp.mod90 = icmp ne i64 %xtraiter87, 0
  br label %.lr.ph72.split.us.i

.lr.ph72.split.us.i:                              ; preds = %._crit_edge69.us.i, %.lr.ph72.split.us.preheader.i
  %indvars.iv88.i = phi i64 [ 0, %.lr.ph72.split.us.preheader.i ], [ %indvars.iv.next89.i, %._crit_edge69.us.i ] ; 3 uses
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph72.split.us.preheader.i ], [ %indvars.iv.next84.i, %._crit_edge69.us.i ] ; 2 uses
  %i.fn = trunc i64 %indvars.iv88.i to i32
  %i.fo = mul i32 %.fr77.i, %i.fn
  %i.fp = icmp slt i32 %i.fo, %.us-phi76.i.i
  br i1 %i.fp, label %.preheader.lr.ph.us.i, label %._crit_edge69.us.i

._crit_edge69.us.i:                               ; preds = %._crit_edge.us.i, %.lr.ph72.split.us.i
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, %i.fk
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next89.i, %wide.trip.count91.i
  br i1 %exitcond92.not.i, label %._crit_edge73.loopexit.i, label %.lr.ph72.split.us.i, !llvm.loop !71

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 5 uses
  %niter92 = phi i64 [ %niter92.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.fq = load ptr, ptr %i.fj, align 8, !tbaa !72
  %i.fr = getelementptr i8, ptr %i.fq, i64 %indvars.iv.i
  %i.fs = getelementptr i8, ptr %i.fr, i64 %indvars.iv85.i
  store i8 %i.gm, ptr %i.fs, align 1, !tbaa !36
  %i.ft = load ptr, ptr %i.fj, align 8, !tbaa !72
  %i.fu = getelementptr i8, ptr %i.ft, i64 %indvars.iv.i
  %i.fv = getelementptr i8, ptr %i.fu, i64 1
  %i.fw = getelementptr i8, ptr %i.fv, i64 %indvars.iv85.i
  store i8 %i.gm, ptr %i.fw, align 1, !tbaa !36
  %i.fx = load ptr, ptr %i.fj, align 8, !tbaa !72
  %i.fy = getelementptr i8, ptr %i.fx, i64 %indvars.iv.i
  %i.fz = getelementptr i8, ptr %i.fy, i64 2
  %i.ga = getelementptr i8, ptr %i.fz, i64 %indvars.iv85.i
  store i8 %i.gm, ptr %i.ga, align 1, !tbaa !36
  %i.gb = load ptr, ptr %i.fj, align 8, !tbaa !72
  %i.gc = getelementptr i8, ptr %i.gb, i64 %indvars.iv.i
  %i.gd = getelementptr i8, ptr %i.gc, i64 3
  %i.ge = getelementptr i8, ptr %i.gd, i64 %indvars.iv85.i
  store i8 %i.gm, ptr %i.ge, align 1, !tbaa !36
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter92.next.3 = add i64 %niter92, 4           ; 2 uses
  %niter92.ncmp.3 = icmp eq i64 %niter92.next.3, %unroll_iter91
  br i1 %niter92.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !73

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.us.i, %._crit_edge.us.i
  %indvars.iv85.i = phi i64 [ %indvars.iv83.i, %.preheader.lr.ph.us.i ], [ %indvars.iv.next86.i, %._crit_edge.us.i ] ; 6 uses
  br i1 %i.fm, label %.epil.preheader86, label %.preheader.us.i.new

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod89.not, label %._crit_edge.us.i, label %.epil.preheader86

.epil.preheader86:                                ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader86
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader86 ], [ %indvars.iv.next.i.epil, %bb.t ] ; 2 uses
  %epil.iter88 = phi i64 [ 0, %.epil.preheader86 ], [ %epil.iter88.next, %bb.t ]
  %i.gf = load ptr, ptr %i.fj, align 8, !tbaa !72
  %i.gg = getelementptr i8, ptr %i.gf, i64 %indvars.iv.i.epil
  %i.gh = getelementptr i8, ptr %i.gg, i64 %indvars.iv85.i
  store i8 %i.gm, ptr %i.gh, align 1, !tbaa !36
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter88.next = add i64 %epil.iter88, 1     ; 2 uses
  %epil.iter88.cmp.not = icmp eq i64 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %._crit_edge.us.i, label %bb.t, !llvm.loop !74

._crit_edge.us.i:                                 ; preds = %bb.t, %._crit_edge.us.i.unr-lcssa
  %indvars.iv.next86.i = add nsw i64 %indvars.iv85.i, %i.fl ; 2 uses
  %i.gi = icmp slt i64 %indvars.iv.next86.i, %i.ey
  br i1 %i.gi, label %.preheader.us.i, label %._crit_edge69.us.i, !llvm.loop !75

.preheader.lr.ph.us.i:                            ; preds = %.lr.ph72.split.us.i
  %i.gj = mul nuw nsw i64 %indvars.iv88.i, 255
  %i.gk = add nuw nsw i64 %i.gj, %i.fg
  %i.gl = udiv i64 %i.gk, %i.fh
  %i.gm = trunc i64 %i.gl to i8                   ; 5 uses
  br label %.preheader.us.i

._crit_edge73.loopexit.i:                         ; preds = %._crit_edge69.us.i
  %.pre96.i = load i32, ptr %i.y, align 8, !tbaa !53
  br label %._crit_edge73.i

._crit_edge73.i:                                  ; preds = %._crit_edge73.loopexit.i, %.lr.ph72.i, %.lr.ph76.i
  %i.gn = phi i32 [ %i.ez, %.lr.ph76.i ], [ %.pre96.i, %._crit_edge73.loopexit.i ], [ %i.ez, %.lr.ph72.i ] ; 2 uses
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.go = sext i32 %i.gn to i64
  %i.gp = icmp slt i64 %indvars.iv.next94.i, %i.go
  br i1 %i.gp, label %.lr.ph76.i, label %create_colormap.exit, !llvm.loop !76

create_colormap.exit:                             ; preds = %._crit_edge73.i, %bb.s
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %i.ev, ptr %i.gq, align 8, !tbaa !77
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i32 %.us-phi76.i.i, ptr %i.gr, align 8, !tbaa !78
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !79
  %i.gu = icmp eq i32 %i.gt, 2
  br i1 %i.gu, label %bb.u, label %alloc_fs_workspace.exit

bb.u:                                             ; preds = %create_colormap.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !80
  %i.gx = add i32 %i.gw, 2
  %i.gy = zext i32 %i.gx to i64
  %i.gz = shl nuw nsw i64 %i.gy, 1
  %i.ha = load i32, ptr %i.y, align 8, !tbaa !53
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph.i34, label %alloc_fs_workspace.exit

.lr.ph.i34:                                       ; preds = %bb.u
  %i.hc = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 120
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i34
  %indvars.iv.i35 = phi i64 [ 0, %.lr.ph.i34 ], [ %indvars.iv.next.i36, %bb.v ] ; 2 uses
  %i.he = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !81
  %i.hh = tail call ptr %i.hg(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.gz) #8, !inline_history !82
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i35
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !50
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %i.hj = load i32, ptr %i.y, align 8, !tbaa !53
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next.i36, %i.hk
  br i1 %i.hl, label %bb.v, label %alloc_fs_workspace.exit, !llvm.loop !83

alloc_fs_workspace.exit:                          ; preds = %bb.v, %bb.u, %create_colormap.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_1_quant(ptr noundef initializes((156, 168)) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.d, ptr %i.e, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.g, ptr %i.h, align 4, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !79
  switch i32 %i.j, label %bb.o [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !53
  %i.m = icmp eq i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @color_quantize3, ptr %i.n, align 8, !tbaa !86
  br label %create_odither_tables.exit

bb.d:                                             ; preds = %bb.b
  store ptr @color_quantize, ptr %i.n, align 8, !tbaa !86
  br label %create_odither_tables.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !53
  %i.q = icmp eq i32 %i.p, 3
  %spec.select = select i1 %i.q, ptr @quantize3_ord_dither, ptr @quantize_ord_dither
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %spec.select, ptr %i.r, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i32 0, ptr %i.s, align 4, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !88
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %create_odither_tables.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.o, align 8, !tbaa !53   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph26.i, label %create_odither_tables.exit

.lr.ph26.i:                                       ; preds = %bb.h
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 68 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %make_odither_array.exit.i, %.lr.ph26.i
  %i.ae = phi i32 [ %i.y, %.lr.ph26.i ], [ %i.gh, %make_odither_array.exit.i ]
  %indvars.iv29.i = phi i64 [ 0, %.lr.ph26.i ], [ %indvars.iv.next30.i, %make_odither_array.exit.i ] ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv29.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3  ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv29.i, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv29.i
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph.i, !llvm.loop !89

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread.i, label %make_odither_array.exit.i

.thread.i:                                        ; preds = %bb.j, %bb.k, %bb.i
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.ap = tail call ptr %i.ao(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #8, !inline_history !90 ; 2 uses
  %i.aq = add nsw i32 %i.ag, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 9                    ; 16 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.thread.i
  %indvars.iv.i.i = phi i64 [ 0, %.thread.i ], [ %indvars.iv.next.i.i, %.preheader.i.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr @base_dither_matrix, i64 %indvars.iv.i.i ; 16 uses
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %indvars.iv.i.i ; 16 uses
  %i.av = load i8, ptr %i.at, align 16, !tbaa !36
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 1
  %i.ay = sub nsw i32 255, %i.ax
  %narrow.i.i = mul nsw i32 %i.ay, 255
  %i.az = sext i32 %narrow.i.i to i64
  %i.ba = sdiv i64 %i.az, %i.as
  %i.bb = trunc nsw i64 %i.ba to i32
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !36
end_hunk_0
begin_hunk_1_@start_pass_1_quant:bb.a
  %i.eu = sdiv i64 %i.et, %i.as
  %i.ev = trunc nsw i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !36
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 1
  %i.fb = sub nsw i32 255, %i.fa
  %narrow.12.i.i = mul nsw i32 %i.fb, 255
  %i.fc = sext i32 %narrow.12.i.i to i64
  %i.fd = sdiv i64 %i.fc, %i.as
  %i.fe = trunc nsw i64 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.at, i64 13
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !36
  %i.fi = zext i8 %i.fh to i32
  %i.fj = shl nuw nsw i32 %i.fi, 1
  %i.fk = sub nsw i32 255, %i.fj
  %narrow.13.i.i = mul nsw i32 %i.fk, 255
  %i.fl = sext i32 %narrow.13.i.i to i64
  %i.fm = sdiv i64 %i.fl, %i.as
  %i.fn = trunc nsw i64 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !36
  %i.fr = zext i8 %i.fq to i32
  %i.fs = shl nuw nsw i32 %i.fr, 1
  %i.ft = sub nsw i32 255, %i.fs
  %narrow.14.i.i = mul nsw i32 %i.ft, 255
  %i.fu = sext i32 %narrow.14.i.i to i64
  %i.fv = sdiv i64 %i.fu, %i.as
  %i.fw = trunc nsw i64 %i.fv to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.at, i64 15
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !36
  %i.ga = zext i8 %i.fz to i32
  %i.gb = shl nuw nsw i32 %i.ga, 1
  %i.gc = sub nsw i32 255, %i.gb
  %narrow.15.i.i = mul nsw i32 %i.gc, 255
  %i.gd = sext i32 %narrow.15.i.i to i64
  %i.ge = sdiv i64 %i.gd, %i.as
  %i.gf = trunc nsw i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.au, i64 60
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !3
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.not.i.i, label %make_odither_array.exit.loopexit.i, label %.preheader.i.i, !llvm.loop !91

make_odither_array.exit.loopexit.i:               ; preds = %.preheader.i.i
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !53
  br label %make_odither_array.exit.i

make_odither_array.exit.i:                        ; preds = %make_odither_array.exit.loopexit.i, %bb.k
  %i.gh = phi i32 [ %i.ae, %bb.k ], [ %.pre.i, %make_odither_array.exit.loopexit.i ] ; 2 uses
  %.1.i = phi ptr [ %i.al, %bb.k ], [ %i.ap, %make_odither_array.exit.loopexit.i ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv29.i
  store ptr %.1.i, ptr %i.gi, align 8, !tbaa !52
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %i.gj = sext i32 %i.gh to i64
  %i.gk = icmp slt i64 %indvars.iv.next30.i, %i.gj
  br i1 %i.gk, label %bb.i, label %create_odither_tables.exit, !llvm.loop !92

bb.l:                                             ; preds = %bb.a
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @quantize_fs_dither, ptr %i.gl, align 8, !tbaa !86
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i32 0, ptr %i.gm, align 8, !tbaa !93
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !50
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.m, label %.alloc_fs_workspace.exit_crit_edge

.alloc_fs_workspace.exit_crit_edge:               ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %alloc_fs_workspace.exit

bb.m:                                             ; preds = %bb.l
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !80
  %i.gs = add i32 %i.gr, 2
  %i.gt = zext i32 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 1
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !53
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.i30, label %create_odither_tables.exit

.lr.ph.i30:                                       ; preds = %bb.m
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i30
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i30 ], [ %indvars.iv.next.i32, %bb.n ] ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !81
  %i.hc = tail call ptr %i.hb(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.gu) #8, !inline_history !82
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.i31
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !50
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %i.he = load i32, ptr %i.gv, align 8, !tbaa !53 ; 2 uses
  %i.hf = sext i32 %i.he to i64
  %i.hg = icmp slt i64 %indvars.iv.next.i32, %i.hf
  br i1 %i.hg, label %bb.n, label %alloc_fs_workspace.exit, !llvm.loop !83

alloc_fs_workspace.exit:                          ; preds = %bb.n, %.alloc_fs_workspace.exit_crit_edge
  %i.hh = phi i32 [ %.pre, %.alloc_fs_workspace.exit_crit_edge ], [ %i.he, %bb.n ]
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !80
  %i.hk = add i32 %i.hj, 2
  %i.hl = zext i32 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hl, 1
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ho = icmp sgt i32 %i.hh, 0
  br i1 %i.ho, label %.lr.ph, label %create_odither_tables.exit

.lr.ph:                                           ; preds = %alloc_fs_workspace.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %alloc_fs_workspace.exit ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !50
  tail call void @jzero_far(ptr noundef %i.hq, i64 noundef %i.hm) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hr = load i32, ptr %i.hn, align 8, !tbaa !53
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next, %i.hs
  br i1 %i.ht, label %.lr.ph, label %create_odither_tables.exit, !llvm.loop !94

bb.o:                                             ; preds = %bb.a
  %i.hu = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  store i32 49, ptr %i.hv, align 8, !tbaa !33
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !37
  tail call void %i.hw(ptr noundef nonnull %0) #8
  br label %create_odither_tables.exit

create_odither_tables.exit:                       ; preds = %.lr.ph, %make_odither_array.exit.i, %bb.m, %alloc_fs_workspace.exit, %bb.h, %bb.g, %bb.c, %bb.d, %bb.o
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_pass_1_quant(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @new_color_map_1_quant(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 47, ptr %i.b, align 8, !tbaa !33
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !37
  tail call void %i.c(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_colorindex(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79
  %.not = icmp eq i32 %i.d, 1                     ; 4 uses
  %spec.select = zext i1 %.not to i32
  %spec.select79 = select i1 %.not, i32 766, i32 256
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %spec.select, ptr %i.e, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !53
  %i.l = tail call ptr %i.i(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %spec.select79, i32 noundef %i.k) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !95
  %i.n = load i32, ptr %i.j, align 8, !tbaa !53
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph62, %.loopexit
  %indvars.iv73 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next74, %.loopexit ] ; 3 uses
  %.04660 = phi i32 [ %i.q, %.lr.ph62 ], [ %i.u, %.loopexit ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv73
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %i.u = sdiv i32 %.04660, %i.t                   ; 2 uses
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv73 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  br i1 %.not, label %bb.c, label %._crit_edge76

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 255 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !72
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ] ; 9 uses
  %i.z = add nsw i32 %i.t, -1                     ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nsw i64 %i.aa, 255
  %i.ac = shl nsw i32 %i.z, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = sdiv i64 %i.ab, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %invariant.op = add nsw i64 %i.aa, 255
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge76, %._crit_edge
  %indvars.iv66 = phi i64 [ 0, %._crit_edge76 ], [ %indvars.iv.next67, %._crit_edge ] ; 4 uses
  %.04557 = phi i32 [ 0, %._crit_edge76 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.04856 = phi i32 [ %i.af, %._crit_edge76 ], [ %.149.lcssa, %._crit_edge ] ; 2 uses
  %i.ag = sext i32 %.04856 to i64
  %i.ah = icmp sgt i64 %indvars.iv66, %i.ag
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ai = sext i32 %.04557 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ai, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.aj = mul i64 %indvars.iv.next, 510
  %.reass = add i64 %i.aj, %invariant.op
  %i.ak = sdiv i64 %.reass, %i.ad                 ; 2 uses
  %sext = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext, 32
  %i.am = icmp sgt i64 %indvars.iv66, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.an = trunc i64 %i.ak to i32
  %i.ao = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.149.lcssa = phi i32 [ %.04856, %.preheader ], [ %i.an, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.04557, %.preheader ], [ %i.ao, %._crit_edge.loopexit ] ; 2 uses
  %i.ap = mul nsw i32 %.1.lcssa, %i.u
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv66
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !36
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next67, 256
  br i1 %exitcond.not, label %bb.d, label %.preheader, !llvm.loop !97

bb.d:                                             ; preds = %._crit_edge
  br i1 %.not, label %.preheader52, label %.loopexit

.preheader52:                                     ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 255 ; 3 uses
  %.pre78 = load i8, ptr %i.y, align 1, !tbaa !36 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader52
  %indvars.iv69 = phi i64 [ 1, %.preheader52 ], [ %indvars.iv.next70.2, %bb.e ] ; 7 uses
  %i.at = sub nsw i64 0, %indvars.iv69
  %i.au = getelementptr inbounds i8, ptr %i.y, i64 %i.at
  store i8 %.pre78, ptr %i.au, align 1, !tbaa !36
  %i.av = load i8, ptr %i.as, align 1, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 255
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !36
  %i.ay = xor i64 %indvars.iv69, -1
  %i.az = getelementptr inbounds i8, ptr %i.y, i64 %i.ay
  store i8 %.pre78, ptr %i.az, align 1, !tbaa !36
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv69
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 256
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !36
  %i.bd = sub nuw nsw i64 -2, %indvars.iv69
  %i.be = getelementptr inbounds i8, ptr %i.y, i64 %i.bd
  store i8 %.pre78, ptr %i.be, align 1, !tbaa !36
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv69
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 257
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !36
  %indvars.iv.next70.2 = add nuw nsw i64 %indvars.iv69, 3 ; 2 uses
  %exitcond72.not.2 = icmp eq i64 %indvars.iv.next70.2, 256
  br i1 %exitcond72.not.2, label %.loopexit, label %bb.e, !llvm.loop !98

.loopexit:                                        ; preds = %bb.e, %bb.d
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !53
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next74, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge63, !llvm.loop !99

._crit_edge63:                                    ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @color_quantize3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80   ; 5 uses
  %i.l = icmp slt i32 %3, 1
  %.not27 = icmp eq i32 %i.k, 0
  %or.cond = select i1 %i.l, i1 true, i1 %.not27
  br i1 %or.cond, label %._crit_edge34.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  %xtraiter = and i32 %i.k, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.m = add nsw i32 %i.k, -1
  %i.n = icmp eq i32 %i.k, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72   ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.t = load i8, ptr %i.p, align 1, !tbaa !36
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.y = load i8, ptr %i.s, align 1, !tbaa !36
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !36
  %i.ac = add i8 %i.ab, %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !36
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !36
  %i.ai = add i8 %i.ac, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.ai, ptr %i.r, align 1, !tbaa !36
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.030.unr = phi ptr [ %i.p, %.lr.ph ], [ %i.ad, %.prol.loopexit.unr-lcssa ]
  %.02429.unr = phi i32 [ %i.k, %.lr.ph ], [ %i.m, %.prol.loopexit.unr-lcssa ]
  %.02628.unr = phi ptr [ %i.r, %.lr.ph ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  br i1 %i.n, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.030 = phi ptr [ %i.bn, %.lr.ph.new ], [ %.030.unr, %.prol.loopexit ] ; 7 uses
  %.02429 = phi i32 [ %i.bu, %.lr.ph.new ], [ %.02429.unr, %.prol.loopexit ]
  %.02628 = phi ptr [ %i.bt, %.lr.ph.new ], [ %.02628.unr, %.prol.loopexit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.al = load i8, ptr %.030, align 1, !tbaa !36
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %.030, i64 2
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !36
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !36
  %i.au = add i8 %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %.030, i64 3
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !36
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
  %i.ba = add i8 %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.02628, i64 1
  store i8 %i.ba, ptr %.02628, align 1, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !36
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %.030, i64 5
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !36
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !36
  %i.bm = add i8 %i.bl, %i.bg
  %i.bn = getelementptr inbounds nuw i8, ptr %.030, i64 6
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !36
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !36
  %i.bs = add i8 %i.bm, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.02628, i64 2
  store i8 %i.bs, ptr %i.bb, align 1, !tbaa !36
  %i.bu = add i32 %.02429, -2                     ; 2 uses
  %.not.1 = icmp eq i32 %i.bu, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge34.split, label %.lr.ph, !llvm.loop !101

._crit_edge34.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @color_quantize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !80   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !53   ; 4 uses
  %i.i = icmp slt i32 %3, 1
  %.not31 = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.i, i1 true, i1 %.not31
  br i1 %or.cond, label %._crit_edge.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.a
  %i.j = icmp sgt i32 %i.h, 0
  %wide.trip.count49 = zext nneg i32 %3 to i64    ; 3 uses
  br i1 %i.j, label %.preheader.lr.ph.us.preheader, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph.split
  %i.k = zext i32 %i.f to i64                     ; 9 uses
  %xtraiter = and i64 %wide.trip.count49, 7       ; 3 uses
  %i.l = add nsw i32 %3, -1
  %i.m = icmp ult i32 %i.l, 7
  br i1 %i.m, label %.preheader.lr.ph.epil.preheader, label %.preheader.lr.ph.preheader.new

.preheader.lr.ph.preheader.new:                   ; preds = %.preheader.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count49, 2147483640
  br label %.preheader.lr.ph

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph.split
  %i.n = zext nneg i32 %i.h to i64
  %wide.trip.count44 = zext nneg i32 %i.h to i64  ; 2 uses
  %xtraiter58 = and i64 %wide.trip.count44, 3     ; 3 uses
  %i.o = icmp ult i32 %i.h, 4
  %unroll_iter63 = and i64 %wide.trip.count44, 2147483644
  %lcmp.mod60.not = icmp eq i64 %xtraiter58, 0
  %lcmp.mod62 = icmp ne i64 %xtraiter58, 0
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge35.split.us.us
  %indvars.iv46 = phi i64 [ 0, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next47, %._crit_edge35.split.us.us ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv46
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv46
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %.02334.us.us = phi i32 [ %i.f, %.preheader.lr.ph.us ], [ %i.bl, %._crit_edge.us.us ]
  %.02533.us.us = phi ptr [ %i.s, %.preheader.lr.ph.us ], [ %i.bk, %._crit_edge.us.us ] ; 2 uses
  %.02632.us.us = phi ptr [ %i.q, %.preheader.lr.ph.us ], [ %scevgep, %._crit_edge.us.us ] ; 3 uses
  br i1 %i.o, label %.epil.preheader, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 5 uses
  %.029.us.us = phi i8 [ %i.bb, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %.127.us.us = phi ptr [ %i.aw, %.preheader.us.us.new ], [ %.02632.us.us, %.preheader.us.us ] ; 5 uses
  %niter64 = phi i64 [ %niter64.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %.127.us.us, i64 1
  %i.w = load i8, ptr %.127.us.us, align 1, !tbaa !36
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !36
  %i.aa = add i8 %i.z, %.029.us.us
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %.127.us.us, i64 2
  %i.af = load i8, ptr %i.v, align 1, !tbaa !36
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !36
  %i.aj = add i8 %i.ai, %i.aa
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.an = getelementptr inbounds nuw i8, ptr %.127.us.us, i64 3
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !36
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36
  %i.as = add i8 %i.ar, %i.aj
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.aw = getelementptr inbounds nuw i8, ptr %.127.us.us, i64 4 ; 2 uses
  %i.ax = load i8, ptr %i.an, align 1, !tbaa !36
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !36
  %i.bb = add i8 %i.ba, %i.as                     ; 3 uses
  %indvars.iv.next43.3 = add nuw nsw i64 %indvars.iv42, 4 ; 2 uses
  %niter64.next.3 = add i64 %niter64, 4           ; 2 uses
  %niter64.ncmp.3 = icmp eq i64 %niter64.next.3, %unroll_iter63
  br i1 %niter64.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !102

._crit_edge.us.us.unr-lcssa:                      ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod60.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv42.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next43.3, %._crit_edge.us.us.unr-lcssa ]
  %.029.us.us.epil.init = phi i8 [ 0, %.preheader.us.us ], [ %i.bb, %._crit_edge.us.us.unr-lcssa ]
  %.127.us.us.epil.init = phi ptr [ %.02632.us.us, %.preheader.us.us ], [ %i.aw, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv42.epil = phi i64 [ %indvars.iv.next43.epil, %bb.b ], [ %indvars.iv42.epil.init, %.epil.preheader ] ; 2 uses
  %.029.us.us.epil = phi i8 [ %i.bj, %bb.b ], [ %.029.us.us.epil.init, %.epil.preheader ]
  %.127.us.us.epil = phi ptr [ %i.be, %bb.b ], [ %.127.us.us.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter59 = phi i64 [ %epil.iter59.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42.epil
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !72
  %i.be = getelementptr inbounds nuw i8, ptr %.127.us.us.epil, i64 1
  %i.bf = load i8, ptr %.127.us.us.epil, align 1, !tbaa !36
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !36
  %i.bj = add i8 %i.bi, %.029.us.us.epil          ; 2 uses
  %indvars.iv.next43.epil = add nuw nsw i64 %indvars.iv42.epil, 1
  %epil.iter59.next = add i64 %epil.iter59, 1     ; 2 uses
  %epil.iter59.cmp.not = icmp eq i64 %epil.iter59.next, %xtraiter58
  br i1 %epil.iter59.cmp.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !103

._crit_edge.us.us:                                ; preds = %bb.b, %._crit_edge.us.us.unr-lcssa
  %.lcssa = phi i8 [ %i.bb, %._crit_edge.us.us.unr-lcssa ], [ %i.bj, %bb.b ]
  %scevgep = getelementptr i8, ptr %.02632.us.us, i64 %i.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.02533.us.us, i64 1
  store i8 %.lcssa, ptr %.02533.us.us, align 1, !tbaa !36
  %i.bl = add i32 %.02334.us.us, -1               ; 2 uses
  %.not.us.us = icmp eq i32 %i.bl, 0
  br i1 %.not.us.us, label %._crit_edge35.split.us.us, label %.preheader.us.us, !llvm.loop !104

._crit_edge35.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge.split, label %.preheader.lr.ph.us, !llvm.loop !105

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph, %.preheader.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.preheader.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.lr.ph.preheader.new ], [ %niter.next.7, %.preheader.lr.ph ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bn, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bt, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bz, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cc, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cf, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ci, i8 0, i64 %i.k, i1 false), !tbaa !36
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.loopexit56.unr-lcssa, label %.preheader.lr.ph, !llvm.loop !105

._crit_edge.split.loopexit56.unr-lcssa:           ; preds = %.preheader.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.preheader.lr.ph.epil.preheader

.preheader.lr.ph.epil.preheader:                  ; preds = %._crit_edge.split.loopexit56.unr-lcssa, %.preheader.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.split.loopexit56.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod57)
  br label %.preheader.lr.ph.epil

.preheader.lr.ph.epil:                            ; preds = %.preheader.lr.ph.epil, %.preheader.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.preheader.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.lr.ph.epil.preheader ], [ %epil.iter.next, %.preheader.lr.ph.epil ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ck, i8 0, i64 %i.k, i1 false), !tbaa !36
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split, label %.preheader.lr.ph.epil, !llvm.loop !106

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit56.unr-lcssa, %.preheader.lr.ph.epil, %._crit_edge35.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @quantize3_ord_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.not45 = icmp eq i32 %i.k, 0
  br i1 %.not45, label %.lr.ph52.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph52
  %wide.trip.count = zext nneg i32 %3 to i64
  %.pre = load i32, ptr %i.m, align 4, !tbaa !87
  br label %.lr.ph

.lr.ph52.split.us:                                ; preds = %.lr.ph52
  %.promoted = load i32, ptr %i.m, align 4, !tbaa !87 ; 2 uses
  %xtraiter = and i32 %3, 7                       ; 3 uses
  %i.q = icmp ult i32 %3, 8
  br i1 %i.q, label %.epil.preheader, label %.lr.ph52.split.us.new

.lr.ph52.split.us.new:                            ; preds = %.lr.ph52.split.us
  %unroll_iter = and i32 %3, 2147483640
  %i.r = and i32 %.promoted, 15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph52.split.us.new
  %i.s = phi i32 [ %i.r, %.lr.ph52.split.us.new ], [ %i.t, %bb.b ]
  %niter = phi i32 [ 0, %.lr.ph52.split.us.new ], [ %niter.next.7, %bb.b ]
  %i.t = xor i32 %i.s, 8                          ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge53.split.us.unr-lcssa, label %bb.b, !llvm.loop !107

._crit_edge53.split.us.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge53.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge53.split.us.unr-lcssa, %.lr.ph52.split.us
  %.epil.init = phi i32 [ %.promoted, %.lr.ph52.split.us ], [ %i.t, %._crit_edge53.split.us.unr-lcssa ]
  %lcmp.mod58 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %i.u = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.w, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.v = add nsw i32 %i.u, 1
  %i.w = and i32 %i.v, 15                         ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge53.split.us, label %bb.c, !llvm.loop !108

._crit_edge53.split.us:                           ; preds = %bb.c, %._crit_edge53.split.us.unr-lcssa
  %.lcssa = phi i32 [ %i.t, %._crit_edge53.split.us.unr-lcssa ], [ %i.w, %bb.c ]
  store i32 %.lcssa, ptr %i.m, align 4, !tbaa !87
  br label %._crit_edge53

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.x = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.bs, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.ad = sext i32 %i.x to i64                    ; 3 uses
  %i.ae = getelementptr inbounds [64 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.ag = getelementptr inbounds [64 x i8], ptr %i.af, i64 %i.ad
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.ai = getelementptr inbounds [64 x i8], ptr %i.ah, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.049 = phi ptr [ %i.z, %.lr.ph ], [ %i.bd, %bb.d ] ; 4 uses
  %.04148 = phi i32 [ %i.k, %.lr.ph ], [ %i.bq, %bb.d ]
  %.04347 = phi i32 [ 0, %.lr.ph ], [ %i.bp, %bb.d ] ; 2 uses
  %.04446 = phi ptr [ %i.ab, %.lr.ph ], [ %i.bn, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.049, i64 1
  %i.ak = load i8, ptr %.049, align 1, !tbaa !36
  %i.al = zext i8 %i.ak to i32
  %i.am = zext nneg i32 %.04347 to i64            ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = add nsw i32 %i.ao, %i.al
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.e, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.au = load i8, ptr %i.aj, align 1, !tbaa !36
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.am
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, %i.av
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.g, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !36
  %i.bc = add i8 %i.bb, %i.as
  %i.bd = getelementptr inbounds nuw i8, ptr %.049, i64 3
  %i.be = load i8, ptr %i.at, align 1, !tbaa !36
  %i.bf = zext i8 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.am
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !36
  %i.bm = add i8 %i.bc, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.04446, i64 1
  store i8 %i.bm, ptr %.04446, align 1, !tbaa !36
  %i.bo = add nuw nsw i32 %.04347, 1
  %i.bp = and i32 %i.bo, 15
  %i.bq = add i32 %.04148, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.d
  %i.br = add nsw i32 %i.x, 1
  %i.bs = and i32 %i.br, 15                       ; 2 uses
  store i32 %i.bs, ptr %i.m, align 4, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge53, label %.lr.ph, !llvm.loop !107

._crit_edge53:                                    ; preds = %._crit_edge, %._crit_edge53.split.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_ord_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  %.fr56 = freeze i32 %i.b                        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !80
  %.fr = freeze i32 %i.d                          ; 6 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph54, label %._crit_edge55

.lr.ph54:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 3 uses
  %i.h = zext i32 %.fr to i64                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 84 ; 6 uses
  %i.j = icmp sgt i32 %.fr56, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.m = sext i32 %.fr56 to i64                   ; 2 uses
  br i1 %i.j, label %.lr.ph54.split.us, label %.lr.ph54.split.preheader

.lr.ph54.split.preheader:                         ; preds = %.lr.ph54
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph54.split

.lr.ph54.split.us:                                ; preds = %.lr.ph54
  %.not43 = icmp eq i32 %.fr, 0
  %wide.trip.count73 = zext nneg i32 %3 to i64    ; 2 uses
  br i1 %.not43, label %.lr.ph50.us.us, label %.lr.ph50.us.preheader

.lr.ph50.us.preheader:                            ; preds = %.lr.ph54.split.us
  %wide.trip.count63 = zext nneg i32 %.fr56 to i64
  %xtraiter = and i32 %.fr, 1
  %i.n = icmp eq i32 %.fr, 1
  %unroll_iter = and i32 %.fr, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod81 = trunc i32 %.fr to i1
  br label %.lr.ph50.us

.lr.ph50.us.us:                                   ; preds = %.lr.ph54.split.us, %.lr.ph50.us.us
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.lr.ph50.us.us ], [ 0, %.lr.ph54.split.us ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv70
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  tail call void @jzero_far(ptr noundef %i.p, i64 noundef %i.h) #8
  %i.q = load i32, ptr %i.i, align 4, !tbaa !87
  %i.r = add nsw i32 %i.q, 1
  %i.s = and i32 %i.r, 15
  store i32 %i.s, ptr %i.i, align 4, !tbaa !87
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge55, label %.lr.ph50.us.us, !llvm.loop !110

.lr.ph50.us:                                      ; preds = %.lr.ph50.us.preheader, %._crit_edge51.us
  %indvars.iv65 = phi i64 [ 0, %.lr.ph50.us.preheader ], [ %indvars.iv.next66, %._crit_edge51.us ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  tail call void @jzero_far(ptr noundef %i.u, i64 noundef %i.h) #8
  %i.v = load i32, ptr %i.i, align 4, !tbaa !87   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv65
  %i.x = sext i32 %i.v to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph50.us, %._crit_edge.us
  %indvars.iv60 = phi i64 [ 0, %.lr.ph50.us ], [ %indvars.iv.next61, %._crit_edge.us ] ; 4 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv60 ; 2 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !72  ; 2 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv60
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv60
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52
  %i.ag = getelementptr inbounds [64 x i8], ptr %i.af, i64 %i.x ; 3 uses
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.047.us = phi ptr [ %i.bh, %.lr.ph.us.new ], [ %i.z, %.lr.ph.us ] ; 2 uses
  %.04045.us = phi ptr [ %i.bi, %.lr.ph.us.new ], [ %i.aa, %.lr.ph.us ] ; 4 uses
  %.04144.us = phi i32 [ %i.bk, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.ah = load i8, ptr %.047.us, align 1, !tbaa !36
  %i.ai = zext i8 %i.ah to i32
  %i.aj = zext nneg i32 %.04144.us to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = add nsw i32 %i.al, %i.ai
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ad, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !36
  %i.aq = load i8, ptr %.04045.us, align 1, !tbaa !36
  %i.ar = add i8 %i.aq, %i.ap
  store i8 %i.ar, ptr %.04045.us, align 1, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %.047.us, i64 %i.m ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04045.us, i64 1 ; 2 uses
  %i.au = add nuw nsw i32 %.04144.us, 1
  %i.av = and i32 %i.au, 15
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !36
  %i.ax = zext i8 %i.aw to i32
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = add nsw i32 %i.ba, %i.ax
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ad, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !36
  %i.bf = load i8, ptr %i.at, align 1, !tbaa !36
  %i.bg = add i8 %i.bf, %i.be
  store i8 %i.bg, ptr %i.at, align 1, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.m ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.04045.us, i64 2 ; 2 uses
  %i.bj = add nuw nsw i32 %.04144.us, 2
  %i.bk = and i32 %i.bj, 15                       ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !111

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.047.us.epil.init = phi ptr [ %i.z, %.lr.ph.us ], [ %i.bh, %._crit_edge.us.unr-lcssa ]
  %.04045.us.epil.init = phi ptr [ %i.aa, %.lr.ph.us ], [ %i.bi, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.04144.us.epil.init = phi i32 [ 0, %.lr.ph.us ], [ %i.bk, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.bl = load i8, ptr %.047.us.epil.init, align 1, !tbaa !36
  %i.bm = zext i8 %i.bl to i32
  %i.bn = zext nneg i32 %.04144.us.epil.init to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = add nsw i32 %i.bp, %i.bm
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.ad, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !36
  %i.bu = load i8, ptr %.04045.us.epil.init, align 1, !tbaa !36
  %i.bv = add i8 %i.bu, %i.bt
  store i8 %i.bv, ptr %.04045.us.epil.init, align 1, !tbaa !36
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge51.us, label %.lr.ph.us, !llvm.loop !112

._crit_edge51.us:                                 ; preds = %._crit_edge.us
  %i.bw = add nsw i32 %i.v, 1
  %i.bx = and i32 %i.bw, 15
  store i32 %i.bx, ptr %i.i, align 4, !tbaa !87
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count73
  br i1 %exitcond69.not, label %._crit_edge55, label %.lr.ph50.us, !llvm.loop !110

.lr.ph54.split:                                   ; preds = %.lr.ph54.split.preheader, %.lr.ph54.split
  %indvars.iv = phi i64 [ 0, %.lr.ph54.split.preheader ], [ %indvars.iv.next, %.lr.ph54.split ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  tail call void @jzero_far(ptr noundef %i.bz, i64 noundef %i.h) #8
  %i.ca = load i32, ptr %i.i, align 4, !tbaa !87
  %i.cb = add nsw i32 %i.ca, 1
  %i.cc = and i32 %i.cb, 15
  store i32 %i.cc, ptr %i.i, align 4, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.lr.ph54.split, !llvm.loop !110

._crit_edge55:                                    ; preds = %.lr.ph54.split, %._crit_edge51.us, %.lr.ph50.us.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_fs_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  %.fr114 = freeze i32 %i.b                       ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !80
  %.fr = freeze i32 %i.d                          ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 4 uses
  %i.j = zext i32 %.fr to i64                     ; 3 uses
  %i.k = icmp sgt i32 %.fr114, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 7 uses
  %i.m = add i32 %.fr, -1                         ; 2 uses
  %i.n = mul i32 %i.m, %.fr114
  %i.o = zext i32 %i.n to i64
  %i.p = zext i32 %i.m to i64
  %i.q = sub nsw i32 0, %.fr114
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 16 uses
  %i.s = add i32 %.fr, 1
  %i.t = zext i32 %i.s to i64                     ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br i1 %i.k, label %.lr.ph105.split.us, label %.lr.ph105.split.preheader

.lr.ph105.split.preheader:                        ; preds = %.lr.ph105
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph105.split

.lr.ph105.split.us:                               ; preds = %.lr.ph105
  %.not8990 = icmp eq i32 %.fr, 0
  %wide.trip.count143 = zext nneg i32 %3 to i64   ; 2 uses
  %wide.trip.count133 = zext nneg i32 %.fr114 to i64 ; 5 uses
  br i1 %.not8990, label %.lr.ph101.us.us.preheader, label %.lr.ph101.us

.lr.ph101.us.us.preheader:                        ; preds = %.lr.ph105.split.us
  %xtraiter = and i64 %wide.trip.count133, 3      ; 3 uses
  %i.w = icmp ult i32 %.fr114, 4
  %unroll_iter = and i64 %wide.trip.count133, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod157 = icmp ne i64 %xtraiter, 0
  %xtraiter158 = and i64 %wide.trip.count133, 7   ; 3 uses
  %i.x = icmp ult i32 %.fr114, 8
  %unroll_iter162 = and i64 %wide.trip.count133, 2147483640
  %lcmp.mod160.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod161 = icmp ne i64 %xtraiter158, 0
  br label %.lr.ph101.us.us

.lr.ph101.us.us:                                  ; preds = %.lr.ph101.us.us.preheader, %._crit_edge102.split.us.us.us
  %indvars.iv140 = phi i64 [ 0, %.lr.ph101.us.us.preheader ], [ %indvars.iv.next141, %._crit_edge102.split.us.us.us ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv140
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  tail call void @jzero_far(ptr noundef %i.z, i64 noundef %i.j) #8
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !93
  %.not88.us.us.us = icmp eq i32 %i.aa, 0         ; 2 uses
  br i1 %.not88.us.us.us, label %.lr.ph101.split.us.split.us.us.us.preheader, label %.lr.ph101.split.us.split.us113.us.preheader

.lr.ph101.split.us.split.us113.us.preheader:      ; preds = %.lr.ph101.us.us
  br i1 %i.w, label %.lr.ph101.split.us.split.us113.us.epil.preheader, label %.lr.ph101.split.us.split.us113.us

.lr.ph101.split.us.split.us.us.us.preheader:      ; preds = %.lr.ph101.us.us
  br i1 %i.x, label %.lr.ph101.split.us.split.us.us.us.epil.preheader, label %.lr.ph101.split.us.split.us.us.us

.lr.ph101.split.us.split.us113.us:                ; preds = %.lr.ph101.split.us.split.us113.us.preheader, %.lr.ph101.split.us.split.us113.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.3, %.lr.ph101.split.us.split.us113.us ], [ 0, %.lr.ph101.split.us.split.us113.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph101.split.us.split.us113.us ], [ 0, %.lr.ph101.split.us.split.us113.us.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.t
  store i16 0, ptr %i.ad, align 2, !tbaa !114
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.t
  store i16 0, ptr %i.ah, align 2, !tbaa !114
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.t
  store i16 0, ptr %i.al, align 2, !tbaa !114
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.t
  store i16 0, ptr %i.ap, align 2, !tbaa !114
  %indvars.iv.next131.3 = add nuw nsw i64 %indvars.iv130, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge102.split.us.us.us.loopexit153.unr-lcssa, label %.lr.ph101.split.us.split.us113.us, !llvm.loop !115

._crit_edge102.split.us.us.us.loopexit.unr-lcssa: ; preds = %.lr.ph101.split.us.split.us.us.us
  br i1 %lcmp.mod160.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us.us.us.epil.preheader

.lr.ph101.split.us.split.us.us.us.epil.preheader: ; preds = %._crit_edge102.split.us.us.us.loopexit.unr-lcssa, %.lr.ph101.split.us.split.us.us.us.preheader
  %indvars.iv135.epil.init = phi i64 [ 0, %.lr.ph101.split.us.split.us.us.us.preheader ], [ %indvars.iv.next136.7, %._crit_edge102.split.us.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph101.split.us.split.us.us.us.epil

.lr.ph101.split.us.split.us.us.us.epil:           ; preds = %.lr.ph101.split.us.split.us.us.us.epil, %.lr.ph101.split.us.split.us.us.us.epil.preheader
  %indvars.iv135.epil = phi i64 [ %indvars.iv.next136.epil, %.lr.ph101.split.us.split.us.us.us.epil ], [ %indvars.iv135.epil.init, %.lr.ph101.split.us.split.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter159 = phi i64 [ %epil.iter159.next, %.lr.ph101.split.us.split.us.us.us.epil ], [ 0, %.lr.ph101.split.us.split.us.us.us.epil.preheader ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50
  store i16 0, ptr %i.ar, align 2, !tbaa !114
  %indvars.iv.next136.epil = add nuw nsw i64 %indvars.iv135.epil, 1
  %epil.iter159.next = add i64 %epil.iter159, 1   ; 2 uses
  %epil.iter159.cmp.not = icmp eq i64 %epil.iter159.next, %xtraiter158
  br i1 %epil.iter159.cmp.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us.us.us.epil, !llvm.loop !116

._crit_edge102.split.us.us.us.loopexit153.unr-lcssa: ; preds = %.lr.ph101.split.us.split.us113.us
  br i1 %lcmp.mod.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us113.us.epil.preheader

.lr.ph101.split.us.split.us113.us.epil.preheader: ; preds = %._crit_edge102.split.us.us.us.loopexit153.unr-lcssa, %.lr.ph101.split.us.split.us113.us.preheader
  %indvars.iv130.epil.init = phi i64 [ 0, %.lr.ph101.split.us.split.us113.us.preheader ], [ %indvars.iv.next131.3, %._crit_edge102.split.us.us.us.loopexit153.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %.lr.ph101.split.us.split.us113.us.epil

.lr.ph101.split.us.split.us113.us.epil:           ; preds = %.lr.ph101.split.us.split.us113.us.epil, %.lr.ph101.split.us.split.us113.us.epil.preheader
  %indvars.iv130.epil = phi i64 [ %indvars.iv.next131.epil, %.lr.ph101.split.us.split.us113.us.epil ], [ %indvars.iv130.epil.init, %.lr.ph101.split.us.split.us113.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph101.split.us.split.us113.us.epil ], [ 0, %.lr.ph101.split.us.split.us113.us.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv130.epil
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.t
  store i16 0, ptr %i.au, align 2, !tbaa !114
  %indvars.iv.next131.epil = add nuw nsw i64 %indvars.iv130.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge102.split.us.us.us, label %.lr.ph101.split.us.split.us113.us.epil, !llvm.loop !117

._crit_edge102.split.us.us.us:                    ; preds = %._crit_edge102.split.us.us.us.loopexit153.unr-lcssa, %.lr.ph101.split.us.split.us113.us.epil, %._crit_edge102.split.us.us.us.loopexit.unr-lcssa, %.lr.ph101.split.us.split.us.us.us.epil
  %i.av = zext i1 %.not88.us.us.us to i32
  store i32 %i.av, ptr %i.l, align 8, !tbaa !93
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge106, label %.lr.ph101.us.us, !llvm.loop !118

.lr.ph101.split.us.split.us.us.us:                ; preds = %.lr.ph101.split.us.split.us.us.us.preheader, %.lr.ph101.split.us.split.us.us.us
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.7, %.lr.ph101.split.us.split.us.us.us ], [ 0, %.lr.ph101.split.us.split.us.us.us.preheader ] ; 9 uses
  %niter163 = phi i64 [ %niter163.next.7, %.lr.ph101.split.us.split.us.us.us ], [ 0, %.lr.ph101.split.us.split.us.us.us.preheader ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50
  store i16 0, ptr %i.ax, align 2, !tbaa !114
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50
  store i16 0, ptr %i.ba, align 2, !tbaa !114
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !50
  store i16 0, ptr %i.bd, align 2, !tbaa !114
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50
  store i16 0, ptr %i.bg, align 2, !tbaa !114
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50
  store i16 0, ptr %i.bj, align 2, !tbaa !114
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50
  store i16 0, ptr %i.bm, align 2, !tbaa !114
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50
  store i16 0, ptr %i.bp, align 2, !tbaa !114
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv135
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !50
  store i16 0, ptr %i.bs, align 2, !tbaa !114
  %indvars.iv.next136.7 = add nuw nsw i64 %indvars.iv135, 8 ; 2 uses
  %niter163.next.7 = add i64 %niter163, 8         ; 2 uses
  %niter163.ncmp.7 = icmp eq i64 %niter163.next.7, %unroll_iter162
  br i1 %niter163.ncmp.7, label %._crit_edge102.split.us.us.us.loopexit.unr-lcssa, label %.lr.ph101.split.us.split.us.us.us, !llvm.loop !115

.lr.ph101.us:                                     ; preds = %.lr.ph105.split.us, %._crit_edge102.split.us109
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %._crit_edge102.split.us109 ], [ 0, %.lr.ph105.split.us ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv125 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !72
  tail call void @jzero_far(ptr noundef %i.bu, i64 noundef %i.j) #8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv125
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph101.us, %._crit_edge.us
  %indvars.iv120 = phi i64 [ 0, %.lr.ph101.us ], [ %indvars.iv.next121, %._crit_edge.us ] ; 6 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv120 ; 2 uses
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !72 ; 2 uses
  %i.bz = load i32, ptr %i.l, align 8, !tbaa !93
  %.not88.us108 = icmp eq i32 %i.bz, 0
  br i1 %.not88.us108, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.p
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv120
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.t
  br label %.lr.ph.us

bb.d:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv120
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !50
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.d, %bb.c
  %.085.us = phi ptr [ %i.cb, %bb.c ], [ %i.by, %bb.d ]
  %.083.us = phi ptr [ %i.ca, %bb.c ], [ %i.bx, %bb.d ]
  %.082.us = phi ptr [ %i.ce, %bb.c ], [ %i.cg, %bb.d ]
  %.080.us = phi i64 [ -1, %bb.c ], [ 1, %bb.d ]  ; 2 uses
  %.079.us = phi i32 [ %i.q, %bb.c ], [ %.fr114, %bb.d ]
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv120
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !72
  %i.ck = load ptr, ptr %i.v, align 8, !tbaa !77
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv120
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !72
  %i.cn = sext i32 %.079.us to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.us
  %.097.us = phi i32 [ 0, %.lr.ph.us ], [ %i.dq, %bb.e ]
  %.07596.us = phi i32 [ 0, %.lr.ph.us ], [ %i.dk, %bb.e ]
  %.07695.us = phi i32 [ %.fr, %.lr.ph.us ], [ %i.dt, %bb.e ]
  %.08194.us = phi i32 [ 0, %.lr.ph.us ], [ %i.dp, %bb.e ]
  %.193.us = phi ptr [ %.082.us, %.lr.ph.us ], [ %i.co, %bb.e ] ; 2 uses
  %.18492.us = phi ptr [ %.083.us, %.lr.ph.us ], [ %i.dr, %bb.e ] ; 2 uses
  %.18691.us = phi ptr [ %.085.us, %.lr.ph.us ], [ %i.ds, %bb.e ] ; 3 uses
  %i.co = getelementptr inbounds [2 x i8], ptr %.193.us, i64 %.080.us ; 3 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !114
  %i.cq = sext i16 %i.cp to i32
  %i.cr = add nsw i32 %.097.us, 8
  %i.cs = add nsw i32 %i.cr, %i.cq
  %i.ct = ashr i32 %i.cs, 4
  %i.cu = load i8, ptr %.18492.us, align 1, !tbaa !36
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nsw i32 %i.ct, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.f, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !36  ; 2 uses
  %i.da = zext i8 %i.cz to i32
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !36  ; 2 uses
  %i.de = load i8, ptr %.18691.us, align 1, !tbaa !36
  %i.df = add i8 %i.de, %i.dd
  store i8 %i.df, ptr %.18691.us, align 1, !tbaa !36
  %i.dg = zext i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !36
  %i.dj = zext i8 %i.di to i32
  %i.dk = sub nsw i32 %i.da, %i.dj                ; 4 uses
  %i.dl = mul nsw i32 %i.dk, 3
  %i.dm = add nsw i32 %i.dl, %.08194.us
  %i.dn = trunc nsw i32 %i.dm to i16
  store i16 %i.dn, ptr %.193.us, align 2, !tbaa !114
  %i.do = mul nsw i32 %i.dk, 5
  %i.dp = add nsw i32 %i.do, %.07596.us           ; 2 uses
  %i.dq = mul nsw i32 %i.dk, 7
  %i.dr = getelementptr inbounds i8, ptr %.18492.us, i64 %i.cn
  %i.ds = getelementptr inbounds i8, ptr %.18691.us, i64 %.080.us
  %i.dt = add i32 %.07695.us, -1                  ; 2 uses
  %.not89.us = icmp eq i32 %i.dt, 0
  br i1 %.not89.us, label %._crit_edge.us, label %bb.e, !llvm.loop !119

._crit_edge.us:                                   ; preds = %bb.e
  %i.du = trunc nsw i32 %i.dp to i16
  store i16 %i.du, ptr %i.co, align 2, !tbaa !114
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count133
  br i1 %exitcond124.not, label %._crit_edge102.split.us109, label %bb.b, !llvm.loop !115

._crit_edge102.split.us109:                       ; preds = %._crit_edge.us
  %i.dv = load i32, ptr %i.l, align 8, !tbaa !93
  %.not.us = icmp eq i32 %i.dv, 0
  %i.dw = zext i1 %.not.us to i32
  store i32 %i.dw, ptr %i.l, align 8, !tbaa !93
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count143
  br i1 %exitcond129.not, label %._crit_edge106, label %.lr.ph101.us, !llvm.loop !118

.lr.ph105.split:                                  ; preds = %.lr.ph105.split.preheader, %.lr.ph105.split
  %indvars.iv = phi i64 [ 0, %.lr.ph105.split.preheader ], [ %indvars.iv.next, %.lr.ph105.split ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !72
  tail call void @jzero_far(ptr noundef %i.dy, i64 noundef %i.j) #8
  %i.dz = load i32, ptr %i.l, align 8, !tbaa !93
  %.not = icmp eq i32 %i.dz, 0
  %i.ea = zext i1 %.not to i32
  store i32 %i.ea, ptr %i.l, align 8, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge106, label %.lr.ph105.split, !llvm.loop !118

._crit_edge106:                                   ; preds = %.lr.ph105.split, %._crit_edge102.split.us109, %._crit_edge102.split.us.us.us, %bb.a
  ret void
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 296}
!8 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !15, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !19, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !20, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !17, i64 552, !4, i64 560, !4, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!8, !9, i64 0}
!33 = !{!34, !4, i64 40}
!34 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !35, i64 128, !15, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 164}
!35 = !{!"long", !5, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!34, !10, i64 0}
!38 = !{!8, !21, i64 568}
!39 = !{!40, !4, i64 20}
!40 = !{!"jpeg_decomp_master", !10, i64 0, !10, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 72, !4, i64 112, !4, i64 116, !19, i64 120}
!41 = !{!8, !11, i64 8}
!42 = !{!43, !10, i64 0}
!43 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !35, i64 88, !35, i64 96}
!44 = !{!8, !31, i64 648}
!45 = !{!46, !10, i64 0}
!46 = !{!"", !47, i64 0, !15, i64 40, !4, i64 48, !15, i64 56, !4, i64 64, !5, i64 68, !4, i64 84, !5, i64 88, !5, i64 120, !4, i64 152}
!47 = !{!"jpeg_color_quantizer", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!48 = !{!46, !10, i64 24}
!49 = !{!46, !10, i64 32}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 short", !10, i64 0}
!52 = !{!17, !17, i64 0}
!53 = !{!8, !4, i64 144}
!54 = !{!8, !4, i64 120}
!55 = !{!8, !4, i64 64}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !57}
!61 = distinct !{null, null}
!62 = distinct !{!62, !57, !63, !64}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = distinct !{!65, !57, !66}
!66 = !{!"llvm.loop.peeled.count", i32 1}
!67 = distinct !{!67, !57, !64, !63}
!68 = !{!34, !10, i64 8}
!69 = distinct !{null}
!70 = !{!43, !10, i64 16}
!71 = distinct !{!71, !57}
!72 = !{!20, !20, i64 0}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !59}
!75 = distinct !{!75, !57}
!76 = distinct !{!76, !57}
!77 = !{!46, !15, i64 40}
!78 = !{!46, !4, i64 48}
!79 = !{!8, !4, i64 112}
!80 = !{!8, !4, i64 136}
!81 = !{!43, !10, i64 8}
!82 = distinct !{null}
!83 = distinct !{!83, !57}
!84 = !{!8, !15, i64 160}
!85 = !{!8, !4, i64 156}
!86 = !{!46, !10, i64 8}
!87 = !{!46, !4, i64 84}
!88 = !{!46, !4, i64 64}
!89 = distinct !{!89, !57}
!90 = distinct !{null, null}
!91 = distinct !{!91, !57}
!92 = distinct !{!92, !57}
!93 = !{!46, !4, i64 152}
!94 = distinct !{!94, !57}
!95 = !{!46, !15, i64 56}
!96 = distinct !{!96, !57}
!97 = distinct !{!97, !57}
!98 = distinct !{!98, !57}
!99 = distinct !{!99, !57}
!100 = distinct !{!100, !57}
!101 = distinct !{!101, !57}
!102 = distinct !{!102, !57}
!103 = distinct !{!103, !59}
!104 = distinct !{!104, !57}
!105 = distinct !{!105, !57}
!106 = distinct !{!106, !59}
!107 = distinct !{!107, !57}
!108 = distinct !{!108, !59}
!109 = distinct !{!109, !57}
!110 = distinct !{!110, !57}
!111 = distinct !{!111, !57}
!112 = distinct !{!112, !57}
!113 = !{!8, !20, i64 432}
!114 = !{!18, !18, i64 0}
!115 = distinct !{!115, !57}
!116 = distinct !{!116, !59}
!117 = distinct !{!117, !59}
!118 = distinct !{!118, !57}
!119 = distinct !{!119, !57}
end_hunk_1
