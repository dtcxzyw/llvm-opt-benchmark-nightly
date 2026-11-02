Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/telnet?download=true
inline.NumInlined: 48
inline.NumDeleted: 15
begin_hunk_0_@telnet_do:bb.a
  %.not81.i = icmp eq i32 %i.by, 0
  br i1 %.not81.i, label %.critedge.thread115.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !78
  %i.ca = call ptr @curl_slist_append(ptr noundef %i.bz, ptr noundef nonnull %i.bq) #8 ; 2 uses
  %.not82.i = icmp eq ptr %i.ca, null
  br i1 %.not82.i, label %.critedge.thread115.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.ca, ptr %i.bi, align 8, !tbaa !78
  store i32 1, ptr %i.bj, align 4, !tbaa !72
  br label %bb.ai

bb.x:                                             ; preds = %bb.p
  %i.cb = call i32 @curl_strnequal(ptr noundef nonnull %i.bo, ptr noundef nonnull @.str.8, i64 noundef 2) #8
  %.not77.i = icmp eq i32 %i.cb, 0
  br i1 %.not77.i, label %.critedge.thread115.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #8
  store ptr %i.bq, ptr %i.n, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #8
  store i64 0, ptr %i.o, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #8
  store i64 0, ptr %i.p, align 8, !tbaa !80
  %i.cc = call i32 @curlx_str_number(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef 65535) #8
  %.not78.i = icmp eq i32 %i.cc, 0
  br i1 %.not78.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cd = call i32 @curlx_str_single(ptr noundef nonnull %i.n, i8 noundef signext 120) #8
  %.not79.i = icmp eq i32 %i.cd, 0
  br i1 %.not79.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = call i32 @curlx_str_number(ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, i64 noundef 65535) #8
  %.not80.i = icmp eq i32 %i.ce, 0
  br i1 %.not80.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cf = load ptr, ptr %.06195.i, align 8, !tbaa !110
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %i.cf) #8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cg = load i64, ptr %i.o, align 8, !tbaa !80
  %i.ch = trunc i64 %i.cg to i16
  store i16 %i.ch, ptr %i.bf, align 8, !tbaa !81
  %i.ci = load i64, ptr %i.p, align 8, !tbaa !80
  %i.cj = trunc i64 %i.ci to i16
  store i16 %i.cj, ptr %i.bg, align 2, !tbaa !82
  store i32 1, ptr %i.bh, align 4, !tbaa !72
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1.i = phi i32 [ 49, %bb.ab ], [ 0, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  br label %bb.ai

bb.ae:                                            ; preds = %bb.p
  %i.ck = call i32 @curl_strnequal(ptr noundef nonnull %i.bo, ptr noundef nonnull @.str.10, i64 noundef 6) #8
  %.not76.i = icmp eq i32 %i.ck, 0
  br i1 %.not76.i, label %.critedge.thread115.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #8
  store ptr %i.bq, ptr %i.q, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #8
  %i.cl = call i32 @curlx_str_number(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef 1) #8
  %i.cm = icmp eq i32 %i.cl, 0
  %i.cn = load i64, ptr %i.r, align 8
  %i.co = icmp ne i64 %i.cn, 1
  %or.cond.i = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.bd, align 8, !tbaa !72
  store i32 0, ptr %i.be, align 8, !tbaa !72
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad, %bb.w, %bb.t, %bb.r, %str_is_nonascii.exit89.i
  %.3.i = phi i32 [ 0, %str_is_nonascii.exit89.i ], [ 0, %bb.w ], [ 0, %bb.r ], [ %.1.i, %bb.ad ], [ 0, %bb.t ], [ 0, %bb.ah ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.06195.i, i64 8
  %.061.i = load ptr, ptr %i.cp, align 8, !tbaa !108 ; 2 uses
  %.not72.i = icmp ne ptr %.061.i, null
  %.not73.i = icmp eq i32 %.3.i, 0                ; 2 uses
  %or.cond85.i = and i1 %.not73.i, %.not72.i
  br i1 %or.cond85.i, label %bb.m, label %.critedge.i, !llvm.loop !92

.critedge.i:                                      ; preds = %bb.ai
  br i1 %.not73.i, label %bb.aj, label %.critedge.thread115.i

.critedge.thread115.i.sink.split:                 ; preds = %bb.m, %bb.p
  %.str.9.sink = phi ptr [ @.str.11, %bb.p ], [ @.str.9, %bb.m ]
  %.060.lcssa118.i.ph = phi i32 [ 48, %bb.p ], [ 49, %bb.m ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull %.str.9.sink, ptr noundef nonnull %i.bo) #8
  br label %.critedge.thread115.i

.critedge.thread115.i:                            ; preds = %bb.ae, %bb.x, %bb.v, %bb.u, %bb.s, %bb.q, %.critedge.thread115.i.sink.split, %.critedge.i
  %.060.lcssa118.i = phi i32 [ %.3.i, %.critedge.i ], [ %.060.lcssa118.i.ph, %.critedge.thread115.i.sink.split ], [ 48, %bb.u ], [ 27, %bb.v ], [ 48, %bb.s ], [ 48, %bb.q ], [ 48, %bb.ae ], [ 48, %bb.x ]
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !78
  call void @curl_slist_free_all(ptr noundef %i.cq) #8
  store ptr null, ptr %i.bi, align 8, !tbaa !78
  br label %check_telnet_options.exit

bb.aj:                                            ; preds = %.critedge.i, %bb.l
  store i32 %i.x, ptr %2, align 16, !tbaa !84
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 1, ptr %i.cr, align 4, !tbaa !85
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 17 uses
  %i.ct = load i64, ptr %i.cs, align 1
  %i.cu = and i64 %i.ct, 16
  %.not84 = icmp eq i64 %i.cu, 0                  ; 2 uses
  br i1 %.not84, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !113
  %i.cx = call i32 @fileno(ptr noundef %i.cw) #8  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !84
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i16 1, ptr %i.cz, align 4, !tbaa !85
  %i.da = icmp slt i32 %i.cx, 0
  br i1 %i.da, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #8
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ak, %bb.al
  %.060 = phi i32 [ 0, %bb.ak ], [ 56, %bb.al ], [ 0, %bb.aj ] ; 2 uses
  %.059 = phi i64 [ 1000, %bb.ak ], [ 1000, %bb.al ], [ 100, %bb.aj ]
  %.058 = phi i32 [ 2, %bb.ak ], [ 2, %bb.al ], [ 1, %bb.aj ]
  %.056 = phi i1 [ true, %bb.ak ], [ false, %bb.al ], [ true, %bb.aj ]
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.al, i64 7196 ; 18 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.al, i64 7752 ; 17 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.al, i64 7240 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 7760
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.al, i64 7200
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.al, i64 7184
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 7176
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 31 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.al, i64 1032 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.al, i64 6152 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.al, i64 2056
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.al, i64 3080 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.al, i64 4104 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.el = getelementptr inbounds nuw i8, ptr %i.al, i64 5128
  %i.em = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.v, i64 248
  br i1 %.056, label %.lr.ph.preheader, label %.loopexit139

.lr.ph.preheader:                                 ; preds = %bb.am
  %invariant.op = sub i64 2, %i.dh
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.161.ph222 = phi i32 [ %.666, %.outer ], [ %.060, %.lr.ph.preheader ] ; 3 uses
  %i.ew = call i32 @Curl_poll(ptr noundef nonnull %2, i32 noundef %.058, i64 noundef %.059) #8
  switch i32 %i.ew, label %.loopexit [
    i32 -1, label %..critedge_crit_edge
    i32 0, label %.loopexit.thread
  ], !llvm.loop !93

.loopexit.thread:                                 ; preds = %.lr.ph
  store i16 0, ptr %i.db, align 2, !tbaa !114
  store i16 0, ptr %i.dc, align 2, !tbaa !114
  br label %bb.jd

.loopexit:                                        ; preds = %.lr.ph
  %.pre.pre = load i16, ptr %i.db, align 2, !tbaa !114
  %i.ex = and i16 %.pre.pre, 1
  %i.ey = icmp eq i16 %i.ex, 0
  br i1 %i.ey, label %bb.jd, label %bb.an

bb.an:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #8
  %i.ez = call i32 @Curl_xfer_recv(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i64 noundef 4096, ptr noundef nonnull %i.t) #8 ; 3 uses
  switch i32 %i.ez, label %bb.ao [
    i32 81, label %.thread
    i32 0, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  br label %.thread

bb.ap:                                            ; preds = %bb.an
  %i.fa = load i64, ptr %i.t, align 8, !tbaa !80  ; 2 uses
  %.not87 = icmp eq i64 %i.fa, 0
  br i1 %.not87, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @Curl_pgrs_download_inc(ptr noundef nonnull %0, i64 noundef %i.fa) #8
  %i.fb = load i64, ptr %i.t, align 8, !tbaa !80  ; 3 uses
  %.not209.i = icmp eq i64 %i.fb, 0
  br i1 %.not209.i, label %telrcv.exit, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.aq, %printoption.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %printoption.exit.i ], [ 0, %bb.aq ] ; 7 uses
  %.in.i = phi i64 [ %i.fc, %printoption.exit.i ], [ %i.fb, %bb.aq ]
  %.0211.i = phi i32 [ %.1.i101, %printoption.exit.i ], [ -1, %bb.aq ] ; 32 uses
  %i.fc = add nsw i64 %.in.i, -1                  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !76  ; 62 uses
  %i.ff = load i32, ptr %i.dd, align 4, !tbaa !98
  switch i32 %i.ff, label %printoption.exit.i [
    i32 6, label %bb.ar
    i32 0, label %bb.av
    i32 1, label %bb.ba
    i32 2, label %bb.bp
    i32 3, label %bb.de
    i32 4, label %bb.ej
    i32 5, label %bb.gk
    i32 7, label %bb.hp
    i32 8, label %bb.ht
  ]

bb.ar:                                            ; preds = %.lr.ph.i100
  store i32 0, ptr %i.dd, align 4, !tbaa !98
  %i.fg = icmp eq i8 %i.fe, 0
  br i1 %i.fg, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.fh = icmp sgt i32 %.0211.i, -1
  br i1 %i.fh, label %bb.at, label %printoption.exit.i

bb.at:                                            ; preds = %bb.as
  %i.fi = zext nneg i32 %.0211.i to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.fi
  %i.fk = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.fl = sub nsw i32 %i.fk, %.0211.i
  %i.fm = sext i32 %i.fl to i64
  %i.fn = call i32 @Curl_client_write(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.fj, i64 noundef %i.fm) #8 ; 2 uses
  %.not129.i = icmp eq i32 %i.fn, 0
  br i1 %.not129.i, label %printoption.exit.i, label %.thread

bb.au:                                            ; preds = %bb.ar
  %i.fo = icmp slt i32 %.0211.i, 0
  %i.fp = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select.i = select i1 %i.fo, i32 %i.fp, i32 %.0211.i
  br label %printoption.exit.i

bb.av:                                            ; preds = %.lr.ph.i100
  switch i8 %i.fe, label %bb.az [
    i8 -1, label %bb.aw
    i8 13, label %bb.ay
  ]

bb.aw:                                            ; preds = %bb.av
  store i32 1, ptr %i.dd, align 4, !tbaa !98
  %i.fq = icmp sgt i32 %.0211.i, -1
  br i1 %i.fq, label %bb.ax, label %printoption.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.fr = zext nneg i32 %.0211.i to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.fr
  %i.ft = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.fu = sub nsw i32 %i.ft, %.0211.i
  %i.fv = sext i32 %i.fu to i64
  %i.fw = call i32 @Curl_client_write(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.fs, i64 noundef %i.fv) #8 ; 2 uses
  %.not128.i = icmp eq i32 %i.fw, 0
  br i1 %.not128.i, label %printoption.exit.i, label %.thread

bb.ay:                                            ; preds = %bb.av
  store i32 6, ptr %i.dd, align 4, !tbaa !98
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %i.fx = icmp slt i32 %.0211.i, 0
  %i.fy = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select130.i = select i1 %i.fx, i32 %i.fy, i32 %.0211.i
  br label %printoption.exit.i

bb.ba:                                            ; preds = %.lr.ph.i100
  switch i8 %i.fe, label %bb.bh [
    i8 -5, label %bb.bb
    i8 -4, label %bb.bc
    i8 -3, label %bb.bd
    i8 -2, label %bb.be
    i8 -6, label %bb.bf
    i8 -1, label %bb.bg
  ]

bb.bb:                                            ; preds = %bb.ba
  store i32 2, ptr %i.dd, align 4, !tbaa !98
  br label %printoption.exit.i

bb.bc:                                            ; preds = %bb.ba
  store i32 3, ptr %i.dd, align 4, !tbaa !98
  br label %printoption.exit.i

bb.bd:                                            ; preds = %bb.ba
  store i32 4, ptr %i.dd, align 4, !tbaa !98
  br label %printoption.exit.i

bb.be:                                            ; preds = %bb.ba
  store i32 5, ptr %i.dd, align 4, !tbaa !98
  br label %printoption.exit.i

bb.bf:                                            ; preds = %bb.ba
  store ptr %i.df, ptr %i.de, align 8, !tbaa !75
  store i32 7, ptr %i.dd, align 4, !tbaa !98
  br label %printoption.exit.i

bb.bg:                                            ; preds = %bb.ba
  store i32 0, ptr %i.dd, align 4, !tbaa !98
  %i.fz = icmp slt i32 %.0211.i, 0
  %i.ga = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select131.i = select i1 %i.fz, i32 %i.ga, i32 %.0211.i
  br label %printoption.exit.i

bb.bh:                                            ; preds = %bb.ba
  %i.gb = zext i8 %i.fe to i32
  store i32 0, ptr %i.dd, align 4, !tbaa !98
  %i.gc = load i64, ptr %i.cs, align 1
  %i.gd = and i64 %i.gc, 536870912
  %.not.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i, label %printoption.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ge = icmp ugt i8 %i.fe, -21
  %i.gf = load ptr, ptr %i.dm, align 8, !tbaa !86 ; 3 uses
  %.not76.i.i = icmp eq ptr %i.gf, null           ; 2 uses
  br i1 %i.ge, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  br i1 %.not76.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !88
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %bb.bl, label %printoption.exit.i

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gj = zext i8 %i.fe to i64
  %i.gk = getelementptr [8 x i8], ptr @telnetcmds, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 -1888
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !79
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef %i.gm) #8
  br label %printoption.exit.i

bb.bm:                                            ; preds = %bb.bi
  br i1 %.not76.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !88
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %bb.bo, label %printoption.exit.i

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, i32 noundef range(i32 -2147483648, 256) %i.gb) #8
  br label %printoption.exit.i

bb.bp:                                            ; preds = %.lr.ph.i100
  %i.gq = zext i8 %i.fe to i32                    ; 4 uses
  %i.gr = load i64, ptr %i.cs, align 1
  %i.gs = and i64 %i.gr, 536870912
  %.not.i132.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i132.i, label %printoption.exit133.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
end_hunk_0
begin_hunk_1_@telnet_do:bb.a
  ]

bb.hu:                                            ; preds = %bb.ht
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.13) #8
  br label %.thread

bb.hv:                                            ; preds = %bb.ht
  %i.tq = load ptr, ptr %i.de, align 8, !tbaa !75 ; 3 uses
  %i.tr = icmp ult ptr %i.tq, %i.de
  br i1 %i.tr, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 1
  store ptr %i.ts, ptr %i.de, align 8, !tbaa !75
  store i8 -1, ptr %i.tq, align 1, !tbaa !76
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  store i32 7, ptr %i.dd, align 4, !tbaa !98
  br label %printoption.exit.i

bb.hy:                                            ; preds = %bb.ht
  %i.tt = load ptr, ptr %i.de, align 8, !tbaa !75 ; 4 uses
  %i.tu = icmp ult ptr %i.tt, %i.de
  br i1 %i.tu, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 1
  store ptr %i.tv, ptr %i.de, align 8, !tbaa !75
  store i8 -1, ptr %i.tt, align 1, !tbaa !76
  %.pre.i = load ptr, ptr %i.de, align 8, !tbaa !75
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.tw = phi ptr [ %i.tt, %bb.hy ], [ %.pre.i, %bb.hz ] ; 4 uses
  %i.tx = icmp ult ptr %i.tw, %i.de
  br i1 %i.tx, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  store ptr %i.ty, ptr %i.de, align 8, !tbaa !75
  store i8 -16, ptr %i.tw, align 1, !tbaa !76
  %.pre215.i = load ptr, ptr %i.de, align 8, !tbaa !75
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.tz = phi ptr [ %.pre215.i, %bb.ib ], [ %i.tw, %bb.ia ]
  %i.ua = getelementptr inbounds i8, ptr %i.tz, i64 -2 ; 3 uses
  store ptr %i.ua, ptr %i.dg, align 8, !tbaa !89
  store ptr %i.df, ptr %i.de, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ub = load ptr, ptr %i.u, align 8, !tbaa !71  ; 3 uses
  %.not.i187.i = icmp eq ptr %i.ua, %i.df
  br i1 %.not.i187.i, label %bb.iy, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.uc = ptrtoint ptr %i.ua to i64
  %.reass.i.reass.reass = add i64 %i.uc, %invariant.op
  call fastcc void @printsub(ptr noundef nonnull %0, i32 noundef 60, ptr noundef %i.df, i64 noundef %.reass.i.reass.reass)
  %i.ud = load ptr, ptr %i.de, align 8, !tbaa !75 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 1
  store ptr %i.ue, ptr %i.de, align 8, !tbaa !75
  %i.uf = load i8, ptr %i.ud, align 1, !tbaa !76
  switch i8 %i.uf, label %bb.iy [
    i8 24, label %bb.ie
    i8 35, label %bb.ik
    i8 39, label %bb.iq
  ]

bb.ie:                                            ; preds = %bb.id
  %i.ug = load ptr, ptr %i.dl, align 8, !tbaa !111 ; 4 uses
  %.not.i.i189.i = icmp eq ptr %i.ug, null
  br i1 %.not.i.i189.i, label %suboption.exit.thread.i, label %bad_option.exit.i.i

bad_option.exit.i.i:                              ; preds = %bb.ie
  %i.uh = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.ug, i32 noundef 255) #9
  %.not74.i.i = icmp eq ptr %i.uh, null
  br i1 %.not74.i.i, label %bb.if, label %suboption.exit.thread.i

bb.if:                                            ; preds = %bad_option.exit.i.i
  %i.ui = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ug) #9
  %i.uj = icmp ugt i64 %i.ui, 1000
  br i1 %i.uj, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.101) #8
  br label %suboption.exit.thread.i

bb.ih:                                            ; preds = %bb.if
  %i.uk = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.102, i32 noundef 255, i32 noundef 250, i32 noundef 24, i32 noundef 0, ptr noundef nonnull %i.ug, i32 noundef 255, i32 noundef 240) #8
  %i.ul = sext i32 %i.uk to i64                   ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ub, i64 280
  %i.un = load i32, ptr %i.um, align 8, !tbaa !72
  %i.uo = call i64 @send(i32 noundef %i.un, ptr noundef nonnull %i.a, i64 noundef %i.ul, i32 noundef 16384) #8
  %i.up = icmp slt i64 %i.uo, 0
  br i1 %i.up, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.uq = tail call ptr @__errno_location() #10
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !72
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.ur) #8
  br label %suboption.exit.thread.i

bb.ij:                                            ; preds = %bb.ih
  %i.us = add nsw i64 %i.ul, -2
  br label %.sink.split.i

bb.ik:                                            ; preds = %bb.id
  %i.ut = load ptr, ptr %i.dk, align 8, !tbaa !112 ; 4 uses
  %.not.i68.i.i = icmp eq ptr %i.ut, null
  br i1 %.not.i68.i.i, label %suboption.exit.thread.i, label %bad_option.exit69.i.i

bad_option.exit69.i.i:                            ; preds = %bb.ik
  %i.uu = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.ut, i32 noundef 255) #9
  %.not73.i.i = icmp eq ptr %i.uu, null
  br i1 %.not73.i.i, label %bb.il, label %suboption.exit.thread.i

bb.il:                                            ; preds = %bad_option.exit69.i.i
  %i.uv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ut) #9
  %i.uw = icmp ugt i64 %i.uv, 1000
  br i1 %i.uw, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.103) #8
  br label %suboption.exit.thread.i

bb.in:                                            ; preds = %bb.il
  %i.ux = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.102, i32 noundef 255, i32 noundef 250, i32 noundef 35, i32 noundef 0, ptr noundef nonnull %i.ut, i32 noundef 255, i32 noundef 240) #8
  %i.uy = sext i32 %i.ux to i64                   ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ub, i64 280
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !72
  %i.vb = call i64 @send(i32 noundef %i.va, ptr noundef nonnull %i.a, i64 noundef %i.uy, i32 noundef 16384) #8
  %i.vc = icmp slt i64 %i.vb, 0
  br i1 %i.vc, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.vd = tail call ptr @__errno_location() #10
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !72
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.ve) #8
  br label %suboption.exit.thread.i

bb.ip:                                            ; preds = %bb.in
  %i.vf = add nsw i64 %i.uy, -2
  br label %.sink.split.i

bb.iq:                                            ; preds = %bb.id
  %i.vg = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.104, i32 noundef 255, i32 noundef 250, i32 noundef 39, i32 noundef 0) #8
  %i.vh = sext i32 %i.vg to i64                   ; 2 uses
  %.06376.i.i = load ptr, ptr %i.di, align 8, !tbaa !108 ; 2 uses
  %.not6677.i.i = icmp eq ptr %.06376.i.i, null
  br i1 %.not6677.i.i, label %._crit_edge.i.i, label %bad_option.exit71.i.i

bad_option.exit71.i.i:                            ; preds = %bb.iq, %bb.iw
  %.06379.i.i = phi ptr [ %.063.i.i, %bb.iw ], [ %.06376.i.i, %bb.iq ] ; 2 uses
  %.06078.i.i = phi i64 [ %.3.i.i, %bb.iw ], [ %i.vh, %bb.iq ] ; 7 uses
  %i.vi = load ptr, ptr %.06379.i.i, align 8, !tbaa !110 ; 6 uses
  %i.vj = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.vi, i32 noundef 255) #9
  %.not72.i188.i = icmp eq ptr %i.vj, null
  br i1 %.not72.i188.i, label %bb.ir, label %suboption.exit.thread.i

bb.ir:                                            ; preds = %bad_option.exit71.i.i
  %i.vk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vi) #9
  %i.vl = add i64 %.06078.i.i, 1
  %i.vm = add i64 %i.vl, %i.vk
  %i.vn = icmp ult i64 %i.vm, 2042
  br i1 %i.vn, label %bb.is, label %bb.iw

bb.is:                                            ; preds = %bb.ir
  %i.vo = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.vi, i32 noundef 44) #9 ; 3 uses
  %.not67.i.i = icmp eq ptr %i.vo, null
  br i1 %.not67.i.i, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.vp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06078.i.i
  %i.vq = sub i64 2048, %.06078.i.i
  %i.vr = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.vp, i64 noundef %i.vq, ptr noundef nonnull @.str.105, i32 noundef 0, ptr noundef nonnull %i.vi) #8
  br label %bb.iv

bb.iu:                                            ; preds = %bb.is
  %i.vs = ptrtoint ptr %i.vo to i64
  %i.vt = ptrtoint ptr %i.vi to i64
  %i.vu = sub i64 %i.vs, %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06078.i.i
  %i.vw = sub i64 2048, %.06078.i.i
  %i.vx = trunc i64 %i.vu to i32
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vo, i64 1
  %i.vz = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.vv, i64 noundef %i.vw, ptr noundef nonnull @.str.106, i32 noundef 0, i32 noundef %i.vx, ptr noundef nonnull %i.vi, i32 noundef 1, ptr noundef nonnull %i.vy) #8
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %.pn.in.i.i = phi i32 [ %i.vz, %bb.iu ], [ %i.vr, %bb.it ]
  %.pn.i.i = sext i32 %.pn.in.i.i to i64
  %.161.i.i = add i64 %.06078.i.i, %.pn.i.i
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.ir
  %.3.i.i = phi i64 [ %.06078.i.i, %bb.ir ], [ %.161.i.i, %bb.iv ] ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.06379.i.i, i64 8
  %.063.i.i = load ptr, ptr %i.wa, align 8, !tbaa !108 ; 2 uses
  %.not66.i.i = icmp eq ptr %.063.i.i, null
  br i1 %.not66.i.i, label %._crit_edge.i.i, label %bad_option.exit71.i.i, !llvm.loop !94

._crit_edge.i.i:                                  ; preds = %bb.iw, %bb.iq
  %.060.lcssa.i.i = phi i64 [ %i.vh, %bb.iq ], [ %.3.i.i, %bb.iw ] ; 5 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.060.lcssa.i.i
  %i.wc = sub i64 2048, %.060.lcssa.i.i
  %i.wd = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.wb, i64 noundef %i.wc, ptr noundef nonnull @.str.107, i32 noundef 255, i32 noundef 240) #8 ; 0 uses
  %i.we = add i64 %.060.lcssa.i.i, 2
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ub, i64 280
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !72
  %i.wh = call i64 @send(i32 noundef %i.wg, ptr noundef nonnull %i.a, i64 noundef %i.we, i32 noundef 16384) #8
  %i.wi = icmp slt i64 %i.wh, 0
  br i1 %i.wi, label %bb.ix, label %.sink.split.i

bb.ix:                                            ; preds = %._crit_edge.i.i
  %i.wj = tail call ptr @__errno_location() #10
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !72
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.wk) #8
  br label %.sink.split.i

suboption.exit.thread.i:                          ; preds = %bad_option.exit69.i.i, %bb.ik, %bad_option.exit.i.i, %bb.ie, %bad_option.exit71.i.i, %bb.io, %bb.im, %bb.ii, %bb.ig
  %.2.i.ph.i = phi i32 [ 55, %bb.ig ], [ 55, %bb.im ], [ 43, %bad_option.exit71.i.i ], [ 55, %bb.ii ], [ 55, %bb.io ], [ 43, %bb.ie ], [ 43, %bad_option.exit.i.i ], [ 43, %bb.ik ], [ 43, %bad_option.exit69.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread

.sink.split.i:                                    ; preds = %bb.ix, %._crit_edge.i.i, %bb.ip, %bb.ij
  %.060.lcssa.i.sink.i = phi i64 [ %i.us, %bb.ij ], [ %i.vf, %bb.ip ], [ %.060.lcssa.i.i, %bb.ix ], [ %.060.lcssa.i.i, %._crit_edge.i.i ]
  call fastcc void @printsub(ptr noundef nonnull %0, i32 noundef 62, ptr noundef %i.dj, i64 noundef %.060.lcssa.i.sink.i)
  br label %bb.iy

bb.iy:                                            ; preds = %.sink.split.i, %bb.id, %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.dd, align 4, !tbaa !98
  br label %printoption.exit.i

printoption.exit.i:                               ; preds = %bb.iy, %bb.hx, %bb.hs, %bb.hr, %bb.hq, %rec_dont.exit.i, %rec_do.exit.i, %rec_wont.exit.i, %rec_will.exit.i, %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.as, %.lr.ph.i100
  %.1.i101 = phi i32 [ %.0211.i, %.lr.ph.i100 ], [ %.0211.i, %bb.iy ], [ -1, %bb.as ], [ -1, %bb.at ], [ %spec.select.i, %bb.au ], [ -1, %bb.aw ], [ -1, %bb.ax ], [ %.0211.i, %bb.hx ], [ %.0211.i, %bb.bb ], [ %.0211.i, %bb.bc ], [ %.0211.i, %bb.bd ], [ %.0211.i, %bb.be ], [ %.0211.i, %bb.bf ], [ %spec.select130.i, %bb.az ], [ %spec.select131.i, %bb.bg ], [ %.0211.i, %rec_will.exit.i ], [ %.0211.i, %rec_wont.exit.i ], [ %.0211.i, %rec_do.exit.i ], [ %.0211.i, %rec_dont.exit.i ], [ %.0211.i, %bb.hq ], [ %.0211.i, %bb.hs ], [ %.0211.i, %bb.hr ], [ %.0211.i, %bb.bh ], [ %.0211.i, %bb.bk ], [ %.0211.i, %bb.bl ], [ %.0211.i, %bb.bn ], [ %.0211.i, %bb.bo ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i102 = icmp eq i64 %i.fc, 0
  br i1 %.not.i102, label %._crit_edge.i, label %.lr.ph.i100, !llvm.loop !95

._crit_edge.i:                                    ; preds = %printoption.exit.i
  %i.wl = icmp sgt i32 %.1.i101, -1
  br i1 %i.wl, label %bb.iz, label %telrcv.exit

bb.iz:                                            ; preds = %._crit_edge.i
  %i.wm = trunc nuw i64 %i.fb to i32
  %i.wn = zext nneg i32 %.1.i101 to i64
  %i.wo = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.wn
  %i.wp = sub nsw i32 %i.wm, %.1.i101
  %i.wq = sext i32 %i.wp to i64
  %i.wr = call i32 @Curl_client_write(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.wo, i64 noundef %i.wq) #8 ; 2 uses
  %.not124.i = icmp eq i32 %i.wr, 0
  br i1 %.not124.i, label %telrcv.exit, label %.thread

telrcv.exit:                                      ; preds = %bb.iz, %._crit_edge.i, %bb.aq
  %i.ws = load i32, ptr %i.al, align 8, !tbaa !115
  %.not89 = icmp eq i32 %i.ws, 0
  br i1 %.not89, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %telrcv.exit
  %i.wt = load i32, ptr %i.eq, align 4, !tbaa !116
  %.not90 = icmp eq i32 %i.wt, 0
  br i1 %.not90, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  call fastcc void @telnet_negotiate(ptr noundef %0, ptr noundef %i.al)
  store i32 1, ptr %i.eq, align 4, !tbaa !116
  br label %bb.jc

.thread:                                          ; preds = %bb.ax, %bb.at, %bb.an, %bb.ao, %bb.ap, %suboption.exit.thread.i, %bb.hu, %bb.iz
  %.262.ph = phi i32 [ %i.ez, %bb.an ], [ 0, %bb.ap ], [ %i.ez, %bb.ao ], [ 56, %bb.hu ], [ %.2.i.ph.i, %suboption.exit.thread.i ], [ %i.wr, %bb.iz ], [ %i.fw, %bb.ax ], [ %i.fn, %bb.at ]
  %.2.ph = phi i1 [ true, %bb.an ], [ false, %bb.ap ], [ false, %bb.ao ], [ false, %bb.hu ], [ false, %suboption.exit.thread.i ], [ false, %bb.iz ], [ false, %bb.at ], [ false, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #8
  br label %.thread115

bb.jc:                                            ; preds = %telrcv.exit, %bb.ja, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #8
  br label %bb.jd

bb.jd:                                            ; preds = %.loopexit.thread, %bb.jc, %.loopexit
  %.363 = phi i32 [ 0, %bb.jc ], [ %.161.ph222, %.loopexit ], [ %.161.ph222, %.loopexit.thread ] ; 4 uses
  br i1 %.not84, label %bb.je, label %bb.jg

bb.je:                                            ; preds = %bb.jd
  %i.wu = load i16, ptr %i.dc, align 2, !tbaa !114
  %i.wv = and i16 %i.wu, 1
  %.not91 = icmp eq i16 %i.wv, 0
  br i1 %.not91, label %.thread115, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.ww = load i32, ptr %i.et, align 8, !tbaa !84
  %i.wx = call i64 @read(i32 noundef %i.ww, ptr noundef nonnull %i.s, i64 noundef 4096) #8
  br label %bb.ji

bb.jg:                                            ; preds = %bb.jd
  %i.wy = load ptr, ptr %i.er, align 8, !tbaa !117
  %i.wz = load ptr, ptr %i.es, align 8, !tbaa !113
  %i.xa = call i64 %i.wy(ptr noundef nonnull %i.s, i64 noundef 1, i64 noundef 4096, ptr noundef %i.wz) #8
  %i.xb = shl i64 %i.xa, 32                       ; 3 uses
  %i.xc = icmp eq i64 %i.xb, 1152921504606846976
  br i1 %i.xc, label %.thread115, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.xd = ashr exact i64 %i.xb, 32
  %i.xe = icmp eq i64 %i.xb, 1152921508901814272
  br i1 %i.xe, label %.thread115, label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jf
  %.057 = phi i64 [ %i.wx, %bb.jf ], [ %i.xd, %bb.jh ]
  %.057.fr = freeze i64 %.057                     ; 4 uses
  %i.xf = icmp sgt i64 %.057.fr, 0
  br i1 %i.xf, label %bb.jj, label %bb.jl

bb.jj:                                            ; preds = %bb.ji
  %i.xg = call fastcc i32 @send_telnet_data(ptr noundef %0, ptr noundef %i.al, ptr noundef %i.s, i64 noundef %.057.fr) ; 2 uses
  %.not92 = icmp eq i32 %i.xg, 0
  br i1 %.not92, label %bb.jk, label %.thread115

bb.jk:                                            ; preds = %bb.jj
  call void @Curl_pgrs_upload_inc(ptr noundef %0, i64 noundef %.057.fr) #8
  br label %.thread115

bb.jl:                                            ; preds = %bb.ji
  %.not122 = icmp eq i64 %.057.fr, 0
  br label %.thread115

.thread115:                                       ; preds = %bb.jl, %bb.je, %.thread, %bb.jj, %bb.jg, %bb.jk, %bb.jh
  %.464 = phi i32 [ %.363, %bb.jg ], [ 0, %bb.jk ], [ %i.xg, %bb.jj ], [ %.363, %bb.jh ], [ %.262.ph, %.thread ], [ %.363, %bb.je ], [ %.363, %bb.jl ] ; 2 uses
  %.4 = phi i1 [ false, %bb.jg ], [ true, %bb.jk ], [ false, %bb.jj ], [ true, %bb.jh ], [ %.2.ph, %.thread ], [ true, %bb.je ], [ %.not122, %bb.jl ] ; 2 uses
  %i.xh = load i64, ptr %i.eu, align 8, !tbaa !118
  %.not93 = icmp eq i64 %i.xh, 0
  br i1 %.not93, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %.thread115
  %i.xi = call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #8
  %i.xj = call i64 @curlx_ptimediff_ms(ptr noundef %i.xi, ptr noundef nonnull %i.ev) #8
  %i.xk = load i64, ptr %i.eu, align 8, !tbaa !118
  %.not94 = icmp slt i64 %i.xj, %i.xk
  br i1 %.not94, label %bb.jn, label %.thread118

.thread118:                                       ; preds = %bb.jm
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #8
  br label %.outer

bb.jn:                                            ; preds = %bb.jm, %.thread115
  %.not95 = icmp eq i32 %.464, 0
  br i1 %.not95, label %bb.jo, label %.outer

bb.jo:                                            ; preds = %bb.jn
  %i.xl = call i32 @Curl_pgrsUpdate(ptr noundef nonnull %0) #8 ; 2 uses
  %.not96 = icmp eq i32 %i.xl, 0
  %spec.select98 = and i1 %.not96, %.4
  br label %.outer

.outer:                                           ; preds = %.thread118, %bb.jo, %bb.jn
  %.666 = phi i32 [ %.464, %bb.jn ], [ %i.xl, %bb.jo ], [ 28, %.thread118 ] ; 2 uses
  %.6 = phi i1 [ %.4, %bb.jn ], [ %spec.select98, %bb.jo ], [ false, %.thread118 ]
  br i1 %.6, label %.lr.ph, label %.loopexit139, !llvm.loop !93

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.loopexit139, !llvm.loop !93

.loopexit139:                                     ; preds = %.outer, %..critedge_crit_edge, %bb.am
  %.161.ph.lcssa = phi i32 [ %.161.ph222, %..critedge_crit_edge ], [ %.060, %bb.am ], [ %.666, %.outer ]
  call void @Curl_xfer_setup_nop(ptr noundef nonnull %0) #8
  br label %check_telnet_options.exit

check_telnet_options.exit:                        ; preds = %bb.a, %.critedge.thread115.i, %.thread.i, %bb.b, %init_telnet.exit, %.loopexit139
  %.067 = phi i32 [ %i.ak, %init_telnet.exit ], [ 2, %bb.b ], [ %.161.ph.lcssa, %.loopexit139 ], [ %.060.lcssa118.i, %.critedge.thread115.i ], [ %.062.ph.i, %.thread.i ], [ 27, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.067
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @telnet_done(ptr noundef %0, i32 %1, i1 zeroext %2) #0 {
bb.a:
  tail call void @Curl_meta_remove(ptr noundef %0, ptr noundef nonnull @.str) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Curl_meta_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #3

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @Curl_poll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_xfer_recv(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_pgrs_download_inc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @telnet_negotiate(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = alloca [3 x i8], align 1                 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 5128
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %set_remote_option.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %set_remote_option.exit ] ; 14 uses
  %i.p = icmp eq i64 %indvars.iv, 1
  br i1 %i.p, label %set_remote_option.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !72
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.d, label %set_local_option.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !72
  switch i32 %i.u, label %set_local_option.exit [
    i32 0, label %bb.e
    i32 2, label %bb.l
    i32 3, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.t, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !71
  store i8 -1, ptr %i.b, align 1, !tbaa !76
  store i8 -5, ptr %i.g, align 1, !tbaa !76
  %i.w = trunc i64 %indvars.iv to i8
  store i8 %i.w, ptr %i.h, align 1, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  %i.y = load i32, ptr %i.x, align 8, !tbaa !72
  %i.z = call i64 @send(i32 noundef %i.y, ptr noundef nonnull %i.b, i64 noundef 3, i32 noundef 16384) #8
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %send_negotiation.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call ptr @__errno_location() #10
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !72
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.ac) #8
  br label %send_negotiation.exit.i

send_negotiation.exit.i:                          ; preds = %bb.f, %bb.e
  %i.ad = load i64, ptr %i.i, align 1
  %i.ae = and i64 %i.ad, 536870912
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %printoption.exit.i, label %bb.g

bb.g:                                             ; preds = %send_negotiation.exit.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @telnetoptions, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !79
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !86  ; 2 uses
  %.not72.i.i = icmp eq ptr %i.ah, null
  br i1 %.not72.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !88
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %printoption.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.ag) #8
  br label %printoption.exit.i

printoption.exit.i:                               ; preds = %bb.i, %bb.h, %send_negotiation.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %set_local_option.exit

bb.j:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !72
  %cond2.i = icmp eq i32 %i.am, 0
  br i1 %cond2.i, label %bb.k, label %set_local_option.exit

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.al, align 4, !tbaa !72
  br label %set_local_option.exit

bb.l:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !72
  %cond3.i = icmp eq i32 %i.ao, 1
  br i1 %cond3.i, label %bb.m, label %set_local_option.exit

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.an, align 4, !tbaa !72
  br label %set_local_option.exit

set_local_option.exit:                            ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %printoption.exit.i, %bb.d, %bb.c
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !72
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.n, label %set_remote_option.exit

bb.n:                                             ; preds = %set_local_option.exit
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !72
  switch i32 %i.at, label %set_remote_option.exit [
    i32 0, label %bb.o
    i32 2, label %bb.v
    i32 3, label %bb.t
  ]

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr %i.as, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !71
  store i8 -1, ptr %i.a, align 1, !tbaa !76
  store i8 -3, ptr %i.n, align 1, !tbaa !76
  %i.av = trunc i64 %indvars.iv to i8
  store i8 %i.av, ptr %i.o, align 1, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 280
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !72
  %i.ay = call i64 @send(i32 noundef %i.ax, ptr noundef nonnull %i.a, i64 noundef 3, i32 noundef 16384) #8
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.p, label %send_negotiation.exit.i14

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call ptr @__errno_location() #10
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !72
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.bb) #8
  br label %send_negotiation.exit.i14

send_negotiation.exit.i14:                        ; preds = %bb.p, %bb.o
  %i.bc = load i64, ptr %i.i, align 1
  %i.bd = and i64 %i.bc, 536870912
  %.not.i.i15 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i15, label %printoption.exit.i17, label %bb.q

bb.q:                                             ; preds = %send_negotiation.exit.i14
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @telnetoptions, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !79
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !86  ; 2 uses
  %.not72.i.i16 = icmp eq ptr %i.bg, null
  br i1 %.not72.i.i16, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !88
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.s, label %printoption.exit.i17

bb.s:                                             ; preds = %bb.r, %bb.q
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.bf) #8
  br label %printoption.exit.i17

printoption.exit.i17:                             ; preds = %bb.s, %bb.r, %send_negotiation.exit.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
end_hunk_1
