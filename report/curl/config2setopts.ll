Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/config2setopts?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
begin_hunk_0_@ssl_setopts:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.162, i32 noundef 10169, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.d = tail call zeroext i1 @setopt_bad(i32 noundef %i.c) #11
  br i1 %i.d, label %bb.ce, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !150  ; 2 uses
  %.not199 = icmp eq ptr %i.f, null
  br i1 %.not199, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.163, i32 noundef 10260, ptr noundef nonnull %i.f) #11 ; 2 uses
  %i.h = tail call zeroext i1 @setopt_bad(i32 noundef %i.g) #11
  br i1 %i.h, label %bb.ce, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %.not200 = icmp eq ptr %i.i, null
  br i1 %.not200, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.163, i32 noundef 10260, ptr noundef nonnull %i.i) #11 ; 2 uses
  %i.k = tail call zeroext i1 @setopt_bad(i32 noundef %i.j) #11
  br i1 %i.k, label %bb.ce, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151  ; 2 uses
  %.not201 = icmp eq ptr %i.m, null
  br i1 %.not201, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.164, i32 noundef 10230, ptr noundef nonnull %i.m) #11 ; 3 uses
  %i.o = tail call zeroext i1 @setopt_bad(i32 noundef %i.n) #11
  br i1 %i.o, label %bb.ce, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not202 = icmp eq i32 %i.n, 0
  br i1 %.not202, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.b.i = load i1, ptr @ssl_backend.already, align 1
  br i1 %.b.i, label %ssl_backend.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = tail call ptr @curl_version_info(i32 noundef 11) #11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33   ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call i64 @strcspn(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.132) #12
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull @ssl_backend.ssl_ver, i64 noundef 80, ptr noundef nonnull @.str.161, i32 noundef %i.t, ptr noundef nonnull %i.r) #11 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i1 true, ptr @ssl_backend.already, align 1
  br label %ssl_backend.exit

ssl_backend.exit:                                 ; preds = %bb.j, %bb.m
  tail call void (ptr, ...) @warnf(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.165, ptr noundef nonnull @ssl_backend.ssl_ver) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %ssl_backend.exit, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152  ; 2 uses
  %.not203 = icmp eq ptr %i.w, null
  br i1 %.not203, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.166, i32 noundef 10263, ptr noundef nonnull %i.w) #11 ; 3 uses
  %i.y = tail call zeroext i1 @setopt_bad(i32 noundef %i.x) #11
  br i1 %i.y, label %bb.ce, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not204 = icmp eq i32 %i.x, 0
  br i1 %.not204, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.b.i242 = load i1, ptr @ssl_backend.already, align 1
  br i1 %.b.i242, label %ssl_backend.exit244, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = tail call ptr @curl_version_info(i32 noundef 11) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 3 uses
  %.not.i243 = icmp eq ptr %i.ab, null
  br i1 %.not.i243, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = tail call i64 @strcspn(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.132) #12
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = tail call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull @ssl_backend.ssl_ver, i64 noundef 80, ptr noundef nonnull @.str.161, i32 noundef %i.ad, ptr noundef nonnull %i.ab) #11 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i1 true, ptr @ssl_backend.already, align 1
  br label %ssl_backend.exit244

ssl_backend.exit244:                              ; preds = %bb.q, %bb.t
  tail call void (ptr, ...) @warnf(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.167, ptr noundef nonnull @ssl_backend.ssl_ver) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %ssl_backend.exit244, %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !153 ; 2 uses
  %.not205 = icmp eq ptr %i.ag, null
  br i1 %.not205, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.168, i32 noundef 10298, ptr noundef nonnull %i.ag) #11 ; 2 uses
  %i.ai = tail call zeroext i1 @setopt_bad(i32 noundef %i.ah) #11
  br i1 %i.ai, label %bb.ce, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !154 ; 2 uses
  %.not206 = icmp eq ptr %i.ak, null
  br i1 %.not206, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.al = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.169, i32 noundef 10328, ptr noundef nonnull %i.ak) #11 ; 2 uses
  %i.am = tail call zeroext i1 @setopt_bad(i32 noundef %i.al) #11
  br i1 %i.am, label %bb.ce, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !155
  %.not207 = icmp eq ptr %i.ao, null
  br i1 %.not207, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ap = tail call i32 @tool_setopt_long(ptr noundef %1, ptr noundef nonnull @.str.170, i32 noundef 172, i64 noundef 1) #11 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !156
  %i.as = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.171, i32 noundef 10025, ptr noundef %i.ar) #11 ; 2 uses
  %i.at = tail call zeroext i1 @setopt_bad(i32 noundef %i.as) #11
  br i1 %i.at, label %bb.ce, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !157
  %i.aw = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.172, i32 noundef 10254, ptr noundef %i.av) #11 ; 2 uses
  %i.ax = tail call zeroext i1 @setopt_bad(i32 noundef %i.aw) #11
  br i1 %i.ax, label %bb.ce, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !158
  %i.ba = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.173, i32 noundef 10086, ptr noundef %i.az) #11 ; 2 uses
  %i.bb = tail call zeroext i1 @setopt_bad(i32 noundef %i.ba) #11
  br i1 %i.bb, label %bb.ce, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !159
  %i.be = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.174, i32 noundef 10255, ptr noundef %i.bd) #11 ; 2 uses
  %i.bf = tail call zeroext i1 @setopt_bad(i32 noundef %i.be) #11
  br i1 %i.bf, label %bb.ce, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.bi = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.175, i32 noundef 10087, ptr noundef %i.bh) #11 ; 2 uses
  %i.bj = tail call zeroext i1 @setopt_bad(i32 noundef %i.bi) #11
  br i1 %i.bj, label %bb.ce, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !160
  %i.bm = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.176, i32 noundef 10256, ptr noundef %i.bl) #11 ; 2 uses
  %i.bn = tail call zeroext i1 @setopt_bad(i32 noundef %i.bm) #11
  br i1 %i.bn, label %bb.ce, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !161
  %i.bq = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.177, i32 noundef 10088, ptr noundef %i.bp) #11 ; 2 uses
  %i.br = tail call zeroext i1 @setopt_bad(i32 noundef %i.bq) #11
  br i1 %i.br, label %bb.ce, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !162
  %i.bu = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.178, i32 noundef 10257, ptr noundef %i.bt) #11 ; 2 uses
  %i.bv = tail call zeroext i1 @setopt_bad(i32 noundef %i.bu) #11
  br i1 %i.bv, label %bb.ce, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1179 ; 7 uses
  %i.bx = load i64, ptr %i.bw, align 1            ; 2 uses
  %i.by = and i64 %i.bx, 1073741824
  %.not208 = icmp eq i64 %i.by, 0
  br i1 %.not208, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = tail call i32 @tool_setopt_long(ptr noundef %1, ptr noundef nonnull @.str.179, i32 noundef 64, i64 noundef 0) #11 ; 0 uses
  %i.ca = tail call i32 @tool_setopt_long(ptr noundef %1, ptr noundef nonnull @.str.180, i32 noundef 81, i64 noundef 0) #11 ; 0 uses
  %.pre = load i64, ptr %i.bw, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cb = phi i64 [ %.pre, %bb.aj ], [ %i.bx, %bb.ai ] ; 2 uses
  %i.cc = and i64 %i.cb, 2147483648
  %.not209 = icmp eq i64 %i.cc, 0
  br i1 %.not209, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cd = tail call i32 @tool_setopt_long(ptr noundef %1, ptr noundef nonnull @.str.181, i32 noundef 306, i64 noundef 0) #11 ; 0 uses
  %i.ce = tail call i32 @tool_setopt_long(ptr noundef %1, ptr noundef nonnull @.str.182, i32 noundef 307, i64 noundef 0) #11 ; 0 uses
  %.pre245 = load i64, ptr %i.bw, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %2 = phi i64 [ %.pre245, %bb.al ], [ %i.cb, %bb.ak ] ; 2 uses
  %3 = and i64 %2, 4294967296
  %.not210 = icmp eq i64 %3, 0
  br i1 %.not210, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cf = tail call i32 @tool_setopt_long(ptr noundef %1, ptr noundef nonnull @.str.183, i32 noundef 248, i64 noundef 0) #11 ; 0 uses
  %i.cg = tail call i32 @tool_setopt_long(ptr noundef %1, ptr noundef nonnull @.str.184, i32 noundef 249, i64 noundef 0) #11 ; 0 uses
  %.pre246 = load i64, ptr %i.bw, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %4 = phi i64 [ %.pre246, %bb.an ], [ %2, %bb.am ] ; 2 uses
  %i.ch = and i64 %4, 17179869184
  %.not211 = icmp eq i64 %i.ch, 0
  br i1 %.not211, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ci = tail call i32 @tool_setopt_long(ptr noundef %1, ptr noundef nonnull @.str.185, i32 noundef 232, i64 noundef 1) #11 ; 0 uses
  %.pre247.a = load i64, ptr %i.bw, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cj = phi i64 [ %.pre247.a, %bb.ap ], [ %4, %bb.ao ]
  %i.ck = and i64 %i.cj, 34359738368
  %.not212 = icmp eq i64 %i.ck, 0
  br i1 %.not212, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cl = tail call i32 @tool_setopt_long(ptr noundef %1, ptr noundef nonnull @.str.186, i32 noundef 308, i64 noundef 1) #11 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !163
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1177
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !164
  %i.cq = tail call fastcc i64 @tlsversion(i8 noundef zeroext %i.cn, i8 noundef zeroext %i.cp)
  %i.cr = tail call i32 @tool_setopt_SSLVERSION(ptr noundef %1, ptr noundef nonnull @.str.187, i32 noundef 32, i64 noundef %i.cq) #11 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !21
  %.not213 = icmp eq ptr %i.ct, null
  br i1 %.not213, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !165
  %i.cw = tail call i32 @tool_setopt_SSLVERSION(ptr noundef %1, ptr noundef nonnull @.str.188, i32 noundef 250, i64 noundef %i.cv) #11 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1187 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 1            ; 5 uses
  %i.cz = and i32 %i.cy, 1
  %i.da = shl i32 %i.cy, 5
  %i.db = and i32 %i.da, 64
  %i.dc = or disjoint i32 %i.db, %i.cz
  %i.dd = lshr i32 %i.cy, 2                       ; 3 uses
  %i.de = and i32 %i.dd, 2
  %i.df = or disjoint i32 %i.dc, %i.de
  %i.dg = lshr i32 %i.cy, 1
  %i.dh = and i32 %i.dg, 24
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = and i32 %i.dd, 32
  %i.dk = or disjoint i32 %i.di, %i.dj            ; 2 uses
  %.not220 = icmp eq i32 %i.dk, 0
  br i1 %.not220, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = tail call i32 @tool_setopt_bitmask(ptr noundef %1, ptr noundef nonnull @.str.189, i32 noundef 216, ptr noundef nonnull @setopt_nv_CURLSSLOPT, i64 noundef %i.dl) #11 ; 0 uses
  %.pre248.a = load i32, ptr %i.cx, align 1       ; 2 uses
  %.pre249 = lshr i32 %.pre248.a, 2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pre-phi = phi i32 [ %.pre249, %bb.av ], [ %i.dd, %bb.au ]
  %i.dn = phi i32 [ %.pre248.a, %bb.av ], [ %i.cy, %bb.au ]
  %i.do = lshr i32 %i.dn, 3
  %i.dp = and i32 %i.do, 32
  %i.dq = and i32 %.pre-phi, 17
  %i.dr = or disjoint i32 %i.dq, %i.dp            ; 2 uses
  %.not224 = icmp eq i32 %i.dr, 0
  br i1 %.not224, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = tail call i32 @tool_setopt_bitmask(ptr noundef %1, ptr noundef nonnull @.str.190, i32 noundef 261, ptr noundef nonnull @setopt_nv_CURLSSLOPT, i64 noundef %i.ds) #11 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !166 ; 2 uses
  %.not225 = icmp eq ptr %i.dv, null
  br i1 %.not225, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dw = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.191, i32 noundef 10083, ptr noundef nonnull %i.dv) #11 ; 3 uses
  %i.dx = tail call zeroext i1 @setopt_bad(i32 noundef %i.dw) #11
  br i1 %i.dx, label %bb.ce, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not226 = icmp eq i32 %i.dw, 0
  br i1 %.not226, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call fastcc void @ssl_backend()
  tail call void (ptr, ...) @warnf(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.192, ptr noundef nonnull @ssl_backend.ssl_ver) #11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.ay
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !167 ; 2 uses
  %.not227 = icmp eq ptr %i.dz, null
  br i1 %.not227, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ea = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.193, i32 noundef 10259, ptr noundef nonnull %i.dz) #11 ; 3 uses
  %i.eb = tail call zeroext i1 @setopt_bad(i32 noundef %i.ea) #11
  br i1 %i.eb, label %bb.ce, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not228 = icmp eq i32 %i.ea, 0
  br i1 %.not228, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call fastcc void @ssl_backend()
  tail call void (ptr, ...) @warnf(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.194, ptr noundef nonnull @ssl_backend.ssl_ver) #11
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bc
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !168 ; 2 uses
  %.not229 = icmp eq ptr %i.ed, null
  br i1 %.not229, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ee = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.195, i32 noundef 10276, ptr noundef nonnull %i.ed) #11 ; 3 uses
  %i.ef = tail call zeroext i1 @setopt_bad(i32 noundef %i.ee) #11
  br i1 %i.ef, label %bb.ce, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not230 = icmp eq i32 %i.ee, 0
  br i1 %.not230, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call fastcc void @ssl_backend()
  tail call void (ptr, ...) @warnf(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.196, ptr noundef nonnull @ssl_backend.ssl_ver) #11
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bg
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !169 ; 2 uses
  %.not231 = icmp eq ptr %i.eh, null
  br i1 %.not231, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ei = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.197, i32 noundef 10277, ptr noundef nonnull %i.eh) #11 ; 3 uses
  %i.ej = tail call zeroext i1 @setopt_bad(i32 noundef %i.ei) #11
  br i1 %i.ej, label %bb.ce, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.not232 = icmp eq i32 %i.ei, 0
  br i1 %.not232, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call fastcc void @ssl_backend()
  tail call void (ptr, ...) @warnf(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.198, ptr noundef nonnull @ssl_backend.ssl_ver) #11
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bk
  %i.ek = load i64, ptr %i.bw, align 1
  %i.el = and i64 %i.ek, 72057594037927936
  %.not233 = icmp eq i64 %i.el, 0
  br i1 %.not233, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.em = tail call i32 @tool_setopt_long(ptr noundef %1, ptr noundef nonnull @.str.199, i32 noundef 150, i64 noundef 0) #11 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.en = load i8, ptr @feature_ech, align 1, !tbaa !23, !range !24, !noundef !25
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !170 ; 2 uses
  %.not234 = icmp eq ptr %i.eq, null
  br i1 %.not234, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.er = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.200, i32 noundef 10325, ptr noundef nonnull %i.eq) #11 ; 2 uses
  %i.es = tail call zeroext i1 @setopt_bad(i32 noundef %i.er) #11
  br i1 %i.es, label %bb.ce, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !171 ; 2 uses
  %.not235 = icmp eq ptr %i.eu, null
  br i1 %.not235, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ev = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.200, i32 noundef 10325, ptr noundef nonnull %i.eu) #11 ; 2 uses
  %i.ew = tail call zeroext i1 @setopt_bad(i32 noundef %i.ev) #11
  br i1 %i.ew, label %bb.ce, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !172 ; 2 uses
  %.not236 = icmp eq ptr %i.ey, null
  br i1 %.not236, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ez = tail call i32 (ptr, ptr, ptr, i32, ...) @tool_setopt_str(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.200, i32 noundef 10325, ptr noundef nonnull %i.ey) #11 ; 2 uses
  %i.fa = tail call zeroext i1 @setopt_bad(i32 noundef %i.ez) #11
  br i1 %i.fa, label %bb.ce, label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %bb.bq
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !173 ; 2 uses
  %.not237 = icmp eq ptr %i.fc, null
  br i1 %.not237, label %bb.bz, label %bb.by

end_hunk_0
