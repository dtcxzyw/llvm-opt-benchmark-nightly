Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hlsenc?download=true
inline.NumInlined: 50
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hls_init:bb.a
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !104
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %indvars.iv.i.i ; 5 uses
  %i.cg = call ptr @av_strtok(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.q) #15 ; 2 uses
  %.not4658.i.i = icmp eq ptr %i.cg, null
  br i1 %.not4658.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %.lr.ph.i.i
  %i.cj = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.cq, %bb.p ] ; 4 uses
  %i.ck = call i32 @av_strstart(ptr noundef nonnull %i.cj, ptr noundef nonnull @.str.222, ptr noundef nonnull %i.r) #15
  %.not51.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not51.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !62
  store ptr %i.cl, ptr %i.cf, align 8, !tbaa !107
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.cm = call i32 @av_strstart(ptr noundef nonnull %i.cj, ptr noundef nonnull @.str.223, ptr noundef nonnull %i.r) #15
  %.not52.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not52.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = load ptr, ptr %i.r, align 8, !tbaa !62
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !108
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.co = call i32 @av_strstart(ptr noundef nonnull %i.cj, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.r) #15
  %.not53.i.i = icmp eq i32 %i.co, 0
  br i1 %.not53.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr %i.r, align 8, !tbaa !62
  store ptr %i.cp, ptr %i.ci, align 8, !tbaa !109
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.225, ptr noundef nonnull %i.cj) #15
  br label %parse_cc_stream_mapstring.exit.thread.i

bb.p:                                             ; preds = %bb.n, %bb.l, %bb.j
  %i.cq = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.q) #15 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.cq, null
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %bb.i, !llvm.loop !161

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.h
  %i.cr = load ptr, ptr %i.cf, align 8, !tbaa !107
  %.not47.i.i = icmp eq ptr %i.cr, null
  br i1 %.not47.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 5 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !108 ; 2 uses
  %.not48.i.i = icmp eq ptr %i.ct, null
  br i1 %.not48.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.226) #15
  br label %parse_cc_stream_mapstring.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.cu = call i32 @av_strstart(ptr noundef nonnull %i.ct, ptr noundef nonnull @.str.227, ptr noundef nonnull %i.r) #15
  %.not49.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not49.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.cw = call i64 @strtol(ptr noundef nonnull captures(none) %i.cv, ptr noundef null, i32 noundef 10) #15, !inline_history !162
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = add i32 %i.cx, -5
  %or.cond.i.i = icmp ult i32 %i.cy, -4
  br i1 %or.cond.i.i, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.da = call i64 @strtol(ptr noundef nonnull captures(none) %i.cz, ptr noundef null, i32 noundef 10) #15, !inline_history !162
  %i.db = trunc i64 %i.da to i32
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !108
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.228, i32 noundef %i.db, ptr noundef %i.dc) #15
  br label %parse_cc_stream_mapstring.exit.thread.i

bb.v:                                             ; preds = %bb.s
  %i.dd = load ptr, ptr %i.cs, align 8, !tbaa !108
  %i.de = call i32 @av_strstart(ptr noundef %i.dd, ptr noundef nonnull @.str.229, ptr noundef nonnull %i.r) #15
  %.not50.i.i = icmp eq i32 %i.de, 0
  br i1 %.not50.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.dg = call i64 @strtol(ptr noundef nonnull captures(none) %i.df, ptr noundef null, i32 noundef 10) #15, !inline_history !162
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.dh, -64
  %or.cond54.i.i = icmp ult i32 %i.di, -63
  br i1 %or.cond54.i.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dj = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.dk = call i64 @strtol(ptr noundef nonnull captures(none) %i.dj, ptr noundef null, i32 noundef 10) #15, !inline_history !162
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = load ptr, ptr %i.cs, align 8, !tbaa !108
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.230, i32 noundef %i.dl, ptr noundef %i.dm) #15
  br label %parse_cc_stream_mapstring.exit.thread.i

bb.y:                                             ; preds = %bb.v
  %i.dn = load ptr, ptr %i.cs, align 8, !tbaa !108
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.231, ptr noundef %i.dn) #15
  br label %parse_cc_stream_mapstring.exit.thread.i

bb.z:                                             ; preds = %bb.w, %bb.t
  %i.do = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.dp = call ptr @av_strtok(ptr noundef %i.do, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.p) #15 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.dp, null
  br i1 %.not45.i.i, label %parse_cc_stream_mapstring.exit.i, label %.lr.ph62.i.i, !llvm.loop !163

parse_cc_stream_mapstring.exit.thread.i:          ; preds = %.lr.ph62.i.i, %bb.y, %bb.x, %bb.u, %bb.r, %bb.o, %.loopexit70.i.i, %bb.f
  %.036.i.ph.i = phi i32 [ -22, %bb.o ], [ -12, %bb.f ], [ -12, %.loopexit70.i.i ], [ -22, %bb.r ], [ -22, %bb.y ], [ -22, %bb.x ], [ -22, %bb.u ], [ -22, %.lr.ph62.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  br label %update_variant_stream_info.exit.thread

parse_cc_stream_mapstring.exit.i:                 ; preds = %bb.z, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  br label %bb.aa

bb.aa:                                            ; preds = %parse_cc_stream_mapstring.exit.i, %bb.e
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8536
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !182
  %.not28.i = icmp eq ptr %i.dr, null
  br i1 %.not28.i, label %bb.bq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load ptr, ptr %i.w, align 8, !tbaa !25  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8536 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !182
  %i.dv = call noalias ptr @av_strdup(ptr noundef %i.du) #15 ; 3 uses
  store ptr %i.dv, ptr %i.j, align 8, !tbaa !62
  %.not.i32.i = icmp eq ptr %i.dv, null
  br i1 %.not.i32.i, label %update_variant_stream_info.exit.thread342, label %.preheader139.preheader.i.i

.preheader139.preheader.i.i:                      ; preds = %bb.ab
  %i.dw = call ptr @av_strtok(ptr noundef nonnull %i.dv, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.k) #15
  %.not110.peel.i.i = icmp eq ptr %i.dw, null
  br i1 %.not110.peel.i.i, label %.loopexit207.i.i, label %.preheader139.i.i

.preheader139.i.i:                                ; preds = %.preheader139.preheader.i.i, %.preheader139.i.i
  %.097.i.i = phi i32 [ %i.dy, %.preheader139.i.i ], [ 1, %.preheader139.preheader.i.i ] ; 2 uses
  %i.dx = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.k) #15
  %.not110.i.i = icmp eq ptr %i.dx, null
  %i.dy = add nuw nsw i32 %.097.i.i, 1
  br i1 %.not110.i.i, label %.loopexit207.i.i, label %.preheader139.i.i, !llvm.loop !164

.loopexit207.i.i:                                 ; preds = %.preheader139.i.i, %.preheader139.preheader.i.i
  %.097.lcssa.i.i = phi i32 [ 0, %.preheader139.preheader.i.i ], [ %.097.i.i, %.preheader139.i.i ] ; 2 uses
  call void @av_freep(ptr noundef nonnull %i.j) #15
  %i.dz = zext nneg i32 %.097.lcssa.i.i to i64
  %i.ea = mul nuw nsw i64 %i.dz, 12856
  %i.eb = call noalias ptr @av_mallocz(i64 noundef %i.ea) #15 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 8488 ; 3 uses
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !30
  %.not111.i.i = icmp eq ptr %i.eb, null
  br i1 %.not111.i.i, label %update_variant_stream_info.exit.thread342, label %bb.ac

bb.ac:                                            ; preds = %.loopexit207.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 8496 ; 3 uses
  store i32 %.097.lcssa.i.i, ptr %i.ed, align 8, !tbaa !29
  %i.ee = load ptr, ptr %i.dt, align 8, !tbaa !182 ; 2 uses
  store ptr %i.ee, ptr %i.j, align 8, !tbaa !62
  %i.ef = call ptr @av_strtok(ptr noundef %i.ee, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.k) #15 ; 2 uses
  %.not112170.i.i = icmp eq ptr %i.ef, null
  br i1 %.not112170.i.i, label %update_variant_stream_info.exit, label %.lr.ph173.i.i

.lr.ph173.i.i:                                    ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 8616
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 8620
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.ad

.loopexit.i.i:                                    ; preds = %bb.bp, %.preheader137.i.i
  %i.ej = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.ek = call ptr @av_strtok(ptr noundef %i.ej, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.k) #15 ; 2 uses
  %.not112.i.i = icmp eq ptr %i.ek, null
  br i1 %.not112.i.i, label %update_variant_stream_info.exit, label %bb.ad, !llvm.loop !165

bb.ad:                                            ; preds = %.loopexit.i.i, %.lr.ph173.i.i
  %indvars.iv224.i.i = phi i64 [ 0, %.lr.ph173.i.i ], [ %indvars.iv.next225.i.i, %.loopexit.i.i ] ; 5 uses
  %i.el = phi ptr [ %i.ef, %.lr.ph173.i.i ], [ %i.ek, %.loopexit.i.i ] ; 2 uses
  %5 = trunc nuw i64 %indvars.iv224.i.i to i32    ; 4 uses
  %smax.i.i = call i32 @llvm.smax.i32(i32 %5, i32 1)
  store ptr null, ptr %i.j, align 8, !tbaa !62
  %i.em = load i32, ptr %i.ed, align 8, !tbaa !29
  %i.en = zext i32 %i.em to i64
  %i.eo = icmp samesign ult i64 %indvars.iv224.i.i, %i.en
  br i1 %i.eo, label %bb.ae, label %update_variant_stream_info.exit.thread342

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load ptr, ptr %i.ec, align 8, !tbaa !30
  %i.eq = getelementptr inbounds nuw [12856 x i8], ptr %i.ep, i64 %indvars.iv224.i.i ; 10 uses
  store i32 %5, ptr %i.eq, align 8, !tbaa !110
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 12804 ; 2 uses
  store i32 0, ptr %i.er, align 4, !tbaa !111
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 12796 ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %bb.ae
  %.1.i.i = phi ptr [ %i.el, %bb.ae ], [ %i.ez, %bb.aj ] ; 4 uses
  %i.et = call i32 @av_strncasecmp(ptr noundef nonnull %.1.i.i, ptr noundef nonnull @.str.232, i64 noundef 2) #15
  %.not113.i.i = icmp eq i32 %i.et, 0
  br i1 %.not113.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eu = call i32 @av_strncasecmp(ptr noundef nonnull %.1.i.i, ptr noundef nonnull @.str.233, i64 noundef 2) #15
  %.not114.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not114.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = call i32 @av_strncasecmp(ptr noundef nonnull %.1.i.i, ptr noundef nonnull @.str.234, i64 noundef 2) #15
  %.not115.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not115.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ew = load i32, ptr %i.es, align 4, !tbaa !36
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.es, align 4, !tbaa !36
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ey = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i.i, i32 noundef 44) #16 ; 2 uses
  %.not116.i.i = icmp eq ptr %i.ey, null
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  br i1 %.not116.i.i, label %bb.ak, label %bb.af

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next225.i.i = add nuw nsw i64 %indvars.iv224.i.i, 1
  %i.fa = load i32, ptr %i.es, align 4, !tbaa !36
  %i.fb = zext i32 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = call noalias ptr @av_mallocz(i64 noundef %i.fc) #15 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 12656 ; 3 uses
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !37
  %.not117.i.i = icmp eq ptr %i.fd, null
  br i1 %.not117.i.i, label %update_variant_stream_info.exit.thread342, label %.preheader137.i.i

.preheader137.i.i:                                ; preds = %bb.ak
  %i.ff = call ptr @av_strtok(ptr noundef nonnull %i.el, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.l) #15 ; 2 uses
  %.not118166.i.i = icmp eq ptr %i.ff, null
  br i1 %.not118166.i.i, label %.loopexit.i.i, label %.lr.ph169.i.i

.lr.ph169.i.i:                                    ; preds = %.preheader137.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 12808
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 12840
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 12848
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 12816
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 12824
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 12832
  %.not175.i.i = icmp eq i64 %indvars.iv224.i.i, 0
  %wide.trip.count217.i.i = zext nneg i32 %smax.i.i to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.bp, %.lr.ph169.i.i
  %i.fm = phi ptr [ %i.ff, %.lr.ph169.i.i ], [ %i.ia, %bb.bp ] ; 12 uses
  %.095167.i.i = phi i32 [ 0, %.lr.ph169.i.i ], [ %.196.i.i, %bb.bp ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  %i.fn = call i32 @av_strstart(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.m) #15
  %.not119.i.i = icmp eq i32 %i.fn, 0
  br i1 %.not119.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fo = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.fo, ptr %i.fg, align 8, !tbaa !112
  br label %bb.bp, !llvm.loop !166

bb.an:                                            ; preds = %bb.al
  %i.fp = call i32 @av_strstart(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.235, ptr noundef nonnull %i.m) #15
  %.not120.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not120.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.fr = call i32 @av_strncasecmp(ptr noundef %i.fq, ptr noundef nonnull @.str.236, i64 noundef 3) #15
  %.not131.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not131.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fs = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.ft = call i32 @av_strncasecmp(ptr noundef %i.fs, ptr noundef nonnull @.str.237, i64 noundef 1) #15
  %.not132.i.i = icmp eq i32 %i.ft, 0
  %i.fu = zext i1 %.not132.i.i to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fv = phi i32 [ 1, %bb.ao ], [ %i.fu, %bb.ap ]
  store i32 %i.fv, ptr %i.er, align 4, !tbaa !111
  store i32 1, ptr %i.eg, align 8, !tbaa !102
  br label %bb.bp, !llvm.loop !166

bb.ar:                                            ; preds = %bb.an
  %i.fw = call i32 @av_strstart(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.238, ptr noundef nonnull %i.m) #15
  %.not121.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not121.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.fx, ptr %i.fh, align 8, !tbaa !113
  br label %bb.bp, !llvm.loop !166

bb.at:                                            ; preds = %bb.ar
  %i.fy = call i32 @av_strstart(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.239, ptr noundef nonnull %i.m) #15
  %.not122.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not122.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.fz, ptr %i.fi, align 8, !tbaa !114
  br label %bb.bp, !llvm.loop !166

bb.av:                                            ; preds = %bb.at
  %i.ga = call i32 @av_strstart(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.240, ptr noundef nonnull %i.m) #15
  %.not123.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not123.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gb = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.gb, ptr %i.fj, align 8, !tbaa !59
  br label %bb.bp, !llvm.loop !166

bb.ax:                                            ; preds = %bb.av
  %i.gc = call i32 @av_strstart(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.241, ptr noundef nonnull %i.m) #15
  %.not124.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not124.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gd = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.gd, ptr %i.fk, align 8, !tbaa !115
  br label %bb.bp, !llvm.loop !166

bb.az:                                            ; preds = %bb.ax
  %i.ge = call i32 @av_strstart(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.222, ptr noundef nonnull %i.m) #15
  %.not125.i.i = icmp eq i32 %i.ge, 0
  br i1 %.not125.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gf = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.gf, ptr %i.fl, align 8, !tbaa !116
  br label %bb.bp, !llvm.loop !166

bb.bb:                                            ; preds = %bb.az
  %i.gg = call i32 @av_strstart(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.233, ptr noundef nonnull %i.m) #15
  %.not126.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not126.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 1, ptr %i.eh, align 4, !tbaa !103
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  %i.gh = call i32 @av_strstart(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.232, ptr noundef nonnull %i.m) #15
  %.not127.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not127.i.i, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.gi = call i32 @av_strstart(ptr noundef nonnull %i.fm, ptr noundef nonnull @.str.234, ptr noundef nonnull %i.m) #15
  %.not128.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not128.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.225, ptr noundef nonnull %i.fm) #15
  br label %.thread.i.i

bb.bg:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.099.i.i = phi i32 [ 0, %bb.bc ], [ 1, %bb.bd ], [ 3, %bb.be ]
  %i.gj = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.gk = call i64 @strtoll(ptr noundef %i.gj, ptr noundef nonnull %i.n, i32 noundef 10) #15
  %i.gl = load ptr, ptr %i.m, align 8, !tbaa !62  ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !56
  %i.gn = sext i8 %i.gm to i32
  %i.go = add nsw i32 %i.gn, -58
  %i.gp = icmp ult i32 %i.go, -10
  br i1 %i.gp, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gq = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !56
  %.not130.i.i = icmp eq i8 %i.gr, 0
  br i1 %.not130.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.242, ptr noundef nonnull %i.gl) #15
  br label %.thread.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.gs = call fastcc i32 @get_nth_codec_stream_index(ptr noundef %0, i32 noundef %.099.i.i, i64 noundef %i.gk) ; 4 uses
  %i.gt = icmp sgt i32 %i.gs, -1
  br i1 %i.gt, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.gu = load i32, ptr %i.es, align 4, !tbaa !36
  %i.gv = icmp ult i32 %.095167.i.i, %i.gu
  br i1 %i.gv, label %.preheader136.i.i, label %bb.bo

.preheader136.i.i:                                ; preds = %bb.bk
  %i.gw = icmp sgt i32 %.095167.i.i, 0
  br i1 %i.gw, label %.lr.ph.split.preheader.i.i, label %.preheader135.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.preheader136.i.i
  %i.gx = load ptr, ptr %i.fe, align 8, !tbaa !37
  %i.gy = load ptr, ptr %i.ei, align 8, !tbaa !52
  %i.gz = zext nneg i32 %i.gs to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !39
  %wide.trip.count.i.i = zext nneg i32 %.095167.i.i to i64
  br label %.lr.ph.split.i.i

bb.bl:                                            ; preds = %.lr.ph.split.i.i
  %indvars.iv.next.i37.i = add nuw nsw i64 %indvars.iv.i36.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i37.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader135.i.i, label %.lr.ph.split.i.i, !llvm.loop !167

.preheader135.i.i:                                ; preds = %bb.bl, %.preheader136.i.i
  br i1 %.not175.i.i, label %.preheader135.._crit_edge160_crit_edge.i.i, label %.preheader.preheader.i33.i

.preheader135.._crit_edge160_crit_edge.i.i:       ; preds = %.preheader135.i.i
  %.pre.i.i = zext nneg i32 %i.gs to i64
  br label %._crit_edge160.i.i

.preheader.preheader.i33.i:                       ; preds = %.preheader135.i.i
  %i.hc = load ptr, ptr %i.ec, align 8, !tbaa !30
  %i.hd = zext nneg i32 %i.gs to i64              ; 2 uses
  br label %.preheader.i34.i

.lr.ph.split.i.i:                                 ; preds = %bb.bl, %.lr.ph.split.preheader.i.i
  %indvars.iv.i36.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i ], [ %indvars.iv.next.i37.i, %bb.bl ] ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.i36.i
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !39
  %i.hg = icmp eq ptr %i.hf, %i.hb
  br i1 %i.hg, label %.split.us.i.i, label %bb.bl

.split.us.i.i:                                    ; preds = %.lr.ph.split.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.243, i32 noundef %5) #15
  br label %.thread.i.i

.preheader.i34.i:                                 ; preds = %._crit_edge.i35.i, %.preheader.preheader.i33.i
  %indvars.iv214.i.i = phi i64 [ 0, %.preheader.preheader.i33.i ], [ %indvars.iv.next215.i.i, %._crit_edge.i35.i ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [12856 x i8], ptr %i.hc, i64 %indvars.iv214.i.i ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 12796
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !36 ; 2 uses
  %.not178.i.i = icmp eq i32 %i.hj, 0
  br i1 %.not178.i.i, label %._crit_edge.i35.i, label %.lr.ph158.i.i

.lr.ph158.i.i:                                    ; preds = %.preheader.i34.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 12656
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !37
  %i.hm = load ptr, ptr %i.ei, align 8, !tbaa !52
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hd
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !39
  %wide.trip.count212.i.i = zext i32 %i.hj to i64
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bn
  %indvars.iv.next210.i.i = add nuw nsw i64 %indvars.iv209.i.i, 1 ; 2 uses
  %exitcond213.not.i.i = icmp eq i64 %indvars.iv.next210.i.i, %wide.trip.count212.i.i
  br i1 %exitcond213.not.i.i, label %._crit_edge.i35.i, label %bb.bn, !llvm.loop !168

bb.bn:                                            ; preds = %bb.bm, %.lr.ph158.i.i
  %indvars.iv209.i.i = phi i64 [ 0, %.lr.ph158.i.i ], [ %indvars.iv.next210.i.i, %bb.bm ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv209.i.i
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !39
  %i.hr = icmp eq ptr %i.hq, %i.ho
  br i1 %i.hr, label %.split162.us.i.i, label %bb.bm

.split162.us.i.i:                                 ; preds = %bb.bn
  %i.hs = trunc nuw nsw i64 %indvars.iv214.i.i to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.244, i32 noundef %i.hs, i32 noundef %5) #15
  br label %.thread.i.i

._crit_edge.i35.i:                                ; preds = %bb.bm, %.preheader.i34.i
  %indvars.iv.next215.i.i = add nuw nsw i64 %indvars.iv214.i.i, 1 ; 2 uses
  %exitcond218.not.i.i = icmp eq i64 %indvars.iv.next215.i.i, %wide.trip.count217.i.i
  br i1 %exitcond218.not.i.i, label %._crit_edge160.i.i, label %.preheader.i34.i, !llvm.loop !169

._crit_edge160.i.i:                               ; preds = %._crit_edge.i35.i, %.preheader135.._crit_edge160_crit_edge.i.i
  %.pre-phi228.i.i = phi i64 [ %.pre.i.i, %.preheader135.._crit_edge160_crit_edge.i.i ], [ %i.hd, %._crit_edge.i35.i ]
  %i.ht = load ptr, ptr %i.ei, align 8, !tbaa !52
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.pre-phi228.i.i
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !39
  %i.hw = load ptr, ptr %i.fe, align 8, !tbaa !37
  %i.hx = add nsw i32 %.095167.i.i, 1
  %i.hy = sext i32 %.095167.i.i to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.hy
  store ptr %i.hv, ptr %i.hz, align 8, !tbaa !39
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk, %bb.bj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.245, ptr noundef nonnull %i.fm) #15
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bo, %.split162.us.i.i, %.split.us.i.i, %bb.bi, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  br label %update_variant_stream_info.exit.thread342

bb.bp:                                            ; preds = %._crit_edge160.i.i, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.am
  %.196.i.i = phi i32 [ %.095167.i.i, %bb.am ], [ %.095167.i.i, %bb.aq ], [ %.095167.i.i, %bb.as ], [ %.095167.i.i, %bb.au ], [ %.095167.i.i, %bb.aw ], [ %.095167.i.i, %bb.ay ], [ %.095167.i.i, %bb.ba ], [ %i.hx, %._crit_edge160.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  %i.ia = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.l) #15 ; 2 uses
  %.not118.i.i = icmp eq ptr %i.ia, null
  br i1 %.not118.i.i, label %.loopexit.i.i, label %bb.al

bb.bq:                                            ; preds = %bb.aa
  %i.ib = call noalias ptr @av_mallocz(i64 noundef 12856) #15 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bm, i64 8488 ; 2 uses
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !30
  %.not29.i = icmp eq ptr %i.ib, null
  br i1 %.not29.i, label %update_variant_stream_info.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.id = getelementptr inbounds nuw i8, ptr %i.bm, i64 8496
  store i32 1, ptr %i.id, align 8, !tbaa !29
  store i32 0, ptr %i.ib, align 8, !tbaa !110
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !117 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 12796
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !36
  %i.ih = zext i32 %i.if to i64
  %i.ii = shl nuw nsw i64 %i.ih, 3
  %i.ij = call noalias ptr @av_mallocz(i64 noundef %i.ii) #15 ; 9 uses
  %i.ik = ptrtoaddr ptr %i.ij to i64
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !30 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 12656
  store ptr %i.ij, ptr %i.im, align 8, !tbaa !37
  %.not30.i = icmp eq ptr %i.ij, null
  br i1 %.not30.i, label %update_variant_stream_info.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.in = getelementptr inbounds nuw i8, ptr %i.bm, i64 8512
  %i.io = load i32, ptr %i.in, align 8, !tbaa !105
  %.not31.i = icmp eq i32 %i.io, 0
  br i1 %.not31.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bm, i64 8504
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !104
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !107
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 12832
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !116
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.it = load i32, ptr %i.ie, align 4, !tbaa !117 ; 3 uses
  %.not62.i = icmp eq i32 %i.it, 0
  br i1 %.not62.i, label %update_variant_stream_info.exit.thread339, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bu
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !52 ; 7 uses
  %wide.trip.count.i = zext i32 %i.it to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %i.it, 8
  %i.iw = ptrtoaddr ptr %i.iv to i64
  %i.ix = sub i64 %i.iw, %i.ik
  %diff.check = icmp ugt i64 %i.ix, -32
  %or.cond677 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond677, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %index ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %wide.load = load <2 x ptr>, ptr %i.iy, align 8, !tbaa !39
  %wide.load675 = load <2 x ptr>, ptr %i.iz, align 8, !tbaa !39
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store <2 x ptr> %wide.load, ptr %i.ja, align 8, !tbaa !39
  store <2 x ptr> %wide.load675, ptr %i.jb, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %update_variant_stream_info.exit.thread339, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.i.prol
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !39
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i.prol
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !39
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !171

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.jg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.jh = icmp ugt i64 %i.jg, -4
  br i1 %i.jh, label %update_variant_stream_info.exit.thread339, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.i
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !39
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.next.i
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !39
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next.i
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !39
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.next.i.1
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !39
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next.i.1
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !39
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.next.i.2
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !39
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next.i.2
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !39
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %update_variant_stream_info.exit.thread339, label %scalar.ph, !llvm.loop !172

update_variant_stream_info.exit.thread342:        ; preds = %bb.ad, %bb.ak, %.thread.i.i, %bb.ab, %.loopexit207.i.i
  %.3.i.i.ph = phi i32 [ -12, %bb.ab ], [ -22, %.thread.i.i ], [ -12, %.loopexit207.i.i ], [ -22, %bb.ad ], [ -12, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  br label %update_variant_stream_info.exit.thread

update_variant_stream_info.exit:                  ; preds = %.loopexit.i.i, %bb.ac
  %i.ju = load i32, ptr %i.ed, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.246, i32 noundef %i.ju) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  br label %update_variant_stream_info.exit.thread339

update_variant_stream_info.exit.thread:           ; preds = %bb.bq, %bb.br, %parse_cc_stream_mapstring.exit.thread.i, %update_variant_stream_info.exit.thread342
  %.026.i337 = phi i32 [ %.3.i.i.ph, %update_variant_stream_info.exit.thread342 ], [ -12, %bb.bq ], [ -12, %bb.br ], [ %.036.i.ph.i, %parse_cc_stream_mapstring.exit.thread.i ] ; 2 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.208, i32 noundef %.026.i337) #15
  br label %sls_flag_check_duration_size.exit.thread

update_variant_stream_info.exit.thread339:        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.bu, %update_variant_stream_info.exit
  %i.jv = getelementptr inbounds nuw i8, ptr %i.x, i64 8472
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !118
  %i.jx = icmp eq ptr %i.jw, null
  %i.jy = icmp ne i32 %i.ae, 0
  %or.cond = select i1 %i.jx, i1 %i.jy, i1 false
  br i1 %or.cond, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %update_variant_stream_info.exit.thread339
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.x, i32 noundef 24, ptr noundef nonnull @.str.209) #15
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %update_variant_stream_info.exit.thread339
  %i.jz = getelementptr inbounds nuw i8, ptr %i.x, i64 8496 ; 8 uses
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !29
  %i.kb = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.kc = call fastcc i32 @validate_name(i32 noundef %i.ka, ptr noundef %i.kb) ; 2 uses
  %i.kd = icmp slt i32 %i.kc, 0
  br i1 %i.kd, label %sls_flag_check_duration_size.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ke = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !119 ; 2 uses
end_hunk_0
begin_hunk_1_@av_malloc

; Function Attrs: nounwind uwtable
define internal fastcc void @append_postfix(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  %i.b = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #16 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i64 @av_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 10) #15 ; 0 uses
  store i8 0, ptr %i.b, align 1, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = sub i64 %i.f, %i.d
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.e, i64 noundef %i.g, ptr noundef nonnull @.str.250, i32 noundef %2) #15 ; 0 uses
  %char0 = load i8, ptr %i.a, align 1
  %.not10 = icmp eq i8 %char0, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i64 @av_strlcat(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.f) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare ptr @av_strtok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @av_strstart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @get_nth_codec_stream_index(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 4) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !117  ; 3 uses
  %i.d = add i32 %i.c, -1
  %i.e = zext i32 %i.d to i64
  %i.f = icmp samesign ule i64 %2, %i.e
  %i.g = icmp ne i32 %i.c, 0
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.017 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ]  ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = load i32, ptr %i.m, align 8, !tbaa !50
  %.not = icmp eq i32 %i.n, %1
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = zext i32 %.017 to i64
  %i.p = icmp eq i64 %2, %i.o
  br i1 %i.p, label %.loopexit.loopexit.split.loop.exit22, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i32 %.017, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.1 = phi i32 [ %.017, %bb.c ], [ %i.q, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !261

.loopexit.loopexit.split.loop.exit22:             ; preds = %bb.d
  %i.r = trunc nuw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit.split.loop.exit22, %bb.a, %bb.b
  %.014 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %i.r, %.loopexit.loopexit.split.loop.exit22 ], [ -1, %bb.f ]
  ret i32 %.014
}

declare ptr @av_append_path_component(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @avformat_alloc_output_context2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @av_dict_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @avcodec_parameters_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @av_codec_get_id(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_codec_get_tag(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_program_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @avformat_init_output(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @av_dict_count(ptr noundef) local_unnamed_addr #1

declare i32 @ff_get_chomp_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @avio_feof(ptr noundef) local_unnamed_addr #1

declare i32 @av_stristart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @av_small_strptime(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @extract_segment_number(ptr noundef nonnull %0) unnamed_addr #13 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.not = icmp eq ptr %i.b, null
  %i.c = icmp eq ptr %i.b, %0
  %or.cond23 = or i1 %.not, %i.c
  br i1 %or.cond23, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.d = icmp ugt ptr %i.b, %0
  br i1 %i.d, label %.lr.ph, label %.critedge

.preheader:                                       ; preds = %.lr.ph
  %i.e = icmp ugt ptr %i.f, %0
  br i1 %i.e, label %.lr.ph, label %.critedge, !llvm.loop !262

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.026 = phi ptr [ %i.f, %.preheader ], [ %i.b, %.preheader.preheader ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.026, i64 -1 ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56
  %i.h = add i8 %i.g, -48
  %or.cond22 = icmp ult i8 %i.h, 10
  br i1 %or.cond22, label %.preheader, label %..critedge_crit_edge, !llvm.loop !262

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !262

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge, %.preheader.preheader
  %.0.lcssa = phi ptr [ %.026, %..critedge_crit_edge ], [ %i.b, %.preheader.preheader ], [ %i.f, %.preheader ] ; 2 uses
  %i.i = icmp eq ptr %.0.lcssa, %i.b
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.j = tail call ptr @__errno_location() #17    ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !61
  %i.k = call i64 @strtol(ptr noundef nonnull %.0.lcssa, ptr noundef nonnull %i.a, i32 noundef 10) #15 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !61
  %i.m = icmp eq i32 %i.l, 34
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.o = icmp ne ptr %i.n, %i.b
  %i.p = icmp sgt i64 %i.k, 2147483647
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  %i.q = trunc i64 %i.k to i32
  %spec.select = select i1 %or.cond, i32 -1, i32 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.critedge, %bb.a
  %.017 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %.critedge ], [ %spec.select, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.017
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #10

declare void @avformat_free_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS13AVInputFormat", !9, i64 0}
!12 = !{!"p1 _ZTS14AVOutputFormat", !9, i64 0}
!13 = !{!"p1 _ZTS11AVIOContext", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS8AVStream", !14, i64 0}
!16 = !{!"p2 _ZTS13AVStreamGroup", !14, i64 0}
!17 = !{!"p2 _ZTS9AVChapter", !14, i64 0}
!18 = !{!"p1 omnipotent char", !9, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p2 _ZTS9AVProgram", !14, i64 0}
!21 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!22 = !{!"AVIOInterruptCB", !9, i64 0, !9, i64 8}
!23 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!24 = !{!"AVFormatContext", !10, i64 0, !11, i64 8, !12, i64 16, !9, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !15, i64 48, !6, i64 56, !16, i64 64, !6, i64 72, !17, i64 80, !18, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !19, i64 136, !19, i64 144, !18, i64 152, !6, i64 160, !6, i64 164, !20, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !21, i64 192, !19, i64 200, !6, i64 208, !6, i64 212, !22, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !19, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !6, i64 368, !23, i64 376, !23, i64 384, !23, i64 392, !23, i64 400, !6, i64 408, !9, i64 416, !9, i64 424, !19, i64 432, !18, i64 440, !9, i64 448, !9, i64 456, !19, i64 464, !18, i64 472}
!25 = !{!24, !9, i64 24}
!26 = !{!"p1 _ZTS13VariantStream", !9, i64 0}
!27 = !{!"p1 _ZTS20ClosedCaptionsStream", !9, i64 0}
!28 = !{!"HLSContext", !10, i64 0, !19, i64 8, !6, i64 16, !19, i64 24, !19, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !18, i64 56, !18, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !19, i64 96, !19, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !21, i64 136, !6, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !6, i64 184, !18, i64 192, !5, i64 200, !5, i64 4297, !5, i64 8394, !5, i64 8427, !21, i64 8464, !18, i64 8472, !18, i64 8480, !26, i64 8488, !6, i64 8496, !27, i64 8504, !6, i64 8512, !6, i64 8516, !18, i64 8520, !6, i64 8528, !18, i64 8536, !18, i64 8544, !18, i64 8552, !6, i64 8560, !6, i64 8564, !13, i64 8568, !13, i64 8576, !13, i64 8584, !19, i64 8592, !6, i64 8600, !18, i64 8608, !6, i64 8616, !6, i64 8620}
!29 = !{!28, !6, i64 8496}
!30 = !{!28, !26, i64 8488}
!31 = !{!"p1 _ZTS15AVFormatContext", !9, i64 0}
!32 = !{!"double", !5, i64 0}
!33 = !{!"p1 _ZTS10HLSSegment", !9, i64 0}
!34 = !{!"VariantStream", !6, i64 0, !6, i64 4, !19, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !13, i64 40, !6, i64 48, !6, i64 52, !18, i64 56, !18, i64 64, !31, i64 72, !31, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !32, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !32, i64 136, !19, i64 144, !19, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !19, i64 176, !32, i64 184, !19, i64 192, !19, i64 200, !33, i64 208, !33, i64 216, !33, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !32, i64 272, !5, i64 280, !18, i64 4376, !18, i64 4384, !6, i64 4392, !5, i64 4396, !5, i64 8493, !5, i64 12590, !5, i64 12623, !15, i64 12656, !5, i64 12664, !6, i64 12792, !6, i64 12796, !6, i64 12800, !6, i64 12804, !18, i64 12808, !18, i64 12816, !18, i64 12824, !18, i64 12832, !18, i64 12840, !18, i64 12848}
!35 = !{!34, !31, i64 72}
!36 = !{!34, !6, i64 12796}
!37 = !{!34, !15, i64 12656}
!38 = !{!"p1 _ZTS8AVStream", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!28, !19, i64 104}
!41 = !{!"p1 _ZTS17AVCodecParameters", !9, i64 0}
!42 = !{!"AVRational", !6, i64 0, !6, i64 4}
!43 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!44 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!45 = !{!"AVPacket", !43, i64 0, !19, i64 8, !19, i64 16, !18, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !44, i64 48, !6, i64 56, !19, i64 64, !19, i64 72, !9, i64 80, !43, i64 88, !42, i64 96}
!46 = !{!"AVStream", !10, i64 0, !6, i64 8, !6, i64 12, !41, i64 16, !9, i64 24, !42, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !6, i64 64, !6, i64 68, !42, i64 72, !21, i64 80, !42, i64 88, !45, i64 96, !6, i64 200, !42, i64 204, !6, i64 212}
!47 = !{!46, !41, i64 16}
!48 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!49 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !18, i64 16, !6, i64 24, !44, i64 32, !6, i64 40, !6, i64 44, !19, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !42, i64 80, !42, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !48, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!50 = !{!49, !6, i64 0}
!51 = !{!49, !19, i64 48}
!52 = !{!24, !15, i64 48}
!53 = !{!34, !31, i64 80}
!54 = !{!49, !6, i64 4}
!55 = !{!49, !6, i64 8}
!56 = !{!5, !5, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!34, !6, i64 88}
!59 = !{!34, !18, i64 12816}
!60 = !{!34, !6, i64 92}
!61 = !{!6, !6, i64 0}
!62 = !{!18, !18, i64 0}
!63 = !{!28, !19, i64 96}
!64 = !{!34, !6, i64 4}
!65 = !{!34, !19, i64 8}
!66 = !{!34, !6, i64 160}
!67 = !{!28, !19, i64 8}
!68 = !{!28, !19, i64 32}
!69 = !{!28, !19, i64 24}
!70 = !{!34, !19, i64 112}
!71 = !{!28, !6, i64 48}
!72 = !{!34, !6, i64 172}
!73 = !{!34, !19, i64 120}
!74 = !{!34, !6, i64 96}
!75 = !{!34, !32, i64 136}
!76 = !{!34, !32, i64 104}
!77 = !{!34, !6, i64 48}
!78 = !{!24, !13, i64 32}
!79 = !{!34, !19, i64 144}
!80 = !{!34, !19, i64 152}
!81 = !{!28, !6, i64 72}
!82 = !{!34, !6, i64 52}
!83 = !{!34, !13, i64 32}
!84 = !{!34, !18, i64 64}
!85 = !{!28, !6, i64 76}
!86 = !{!34, !18, i64 4384}
!87 = !{!24, !18, i64 88}
!88 = !{!34, !18, i64 56}
!89 = !{!28, !18, i64 192}
!90 = !{!28, !6, i64 144}
!91 = !{!21, !21, i64 0}
!92 = !{!28, !6, i64 8600}
!93 = !{!28, !6, i64 52}
!94 = !{!24, !12, i64 16}
!95 = !{!"p2 _ZTS10AVCodecTag", !14, i64 0}
!96 = !{!"AVOutputFormat", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !95, i64 48, !10, i64 56}
!97 = !{!96, !10, i64 56}
!98 = !{!34, !18, i64 240}
!99 = !{!28, !18, i64 64}
!100 = !{!28, !6, i64 80}
!101 = !{!19, !19, i64 0}
!102 = !{!28, !6, i64 8616}
!103 = !{!28, !6, i64 8620}
!104 = !{!28, !27, i64 8504}
!105 = !{!28, !6, i64 8512}
!106 = !{!"ClosedCaptionsStream", !18, i64 0, !18, i64 8, !18, i64 16}
!107 = !{!106, !18, i64 0}
!108 = !{!106, !18, i64 8}
!109 = !{!106, !18, i64 16}
!110 = !{!34, !6, i64 0}
!111 = !{!34, !6, i64 12804}
!112 = !{!34, !18, i64 12808}
!113 = !{!34, !18, i64 12840}
!114 = !{!34, !18, i64 12848}
!115 = !{!34, !18, i64 12824}
!116 = !{!34, !18, i64 12832}
!117 = !{!24, !6, i64 44}
!118 = !{!28, !18, i64 8472}
!119 = !{!28, !18, i64 56}
!120 = !{!28, !18, i64 8552}
!121 = !{!28, !18, i64 8520}
!122 = !{!28, !6, i64 40}
!123 = !{!34, !32, i64 272}
!124 = !{!34, !18, i64 264}
!125 = !{!34, !18, i64 248}
!126 = !{!34, !18, i64 256}
!127 = !{!28, !6, i64 8564}
!128 = !{!24, !9, i64 448}
!129 = !{!13, !13, i64 0}
!130 = !{!34, !6, i64 168}
!131 = !{!34, !33, i64 216}
!132 = !{!32, !32, i64 0}
!133 = !{!34, !33, i64 208}
!134 = !{!33, !33, i64 0}
!135 = !{!34, !33, i64 224}
!136 = !{!34, !18, i64 232}
!137 = !{!34, !13, i64 40}
!138 = !{!34, !19, i64 200}
!139 = !{!34, !19, i64 192}
!140 = !{!28, !6, i64 84}
!141 = !{!"AVBPrint", !18, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 21}
!142 = !{!141, !6, i64 8}
!143 = !{!141, !6, i64 12}
!144 = distinct !{!144, !57}
!145 = distinct !{!145, !57}
!146 = distinct !{!146, !57}
!147 = !{!46, !6, i64 212}
!148 = !{!46, !6, i64 32}
!149 = !{!46, !6, i64 36}
!150 = !{!34, !6, i64 12792}
!151 = distinct !{!151, !57}
!152 = distinct !{!152, !57}
!153 = !{!45, !6, i64 36}
!154 = !{!31, !31, i64 0}
!155 = !{!45, !19, i64 8}
!156 = !{!34, !6, i64 100}
!157 = !{!45, !6, i64 40}
!158 = !{!45, !19, i64 64}
!159 = distinct !{!159, !57}
!160 = distinct !{!160, !57, !181}
!161 = distinct !{!161, !57}
!162 = distinct !{null}
!163 = distinct !{!163, !57}
!164 = distinct !{!164, !57, !181}
!165 = distinct !{!165, !57}
!166 = distinct !{!166, !57}
!167 = distinct !{!167, !57}
!168 = distinct !{!168, !57}
end_hunk_1
