Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/drvrnet?download=true
inline.NumInlined: 78
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@http_compress_open:bb.a
  %i.bz = or i128 %i.bv, %i.by
  %i.ca = icmp ne i128 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %.not44 = icmp eq i32 %i.cb, 0
  br i1 %.not44, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = load i128, ptr %i.c, align 16
  %i.cd = xor i128 %i.cc, 148059267151611579294171338674279575649
  %i.ce = getelementptr i8, ptr %i.c, i64 9
  %i.cf = load i128, ptr %i.ce, align 1
  %i.cg = xor i128 %i.cf, 521287356175558782900465927365553775
  %i.ch = or i128 %i.cd, %i.cg
  %i.ci = icmp ne i128 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = icmp eq i32 %i.u, 520093696
  %or.cond = or i1 %i.cl, %i.ck
  br i1 %or.cond, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %i.cm = load i8, ptr @netoutfile, align 16, !tbaa !17
  %i.cn = icmp eq i8 %i.cm, 33
  br i1 %i.cn, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.o
  %i.co = icmp sgt i32 %i.h, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cp = and i64 %i.g, 2147483647
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @netoutfile, ptr nonnull align 1 getelementptr inbounds nuw (i8, ptr @netoutfile, i64 1), i64 %i.cp, i1 false), !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %i.cq = call i32 @file_remove(ptr noundef nonnull @netoutfile) #24 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.o
  %i.cr = call i32 @file_create(ptr noundef nonnull @netoutfile, ptr noundef %2) #24
  %.not46 = icmp eq i32 %i.cr, 0
  br i1 %.not46, label %bb.q, label %.sink.split

bb.q:                                             ; preds = %bb.p
  %i.cs = load i32, ptr @closediskfile, align 4, !tbaa !12
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr @closediskfile, align 4, !tbaa !12
  %i.cu = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.cv = call i32 @alarm(i32 noundef %i.cu) #24  ; 0 uses
  %i.cw = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 1200, ptr noundef %i.s) ; 2 uses
  %.not4756 = icmp eq i64 %i.cw, 0
  br i1 %.not4756, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.q, %bb.r
  %i.cx = phi i64 [ %i.dd, %bb.r ], [ %i.cw, %bb.q ]
  %i.cy = call i32 @alarm(i32 noundef 0) #24      ; 0 uses
  %i.cz = load i32, ptr %2, align 4, !tbaa !12
  %i.da = call i32 @file_write(i32 noundef %i.cz, ptr noundef nonnull %i.e, i64 noundef %i.cx) #24
  %.not50 = icmp eq i32 %i.da, 0
  br i1 %.not50, label %bb.r, label %.sink.split

bb.r:                                             ; preds = %.lr.ph58
  %i.db = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.dc = call i32 @alarm(i32 noundef %i.db) #24  ; 0 uses
  %i.dd = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 1200, ptr noundef %i.s) ; 2 uses
  %.not47 = icmp eq i64 %i.dd, 0
  br i1 %.not47, label %._crit_edge59, label %.lr.ph58, !llvm.loop !28

._crit_edge59:                                    ; preds = %bb.r, %bb.q
  %i.de = load i32, ptr %2, align 4, !tbaa !12
  %i.df = call i32 @file_close(i32 noundef %i.de) #24 ; 0 uses
  %i.dg = call i32 @fclose(ptr noundef %i.s)      ; 0 uses
  %i.dh = load i32, ptr @closehttpfile, align 4, !tbaa !12
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr @closehttpfile, align 4, !tbaa !12
  %i.dj = load i32, ptr @closediskfile, align 4, !tbaa !12
  %i.dk = add nsw i32 %i.dj, -1
  store i32 %i.dk, ptr @closediskfile, align 4, !tbaa !12
  %i.dl = call noalias ptr @fopen(ptr noundef nonnull @netoutfile, ptr noundef nonnull @.str.27) ; 2 uses
  store ptr %i.dl, ptr @diskfile, align 8, !tbaa !15
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %._crit_edge59
  %i.dn = load i32, ptr @closefdiskfile, align 4, !tbaa !12
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr @closefdiskfile, align 4, !tbaa !12
  %i.dp = call i32 @mem_create(ptr noundef %0, ptr noundef nonnull %2) #24
  %.not48 = icmp eq i32 %i.dp, 0
  br i1 %.not48, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dq = load i32, ptr @closememfile, align 4, !tbaa !12
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr @closememfile, align 4, !tbaa !12
  %i.ds = load ptr, ptr @diskfile, align 8, !tbaa !15
  %i.dt = load i32, ptr %2, align 4, !tbaa !12
  %i.du = call i32 @mem_uncompress2mem(ptr noundef %0, ptr noundef %i.ds, i32 noundef %i.dt) #24
  %i.dv = load ptr, ptr @diskfile, align 8, !tbaa !15
  %i.dw = call i32 @fclose(ptr noundef %i.dv)     ; 0 uses
  %i.dx = load i32, ptr @closefdiskfile, align 4, !tbaa !12
  %i.dy = add nsw i32 %i.dx, -1
  store i32 %i.dy, ptr @closefdiskfile, align 4, !tbaa !12
  %.not49 = icmp eq i32 %i.du, 0
  br i1 %.not49, label %bb.u, label %.sink.split

bb.u:                                             ; preds = %bb.t
  %i.dz = call ptr @signal(i32 noundef 14, ptr noundef null) #24 ; 0 uses
  %i.ea = call i32 @alarm(i32 noundef 0) #24      ; 0 uses
  %i.eb = load i32, ptr %2, align 4, !tbaa !12
  %i.ec = call i32 @mem_seek(i32 noundef %i.eb, i64 noundef 0) #24
  br label %bb.ae

.sink.split:                                      ; preds = %.lr.ph58, %bb.t, %._crit_edge59, %bb.p, %bb.b, %bb.d, %bb.f
  %.str.30.sink = phi ptr [ @.str.28, %._crit_edge59 ], [ @.str.30, %bb.t ], [ @.str.25, %bb.p ], [ @.str.22, %bb.b ], [ @.str.24, %bb.f ], [ %i.d, %bb.d ], [ @.str.26, %.lr.ph58 ]
  %.str.31.sink.ph = phi ptr [ @netoutfile, %._crit_edge59 ], [ @netoutfile, %bb.t ], [ @netoutfile, %bb.p ], [ @.str.23, %bb.b ], [ %0, %bb.f ], [ @.str.5, %bb.d ], [ @netoutfile, %.lr.ph58 ]
  call void @ffpmsg(ptr noundef nonnull %.str.30.sink) #24
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.n, %bb.s, %bb.a
  %.str.31.sink = phi ptr [ @.str.29, %bb.s ], [ @.str.31, %bb.n ], [ @.str.21, %bb.a ], [ %.str.31.sink.ph, %.sink.split ]
  call void @ffpmsg(ptr noundef %.str.31.sink) #24
  %i.ed = call i32 @alarm(i32 noundef 0) #24      ; 0 uses
  %i.ee = load i32, ptr @closehttpfile, align 4, !tbaa !12
  %.not51 = icmp eq i32 %i.ee, 0
  br i1 %.not51, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.eg = call i32 @fclose(ptr noundef %i.ef)     ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.eh = load i32, ptr @closefdiskfile, align 4, !tbaa !12
  %.not52 = icmp eq i32 %i.eh, 0
  br i1 %.not52, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = load ptr, ptr @diskfile, align 8, !tbaa !15
  %i.ej = call i32 @fclose(ptr noundef %i.ei)     ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ek = load i32, ptr @closememfile, align 4, !tbaa !12
  %.not53 = icmp eq i32 %i.ek, 0
  br i1 %.not53, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.el = load i32, ptr %2, align 4, !tbaa !12
  %i.em = call i32 @mem_close_free(i32 noundef %i.el) #24 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.en = load i32, ptr @closediskfile, align 4, !tbaa !12
  %.not54 = icmp eq i32 %i.en, 0
  br i1 %.not54, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = load i32, ptr %2, align 4, !tbaa !12
  %i.ep = call i32 @file_close(i32 noundef %i.eo) #24 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eq = call ptr @signal(i32 noundef 14, ptr noundef null) #24 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.u
  %.026 = phi i32 [ 104, %bb.ad ], [ %i.ec, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.026
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @file_remove(ptr noundef) local_unnamed_addr #2

declare i32 @file_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @file_write(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @file_close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @http_file_open(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [100 x i8], align 16              ; 7 uses
  %i.c = alloca [100 x i8], align 16              ; 15 uses
  %i.d = alloca [1200 x i8], align 16             ; 6 uses
  %i.e = alloca [1200 x i8], align 16             ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %lhsv = load i32, ptr @netoutfile, align 16
  %.not = icmp eq i32 %lhsv, 980247917
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @http_open(ptr noundef %0, i32 noundef 0, ptr noundef %2)
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr @closehttpfile, align 4, !tbaa !12
  store i32 0, ptr @closefile, align 4, !tbaa !12
  store i32 0, ptr @closeoutfile, align 4, !tbaa !12
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @netoutfile) #26 ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @ffpmsg(ptr noundef nonnull @.str.33) #24
  br label %bb.am

bb.e:                                             ; preds = %bb.c
  %i.k = call i32 @_setjmp(ptr noundef nonnull @env) #25
  %.not31 = icmp eq i32 %i.k, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ffpmsg(ptr noundef nonnull @.str.2) #24
  %i.l = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1200, ptr noundef nonnull @.str.3, i32 noundef %i.l) #24 ; 0 uses
  call void @ffpmsg(ptr noundef nonnull %i.d) #24
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.n = call ptr @signal(i32 noundef 14, ptr noundef nonnull @signal_handler) #24 ; 0 uses
  %i.o = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.p = call i32 @alarm(i32 noundef %i.o) #24    ; 0 uses
  %i.q = call fastcc i32 @http_open_network(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.f, i32 noundef 0) ; 2 uses
  store i32 %i.q, ptr %i.g, align 4, !tbaa !12
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call i32 @alarm(i32 noundef 0) #24       ; 0 uses
  br label %bb.af

bb.i:                                             ; preds = %bb.g
  %i.s = load i32, ptr @closehttpfile, align 4, !tbaa !12
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr @closehttpfile, align 4, !tbaa !12
  %i.u = load i8, ptr @netoutfile, align 16, !tbaa !17
  %i.v = icmp eq i8 %i.u, 33
  br i1 %i.v, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.w = icmp sgt i32 %i.j, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.x = and i64 %i.i, 2147483647
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @netoutfile, ptr nonnull align 1 getelementptr inbounds nuw (i8, ptr @netoutfile, i64 1), i64 %i.x, i1 false), !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %i.y = call i32 @file_remove(ptr noundef nonnull @netoutfile) #24 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.aa = call i32 @fgetc(ptr noundef %i.z)
  %i.ab = shl i32 %i.aa, 24                       ; 2 uses
  %i.ac = ashr exact i32 %i.ab, 24
  %i.ad = call i32 @ungetc(i32 noundef %i.ac, ptr noundef %i.z) ; 0 uses
  %i.ae = load i32, ptr %i.b, align 16
  %i.af = xor i32 %i.ae, 2053582200
  %i.ag = getelementptr i8, ptr %i.b, i64 3
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = xor i32 %i.ah, 7367034
  %i.aj = or i32 %i.af, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %.not33 = icmp eq i32 %i.al, 0
  br i1 %.not33, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load i64, ptr %i.b, align 16
  %i.an = xor i64 %i.am, 7310028760498253176
  %i.ao = getelementptr i8, ptr %i.b, i64 3
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = xor i64 %i.ap, 32496501870587247
  %i.ar = or i64 %i.an, %i.aq
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %.not35 = icmp eq i32 %i.at, 0
  br i1 %.not35, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load i128, ptr %i.c, align 16
  %i.av = xor i128 %i.au, 162701544292679793206627338322680246369
  %i.aw = getelementptr i8, ptr %i.c, i64 3
  %i.ax = load i128, ptr %i.aw, align 1
  %i.ay = xor i128 %i.ax, 583676598932036092452927691066403180
  %i.az = or i128 %i.av, %i.ay
  %i.ba = icmp ne i128 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not37 = icmp eq i32 %i.bb, 0
  br i1 %.not37, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load i128, ptr %i.c, align 16
  %i.bd = xor i128 %i.bc, 149421209327208422568975233560637108321
  %i.be = getelementptr i8, ptr %i.c, i64 16
  %i.bf = load i8, ptr %i.be, align 16
  %i.bg = zext i8 %i.bf to i128
  %i.bh = or i128 %i.bd, %i.bg
  %i.bi = icmp ne i128 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not39 = icmp eq i32 %i.bj, 0
  br i1 %.not39, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load i128, ptr %i.c, align 16
  %i.bl = xor i128 %i.bk, 149421209327208422568975233560637108321
  %i.bm = getelementptr i8, ptr %i.c, i64 12
  %i.bn = load i128, ptr %i.bm, align 4
  %i.bo = xor i128 %i.bn, 521287356175558782900465927235140199
  %i.bp = or i128 %i.bl, %i.bo
  %i.bq = icmp ne i128 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %.not41 = icmp eq i32 %i.br, 0
  br i1 %.not41, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load i128, ptr %i.c, align 16
  %i.bt = xor i128 %i.bs, 149421209327208422568975233560637108321
  %i.bu = getelementptr i8, ptr %i.c, i64 16
  %i.bv = load i32, ptr %i.bu, align 16
  %i.bw = zext i32 %i.bv to i128
  %i.bx = xor i128 %i.bw, 6579568
  %i.by = or i128 %i.bt, %i.bx
  %i.bz = icmp ne i128 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %.not43 = icmp eq i32 %i.ca, 0
  br i1 %.not43, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = load i128, ptr %i.c, align 16
  %i.cc = xor i128 %i.cb, 148059267151611579294171338674279575649
  %i.cd = getelementptr i8, ptr %i.c, i64 7
  %i.ce = load i128, ptr %i.cd, align 1
  %i.cf = xor i128 %i.ce, 599454653297546664189759563796277620
  %i.cg = or i128 %i.cc, %i.cf
  %i.ch = icmp ne i128 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %.not45 = icmp eq i32 %i.ci, 0
  br i1 %.not45, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load i128, ptr %i.c, align 16
  %i.ck = xor i128 %i.cj, 148059267151611579294171338674279575649
  %i.cl = getelementptr i8, ptr %i.c, i64 9
  %i.cm = load i128, ptr %i.cl, align 1
  %i.cn = xor i128 %i.cm, 521287356175558782900465927365553775
  %i.co = or i128 %i.ck, %i.cn
  %i.cp = icmp ne i128 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = icmp eq i32 %i.ab, 520093696
  %or.cond = or i1 %i.cs, %i.cr
  br i1 %or.cond, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ct = call i32 @file_create(ptr noundef nonnull @netoutfile, ptr noundef %2) #24 ; 2 uses
  store i32 %i.ct, ptr %i.g, align 4, !tbaa !12
  %.not51 = icmp eq i32 %i.ct, 0
  br i1 %.not51, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  %i.cu = load i32, ptr %2, align 4, !tbaa !12
  %i.cv = call i32 @file_close(i32 noundef %i.cu) #24 ; 0 uses
  %i.cw = call noalias ptr @fopen(ptr noundef nonnull @netoutfile, ptr noundef nonnull @.str.36) ; 2 uses
  store ptr %i.cw, ptr @outfile, align 8, !tbaa !15
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.af, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = load i32, ptr @closeoutfile, align 4, !tbaa !12
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr @closeoutfile, align 4, !tbaa !12
  store i32 0, ptr %i.g, align 4, !tbaa !12
  %i.da = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.db = mul i32 %i.da, 10
  %i.dc = call i32 @alarm(i32 noundef %i.db) #24  ; 0 uses
  %i.dd = load ptr, ptr @outfile, align 8, !tbaa !15
  %i.de = call i32 @uncompress2file(ptr noundef %0, ptr noundef %i.z, ptr noundef %i.dd, ptr noundef nonnull %i.g) #24
  store i32 %i.de, ptr %i.g, align 4, !tbaa !12
  %i.df = call i32 @alarm(i32 noundef 0) #24      ; 0 uses
  %i.dg = load i32, ptr %i.g, align 4, !tbaa !12
  %.not52 = icmp eq i32 %i.dg, 0
  br i1 %.not52, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @ffpmsg(ptr noundef nonnull @.str.38) #24
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.dh = load ptr, ptr @outfile, align 8, !tbaa !15
  %i.di = call i32 @fclose(ptr noundef %i.dh)     ; 0 uses
  br label %bb.ae

bb.w:                                             ; preds = %bb.q
  %i.dj = call i32 @file_create(ptr noundef nonnull @netoutfile, ptr noundef %2) #24 ; 2 uses
  store i32 %i.dj, ptr %i.g, align 4, !tbaa !12
  %.not47 = icmp eq i32 %i.dj, 0
  br i1 %.not47, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.dk = load i32, ptr @closefile, align 4, !tbaa !12
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr @closefile, align 4, !tbaa !12
  %i.dm = load i32, ptr %i.f, align 4, !tbaa !12  ; 2 uses
  %i.dn = srem i32 %i.dm, 2880
  %.not48 = icmp eq i32 %i.dn, 0
  br i1 %.not48, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1200, ptr noundef nonnull @.str.39, i32 noundef %i.dm) #24 ; 0 uses
  call void @ffpmsg(ptr noundef nonnull %i.d) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dp = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.dq = call i32 @alarm(i32 noundef %i.dp) #24  ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.dr = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 1200, ptr noundef %i.z) ; 2 uses
  %.not49 = icmp eq i64 %i.dr, 0
  br i1 %.not49, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = call i32 @alarm(i32 noundef 0) #24      ; 0 uses
  %i.dt = load i32, ptr %2, align 4, !tbaa !12
  %i.du = call i32 @file_write(i32 noundef %i.dt, ptr noundef nonnull %i.e, i64 noundef %i.dr) #24 ; 2 uses
  store i32 %i.du, ptr %i.g, align 4, !tbaa !12
  %.not50 = icmp eq i32 %i.du, 0
  br i1 %.not50, label %bb.aa, label %bb.ac, !llvm.loop !29

bb.ac:                                            ; preds = %bb.ab
  call void @ffpmsg(ptr noundef nonnull @.str.40) #24
  br label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.dv = load i32, ptr %2, align 4, !tbaa !12
  %i.dw = call i32 @file_close(i32 noundef %i.dv) #24 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.v
  %closefile.sink60 = phi ptr [ @closefile, %bb.ad ], [ @closeoutfile, %bb.v ] ; 2 uses
  %i.dx = load i32, ptr %closefile.sink60, align 4, !tbaa !12
  %i.dy = add nsw i32 %i.dx, -1
  store i32 %i.dy, ptr %closefile.sink60, align 4, !tbaa !12
  %i.dz = call i32 @fclose(ptr noundef %i.z)      ; 0 uses
  %i.ea = load i32, ptr @closehttpfile, align 4, !tbaa !12
  %i.eb = add nsw i32 %i.ea, -1
end_hunk_0
begin_hunk_1_@ftp_open_network:bb.a
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = call i64 @send(i32 noundef %i.jv, ptr noundef nonnull %i.jy, i64 noundef %i.ka, i32 noundef 0) #24
  %i.kc = trunc i64 %i.kb to i32                  ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  %i.ke = add nuw nsw i32 %.020.i207, %i.kc       ; 2 uses
  %i.kf = icmp slt i32 %i.ke, 6
  %or.cond267 = select i1 %i.kd, i1 %i.kf, i1 false
  br i1 %or.cond267, label %.lr.ph.i206, label %NET_SendRaw.exit144, !llvm.loop !0

bb.at:                                            ; preds = %bb.ar
  %i.kg = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.js, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.a) #24 ; 0 uses
  %i.kh = load i32, ptr %i.a, align 4, !tbaa !12
  %i.ki = load i32, ptr %i.l, align 4, !tbaa !12
  %i.kj = add nsw i32 %i.ki, %i.kh                ; 2 uses
  store i32 %i.kj, ptr %i.l, align 4, !tbaa !12
  %char0132 = load i8, ptr %.094, align 1
  %.not133 = icmp eq i8 %char0132, 0
  br i1 %.not133, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @ffpmsg(ptr noundef nonnull @.str.190) #24
  %i.kk = load ptr, ptr %2, align 8, !tbaa !15
  %i.kl = call i32 @fclose(ptr noundef %i.kk)     ; 0 uses
  %i.km = load i32, ptr %3, align 4, !tbaa !12    ; 2 uses
  %i.kn = icmp slt i32 %i.km, 0
  br i1 %i.kn, label %NET_SendRaw.exit144, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %bb.au, %.lr.ph.i211
  %.020.i212 = phi i32 [ %i.kv, %.lr.ph.i211 ], [ 0, %bb.au ] ; 3 uses
  %i.ko = zext nneg i32 %.020.i212 to i64
  %i.kp = getelementptr inbounds nuw i8, ptr @.str.91, i64 %i.ko
  %i.kq = sub nsw i32 6, %.020.i212
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = call i64 @send(i32 noundef %i.km, ptr noundef nonnull %i.kp, i64 noundef %i.kr, i32 noundef 0) #24
  %i.kt = trunc i64 %i.ks to i32                  ; 2 uses
  %i.ku = icmp sgt i32 %i.kt, 0
  %i.kv = add nuw nsw i32 %.020.i212, %i.kt       ; 2 uses
  %i.kw = icmp slt i32 %i.kv, 6
  %or.cond269 = select i1 %i.ku, i1 %i.kw, i1 false
  br i1 %or.cond269, label %.lr.ph.i211, label %NET_SendRaw.exit144, !llvm.loop !0

bb.av:                                            ; preds = %bb.at
  %i.kx = call fastcc i32 @NET_TcpConnect(ptr noundef %i.j, i32 noundef %i.kj) ; 3 uses
  %i.ky = call noalias ptr @fdopen(i32 noundef %i.kx, ptr noundef nonnull @.str.27) #24 ; 2 uses
  store ptr %i.ky, ptr %1, align 8, !tbaa !15
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @ffpmsg(ptr noundef nonnull @.str.191) #24
  %i.la = load ptr, ptr %2, align 8, !tbaa !15
  %i.lb = call i32 @fclose(ptr noundef %i.la)     ; 0 uses
  %i.lc = load i32, ptr %3, align 4, !tbaa !12    ; 2 uses
  %i.ld = icmp slt i32 %i.lc, 0
  br i1 %i.ld, label %NET_SendRaw.exit144, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %bb.aw, %.lr.ph.i216
  %.020.i217 = phi i32 [ %i.ll, %.lr.ph.i216 ], [ 0, %bb.aw ] ; 3 uses
  %i.le = zext nneg i32 %.020.i217 to i64
  %i.lf = getelementptr inbounds nuw i8, ptr @.str.91, i64 %i.le
  %i.lg = sub nsw i32 6, %.020.i217
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = call i64 @send(i32 noundef %i.lc, ptr noundef nonnull %i.lf, i64 noundef %i.lh, i32 noundef 0) #24
  %i.lj = trunc i64 %i.li to i32                  ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  %i.ll = add nuw nsw i32 %.020.i217, %i.lj       ; 2 uses
  %i.lm = icmp slt i32 %i.ll, 6
  %or.cond271 = select i1 %i.lk, i1 %i.lm, i1 false
  br i1 %or.cond271, label %.lr.ph.i216, label %NET_SendRaw.exit144, !llvm.loop !0

bb.ax:                                            ; preds = %bb.av
  %i.ln = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1200, ptr noundef nonnull @.str.192, ptr noundef nonnull %.094) #24 ; 0 uses
  %i.lo = load i32, ptr %3, align 4, !tbaa !12
  %i.lp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = call fastcc i32 @NET_SendRaw(i32 noundef %i.lo, ptr noundef nonnull %i.d, i32 noundef %i.lq) ; 0 uses
  %i.ls = load ptr, ptr %2, align 8, !tbaa !15
  %i.lt = call fastcc i32 @ftp_status(ptr noundef %i.ls, ptr noundef nonnull @.str.193)
  %.not134 = icmp eq i32 %i.lt, 0
  br i1 %.not134, label %NET_SendRaw.exit144, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lu = load ptr, ptr %1, align 8, !tbaa !15
  %i.lv = call i32 @fclose(ptr noundef %i.lu)     ; 0 uses
  %i.lw = icmp slt i32 %i.kx, 0
  br i1 %i.lw, label %NET_SendRaw.exit224, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %bb.ay, %.lr.ph.i221
  %.020.i222 = phi i32 [ %i.me, %.lr.ph.i221 ], [ 0, %bb.ay ] ; 3 uses
  %i.lx = zext nneg i32 %.020.i222 to i64
  %i.ly = getelementptr inbounds nuw i8, ptr @.str.91, i64 %i.lx
  %i.lz = sub nsw i32 6, %.020.i222
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = call i64 @send(i32 noundef %i.kx, ptr noundef nonnull %i.ly, i64 noundef %i.ma, i32 noundef 0) #24
  %i.mc = trunc i64 %i.mb to i32                  ; 2 uses
  %i.md = icmp sgt i32 %i.mc, 0
  %i.me = add nuw nsw i32 %.020.i222, %i.mc       ; 2 uses
  %i.mf = icmp slt i32 %i.me, 6
  %or.cond273 = select i1 %i.md, i1 %i.mf, i1 false
  br i1 %or.cond273, label %.lr.ph.i221, label %NET_SendRaw.exit224, !llvm.loop !0

NET_SendRaw.exit224:                              ; preds = %.lr.ph.i221, %bb.ay
  %i.mg = load ptr, ptr %2, align 8, !tbaa !15
  %i.mh = call i32 @fclose(ptr noundef %i.mg)     ; 0 uses
  %i.mi = load i32, ptr %3, align 4, !tbaa !12    ; 2 uses
  %i.mj = icmp slt i32 %i.mi, 0
  br i1 %i.mj, label %NET_SendRaw.exit144, label %.lr.ph.i226

.lr.ph.i226:                                      ; preds = %NET_SendRaw.exit224, %.lr.ph.i226
  %.020.i227 = phi i32 [ %i.mr, %.lr.ph.i226 ], [ 0, %NET_SendRaw.exit224 ] ; 3 uses
  %i.mk = zext nneg i32 %.020.i227 to i64
  %i.ml = getelementptr inbounds nuw i8, ptr @.str.91, i64 %i.mk
  %i.mm = sub nsw i32 6, %.020.i227
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = call i64 @send(i32 noundef %i.mi, ptr noundef nonnull %i.ml, i64 noundef %i.mn, i32 noundef 0) #24
  %i.mp = trunc i64 %i.mo to i32                  ; 2 uses
  %i.mq = icmp sgt i32 %i.mp, 0
  %i.mr = add nuw nsw i32 %.020.i227, %i.mp       ; 2 uses
  %i.ms = icmp slt i32 %i.mr, 6
  %or.cond275 = select i1 %i.mq, i1 %i.ms, i1 false
  br i1 %or.cond275, label %.lr.ph.i226, label %NET_SendRaw.exit144, !llvm.loop !0

bb.az:                                            ; preds = %bb.ae
  %i.mt = load ptr, ptr %2, align 8, !tbaa !15
  %i.mu = call i32 @fclose(ptr noundef %i.mt)     ; 0 uses
  %i.mv = load i32, ptr %3, align 4, !tbaa !12    ; 2 uses
  %i.mw = icmp slt i32 %i.mv, 0
  br i1 %i.mw, label %NET_SendRaw.exit144, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %bb.az, %.lr.ph.i231
  %.020.i232 = phi i32 [ %i.ne, %.lr.ph.i231 ], [ 0, %bb.az ] ; 3 uses
  %i.mx = zext nneg i32 %.020.i232 to i64
  %i.my = getelementptr inbounds nuw i8, ptr @.str.91, i64 %i.mx
  %i.mz = sub nsw i32 6, %.020.i232
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = call i64 @send(i32 noundef %i.mv, ptr noundef nonnull %i.my, i64 noundef %i.na, i32 noundef 0) #24
  %i.nc = trunc i64 %i.nb to i32                  ; 2 uses
  %i.nd = icmp sgt i32 %i.nc, 0
  %i.ne = add nuw nsw i32 %.020.i232, %i.nc       ; 2 uses
  %i.nf = icmp slt i32 %i.ne, 6
  %or.cond277 = select i1 %i.nd, i1 %i.nf, i1 false
  br i1 %or.cond277, label %.lr.ph.i231, label %NET_SendRaw.exit144, !llvm.loop !0

NET_SendRaw.exit144:                              ; preds = %.lr.ph.i141, %.lr.ph.i146, %.lr.ph.i151, %.lr.ph.i161, %.lr.ph.i231, %.lr.ph.i226, %.lr.ph.i216, %.lr.ph.i211, %.lr.ph.i206, %.lr.ph.i201, %.lr.ph.i196, %.lr.ph.i191, %.lr.ph.i186, %.lr.ph.i181, %.lr.ph.i176, %.lr.ph.i171, %.lr.ph.i156, %bb.az, %NET_SendRaw.exit224, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.p, %bb.n, %bb.ax, %.critedge, %bb.j, %bb.d, %bb.b
  %.098 = phi i32 [ 104, %bb.b ], [ 104, %bb.d ], [ 104, %bb.j ], [ 104, %.critedge ], [ 0, %bb.ax ], [ 104, %bb.am ], [ 104, %.lr.ph.i176 ], [ 104, %.lr.ph.i171 ], [ 104, %.lr.ph.i231 ], [ 104, %bb.ao ], [ 104, %bb.az ], [ 104, %bb.aq ], [ 104, %.lr.ph.i161 ], [ 104, %bb.as ], [ 104, %.lr.ph.i151 ], [ 104, %bb.au ], [ 104, %.lr.ph.i146 ], [ 104, %bb.aw ], [ 104, %.lr.ph.i156 ], [ 104, %.lr.ph.i226 ], [ 104, %NET_SendRaw.exit224 ], [ 104, %bb.n ], [ 104, %.lr.ph.i196 ], [ 104, %bb.p ], [ 104, %.lr.ph.i191 ], [ 104, %bb.x ], [ 104, %.lr.ph.i186 ], [ 104, %bb.z ], [ 104, %.lr.ph.i216 ], [ 104, %bb.ab ], [ 104, %.lr.ph.i181 ], [ 104, %bb.ad ], [ 104, %.lr.ph.i201 ], [ 104, %bb.ag ], [ 104, %.lr.ph.i206 ], [ 104, %bb.ai ], [ 104, %.lr.ph.i211 ], [ 104, %bb.ak ], [ 104, %.lr.ph.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.098
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @NET_SendRaw(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.020 = phi i32 [ %i.j, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %i.c = zext nneg i32 %.020 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = sub nsw i32 %2, %.020
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call i64 @send(i32 noundef %0, ptr noundef %i.d, i64 noundef %i.f, i32 noundef 0) #24
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i32 %.020, %i.h              ; 3 uses
  %i.k = icmp slt i32 %i.j, %2
  br i1 %i.k, label %.lr.ph, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.016 = phi i32 [ -1, %bb.a ], [ 0, %.preheader ], [ %i.h, %.lr.ph ], [ %i.j, %bb.b ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ftp_file_open(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [1200 x i8], align 16             ; 4 uses
  %i.d = alloca [1200 x i8], align 16             ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %lhsv = load i32, ptr @netoutfile, align 16
  %.not = icmp eq i32 %lhsv, 980247917
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @ftp_open(ptr noundef %0, i32 noundef 0, ptr noundef %2)
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr @closeftpfile, align 4, !tbaa !12
  store i32 0, ptr @closecommandfile, align 4, !tbaa !12
  store i32 0, ptr @closefile, align 4, !tbaa !12
  store i32 0, ptr @closeoutfile, align 4, !tbaa !12
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @netoutfile) #26 ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @ffpmsg(ptr noundef nonnull @.str.92) #24
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.j = call i32 @_setjmp(ptr noundef nonnull @env) #25
  %.not33 = icmp eq i32 %i.j, 0
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ffpmsg(ptr noundef nonnull @.str.93) #24
  %i.k = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1200, ptr noundef nonnull @.str.3, i32 noundef %i.k) #24 ; 0 uses
  call void @ffpmsg(ptr noundef nonnull %i.c) #24
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.m = call ptr @signal(i32 noundef 14, ptr noundef nonnull @signal_handler) #24 ; 0 uses
  %i.n = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.o = call i32 @alarm(i32 noundef %i.n) #24    ; 0 uses
  %i.p = call fastcc i32 @ftp_open_network(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.e) ; 2 uses
  store i32 %i.p, ptr %i.f, align 4, !tbaa !12
  %.not34 = icmp eq i32 %i.p, 0
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = call i32 @alarm(i32 noundef 0) #24       ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.r = load i32, ptr @closeftpfile, align 4, !tbaa !12
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr @closeftpfile, align 4, !tbaa !12
  %i.t = load i32, ptr @closecommandfile, align 4, !tbaa !12
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr @closecommandfile, align 4, !tbaa !12
  %i.v = load i8, ptr @netoutfile, align 16, !tbaa !17
  %i.w = icmp eq i8 %i.v, 33
  br i1 %i.w, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.x = icmp sgt i32 %i.i, 0
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.y = and i64 %i.h, 2147483647
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @netoutfile, ptr nonnull align 1 getelementptr inbounds nuw (i8, ptr @netoutfile, i64 1), i64 %i.y, i1 false), !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %i.z = call i32 @file_remove(ptr noundef nonnull @netoutfile) #24 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !15  ; 6 uses
  %i.ab = call i32 @fgetc(ptr noundef %i.aa)
  %i.ac = shl i32 %i.ab, 24                       ; 2 uses
  %i.ad = ashr exact i32 %i.ac, 24
  %i.ae = call i32 @ungetc(i32 noundef %i.ad, ptr noundef %i.aa) ; 0 uses
  %i.af = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.16) #26
  %.not35 = icmp eq ptr %i.af, null
  br i1 %.not35, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.17) #26
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = icmp eq i32 %i.ac, 520093696
  %or.cond = or i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = call i32 @file_create(ptr noundef nonnull @netoutfile, ptr noundef %2) #24 ; 2 uses
  store i32 %i.aj, ptr %i.f, align 4, !tbaa !12
  %.not39 = icmp eq i32 %i.aj, 0
  br i1 %.not39, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr %2, align 4, !tbaa !12
  %i.al = call i32 @file_close(i32 noundef %i.ak) #24 ; 0 uses
  %i.am = call noalias ptr @fopen(ptr noundef nonnull @netoutfile, ptr noundef nonnull @.str.36) ; 2 uses
  store ptr %i.am, ptr @outfile, align 8, !tbaa !15
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i32, ptr @closeoutfile, align 4, !tbaa !12
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr @closeoutfile, align 4, !tbaa !12
  store i32 0, ptr %i.f, align 4, !tbaa !12
  %i.aq = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.ar = mul i32 %i.aq, 10
  %i.as = call i32 @alarm(i32 noundef %i.ar) #24  ; 0 uses
  %i.at = load ptr, ptr @outfile, align 8, !tbaa !15
  %i.au = call i32 @uncompress2file(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef %i.at, ptr noundef nonnull %i.f) #24
  store i32 %i.au, ptr %i.f, align 4, !tbaa !12
  %i.av = call i32 @alarm(i32 noundef 0) #24      ; 0 uses
  %i.aw = load i32, ptr %i.f, align 4, !tbaa !12
  %.not40 = icmp eq i32 %i.aw, 0
  br i1 %.not40, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ffpmsg(ptr noundef nonnull @.str.97) #24
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr @outfile, align 8, !tbaa !15
  %i.ay = call i32 @fclose(ptr noundef %i.ax)     ; 0 uses
  %i.az = load i32, ptr @closeoutfile, align 4, !tbaa !12
  %i.ba = add nsw i32 %i.az, -1
  store i32 %i.ba, ptr @closeoutfile, align 4, !tbaa !12
  br label %bb.u

bb.q:                                             ; preds = %bb.k
  %i.bb = call i32 @file_create(ptr noundef nonnull @netoutfile, ptr noundef %2) #24 ; 2 uses
  store i32 %i.bb, ptr %i.f, align 4, !tbaa !12
  %.not36 = icmp eq i32 %i.bb, 0
  br i1 %.not36, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bc = load i32, ptr @closefile, align 4, !tbaa !12
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr @closefile, align 4, !tbaa !12
  %i.be = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.bf = call i32 @alarm(i32 noundef %i.be) #24  ; 0 uses
  %i.bg = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 1200, ptr noundef %i.aa) ; 2 uses
  %.not3755 = icmp eq i64 %i.bg, 0
  br i1 %.not3755, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.r, %bb.t
  %i.bh = phi i64 [ %i.bn, %bb.t ], [ %i.bg, %bb.r ]
  %i.bi = call i32 @alarm(i32 noundef 0) #24      ; 0 uses
  %i.bj = load i32, ptr %2, align 4, !tbaa !12
  %i.bk = call i32 @file_write(i32 noundef %i.bj, ptr noundef nonnull %i.d, i64 noundef %i.bh) #24 ; 2 uses
  store i32 %i.bk, ptr %i.f, align 4, !tbaa !12
  %.not38 = icmp eq i32 %i.bk, 0
  br i1 %.not38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph57
  call void @ffpmsg(ptr noundef nonnull @.str.98) #24
  br label %bb.v

bb.t:                                             ; preds = %.lr.ph57
  %i.bl = load i32, ptr @net_timeout, align 4, !tbaa !12
  %i.bm = call i32 @alarm(i32 noundef %i.bl) #24  ; 0 uses
  %i.bn = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 1200, ptr noundef %i.aa) ; 2 uses
  %.not37 = icmp eq i64 %i.bn, 0
  br i1 %.not37, label %._crit_edge58, label %.lr.ph57, !llvm.loop !33

._crit_edge58:                                    ; preds = %bb.t, %bb.r
  %i.bo = load i32, ptr %2, align 4, !tbaa !12
  %i.bp = call i32 @file_close(i32 noundef %i.bo) #24 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge58, %bb.p
  %i.bq = call i32 @fclose(ptr noundef %i.aa)     ; 0 uses
  %i.br = load i32, ptr @closeftpfile, align 4, !tbaa !12
  %i.bs = add nsw i32 %i.br, -1
  store i32 %i.bs, ptr @closeftpfile, align 4, !tbaa !12
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.bu = call i32 @fclose(ptr noundef %i.bt)     ; 0 uses
  %i.bv = load i32, ptr %i.e, align 4, !tbaa !12  ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %NET_SendRaw.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.i
  %.020.i = phi i32 [ %i.ce, %.lr.ph.i ], [ 0, %bb.u ] ; 3 uses
  %i.bx = zext nneg i32 %.020.i to i64
  %i.by = getelementptr inbounds nuw i8, ptr @.str.91, i64 %i.bx
  %i.bz = sub nsw i32 6, %.020.i
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = call i64 @send(i32 noundef %i.bv, ptr noundef nonnull %i.by, i64 noundef %i.ca, i32 noundef 0) #24
  %i.cc = trunc i64 %i.cb to i32                  ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  %i.ce = add nuw nsw i32 %.020.i, %i.cc          ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 6
  %or.cond51 = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %or.cond51, label %.lr.ph.i, label %NET_SendRaw.exit, !llvm.loop !0

NET_SendRaw.exit:                                 ; preds = %.lr.ph.i, %bb.u
  %i.cg = load i32, ptr @closecommandfile, align 4, !tbaa !12
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr @closecommandfile, align 4, !tbaa !12
  %i.ci = call ptr @signal(i32 noundef 14, ptr noundef null) #24 ; 0 uses
  %i.cj = call i32 @alarm(i32 noundef 0) #24      ; 0 uses
  %i.ck = call i32 @file_open(ptr noundef nonnull @netoutfile, i32 noundef %1, ptr noundef nonnull %2) #24
  br label %bb.ad

bb.v:                                             ; preds = %bb.q, %bb.m, %bb.l, %bb.s, %bb.o, %bb.h, %bb.f
  %.sink = phi ptr [ %0, %bb.s ], [ @.str.96, %bb.m ], [ %0, %bb.o ], [ @.str.95, %bb.l ], [ @.str.4, %bb.f ], [ @.str.94, %bb.h ], [ @.str.95, %bb.q ]
  %netoutfile.sink = phi ptr [ @netoutfile, %bb.s ], [ @netoutfile, %bb.m ], [ @netoutfile, %bb.o ], [ @netoutfile, %bb.l ], [ @.str.5, %bb.f ], [ %0, %bb.h ], [ @netoutfile, %bb.q ]
  call void @ffpmsg(ptr noundef nonnull %.sink) #24
  call void @ffpmsg(ptr noundef %netoutfile.sink) #24
  %i.cl = call i32 @alarm(i32 noundef 0) #24      ; 0 uses
  %i.cm = load i32, ptr @closeftpfile, align 4, !tbaa !12
  %.not41 = icmp eq i32 %i.cm, 0
  br i1 %.not41, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.co = call i32 @fclose(ptr noundef %i.cn)     ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = load i32, ptr @closecommandfile, align 4, !tbaa !12
  %.not42 = icmp eq i32 %i.cp, 0
  br i1 %.not42, label %NET_SendRaw.exit49, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.cr = call i32 @fclose(ptr noundef %i.cq)     ; 0 uses
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !12  ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %NET_SendRaw.exit49, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.y, %.lr.ph.i46
  %.020.i47 = phi i32 [ %i.db, %.lr.ph.i46 ], [ 0, %bb.y ] ; 3 uses
  %i.cu = zext nneg i32 %.020.i47 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @.str.91, i64 %i.cu
  %i.cw = sub nsw i32 6, %.020.i47
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = call i64 @send(i32 noundef %i.cs, ptr noundef nonnull %i.cv, i64 noundef %i.cx, i32 noundef 0) #24
  %i.cz = trunc i64 %i.cy to i32                  ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  %i.db = add nuw nsw i32 %.020.i47, %i.cz        ; 2 uses
  %i.dc = icmp slt i32 %i.db, 6
  %or.cond53 = select i1 %i.da, i1 %i.dc, i1 false
  br i1 %or.cond53, label %.lr.ph.i46, label %NET_SendRaw.exit49, !llvm.loop !0

NET_SendRaw.exit49:                               ; preds = %.lr.ph.i46, %bb.y, %bb.x
  %i.dd = load i32, ptr @closeoutfile, align 4, !tbaa !12
  %.not43 = icmp eq i32 %i.dd, 0
  br i1 %.not43, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %NET_SendRaw.exit49
  %i.de = load ptr, ptr @outfile, align 8, !tbaa !15
  %i.df = call i32 @fclose(ptr noundef %i.de)     ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %NET_SendRaw.exit49
  %i.dg = load i32, ptr @closefile, align 4, !tbaa !12
  %.not44 = icmp eq i32 %i.dg, 0
  br i1 %.not44, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = load i32, ptr %2, align 4, !tbaa !12
  %i.di = call i32 @file_close(i32 noundef %i.dh) #24 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dj = call ptr @signal(i32 noundef 14, ptr noundef null) #24 ; 0 uses
  br label %bb.ad
end_hunk_1
