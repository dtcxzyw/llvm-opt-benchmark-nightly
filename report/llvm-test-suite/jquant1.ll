inline.NumInlined: 9
inline.NumDeleted: 7
begin_hunk_0_@jinit_1pass_quantizer:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !60
  %i.ba = icmp eq i32 %i.az, 2
  %spec.select.i64.i = zext i1 %i.ba to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %spec.select.i64.i ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.bd = sdiv i32 %.lcssa60, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = add nsw i32 %i.bc, 1                    ; 3 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %i.be, %i.bg                ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, %i.ad
  br i1 %i.bi, label %select_ncolors.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph64.us.preheader.i.i
  %exitcond87.peel.not.i.i = icmp eq i32 %i.ac, 1
  br i1 %exitcond87.peel.not.i.i, label %._crit_edge.us70.i.us.i, label %.peel.next.i.preheader.i

._crit_edge.us70.i.us.i:                          ; preds = %.lr.ph.i, %._crit_edge.us70.i.us.i
  %i.bj = phi i64 [ %i.bv, %._crit_edge.us70.i.us.i ], [ %i.bh, %.lr.ph.i ]
  %i.bk = phi i32 [ %i.bt, %._crit_edge.us70.i.us.i ], [ %i.bf, %.lr.ph.i ]
  %i.bl = phi ptr [ %i.bp, %._crit_edge.us70.i.us.i ], [ %i.bb, %.lr.ph.i ]
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !4
  %i.bm = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bn = load i32, ptr %i.ay, align 8, !tbaa !60
  %i.bo = icmp eq i32 %i.bn, 2
  %spec.select.i.us.i = zext i1 %i.bo to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %spec.select.i.us.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 2 uses
  %i.br = sdiv i32 %i.bm, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = add nsw i32 %i.bq, 1                    ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.bs, %i.bu                ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, %i.ad
  br i1 %i.bw, label %select_ncolors.exit.i, label %._crit_edge.us70.i.us.i

.peel.next.i.preheader.i:                         ; preds = %.lr.ph.i, %._crit_edge.us70.i.loopexit.i
  %i.bx = phi i64 [ %i.cz, %._crit_edge.us70.i.loopexit.i ], [ %i.bh, %.lr.ph.i ]
  %i.by = phi i32 [ %i.cx, %._crit_edge.us70.i.loopexit.i ], [ %i.bf, %.lr.ph.i ]
  %i.bz = phi ptr [ %i.ct, %._crit_edge.us70.i.loopexit.i ], [ %i.bb, %.lr.ph.i ]
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !4
  %i.ca = trunc i64 %i.bx to i32
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.l, %.peel.next.i.preheader.i
  %indvars.iv84.i.i = phi i64 [ %indvars.iv.next85.i.i, %bb.l ], [ 1, %.peel.next.i.preheader.i ] ; 3 uses
  %.262.us.i.i = phi i32 [ %i.cq, %bb.l ], [ %i.ca, %.peel.next.i.preheader.i ] ; 2 uses
  %i.cb = load i32, ptr %i.ay, align 8, !tbaa !60 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 2
  %i.cd = trunc nuw nsw i64 %indvars.iv84.i.i to i32
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.peel.next.i.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @select_ncolors.RGB_order, i64 %indvars.iv84.i.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.peel.next.i.i
  %i.cg = phi i32 [ %i.cf, %bb.j ], [ %i.cd, %.peel.next.i.i ]
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.ck = sdiv i32 %.262.us.i.i, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add nsw i32 %i.cj, 1                    ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %i.cl, %i.cn                ; 2 uses
  %i.cp = icmp sgt i64 %i.co, %i.ad
  br i1 %i.cp, label %._crit_edge.us70.i.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.cm, ptr %i.ci, align 4, !tbaa !4
  %i.cq = trunc i64 %i.co to i32                  ; 2 uses
  %indvars.iv.next85.i.i = add nuw nsw i64 %indvars.iv84.i.i, 1 ; 2 uses
  %exitcond87.not.i.i = icmp eq i64 %indvars.iv.next85.i.i, %wide.trip.count82.i.i
  br i1 %exitcond87.not.i.i, label %.._crit_edge.us70.i.loopexit_crit_edge.i, label %.peel.next.i.i, !llvm.loop !61

.._crit_edge.us70.i.loopexit_crit_edge.i:         ; preds = %bb.l
  %.pre.i = load i32, ptr %i.ay, align 8, !tbaa !60
  br label %._crit_edge.us70.i.loopexit.i, !llvm.loop !61

._crit_edge.us70.i.loopexit.i:                    ; preds = %bb.k, %.._crit_edge.us70.i.loopexit_crit_edge.i
  %i.cr = phi i32 [ %.pre.i, %.._crit_edge.us70.i.loopexit_crit_edge.i ], [ %i.cb, %bb.k ]
  %.2.lcssa.us.i.ph.i = phi i32 [ %i.cq, %.._crit_edge.us70.i.loopexit_crit_edge.i ], [ %.262.us.i.i, %bb.k ] ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 2
  %spec.select.i.i = zext i1 %i.cs to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %spec.select.i.i ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4  ; 2 uses
  %i.cv = sdiv i32 %.2.lcssa.us.i.ph.i, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add nsw i32 %i.cu, 1                    ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i64 %i.cw, %i.cy                ; 2 uses
  %i.da = icmp sgt i64 %i.cz, %i.ad
  br i1 %i.da, label %select_ncolors.exit.i, label %.peel.next.i.preheader.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv79.i.i = phi i64 [ %indvars.iv.next80.i.i, %.lr.ph.i.i ], [ %indvars.iv79.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.04560.i.i = phi i32 [ %i.dc, %.lr.ph.i.i ], [ %.04560.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv79.i.i
  store i32 %.us-phi.i.i, ptr %i.db, align 4, !tbaa !4
  %i.dc = mul nuw nsw i32 %.04560.i.i, %.us-phi.i.i ; 2 uses
  %indvars.iv.next80.i.i = add nuw nsw i64 %indvars.iv79.i.i, 1 ; 2 uses
  %exitcond83.not.i.i = icmp eq i64 %indvars.iv.next80.i.i, %wide.trip.count82.i.i
  br i1 %exitcond83.not.i.i, label %.lr.ph64.us.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !63

select_ncolors.exit.i:                            ; preds = %._crit_edge.us70.i.loopexit.i, %._crit_edge.us70.i.us.i, %.lr.ph64.us.preheader.i.i, %bb.i
  %.us-phi73.i.i = phi i32 [ 1, %bb.i ], [ %.lcssa60, %.lr.ph64.us.preheader.i.i ], [ %i.bm, %._crit_edge.us70.i.us.i ], [ %.2.lcssa.us.i.ph.i, %._crit_edge.us70.i.loopexit.i ] ; 6 uses
  %i.dd = load i32, ptr %i.j, align 8, !tbaa !44
  %i.de = icmp eq i32 %i.dd, 3
  %i.df = load ptr, ptr %0, align 8, !tbaa !45    ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 44
  store i32 %.us-phi73.i.i, ptr %i.dg, align 4, !tbaa !48
  br i1 %i.de, label %bb.m, label %bb.n

bb.m:                                             ; preds = %select_ncolors.exit.i
  %i.dh = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 52
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !4
  br label %bb.o

bb.n:                                             ; preds = %select_ncolors.exit.i
  %i.dp = load ptr, ptr %0, align 8, !tbaa !45
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink = phi i32 [ 93, %bb.m ], [ 94, %bb.n ]
  %.sink.i = phi ptr [ %i.df, %bb.m ], [ %i.dp, %bb.n ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store i32 %.sink, ptr %i.dq, align 8, !tbaa !46
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !64
  tail call void %i.ds(ptr noundef nonnull %0, i32 noundef 1) #7, !inline_history !65
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !66
  %i.dw = load i32, ptr %i.j, align 8, !tbaa !44
  %i.dx = tail call ptr %i.dv(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %.us-phi73.i.i, i32 noundef %i.dw) #7, !inline_history !65 ; 2 uses
  %i.dy = load i32, ptr %i.j, align 8, !tbaa !44  ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph75.preheader.i, label %create_colormap.exit

.lr.ph75.preheader.i:                             ; preds = %bb.o
  %i.ea = sext i32 %.us-phi73.i.i to i64
  br label %.lr.ph75.i

.lr.ph75.i:                                       ; preds = %._crit_edge72.i, %.lr.ph75.preheader.i
  %i.eb = phi i32 [ %i.dy, %.lr.ph75.preheader.i ], [ %i.fl, %._crit_edge72.i ] ; 2 uses
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph75.preheader.i ], [ %indvars.iv.next93.i, %._crit_edge72.i ] ; 3 uses
  %.06073.i = phi i32 [ %.us-phi73.i.i, %.lr.ph75.preheader.i ], [ %.fr76.i, %._crit_edge72.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv92.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4  ; 4 uses
  %i.ee = sdiv i32 %.06073.i, %i.ed
  %.fr76.i = freeze i32 %i.ee                     ; 5 uses
  %i.ef = icmp sgt i32 %i.ed, 0
  br i1 %i.ef, label %.lr.ph71.i, label %._crit_edge72.i

.lr.ph71.i:                                       ; preds = %.lr.ph75.i
  %i.eg = add nsw i32 %i.ed, -1                   ; 2 uses
  %i.eh = lshr i32 %i.eg, 1
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = zext nneg i32 %i.eg to i64
  %i.ek = icmp sgt i32 %.fr76.i, 0
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv92.i ; 5 uses
  br i1 %i.ek, label %.lr.ph71.split.us.preheader.i, label %._crit_edge72.i

.lr.ph71.split.us.preheader.i:                    ; preds = %.lr.ph71.i
  %i.em = zext nneg i32 %.fr76.i to i64           ; 3 uses
  %i.en = sext i32 %.06073.i to i64
  %wide.trip.count90.i = zext nneg i32 %i.ed to i64
  %xtraiter75 = and i64 %i.em, 3                  ; 3 uses
  %i.eo = icmp ult i32 %.fr76.i, 4
  %unroll_iter79 = and i64 %i.em, 2147483644
  %lcmp.mod77.not = icmp eq i64 %xtraiter75, 0
  %lcmp.mod78 = icmp ne i64 %xtraiter75, 0
  br label %.lr.ph71.split.us.i

.lr.ph71.split.us.i:                              ; preds = %._crit_edge68.us.i, %.lr.ph71.split.us.preheader.i
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph71.split.us.preheader.i ], [ %indvars.iv.next88.i, %._crit_edge68.us.i ] ; 3 uses
  %indvars.iv82.i = phi i64 [ 0, %.lr.ph71.split.us.preheader.i ], [ %indvars.iv.next83.i, %._crit_edge68.us.i ] ; 2 uses
  %i.ep = trunc i64 %indvars.iv87.i to i32
  %i.eq = mul i32 %.fr76.i, %i.ep
  %i.er = icmp slt i32 %i.eq, %.us-phi73.i.i
  br i1 %i.er, label %.preheader.lr.ph.us.i, label %._crit_edge68.us.i

._crit_edge68.us.i:                               ; preds = %._crit_edge.us.i, %.lr.ph71.split.us.i
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, %i.em
  %exitcond91.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count90.i
  br i1 %exitcond91.not.i, label %._crit_edge72.loopexit.i, label %.lr.ph71.split.us.i, !llvm.loop !67

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 5 uses
  %niter80 = phi i64 [ %niter80.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.es = load ptr, ptr %i.el, align 8, !tbaa !68
  %i.et = getelementptr i8, ptr %i.es, i64 %indvars.iv.i
  %i.eu = getelementptr i8, ptr %i.et, i64 %indvars.iv84.i
  store i8 %4, ptr %i.eu, align 1, !tbaa !48
  %i.ev = load ptr, ptr %i.el, align 8, !tbaa !68
  %i.ew = getelementptr i8, ptr %i.ev, i64 %indvars.iv.i
  %i.ex = getelementptr i8, ptr %i.ew, i64 1
  %i.ey = getelementptr i8, ptr %i.ex, i64 %indvars.iv84.i
  store i8 %4, ptr %i.ey, align 1, !tbaa !48
  %i.ez = load ptr, ptr %i.el, align 8, !tbaa !68
  %i.fa = getelementptr i8, ptr %i.ez, i64 %indvars.iv.i
  %i.fb = getelementptr i8, ptr %i.fa, i64 2
  %i.fc = getelementptr i8, ptr %i.fb, i64 %indvars.iv84.i
  store i8 %4, ptr %i.fc, align 1, !tbaa !48
  %i.fd = load ptr, ptr %i.el, align 8, !tbaa !68
  %i.fe = getelementptr i8, ptr %i.fd, i64 %indvars.iv.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 3
  %i.fg = getelementptr i8, ptr %i.ff, i64 %indvars.iv84.i
  store i8 %4, ptr %i.fg, align 1, !tbaa !48
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter80.next.3 = add i64 %niter80, 4           ; 2 uses
  %niter80.ncmp.3 = icmp eq i64 %niter80.next.3, %unroll_iter79
  br i1 %niter80.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !69

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.us.i, %._crit_edge.us.i
  %indvars.iv84.i = phi i64 [ %indvars.iv82.i, %.preheader.lr.ph.us.i ], [ %indvars.iv.next85.i, %._crit_edge.us.i ] ; 6 uses
  br i1 %i.eo, label %.epil.preheader74, label %.preheader.us.i.new

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod77.not, label %._crit_edge.us.i, label %.epil.preheader74

.epil.preheader74:                                ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader74
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader74 ], [ %indvars.iv.next.i.epil, %bb.p ] ; 2 uses
  %epil.iter76 = phi i64 [ 0, %.epil.preheader74 ], [ %epil.iter76.next, %bb.p ]
  %i.fh = load ptr, ptr %i.el, align 8, !tbaa !68
  %i.fi = getelementptr i8, ptr %i.fh, i64 %indvars.iv.i.epil
  %i.fj = getelementptr i8, ptr %i.fi, i64 %indvars.iv84.i
  store i8 %4, ptr %i.fj, align 1, !tbaa !48
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter76.next = add i64 %epil.iter76, 1     ; 2 uses
  %epil.iter76.cmp.not = icmp eq i64 %epil.iter76.next, %xtraiter75
  br i1 %epil.iter76.cmp.not, label %._crit_edge.us.i, label %bb.p, !llvm.loop !70

._crit_edge.us.i:                                 ; preds = %bb.p, %._crit_edge.us.i.unr-lcssa
  %indvars.iv.next85.i = add nsw i64 %indvars.iv84.i, %i.en ; 2 uses
  %i.fk = icmp slt i64 %indvars.iv.next85.i, %i.ea
  br i1 %i.fk, label %.preheader.us.i, label %._crit_edge68.us.i, !llvm.loop !71

.preheader.lr.ph.us.i:                            ; preds = %.lr.ph71.split.us.i
  %1 = mul nuw nsw i64 %indvars.iv87.i, 255
  %2 = add nuw nsw i64 %1, %i.ei
  %3 = udiv i64 %2, %i.ej
  %4 = trunc i64 %3 to i8                         ; 5 uses
  br label %.preheader.us.i

._crit_edge72.loopexit.i:                         ; preds = %._crit_edge68.us.i
  %.pre95.i = load i32, ptr %i.j, align 8, !tbaa !44
  br label %._crit_edge72.i

._crit_edge72.i:                                  ; preds = %._crit_edge72.loopexit.i, %.lr.ph71.i, %.lr.ph75.i
  %i.fl = phi i32 [ %i.eb, %.lr.ph75.i ], [ %.pre95.i, %._crit_edge72.loopexit.i ], [ %i.eb, %.lr.ph71.i ] ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next93.i, %i.fm
  br i1 %i.fn, label %.lr.ph75.i, label %create_colormap.exit, !llvm.loop !72

create_colormap.exit:                             ; preds = %._crit_edge72.i, %bb.o
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.dx, ptr %i.fo, align 8, !tbaa !73
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 %.us-phi73.i.i, ptr %i.fp, align 8, !tbaa !74
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !75
  %i.fs = icmp eq i32 %i.fr, 2
  br i1 %i.fs, label %bb.q, label %alloc_fs_workspace.exit

bb.q:                                             ; preds = %create_colormap.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !76
  %i.fv = add i32 %i.fu, 2
  %i.fw = zext i32 %i.fv to i64
  %i.fx = shl nuw nsw i64 %i.fw, 1
  %i.fy = load i32, ptr %i.j, align 8, !tbaa !44
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph.i23, label %alloc_fs_workspace.exit

.lr.ph.i23:                                       ; preds = %bb.q
  %i.ga = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 112
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i23
  %indvars.iv.i24 = phi i64 [ 0, %.lr.ph.i23 ], [ %indvars.iv.next.i25, %bb.r ] ; 2 uses
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !77
  %i.gf = tail call ptr %i.ge(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.fx) #7, !inline_history !78
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.i24
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !41
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %i.gh = load i32, ptr %i.j, align 8, !tbaa !44
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next.i25, %i.gi
  br i1 %i.gj, label %bb.r, label %alloc_fs_workspace.exit, !llvm.loop !79

alloc_fs_workspace.exit:                          ; preds = %bb.r, %bb.q, %create_colormap.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_1_quant(ptr noundef initializes((148, 160)) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.d, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.g, ptr %i.h, align 4, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75
  switch i32 %i.j, label %bb.o [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load i32, ptr %i.k, align 8, !tbaa !44
  %i.m = icmp eq i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @color_quantize3, ptr %i.n, align 8, !tbaa !82
  br label %create_odither_tables.exit

bb.d:                                             ; preds = %bb.b
  store ptr @color_quantize, ptr %i.n, align 8, !tbaa !82
  br label %create_odither_tables.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !44
  %i.q = icmp eq i32 %i.p, 3
  %spec.select = select i1 %i.q, ptr @quantize3_ord_dither, ptr @quantize_ord_dither
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %spec.select, ptr %i.r, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 0, ptr %i.s, align 4, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !84
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %create_odither_tables.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph26.i, label %create_odither_tables.exit

.lr.ph26.i:                                       ; preds = %bb.h
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 60 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %make_odither_array.exit.i, %.lr.ph26.i
  %i.ae = phi i32 [ %i.y, %.lr.ph26.i ], [ %i.gh, %make_odither_array.exit.i ]
  %indvars.iv29.i = phi i64 [ 0, %.lr.ph26.i ], [ %indvars.iv.next30.i, %make_odither_array.exit.i ] ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv29.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv29.i, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv29.i
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph.i, !llvm.loop !85

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread.i, label %make_odither_array.exit.i

.thread.i:                                        ; preds = %bb.j, %bb.k, %bb.i
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32
  %i.ap = tail call ptr %i.ao(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #7, !inline_history !86 ; 2 uses
  %i.aq = add nsw i32 %i.ag, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 9                    ; 16 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.thread.i
  %indvars.iv.i.i = phi i64 [ 0, %.thread.i ], [ %indvars.iv.next.i.i, %.preheader.i.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr @base_dither_matrix, i64 %indvars.iv.i.i ; 16 uses
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %indvars.iv.i.i ; 16 uses
  %i.av = load i8, ptr %i.at, align 16, !tbaa !48
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 1
  %i.ay = sub nsw i32 255, %i.ax
  %narrow.i.i = mul nsw i32 %i.ay, 255
  %i.az = sext i32 %narrow.i.i to i64
  %i.ba = sdiv i64 %i.az, %i.as
  %i.bb = trunc nsw i64 %i.ba to i32
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !48
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = sub nsw i32 255, %i.bf
  %narrow.1.i.i = mul nsw i32 %i.bg, 255
  %i.bh = sext i32 %narrow.1.i.i to i64
  %i.bi = sdiv i64 %i.bh, %i.as
  %i.bj = trunc nsw i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !48
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 1
  %i.bp = sub nsw i32 255, %i.bo
  %narrow.2.i.i = mul nsw i32 %i.bp, 255
  %i.bq = sext i32 %narrow.2.i.i to i64
  %i.br = sdiv i64 %i.bq, %i.as
  %i.bs = trunc nsw i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !48
end_hunk_0
