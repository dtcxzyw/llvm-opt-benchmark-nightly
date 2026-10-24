Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hlsenc?download=true
inline.NumInlined: 50
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hls_init:bb.a
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
  %indvars.iv224.i.i = phi i64 [ 0, %.lr.ph173.i.i ], [ %indvars.iv.next225.i.i, %.loopexit.i.i ] ; 6 uses
  %i.el = phi ptr [ %i.ef, %.lr.ph173.i.i ], [ %i.ek, %.loopexit.i.i ] ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !62
  %i.em = load i32, ptr %i.ed, align 8, !tbaa !29
  %i.en = zext i32 %i.em to i64
  %i.eo = icmp samesign ult i64 %indvars.iv224.i.i, %i.en
  br i1 %i.eo, label %bb.ae, label %update_variant_stream_info.exit.thread342

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load ptr, ptr %i.ec, align 8, !tbaa !30
  %i.eq = getelementptr inbounds nuw [12856 x i8], ptr %i.ep, i64 %indvars.iv224.i.i ; 10 uses
  %i.er = trunc nuw i64 %indvars.iv224.i.i to i32 ; 3 uses
  store i32 %i.er, ptr %i.eq, align 8, !tbaa !110
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 12804 ; 2 uses
  store i32 0, ptr %i.es, align 4, !tbaa !111
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 12796 ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %bb.ae
  %.1.i.i = phi ptr [ %i.el, %bb.ae ], [ %i.fa, %bb.aj ] ; 4 uses
  %i.eu = call i32 @av_strncasecmp(ptr noundef nonnull %.1.i.i, ptr noundef nonnull @.str.232, i64 noundef 2) #15
  %.not113.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not113.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ev = call i32 @av_strncasecmp(ptr noundef nonnull %.1.i.i, ptr noundef nonnull @.str.233, i64 noundef 2) #15
  %.not114.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not114.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ew = call i32 @av_strncasecmp(ptr noundef nonnull %.1.i.i, ptr noundef nonnull @.str.234, i64 noundef 2) #15
  %.not115.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not115.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ex = load i32, ptr %i.et, align 4, !tbaa !36
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.et, align 4, !tbaa !36
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ez = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i.i, i32 noundef 44) #16 ; 2 uses
  %.not116.i.i = icmp eq ptr %i.ez, null
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  br i1 %.not116.i.i, label %bb.ak, label %bb.af

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next225.i.i = add nuw nsw i64 %indvars.iv224.i.i, 1
  %i.fb = load i32, ptr %i.et, align 4, !tbaa !36
  %i.fc = zext i32 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = call noalias ptr @av_mallocz(i64 noundef %i.fd) #15 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 12656 ; 3 uses
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !37
  %.not117.i.i = icmp eq ptr %i.fe, null
  br i1 %.not117.i.i, label %update_variant_stream_info.exit.thread342, label %.preheader137.i.i

.preheader137.i.i:                                ; preds = %bb.ak
  %i.fg = call ptr @av_strtok(ptr noundef nonnull %i.el, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.l) #15 ; 2 uses
  %.not118166.i.i = icmp eq ptr %i.fg, null
  br i1 %.not118166.i.i, label %.loopexit.i.i, label %.lr.ph169.i.i

.lr.ph169.i.i:                                    ; preds = %.preheader137.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 12808
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 12840
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 12848
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 12816
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 12824
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eq, i64 12832
  %.not175.i.i = icmp eq i64 %indvars.iv224.i.i, 0
  br label %bb.al

bb.al:                                            ; preds = %bb.bp, %.lr.ph169.i.i
  %i.fn = phi ptr [ %i.fg, %.lr.ph169.i.i ], [ %i.hz, %bb.bp ] ; 12 uses
  %.095167.i.i = phi i32 [ 0, %.lr.ph169.i.i ], [ %.196.i.i, %bb.bp ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  %i.fo = call i32 @av_strstart(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.m) #15
  %.not119.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not119.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fp = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.fp, ptr %i.fh, align 8, !tbaa !112
  br label %bb.bp, !llvm.loop !166

bb.an:                                            ; preds = %bb.al
  %i.fq = call i32 @av_strstart(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.235, ptr noundef nonnull %i.m) #15
  %.not120.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not120.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fr = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.fs = call i32 @av_strncasecmp(ptr noundef %i.fr, ptr noundef nonnull @.str.236, i64 noundef 3) #15
  %.not131.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not131.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.fu = call i32 @av_strncasecmp(ptr noundef %i.ft, ptr noundef nonnull @.str.237, i64 noundef 1) #15
  %.not132.i.i = icmp eq i32 %i.fu, 0
  %i.fv = zext i1 %.not132.i.i to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fw = phi i32 [ 1, %bb.ao ], [ %i.fv, %bb.ap ]
  store i32 %i.fw, ptr %i.es, align 4, !tbaa !111
  store i32 1, ptr %i.eg, align 8, !tbaa !102
  br label %bb.bp, !llvm.loop !166

bb.ar:                                            ; preds = %bb.an
  %i.fx = call i32 @av_strstart(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.238, ptr noundef nonnull %i.m) #15
  %.not121.i.i = icmp eq i32 %i.fx, 0
  br i1 %.not121.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fy = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.fy, ptr %i.fi, align 8, !tbaa !113
  br label %bb.bp, !llvm.loop !166

bb.at:                                            ; preds = %bb.ar
  %i.fz = call i32 @av_strstart(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.239, ptr noundef nonnull %i.m) #15
  %.not122.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not122.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ga = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.ga, ptr %i.fj, align 8, !tbaa !114
  br label %bb.bp, !llvm.loop !166

bb.av:                                            ; preds = %bb.at
  %i.gb = call i32 @av_strstart(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.240, ptr noundef nonnull %i.m) #15
  %.not123.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not123.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.gc, ptr %i.fk, align 8, !tbaa !59
  br label %bb.bp, !llvm.loop !166

bb.ax:                                            ; preds = %bb.av
  %i.gd = call i32 @av_strstart(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.241, ptr noundef nonnull %i.m) #15
  %.not124.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not124.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ge = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.ge, ptr %i.fl, align 8, !tbaa !115
  br label %bb.bp, !llvm.loop !166

bb.az:                                            ; preds = %bb.ax
  %i.gf = call i32 @av_strstart(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.222, ptr noundef nonnull %i.m) #15
  %.not125.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not125.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gg = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.gg, ptr %i.fm, align 8, !tbaa !116
  br label %bb.bp, !llvm.loop !166

bb.bb:                                            ; preds = %bb.az
  %i.gh = call i32 @av_strstart(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.233, ptr noundef nonnull %i.m) #15
  %.not126.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not126.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 1, ptr %i.eh, align 4, !tbaa !103
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  %i.gi = call i32 @av_strstart(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.232, ptr noundef nonnull %i.m) #15
  %.not127.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not127.i.i, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.gj = call i32 @av_strstart(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.234, ptr noundef nonnull %i.m) #15
  %.not128.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not128.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.225, ptr noundef nonnull %i.fn) #15
  br label %.thread.i.i

bb.bg:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.099.i.i = phi i32 [ 0, %bb.bc ], [ 1, %bb.bd ], [ 3, %bb.be ]
  %i.gk = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.gl = call i64 @strtoll(ptr noundef %i.gk, ptr noundef nonnull %i.n, i32 noundef 10) #15
  %i.gm = load ptr, ptr %i.m, align 8, !tbaa !62  ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !56
  %5 = sext i8 %i.gn to i32
  %6 = add nsw i32 %5, -58
  %i.go = icmp ult i32 %6, -10
  br i1 %i.go, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gp = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !56
  %.not130.i.i = icmp eq i8 %i.gq, 0
  br i1 %.not130.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.242, ptr noundef nonnull %i.gm) #15
  br label %.thread.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.gr = call fastcc i32 @get_nth_codec_stream_index(ptr noundef %0, i32 noundef %.099.i.i, i64 noundef %i.gl) ; 4 uses
  %i.gs = icmp sgt i32 %i.gr, -1
  br i1 %i.gs, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.gt = load i32, ptr %i.et, align 4, !tbaa !36
  %i.gu = icmp ult i32 %.095167.i.i, %i.gt
  br i1 %i.gu, label %.preheader136.i.i, label %bb.bo

.preheader136.i.i:                                ; preds = %bb.bk
  %i.gv = icmp sgt i32 %.095167.i.i, 0
  br i1 %i.gv, label %.lr.ph.split.preheader.i.i, label %.preheader135.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.preheader136.i.i
  %i.gw = load ptr, ptr %i.ff, align 8, !tbaa !37
  %i.gx = load ptr, ptr %i.ei, align 8, !tbaa !52
  %i.gy = zext nneg i32 %i.gr to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !39
  %wide.trip.count.i.i = zext nneg i32 %.095167.i.i to i64
  br label %.lr.ph.split.i.i

bb.bl:                                            ; preds = %.lr.ph.split.i.i
  %indvars.iv.next.i37.i = add nuw nsw i64 %indvars.iv.i36.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i37.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader135.i.i, label %.lr.ph.split.i.i, !llvm.loop !167

.preheader135.i.i:                                ; preds = %bb.bl, %.preheader136.i.i
  br i1 %.not175.i.i, label %.preheader135.._crit_edge160_crit_edge.i.i, label %.preheader.preheader.i33.i

.preheader135.._crit_edge160_crit_edge.i.i:       ; preds = %.preheader135.i.i
  %.pre.i.i = zext nneg i32 %i.gr to i64
  br label %._crit_edge160.i.i

.preheader.preheader.i33.i:                       ; preds = %.preheader135.i.i
  %i.hb = load ptr, ptr %i.ec, align 8, !tbaa !30
  %i.hc = zext nneg i32 %i.gr to i64              ; 2 uses
  br label %.preheader.i34.i

.lr.ph.split.i.i:                                 ; preds = %bb.bl, %.lr.ph.split.preheader.i.i
  %indvars.iv.i36.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i ], [ %indvars.iv.next.i37.i, %bb.bl ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.i36.i
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !39
  %i.hf = icmp eq ptr %i.he, %i.ha
  br i1 %i.hf, label %.split.us.i.i, label %bb.bl

.split.us.i.i:                                    ; preds = %.lr.ph.split.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.243, i32 noundef %i.er) #15
  br label %.thread.i.i

.preheader.i34.i:                                 ; preds = %._crit_edge.i35.i, %.preheader.preheader.i33.i
  %indvars.iv214.i.i = phi i64 [ 0, %.preheader.preheader.i33.i ], [ %indvars.iv.next215.i.i, %._crit_edge.i35.i ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [12856 x i8], ptr %i.hb, i64 %indvars.iv214.i.i ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 12796
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !36 ; 2 uses
  %.not178.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not178.i.i, label %._crit_edge.i35.i, label %.lr.ph158.i.i

.lr.ph158.i.i:                                    ; preds = %.preheader.i34.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 12656
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !37
  %i.hl = load ptr, ptr %i.ei, align 8, !tbaa !52
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hc
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !39
  %wide.trip.count212.i.i = zext i32 %i.hi to i64
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bn
  %indvars.iv.next210.i.i = add nuw nsw i64 %indvars.iv209.i.i, 1 ; 2 uses
  %exitcond213.not.i.i = icmp eq i64 %indvars.iv.next210.i.i, %wide.trip.count212.i.i
  br i1 %exitcond213.not.i.i, label %._crit_edge.i35.i, label %bb.bn, !llvm.loop !168

bb.bn:                                            ; preds = %bb.bm, %.lr.ph158.i.i
  %indvars.iv209.i.i = phi i64 [ 0, %.lr.ph158.i.i ], [ %indvars.iv.next210.i.i, %bb.bm ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv209.i.i
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !39
  %i.hq = icmp eq ptr %i.hp, %i.hn
  br i1 %i.hq, label %.split162.us.i.i, label %bb.bm

.split162.us.i.i:                                 ; preds = %bb.bn
  %i.hr = trunc nuw nsw i64 %indvars.iv214.i.i to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.244, i32 noundef %i.hr, i32 noundef %i.er) #15
  br label %.thread.i.i

._crit_edge.i35.i:                                ; preds = %bb.bm, %.preheader.i34.i
  %indvars.iv.next215.i.i = add nuw nsw i64 %indvars.iv214.i.i, 1 ; 2 uses
  %exitcond218.not.i.i = icmp eq i64 %indvars.iv.next215.i.i, %indvars.iv224.i.i
  br i1 %exitcond218.not.i.i, label %._crit_edge160.i.i, label %.preheader.i34.i, !llvm.loop !169

._crit_edge160.i.i:                               ; preds = %._crit_edge.i35.i, %.preheader135.._crit_edge160_crit_edge.i.i
  %.pre-phi228.i.i = phi i64 [ %.pre.i.i, %.preheader135.._crit_edge160_crit_edge.i.i ], [ %i.hc, %._crit_edge.i35.i ]
  %i.hs = load ptr, ptr %i.ei, align 8, !tbaa !52
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.pre-phi228.i.i
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !39
  %i.hv = load ptr, ptr %i.ff, align 8, !tbaa !37
  %i.hw = add nsw i32 %.095167.i.i, 1
  %i.hx = sext i32 %.095167.i.i to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hv, i64 %i.hx
  store ptr %i.hu, ptr %i.hy, align 8, !tbaa !39
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk, %bb.bj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.245, ptr noundef nonnull %i.fn) #15
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bo, %.split162.us.i.i, %.split.us.i.i, %bb.bi, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  br label %update_variant_stream_info.exit.thread342

bb.bp:                                            ; preds = %._crit_edge160.i.i, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.am
  %.196.i.i = phi i32 [ %.095167.i.i, %bb.am ], [ %.095167.i.i, %bb.aq ], [ %.095167.i.i, %bb.as ], [ %.095167.i.i, %bb.au ], [ %.095167.i.i, %bb.aw ], [ %.095167.i.i, %bb.ay ], [ %.095167.i.i, %bb.ba ], [ %i.hw, %._crit_edge160.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  %i.hz = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.l) #15 ; 2 uses
  %.not118.i.i = icmp eq ptr %i.hz, null
  br i1 %.not118.i.i, label %.loopexit.i.i, label %bb.al

bb.bq:                                            ; preds = %bb.aa
  %i.ia = call noalias ptr @av_mallocz(i64 noundef 12856) #15 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bm, i64 8488 ; 2 uses
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !30
  %.not29.i = icmp eq ptr %i.ia, null
  br i1 %.not29.i, label %update_variant_stream_info.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bm, i64 8496
  store i32 1, ptr %i.ic, align 8, !tbaa !29
  store i32 0, ptr %i.ia, align 8, !tbaa !110
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !117 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 12796
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !36
  %i.ig = zext i32 %i.ie to i64
  %i.ih = shl nuw nsw i64 %i.ig, 3
  %i.ii = call noalias ptr @av_mallocz(i64 noundef %i.ih) #15 ; 9 uses
  %i.ij = ptrtoaddr ptr %i.ii to i64
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !30 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 12656
  store ptr %i.ii, ptr %i.il, align 8, !tbaa !37
  %.not30.i = icmp eq ptr %i.ii, null
  br i1 %.not30.i, label %update_variant_stream_info.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.im = getelementptr inbounds nuw i8, ptr %i.bm, i64 8512
  %i.in = load i32, ptr %i.im, align 8, !tbaa !105
  %.not31.i = icmp eq i32 %i.in, 0
  br i1 %.not31.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.io = getelementptr inbounds nuw i8, ptr %i.bm, i64 8504
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !104
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !107
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 12832
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !116
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.is = load i32, ptr %i.id, align 4, !tbaa !117 ; 3 uses
  %.not62.i = icmp eq i32 %i.is, 0
  br i1 %.not62.i, label %update_variant_stream_info.exit.thread339, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bu
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !52 ; 7 uses
  %wide.trip.count.i = zext i32 %i.is to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %i.is, 8
  %i.iv = ptrtoaddr ptr %i.iu to i64
  %i.iw = sub i64 %i.iv, %i.ij
  %diff.check = icmp ugt i64 %i.iw, -32
  %or.cond677 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond677, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %index ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ix, align 8, !tbaa !39
  %wide.load675 = load <2 x ptr>, ptr %i.iy, align 8, !tbaa !39
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %index ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store <2 x ptr> %wide.load, ptr %i.iz, align 8, !tbaa !39
  store <2 x ptr> %wide.load675, ptr %i.ja, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
end_hunk_0
begin_hunk_1_@hls_start:bb.a
  %i.jc = call i32 @av_dict_set(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.136, ptr noundef nonnull %i.jb, i32 noundef 0) #15 ; 0 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  call void @av_freep(ptr noundef nonnull %i.jd) #15
  %i.je = load ptr, ptr %i.di, align 8, !tbaa !87
  %i.jf = call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.193, ptr noundef %i.je) #15
  store ptr %i.jf, ptr %i.jd, align 8, !tbaa !136
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  call void @av_freep(ptr noundef nonnull %i.jg) #15
  %i.jh = load ptr, ptr %i.di, align 8, !tbaa !87
  %i.ji = call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.138, ptr noundef %i.jh) #15
  store ptr %i.ji, ptr %i.jg, align 8, !tbaa !98
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !98
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !136
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.jm = getelementptr i8, ptr %0, i64 88
  %.val194 = load ptr, ptr %i.jm, align 8, !tbaa !87
  call fastcc void @set_http_options(ptr %.val194, ptr noundef %i.m, ptr noundef nonnull %i.t)
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !137
  %.not183 = icmp eq ptr %i.jo, null
  br i1 %.not183, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !98
  %i.jr = call fastcc i32 @hlsenc_io_open(ptr noundef nonnull %0, ptr noundef nonnull %i.jn, ptr noundef %i.jq, ptr noundef %i.m) ; 2 uses
  %i.js = icmp slt i32 %i.jr, 0
  br i1 %i.js, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.jt = getelementptr inbounds nuw i8, ptr %i.t, i64 8600
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !92
  %.not184 = icmp eq i32 %i.ju, 0
  %spec.select = select i1 %.not184, i32 %i.jr, i32 0
  br label %bb.cz

bb.cr:                                            ; preds = %bb.cp, %bb.co
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !136
  %i.jy = call fastcc i32 @hlsenc_io_open(ptr noundef nonnull %0, ptr noundef nonnull %i.jv, ptr noundef %i.jx, ptr noundef %i.m) ; 2 uses
  %i.jz = icmp slt i32 %i.jy, 0
  br i1 %i.jz, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ka = getelementptr inbounds nuw i8, ptr %i.t, i64 8600
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !92
  %.not188 = icmp eq i32 %i.kb, 0
  %spec.select191 = select i1 %.not188, i32 %i.jy, i32 0
  br label %bb.cz

bb.ct:                                            ; preds = %bb.cj, %bb.cr, %bb.cf
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !125
  %.not185 = icmp eq ptr %i.kd, null
  br i1 %.not185, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ke = getelementptr i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.ke, align 8, !tbaa !87
  call fastcc void @set_http_options(ptr %.val, ptr noundef %i.m, ptr noundef nonnull %i.t)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !87
  %i.ki = call fastcc i32 @hlsenc_io_open(ptr noundef nonnull %0, ptr noundef nonnull %i.kf, ptr noundef %i.kh, ptr noundef %i.m) ; 2 uses
  %i.kj = icmp slt i32 %i.ki, 0
  br i1 %i.kj, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.kk = getelementptr inbounds nuw i8, ptr %i.t, i64 8600
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !92
  %.not187 = icmp eq i32 %i.kl, 0
  %spec.select192 = select i1 %.not187, i32 %i.ki, i32 0
  br label %bb.cz

bb.cw:                                            ; preds = %bb.cu, %bb.ct
  call void @av_dict_free(ptr noundef nonnull %i.m) #15
  %i.km = load ptr, ptr %i.kc, align 8, !tbaa !125
  %.not186 = icmp eq ptr %i.km, null
  br i1 %.not186, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kn = call i32 @avformat_write_header(ptr noundef %i.x, ptr noundef null) #15 ; 2 uses
  %i.ko = icmp slt i32 %i.kn, 0
  br i1 %i.ko, label %.critedge, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  br label %.critedge

bb.cz:                                            ; preds = %do_encrypt.exit.thread, %hls_encryption_start.exit.thread, %bb.cv, %bb.cs, %bb.cq
  %.0135 = phi i32 [ %.0.i197.ph, %hls_encryption_start.exit.thread ], [ %.1.i.ph, %do_encrypt.exit.thread ], [ %spec.select, %bb.cq ], [ %spec.select191, %bb.cs ], [ %spec.select192, %bb.cv ]
  call void @av_dict_free(ptr noundef nonnull %i.m) #15
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %bb.t, %bb.w, %bb.p, %bb.m, %bb.af, %bb.ad, %.thread212, %bb.h, %bb.d, %bb.b, %bb.cx, %bb.cz, %bb.cy, %bb.an
  %.10 = phi i32 [ -1163346256, %bb.an ], [ %.0135, %bb.cz ], [ -22, %bb.ad ], [ 0, %bb.cy ], [ -12, %bb.t ], [ %i.kn, %bb.cx ], [ -22, %bb.h ], [ -22, %bb.af ], [ %.2138.ph, %.thread212 ], [ -12, %bb.b ], [ -12, %bb.d ], [ %.0.i203, %bb.m ], [ -12, %bb.p ], [ -12, %bb.w ], [ -12, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  ret i32 %.10
}

declare i32 @av_opt_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @sls_flag_file_rename(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %i.c = and i32 %i.b, 1536
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %char0 = load i8, ptr %i.d, align 1
  %.not5 = icmp eq i8 %char0, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = tail call i32 @ff_rename(ptr noundef %2, ptr noundef %i.h, ptr noundef nonnull %0) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare i32 @ff_write_chained(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_is_http_proto(ptr noundef) local_unnamed_addr #1

declare ptr @ffio_geturlcontext(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare i32 @ffurl_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @av_free(ptr noundef) local_unnamed_addr #1

declare i32 @avio_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_dict_set_int(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_http_do_new_request(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @avio_wb32(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @avio_wl32(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @av_basename(ptr noundef) local_unnamed_addr #1

declare void @av_bprint_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @av_bprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @av_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @av_bprint_chars(ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #1

declare ptr @ff_bprint_finalize_as_fam(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ff_format_set_url(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @replace_int_data_in_filename(ptr noundef %0, ptr noundef %1, i8 noundef signext range(i8 100, 119) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.AVBPrint, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @av_bprint_init(ptr noundef nonnull %4, i32 noundef 0, i32 noundef -1) #15
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %.035 = phi ptr [ %1, %bb.a ], [ %i.x, %.critedge ] ; 8 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.1, %.critedge ] ; 6 uses
  %i.a = load i8, ptr %.035, align 1, !tbaa !56
  switch i8 %i.a, label %.critedge [
    i8 0, label %bb.f
    i8 37, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !56    ; 4 uses
  %i.d = icmp eq i8 %i.c, 37
  br i1 %i.d, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %5 = sext i8 %i.c to i32                        ; 3 uses
  %6 = add nsw i32 %5, -48
  %i.e = icmp ult i32 %6, 10
  %i.f = icmp eq i8 %i.c, %2
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.d
  %i.g = add nsw i32 %5, -58
  %i.h = icmp ult i32 %i.g, -10
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %.preheader ]
  %i.i = phi i32 [ %i.o, %.lr.ph ], [ %5, %.preheader ]
  %.03446 = phi i32 [ %i.l, %.lr.ph ], [ 0, %.preheader ]
  %i.j = mul nsw i32 %.03446, 10
  %i.k = add i32 %i.j, -48
  %i.l = add i32 %i.k, %i.i                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.035, i64 %indvars.iv.next
  %i.n = load i8, ptr %i.m, align 1, !tbaa !56    ; 2 uses
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  %i.p = add nsw i32 %i.o, -58
  %i.q = icmp ult i32 %i.p, -10
  br i1 %i.q, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !260

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.r = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.lcssa45 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %._crit_edge.loopexit ]
  %.034.lcssa = phi i32 [ 0, %.preheader ], [ %i.l, %._crit_edge.loopexit ]
  %.032.lcssa = phi i32 [ 1, %.preheader ], [ %i.r, %._crit_edge.loopexit ]
  %.lcssa = phi i8 [ %i.c, %.preheader ], [ %i.n, %._crit_edge.loopexit ]
  %i.s = icmp eq i8 %.lcssa, %2
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.035, i64 %.lcssa45
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.158, i32 noundef %.034.lcssa, i64 noundef %3) #15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = add nsw i32 %.0, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %._crit_edge
  %.136 = phi ptr [ %.035, %bb.c ], [ %i.u, %bb.e ], [ %.035, %._crit_edge ], [ %.035, %bb.b ], [ %.035, %bb.d ] ; 2 uses
  %.133 = phi i32 [ 2, %bb.c ], [ 0, %bb.e ], [ %.032.lcssa, %._crit_edge ], [ 1, %bb.b ], [ 1, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.v, %bb.e ], [ %.0, %._crit_edge ], [ %.0, %bb.b ], [ %.0, %bb.d ]
  call void @av_bprint_append_data(ptr noundef nonnull %4, ptr noundef nonnull %.136, i32 noundef %.133) #15
  %i.w = zext nneg i32 %.133 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.136, i64 %i.w
  br label %bb.b

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val = load i32, ptr %i.y, align 8, !tbaa !142
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.val43 = load i32, ptr %i.z, align 4, !tbaa !143
  %.not = icmp ult i32 %.val, %.val43
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = call i32 @av_bprint_finalize(ptr noundef nonnull %4, ptr noundef null) #15 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = call i32 @av_bprint_finalize(ptr noundef nonnull %4, ptr noundef %0) #15 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %..0 = select i1 %i.ac, i32 %i.ab, i32 %.0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.037 = phi i32 [ %..0, %bb.h ], [ -12, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.037
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #8

declare void @av_bprint_append_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_bprint_finalize(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @av_dirname(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @replace_str_data_in_filename(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.AVBPrint, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @av_bprint_init(ptr noundef nonnull %3, i32 noundef 0, i32 noundef -1) #15
  br label %.outer

.outer:                                           ; preds = %.critedge, %bb.a
  %.020.ph = phi ptr [ %i.d, %.critedge ], [ %1, %bb.a ]
  %.0.ph = phi i32 [ %i.e, %.critedge ], [ 0, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.d
  %.020 = phi ptr [ %i.g, %bb.d ], [ %.020.ph, %.outer ] ; 5 uses
  %i.a = load i8, ptr %.020, align 1, !tbaa !56
  switch i8 %i.a, label %bb.d [
    i8 0, label %bb.e
    i8 37, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.020, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !56
  switch i8 %i.c, label %.fold.split [
    i8 37, label %bb.d
    i8 118, label %.critedge
  ]

.critedge:                                        ; preds = %bb.c
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.138, ptr noundef nonnull %2) #15
  %i.d = getelementptr inbounds nuw i8, ptr %.020, i64 2
  %i.e = add nuw nsw i32 %.0.ph, 1
  br label %.outer

.fold.split:                                      ; preds = %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.fold.split, %bb.b
  %.019.ph = phi i32 [ 2, %bb.c ], [ 1, %bb.b ], [ 1, %.fold.split ] ; 2 uses
  call void @av_bprint_append_data(ptr noundef nonnull %3, ptr noundef nonnull %.020, i32 noundef %.019.ph) #15
  %i.f = zext nneg i32 %.019.ph to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.020, i64 %i.f
  br label %bb.b

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val = load i32, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.val25 = load i32, ptr %i.i, align 4, !tbaa !143
  %.not = icmp ult i32 %.val, %.val25
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 @av_bprint_finalize(ptr noundef nonnull %3, ptr noundef null) #15 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = call i32 @av_bprint_finalize(ptr noundef nonnull %3, ptr noundef %0) #15 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %..0 = select i1 %i.l, i32 %i.k, i32 %.0.ph
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.022 = phi i32 [ %..0, %bb.g ], [ -12, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @hls_delete_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8472
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @av_strcasecmp(ptr noundef nonnull %3, ptr noundef nonnull @.str.163) #15
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !91
  %i.e = getelementptr i8, ptr %1, i64 88
  %.val = load ptr, ptr %i.e, align 8, !tbaa !87
  call fastcc void @set_http_options(ptr %.val, ptr noundef %i.a, ptr noundef nonnull %0)
  %i.f = call i32 @av_dict_set(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.164, i32 noundef 0) #15 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8584 ; 2 uses
  %i.h = call fastcc i32 @hlsenc_io_open(ptr noundef %1, ptr noundef nonnull %i.g, ptr noundef %2, ptr noundef %i.a) ; 2 uses
  call void @av_dict_free(ptr noundef nonnull %i.a) #15
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.j = call fastcc i32 @hlsenc_io_close(ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8600
  %i.l = load i32, ptr %i.k, align 8, !tbaa !92
  %.not23 = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not23, i32 %i.h, i32 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.n = tail call i32 @unlink(ptr noundef %2) #15
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @__errno_location() #17
  %i.q = load i32, ptr %i.p, align 4, !tbaa !61
  %i.r = tail call ptr @strerror(i32 noundef %i.q) #15
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.165, ptr noundef %2, ptr noundef %i.r) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread, %bb.e
  %.1 = phi i32 [ %i.m, %bb.e ], [ 0, %.thread ], [ 0, %bb.f ], [ 0, %bb.g ]
end_hunk_1
