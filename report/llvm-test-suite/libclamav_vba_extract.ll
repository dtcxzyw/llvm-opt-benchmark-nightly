Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_vba_extract?download=true
inline.NumInlined: 49
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.64 = private unnamed_addr constant [22 x i8] c"macro offset: 0x%.4x\0A\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"macro len: 0x%.4x\0A\0A\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"macro count: %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"read macro_entry failed\0A\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"read oxo3 record1 failed\0A\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"lseek oxo3 record1 failed\0A\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"oxo3 records1: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"read oxo3 record2 failed\0A\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"read oxo3 failed\0A\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"lseek oxo3 failed\0A\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"oxo3 records2: %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"read menu_info failed\0A\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"menu_info count: %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"read macro_extnames failed\0A\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"ext names size: 0x%x\0A\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"read macro_extnames failed to seek\0A\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"read macro_intnames failed\0A\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"int names count: %u\0A\00", align 1
@.str.82 = private unnamed_addr constant [28 x i8] c"skip_macro_intnames failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @vba56_dir_read(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  %i.b = alloca i16, align 2                      ; 17 uses
  %i.c = alloca i16, align 2                      ; 11 uses
  %i.d = alloca i16, align 2                      ; 10 uses
  %i.e = alloca i16, align 2                      ; 18 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %1 = alloca %struct.vba56_header, align 1       ; 8 uses
  %i.h = alloca [257 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #11
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 256, ptr noundef nonnull @.str.1, ptr noundef %0) #11 ; 0 uses
  %i.j = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.h, i32 noundef 0) #11 ; 54 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.h) #11
  br label %bb.cr

bb.c:                                             ; preds = %bb.a
  %i.l = call i32 @cli_readn(i32 noundef %i.j, ptr noundef nonnull %1, i32 noundef 34) #11
  %.not = icmp eq i32 %i.l, 34
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @close(i32 noundef %i.j) #11    ; 0 uses
  br label %bb.cr

bb.e:                                             ; preds = %bb.c
  %i.n = load i16, ptr %1, align 1
  %i.o = icmp ne i16 %i.n, 25036
  %i.p = zext i1 %i.o to i32
  %.not123 = icmp eq i32 %i.p, 0
  br i1 %.not123, label %.preheader174, label %bb.f

.preheader174:                                    ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 15 uses
  %i.r = load i32, ptr %i.q, align 1
  %i.s = icmp ne i32 %i.r, 16777310
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.thread, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @close(i32 noundef %i.j) #11    ; 0 uses
  br label %bb.cr

bb.g:                                             ; preds = %.preheader174
  %i.w = load i32, ptr %i.q, align 1
  %i.x = icmp ne i32 %i.w, 16777311
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.q, align 1
  %i.ab = icmp ne i32 %i.aa, 16777317
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.q, align 1
  %i.af = icmp ne i32 %i.ae, 16777323
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr %i.q, align 1
  %i.aj = icmp ne i32 %i.ai, 16777325
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load i32, ptr %i.q, align 1
  %i.an = icmp ne i32 %i.am, 16777327
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.q, align 1
  %i.ar = icmp ne i32 %i.aq, 16777328
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i32, ptr %i.q, align 1
  %i.av = icmp ne i32 %i.au, 16777331
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load i32, ptr %i.q, align 1
  %i.az = icmp ne i32 %i.ay, 16777334
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load i32, ptr %i.q, align 1
  %i.bd = icmp ne i32 %i.bc, 16777337
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load i32, ptr %i.q, align 1
  %i.bh = icmp ne i32 %i.bg, 234881120
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load i32, ptr %i.q, align 1
  %i.bl = icmp ne i32 %i.bk, 234881122
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %i.q, align 1
  %i.bp = icmp ne i32 %i.bo, 234881123
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = load i32, ptr %i.q, align 1
  %i.bt = icmp ne i32 %i.bs, 234881124
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load i8, ptr %i.q, align 1, !tbaa !8
  %i.bx = zext i8 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = zext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cg = zext i8 %i.cf to i32
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.3, i32 noundef %i.bx, i32 noundef %i.ca, i32 noundef %i.cd, i32 noundef %i.cg) #11
  %i.ch = load i8, ptr %i.ce, align 1, !tbaa !8
  switch i8 %i.ch, label %bb.w [
    i8 1, label %bb.u
    i8 14, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.4) #11
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.5) #11
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.6) #11
  %i.ci = call i32 @close(i32 noundef %i.j) #11   ; 0 uses
  br label %bb.cr

.thread:                                          ; preds = %.preheader174, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0113208.lcssa.wide = phi i64 [ 0, %.preheader174 ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ 9, %bb.o ], [ 10, %bb.p ], [ 11, %bb.q ], [ 12, %bb.r ], [ 13, %bb.s ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr @vba_version, i64 %.0113208.lcssa.wide ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !31
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7, ptr noundef %i.cl) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !32
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %.thread
  %.0 = phi i32 [ 0, %bb.u ], [ 1, %bb.v ], [ %i.cn, %.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.co = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.j, ptr noundef nonnull %i.b, i32 noundef 2) #11
  %.not61.i = icmp eq i32 %i.co, 2
  br i1 %.not61.i, label %.lr.ph.i, label %.loopexit173

.lr.ph.i:                                         ; preds = %bb.x
  %.not.i.i = icmp eq i32 %.0, 0                  ; 11 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ar, %.lr.ph.i
  %i.cp = load i16, ptr %i.b, align 2, !tbaa !12  ; 2 uses
  %rev.i.i = call i16 @llvm.bswap.i16(i16 %i.cp)
  %.0.i.i = select i1 %.not.i.i, i16 %i.cp, i16 %rev.i.i ; 3 uses
  store i16 %.0.i.i, ptr %i.b, align 2, !tbaa !12
  %i.cq = icmp ult i16 %.0.i.i, 6
  br i1 %i.cq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cr = call i64 @lseek(i32 noundef range(i32 0, -1) %i.j, i64 noundef -2, i32 noundef 1) #11 ; 0 uses
  br label %vba_read_project_strings.exit

bb.aa:                                            ; preds = %bb.y
  %i.cs = zext i16 %.0.i.i to i64
  %i.ct = call ptr @cli_malloc(i64 noundef %i.cs) #11 ; 6 uses
  %.not37.i = icmp eq ptr %i.ct, null
  br i1 %.not37.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.11) #11
  br label %.loopexit173

bb.ac:                                            ; preds = %bb.aa
  %i.cu = call i64 @lseek(i32 noundef range(i32 0, -1) %i.j, i64 noundef 0, i32 noundef 1) #11
  %i.cv = load i16, ptr %i.b, align 2, !tbaa !12
  %i.cw = zext i16 %i.cv to i32
  %i.cx = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.j, ptr noundef nonnull %i.ct, i32 noundef %i.cw) #11 ; 2 uses
  %i.cy = load i16, ptr %i.b, align 2, !tbaa !12
  %i.cz = zext i16 %i.cy to i32
  %.not38.i = icmp eq i32 %i.cx, %i.cz
  br i1 %.not38.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39) #11
  %i.da = and i64 %i.cu, 4294967295
  %i.db = call i64 @lseek(i32 noundef range(i32 0, -1) %i.j, i64 noundef %i.da, i32 noundef 0) #11 ; 0 uses
  call void @free(ptr noundef nonnull %i.ct) #11
  br label %vba_read_project_strings.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dc = call fastcc ptr @get_unicode_name(ptr noundef %i.ct, i32 noundef %i.cx, i32 noundef %.0) ; 6 uses
  %.not39.i = icmp eq ptr %i.dc, null
  %i.dd = load i16, ptr %i.b, align 2, !tbaa !12
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  br i1 %.not39.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40, i32 noundef %i.de, ptr noundef nonnull %i.dc) #11
  call void @free(ptr noundef nonnull %i.ct) #11
  %i.df = load i16, ptr %i.dc, align 1
  %i.dg = icmp ne i16 23594, %i.df
  %i.dh = zext i1 %i.dg to i32
  %.not40.i = icmp eq i32 %i.dh, 0
  br i1 %.not40.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8
  %i.dk = sext i8 %i.dj to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.43, i32 %i.dk, i64 5)
  %i.dl = icmp eq ptr %memchr.i, null
  br i1 %i.dl, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41, i32 noundef %i.de) #11
  call void @free(ptr noundef nonnull %i.ct) #11
  %i.dm = load i16, ptr %i.b, align 2, !tbaa !12
  %i.dn = zext i16 %i.dm to i64
  %i.do = sub nuw nsw i64 -2, %i.dn
  %i.dp = call i64 @lseek(i32 noundef range(i32 0, -1) %i.j, i64 noundef %i.do, i32 noundef 1) #11 ; 0 uses
  br label %vba_read_project_strings.exit

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.dq = load i16, ptr %i.b, align 2, !tbaa !12
  %i.dr = zext i16 %i.dq to i64
  %i.ds = sub nuw nsw i64 -2, %i.dr
  %i.dt = call i64 @lseek(i32 noundef range(i32 0, -1) %i.j, i64 noundef %i.ds, i32 noundef 1) #11 ; 0 uses
  call void @free(ptr noundef nonnull %i.dc) #11
  br label %vba_read_project_strings.exit

bb.aj:                                            ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.dc) #11
  %i.du = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.j, ptr noundef nonnull %i.b, i32 noundef 2) #11
  %.not41.i = icmp eq i32 %i.du, 2
  br i1 %.not41.i, label %bb.ak, label %.loopexit173

bb.ak:                                            ; preds = %bb.aj
  %i.dv = load i16, ptr %i.b, align 2, !tbaa !12  ; 2 uses
  %rev.i43.i = call i16 @llvm.bswap.i16(i16 %i.dv)
  %.0.i44.i = select i1 %.not.i.i, i16 %i.dv, i16 %rev.i43.i ; 2 uses
  store i16 %.0.i44.i, ptr %i.b, align 2, !tbaa !12
  %i.dw = add i16 %.0.i44.i, -1
  %or.cond.i = icmp ult i16 %i.dw, -2
  br i1 %or.cond.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dx = call i64 @lseek(i32 noundef range(i32 0, -1) %i.j, i64 noundef -2, i32 noundef 1) #11 ; 0 uses
  br label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.dy = call i64 @lseek(i32 noundef range(i32 0, -1) %i.j, i64 noundef 10, i32 noundef 1) #11
  %i.dz = trunc i64 %i.dy to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.44, i32 noundef %i.dz) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ea = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.j, ptr noundef nonnull %i.a, i32 noundef 20) #11
  %.not.i45.i = icmp eq i32 %i.ea, 20
  br i1 %.not.i45.i, label %bb.an, label %vba56_test_middle.exit.i

bb.an:                                            ; preds = %bb.am
  %i.eb = load i128, ptr %i.a, align 16
  %i.ec = xor i128 %i.eb, 103079424519808894343311399813643043072
  %i.ed = getelementptr i8, ptr %i.a, i64 16
  %i.ee = load i32, ptr %i.ed, align 16
  %i.ef = zext i32 %i.ee to i128
  %i.eg = xor i128 %i.ef, 46091
  %i.eh = or i128 %i.ec, %i.eg
  %i.ei = icmp ne i128 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %.not2.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not2.i.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ek = load i128, ptr %i.a, align 16
  %i.el = xor i128 %i.ek, 103079424519808847309927644500192198656
  %i.em = getelementptr i8, ptr %i.a, i64 16
  %i.en = load i32, ptr %i.em, align 16
  %i.eo = zext i32 %i.en to i128
  %i.ep = xor i128 %i.eo, 46091
  %i.eq = or i128 %i.el, %i.ep
  %i.er = icmp ne i128 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %.not4.i.i = icmp eq i32 %i.es, 0
  br i1 %.not4.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #11
  %i.et = call i64 @lseek(i32 noundef range(i32 0, -1) %i.j, i64 noundef -20, i32 noundef 1) #11 ; 0 uses
  br label %vba56_test_middle.exit.i

bb.aq:                                            ; preds = %bb.ao, %bb.an
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46) #11
  br label %vba56_test_middle.exit.i

vba56_test_middle.exit.i:                         ; preds = %bb.aq, %bb.ap, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ar

bb.ar:                                            ; preds = %vba56_test_middle.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.eu = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.j, ptr noundef nonnull %i.b, i32 noundef 2) #11
  %.not.i = icmp eq i32 %i.eu, 2
  br i1 %.not.i, label %bb.y, label %.loopexit173

vba_read_project_strings.exit:                    ; preds = %bb.z, %bb.ad, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.as

.loopexit173:                                     ; preds = %bb.aj, %bb.ar, %bb.ab, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.ev = call i32 @close(i32 noundef %i.j) #11   ; 0 uses
  br label %bb.cr

bb.as:                                            ; preds = %vba_read_project_strings.exit, %bb.au
  %i.ew = call i32 @cli_readn(i32 noundef %i.j, ptr noundef nonnull %i.e, i32 noundef 2) #11
  %.not126 = icmp eq i32 %i.ew, 2
  br i1 %.not126, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ex = call i32 @close(i32 noundef %i.j) #11   ; 0 uses
  br label %bb.cr

bb.au:                                            ; preds = %bb.as
  %i.ey = load i16, ptr %i.e, align 2, !tbaa !12
  %.not127 = icmp eq i16 %i.ey, -1
  br i1 %.not127, label %bb.av, label %bb.as, !llvm.loop !27

bb.av:                                            ; preds = %bb.au
  %i.ez = call i64 @lseek(i32 noundef %i.j, i64 noundef -3, i32 noundef 1) #11 ; 0 uses
  %i.fa = call i32 @cli_readn(i32 noundef %i.j, ptr noundef nonnull %i.e, i32 noundef 2) #11
end_hunk_0
