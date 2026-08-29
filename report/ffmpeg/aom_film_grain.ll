Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aom_film_grain?download=true
inline.NumInlined: 164
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_aom_apply_film_grain:bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 76) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = load i32, ptr %2, align 8, !tbaa !27
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 77) #8
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.e, align 8, !tbaa !29
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = load ptr, ptr %1, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.af = mul nsw i32 %i.ae, %i.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  tail call void @av_image_copy_plane(ptr noundef %i.x, i32 noundef %i.z, ptr noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.af, i32 noundef %i.ah) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !31
  %.not55 = icmp eq i32 %i.an, 0
  br i1 %.not55, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.av = load i32, ptr %i.au, align 4, !tbaa !31
  %i.aw = load i32, ptr %i.al, align 8, !tbaa !32
  %i.ax = sub nsw i32 0, %i.aw
  %i.ay = ashr i32 %i.ax, %i.k
  %i.az = mul i32 %i.ay, %i.p
  %i.ba = sub i32 0, %i.az
  %i.bb = load i32, ptr %i.am, align 4, !tbaa !33
  %i.bc = sub nsw i32 0, %i.bb
  %i.bd = ashr i32 %i.bc, %i.n
  %i.be = sub nsw i32 0, %i.bd
  tail call void @av_image_copy_plane(ptr noundef %i.ap, i32 noundef %i.ar, ptr noundef %i.at, i32 noundef %i.av, i32 noundef %i.ba, i32 noundef %i.be) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !31
  %.not55.1 = icmp eq i32 %i.bg, 0
  br i1 %.not55.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !31
  %i.bp = load i32, ptr %i.al, align 8, !tbaa !32
  %i.bq = sub nsw i32 0, %i.bp
  %i.br = ashr i32 %i.bq, %i.k
  %i.bs = mul i32 %i.br, %i.p
  %i.bt = sub i32 0, %i.bs
  %i.bu = load i32, ptr %i.am, align 4, !tbaa !33
  %i.bv = sub nsw i32 0, %i.bu
  %i.bw = ashr i32 %i.bv, %i.n
  %i.bx = sub nsw i32 0, %i.bw
  tail call void @av_image_copy_plane(ptr noundef %i.bi, i32 noundef %i.bk, ptr noundef %i.bm, i32 noundef %i.bo, i32 noundef %i.bt, i32 noundef %i.bx) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.by = load i32, ptr %i.r, align 4, !tbaa !9
  switch i32 %i.by, label %bb.ar [
    i32 8, label %bb.l
    i32 0, label %bb.l
    i32 4, label %bb.l
    i32 5, label %bb.l
    i32 12, label %bb.l
    i32 13, label %bb.l
    i32 14, label %bb.l
    i32 173, label %bb.ao
    i32 60, label %bb.ao
    i32 70, label %bb.ao
    i32 66, label %bb.ao
    i32 168, label %bb.ap
    i32 62, label %bb.ap
    i32 64, label %bb.ap
    i32 68, label %bb.ap
    i32 166, label %bb.aq
    i32 123, label %bb.aq
    i32 127, label %bb.aq
    i32 131, label %bb.aq
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.bz = load i32, ptr %i.f, align 4, !tbaa !9
  %i.ca = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.bz) #8 ; 2 uses
  %i.cb = load i32, ptr %i.am, align 4, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !34
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !35
  %i.cl = add nsw i32 %i.ck, 4                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !37
  %i.co = shl nuw i32 1, %i.cl
  %i.cp = ashr i32 %i.co, 1
  br label %.preheader55.i.i

.preheader55.i.i:                                 ; preds = %bb.n, %bb.l
  %indvars.iv91.i.i = phi i64 [ 0, %bb.l ], [ %indvars.iv.next92.i.i, %bb.n ] ; 2 uses
  %.05158.i.i = phi i32 [ %i.ci, %bb.l ], [ %i.ej, %bb.n ]
  %i.cq = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %indvars.iv91.i.i
  br label %bb.o

.preheader54.i.i:                                 ; preds = %bb.n
  %i.cr = add nsw i32 %i.cb, 31
  %i.cs = ashr i32 %i.cr, 5                       ; 2 uses
  %i.ct = zext i8 %i.cd to i32                    ; 8 uses
  %i.cu = zext i8 %i.cf to i32                    ; 10 uses
  %.fr.i.i = freeze i32 %i.cn                     ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.cw = sub i32 0, %.fr.i.i                     ; 2 uses
  %i.cx = icmp sgt i32 %.fr.i.i, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  br i1 %i.cx, label %.preheader53.us.preheader.i.i, label %.preheader53.i.preheader.i

.preheader53.i.preheader.i:                       ; preds = %.preheader54.i.i
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !38 ; 2 uses
  %i.da = shl nuw i32 1, %i.cz
  %i.db = ashr i32 %i.da, 1
  %i.dc = ashr i32 %i.db, %i.cz                   ; 2 uses
  %broadcast.splatinsert89 = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat90 = shufflevector <4 x i32> %broadcast.splatinsert89, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %iter.check

.preheader53.us.preheader.i.i:                    ; preds = %.preheader54.i.i
  %i.dd = sext i32 %i.cw to i64                   ; 2 uses
  %i.de = zext nneg i32 %.fr.i.i to i64
  %i.df = load i32, ptr %i.cy, align 8, !tbaa !38 ; 2 uses
  %i.dg = shl nuw i32 1, %i.df
  %i.dh = ashr i32 %i.dg, 1
  br label %.preheader53.us.i.i

.preheader53.us.i.i:                              ; preds = %.split.us.split.us82.i.i, %.preheader53.us.preheader.i.i
  %indvars.iv114.i.i = phi i64 [ 3, %.preheader53.us.preheader.i.i ], [ %indvars.iv.next115.i.i, %.split.us.split.us82.i.i ] ; 2 uses
  %i.di = getelementptr [82 x i8], ptr %i.c, i64 %indvars.iv114.i.i
  br label %.preheader.lr.ph.us.us79.i.i

.preheader.lr.ph.us.us79.i.i:                     ; preds = %._crit_edge70.split.us75.us.i.i, %.preheader53.us.i.i
  %indvars.iv110.i.i = phi i64 [ 3, %.preheader53.us.i.i ], [ %indvars.iv.next111.i.i, %._crit_edge70.split.us75.us.i.i ] ; 2 uses
  %invariant.gep123.i.i = getelementptr i8, ptr %i.di, i64 %indvars.iv110.i.i ; 3 uses
  br label %.preheader.us73.us.i.i

bb.m:                                             ; preds = %.lr.ph.us.us.i.i, %bb.m
  %indvars.iv103.i.i = phi i64 [ %i.dd, %.lr.ph.us.us.i.i ], [ %indvars.iv.next104.i.i, %bb.m ] ; 3 uses
  %.164.us.us.i.i = phi i32 [ %.04468.us.us.i.i, %.lr.ph.us.us.i.i ], [ %i.dp, %bb.m ]
  %.14663.us.us.i.i = phi ptr [ %.04567.us.us.i.i, %.lr.ph.us.us.i.i ], [ %i.dj, %bb.m ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.14663.us.us.i.i, i64 1 ; 2 uses
  %i.dk = load i8, ptr %.14663.us.us.i.i, align 1, !tbaa !29
  %i.dl = sext i8 %i.dk to i32
  %gep.i.i = getelementptr i8, ptr %gep124.i.i, i64 %indvars.iv103.i.i
  %i.dm = load i8, ptr %gep.i.i, align 1, !tbaa !29
  %i.dn = sext i8 %i.dm to i32
  %i.do = mul nsw i32 %i.dn, %i.dl
  %i.dp = add nsw i32 %i.do, %.164.us.us.i.i      ; 2 uses
  %indvars.iv.next104.i.i = add nsw i64 %indvars.iv103.i.i, 1 ; 2 uses
  %.not.us.us.i.i = icmp sge i64 %indvars.iv103.i.i, %i.de
  %i.dq = or i64 %indvars.iv.next104.i.i, %indvars.iv106.i.i
  %or.cond.not.us.us.i.i = icmp eq i64 %i.dq, 0
  %or.cond.us.us.i.i = or i1 %.not.us.us.i.i, %or.cond.not.us.us.i.i
  br i1 %or.cond.us.us.i.i, label %._crit_edge.us.us.i.i, label %bb.m, !llvm.loop !39

._crit_edge.us.us.i.i:                            ; preds = %bb.m, %.preheader.us73.us.i.i
  %.146.lcssa.us.us.i.i = phi ptr [ %.04567.us.us.i.i, %.preheader.us73.us.i.i ], [ %i.dj, %bb.m ]
  %.1.lcssa.us.us.i.i = phi i32 [ %.04468.us.us.i.i, %.preheader.us73.us.i.i ], [ %i.dp, %bb.m ] ; 2 uses
  %indvars.iv.next107.i.i = add nsw i64 %indvars.iv106.i.i, 1 ; 2 uses
  %i.dr = and i64 %indvars.iv.next107.i.i, 4294967295
  %exitcond109.not.i.i = icmp eq i64 %i.dr, 1
  br i1 %exitcond109.not.i.i, label %._crit_edge70.split.us75.us.i.i, label %.preheader.us73.us.i.i, !llvm.loop !41

.preheader.us73.us.i.i:                           ; preds = %._crit_edge.us.us.i.i, %.preheader.lr.ph.us.us79.i.i
  %indvars.iv106.i.i = phi i64 [ %indvars.iv.next107.i.i, %._crit_edge.us.us.i.i ], [ %i.dd, %.preheader.lr.ph.us.us79.i.i ] ; 4 uses
  %.04468.us.us.i.i = phi i32 [ %.1.lcssa.us.us.i.i, %._crit_edge.us.us.i.i ], [ 0, %.preheader.lr.ph.us.us79.i.i ] ; 2 uses
  %.04567.us.us.i.i = phi ptr [ %.146.lcssa.us.us.i.i, %._crit_edge.us.us.i.i ], [ %i.cv, %.preheader.lr.ph.us.us79.i.i ] ; 2 uses
  %i.ds = trunc nsw i64 %indvars.iv106.i.i to i32
  %i.dt = or i32 %i.ds, %i.cw
  %or.cond.not61.us.us.i.i = icmp eq i32 %i.dt, 0
  br i1 %or.cond.not61.us.us.i.i, label %._crit_edge.us.us.i.i, label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %.preheader.us73.us.i.i
  %gep124.i.i = getelementptr [82 x i8], ptr %invariant.gep123.i.i, i64 %indvars.iv106.i.i
  br label %bb.m

._crit_edge70.split.us75.us.i.i:                  ; preds = %._crit_edge.us.us.i.i
  %i.du = load i8, ptr %invariant.gep123.i.i, align 1, !tbaa !29
  %i.dv = sext i8 %i.du to i32
  %i.dw = add nsw i32 %.1.lcssa.us.us.i.i, %i.dh
  %i.dx = ashr i32 %i.dw, %i.df
  %i.dy = add nsw i32 %i.dx, %i.dv
  %i.dz = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 -128)
  %.0.i.us.us81.i.i = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 127)
  %i.ea = trunc nsw i32 %.0.i.us.us81.i.i to i8
  store i8 %i.ea, ptr %invariant.gep123.i.i, align 1, !tbaa !29
  %indvars.iv.next111.i.i = add nuw nsw i64 %indvars.iv110.i.i, 1 ; 2 uses
  %exitcond113.not.i.i = icmp eq i64 %indvars.iv.next111.i.i, 79
  br i1 %exitcond113.not.i.i, label %.split.us.split.us82.i.i, label %.preheader.lr.ph.us.us79.i.i, !llvm.loop !42

.split.us.split.us82.i.i:                         ; preds = %._crit_edge70.split.us75.us.i.i
  %indvars.iv.next115.i.i = add nuw nsw i64 %indvars.iv114.i.i, 1 ; 2 uses
  %exitcond117.not.i.i = icmp eq i64 %indvars.iv.next115.i.i, 73
  br i1 %exitcond117.not.i.i, label %generate_grain_y_c_8.exit.i, label %.preheader53.us.i.i, !llvm.loop !43

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next92.i.i = add nuw nsw i64 %indvars.iv91.i.i, 1 ; 2 uses
  %exitcond94.not.i.i = icmp eq i64 %indvars.iv.next92.i.i, 73
  br i1 %exitcond94.not.i.i, label %.preheader54.i.i, label %.preheader55.i.i, !llvm.loop !44

bb.o:                                             ; preds = %bb.o, %.preheader55.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader55.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 2 uses
  %.15256.i.i = phi i32 [ %.05158.i.i, %.preheader55.i.i ], [ %i.ej, %bb.o ] ; 4 uses
  %i.eb = ashr i32 %.15256.i.i, 1                 ; 2 uses
  %i.ec = lshr i32 %.15256.i.i, 3
  %i.ed = lshr i32 %.15256.i.i, 12
  %i.ee = xor i32 %i.ec, %i.ed
  %i.ef = xor i32 %i.ee, %.15256.i.i
  %i.eg = xor i32 %i.ef, %i.eb
  %i.eh = shl i32 %i.eg, 15
  %i.ei = and i32 %i.eh, 32768
  %i.ej = or i32 %i.ei, %i.eb                     ; 3 uses
  %i.ek = lshr i32 %i.ej, 5
  %i.el = and i32 %i.ek, 2047
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr @gaussian_sequence, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !45
  %i.ep = sext i16 %i.eo to i32
  %i.eq = add nsw i32 %i.cp, %i.ep
  %i.er = ashr i32 %i.eq, %i.cl
  %i.es = trunc i32 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.i.i
  store i8 %i.es, ptr %i.et, align 1, !tbaa !29
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 82
  br i1 %exitcond.not.i.i, label %bb.n, label %bb.o, !llvm.loop !47

iter.check:                                       ; preds = %iter.check, %.preheader53.i.preheader.i
  %indvars.iv99.i.i = phi i64 [ %indvars.iv.next100.i.i, %iter.check ], [ 3, %.preheader53.i.preheader.i ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [82 x i8], ptr %i.c, i64 %indvars.iv99.i.i ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 3 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ev, align 1, !tbaa !29
  %i.ew = sext <16 x i8> %wide.load to <16 x i32>
  %i.ex = add nsw <16 x i32> %broadcast.splat, %i.ew
  %i.ey = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ex, <16 x i32> splat (i32 -128))
  %i.ez = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.ey, <16 x i32> splat (i32 127))
  %i.fa = trunc nsw <16 x i32> %i.ez to <16 x i8>
  store <16 x i8> %i.fa, ptr %i.ev, align 1, !tbaa !29
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 19 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.fb, align 1, !tbaa !29
  %i.fc = sext <16 x i8> %wide.load.1 to <16 x i32>
  %i.fd = add nsw <16 x i32> %broadcast.splat, %i.fc
  %i.fe = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fd, <16 x i32> splat (i32 -128))
  %i.ff = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.fe, <16 x i32> splat (i32 127))
  %i.fg = trunc nsw <16 x i32> %i.ff to <16 x i8>
  store <16 x i8> %i.fg, ptr %i.fb, align 1, !tbaa !29
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 35 ; 2 uses
  %wide.load.2 = load <16 x i8>, ptr %i.fh, align 1, !tbaa !29
  %i.fi = sext <16 x i8> %wide.load.2 to <16 x i32>
  %i.fj = add nsw <16 x i32> %broadcast.splat, %i.fi
  %i.fk = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fj, <16 x i32> splat (i32 -128))
  %i.fl = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.fk, <16 x i32> splat (i32 127))
  %i.fm = trunc nsw <16 x i32> %i.fl to <16 x i8>
  store <16 x i8> %i.fm, ptr %i.fh, align 1, !tbaa !29
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 51 ; 2 uses
  %wide.load.3 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !29
  %i.fo = sext <16 x i8> %wide.load.3 to <16 x i32>
  %i.fp = add nsw <16 x i32> %broadcast.splat, %i.fo
  %i.fq = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fp, <16 x i32> splat (i32 -128))
  %i.fr = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.fq, <16 x i32> splat (i32 127))
  %i.fs = trunc nsw <16 x i32> %i.fr to <16 x i8>
  store <16 x i8> %i.fs, ptr %i.fn, align 1, !tbaa !29
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eu, i64 67 ; 2 uses
  %wide.load92 = load <4 x i8>, ptr %i.ft, align 1, !tbaa !29
  %i.fu = sext <4 x i8> %wide.load92 to <4 x i32>
  %i.fv = add nsw <4 x i32> %broadcast.splat90, %i.fu
  %i.fw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fv, <4 x i32> splat (i32 -128))
  %i.fx = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fw, <4 x i32> splat (i32 127))
  %i.fy = trunc nsw <4 x i32> %i.fx to <4 x i8>
  store <4 x i8> %i.fy, ptr %i.ft, align 1, !tbaa !29
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eu, i64 71 ; 2 uses
  %wide.load92.1 = load <4 x i8>, ptr %i.fz, align 1, !tbaa !29
  %i.ga = sext <4 x i8> %wide.load92.1 to <4 x i32>
  %i.gb = add nsw <4 x i32> %broadcast.splat90, %i.ga
  %i.gc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gb, <4 x i32> splat (i32 -128))
  %i.gd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gc, <4 x i32> splat (i32 127))
  %i.ge = trunc nsw <4 x i32> %i.gd to <4 x i8>
  store <4 x i8> %i.ge, ptr %i.fz, align 1, !tbaa !29
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eu, i64 75 ; 2 uses
  %wide.load92.2 = load <4 x i8>, ptr %i.gf, align 1, !tbaa !29
  %i.gg = sext <4 x i8> %wide.load92.2 to <4 x i32>
  %i.gh = add nsw <4 x i32> %broadcast.splat90, %i.gg
  %i.gi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gh, <4 x i32> splat (i32 -128))
  %i.gj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gi, <4 x i32> splat (i32 127))
  %i.gk = trunc nsw <4 x i32> %i.gj to <4 x i8>
  store <4 x i8> %i.gk, ptr %i.gf, align 1, !tbaa !29
  %indvars.iv.next100.i.i = add nuw nsw i64 %indvars.iv99.i.i, 1 ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %indvars.iv.next100.i.i, 73
  br i1 %exitcond102.not.i.i, label %generate_grain_y_c_8.exit.i, label %iter.check, !llvm.loop !43

generate_grain_y_c_8.exit.i:                      ; preds = %iter.check, %.split.us.split.us82.i.i
  %i.gl = load i32, ptr %i.ai, align 4, !tbaa !31 ; 3 uses
  %.not.i = icmp eq i32 %i.gl, 0                  ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %generate_grain_y_c_8.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !48
  %.not36.i = icmp eq i32 %i.gn, 0
  br i1 %.not36.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %generate_grain_y_c_8.exit.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 6068
  call fastcc void @generate_grain_uv_c_8(ptr noundef %i.go, ptr noundef %i.c, ptr noundef nonnull readonly %2, i64 noundef 0, i32 noundef %i.ct, i32 noundef %i.cu)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !31 ; 3 uses
  %.not37.i = icmp eq i32 %i.gq, 0                ; 2 uses
  br i1 %.not37.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !48
  %.not38.i = icmp eq i32 %i.gs, 0
  br i1 %.not38.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 12136
  call fastcc void @generate_grain_uv_c_8(ptr noundef %i.gt, ptr noundef %i.c, ptr noundef nonnull readonly %2, i64 noundef 1, i32 noundef %i.ct, i32 noundef %i.cu)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gu = load i32, ptr %i.e, align 8, !tbaa !49  ; 3 uses
  %.not39.i = icmp eq i32 %i.gu, 0
  br i1 %.not39.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !48
  %.not40.i = icmp eq i32 %i.gw, 0
  br i1 %.not40.i, label %generate_scaling_8.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  br label %generate_scaling_8.exit.i

bb.x:                                             ; preds = %bb.u
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.gy = add nsw i32 %i.gu, -1                   ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gx, i64 %i.gz ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !29
  %i.hc = zext i8 %i.hb to i64                    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 61
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !29  ; 2 uses
  %i.hf = load i8, ptr %i.gx, align 4, !tbaa !29  ; 2 uses
  %i.hg = zext i8 %i.hf to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 %i.he, i64 %i.hg, i1 false)
  %i.hh = icmp sgt i32 %i.gu, 1
  br i1 %i.hh, label %.lr.ph44.preheader.i.i, label %._crit_edge.i.i
end_hunk_0
begin_hunk_1_@ff_aom_apply_film_grain:bb.a
  %i.aof = load i32, ptr %i.al, align 8, !tbaa !32
  %i.aog = sext i32 %i.aof to i64
  %i.aoh = getelementptr i8, ptr %.099.i100.i.epil.init, i64 %i.aog ; 2 uses
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 -1
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !29
  store i8 %i.aoj, ptr %i.aoh, align 1, !tbaa !29
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.al
  %i.aok = load i32, ptr %i.um, align 8, !tbaa !48
  %.not106.i.i = icmp eq i32 %i.aok, 0
  %i.aol = sext i32 %i.uy to i64                  ; 3 uses
  br i1 %.not106.i.i, label %.preheader.i, label %.preheader94.i

.preheader94.i:                                   ; preds = %.loopexit.i
  %i.aom = load ptr, ptr %i.uo, align 8, !tbaa !30
  %i.aon = getelementptr inbounds i8, ptr %i.aom, i64 %i.vk
  %i.aoo = load ptr, ptr %i.up, align 8, !tbaa !30
  %i.aop = getelementptr inbounds i8, ptr %i.aoo, i64 %i.vk
  %i.aoq = load i32, ptr %i.un, align 4, !tbaa !31
  %i.aor = sext i32 %i.aoq to i64
  %i.aos = load i32, ptr %i.ak, align 8, !tbaa !31
  %i.aot = sext i32 %i.aos to i64
  call fastcc void @fguv_32x32xn_c_8(ptr noundef %i.aon, ptr noundef %i.aop, i64 noundef %i.aor, ptr noundef nonnull readonly %2, i64 noundef %i.aol, ptr noundef nonnull %i.d, ptr noundef %i.uq, i32 noundef %i.vg, i32 noundef range(i32 -2147483648, 67108863) %.0104.i, ptr noundef %i.vp, i64 noundef %i.aot, i32 noundef 0, i32 noundef %i.vb, i32 noundef range(i32 0, 256) %i.ct, i32 noundef range(i32 0, 256) %i.cu)
  br label %apply_grain_row_8.exit.i.sink.split

.preheader.i:                                     ; preds = %.loopexit.i
  %i.aou = load i32, ptr %i.ai, align 4, !tbaa !31
  %.not107.i.i = icmp eq i32 %i.aou, 0
  br i1 %.not107.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader.i
  %i.aov = load ptr, ptr %i.uo, align 8, !tbaa !30
  %i.aow = getelementptr inbounds i8, ptr %i.aov, i64 %i.vk
  %i.aox = load ptr, ptr %i.up, align 8, !tbaa !30
  %i.aoy = getelementptr inbounds i8, ptr %i.aox, i64 %i.vk
  %i.aoz = load i32, ptr %i.un, align 4, !tbaa !31
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = load i32, ptr %i.ak, align 8, !tbaa !31
  %i.apc = sext i32 %i.apb to i64
  call fastcc void @fguv_32x32xn_c_8(ptr noundef %i.aow, ptr noundef %i.aoy, i64 noundef %i.apa, ptr noundef nonnull readonly %2, i64 noundef %i.aol, ptr noundef %i.uu, ptr noundef %i.uq, i32 noundef %i.vg, i32 noundef range(i32 -2147483648, 67108863) %.0104.i, ptr noundef %i.vp, i64 noundef %i.apc, i32 noundef 0, i32 noundef %i.vb, i32 noundef range(i32 0, 256) %i.ct, i32 noundef range(i32 0, 256) %i.cu)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader.i
  %i.apd = load i32, ptr %i.gp, align 8, !tbaa !31
  %.not107.i.1.i = icmp eq i32 %i.apd, 0
  br i1 %.not107.i.1.i, label %apply_grain_row_8.exit.i, label %apply_grain_row_8.exit.i.sink.split

apply_grain_row_8.exit.i.sink.split:              ; preds = %bb.an, %.preheader94.i
  %.sink80 = phi ptr [ %i.d, %.preheader94.i ], [ %i.uv, %bb.an ]
  %i.ape = load ptr, ptr %i.ur, align 8, !tbaa !30
  %i.apf = getelementptr inbounds i8, ptr %i.ape, i64 %i.vk
  %i.apg = load ptr, ptr %i.us, align 8, !tbaa !30
  %i.aph = getelementptr inbounds i8, ptr %i.apg, i64 %i.vk
  %i.api = load i32, ptr %i.un, align 4, !tbaa !31
  %i.apj = sext i32 %i.api to i64
  %i.apk = load i32, ptr %i.ak, align 8, !tbaa !31
  %i.apl = sext i32 %i.apk to i64
  call fastcc void @fguv_32x32xn_c_8(ptr noundef %i.apf, ptr noundef %i.aph, i64 noundef %i.apj, ptr noundef nonnull readonly %2, i64 noundef %i.aol, ptr noundef %.sink80, ptr noundef %i.ut, i32 noundef %i.vg, i32 noundef range(i32 -2147483648, 67108863) %.0104.i, ptr noundef %i.vp, i64 noundef %i.apl, i32 noundef 1, i32 noundef %i.vb, i32 noundef range(i32 0, 256) %i.ct, i32 noundef range(i32 0, 256) %i.cu)
  br label %apply_grain_row_8.exit.i

apply_grain_row_8.exit.i:                         ; preds = %apply_grain_row_8.exit.i.sink.split, %bb.an, %bb.ak
  %i.apm = add nuw nsw i32 %.0104.i, 1            ; 2 uses
  %exitcond113.not.i = icmp eq i32 %i.apm, %i.cs
  br i1 %exitcond113.not.i, label %apply_film_grain_8.exit, label %bb.ac, !llvm.loop !85

apply_film_grain_8.exit:                          ; preds = %apply_grain_row_8.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.ar

bb.ao:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  tail call fastcc void @apply_film_grain_16(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 9)
  br label %bb.ar

bb.ap:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  tail call fastcc void @apply_film_grain_16(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 10)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  tail call fastcc void @apply_film_grain_16(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 12)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.k, %bb.aq, %bb.ap, %bb.ao, %apply_film_grain_8.exit
  %.054 = phi i32 [ 0, %bb.aq ], [ 0, %apply_film_grain_8.exit ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ -1094995529, %bb.k ]
  ret i32 %.054
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_film_grain_16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 9, 13) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x [2 x i32]], align 16         ; 11 uses
  %i.c = alloca [3 x [74 x [82 x i16]]], align 16 ; 22 uses
  %i.d = alloca [3 x [4096 x i8]], align 16       ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.m = load i8, ptr %i.l, align 2, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.r = load i32, ptr %i.q, align 4, !tbaa !35
  %reass.sub.i = sub i32 %i.r, %3
  %i.s = add i32 %reass.sub.i, 12                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.u = load i32, ptr %i.t, align 8, !tbaa !37
  %i.v = shl nuw i32 1, %i.s
  %i.w = ashr i32 %i.v, 1
  br label %.preheader62.i

.preheader62.i:                                   ; preds = %bb.c, %bb.a
  %indvars.iv99.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next100.i, %bb.c ] ; 2 uses
  %.05865.i = phi i32 [ %i.p, %bb.a ], [ %i.bs, %bb.c ]
  %i.x = getelementptr inbounds nuw [164 x i8], ptr %i.c, i64 %indvars.iv99.i
  br label %bb.d

.preheader61.i:                                   ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.z = add nsw i32 %i.i, 31
  %i.aa = ashr i32 %i.z, 5                        ; 2 uses
  %i.ab = zext i8 %i.k to i32                     ; 9 uses
  %i.ac = zext i8 %i.m to i32                     ; 10 uses
  %i.ad = add nsw i32 %3, -8                      ; 3 uses
  %i.ae = shl nuw nsw i32 128, %i.ad              ; 2 uses
  %i.af = sub nsw i32 0, %i.ae                    ; 30 uses
  %i.ag = add nsw i32 %i.ae, -1                   ; 16 uses
  %.fr.i = freeze i32 %i.u                        ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.ai = sub i32 0, %.fr.i                       ; 2 uses
  %i.aj = icmp sgt i32 %.fr.i, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !38 ; 3 uses
  %i.am = shl nuw i32 1, %i.al
  %i.an = ashr i32 %i.am, 1                       ; 2 uses
  %i.ao = ashr i32 %i.an, %i.al                   ; 5 uses
  br i1 %i.aj, label %.preheader60.us.preheader.i, label %.preheader60.i.preheader

.preheader60.i.preheader:                         ; preds = %.preheader61.i
  %broadcast.splatinsert6 = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat7 = shufflevector <8 x i32> %broadcast.splatinsert6, <8 x i32> poison, <8 x i32> zeroinitializer ; 9 uses
  %broadcast.splatinsert4 = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat5 = shufflevector <8 x i32> %broadcast.splatinsert4, <8 x i32> poison, <8 x i32> zeroinitializer ; 18 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 9 uses
  br label %.preheader60.i

.preheader60.us.preheader.i:                      ; preds = %.preheader61.i
  %i.ap = sext i32 %i.ai to i64                   ; 2 uses
  %i.aq = zext nneg i32 %.fr.i to i64
  br label %.preheader60.us.i

.preheader60.us.i:                                ; preds = %.split.us.split.us90.i, %.preheader60.us.preheader.i
  %indvars.iv122.i = phi i64 [ 3, %.preheader60.us.preheader.i ], [ %indvars.iv.next123.i, %.split.us.split.us90.i ] ; 2 uses
  %i.ar = getelementptr [164 x i8], ptr %i.c, i64 %indvars.iv122.i
  br label %.preheader.lr.ph.us.us86.i

.preheader.lr.ph.us.us86.i:                       ; preds = %._crit_edge77.split.us82.us.i, %.preheader60.us.i
  %indvars.iv118.i = phi i64 [ 3, %.preheader60.us.i ], [ %indvars.iv.next119.i, %._crit_edge77.split.us82.us.i ] ; 2 uses
  %invariant.gep131.i = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv118.i ; 3 uses
  br label %.preheader.us80.us.i

bb.b:                                             ; preds = %.lr.ph.us.us.i, %bb.b
  %indvars.iv111.i = phi i64 [ %i.ap, %.lr.ph.us.us.i ], [ %indvars.iv.next112.i, %bb.b ] ; 3 uses
  %.171.us.us.i = phi i32 [ %.05175.us.us.i, %.lr.ph.us.us.i ], [ %i.ay, %bb.b ]
  %.15370.us.us.i = phi ptr [ %.05274.us.us.i, %.lr.ph.us.us.i ], [ %i.as, %bb.b ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.15370.us.us.i, i64 1 ; 2 uses
  %i.at = load i8, ptr %.15370.us.us.i, align 1, !tbaa !29
  %i.au = sext i8 %i.at to i32
  %gep.i = getelementptr [2 x i8], ptr %gep132.i, i64 %indvars.iv111.i
  %i.av = load i16, ptr %gep.i, align 2, !tbaa !45
  %i.aw = sext i16 %i.av to i32
  %i.ax = mul nsw i32 %i.aw, %i.au
  %i.ay = add nsw i32 %i.ax, %.171.us.us.i        ; 2 uses
  %indvars.iv.next112.i = add nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %.not.us.us.i = icmp sge i64 %indvars.iv111.i, %i.aq
  %i.az = or i64 %indvars.iv.next112.i, %indvars.iv114.i
  %or.cond.not.us.us.i = icmp eq i64 %i.az, 0
  %or.cond.us.us.i = or i1 %.not.us.us.i, %or.cond.not.us.us.i
  br i1 %or.cond.us.us.i, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !86

._crit_edge.us.us.i:                              ; preds = %bb.b, %.preheader.us80.us.i
  %.153.lcssa.us.us.i = phi ptr [ %.05274.us.us.i, %.preheader.us80.us.i ], [ %i.as, %bb.b ]
  %.1.lcssa.us.us.i = phi i32 [ %.05175.us.us.i, %.preheader.us80.us.i ], [ %i.ay, %bb.b ] ; 2 uses
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, 1 ; 2 uses
  %i.ba = and i64 %indvars.iv.next115.i, 4294967295
  %exitcond117.not.i = icmp eq i64 %i.ba, 1
  br i1 %exitcond117.not.i, label %._crit_edge77.split.us82.us.i, label %.preheader.us80.us.i, !llvm.loop !87

.preheader.us80.us.i:                             ; preds = %._crit_edge.us.us.i, %.preheader.lr.ph.us.us86.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %._crit_edge.us.us.i ], [ %i.ap, %.preheader.lr.ph.us.us86.i ] ; 4 uses
  %.05175.us.us.i = phi i32 [ %.1.lcssa.us.us.i, %._crit_edge.us.us.i ], [ 0, %.preheader.lr.ph.us.us86.i ] ; 2 uses
  %.05274.us.us.i = phi ptr [ %.153.lcssa.us.us.i, %._crit_edge.us.us.i ], [ %i.ah, %.preheader.lr.ph.us.us86.i ] ; 2 uses
  %i.bb = trunc nsw i64 %indvars.iv114.i to i32
  %i.bc = or i32 %i.bb, %i.ai
  %or.cond.not68.us.us.i = icmp eq i32 %i.bc, 0
  br i1 %or.cond.not68.us.us.i, label %._crit_edge.us.us.i, label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.preheader.us80.us.i
  %gep132.i = getelementptr [164 x i8], ptr %invariant.gep131.i, i64 %indvars.iv114.i
  br label %bb.b

._crit_edge77.split.us82.us.i:                    ; preds = %._crit_edge.us.us.i
  %i.bd = load i16, ptr %invariant.gep131.i, align 2, !tbaa !45
  %i.be = sext i16 %i.bd to i32
  %i.bf = add nsw i32 %.1.lcssa.us.us.i, %i.an
  %i.bg = ashr i32 %i.bf, %i.al
  %i.bh = add nsw i32 %i.bg, %i.be                ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.af
  %..i.us.us88.i = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.ag)
  %.0.i.us.us89.i = select i1 %i.bi, i32 %i.af, i32 %..i.us.us88.i
  %i.bj = trunc nsw i32 %.0.i.us.us89.i to i16
  store i16 %i.bj, ptr %invariant.gep131.i, align 2, !tbaa !45
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %exitcond121.not.i = icmp eq i64 %indvars.iv.next119.i, 79
  br i1 %exitcond121.not.i, label %.split.us.split.us90.i, label %.preheader.lr.ph.us.us86.i, !llvm.loop !88

.split.us.split.us90.i:                           ; preds = %._crit_edge77.split.us82.us.i
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %exitcond125.not.i = icmp eq i64 %indvars.iv.next123.i, 73
  br i1 %exitcond125.not.i, label %generate_grain_y_c_16.exit, label %.preheader60.us.i, !llvm.loop !89

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next100.i, 73
  br i1 %exitcond102.not.i, label %.preheader61.i, label %.preheader62.i, !llvm.loop !90

bb.d:                                             ; preds = %bb.d, %.preheader62.i
  %indvars.iv.i = phi i64 [ 0, %.preheader62.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.15963.i = phi i32 [ %.05865.i, %.preheader62.i ], [ %i.bs, %bb.d ] ; 4 uses
  %i.bk = ashr i32 %.15963.i, 1                   ; 2 uses
  %i.bl = lshr i32 %.15963.i, 3
  %i.bm = lshr i32 %.15963.i, 12
  %i.bn = xor i32 %i.bm, %i.bl
  %i.bo = xor i32 %i.bn, %.15963.i
  %i.bp = xor i32 %i.bo, %i.bk
  %i.bq = shl i32 %i.bp, 15
  %i.br = and i32 %i.bq, 32768
  %i.bs = or i32 %i.br, %i.bk                     ; 3 uses
  %i.bt = lshr i32 %i.bs, 5
  %i.bu = and i32 %i.bt, 2047
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr @gaussian_sequence, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !45
  %i.by = sext i16 %i.bx to i32
  %i.bz = add nsw i32 %i.w, %i.by
  %i.ca = ashr i32 %i.bz, %i.s
  %i.cb = trunc i32 %i.ca to i16
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.i
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 82
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !91

.preheader60.i:                                   ; preds = %.preheader60.i.preheader, %.preheader60.i
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %.preheader60.i ], [ 3, %.preheader60.i.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [164 x i8], ptr %i.c, i64 %indvars.iv107.i ; 13 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 6 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ce, align 2, !tbaa !45
  %i.cf = sext <8 x i16> %wide.load to <8 x i32>
  %i.cg = add nsw <8 x i32> %broadcast.splat, %i.cf ; 2 uses
  %i.ch = icmp slt <8 x i32> %i.cg, %broadcast.splat5
  %i.ci = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.cg, <8 x i32> %broadcast.splat7)
  %i.cj = select <8 x i1> %i.ch, <8 x i32> %broadcast.splat5, <8 x i32> %i.ci
  %i.ck = trunc nsw <8 x i32> %i.cj to <8 x i16>
  store <8 x i16> %i.ck, ptr %i.ce, align 2, !tbaa !45
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 22 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.cl, align 2, !tbaa !45
  %i.cm = sext <8 x i16> %wide.load.1 to <8 x i32>
  %i.cn = add nsw <8 x i32> %broadcast.splat, %i.cm ; 2 uses
  %i.co = icmp slt <8 x i32> %i.cn, %broadcast.splat5
  %i.cp = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.cn, <8 x i32> %broadcast.splat7)
  %i.cq = select <8 x i1> %i.co, <8 x i32> %broadcast.splat5, <8 x i32> %i.cp
  %i.cr = trunc nsw <8 x i32> %i.cq to <8 x i16>
  store <8 x i16> %i.cr, ptr %i.cl, align 2, !tbaa !45
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 38 ; 2 uses
  %wide.load.2 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !45
  %i.ct = sext <8 x i16> %wide.load.2 to <8 x i32>
  %i.cu = add nsw <8 x i32> %broadcast.splat, %i.ct ; 2 uses
  %i.cv = icmp slt <8 x i32> %i.cu, %broadcast.splat5
  %i.cw = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.cu, <8 x i32> %broadcast.splat7)
  %i.cx = select <8 x i1> %i.cv, <8 x i32> %broadcast.splat5, <8 x i32> %i.cw
  %i.cy = trunc nsw <8 x i32> %i.cx to <8 x i16>
  store <8 x i16> %i.cy, ptr %i.cs, align 2, !tbaa !45
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 54 ; 2 uses
  %wide.load.3 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !45
  %i.da = sext <8 x i16> %wide.load.3 to <8 x i32>
  %i.db = add nsw <8 x i32> %broadcast.splat, %i.da ; 2 uses
  %i.dc = icmp slt <8 x i32> %i.db, %broadcast.splat5
  %i.dd = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.db, <8 x i32> %broadcast.splat7)
  %i.de = select <8 x i1> %i.dc, <8 x i32> %broadcast.splat5, <8 x i32> %i.dd
  %i.df = trunc nsw <8 x i32> %i.de to <8 x i16>
  store <8 x i16> %i.df, ptr %i.cz, align 2, !tbaa !45
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 70 ; 2 uses
  %wide.load.4 = load <8 x i16>, ptr %i.dg, align 2, !tbaa !45
  %i.dh = sext <8 x i16> %wide.load.4 to <8 x i32>
  %i.di = add nsw <8 x i32> %broadcast.splat, %i.dh ; 2 uses
  %i.dj = icmp slt <8 x i32> %i.di, %broadcast.splat5
  %i.dk = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.di, <8 x i32> %broadcast.splat7)
  %i.dl = select <8 x i1> %i.dj, <8 x i32> %broadcast.splat5, <8 x i32> %i.dk
  %i.dm = trunc nsw <8 x i32> %i.dl to <8 x i16>
  store <8 x i16> %i.dm, ptr %i.dg, align 2, !tbaa !45
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 86 ; 2 uses
  %wide.load.5 = load <8 x i16>, ptr %i.dn, align 2, !tbaa !45
  %i.do = sext <8 x i16> %wide.load.5 to <8 x i32>
  %i.dp = add nsw <8 x i32> %broadcast.splat, %i.do ; 2 uses
  %i.dq = icmp slt <8 x i32> %i.dp, %broadcast.splat5
  %i.dr = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.dp, <8 x i32> %broadcast.splat7)
  %i.ds = select <8 x i1> %i.dq, <8 x i32> %broadcast.splat5, <8 x i32> %i.dr
  %i.dt = trunc nsw <8 x i32> %i.ds to <8 x i16>
  store <8 x i16> %i.dt, ptr %i.dn, align 2, !tbaa !45
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 102 ; 2 uses
  %wide.load.6 = load <8 x i16>, ptr %i.du, align 2, !tbaa !45
  %i.dv = sext <8 x i16> %wide.load.6 to <8 x i32>
  %i.dw = add nsw <8 x i32> %broadcast.splat, %i.dv ; 2 uses
  %i.dx = icmp slt <8 x i32> %i.dw, %broadcast.splat5
  %i.dy = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.dw, <8 x i32> %broadcast.splat7)
  %i.dz = select <8 x i1> %i.dx, <8 x i32> %broadcast.splat5, <8 x i32> %i.dy
  %i.ea = trunc nsw <8 x i32> %i.dz to <8 x i16>
  store <8 x i16> %i.ea, ptr %i.du, align 2, !tbaa !45
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cd, i64 118 ; 2 uses
  %wide.load.7 = load <8 x i16>, ptr %i.eb, align 2, !tbaa !45
  %i.ec = sext <8 x i16> %wide.load.7 to <8 x i32>
  %i.ed = add nsw <8 x i32> %broadcast.splat, %i.ec ; 2 uses
  %i.ee = icmp slt <8 x i32> %i.ed, %broadcast.splat5
  %i.ef = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ed, <8 x i32> %broadcast.splat7)
  %i.eg = select <8 x i1> %i.ee, <8 x i32> %broadcast.splat5, <8 x i32> %i.ef
  %i.eh = trunc nsw <8 x i32> %i.eg to <8 x i16>
  store <8 x i16> %i.eh, ptr %i.eb, align 2, !tbaa !45
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cd, i64 134 ; 2 uses
  %wide.load.8 = load <8 x i16>, ptr %i.ei, align 2, !tbaa !45
  %i.ej = sext <8 x i16> %wide.load.8 to <8 x i32>
  %i.ek = add nsw <8 x i32> %broadcast.splat, %i.ej ; 2 uses
  %i.el = icmp slt <8 x i32> %i.ek, %broadcast.splat5
  %i.em = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ek, <8 x i32> %broadcast.splat7)
  %i.en = select <8 x i1> %i.el, <8 x i32> %broadcast.splat5, <8 x i32> %i.em
  %i.eo = trunc nsw <8 x i32> %i.en to <8 x i16>
  store <8 x i16> %i.eo, ptr %i.ei, align 2, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cd, i64 150 ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !45
  %i.er = sext i16 %i.eq to i32
  %i.es = add nsw i32 %i.ao, %i.er                ; 2 uses
  %i.et = icmp slt i32 %i.es, %i.af
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.es, i32 %i.ag)
  %.0.i.i = select i1 %i.et, i32 %i.af, i32 %..i.i
  %i.eu = trunc nsw i32 %.0.i.i to i16
  store i16 %i.eu, ptr %i.ep, align 2, !tbaa !45
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cd, i64 152 ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 4, !tbaa !45
  %i.ex = sext i16 %i.ew to i32
  %i.ey = add nsw i32 %i.ao, %i.ex                ; 2 uses
  %i.ez = icmp slt i32 %i.ey, %i.af
  %..i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ey, i32 %i.ag)
  %.0.i.i.1 = select i1 %i.ez, i32 %i.af, i32 %..i.i.1
  %i.fa = trunc nsw i32 %.0.i.i.1 to i16
  store i16 %i.fa, ptr %i.ev, align 4, !tbaa !45
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cd, i64 154 ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !45
  %i.fd = sext i16 %i.fc to i32
  %i.fe = add nsw i32 %i.ao, %i.fd                ; 2 uses
  %i.ff = icmp slt i32 %i.fe, %i.af
  %..i.i.2 = tail call i32 @llvm.smin.i32(i32 %i.fe, i32 %i.ag)
  %.0.i.i.2 = select i1 %i.ff, i32 %i.af, i32 %..i.i.2
  %i.fg = trunc nsw i32 %.0.i.i.2 to i16
  store i16 %i.fg, ptr %i.fb, align 2, !tbaa !45
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cd, i64 156 ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 4, !tbaa !45
  %i.fj = sext i16 %i.fi to i32
  %i.fk = add nsw i32 %i.ao, %i.fj                ; 2 uses
  %i.fl = icmp slt i32 %i.fk, %i.af
  %..i.i.3 = tail call i32 @llvm.smin.i32(i32 %i.fk, i32 %i.ag)
  %.0.i.i.3 = select i1 %i.fl, i32 %i.af, i32 %..i.i.3
  %i.fm = trunc nsw i32 %.0.i.i.3 to i16
  store i16 %i.fm, ptr %i.fh, align 4, !tbaa !45
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond110.not.i = icmp eq i64 %indvars.iv.next108.i, 73
  br i1 %exitcond110.not.i, label %generate_grain_y_c_16.exit, label %.preheader60.i, !llvm.loop !89

end_hunk_1
begin_hunk_2_@ff_aom_attach_film_grain_sets:bb.a
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = tail call ptr @av_frame_side_data_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 21, ptr noundef nonnull %i.d, i32 noundef 4) #8
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112
  %.not13.1 = icmp eq ptr %i.h, null
  br i1 %.not13.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @av_frame_side_data_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 21, ptr noundef nonnull %i.g, i32 noundef 4) #8
  %.not14.1 = icmp eq ptr %i.i, null
  br i1 %.not14.1, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112
  %.not13.2 = icmp eq ptr %i.k, null
  br i1 %.not13.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @av_frame_side_data_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 21, ptr noundef nonnull %i.j, i32 noundef 4) #8
  %.not14.2 = icmp eq ptr %i.l, null
  br i1 %.not14.2, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112
  %.not13.3 = icmp eq ptr %i.n, null
  br i1 %.not13.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @av_frame_side_data_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 21, ptr noundef nonnull %i.m, i32 noundef 4) #8
  %.not14.3 = icmp eq ptr %i.o, null
  br i1 %.not14.3, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112
  %.not13.4 = icmp eq ptr %i.q, null
  br i1 %.not13.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call ptr @av_frame_side_data_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 21, ptr noundef nonnull %i.p, i32 noundef 4) #8
  %.not14.4 = icmp eq ptr %i.r, null
  br i1 %.not14.4, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !112
  %.not13.5 = icmp eq ptr %i.t, null
  br i1 %.not13.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call ptr @av_frame_side_data_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 21, ptr noundef nonnull %i.s, i32 noundef 4) #8
  %.not14.5 = icmp eq ptr %i.u, null
  br i1 %.not14.5, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !112
  %.not13.6 = icmp eq ptr %i.w, null
  br i1 %.not13.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = tail call ptr @av_frame_side_data_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 21, ptr noundef nonnull %i.v, i32 noundef 4) #8
  %.not14.6 = icmp eq ptr %i.x, null
  br i1 %.not14.6, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !112
  %.not13.7 = icmp eq ptr %i.z, null
  br i1 %.not13.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = tail call ptr @av_frame_side_data_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 21, ptr noundef nonnull %i.y, i32 noundef 4) #8
  %.not14.7 = icmp eq ptr %i.aa, null
  br i1 %.not14.7, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ -12, %bb.b ], [ 0, %bb.q ], [ -12, %bb.d ], [ -12, %bb.p ], [ -12, %bb.f ], [ -12, %bb.l ], [ -12, %bb.h ], [ -12, %bb.n ], [ -12, %bb.j ]
  ret i32 %.1
}

declare ptr @av_frame_side_data_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @generate_grain_uv_c_8(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 2) %3, i32 noundef range(i32 0, 256) %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq i64 %3, 0
  %i.c = select i1 %.not, i64 46372, i64 18904
  %i.d = xor i64 %i.b, %i.c
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %i.h = add nsw i32 %i.g, 4                      ; 2 uses
  %.not88 = icmp eq i32 %4, 0
  %i.i = select i1 %.not88, i32 82, i32 44        ; 4 uses
  %.not89 = icmp eq i32 %5, 0
  %wide.trip.count152 = select i1 %.not89, i64 73, i64 38 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37   ; 4 uses
  %i.l = shl nuw i32 1, %i.h
  %i.m = ashr i32 %i.l, 1
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader100

.preheader100:                                    ; preds = %bb.a, %bb.f
  %indvars.iv149 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next150, %bb.f ] ; 2 uses
  %.094106 = phi i32 [ %i.e, %bb.a ], [ %i.ei, %bb.f ]
  %i.n = getelementptr inbounds nuw [82 x i8], ptr %0, i64 %indvars.iv149
  br label %bb.g

.preheader99.split.us:                            ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.p = add nsw i32 %i.i, -3                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.r = getelementptr inbounds nuw [25 x i8], ptr %i.q, i64 %3
  %i.s = add nuw nsw i32 %5, %4                   ; 2 uses
  %i.t = shl nuw i32 1, %i.s
  %i.u = ashr i32 %i.t, 1
  %i.v = getelementptr i8, ptr %2, i64 224        ; 5 uses
  %i.w = icmp sgt i32 %i.k, -1
  br i1 %i.w, label %.preheader98.us.us.preheader, label %.preheader98.us.preheader

.preheader98.us.preheader:                        ; preds = %.preheader99.split.us
  %wide.trip.count157 = zext nneg i32 %i.p to i64
  %scevgep225 = getelementptr i8, ptr %0, i64 249
  %i.x = mul nuw nsw i64 %wide.trip.count152, 82
  %i.y = add nsw i32 %i.i, -4
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 %i.x
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %scevgep226 = getelementptr i8, ptr %i.ab, i64 -81
  %scevgep227 = getelementptr i8, ptr %2, i64 228
  %i.ac = add nsw i32 %i.i, -4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nsw i64 %i.ad, -2                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  %bound0 = icmp ult ptr %scevgep225, %scevgep227
  %bound1 = icmp ult ptr %i.v, %scevgep226
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.af = or disjoint i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br label %.preheader98.us

.preheader98.us.us.preheader:                     ; preds = %.preheader99.split.us
  %i.ag = sub nsw i32 0, %i.k
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = shl nuw i32 %i.k, 1
  %i.aj = or disjoint i32 %i.ai, 1
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nuw i32 %i.k, 1
  %i.am = add nuw nsw i32 %4, 1
  %i.an = add nuw nsw i32 %5, 1
  %wide.trip.count187 = zext nneg i32 %i.p to i64
  %wide.trip.count176 = zext nneg i32 %i.an to i64
  %wide.trip.count171 = zext nneg i32 %i.am to i64 ; 3 uses
  %min.iters.check230 = icmp samesign ult i32 %4, 7
  %n.vec232 = and i64 %wide.trip.count171, 504    ; 3 uses
  %cmp.n240 = icmp eq i64 %n.vec232, %wide.trip.count171
  br label %.preheader98.us.us

.preheader98.us.us:                               ; preds = %.preheader98.us.us.preheader, %._crit_edge123.split.us.split.us138.us
  %indvars.iv189 = phi i64 [ 3, %.preheader98.us.us.preheader ], [ %indvars.iv.next190, %._crit_edge123.split.us.split.us138.us ] ; 4 uses
  %i.ao = trunc i64 %indvars.iv189 to i32
  %i.ap = add i32 %i.ao, -3
  %i.aq = shl i32 %i.ap, %5
  %i.ar = getelementptr inbounds nuw [82 x i8], ptr %0, i64 %indvars.iv189
  %invariant.gep216 = getelementptr [82 x i8], ptr %0, i64 %indvars.iv189
  %i.as = sext i32 %i.aq to i64
  %invariant.gep212 = getelementptr [82 x i8], ptr %1, i64 %i.as
  br label %.preheader97.lr.ph.us.us135.us

.preheader97.lr.ph.us.us135.us:                   ; preds = %.preheader98.us.us, %._crit_edge.split.us126.us.us
  %indvars.iv183 = phi i64 [ 3, %.preheader98.us.us ], [ %indvars.iv.next184, %._crit_edge.split.us126.us.us ] ; 4 uses
  %i.at = trunc i64 %indvars.iv183 to i32
  %i.au = add i32 %i.at, -3
  %i.av = shl i32 %i.au, %4
  %invariant.gep218 = getelementptr i8, ptr %invariant.gep216, i64 %indvars.iv183
  %i.aw = sext i32 %i.av to i64
  %invariant.gep214 = getelementptr i8, ptr %invariant.gep212, i64 %i.aw
  br label %.preheader97.us124.us.us

bb.b:                                             ; preds = %.preheader97.us124.us.us, %bb.c
  %indvars.iv164 = phi i64 [ %i.ah, %.preheader97.us124.us.us ], [ %indvars.iv.next165, %bb.c ] ; 3 uses
  %.179110.us.us.us = phi i32 [ %.078118.us.us.us, %.preheader97.us124.us.us ], [ %i.be, %bb.c ] ; 3 uses
  %.181109.us.us.us = phi ptr [ %.080117.us.us.us, %.preheader97.us124.us.us ], [ %i.ay, %bb.c ] ; 5 uses
  %i.ax = or i64 %indvars.iv164, %indvars.iv178
  %or.cond.not.us.us.us = icmp eq i64 %i.ax, 0
  br i1 %or.cond.not.us.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.181109.us.us.us, i64 1
  %i.az = load i8, ptr %.181109.us.us.us, align 1, !tbaa !29
  %i.ba = sext i8 %i.az to i32
  %gep = getelementptr i8, ptr %gep219, i64 %indvars.iv164
  %i.bb = load i8, ptr %gep, align 1, !tbaa !29
  %i.bc = sext i8 %i.bb to i32
  %i.bd = mul nsw i32 %i.bc, %i.ba
  %i.be = add nsw i32 %i.bd, %.179110.us.us.us    ; 2 uses
  %indvars.iv.next165 = add nsw i64 %indvars.iv164, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next165 to i32
  %exitcond167.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond167.not, label %..loopexit_crit_edge.us.us.us, label %bb.b, !llvm.loop !152

bb.d:                                             ; preds = %bb.b
  %i.bf = load i32, ptr %i.o, align 8, !tbaa !49
  %.not91.us.us.us = icmp eq i32 %i.bf, 0
  br i1 %.not91.us.us.us, label %..loopexit_crit_edge.us.us.us, label %.preheader.us.us.us

scalar.ph229:                                     ; preds = %scalar.ph229.preheader, %scalar.ph229
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %scalar.ph229 ], [ %indvars.iv168.ph, %scalar.ph229.preheader ] ; 2 uses
  %.1113.us.us.us = phi i32 [ %i.bj, %scalar.ph229 ], [ %.1113.us.us.us.ph, %scalar.ph229.preheader ]
  %gep211 = getelementptr i8, ptr %gep215, i64 %indvars.iv168
  %i.bg = getelementptr i8, ptr %gep211, i64 249
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !29
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add nsw i32 %.1113.us.us.us, %i.bi      ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %.loopexit, label %scalar.ph229, !llvm.loop !153

.loopexit:                                        ; preds = %scalar.ph229, %middle.block239
  %.lcssa223 = phi i32 [ %i.ca, %middle.block239 ], [ %i.bj, %scalar.ph229 ] ; 2 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %bb.e, label %.preheader.us.us.us, !llvm.loop !154

bb.e:                                             ; preds = %.loopexit
  %i.bk = add nsw i32 %.lcssa223, %i.u
  %i.bl = ashr i32 %i.bk, %i.s
  %i.bm = load i8, ptr %.181109.us.us.us, align 1, !tbaa !29
  %i.bn = sext i8 %i.bm to i32
  %i.bo = mul nsw i32 %i.bl, %i.bn
  %i.bp = add nsw i32 %i.bo, %.179110.us.us.us
  br label %..loopexit_crit_edge.us.us.us

..loopexit_crit_edge.us.us.us:                    ; preds = %bb.c, %bb.e, %bb.d
  %.181103.us.us.us = phi ptr [ %.181109.us.us.us, %bb.d ], [ %.181109.us.us.us, %bb.e ], [ %scevgep, %bb.c ]
  %.3.us.us.us = phi i32 [ %.179110.us.us.us, %bb.d ], [ %i.bp, %bb.e ], [ %i.be, %bb.c ] ; 2 uses
  %indvars.iv.next179 = add nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.bq = and i64 %indvars.iv.next179, 4294967295
  %exitcond182.not = icmp eq i64 %i.bq, 1
  br i1 %exitcond182.not, label %._crit_edge.split.us126.us.us, label %.preheader97.us124.us.us, !llvm.loop !155

.preheader.us.us.us:                              ; preds = %bb.d, %.loopexit
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %.loopexit ], [ 0, %bb.d ] ; 2 uses
  %.075115.us.us.us = phi i32 [ %.lcssa223, %.loopexit ], [ 0, %bb.d ] ; 2 uses
  %gep215 = getelementptr [82 x i8], ptr %invariant.gep214, i64 %indvars.iv173 ; 2 uses
  br i1 %min.iters.check230, label %scalar.ph229.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %.preheader.us.us.us
  %i.br = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075115.us.us.us, i64 0
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next238, %vector.body233 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.br, %vector.ph231 ], [ %i.bx, %vector.body233 ]
  %vec.phi235 = phi <4 x i32> [ zeroinitializer, %vector.ph231 ], [ %i.by, %vector.body233 ]
  %i.bs = getelementptr i8, ptr %gep215, i64 %index234 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 249
  %i.bu = getelementptr i8, ptr %i.bs, i64 253
  %wide.load236 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !29
  %wide.load237 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !29
  %i.bv = sext <4 x i8> %wide.load236 to <4 x i32>
  %i.bw = sext <4 x i8> %wide.load237 to <4 x i32>
  %i.bx = add <4 x i32> %vec.phi, %i.bv           ; 2 uses
  %i.by = add <4 x i32> %vec.phi235, %i.bw        ; 2 uses
  %index.next238 = add nuw i64 %index234, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next238, %n.vec232
  br i1 %i.bz, label %middle.block239, label %vector.body233, !llvm.loop !156

middle.block239:                                  ; preds = %vector.body233
  %bin.rdx = add <4 x i32> %i.by, %i.bx
  %i.ca = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n240, label %.loopexit, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %.preheader.us.us.us, %middle.block239
  %indvars.iv168.ph = phi i64 [ 0, %.preheader.us.us.us ], [ %n.vec232, %middle.block239 ]
  %.1113.us.us.us.ph = phi i32 [ %.075115.us.us.us, %.preheader.us.us.us ], [ %i.ca, %middle.block239 ]
  br label %scalar.ph229

.preheader97.us124.us.us:                         ; preds = %..loopexit_crit_edge.us.us.us, %.preheader97.lr.ph.us.us135.us
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %..loopexit_crit_edge.us.us.us ], [ %i.ah, %.preheader97.lr.ph.us.us135.us ] ; 3 uses
  %.078118.us.us.us = phi i32 [ %.3.us.us.us, %..loopexit_crit_edge.us.us.us ], [ 0, %.preheader97.lr.ph.us.us135.us ]
  %.080117.us.us.us = phi ptr [ %.181103.us.us.us, %..loopexit_crit_edge.us.us.us ], [ %i.r, %.preheader97.lr.ph.us.us135.us ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.080117.us.us.us, i64 %i.ak
  %gep219 = getelementptr [82 x i8], ptr %invariant.gep218, i64 %indvars.iv178
  br label %bb.b

._crit_edge.split.us126.us.us:                    ; preds = %..loopexit_crit_edge.us.us.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv183 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !29
  %i.cd = sext i8 %i.cc to i32
  %i.ce = load i32, ptr %i.v, align 8, !tbaa !38  ; 2 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = ashr i32 %i.cf, 1
  %i.ch = add nsw i32 %i.cg, %.3.us.us.us
  %i.ci = ashr i32 %i.ch, %i.ce
  %i.cj = add nsw i32 %i.ci, %i.cd
  %i.ck = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 -128)
  %.0.i.us.us137.us = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 127)
  %i.cl = trunc nsw i32 %.0.i.us.us137.us to i8
  store i8 %i.cl, ptr %i.cb, align 1, !tbaa !29
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count187
  br i1 %exitcond188.not, label %._crit_edge123.split.us.split.us138.us, label %.preheader97.lr.ph.us.us135.us, !llvm.loop !157

._crit_edge123.split.us.split.us138.us:           ; preds = %._crit_edge.split.us126.us.us
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count152
  br i1 %exitcond193.not, label %.split.us, label %.preheader98.us.us, !llvm.loop !158

.preheader98.us:                                  ; preds = %.preheader98.us.preheader, %._crit_edge123.split.us133
  %indvars.iv159 = phi i64 [ 3, %.preheader98.us.preheader ], [ %indvars.iv.next160, %._crit_edge123.split.us133 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [82 x i8], ptr %0, i64 %indvars.iv159 ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %.preheader98.us
  %i.cn = load i32, ptr %i.v, align 8, !tbaa !38, !alias.scope !159
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.co = shl nuw <4 x i32> splat (i32 1), %broadcast.splat
  %i.cp = ashr <4 x i32> %i.co, splat (i32 1)
  %i.cq = ashr <4 x i32> %i.cp, %broadcast.splat  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 7 ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.cs, align 1, !tbaa !29, !alias.scope !162, !noalias !159
  %wide.load228 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !29, !alias.scope !162, !noalias !159
  %i.cu = sext <4 x i8> %wide.load to <4 x i32>
  %i.cv = sext <4 x i8> %wide.load228 to <4 x i32>
  %i.cw = add nsw <4 x i32> %i.cq, %i.cu
  %i.cx = add nsw <4 x i32> %i.cq, %i.cv
  %i.cy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cw, <4 x i32> splat (i32 -128))
  %i.cz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cx, <4 x i32> splat (i32 -128))
  %i.da = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cy, <4 x i32> splat (i32 127))
  %i.db = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cz, <4 x i32> splat (i32 127))
  %i.dc = trunc nsw <4 x i32> %i.da to <4 x i8>
  %i.dd = trunc nsw <4 x i32> %i.db to <4 x i8>
  store <4 x i8> %i.dc, ptr %i.cs, align 1, !tbaa !29, !alias.scope !162, !noalias !159
  store <4 x i8> %i.dd, ptr %i.ct, align 1, !tbaa !29, !alias.scope !162, !noalias !159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge123.split.us133, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %.preheader98.us, %middle.block
  %indvars.iv154.ph = phi i64 [ %i.af, %middle.block ], [ 3, %.preheader98.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv154 = phi i64 [ %indvars.iv154.ph, %scalar.ph.preheader.new ], [ %indvars.iv.next155.1, %scalar.ph ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv154 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !29
  %i.dh = sext i8 %i.dg to i32
  %i.di = load i32, ptr %i.v, align 8, !tbaa !38  ; 2 uses
  %i.dj = shl nuw i32 1, %i.di
  %i.dk = ashr i32 %i.dj, 1
  %i.dl = ashr i32 %i.dk, %i.di
  %i.dm = add nsw i32 %i.dl, %i.dh
  %i.dn = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 -128)
  %.0.i.us132 = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 127)
  %i.do = trunc nsw i32 %.0.i.us132 to i8
  store i8 %i.do, ptr %i.df, align 1, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv154
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !29
  %i.ds = sext i8 %i.dr to i32
  %i.dt = load i32, ptr %i.v, align 8, !tbaa !38  ; 2 uses
  %i.du = shl nuw i32 1, %i.dt
  %i.dv = ashr i32 %i.du, 1
  %i.dw = ashr i32 %i.dv, %i.dt
  %i.dx = add nsw i32 %i.dw, %i.ds
  %i.dy = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 -128)
  %.0.i.us132.1 = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 127)
  %i.dz = trunc nsw i32 %.0.i.us132.1 to i8
  store i8 %i.dz, ptr %i.dq, align 1, !tbaa !29
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %exitcond158.not.1 = icmp eq i64 %indvars.iv.next155.1, %wide.trip.count157
  br i1 %exitcond158.not.1, label %._crit_edge123.split.us133, label %scalar.ph, !llvm.loop !165

end_hunk_2
begin_hunk_3_@fguv_32x32xn_c_8:bb.a
  %i.oz = add i32 %i.fj, %i.oe
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds i8, ptr %gep511, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !29
  %i.pd = sext i8 %i.pc to i32
  %i.pe = mul nsw i32 %i.oq, %i.pd
  %i.pf = mul nsw i32 %i.ot, %i.oo
  %i.pg = add i32 %i.pf, 16
  %i.ph = add i32 %i.pg, %i.pe
  %i.pi = ashr i32 %i.ph, 5
  %i.pj = tail call i32 @llvm.smax.i32(i32 %i.pi, i32 -128)
  %.0.i362 = tail call i32 @llvm.smin.i32(i32 %i.pj, i32 127)
  %i.pk = mul nsw i32 %.0.i364, %i.le
  %i.pl = mul nsw i32 %.0.i362, %i.lg
  %i.pm = add i32 %i.pk, 16
  %i.pn = add i32 %i.pm, %i.pl
  %i.po = ashr i32 %i.pn, 5
  %i.pp = tail call i32 @llvm.smax.i32(i32 %i.po, i32 -128)
  %.0.i360 = tail call i32 @llvm.smin.i32(i32 %i.pp, i32 127)
  %i.pq = trunc nuw nsw i64 %indvars.iv463 to i32
  %i.pr = add i32 %.0339432, %i.pq
  %i.ps = shl i32 %i.pr, %13
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds i8, ptr %i.ll, i64 %i.pt ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !29  ; 2 uses
  br i1 %.not355, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.pw = zext i8 %i.pv to i16
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !29
  %i.pz = zext i8 %i.py to i16
  %i.qa = add nuw nsw i16 %i.pw, 1
  %i.qb = add nuw nsw i16 %i.qa, %i.pz
  %i.qc = lshr i16 %i.qb, 1
  %i.qd = trunc nuw i16 %i.qc to i8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3 = phi i8 [ %i.qd, %bb.t ], [ %i.pv, %bb.s ]
  %i.qe = getelementptr inbounds nuw i8, ptr %gep418, i64 %indvars.iv463
  %i.qf = getelementptr inbounds nuw i8, ptr %gep420, i64 %indvars.iv463
  %i.qg = zext i8 %.3 to i32                      ; 2 uses
  %i.qh = load i32, ptr %i.ag, align 8, !tbaa !48
  %.not350 = icmp eq i32 %i.qh, 0
  %.pre478 = load i8, ptr %i.qe, align 1, !tbaa !29 ; 2 uses
  br i1 %.not350, label %bb.v, label %._crit_edge479

._crit_edge479:                                   ; preds = %bb.u
  %.pre488 = zext i8 %.pre478 to i32
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.qi = load i32, ptr %i.aj, align 4, !tbaa !31
  %i.qj = mul nsw i32 %i.qi, %i.qg
  %i.qk = zext i8 %.pre478 to i32                 ; 2 uses
  %i.ql = load i32, ptr %i.al, align 4, !tbaa !31
  %i.qm = mul nsw i32 %i.ql, %i.qk
  %i.qn = add nsw i32 %i.qm, %i.qj
  %i.qo = ashr i32 %i.qn, 6
  %i.qp = load i32, ptr %i.an, align 4, !tbaa !31
  %i.qq = add nsw i32 %i.qo, %i.qp
  %i.qr = tail call i32 @llvm.smax.i32(i32 %i.qq, i32 0)
  %i.qs = tail call i32 @llvm.umin.i32(i32 %i.qr, i32 255)
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge479, %bb.v
  %.pre-phi489 = phi i32 [ %.pre488, %._crit_edge479 ], [ %i.qk, %bb.v ]
  %.3338 = phi i32 [ %i.qg, %._crit_edge479 ], [ %i.qs, %bb.v ]
  %i.qt = zext nneg i32 %.3338 to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %5, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !29
  %i.qw = zext i8 %i.qv to i32
  %i.qx = mul nsw i32 %.0.i360, %i.qw
  %i.qy = load i32, ptr %i.ao, align 4, !tbaa !69 ; 2 uses
  %i.qz = shl nuw i32 1, %i.qy
  %i.ra = ashr i32 %i.qz, 1
  %i.rb = add nsw i32 %i.ra, %i.qx
  %i.rc = ashr i32 %i.rb, %i.qy
  %i.rd = add nsw i32 %i.rc, %.pre-phi489         ; 2 uses
  %i.re = icmp slt i32 %i.rd, %.0342
  %..i = tail call i32 @llvm.smin.i32(i32 %i.rd, i32 %.0341)
  %.0.i = select i1 %i.re, i32 %.0342, i32 %..i
  %i.rf = trunc i32 %.0.i to i8
  store i8 %i.rf, ptr %i.qf, align 1, !tbaa !29
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %._crit_edge423, label %bb.s, !llvm.loop !179
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @generate_grain_uv_c_16(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 2) %3, i32 noundef range(i32 0, 256) %4, i32 noundef range(i32 0, 256) %5, i32 noundef range(i32 9, 13) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq i64 %3, 0
  %i.c = select i1 %.not, i64 46372, i64 18904
  %i.d = xor i64 %i.b, %i.c
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %reass.sub = sub i32 %i.g, %6
  %i.h = add i32 %reass.sub, 12                   ; 2 uses
  %.not95 = icmp eq i32 %4, 0
  %i.i = select i1 %.not95, i32 82, i32 44        ; 3 uses
  %.not96 = icmp eq i32 %5, 0
  %wide.trip.count161 = select i1 %.not96, i64 73, i64 38 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37   ; 4 uses
  %i.l = shl nuw i32 1, %i.h
  %i.m = ashr i32 %i.l, 1
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader107

.preheader107:                                    ; preds = %bb.a, %bb.f
  %indvars.iv158 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next159, %bb.f ] ; 2 uses
  %.0101113 = phi i32 [ %i.e, %bb.a ], [ %i.dk, %bb.f ]
  %i.n = getelementptr inbounds nuw [164 x i8], ptr %0, i64 %indvars.iv158
  br label %bb.g

.preheader106.split.us:                           ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.p = add nsw i32 %6, -8
  %i.q = shl nuw nsw i32 128, %i.p                ; 2 uses
  %i.r = sub nsw i32 0, %i.q                      ; 5 uses
  %i.s = add nsw i32 %i.q, -1                     ; 3 uses
  %i.t = add nsw i32 %i.i, -3                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.v = getelementptr inbounds nuw [25 x i8], ptr %i.u, i64 %3
  %i.w = add nuw nsw i32 %5, %4                   ; 2 uses
  %i.x = shl nuw i32 1, %i.w
  %i.y = ashr i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.aa = icmp sgt i32 %i.k, -1
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !38  ; 3 uses
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = ashr i32 %i.ac, 1                       ; 2 uses
  %i.ae = ashr i32 %i.ad, %i.ab                   ; 2 uses
  br i1 %i.aa, label %.preheader105.us.us.preheader, label %.preheader105.us.preheader

.preheader105.us.preheader:                       ; preds = %.preheader106.split.us
  %wide.trip.count166 = zext nneg i32 %i.t to i64
  %i.af = add nsw i32 %i.i, -4
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ag, -2                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 8
  %n.vec = and i64 %i.ah, -8                      ; 3 uses
  %i.ai = or disjoint i64 %n.vec, 3
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert234 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat235 = shufflevector <8 x i32> %broadcast.splatinsert234, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert236 = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat237 = shufflevector <8 x i32> %broadcast.splatinsert236, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %.preheader105.us

.preheader105.us.us.preheader:                    ; preds = %.preheader106.split.us
  %i.aj = sub nsw i32 0, %i.k
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw i32 %i.k, 1
  %i.am = or disjoint i32 %i.al, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw i32 %i.k, 1
  %i.ap = add nuw nsw i32 %4, 1
  %i.aq = add nuw nsw i32 %5, 1
  %wide.trip.count196 = zext nneg i32 %i.t to i64
  %wide.trip.count185 = zext nneg i32 %i.aq to i64
  %wide.trip.count180 = zext nneg i32 %i.ap to i64 ; 3 uses
  %min.iters.check239 = icmp samesign ult i32 %4, 7
  %n.vec241 = and i64 %wide.trip.count180, 504    ; 3 uses
  %cmp.n249 = icmp eq i64 %n.vec241, %wide.trip.count180
  br label %.preheader105.us.us

.preheader105.us.us:                              ; preds = %.preheader105.us.us.preheader, %._crit_edge130.split.us.split.us147.us
  %indvars.iv198 = phi i64 [ 3, %.preheader105.us.us.preheader ], [ %indvars.iv.next199, %._crit_edge130.split.us.split.us147.us ] ; 4 uses
  %i.ar = trunc i64 %indvars.iv198 to i32
  %i.as = add i32 %i.ar, -3
  %i.at = shl i32 %i.as, %5
  %i.au = getelementptr inbounds nuw [164 x i8], ptr %0, i64 %indvars.iv198
  %invariant.gep225 = getelementptr [164 x i8], ptr %0, i64 %indvars.iv198
  %i.av = sext i32 %i.at to i64
  %invariant.gep221 = getelementptr [164 x i8], ptr %1, i64 %i.av
  br label %.preheader104.lr.ph.us.us143.us

.preheader104.lr.ph.us.us143.us:                  ; preds = %.preheader105.us.us, %._crit_edge.split.us133.us.us
  %indvars.iv192 = phi i64 [ 3, %.preheader105.us.us ], [ %indvars.iv.next193, %._crit_edge.split.us133.us.us ] ; 4 uses
  %i.aw = trunc i64 %indvars.iv192 to i32
  %i.ax = add i32 %i.aw, -3
  %i.ay = shl i32 %i.ax, %4
  %invariant.gep227 = getelementptr [2 x i8], ptr %invariant.gep225, i64 %indvars.iv192
  %i.az = sext i32 %i.ay to i64
  %invariant.gep223 = getelementptr [2 x i8], ptr %invariant.gep221, i64 %i.az
  br label %.preheader104.us131.us.us

bb.b:                                             ; preds = %.preheader104.us131.us.us, %bb.c
  %indvars.iv173 = phi i64 [ %i.ak, %.preheader104.us131.us.us ], [ %indvars.iv.next174, %bb.c ] ; 3 uses
  %.186117.us.us.us = phi i32 [ %.085125.us.us.us, %.preheader104.us131.us.us ], [ %i.bh, %bb.c ] ; 3 uses
  %.188116.us.us.us = phi ptr [ %.087124.us.us.us, %.preheader104.us131.us.us ], [ %i.bb, %bb.c ] ; 5 uses
  %i.ba = or i64 %indvars.iv173, %indvars.iv187
  %or.cond.not.us.us.us = icmp eq i64 %i.ba, 0
  br i1 %or.cond.not.us.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %.188116.us.us.us, i64 1
  %i.bc = load i8, ptr %.188116.us.us.us, align 1, !tbaa !29
  %i.bd = sext i8 %i.bc to i32
  %gep = getelementptr [2 x i8], ptr %gep228, i64 %indvars.iv173
  %i.be = load i16, ptr %gep, align 2, !tbaa !45
  %i.bf = sext i16 %i.be to i32
  %i.bg = mul nsw i32 %i.bf, %i.bd
  %i.bh = add nsw i32 %i.bg, %.186117.us.us.us    ; 2 uses
  %indvars.iv.next174 = add nsw i64 %indvars.iv173, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next174 to i32
  %exitcond176.not = icmp eq i32 %i.ao, %lftr.wideiv
  br i1 %exitcond176.not, label %..loopexit_crit_edge.us.us.us, label %bb.b, !llvm.loop !180

bb.d:                                             ; preds = %bb.b
  %i.bi = load i32, ptr %i.o, align 8, !tbaa !49
  %.not98.us.us.us = icmp eq i32 %i.bi, 0
  br i1 %.not98.us.us.us, label %..loopexit_crit_edge.us.us.us, label %.preheader.us.us.us

scalar.ph238:                                     ; preds = %scalar.ph238.preheader, %scalar.ph238
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %scalar.ph238 ], [ %indvars.iv177.ph, %scalar.ph238.preheader ] ; 2 uses
  %.1120.us.us.us = phi i32 [ %i.bm, %scalar.ph238 ], [ %.1120.us.us.us.ph, %scalar.ph238.preheader ]
  %gep220 = getelementptr [2 x i8], ptr %gep224, i64 %indvars.iv177
  %i.bj = getelementptr i8, ptr %gep220, i64 498
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !45
  %i.bl = sext i16 %i.bk to i32
  %i.bm = add nsw i32 %.1120.us.us.us, %i.bl      ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %.loopexit, label %scalar.ph238, !llvm.loop !181

.loopexit:                                        ; preds = %scalar.ph238, %middle.block248
  %.lcssa232 = phi i32 [ %i.cd, %middle.block248 ], [ %i.bm, %scalar.ph238 ] ; 2 uses
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %bb.e, label %.preheader.us.us.us, !llvm.loop !182

bb.e:                                             ; preds = %.loopexit
  %i.bn = add nsw i32 %.lcssa232, %i.y
  %i.bo = ashr i32 %i.bn, %i.w
  %i.bp = load i8, ptr %.188116.us.us.us, align 1, !tbaa !29
  %i.bq = sext i8 %i.bp to i32
  %i.br = mul nsw i32 %i.bo, %i.bq
  %i.bs = add nsw i32 %i.br, %.186117.us.us.us
  br label %..loopexit_crit_edge.us.us.us

..loopexit_crit_edge.us.us.us:                    ; preds = %bb.c, %bb.e, %bb.d
  %.188110.us.us.us = phi ptr [ %.188116.us.us.us, %bb.d ], [ %.188116.us.us.us, %bb.e ], [ %scevgep, %bb.c ]
  %.3.us.us.us = phi i32 [ %.186117.us.us.us, %bb.d ], [ %i.bs, %bb.e ], [ %i.bh, %bb.c ] ; 2 uses
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.bt = and i64 %indvars.iv.next188, 4294967295
  %exitcond191.not = icmp eq i64 %i.bt, 1
  br i1 %exitcond191.not, label %._crit_edge.split.us133.us.us, label %.preheader104.us131.us.us, !llvm.loop !183

.preheader.us.us.us:                              ; preds = %bb.d, %.loopexit
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %.loopexit ], [ 0, %bb.d ] ; 2 uses
  %.082122.us.us.us = phi i32 [ %.lcssa232, %.loopexit ], [ 0, %bb.d ] ; 2 uses
  %gep224 = getelementptr [164 x i8], ptr %invariant.gep223, i64 %indvars.iv182 ; 2 uses
  br i1 %min.iters.check239, label %scalar.ph238.preheader, label %vector.ph240

vector.ph240:                                     ; preds = %.preheader.us.us.us
  %i.bu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.082122.us.us.us, i64 0
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next247, %vector.body242 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bu, %vector.ph240 ], [ %i.ca, %vector.body242 ]
  %vec.phi244 = phi <4 x i32> [ zeroinitializer, %vector.ph240 ], [ %i.cb, %vector.body242 ]
  %i.bv = getelementptr [2 x i8], ptr %gep224, i64 %index243 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 498
  %i.bx = getelementptr i8, ptr %i.bv, i64 506
  %wide.load245 = load <4 x i16>, ptr %i.bw, align 2, !tbaa !45
  %wide.load246 = load <4 x i16>, ptr %i.bx, align 2, !tbaa !45
  %i.by = sext <4 x i16> %wide.load245 to <4 x i32>
  %i.bz = sext <4 x i16> %wide.load246 to <4 x i32>
  %i.ca = add <4 x i32> %vec.phi, %i.by           ; 2 uses
  %i.cb = add <4 x i32> %vec.phi244, %i.bz        ; 2 uses
  %index.next247 = add nuw i64 %index243, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next247, %n.vec241
  br i1 %i.cc, label %middle.block248, label %vector.body242, !llvm.loop !184

middle.block248:                                  ; preds = %vector.body242
  %bin.rdx = add <4 x i32> %i.cb, %i.ca
  %i.cd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n249, label %.loopexit, label %scalar.ph238.preheader

scalar.ph238.preheader:                           ; preds = %.preheader.us.us.us, %middle.block248
  %indvars.iv177.ph = phi i64 [ 0, %.preheader.us.us.us ], [ %n.vec241, %middle.block248 ]
  %.1120.us.us.us.ph = phi i32 [ %.082122.us.us.us, %.preheader.us.us.us ], [ %i.cd, %middle.block248 ]
  br label %scalar.ph238

.preheader104.us131.us.us:                        ; preds = %..loopexit_crit_edge.us.us.us, %.preheader104.lr.ph.us.us143.us
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %..loopexit_crit_edge.us.us.us ], [ %i.ak, %.preheader104.lr.ph.us.us143.us ] ; 3 uses
  %.085125.us.us.us = phi i32 [ %.3.us.us.us, %..loopexit_crit_edge.us.us.us ], [ 0, %.preheader104.lr.ph.us.us143.us ]
  %.087124.us.us.us = phi ptr [ %.188110.us.us.us, %..loopexit_crit_edge.us.us.us ], [ %i.v, %.preheader104.lr.ph.us.us143.us ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.087124.us.us.us, i64 %i.an
  %gep228 = getelementptr [164 x i8], ptr %invariant.gep227, i64 %indvars.iv187
  br label %bb.b

._crit_edge.split.us133.us.us:                    ; preds = %..loopexit_crit_edge.us.us.us
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv192 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !45
  %i.cg = sext i16 %i.cf to i32
  %i.ch = add nsw i32 %i.ad, %.3.us.us.us
  %i.ci = ashr i32 %i.ch, %i.ab
  %i.cj = add nsw i32 %i.ci, %i.cg                ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.r
  %..i.us.us145.us = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.s)
  %.0.i.us.us146.us = select i1 %i.ck, i32 %i.r, i32 %..i.us.us145.us
  %i.cl = trunc nsw i32 %.0.i.us.us146.us to i16
  store i16 %i.cl, ptr %i.ce, align 2, !tbaa !45
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count196
  br i1 %exitcond197.not, label %._crit_edge130.split.us.split.us147.us, label %.preheader104.lr.ph.us.us143.us, !llvm.loop !185

._crit_edge130.split.us.split.us147.us:           ; preds = %._crit_edge.split.us133.us.us
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count161
  br i1 %exitcond202.not, label %.split.us, label %.preheader105.us.us, !llvm.loop !186

.preheader105.us:                                 ; preds = %.preheader105.us.preheader, %._crit_edge130.split.us141
  %indvars.iv168 = phi i64 [ 3, %.preheader105.us.preheader ], [ %indvars.iv.next169, %._crit_edge130.split.us141 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [164 x i8], ptr %0, i64 %indvars.iv168 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader105.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader105.us ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %index
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 6 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.co, align 2, !tbaa !45
  %i.cp = sext <8 x i16> %wide.load to <8 x i32>
  %i.cq = add nsw <8 x i32> %broadcast.splat, %i.cp ; 2 uses
  %i.cr = icmp slt <8 x i32> %i.cq, %broadcast.splat235
  %i.cs = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.cq, <8 x i32> %broadcast.splat237)
  %i.ct = select <8 x i1> %i.cr, <8 x i32> %broadcast.splat235, <8 x i32> %i.cs
  %i.cu = trunc nsw <8 x i32> %i.ct to <8 x i16>
  store <8 x i16> %i.cu, ptr %i.co, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130.split.us141, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader105.us, %middle.block
  %indvars.iv163.ph = phi i64 [ 3, %.preheader105.us ], [ %i.ai, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %scalar.ph ], [ %indvars.iv163.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv163 ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !45
  %i.cy = sext i16 %i.cx to i32
  %i.cz = add nsw i32 %i.ae, %i.cy                ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.r
  %..i.us139 = tail call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.s)
  %.0.i.us140 = select i1 %i.da, i32 %i.r, i32 %..i.us139
  %i.db = trunc nsw i32 %.0.i.us140 to i16
  store i16 %i.db, ptr %i.cw, align 2, !tbaa !45
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge130.split.us141, label %scalar.ph, !llvm.loop !188

._crit_edge130.split.us141:                       ; preds = %scalar.ph, %middle.block
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count161
  br i1 %exitcond172.not, label %.split.us, label %.preheader105.us, !llvm.loop !186

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %.preheader106.split.us, label %.preheader107, !llvm.loop !189

bb.g:                                             ; preds = %.preheader107, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader107 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.1102111 = phi i32 [ %.0101113, %.preheader107 ], [ %i.dk, %bb.g ] ; 4 uses
  %i.dc = ashr i32 %.1102111, 1                   ; 2 uses
  %i.dd = lshr i32 %.1102111, 3
  %i.de = lshr i32 %.1102111, 12
  %i.df = xor i32 %i.dd, %i.de
  %i.dg = xor i32 %i.df, %.1102111
  %i.dh = xor i32 %i.dg, %i.dc
  %i.di = shl i32 %i.dh, 15
  %i.dj = and i32 %i.di, 32768
  %i.dk = or i32 %i.dj, %i.dc                     ; 3 uses
  %i.dl = lshr i32 %i.dk, 5
  %i.dm = and i32 %i.dl, 2047
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @gaussian_sequence, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !45
  %i.dq = sext i16 %i.dp to i32
  %i.dr = add nsw i32 %i.m, %i.dq
  %i.ds = ashr i32 %i.dr, %i.h
  %i.dt = trunc i32 %i.ds to i16
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_3
