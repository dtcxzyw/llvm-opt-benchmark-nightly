Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sdp?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ff_sdp_write_media:bb.a
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ag, %bb.aj
  call void @av_free(ptr noundef nonnull %i.bs) #8
  call void @av_free(ptr noundef %.170.i.i) #8
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %.not88.i.i = icmp eq ptr %.065118.i.i, null    ; 2 uses
  %spec.select90.i.i = select i1 %.not88.i.i, ptr %i.ci, ptr %.063119.i.i
  %spec.select.i.i = select i1 %.not88.i.i, ptr %i.ce, ptr %.065118.i.i
  %i.cs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.175.ptr.i.i) #9
  %.175.add.i.i = add nuw nsw i64 %i.cs, %.175.idx.i.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ae
  %.377.idx.i.i = phi i64 [ %.175.add.i.i, %bb.ak ], [ %.074.idx116.i.i, %bb.ae ] ; 3 uses
  %.368.i.i = phi ptr [ %spec.select.i.i, %bb.ak ], [ %.065118.i.i, %bb.ae ] ; 4 uses
  %.3.i.i = phi ptr [ %spec.select90.i.i, %bb.ak ], [ %.063119.i.i, %bb.ae ] ; 2 uses
  %.074.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.377.idx.i.i ; 4 uses
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = load i32, ptr %i.e, align 4, !tbaa !33
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 %i.cv ; 2 uses
  %i.cx = icmp ult ptr %i.ci, %i.cw
  br i1 %i.cx, label %.preheader.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.al
  %i.cy = ptrtoint ptr %.3.i.i to i64
  %i.cz = icmp ult i64 %.377.idx.i.i, 999
  %.not83.i.i = icmp ne ptr %.368.i.i, null
  %i.da = ptrtoint ptr %.368.i.i to i64
  %i.db = sub i64 %i.cy, %i.da
  %i.dc = icmp sgt i64 %i.db, 3
  %or.cond94.i.i = select i1 %.not83.i.i, i1 %i.dc, i1 false
  %or.cond98.i.i = select i1 %or.cond94.i.i, i1 %i.cz, i1 false
  br i1 %or.cond98.i.i, label %bb.am, label %extradata2psets.exit.i

bb.am:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.074.ptr.i.i, ptr noundef nonnull align 16 dereferenceable(19) @extradata2psets.profile_string, i64 19, i1 false)
  %i.dd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.074.ptr.i.i) #9
  %i.de = getelementptr inbounds nuw i8, ptr %.074.ptr.i.i, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.368.i.i, i64 1
  %i.dg = call ptr @ff_data_to_hex(ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, i32 noundef 3, i32 noundef 0) #8 ; 0 uses
  br label %extradata2psets.exit.i

extradata2psets.exit.i:                           ; preds = %bb.am, %._crit_edge.i.i, %bb.ac
  call void @av_free(ptr noundef %.170.i.i) #8
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread.i

.thread.i:                                        ; preds = %extradata2psets.exit.i, %bb.v
  %i.dh = phi ptr [ null, %bb.v ], [ %i.bs, %extradata2psets.exit.i ] ; 3 uses
  %.not273.i = icmp eq ptr %i.dh, null
  %i.di = select i1 %.not273.i, ptr @.str.12, ptr %i.dh
  %i.dj = call i64 (ptr, i64, ptr, ...) @av_strlcatf(ptr noundef %0, i64 noundef %i.m, ptr noundef nonnull @.str.26, i32 noundef %i.i, i32 noundef %i.i, i32 noundef %.0230.i, ptr noundef nonnull %i.di) #8 ; 0 uses
  br label %bb.el

bb.an:                                            ; preds = %.thread.i.i, %bb.ab, %bb.z, %bb.x
  %.4.i.ph.i = phi i32 [ %i.bp, %bb.z ], [ -12, %bb.ab ], [ -1094995529, %.thread.i.i ], [ -1094995529, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %sdp_write_media_attributes.exit

bb.ao:                                            ; preds = %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !61
  switch i32 %i.dl, label %.thread5.i [
    i32 176, label %.thread5.sink.split.i
    i32 352, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %.thread5.sink.split.i

.thread5.sink.split.i:                            ; preds = %bb.ap, %bb.ao
  %.sink86.i = phi i32 [ 288, %bb.ap ], [ 144, %bb.ao ]
  %.str.27.sink.i = phi ptr [ @.str.28, %bb.ap ], [ @.str.27, %bb.ao ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 76
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !62
  %i.do = icmp ne i32 %i.dn, %.sink86.i           ; 2 uses
  %spec.select18.i = select i1 %i.do, ptr null, ptr %.str.27.sink.i
  br label %.thread5.i

.thread5.i:                                       ; preds = %.thread5.sink.split.i, %bb.ao
  %.not267.i = phi i1 [ true, %bb.ao ], [ %i.do, %.thread5.sink.split.i ]
  %.0229.i = phi ptr [ null, %bb.ao ], [ %spec.select18.i, %.thread5.sink.split.i ]
  %i.dp = icmp sgt i32 %i.i, 95
  br i1 %i.dp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.thread5.i
  %i.dq = tail call i64 (ptr, i64, ptr, ...) @av_strlcatf(ptr noundef %0, i64 noundef %i.m, ptr noundef nonnull @.str.29, i32 noundef %i.i) #8 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread5.i
  br i1 %.not267.i, label %bb.el, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dr = tail call i64 (ptr, i64, ptr, ...) @av_strlcatf(ptr noundef %0, i64 noundef %i.m, ptr noundef nonnull @.str.22, i32 noundef %i.i, ptr noundef %.0229.i) #8 ; 0 uses
  br label %bb.el

bb.at:                                            ; preds = %bb.k, %bb.k
  %.not264.i = icmp eq ptr %8, null
  br i1 %.not264.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !56
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !59
  %.not265.i = icmp eq ptr %i.dv, null
  br i1 %.not265.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !60
  %i.dy = tail call i32 @av_opt_flag_is_set(ptr noundef %i.dx, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.30) #8
  %.not266.i = icmp eq i32 %i.dy, 0
  br i1 %.not266.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dz = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.ea = icmp eq i32 %i.dz, 19
  br i1 %i.ea, label %bb.ax, label %bb.el

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %i.eb = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !61
  %i.ed = getelementptr inbounds nuw i8, ptr %.val, i64 76
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !62
  %i.ef = tail call i64 (ptr, i64, ptr, ...) @av_strlcatf(ptr noundef %0, i64 noundef %i.m, ptr noundef nonnull @.str.31, i32 noundef %i.i, i32 noundef %i.i, i32 noundef %i.ec, i32 noundef %i.ee) #8 ; 0 uses
  br label %bb.el

bb.ay:                                            ; preds = %bb.k
  %i.eg = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %.not262.i = icmp eq i32 %i.eh, 0
  br i1 %.not262.i, label %bb.ca, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ei = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !21 ; 3 uses
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !18
  store ptr null, ptr %i.f, align 8, !tbaa !18
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !34
  %.not.i279.i = icmp eq i8 %i.ek, 1
  br i1 %.not.i279.i, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.el = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %.thread.i282.i, label %bb.bb

.thread.i282.i:                                   ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %extradata2psets_hevc.exit.thread.i

bb.bb:                                            ; preds = %bb.ba
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !21
  %i.ep = load i32, ptr %i.eg, align 8, !tbaa !20
  %i.eq = call i32 @ff_isom_write_hvcc(ptr noundef %i.en, ptr noundef %i.eo, i32 noundef %i.ep, i32 noundef 0, ptr noundef %8) #8 ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  br i1 %i.er, label %bb.bc, label %.thread111.i.i

.thread111.i.i:                                   ; preds = %bb.bb
  %i.et = call i32 @avio_close_dyn_buf(ptr noundef %i.es, ptr noundef nonnull %i.a) #8
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  store ptr %i.eu, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ev = call i32 @avio_close_dyn_buf(ptr noundef %i.es, ptr noundef nonnull %i.b) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %.pre193.i.i = load ptr, ptr %i.b, align 8, !tbaa !18
  br label %.thread131.i.i

bb.bd:                                            ; preds = %.thread111.i.i, %bb.az
  %i.ew = phi ptr [ %i.eu, %.thread111.i.i ], [ null, %bb.az ] ; 9 uses
  %i.ex = phi ptr [ %i.eu, %.thread111.i.i ], [ %i.ej, %bb.az ] ; 3 uses
  %.189.i.i = phi i32 [ %i.et, %.thread111.i.i ], [ %i.eh, %bb.az ] ; 4 uses
  %i.ey = icmp slt i32 %.189.i.i, 23
  br i1 %i.ey, label %.thread131.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 22
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !34  ; 2 uses
  %i.fb = zext i8 %i.fa to i32
  %.not164.i.i = icmp eq i8 %i.fa, 0
  br i1 %.not164.i.i, label %.thread131.i.i, label %.lr.ph148.i.i

.lr.ph148.i.i:                                    ; preds = %bb.be, %.thread122.i.i
  %.084146156.i.i = phi i32 [ %.084146155.i.i, %.thread122.i.i ], [ 0, %bb.be ] ; 3 uses
  %.084146152.i.i = phi i32 [ %.084146151.i.i, %.thread122.i.i ], [ 0, %bb.be ] ; 3 uses
  %.082147.i.i = phi i32 [ %i.fv, %.thread122.i.i ], [ 0, %bb.be ]
  %.084146.i.i = phi i32 [ %.185.lcssa.i.i, %.thread122.i.i ], [ 23, %bb.be ] ; 5 uses
  %.084143145.i.i = phi i32 [ %.084142.i.i, %.thread122.i.i ], [ 0, %bb.be ] ; 3 uses
  %i.fc = add nsw i32 %.084146.i.i, 3             ; 3 uses
  %i.fd = icmp sgt i32 %i.fc, %.189.i.i
  br i1 %i.fd, label %.thread131.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph148.i.i
  %i.fe = sext i32 %.084146.i.i to i64
  %i.ff = getelementptr inbounds i8, ptr %i.ex, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !34
  %i.fh = and i8 %i.fg, 63
  switch i8 %i.fh, label %bb.bj [
    i8 32, label %bb.bg
    i8 33, label %bb.bh
    i8 34, label %bb.bi
  ]

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.084146155.i.i = phi i32 [ %.084146156.i.i, %bb.bf ], [ %.084146.i.i, %bb.bh ], [ %.084146156.i.i, %bb.bi ], [ %.084146156.i.i, %bb.bg ] ; 4 uses
  %.084146151.i.i = phi i32 [ %.084146152.i.i, %bb.bf ], [ %.084146152.i.i, %bb.bh ], [ %.084146.i.i, %bb.bi ], [ %.084146152.i.i, %bb.bg ] ; 4 uses
  %.084142.i.i = phi i32 [ %.084143145.i.i, %bb.bf ], [ %.084143145.i.i, %bb.bh ], [ %.084143145.i.i, %bb.bi ], [ %.084146.i.i, %bb.bg ] ; 4 uses
  %i.fi = getelementptr i8, ptr %i.ff, i64 1
  %i.fj = load i16, ptr %i.fi, align 1, !tbaa !34 ; 2 uses
  %i.fk = call i16 @llvm.bswap.i16(i16 %i.fj)
  %i.fl = zext i16 %i.fk to i32
  %.not165.i.i = icmp eq i16 %i.fj, 0
  br i1 %.not165.i.i, label %.thread122.i.i, label %.lr.ph.i.i

bb.bk:                                            ; preds = %bb.bl
  %i.fm = add nuw nsw i32 %.080141.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.fm, %i.fl
  br i1 %exitcond.not.i.i, label %.thread122.i.i, label %.lr.ph.i.i, !llvm.loop !40

.lr.ph.i.i:                                       ; preds = %bb.bj, %bb.bk
  %.080141.i.i = phi i32 [ %i.fm, %bb.bk ], [ 0, %bb.bj ]
  %.185140.i.i = phi i32 [ %i.fu, %bb.bk ], [ %i.fc, %bb.bj ] ; 2 uses
  %i.fn = add nsw i32 %.185140.i.i, 2             ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, %.189.i.i
  br i1 %i.fo, label %.thread131.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i
  %i.fp = sext i32 %.185140.i.i to i64
  %i.fq = getelementptr inbounds i8, ptr %i.ex, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 1, !tbaa !34
  %i.fs = call i16 @llvm.bswap.i16(i16 %i.fr)
  %i.ft = zext i16 %i.fs to i32
  %i.fu = add nsw i32 %i.fn, %i.ft                ; 3 uses
  %.not137.i.i = icmp sgt i32 %i.fu, %.189.i.i
  br i1 %.not137.i.i, label %.thread131.i.i, label %bb.bk

.thread122.i.i:                                   ; preds = %bb.bk, %bb.bj
  %.185.lcssa.i.i = phi i32 [ %i.fc, %bb.bj ], [ %i.fu, %bb.bk ]
  %i.fv = add nuw nsw i32 %.082147.i.i, 1         ; 2 uses
  %exitcond176.not.i.i = icmp eq i32 %i.fv, %i.fb
  br i1 %exitcond176.not.i.i, label %._crit_edge.i280.i, label %.lr.ph148.i.i, !llvm.loop !41

._crit_edge.i280.i:                               ; preds = %.thread122.i.i
  %i.fw = icmp ne i32 %.084142.i.i, 0
  %i.fx = icmp ne i32 %.084146155.i.i, 0
  %or.cond.i281.i = select i1 %i.fw, i1 %i.fx, i1 false
  %i.fy = icmp ne i32 %.084146151.i.i, 0
  %or.cond5.i.i = select i1 %or.cond.i281.i, i1 %i.fy, i1 false
  br i1 %or.cond5.i.i, label %bb.bm, label %.thread131.i.i

bb.bm:                                            ; preds = %._crit_edge.i280.i
  %i.fz = call noalias ptr @av_mallocz(i64 noundef 1024) #8 ; 26 uses
  %.not101.i.i = icmp eq ptr %i.fz, null
  br i1 %.not101.i.i, label %.thread131.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr %i.fz, align 1, !tbaa !34
  %i.ga = call i64 (ptr, i64, ptr, ...) @av_strlcatf(ptr noundef nonnull %i.fz, i64 noundef 1024, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.71) #8 ; 0 uses
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.gc = sext i32 %.084142.i.i to i64
  %i.gd = getelementptr i8, ptr %i.gb, i64 %i.gc  ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 1
  %i.gf = load i16, ptr %i.ge, align 1, !tbaa !34 ; 3 uses
  %i.gg = call i16 @llvm.bswap.i16(i16 %i.gf)
  %i.gh = zext i16 %i.gg to i32
  %.not166.i.i = icmp eq i16 %i.gf, 0
  br i1 %.not166.i.i, label %.loopexit215.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gi = getelementptr i8, ptr %i.gd, i64 3
  %i.gj = load i16, ptr %i.gi, align 1, !tbaa !34
  %i.gk = call i16 @llvm.bswap.i16(i16 %i.gj)
  %i.gl = zext i16 %i.gk to i32                   ; 2 uses
  %i.gm = add nsw i32 %.084142.i.i, 5             ; 2 uses
  %i.gn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fz) #9 ; 2 uses
  %i.go = trunc i64 %i.gn to i32
  %sext.peel.i.i = shl i64 %i.gn, 32
  %i.gp = ashr exact i64 %sext.peel.i.i, 32
  %i.gq = getelementptr inbounds i8, ptr %i.fz, i64 %i.gp
  %i.gr = sub nsw i32 1024, %i.go
  %i.gs = sext i32 %i.gm to i64
  %i.gt = getelementptr inbounds i8, ptr %i.gb, i64 %i.gs
  %i.gu = call ptr @av_base64_encode(ptr noundef nonnull %i.gq, i32 noundef %i.gr, ptr noundef %i.gt, i32 noundef %i.gl) #8
  %.not104.peel.i.i = icmp eq ptr %i.gu, null
  br i1 %.not104.peel.i.i, label %.loopexit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %exitcond178.peel.not.i.i = icmp eq i16 %i.gf, 256
  br i1 %exitcond178.peel.not.i.i, label %.loopexit215.i.i, label %.lr.ph161.peel.next.i.i

.lr.ph161.peel.next.i.i:                          ; preds = %bb.bp
  %i.gv = add nsw i32 %i.gm, %i.gl
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %.lr.ph161.peel.next.i.i
  %.181159.i.i = phi i32 [ %i.hn, %bb.br ], [ 1, %.lr.ph161.peel.next.i.i ]
  %.4158.i.i = phi i32 [ %i.hm, %bb.br ], [ %i.gv, %.lr.ph161.peel.next.i.i ] ; 2 uses
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gx = sext i32 %.4158.i.i to i64
  %i.gy = getelementptr inbounds i8, ptr %i.gw, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 1, !tbaa !34
  %i.ha = call i16 @llvm.bswap.i16(i16 %i.gz)
  %i.hb = zext i16 %i.ha to i32                   ; 2 uses
  %i.hc = add nsw i32 %.4158.i.i, 2               ; 2 uses
  %i.hd = call i64 @av_strlcat(ptr noundef nonnull %i.fz, ptr noundef nonnull @.str.76, i64 noundef 1024) #8 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.he = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fz) #9 ; 2 uses
  %i.hf = trunc i64 %i.he to i32
  %sext.i.i = shl i64 %i.he, 32
  %i.hg = ashr exact i64 %sext.i.i, 32
  %i.hh = getelementptr inbounds i8, ptr %i.fz, i64 %i.hg
  %i.hi = sub nsw i32 1024, %i.hf
  %i.hj = sext i32 %i.hc to i64
  %i.hk = getelementptr inbounds i8, ptr %.pre.i.i, i64 %i.hj
  %i.hl = call ptr @av_base64_encode(ptr noundef nonnull %i.hh, i32 noundef %i.hi, ptr noundef %i.hk, i32 noundef %i.hb) #8
  %.not104.i.i = icmp eq ptr %i.hl, null
  br i1 %.not104.i.i, label %.loopexit.i.i, label %bb.br

.loopexit.i.i:                                    ; preds = %bb.bq, %bb.bu, %bb.by, %bb.bw, %bb.bs, %bb.bo
  call void @av_free(ptr noundef nonnull %i.fz) #8
  br label %.thread131.i.i

bb.br:                                            ; preds = %bb.bq
  %i.hm = add nsw i32 %i.hc, %i.hb
  %i.hn = add nuw nsw i32 %.181159.i.i, 1         ; 2 uses
  %exitcond178.not.i.i = icmp eq i32 %i.hn, %i.gh
  br i1 %exitcond178.not.i.i, label %.loopexit215.i.i, label %bb.bq, !llvm.loop !42

.loopexit215.i.i:                                 ; preds = %bb.br, %bb.bp, %bb.bn
  %i.ho = call i64 @av_strlcat(ptr noundef nonnull %i.fz, ptr noundef nonnull @.str.74, i64 noundef 1024) #8 ; 0 uses
  %i.hp = call i64 (ptr, i64, ptr, ...) @av_strlcatf(ptr noundef nonnull %i.fz, i64 noundef 1024, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.72) #8 ; 0 uses
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.hr = sext i32 %.084146155.i.i to i64
  %i.hs = getelementptr i8, ptr %i.hq, i64 %i.hr  ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 1
  %i.hu = load i16, ptr %i.ht, align 1, !tbaa !34 ; 3 uses
  %i.hv = call i16 @llvm.bswap.i16(i16 %i.hu)
  %i.hw = zext i16 %i.hv to i32
  %.not166.1.i.i = icmp eq i16 %i.hu, 0
  br i1 %.not166.1.i.i, label %.loopexit213.i.i, label %bb.bs

bb.bs:                                            ; preds = %.loopexit215.i.i
  %i.hx = getelementptr i8, ptr %i.hs, i64 3
  %i.hy = load i16, ptr %i.hx, align 1, !tbaa !34
  %i.hz = call i16 @llvm.bswap.i16(i16 %i.hy)
  %i.ia = zext i16 %i.hz to i32                   ; 2 uses
  %i.ib = add nsw i32 %.084146155.i.i, 5          ; 2 uses
  %i.ic = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fz) #9 ; 2 uses
  %i.id = trunc i64 %i.ic to i32
  %sext.peel.1.i.i = shl i64 %i.ic, 32
  %i.ie = ashr exact i64 %sext.peel.1.i.i, 32
  %i.if = getelementptr inbounds i8, ptr %i.fz, i64 %i.ie
  %i.ig = sub nsw i32 1024, %i.id
  %i.ih = sext i32 %i.ib to i64
  %i.ii = getelementptr inbounds i8, ptr %i.hq, i64 %i.ih
  %i.ij = call ptr @av_base64_encode(ptr noundef nonnull %i.if, i32 noundef %i.ig, ptr noundef %i.ii, i32 noundef %i.ia) #8
  %.not104.peel.1.i.i = icmp eq ptr %i.ij, null
  br i1 %.not104.peel.1.i.i, label %.loopexit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %exitcond178.peel.1.not.i.i = icmp eq i16 %i.hu, 256
  br i1 %exitcond178.peel.1.not.i.i, label %.loopexit213.i.i, label %.lr.ph161.peel.next.1.i.i

.lr.ph161.peel.next.1.i.i:                        ; preds = %bb.bt
  %i.ik = add nsw i32 %i.ib, %i.ia
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %.lr.ph161.peel.next.1.i.i
  %.181159.1.i.i = phi i32 [ %i.jc, %bb.bv ], [ 1, %.lr.ph161.peel.next.1.i.i ]
  %.4158.1.i.i = phi i32 [ %i.jb, %bb.bv ], [ %i.ik, %.lr.ph161.peel.next.1.i.i ] ; 2 uses
  %i.il = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.im = sext i32 %.4158.1.i.i to i64
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 %i.im
  %i.io = load i16, ptr %i.in, align 1, !tbaa !34
  %i.ip = call i16 @llvm.bswap.i16(i16 %i.io)
  %i.iq = zext i16 %i.ip to i32                   ; 2 uses
  %i.ir = add nsw i32 %.4158.1.i.i, 2             ; 2 uses
  %i.is = call i64 @av_strlcat(ptr noundef nonnull %i.fz, ptr noundef nonnull @.str.76, i64 noundef 1024) #8 ; 0 uses
  %.pre191.i.i = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.it = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fz) #9 ; 2 uses
  %i.iu = trunc i64 %i.it to i32
  %sext.1.i.i = shl i64 %i.it, 32
  %i.iv = ashr exact i64 %sext.1.i.i, 32
  %i.iw = getelementptr inbounds i8, ptr %i.fz, i64 %i.iv
  %i.ix = sub nsw i32 1024, %i.iu
  %i.iy = sext i32 %i.ir to i64
  %i.iz = getelementptr inbounds i8, ptr %.pre191.i.i, i64 %i.iy
  %i.ja = call ptr @av_base64_encode(ptr noundef nonnull %i.iw, i32 noundef %i.ix, ptr noundef %i.iz, i32 noundef %i.iq) #8
  %.not104.1.i.i = icmp eq ptr %i.ja, null
  br i1 %.not104.1.i.i, label %.loopexit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jb = add nsw i32 %i.ir, %i.iq
  %i.jc = add nuw nsw i32 %.181159.1.i.i, 1       ; 2 uses
  %exitcond178.1.not.i.i = icmp eq i32 %i.jc, %i.hw
  br i1 %exitcond178.1.not.i.i, label %.loopexit213.i.i, label %bb.bu, !llvm.loop !42

.loopexit213.i.i:                                 ; preds = %bb.bv, %bb.bt, %.loopexit215.i.i
  %i.jd = call i64 @av_strlcat(ptr noundef nonnull %i.fz, ptr noundef nonnull @.str.74, i64 noundef 1024) #8 ; 0 uses
  %i.je = call i64 (ptr, i64, ptr, ...) @av_strlcatf(ptr noundef nonnull %i.fz, i64 noundef 1024, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73) #8 ; 0 uses
  %i.jf = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.jg = sext i32 %.084146151.i.i to i64
  %i.jh = getelementptr i8, ptr %i.jf, i64 %i.jg  ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 1
  %i.jj = load i16, ptr %i.ji, align 1, !tbaa !34 ; 3 uses
  %i.jk = call i16 @llvm.bswap.i16(i16 %i.jj)
  %i.jl = zext i16 %i.jk to i32
  %.not166.2.i.i = icmp eq i16 %i.jj, 0
  br i1 %.not166.2.i.i, label %.loopexit.i, label %bb.bw

bb.bw:                                            ; preds = %.loopexit213.i.i
  %i.jm = getelementptr i8, ptr %i.jh, i64 3
  %i.jn = load i16, ptr %i.jm, align 1, !tbaa !34
  %i.jo = call i16 @llvm.bswap.i16(i16 %i.jn)
  %i.jp = zext i16 %i.jo to i32                   ; 2 uses
  %i.jq = add nsw i32 %.084146151.i.i, 5          ; 2 uses
  %i.jr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fz) #9 ; 2 uses
  %i.js = trunc i64 %i.jr to i32
  %sext.peel.2.i.i = shl i64 %i.jr, 32
  %i.jt = ashr exact i64 %sext.peel.2.i.i, 32
  %i.ju = getelementptr inbounds i8, ptr %i.fz, i64 %i.jt
  %i.jv = sub nsw i32 1024, %i.js
  %i.jw = sext i32 %i.jq to i64
  %i.jx = getelementptr inbounds i8, ptr %i.jf, i64 %i.jw
  %i.jy = call ptr @av_base64_encode(ptr noundef nonnull %i.ju, i32 noundef %i.jv, ptr noundef %i.jx, i32 noundef %i.jp) #8
  %.not104.peel.2.i.i = icmp eq ptr %i.jy, null
  br i1 %.not104.peel.2.i.i, label %.loopexit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %exitcond178.peel.2.not.i.i = icmp eq i16 %i.jj, 256
  br i1 %exitcond178.peel.2.not.i.i, label %.loopexit.i, label %.lr.ph161.peel.next.2.i.i

.lr.ph161.peel.next.2.i.i:                        ; preds = %bb.bx
  %i.jz = add nsw i32 %i.jq, %i.jp
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %.lr.ph161.peel.next.2.i.i
  %.181159.2.i.i = phi i32 [ %i.kr, %bb.bz ], [ 1, %.lr.ph161.peel.next.2.i.i ]
  %.4158.2.i.i = phi i32 [ %i.kq, %bb.bz ], [ %i.jz, %.lr.ph161.peel.next.2.i.i ] ; 2 uses
  %i.ka = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.kb = sext i32 %.4158.2.i.i to i64
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 1, !tbaa !34
  %i.ke = call i16 @llvm.bswap.i16(i16 %i.kd)
  %i.kf = zext i16 %i.ke to i32                   ; 2 uses
  %i.kg = add nsw i32 %.4158.2.i.i, 2             ; 2 uses
  %i.kh = call i64 @av_strlcat(ptr noundef nonnull %i.fz, ptr noundef nonnull @.str.76, i64 noundef 1024) #8 ; 0 uses
end_hunk_0
