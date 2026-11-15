Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/refmvs?download=true
inline.NumInlined: 71
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dav1d_refmvs_find:bb.a
  store i32 %.sink, ptr %9, align 4, !tbaa !16
  %i.al = icmp sgt i8 %.sroa.21.0.extract.trunc, 0 ; 2 uses
  br i1 %i.al, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.ao = zext nneg i16 %.sroa.21.0.extract.shift to i64
  %i.ap = getelementptr [36 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 860    ; 2 uses
  %i.ar = tail call fastcc i32 @get_gmv_2d(ptr noundef nonnull %i.aq, i32 noundef %8, i32 noundef %7, i32 noundef %i.q, i32 noundef %i.t, ptr noundef %i.an) ; 3 uses
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !27
  %i.au = icmp ugt i32 %i.at, 1
  %.749 = select i1 %i.au, i32 %i.ar, i32 -2147450880
  store i32 %.749, ptr %i.as, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.av = phi i32 [ undef, %bb.d ], [ %i.ar, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.aw = load i32, ptr %i.v, align 8, !tbaa !28  ; 2 uses
  %i.ax = icmp sgt i32 %7, %i.aw
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = add i32 %7, 1
  %i.az = sub i32 %i.ay, %i.aw
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %7, 31
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !29
  %i.bg = sext i32 %8 to i64
  %i.bh = getelementptr inbounds [12 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = icmp ugt <2 x i8> %i.n, <i8 15, i8 1>   ; 2 uses
  %i.bj = extractelement <2 x i1> %i.bi, i64 1
  %i.bk = select i1 %i.bj, i32 3, i32 2
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.bk) ; 2 uses
  %i.bm = extractelement <2 x i1> %i.bi, i64 0
  %i.bn = select i1 %i.bm, i32 4, i32 1
  %i.bo = call fastcc i32 @scan_row(ptr noundef %1, ptr noundef nonnull %2, i16 %4, ptr noundef %9, ptr noundef %i.bh, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.bl, i32 noundef %i.bn, ptr noundef %i.a, ptr noundef %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0570 = phi i32 [ %i.bl, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.0567 = phi i32 [ %i.bo, %bb.f ], [ -1, %bb.e ] ; 5 uses
  %.0566 = phi ptr [ %i.bh, %bb.f ], [ undef, %bb.e ] ; 4 uses
  %i.bp = load i32, ptr %i.j, align 8, !tbaa !30  ; 2 uses
  %i.bq = icmp sgt i32 %8, %i.bp
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.br = add i32 %8, 1
  %i.bs = sub i32 %i.br, %i.bp
  %i.bt = lshr i32 %i.bs, 1
  %i.bu = and i32 %7, 31
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 2 uses
  %i.by = add nsw i32 %8, -1
  %i.bz = icmp ugt <2 x i8> %i.n, <i8 1, i8 15>   ; 2 uses
  %i.ca = extractelement <2 x i1> %i.bz, i64 0
  %i.cb = select i1 %i.ca, i32 3, i32 2
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.cb) ; 2 uses
  %i.cd = extractelement <2 x i1> %i.bz, i64 1
  %i.ce = select i1 %i.cd, i32 4, i32 1
  %i.cf = call fastcc i32 @scan_col(ptr noundef %1, ptr noundef nonnull %2, i16 %4, ptr noundef %9, ptr noundef nonnull %i.bx, i32 noundef %i.t, i32 noundef %i.z, i32 noundef %i.by, i32 noundef %i.cc, i32 noundef %i.ce, ptr noundef %i.a, ptr noundef %i.b)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0565 = phi i32 [ %i.cc, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %.0563 = phi i32 [ %i.cf, %bb.h ], [ -1, %bb.g ] ; 4 uses
  %.0562 = phi ptr [ %i.bx, %bb.h ], [ undef, %bb.g ] ; 2 uses
  %.not = icmp ne i32 %.0567, -1
  %.not584 = trunc i32 %6 to i1
  %or.cond599.not607 = and i1 %.not, %.not584
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.q, i32 %i.t)
  %i.ch = icmp samesign ult i32 %i.cg, 17
  %or.cond604 = select i1 %or.cond599.not607, i1 %i.ch, i1 false
  br i1 %or.cond604, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ci = add nsw i32 %8, %i.q
  %i.cj = load i32, ptr %i.k, align 4, !tbaa !15
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = extractelement <2 x i8> %i.n, i64 0
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %.0566, i64 %i.cm
  call fastcc void @add_spatial_candidate(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 4, ptr noundef %i.cn, i16 %4, ptr noundef %9, ptr noundef %i.a, ptr noundef %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.co = load i32, ptr %i.b, align 4, !tbaa !18
  %i.cp = load i32, ptr %i.c, align 4, !tbaa !18
  %i.cq = add nsw i32 %i.cp, %i.co
  %i.cr = load i32, ptr %2, align 4, !tbaa !18    ; 11 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %i.cr to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ct = icmp ult i32 %i.cr, 4
  br i1 %i.ct, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod754 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod754)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.epil
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !32
  %i.cx = add nsw i32 %i.cw, 640
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !69

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 437
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !49
  %i.db = zext i8 %i.da to i32
  store i32 %i.db, ptr %i.d, align 4, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !50
  %.not585 = icmp eq i32 %i.dd, 0
  br i1 %.not585, label %bb.w, label %bb.m

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !32
  %i.dh = add nsw i32 %i.dg, 640
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !32
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !32
  %i.dl = add nsw i32 %i.dk, 640
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !32
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !32
  %i.dp = add nsw i32 %i.do, 640
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !32
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !32
  %i.dt = add nsw i32 %i.ds, 640
  store i32 %i.dt, ptr %i.dr, align 8, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.m:                                             ; preds = %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !51 ; 4 uses
  %i.dw = ashr i32 %7, 1                          ; 3 uses
  %i.dx = ashr i32 %8, 1                          ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !52
  %i.ea = and i32 %i.dw, 15
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = mul nsw i64 %i.dv, %i.eb
  %i.ed = sext i32 %i.dx to i64
  %i.ee = getelementptr [5 x i8], ptr %i.dz, i64 %i.ec
  %i.ef = getelementptr [5 x i8], ptr %i.ee, i64 %i.ed ; 2 uses
  %i.eg = extractelement <2 x i8> %i.n, i64 0
  %i.eh = icmp ugt i8 %i.eg, 15
  %i.ei = extractelement <2 x i8> %i.n, i64 1
  %i.ej = icmp ugt i8 %i.ei, 15                   ; 2 uses
  %i.ek = select i1 %i.ej, i32 2, i32 1
  %i.el = add nsw i32 %i.s, 1
  %i.em = ashr i32 %i.el, 1                       ; 2 uses
  %i.en = add nsw i32 %i.z, 1
  %i.eo = ashr i32 %i.en, 1                       ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.preheader621.lr.ph, label %bb.n

.preheader621.lr.ph:                              ; preds = %bb.m
  %i.eq = icmp sgt i32 %i.em, 0
  %i.er = zext i1 %i.ej to i64
  %i.es = shl i64 %i.dv, %i.er
  br i1 %i.eq, label %.preheader621.us.preheader, label %bb.n

.preheader621.us.preheader:                       ; preds = %.preheader621.lr.ph
  %i.et = select i1 %i.eh, i64 2, i64 1
  %13 = zext nneg i32 %i.em to i64
  br label %.preheader621.us

.preheader621.us:                                 ; preds = %.preheader621.us.preheader, %._crit_edge625.us
  %.0559627.us = phi i32 [ %i.ev, %._crit_edge625.us ], [ 0, %.preheader621.us.preheader ] ; 2 uses
  %.0560626.us = phi ptr [ %i.eu, %._crit_edge625.us ], [ %i.ef, %.preheader621.us.preheader ] ; 2 uses
  br label %._crit_edge628

bb.n:                                             ; preds = %._crit_edge625.us, %.preheader621.lr.ph, %bb.m
  %14 = call noundef i32 @llvm.smin.i32(i32 %i.q, i32 %i.t)
  %15 = icmp samesign ugt i32 %14, 1
  %16 = call i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483641) %i.q, i32 %i.t)
  %17 = icmp samesign ult i32 %16, 16
  %or.cond606 = select i1 %15, i1 %17, i1 false
  br i1 %or.cond606, label %bb.o, label %bb.w

._crit_edge625.us:                                ; preds = %._crit_edge628
  %i.eu = getelementptr inbounds [5 x i8], ptr %.0560626.us, i64 %i.es
  %i.ev = add nuw nsw i32 %.0559627.us, %i.ek     ; 2 uses
  %i.ew = icmp slt i32 %i.ev, %i.eo
  br i1 %i.ew, label %.preheader621.us, label %bb.n

._crit_edge628:                                   ; preds = %.preheader621.us, %._crit_edge628
  %indvars.iv667 = phi i64 [ 0, %.preheader621.us ], [ %indvars.iv.next668, %._crit_edge628 ] ; 3 uses
  %18 = getelementptr inbounds nuw [5 x i8], ptr %.0560626.us, i64 %indvars.iv667
  %19 = trunc nuw nsw i64 %indvars.iv667 to i32
  %20 = or i32 %.0559627.us, %19
  %.not598 = icmp eq i32 %20, 0
  %. = select i1 %.not598, ptr %i.d, ptr null
  call fastcc void @add_temporal_candidate(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %18, i16 %4, ptr noundef %., ptr noundef nonnull %10)
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, %i.et ; 2 uses
  %21 = icmp samesign ult i64 %indvars.iv.next668, %13
  br i1 %21, label %._crit_edge628, label %._crit_edge625.us

bb.o:                                             ; preds = %bb.n
  %i.ex = lshr i32 %i.t, 1                        ; 2 uses
  %i.ey = lshr i32 %i.q, 1                        ; 3 uses
  %i.ez = zext nneg i32 %i.ex to i64
  %i.fa = mul nsw i64 %i.dv, %i.ez
  %i.fb = getelementptr inbounds [5 x i8], ptr %i.ef, i64 %i.fa ; 3 uses
  %i.fc = add nsw i32 %i.ex, %i.dw                ; 2 uses
  %i.fd = load i32, ptr %i.w, align 4, !tbaa !17
  %i.fe = ashr i32 %i.fd, 1
  %i.ff = and i32 %i.dw, -8
  %i.fg = add nsw i32 %i.ff, 8                    ; 2 uses
  %i.fh = call noundef i32 @llvm.smin.i32(i32 %i.fe, i32 %i.fg)
  %i.fi = icmp slt i32 %i.fc, %i.fh               ; 2 uses
  br i1 %i.fi, label %bb.p, label %._crit_edge713

._crit_edge713:                                   ; preds = %bb.o
  %.pre715 = and i32 %i.dx, -8
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fj = load i32, ptr %i.j, align 8, !tbaa !30
  %i.fk = ashr i32 %i.fj, 1
  %i.fl = and i32 %i.dx, -8                       ; 3 uses
  %i.fm = call noundef i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483641) %i.fk, i32 %i.fl)
  %.not586.not = icmp sgt i32 %i.dx, %i.fm
  br i1 %.not586.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fn = getelementptr inbounds i8, ptr %i.fb, i64 -5
  call fastcc void @add_temporal_candidate(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.fn, i16 %4, ptr noundef null, ptr noundef null)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge713, %bb.q, %bb.p
  %.pre-phi716 = phi i32 [ %.pre715, %._crit_edge713 ], [ %i.fl, %bb.q ], [ %i.fl, %bb.p ]
  %i.fo = add nsw i32 %i.ey, %i.dx
  %i.fp = load i32, ptr %i.k, align 4, !tbaa !15
  %i.fq = ashr i32 %i.fp, 1
  %i.fr = add nsw i32 %.pre-phi716, 8
  %i.fs = call noundef i32 @llvm.smin.i32(i32 %i.fq, i32 %i.fr)
  %i.ft = icmp slt i32 %i.fo, %i.fs
  br i1 %i.ft, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  br i1 %i.fi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fu = zext nneg i32 %i.ey to i64
  %i.fv = getelementptr inbounds nuw [5 x i8], ptr %i.fb, i64 %i.fu
  call fastcc void @add_temporal_candidate(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.fv, i16 %4, ptr noundef null, ptr noundef null)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fw = load i32, ptr %i.w, align 4, !tbaa !17
  %i.fx = ashr i32 %i.fw, 1
  %i.fy = call noundef i32 @llvm.smin.i32(i32 %i.fx, i32 %i.fg)
  %.not587 = icmp sgt i32 %i.fc, %i.fy
  br i1 %.not587, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fz = zext nneg i32 %i.ey to i64
  %i.ga = sub nsw i64 %i.fz, %i.dv
  %i.gb = getelementptr inbounds [5 x i8], ptr %i.fb, i64 %i.ga
  call fastcc void @add_temporal_candidate(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.gb, i16 %4, ptr noundef null, ptr noundef null)
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %bb.u, %bb.v, %bb.r, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.gc = or i32 %.0563, %.0567
  %.not588 = icmp eq i32 %i.gc, -1
  br i1 %.not588, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gd = getelementptr inbounds i8, ptr %.0566, i64 -12
  call fastcc void @add_spatial_candidate(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull %i.gd, i16 %4, ptr noundef %9, ptr noundef %i.e, ptr noundef %i.c)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ge = and i32 %7, 31                          ; 2 uses
  %i.gf = or i32 %8, 1
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = and i32 %7, 30
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 56 ; 2 uses
  %i.gl = icmp ugt <2 x i8> %i.n, splat (i8 15)   ; 2 uses
  %i.gm = extractelement <2 x i1> %i.gl, i64 0
  %i.gn = select i1 %i.gm, i32 4, i32 2           ; 2 uses
  %i.go = extractelement <2 x i1> %i.gl, i64 1
  %i.gp = select i1 %i.go, i32 4, i32 2           ; 2 uses
  %i.gq = icmp ugt i32 %.0567, 1
  %.not596 = icmp samesign ult i32 %.0570, 2
  %or.cond600 = or i1 %i.gq, %.not596
  br i1 %or.cond600, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gr = add nsw i32 %i.ge, -3
  %i.gs = or i32 %i.gr, 1
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr [8 x i8], ptr %0, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 48
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !29
  %i.gx = getelementptr inbounds [12 x i8], ptr %i.gw, i64 %i.gg
  %i.gy = add nsw i32 %.0570, -1
  %i.gz = call fastcc i32 @scan_row(ptr noundef %1, ptr noundef nonnull %2, i16 %4, ptr noundef %9, ptr noundef nonnull %i.gx, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.gy, i32 noundef %i.gn, ptr noundef %i.e, ptr noundef %i.c)
  %i.ha = add nuw nsw i32 %i.gz, %.0567
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2569 = phi i32 [ %i.ha, %bb.z ], [ %.0567, %bb.y ] ; 3 uses
  %i.hb = icmp ugt i32 %.0563, 1
  %.not597 = icmp samesign ult i32 %.0565, 2
  %or.cond601 = or i1 %i.hb, %.not597
  br i1 %or.cond601, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hc = add i32 %8, -3
  %i.hd = or i32 %i.hc, 1
  %i.he = add nsw i32 %.0565, -1
  %i.hf = call fastcc i32 @scan_col(ptr noundef %1, ptr noundef nonnull %2, i16 %4, ptr noundef %9, ptr noundef nonnull %i.gk, i32 noundef %i.t, i32 noundef %i.z, i32 noundef %i.hd, i32 noundef %i.he, i32 noundef %i.gp, ptr noundef %i.e, ptr noundef %i.b)
  %i.hg = add nuw nsw i32 %i.hf, %.0563
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.2 = phi i32 [ %i.hg, %bb.ab ], [ %.0563, %bb.aa ] ; 3 uses
  %i.hh = icmp ugt i32 %.2569, 2
  %.not596.1 = icmp samesign ult i32 %.0570, 3
  %or.cond600.1 = or i1 %i.hh, %.not596.1
  br i1 %or.cond600.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = add nsw i32 %i.ge, -5
  %i.hj = or i32 %i.hi, 1
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr [8 x i8], ptr %0, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !29
  %i.ho = getelementptr inbounds [12 x i8], ptr %i.hn, i64 %i.gg
  %i.hp = call fastcc i32 @scan_row(ptr noundef %1, ptr noundef nonnull %2, i16 %4, ptr noundef %9, ptr noundef nonnull %i.ho, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 1, i32 noundef %i.gn, ptr noundef %i.e, ptr noundef %i.c)
  %i.hq = add nuw nsw i32 %i.hp, %.2569
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2569.1 = phi i32 [ %i.hq, %bb.ad ], [ %.2569, %bb.ac ] ; 2 uses
  %i.hr = icmp ugt i32 %.2, 2
  %.not597.1 = icmp samesign ult i32 %.0565, 3
  %or.cond601.1 = or i1 %i.hr, %.not597.1
  br i1 %or.cond601.1, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hs = add i32 %8, -5
  %i.ht = or i32 %i.hs, 1
  %i.hu = call fastcc i32 @scan_col(ptr noundef %1, ptr noundef nonnull %2, i16 %4, ptr noundef %9, ptr noundef nonnull %i.gk, i32 noundef %i.t, i32 noundef %i.z, i32 noundef %i.ht, i32 noundef 1, i32 noundef %i.gp, ptr noundef %i.e, ptr noundef %i.b)
  %i.hv = add nuw nsw i32 %i.hu, %.2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2.1 = phi i32 [ %i.hv, %bb.af ], [ %.2, %bb.ae ] ; 2 uses
  %i.hw = load i32, ptr %2, align 4, !tbaa !18    ; 2 uses
  %i.hx = icmp slt i32 %i.hw, 9
  call void @llvm.assume(i1 %i.hx)
  %i.hy = load i32, ptr %i.b, align 4, !tbaa !18
  %i.hz = load i32, ptr %i.c, align 4, !tbaa !18
  %i.ia = add nsw i32 %i.hz, %i.hy                ; 3 uses
  switch i32 %i.cq, label %bb.ak [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ib = call noundef i32 @llvm.smin.i32(i32 %i.ia, i32 2)
  %i.ic = icmp sgt i32 %i.ia, 0
  %i.id = zext i1 %i.ic to i32
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.ie = mul nsw i32 %i.ia, 3
  %i.if = call noundef i32 @llvm.smin.i32(i32 %i.ie, i32 4)
  %i.ig = load i32, ptr %i.a, align 4, !tbaa !18
  %i.ih = sub nsw i32 3, %i.ig
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.ii = load i32, ptr %i.a, align 4, !tbaa !18
  %i.ij = sub nsw i32 5, %i.ii
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.0556 = phi i32 [ undef, %bb.ag ], [ %i.ib, %bb.ah ], [ %i.if, %bb.ai ], [ 5, %bb.aj ] ; 2 uses
  %.0555 = phi i32 [ undef, %bb.ag ], [ %i.id, %bb.ah ], [ %i.ih, %bb.ai ], [ %i.ij, %bb.aj ] ; 4 uses
  %.not589636 = icmp eq i32 %i.cr, 0
  br i1 %.not589636, label %._crit_edge638, label %.preheader619

.loopexit620:                                     ; preds = %bb.am
  %.not589 = icmp eq i32 %.1552, 0
  br i1 %.not589, label %._crit_edge638.loopexit, label %.preheader619

.preheader619:                                    ; preds = %bb.ak, %.loopexit620
  %.0553637 = phi i32 [ %.1552, %.loopexit620 ], [ %i.cr, %bb.ak ] ; 2 uses
  %i.ik = icmp sgt i32 %.0553637, 1
  br i1 %i.ik, label %.lr.ph635.preheader, label %._crit_edge638.loopexit

.lr.ph635.preheader:                              ; preds = %.preheader619
  %wide.trip.count675 = zext nneg i32 %.0553637 to i64
  br label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635.preheader, %bb.am
  %indvars.iv672 = phi i64 [ 1, %.lr.ph635.preheader ], [ %indvars.iv.next673, %bb.am ] ; 3 uses
  %.0551633 = phi i32 [ 0, %.lr.ph635.preheader ], [ %.1552, %bb.am ]
  %i.il = getelementptr [16 x i8], ptr %1, i64 %indvars.iv672 ; 5 uses
  %i.im = getelementptr i8, ptr %i.il, i64 -8
  %i.in = load i32, ptr %i.im, align 8, !tbaa !32
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !32
  %i.iq = icmp slt i32 %i.in, %i.ip
  br i1 %i.iq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph635
  %i.ir = getelementptr i8, ptr %i.il, i64 -16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.ir, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.il, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.is = trunc nuw nsw i64 %indvars.iv672 to i32
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph635, %bb.al
  %.1552 = phi i32 [ %i.is, %bb.al ], [ %.0551633, %.lr.ph635 ] ; 3 uses
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count675
  br i1 %exitcond676.not, label %.loopexit620, label %.lr.ph635

._crit_edge638.loopexit:                          ; preds = %.preheader619, %.loopexit620
  %.pre = load i32, ptr %2, align 4, !tbaa !18
  br label %._crit_edge638

._crit_edge638:                                   ; preds = %._crit_edge638.loopexit, %bb.ak
  %i.it = phi i32 [ %.pre, %._crit_edge638.loopexit ], [ %i.hw, %bb.ak ] ; 2 uses
  %i.iu = icmp sgt i32 %i.it, %i.cr
  br i1 %i.iu, label %.preheader617.lr.ph, label %._crit_edge646

.preheader617.lr.ph:                              ; preds = %._crit_edge638
  %.0547639 = add nsw i32 %i.cr, 1
  %i.iv = sext i32 %i.cr to i64
  %i.iw = add nsw i64 %i.iv, 1
  br label %.preheader617

.loopexit618:                                     ; preds = %bb.ao
  %i.ix = icmp sgt i32 %.1549, %i.cr
  br i1 %i.ix, label %.preheader617, label %._crit_edge646

.preheader617:                                    ; preds = %.preheader617.lr.ph, %.loopexit618
  %.1554645 = phi i32 [ %i.it, %.preheader617.lr.ph ], [ %.1549, %.loopexit618 ] ; 2 uses
  %i.iy = icmp slt i32 %.0547639, %.1554645
  br i1 %i.iy, label %.lr.ph643, label %._crit_edge646

.lr.ph643:                                        ; preds = %.preheader617, %bb.ao
  %indvars.iv677 = phi i64 [ %indvars.iv.next678, %bb.ao ], [ %i.iw, %.preheader617 ] ; 4 uses
  %.0547.in641 = phi i32 [ %.pre-phi, %bb.ao ], [ %i.cr, %.preheader617 ]
  %.0548640 = phi i32 [ %.1549, %bb.ao ], [ %i.cr, %.preheader617 ]
  %i.iz = sext i32 %.0547.in641 to i64
  %i.ja = getelementptr inbounds [16 x i8], ptr %1, i64 %i.iz ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !32
  %i.jd = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv677 ; 3 uses
end_hunk_0
