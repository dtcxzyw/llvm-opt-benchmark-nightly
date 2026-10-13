Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/ftp?download=true
inline.NumInlined: 116
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ftp_state_pasv_resp:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !85
  %.not8.4.i = icmp eq i8 %i.bg, 44
  br i1 %.not8.4.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bh, ptr %i.c, align 8, !tbaa !26
  %i.bi = call i32 @curlx_str_number(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 255) #9
  %.not9.4.i = icmp eq i32 %i.bi, 0
  br i1 %.not9.4.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !85
  %.not8.5.i = icmp eq i8 %i.bl, 44
  br i1 %.not8.5.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !26
  %i.bn = call i32 @curlx_str_number(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 255) #9
  %.not9.5.i = icmp eq i32 %i.bn, 0
  br i1 %.not9.5.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bo = getelementptr inbounds nuw i8, ptr %.0116260, i64 1 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !85
  %.not = icmp eq i8 %i.bp, 0
  br i1 %.not, label %.thread224, label %.lr.ph, !llvm.loop !251

bb.u:                                             ; preds = %bb.s
  %i.bq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.br = trunc i64 %i.au to i32                  ; 2 uses
  %i.bs = trunc i64 %i.az to i32                  ; 2 uses
  %i.bt = trunc i64 %i.be to i32                  ; 2 uses
  %i.bu = trunc i64 %i.bj to i16
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !115
  %i.bw = trunc i64 %i.bv to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pr = load i8, ptr %.0116260, align 1, !tbaa !85
  %.not148 = icmp eq i8 %.pr, 0
  br i1 %.not148, label %.thread224, label %bb.v

.thread224:                                       ; preds = %bb.t, %.preheader, %bb.u
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.162) #9
  br label %.thread208

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.by = load i32, ptr %i.bx, align 1            ; 2 uses
  %i.bz = and i32 %i.by, 131072
  %.not149 = icmp eq i32 %i.bz, 0
  br i1 %.not149, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = and i32 %i.by, 134217728
  %.not151 = icmp eq i32 %i.ca, 0
  br i1 %.not151, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !91 ; 2 uses
  %.not152 = icmp eq ptr %i.cc, null
  br i1 %.not152, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !93
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !149
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.163, i32 noundef %i.bq, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bt, ptr noundef %i.ch) #9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !95  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 728
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = and i64 %i.ck, 20
  %or.cond17.i = icmp eq i64 %i.cl, 0
  br i1 %or.cond17.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 160
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !149
  %i.cp = call ptr %i.cm(ptr noundef %i.co) #9, !inline_history !252
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.cq = call i32 @Curl_conn_get_ip_info(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %4) #9
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = load i8, ptr %4, align 2
  %i.ct = icmp ne i8 %i.cs, 0
  %or.cond.i = select i1 %i.cr, i1 %i.ct, i1 false
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !25
  %i.cv = call ptr %i.cu(ptr noundef nonnull %4) #9, !inline_history !252
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.169) #9
  br label %ftp_control_addr_dup.exit.thread

bb.af:                                            ; preds = %bb.ad, %bb.ab
  %.pr234 = phi ptr [ %i.cv, %bb.ad ], [ %i.cp, %bb.ab ] ; 2 uses
  store ptr %.pr234, ptr %i.f, align 8, !tbaa !26
  %.not16.i = icmp eq ptr %.pr234, null
  br i1 %.not16.i, label %ftp_control_addr_dup.exit.thread, label %.thread273

ftp_control_addr_dup.exit.thread:                 ; preds = %bb.ae, %bb.af
  %.0.i.ph = phi i32 [ 15, %bb.ae ], [ 27, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread208

.thread273:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ah

bb.ag:                                            ; preds = %bb.v
  %i.cw = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.164, i32 noundef %i.bq, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bt) #9 ; 2 uses
  store ptr %i.cw, ptr %i.f, align 8, !tbaa !26
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %.thread208, label %bb.ah

bb.ah:                                            ; preds = %.thread273, %bb.ag
  %i.cy = shl i16 %i.bu, 8
  %i.cz = add i16 %i.cy, %i.bw
  br label %bb.al

bb.ai:                                            ; preds = %bb.i
  br i1 %i.r, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.da = tail call fastcc i32 @ftp_epsv_disable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.l)
  br label %.thread208

bb.ak:                                            ; preds = %bb.ai
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.165, i32 noundef %2) #9
  br label %.thread208

bb.al:                                            ; preds = %bb.ah, %bb.h
  %.6 = phi i16 [ %i.cz, %bb.ah ], [ %i.aj, %bb.h ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 728 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 8            ; 3 uses
  %i.dd = and i64 %i.dc, 32
  %.not160 = icmp eq i64 %i.dd, 0
  br i1 %.not160, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.de = and i64 %i.dc, 4
  %.not166 = icmp eq i64 %i.de, 0
  %.in.v = select i1 %.not166, i64 288, i64 232
  %.in = getelementptr inbounds nuw i8, ptr %i.l, i64 %.in.v
  %i.df = load ptr, ptr %.in, align 8, !tbaa !26  ; 2 uses
  %i.dg = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.dh = call i32 @Curl_conn_get_ip_info(ptr noundef nonnull %0, ptr noundef %i.dg, i32 noundef 0, ptr noundef nonnull %i.i, ptr noundef nonnull %5) #9 ; 2 uses
  %.not167 = icmp eq i32 %i.dh, 0
  br i1 %.not167, label %bb.an, label %.thread241

bb.an:                                            ; preds = %bb.am
  %i.di = load i8, ptr %i.i, align 1, !tbaa !97, !range !107, !noundef !108
  %i.dj = add nuw nsw i8 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 92 ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !253
  %i.dm = call zeroext i8 @Curl_conn_get_transport(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #9
  %i.dn = call i32 @Curl_resolv_blocking(ptr noundef nonnull %0, i8 noundef zeroext %i.dj, ptr noundef %i.df, i16 noundef zeroext %i.dl, i8 noundef zeroext %i.dm, ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.do = load i16, ptr %i.dk, align 2, !tbaa !253 ; 2 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !135
  %.not168 = icmp eq ptr %i.dp, null
  br i1 %.not168, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dq = zext i16 %i.do to i32
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.166, ptr noundef %i.df, i32 noundef %i.dq) #9
  br label %.thread241

.thread241:                                       ; preds = %bb.ao, %bb.am
  %.0124.ph = phi i32 [ %i.dh, %bb.am ], [ 5, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.bp

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.ba

bb.aq:                                            ; preds = %bb.al
  %i.dr = and i64 %i.dc, 8388736
  %or.cond179 = icmp eq i64 %i.dr, 8388608
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !26  ; 4 uses
  br i1 %or.cond179, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.ds = load i8, ptr %.pre, align 1, !tbaa !85
  %.not163 = icmp eq i8 %i.ds, 0
  br i1 %.not163, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.dt = load ptr, ptr @Curl_cfree, align 8, !tbaa !25
  call void %i.dt(ptr noundef nonnull %.pre) #9
  %i.du = load ptr, ptr %i.k, align 8, !tbaa !95  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 728
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = and i64 %i.dw, 20
  %or.cond17.i180 = icmp eq i64 %i.dx, 0
  br i1 %or.cond17.i180, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dy = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !25
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 160
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !149
  %i.eb = call ptr %i.dy(ptr noundef %i.ea) #9, !inline_history !252
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.ec = call i32 @Curl_conn_get_ip_info(ptr noundef nonnull %0, ptr noundef nonnull %i.du, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %3) #9
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = load i8, ptr %3, align 2
  %i.ef = icmp ne i8 %i.ee, 0
  %or.cond.i184 = select i1 %i.ed, i1 %i.ef, i1 false
  br i1 %or.cond.i184, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.eg = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !25
  %i.eh = call ptr %i.eg(ptr noundef nonnull %3) #9, !inline_history !252
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.169) #9
  store ptr null, ptr %i.f, align 8, !tbaa !26
  br label %ftp_control_addr_dup.exit185.thread

bb.ax:                                            ; preds = %bb.av, %bb.at
  %storemerge.i181 = phi ptr [ %i.eh, %bb.av ], [ %i.eb, %bb.at ] ; 3 uses
  store ptr %storemerge.i181, ptr %i.f, align 8, !tbaa !26
  %.not16.i182 = icmp eq ptr %storemerge.i181, null
  br i1 %.not16.i182, label %ftp_control_addr_dup.exit185.thread, label %ftp_control_addr_dup.exit185

ftp_control_addr_dup.exit185.thread:              ; preds = %bb.aw, %bb.ax
  %.0.i183.ph = phi i32 [ 15, %bb.aw ], [ 27, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.bp

ftp_control_addr_dup.exit185:                     ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.ay

bb.ay:                                            ; preds = %ftp_control_addr_dup.exit185, %bb.ar, %bb.aq
  %i.ei = phi ptr [ %storemerge.i181, %ftp_control_addr_dup.exit185 ], [ %.pre, %bb.ar ], [ %.pre, %bb.aq ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 803
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !142
  %i.el = call zeroext i8 @Curl_resolv_dns_queries(ptr noundef nonnull %0, i8 noundef zeroext %i.ek) #9
  %i.em = call zeroext i8 @Curl_conn_get_transport(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #9
  %i.en = call i32 @Curl_resolv_blocking(ptr noundef nonnull %0, i8 noundef zeroext %i.el, ptr noundef %i.ei, i16 noundef zeroext %.6, i8 noundef zeroext %i.em, ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.eo = load ptr, ptr %i.e, align 8, !tbaa !135
  %.not165 = icmp eq ptr %i.eo, null
  br i1 %.not165, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ep = zext i16 %.6 to i32
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, ptr noundef %i.ei, i32 noundef %i.ep) #9
  br label %bb.bp

bb.ba:                                            ; preds = %bb.ap, %bb.ay
  %.1123 = phi i16 [ %i.do, %bb.ap ], [ %.6, %bb.ay ]
  %i.eq = load ptr, ptr @Curl_cfree, align 8, !tbaa !25
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 176 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !254
  call void %i.eq(ptr noundef %i.es) #9
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 800
  store i16 %.6, ptr %i.et, align 8, !tbaa !255
  %6 = load ptr, ptr %i.f, align 8, !tbaa !26
  store ptr %6, ptr %i.er, align 8, !tbaa !254
  store ptr null, ptr %i.f, align 8, !tbaa !26
  %i.eu = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.ev = load i64, ptr %i.db, align 8
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = lshr i32 %i.ew, 17
  %i.ey = and i32 %i.ex, 1
  %i.ez = call i32 @Curl_conn_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef 1, ptr noundef %i.eu, i32 noundef %i.ey) #9 ; 3 uses
  switch i32 %i.ez, label %bb.bb [
    i32 0, label %bb.bd
    i32 27, label %bb.bp
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.fa = load i32, ptr %i.p, align 8, !tbaa !122
  %i.fb = icmp eq i32 %i.fa, 0
  %or.cond8 = and i1 %i.s, %i.fb
  br i1 %or.cond8, label %bb.bc, label %bb.bp

bb.bc:                                            ; preds = %bb.bb
  %i.fc = call fastcc i32 @ftp_epsv_disable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.l)
  br label %bb.bp

bb.bd:                                            ; preds = %bb.ba
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 1
  %i.ff = and i32 %i.fe, 134217728
  %.not171 = icmp eq i32 %i.ff, 0
  br i1 %.not171, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.fg = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !145
  call void @Curl_printable_address(ptr noundef %i.fh, ptr noundef nonnull %i.j, i64 noundef 256) #9
  %i.fi = load i32, ptr %i.fd, align 1
  %i.fj = and i32 %i.fi, 134217728
  %.not173 = icmp eq i32 %i.fj, 0
  br i1 %.not173, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !91 ; 2 uses
  %.not174 = icmp eq ptr %i.fl, null
  br i1 %.not174, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !93
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fp = load ptr, ptr %i.er, align 8, !tbaa !254
  %i.fq = zext i16 %.1123 to i32
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.168, ptr noundef %i.fp, ptr noundef nonnull %i.j, i32 noundef %i.fq) #9
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bd
  %i.fr = load i64, ptr %i.db, align 8
  %i.fs = or i64 %i.fr, 4096
  store i64 %i.fs, ptr %i.db, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !94  ; 2 uses
  %.not248 = icmp eq i8 %i.fu, 0
  br i1 %.not248, label %ftp_state_low.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fv = load i32, ptr %i.fd, align 1
  %i.fw = and i32 %i.fv, 134217728
  %.not.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i, label %ftp_state_low.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !91 ; 2 uses
  %.not16.i186 = icmp eq ptr %i.fy, null
  br i1 %.not16.i186, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !93
  %i.gb = icmp sgt i32 %i.ga, 0
  %i.gc = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.gd = icmp sgt i32 %i.gc, 0
  %or.cond.i187 = select i1 %i.gb, i1 %i.gd, i1 false
  br i1 %or.cond.i187, label %bb.bo, label %ftp_state_low.exit

bb.bn:                                            ; preds = %bb.bl
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.bo, label %ftp_state_low.exit

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ge = zext i8 %i.fu to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !26
  call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.gg, ptr noundef nonnull @.str.5) #9
  br label %ftp_state_low.exit

ftp_state_low.exit:                               ; preds = %bb.bj, %bb.bk, %bb.bm, %bb.bn, %bb.bo
  store i8 0, ptr %i.ft, align 8, !tbaa !94
  br label %bb.bp

bb.bp:                                            ; preds = %ftp_control_addr_dup.exit185.thread, %.thread241, %bb.ba, %bb.bb, %bb.bc, %ftp_state_low.exit, %bb.az
  %.1125 = phi i32 [ %i.fc, %bb.bc ], [ %i.ez, %bb.bb ], [ %i.ez, %bb.ba ], [ 0, %ftp_state_low.exit ], [ %.0124.ph, %.thread241 ], [ 15, %bb.az ], [ %.0.i183.ph, %ftp_control_addr_dup.exit185.thread ]
  call void @Curl_dns_entry_unlink(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #9
  %i.gh = load ptr, ptr @Curl_cfree, align 8, !tbaa !25
  %7 = load ptr, ptr %i.f, align 8, !tbaa !26
  call void %i.gh(ptr noundef %7) #9
  br label %.thread208

.thread208:                                       ; preds = %bb.ag, %ftp_control_addr_dup.exit.thread, %.thread224, %.thread196, %.thread, %bb.h, %bb.bp, %bb.ak, %bb.aj
  %.7 = phi i32 [ 13, %bb.ak ], [ %.1125, %bb.bp ], [ %i.da, %bb.aj ], [ %i.ak, %bb.h ], [ 13, %.thread196 ], [ 13, %.thread ], [ 27, %bb.ag ], [ %.0.i.ph, %ftp_control_addr_dup.exit.thread ], [ 14, %.thread224 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ftp_state_port_resp(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef range(i32 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %.off = add i32 %3, -200
  %.not = icmp ult i32 %.off, 100
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.g = load i32, ptr %i.f, align 1
  %i.h = and i32 %i.g, 134217728
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %.not35 = icmp eq ptr %i.j, null
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !93
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.170) #9
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 728 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, -65537
  store i64 %i.p, ptr %i.n, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.q = add i32 %i.d, 1                          ; 2 uses
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.171) #9
  br label %bb.u

bb.i:                                             ; preds = %.thread, %bb.g
  %i.s = phi i32 [ 1, %.thread ], [ %i.q, %bb.g ]
  %i.t = tail call fastcc i32 @ftp_state_use_port(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.s)
  br label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.v = load i32, ptr %i.u, align 1
  %i.w = and i32 %i.v, 134217728
  %.not31 = icmp eq i32 %i.w, 0
  br i1 %.not31, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91   ; 2 uses
  %.not32 = icmp eq ptr %i.y, null
  br i1 %.not32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !93
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.172) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !94  ; 2 uses
  %.not36 = icmp eq i8 %i.ad, 0
  br i1 %.not36, label %ftp_state_low.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = load i32, ptr %i.u, align 1
  %i.af = and i32 %i.ae, 134217728
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %ftp_state_low.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !91 ; 2 uses
  %.not16.i = icmp eq ptr %i.ah, null
  br i1 %.not16.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !93
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.am = icmp sgt i32 %i.al, 0
  %or.cond.i = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond.i, label %bb.s, label %ftp_state_low.exit

bb.r:                                             ; preds = %bb.p
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.s, label %ftp_state_low.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.an = zext i8 %i.ad to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26
  tail call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.ap, ptr noundef nonnull @.str.5) #9
  br label %ftp_state_low.exit

ftp_state_low.exit:                               ; preds = %bb.n, %bb.o, %bb.q, %bb.r, %bb.s
  store i8 0, ptr %i.ac, align 8, !tbaa !94
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !86
  %.not1315.i = icmp eq i32 %i.ar, 0
  br i1 %.not1315.i, label %.thread16.i, label %bb.t

bb.t:                                             ; preds = %ftp_state_low.exit
  tail call void @Curl_xfer_setup_nop(ptr noundef nonnull %0) #9
  br label %ftp_dophase_done.exit

.thread16.i:                                      ; preds = %ftp_state_low.exit
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 728 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = or i64 %i.au, 4096
  store i64 %i.av, ptr %i.at, align 8
  br label %ftp_dophase_done.exit

ftp_dophase_done.exit:                            ; preds = %bb.t, %.thread16.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 251 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = or i8 %i.ax, 4
  store i8 %i.ay, ptr %i.aw, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.h, %bb.i, %ftp_dophase_done.exit
  %.0 = phi i32 [ 30, %bb.h ], [ %i.t, %bb.i ], [ 0, %ftp_dophase_done.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ftp_state_get_resp(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  switch i32 %3, label %bb.ak [
    i32 150, label %bb.b
    i32 125, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  store i64 -1, ptr %i.d, align 8, !tbaa !106
  %.not115 = icmp eq i8 %4, 33                    ; 3 uses
  br i1 %.not115, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 16384
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2053
  %i.i = load i16, ptr %i.h, align 1
  %i.j = and i16 %i.i, 1
  %.not87 = icmp eq i16 %i.j, 0
  br i1 %.not87, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !87
  %i.m = icmp slt i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
end_hunk_0
