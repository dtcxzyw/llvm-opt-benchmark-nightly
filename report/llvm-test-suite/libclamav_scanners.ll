inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_scanraw:bb.a

bb.k:                                             ; preds = %bb.j
  %i.s = load i32, ptr %i.n, align 8, !tbaa !29
  %i.t = trunc i32 %i.s to i1
  %or.cond3 = and i1 %i.m, %i.t
  br i1 %or.cond3, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !41
  %i.x = and i32 %i.w, 2
  %.not142 = icmp eq i32 %i.x, 0
  br i1 %.not142, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !53   ; 2 uses
  %.not143 = icmp eq i64 %i.z, 0
  br i1 %.not143, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = trunc i64 %i.z to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17, i32 noundef %i.aa) #9
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !53
  %i.ac = call fastcc i32 @cli_scanzip(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.ab, ptr noundef nonnull %i.b)
  br label %bb.ai

bb.o:                                             ; preds = %bb.j
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !29
  %i.ae = trunc i32 %i.ad to i1
  %or.cond5 = and i1 %i.m, %i.ae
  br i1 %or.cond5, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !41
  %i.ai = and i32 %i.ah, 32
  %.not141 = icmp eq i32 %i.ai, 0
  br i1 %.not141, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !53
  %i.al = trunc i64 %i.ak to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18, i32 noundef %i.al) #9
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !53
  %i.an = call fastcc i32 @cli_scanmscab(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.am)
  br label %bb.ai

bb.r:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.n, align 8, !tbaa !29
  %i.ap = trunc i32 %i.ao to i1
  %or.cond7 = and i1 %i.m, %i.ap
  br i1 %or.cond7, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41
  %i.at = and i32 %i.as, 4096
  %.not140 = icmp eq i32 %i.at, 0
  br i1 %.not140, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !53
  %i.aw = trunc i64 %i.av to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %i.aw) #9
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !53
  %i.ay = call fastcc i32 @cli_scanarj(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.ax)
  br label %bb.ai

bb.u:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.n, align 8, !tbaa !29
  %i.ba = trunc i32 %i.az to i1
  %or.cond9 = and i1 %i.m, %i.ba
  br i1 %or.cond9, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !41
  %i.be = and i32 %i.bd, 2048
  %.not139 = icmp eq i32 %i.be, 0
  br i1 %.not139, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !53 ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 4
  br i1 %i.bh, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.bi = trunc i64 %i.bg to i32
  %i.bj = add i32 %i.bi, -4
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, i32 noundef %i.bj) #9
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !53
  %i.bl = add nsw i64 %i.bk, -4
  %i.bm = call i32 @cli_scannulsft(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.bl) #9
  br label %bb.ai

bb.y:                                             ; preds = %bb.j
  %i.bn = load i32, ptr %i.n, align 8, !tbaa !29
  %i.bo = trunc i32 %i.bn to i1
  %or.cond11 = and i1 %i.m, %i.bo
  br i1 %or.cond11, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !41
  %i.bs = and i32 %i.br, 8192
  %.not138 = icmp eq i32 %i.bs, 0
  br i1 %.not138, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !53
  %i.bv = trunc i64 %i.bu to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %i.bv) #9
  %i.bw = load i64, ptr %i.bt, align 8, !tbaa !53
  %i.bx = add nsw i64 %i.bw, 23
  %i.by = call i32 @cli_scanautoit(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.bx) #9
  br label %bb.ai

bb.ab:                                            ; preds = %bb.j
  %i.bz = load i32, ptr %i.n, align 8, !tbaa !29
  %i.ca = and i32 %i.bz, 32
  %.not134 = icmp eq i32 %i.ca, 0
  br i1 %.not134, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !47
  %.not135 = icmp eq i32 %i.cc, 0
  br i1 %.not135, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !53 ; 2 uses
  %.not136 = icmp eq i64 %i.ce, 0
  br i1 %.not136, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = trunc i64 %i.ce to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.cf) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !53 ; 2 uses
  store i64 %i.cg, ptr %i.p, align 8, !tbaa !54
  %i.ch = call i64 @lseek(i32 noundef %0, i64 noundef %i.cg, i32 noundef 0) #9 ; 0 uses
  %i.ci = call i32 @cli_peheader(i32 noundef %0, ptr noundef nonnull %4) #9
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23) #9
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !57 ; 2 uses
  %.not137 = icmp eq ptr %i.cl, null
  br i1 %.not137, label %.thread153, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.cl) #9
  br label %.thread153

.thread153:                                       ; preds = %bb.af, %bb.ag
  %i.cm = load i64, ptr %i.cd, align 8, !tbaa !53
  %i.cn = call i64 @lseek(i32 noundef %0, i64 noundef %i.cm, i32 noundef 0) #9 ; 0 uses
  %i.co = call fastcc i32 @cli_scanembpe(i32 noundef %0, ptr noundef nonnull %1)
  br label %.thread151

bb.ah:                                            ; preds = %bb.j
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.24, i32 noundef %i.r) #9
  br label %.thread

bb.ai:                                            ; preds = %bb.aa, %bb.x, %bb.t, %bb.q, %bb.n
  %.2 = phi i32 [ %i.ay, %bb.t ], [ %i.an, %bb.q ], [ %i.ac, %bb.n ], [ %i.bm, %bb.x ], [ %i.by, %bb.aa ] ; 2 uses
  %i.cp = icmp eq i32 %.2, 1
  br i1 %i.cp, label %.thread151.thread202, label %.thread

.thread151:                                       ; preds = %.thread, %bb.i, %bb.g, %.thread153, %bb.h
  %.3 = phi i32 [ %i.k, %bb.g ], [ %i.co, %.thread153 ], [ 0, %bb.h ], [ 0, %bb.i ], [ %.2201, %.thread ] ; 6 uses
  %i.cq = icmp eq i32 %i.g, 529
  %.not144 = icmp eq i32 %.3, 1                   ; 2 uses
  br i1 %i.cq, label %bb.aj, label %.thread166

.thread151.thread202:                             ; preds = %bb.ai
  %i.cr = icmp eq i32 %i.g, 529
  br i1 %i.cr, label %.thread206, label %.thread166.thread209

.thread166.thread209:                             ; preds = %.thread151.thread202
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !36
  br label %.thread168

.thread206:                                       ; preds = %.thread151.thread202
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !37
  br label %.thread163

.thread151.thread:                                ; preds = %bb.g
  %i.cw = load ptr, ptr %1, align 8, !tbaa !30
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !31
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16, ptr noundef %i.cx, i32 noundef %0, i32 noundef %i.g) #9
  %i.cy = icmp eq i32 %i.g, 529
  br i1 %i.cy, label %.thread174, label %.thread166.thread

.thread166.thread:                                ; preds = %.thread151.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !36
  br label %.thread168

.thread174:                                       ; preds = %.thread151.thread
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !37
  br label %.thread163

bb.aj:                                            ; preds = %.thread151
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !37 ; 4 uses
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !37
  br i1 %.not144, label %.thread163, label %.thread179

.thread166:                                       ; preds = %.thread151
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !36 ; 5 uses
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !36
  br i1 %.not144, label %.thread168, label %bb.ak

bb.ak:                                            ; preds = %.thread166
  %cond = icmp eq i32 %i.g, 528
  br i1 %cond, label %bb.al, label %.thread168

bb.al:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !29
  %i.dl = and i32 %i.dk, 16
  %i.dm = icmp ne i32 %i.dl, 0
  %or.cond16 = and i1 %i.i, %i.dm
  br i1 %or.cond16, label %bb.am, label %.thread168

bb.am:                                            ; preds = %bb.al
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !43
  %i.dr = and i32 %i.dq, 1
  %.not146 = icmp eq i32 %i.dr, 0
  br i1 %.not146, label %.thread168, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = call fastcc i32 @cli_scanhtml(i32 noundef %0, ptr noundef nonnull %1)
  %.pre = load i32, ptr %i.dg, align 4, !tbaa !36
  %i.dt = add i32 %.pre, -1
  br label %.thread168

.thread179:                                       ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !29
  %i.dw = and i32 %i.dv, 2
  %i.dx = icmp ne i32 %i.dw, 0
  %or.cond18 = and i1 %i.i, %i.dx
  br i1 %or.cond18, label %bb.ao, label %.thread163

bb.ao:                                            ; preds = %.thread179
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !40
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !44
  %i.ec = and i32 %i.eb, 1
  %.not145 = icmp eq i32 %i.ec, 0
  br i1 %.not145, label %.thread163, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ed = call fastcc i32 @cli_scanmail(i32 noundef %0, ptr noundef nonnull %1)
  %.pre191 = load i32, ptr %i.dd, align 8, !tbaa !37
  %i.ee = add i32 %.pre191, -1
  br label %.thread163

.thread163:                                       ; preds = %.thread206, %bb.aj, %.thread174, %.thread179, %bb.ao, %bb.ap
  %5 = phi i32 [ %i.ee, %bb.ap ], [ %i.de, %.thread179 ], [ %i.de, %bb.ao ], [ %i.de, %bb.aj ], [ %i.dc, %.thread174 ], [ %i.cv, %.thread206 ]
  %.4165 = phi i32 [ %i.ed, %bb.ap ], [ %.3, %.thread179 ], [ %.3, %bb.ao ], [ 1, %bb.aj ], [ 1, %.thread174 ], [ 1, %.thread206 ]
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %5, ptr %6, align 8, !tbaa !37
  br label %bb.aq

.thread168:                                       ; preds = %.thread166.thread209, %bb.ak, %bb.al, %bb.am, %bb.an, %.thread166, %.thread166.thread
  %7 = phi i32 [ %i.dh, %.thread166 ], [ %i.dh, %bb.ak ], [ %i.da, %.thread166.thread ], [ %i.dh, %bb.al ], [ %i.dh, %bb.am ], [ %i.dt, %bb.an ], [ %i.ct, %.thread166.thread209 ]
  %.4160 = phi i32 [ 1, %.thread166 ], [ %.3, %bb.ak ], [ 1, %.thread166.thread ], [ %.3, %bb.al ], [ %.3, %bb.am ], [ %i.ds, %bb.an ], [ 1, %.thread166.thread209 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %7, ptr %i.ef, align 4, !tbaa !36
  br label %bb.aq

bb.aq:                                            ; preds = %.thread163, %.thread168, %bb.e
  %.0121 = phi i32 [ %i.g, %bb.e ], [ %.4160, %.thread168 ], [ %.4165, %.thread163 ] ; 2 uses
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %.not147188 = icmp eq ptr %i.eg, null
  br i1 %.not147188, label %._crit_edge, label %.lr.ph189

.lr.ph189:                                        ; preds = %bb.aq, %.lr.ph189
  %i.eh = phi ptr [ %i.ek, %.lr.ph189 ], [ %i.eg, %bb.aq ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !58
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !48
  call void @free(ptr noundef nonnull %i.eh) #9
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %.not147 = icmp eq ptr %i.ek, null
  br i1 %.not147, label %._crit_edge, label %.lr.ph189, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph189, %bb.aq
  %i.el = icmp eq i32 %.0121, 1
  br i1 %i.el, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge
  %i.em = load ptr, ptr %1, align 8, !tbaa !30
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !31
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, ptr noundef %i.en, i32 noundef %0) #9
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge, %bb.ar, %bb.d
  %.0122 = phi i32 [ -123, %bb.d ], [ 1, %bb.ar ], [ %.0121, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0122
}

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cli_scanzip(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.__zip_dirent, align 8       ; 12 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %5 = alloca %struct.stat, align 8               ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 -1, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30) #9
  %i.d = call ptr @zip_dir_open(i32 noundef %0, i64 noundef %2, ptr noundef nonnull %i.c) #9 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 4, !tbaa !4
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31, i32 noundef %i.f) #9
  br label %bb.bo

bb.c:                                             ; preds = %bb.a
  %i.g = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %5) #9 ; 0 uses
  %i.h = call ptr @cli_malloc(i64 noundef 8192) #9 ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %.preheader210

.preheader210:                                    ; preds = %bb.c
  %i.i = icmp ne ptr %3, null
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.outer.outer

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32, i32 noundef 8192) #9
  %i.u = call i32 @zip_dir_close(ptr noundef nonnull %i.d) #9 ; 0 uses
  br label %bb.bo

.lr.ph:                                           ; preds = %.outer, %.backedge
  %.0110279 = phi i32 [ %i.v, %.backedge ], [ %.0110.ph, %.outer ] ; 2 uses
  %i.v = add i32 %.0110279, 1                     ; 5 uses
  %i.w = icmp eq i32 %.0110279, 0
  %or.cond = and i1 %i.i, %i.w
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.x = load i32, ptr %3, align 4, !tbaa !4
  %i.y = load i32, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.loopexit211, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.y, ptr %3, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %.not148 = icmp eq ptr %i.aa, null
  br i1 %.not148, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #9
  %i.ab = load ptr, ptr %1, align 8, !tbaa !30
  store ptr @.str.34, ptr %i.ab, align 8, !tbaa !31
  br label %.loopexit211

bb.i:                                             ; preds = %bb.g
  %i.ac = load i16, ptr %i.l, align 4, !tbaa !63
  %i.ad = and i16 %i.ac, 8257
  %i.ae = icmp ne i16 %i.ad, 0                    ; 3 uses
  %i.af = zext i1 %i.ae to i32                    ; 2 uses
  %i.ag = load i32, ptr %i.j, align 8, !tbaa !60
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !64
  %i.ai = load i32, ptr %i.n, align 4, !tbaa !65  ; 3 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !66  ; 2 uses
  %i.ak = load i16, ptr %4, align 8, !tbaa !67
  %i.al = zext i16 %i.ak to i32
  %.not149 = icmp eq i32 %i.ai, 0
  br i1 %.not149, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = udiv i32 %i.aj, %i.ai
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.an = phi i32 [ %i.am, %bb.j ], [ 0, %bb.i ]
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !33  ; 2 uses
  %.not150 = icmp eq ptr %i.ao, null
  br i1 %.not150, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !68
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ar = phi i32 [ %i.aq, %bb.l ], [ 0, %bb.k ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.aa, i32 noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.af, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ar) #9
  %i.as = load i32, ptr %i.o, align 8, !tbaa !66  ; 5 uses
  %.not151 = icmp eq i32 %i.as, 0
  br i1 %.not151, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.at = load i32, ptr %i.j, align 8, !tbaa !60
  %.not152 = icmp eq i32 %i.at, 0
  br i1 %.not152, label %.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.36) #9
  %i.au = load ptr, ptr %1, align 8, !tbaa !30
  store ptr @.str.37, ptr %i.au, align 8, !tbaa !31
  br label %.loopexit211

bb.p:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !69 ; 2 uses
  %.not153 = icmp eq ptr %i.ax, null
  %.pre = load ptr, ptr %i.k, align 8             ; 5 uses
  br i1 %.not153, label %.loopexit209, label %.preheader208

.preheader208:                                    ; preds = %bb.p
  %i.ay = load i32, ptr %i.j, align 8
  %i.az = load i32, ptr %i.n, align 4
  %i.ba = load i16, ptr %4, align 8
  br label %bb.q

bb.q:                                             ; preds = %.preheader208, %bb.aa
  %.0106 = phi ptr [ %i.by, %bb.aa ], [ %i.ax, %.preheader208 ] ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0106, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !70
  %.not154 = icmp eq i32 %i.bc, %i.af
  br i1 %.not154, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.0106, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !73 ; 2 uses
  %.not155 = icmp eq i32 %i.be, 0
  %.not156 = icmp eq i32 %i.be, %i.ay
  %or.cond186 = select i1 %.not155, i1 true, i1 %.not156
  br i1 %or.cond186, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.bf = load i32, ptr %.0106, align 8, !tbaa !74 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 1
  %.not157 = icmp eq i32 %i.bf, %i.az
  %or.cond187 = select i1 %i.bg, i1 true, i1 %.not157
  br i1 %or.cond187, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %.0106, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !75 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
end_hunk_0
