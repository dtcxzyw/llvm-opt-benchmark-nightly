inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@cab_chkname:bb.a
  br i1 %.not10, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add nuw i64 %.089, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !71

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.089 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.089
  %i.d = load i8, ptr %i.c, align 1, !tbaa !70    ; 2 uses
  %i.e = sext i8 %i.d to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.51, i32 %i.e, i64 16)
  %.not = icmp eq ptr %memchr, null
  %i.f = icmp sgt i8 %i.d, -1
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.52) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @cab_extract(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.42) #11
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.43) #11
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 8 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51
  %i.i = tail call i64 @lseek(i32 noundef %i.f, i64 noundef %i.h, i32 noundef 0) #11
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !51
  %i.n = trunc i64 %i.m to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.44, i32 noundef %i.n) #11
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  %i.o = tail call ptr @cli_calloc(i64 noundef 1, i64 noundef 38952) #11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 18 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !72
  %.not104 = icmp eq ptr %i.o, null
  br i1 %.not104, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.45) #11
  br label %bb.al

bb.i:                                             ; preds = %bb.g
  %i.q = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %1, i32 noundef 577, i32 noundef 448) #11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !73
  %i.s = icmp eq i32 %i.q, -1
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.46, ptr noundef nonnull %1) #11
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !72
  tail call void @free(ptr noundef %i.t) #11
  br label %bb.al

bb.k:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.v = load i16, ptr %i.u, align 8, !tbaa !53
  %i.w = and i16 %i.v, 15                         ; 2 uses
  switch i16 %i.w, label %bb.aj [
    i16 0, label %bb.l
    i16 1, label %bb.o
    i16 2, label %bb.w
    i16 3, label %bb.ab
  ]

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = trunc i64 %i.y to i32
  %i.ab = tail call fastcc i32 @cab_unstore(ptr noundef %0, i32 noundef %i.aa, i8 noundef zeroext 0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = load i32, ptr %0, align 8, !tbaa !59
  %i.ad = tail call fastcc i32 @cab_unstore(ptr noundef %0, i32 noundef %i.ac, i8 noundef zeroext 1)
  br label %bb.ak

bb.o:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47) #11
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !56
  %i.af = load i32, ptr %i.r, align 8, !tbaa !73
  %i.ag = tail call ptr @mszip_init(i32 noundef %i.ae, i32 noundef %i.af, i32 noundef 4096, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull @cab_read) #11 ; 5 uses
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !72  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 38936
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !74
  %.not108 = icmp eq ptr %i.ag, null
  br i1 %.not108, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.ah) #11
  %i.aj = load i32, ptr %i.r, align 8, !tbaa !73
  %i.ak = tail call i32 @close(i32 noundef %i.aj) #11 ; 0 uses
  br label %bb.al

bb.q:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !61 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 0, ptr %i.ao, align 8, !tbaa !76
  %i.ap = tail call i32 @mszip_decompress(ptr noundef nonnull %i.ag, i64 noundef %i.am) #11
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 38936
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !74 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i8 1, ptr %i.at, align 8, !tbaa !76
  %i.au = icmp slt i32 %i.ap, 0
  br i1 %i.au, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  tail call void @mszip_free(ptr noundef nonnull %i.as) #11
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38952) %i.av, i8 0, i64 38952, i1 false)
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !56
  %i.ax = load i32, ptr %i.r, align 8, !tbaa !73
  %i.ay = tail call ptr @mszip_init(i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef 4096, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull @cab_read) #11 ; 2 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !72  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 38936
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !74
  %.not109.a = icmp eq ptr %i.ay, null
  br i1 %.not109.a, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.az) #11
  %i.bb = load i32, ptr %i.r, align 8, !tbaa !73
  %i.bc = tail call i32 @close(i32 noundef %i.bb) #11 ; 0 uses
  br label %bb.al

bb.u:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %i.e, align 4, !tbaa !56
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !51
  %i.bh = tail call i64 @lseek(i32 noundef %i.bd, i64 noundef %i.bg, i32 noundef 0) #11 ; 0 uses
  %.pre111 = load ptr, ptr %i.p, align 8, !tbaa !72
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %.pre111, i64 38936
  %.pre113 = load ptr, ptr %.phi.trans.insert112, align 8, !tbaa !74
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.q
  %i.bi = phi ptr [ %i.as, %bb.r ], [ %.pre113, %bb.u ], [ %i.ag, %bb.q ]
  %i.bj = load i32, ptr %0, align 8, !tbaa !59
  %i.bk = zext i32 %i.bj to i64
  %i.bl = tail call i32 @mszip_decompress(ptr noundef %i.bi, i64 noundef %i.bk) #11
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 38936
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !74
  tail call void @mszip_free(ptr noundef %i.bo) #11
  br label %bb.ak

bb.w:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48) #11
  %i.bp = load i32, ptr %i.e, align 4, !tbaa !56
  %i.bq = load i32, ptr %i.r, align 8, !tbaa !73
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !66
  %2 = load i16, ptr %i.br, align 8, !tbaa !53
  %3 = lshr i16 %2, 8
  %4 = and i16 %3, 31
  %i.bs = zext nneg i16 %4 to i32
  %i.bt = tail call ptr @qtm_init(i32 noundef %i.bp, i32 noundef %i.bq, i32 noundef %i.bs, i32 noundef 4096, ptr noundef nonnull %0, ptr noundef nonnull @cab_read) #11 ; 5 uses
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !72  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 38936
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !74
  %.not107.a = icmp eq ptr %i.bt, null
  br i1 %.not107.a, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.bu) #11
  %i.bw = load i32, ptr %i.r, align 8, !tbaa !73
  %i.bx = tail call i32 @close(i32 noundef %i.bw) #11 ; 0 uses
  br label %bb.al

bb.y:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !61 ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 0, ptr %i.cb, align 8, !tbaa !78
  %i.cc = tail call i32 @qtm_decompress(ptr noundef nonnull %i.bt, i64 noundef %i.bz) #11 ; 0 uses
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 38936
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !74 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 1, ptr %i.cg, align 8, !tbaa !78
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ch = phi ptr [ %i.cf, %bb.z ], [ %i.bt, %bb.y ]
  %i.ci = load i32, ptr %0, align 8, !tbaa !59
  %i.cj = zext i32 %i.ci to i64
  %i.ck = tail call i32 @qtm_decompress(ptr noundef nonnull %i.ch, i64 noundef %i.cj) #11
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 38936
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !74
  tail call void @qtm_free(ptr noundef %i.cn) #11
  br label %bb.ak

bb.ab:                                            ; preds = %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #11
  %i.co = load i32, ptr %i.e, align 4, !tbaa !56
  %i.cp = load i32, ptr %i.r, align 8, !tbaa !73
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !66
  %5 = load i16, ptr %i.cq, align 8, !tbaa !53
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 31
  %i.cr = zext nneg i16 %7 to i32
  %i.cs = tail call ptr @lzx_init(i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cr, i32 noundef 0, i32 noundef 4096, i64 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull @cab_read) #11 ; 5 uses
  %i.ct = load ptr, ptr %i.p, align 8, !tbaa !72  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 38936
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !74
  %.not105 = icmp eq ptr %i.cs, null
  br i1 %.not105, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @free(ptr noundef nonnull %i.ct) #11
  %i.cv = load i32, ptr %i.r, align 8, !tbaa !73
  %i.cw = tail call i32 @close(i32 noundef %i.cv) #11 ; 0 uses
  br label %bb.al

bb.ad:                                            ; preds = %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !61 ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, 0
  br i1 %i.cz, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 0, ptr %i.da, align 8, !tbaa !82
  %i.db = tail call i32 @lzx_decompress(ptr noundef nonnull %i.cs, i64 noundef %i.cy) #11
  %i.dc = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 38936
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !74 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i8 1, ptr %i.df, align 8, !tbaa !82
  %i.dg = icmp slt i32 %i.db, 0
  br i1 %i.dg, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  tail call void @lzx_free(ptr noundef nonnull %i.de) #11
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38952) %i.dh, i8 0, i64 38952, i1 false)
  %i.di = load i32, ptr %i.e, align 4, !tbaa !56
  %i.dj = load i32, ptr %i.r, align 8, !tbaa !73
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !66
  %8 = load i16, ptr %i.dk, align 8, !tbaa !53
  %9 = lshr i16 %8, 8
  %10 = and i16 %9, 31
  %i.dl = zext nneg i16 %10 to i32
  %i.dm = tail call ptr @lzx_init(i32 noundef %i.di, i32 noundef %i.dj, i32 noundef %i.dl, i32 noundef 0, i32 noundef 4096, i64 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull @cab_read) #11 ; 2 uses
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !72  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 38936
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !74
  %.not106 = icmp eq ptr %i.dm, null
  br i1 %.not106, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.dn) #11
  %i.dp = load i32, ptr %i.r, align 8, !tbaa !73
  %i.dq = tail call i32 @close(i32 noundef %i.dp) #11 ; 0 uses
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.dr = load i32, ptr %i.e, align 4, !tbaa !56
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !51
  %i.dv = tail call i64 @lseek(i32 noundef %i.dr, i64 noundef %i.du, i32 noundef 0) #11 ; 0 uses
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !72
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 38936
  %.pre110 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !74
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah, %bb.ad
  %i.dw = phi ptr [ %i.de, %bb.ae ], [ %.pre110, %bb.ah ], [ %i.cs, %bb.ad ]
  %i.dx = load i32, ptr %0, align 8, !tbaa !59
  %i.dy = zext i32 %i.dx to i64
  %i.dz = tail call i32 @lzx_decompress(ptr noundef %i.dw, i64 noundef %i.dy) #11
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 38936
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !74
  tail call void @lzx_free(ptr noundef %i.ec) #11
  br label %bb.ak

bb.aj:                                            ; preds = %bb.k
  %i.ed = zext nneg i16 %i.w to i32
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.50, i32 noundef %i.ed) #11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.aa, %bb.v, %bb.n
  %.0 = phi i32 [ -124, %bb.aj ], [ %i.ad, %bb.n ], [ %i.bl, %bb.v ], [ %i.ck, %bb.aa ], [ %i.dz, %bb.ai ]
  %i.ee = load ptr, ptr %i.p, align 8, !tbaa !72
  tail call void @free(ptr noundef %i.ee) #11
  %i.ef = load i32, ptr %i.r, align 8, !tbaa !73
  %i.eg = tail call i32 @close(i32 noundef %i.ef) #11 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag, %bb.ac, %bb.x, %bb.t, %bb.p, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.096 = phi i32 [ -123, %bb.f ], [ -123, %bb.j ], [ %.0, %bb.ak ], [ -109, %bb.t ], [ -109, %bb.p ], [ -109, %bb.x ], [ -109, %bb.ag ], [ -109, %bb.ac ], [ -123, %bb.h ], [ -111, %bb.d ], [ -111, %bb.b ]
  ret i32 %.096
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -124, 1) i32 @cab_unstore(ptr noundef nonnull captures(none) %0, i32 noundef %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 4097
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq i8 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.021.us = phi i32 [ %i.g, %bb.b ], [ %1, %.lr.ph ]
  %i.e = call i32 @cab_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4096)
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = add nsw i32 %.021.us, -4096              ; 3 uses
  %i.h = icmp ult i32 %i.g, 4097
  br i1 %i.h, label %._crit_edge, label %.lr.ph.split.us

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.53) #11
  br label %bb.k

._crit_edge:                                      ; preds = %bb.j, %bb.b, %.preheader
  %.0.lcssa = phi i32 [ %1, %.preheader ], [ %i.g, %bb.b ], [ %i.z, %bb.j ] ; 2 uses
  %i.i = call i32 @cab_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.0.lcssa)
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54, i32 noundef %i.l) #11
  br label %bb.k

bb.e:                                             ; preds = %._crit_edge
  %.not18 = icmp eq i8 %2, 0
  br i1 %.not18, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !73
  %i.o = call i32 @cli_writen(i32 noundef %i.n, ptr noundef nonnull %i.a, i32 noundef %.0.lcssa) #11
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.m, align 8, !tbaa !73
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55, i32 noundef %i.q) #11
  br label %bb.k

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.021 = phi i32 [ %i.z, %bb.j ], [ %1, %.lr.ph ]
  %i.r = call i32 @cab_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4096)
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %.split.us, label %bb.h

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !56
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54, i32 noundef %i.u) #11
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.split
  %i.v = load i32, ptr %i.d, align 8, !tbaa !73
  %i.w = call i32 @cli_writen(i32 noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 4096) #11
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %i.d, align 8, !tbaa !73
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55, i32 noundef %i.y) #11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = add nsw i32 %.021, -4096                 ; 3 uses
  %i.aa = icmp ult i32 %i.z, 4097
  br i1 %i.aa, label %._crit_edge, label %.lr.ph.split

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.i, %.split.us, %bb.g, %bb.d, %bb.c
  %.016 = phi i32 [ -124, %bb.c ], [ -123, %bb.d ], [ -123, %bb.g ], [ -123, %bb.i ], [ -123, %.split.us ], [ 0, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.016
}

declare ptr @mszip_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @cab_read(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.cab_block_hdr, align 4      ; 6 uses
  %i.a = trunc i32 %2 to i16                      ; 2 uses
  %i.b = and i32 %2, 65535                        ; 2 uses
  %.not56 = icmp eq i16 %i.a, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %i.j = phi i32 [ %i.b, %.lr.ph ], [ %i.cf, %bb.s ] ; 2 uses
  %.03658 = phi i16 [ %i.a, %.lr.ph ], [ %.1, %bb.s ] ; 6 uses
  %.03857 = phi ptr [ %1, %.lr.ph ], [ %.139, %bb.s ] ; 6 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !72   ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !84
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !85   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = trunc i64 %i.q to i16                    ; 2 uses
  %.not43 = icmp eq i16 %i.r, 0
  br i1 %.not43, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = trunc i64 %i.q to i32
  %i.t = and i32 %i.s, 65535
  %i.u = icmp samesign ugt i32 %i.t, %i.j
  %spec.select = select i1 %i.u, i16 %.03658, i16 %i.r ; 2 uses
  %i.v = zext i16 %spec.select to i64             ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03857, ptr align 1 %i.n, i64 %i.v, i1 false)
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.y, ptr %i.w, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %.03857, i64 %i.v
  %i.aa = sub i16 %.03658, %spec.select
  br label %bb.s
end_hunk_0
