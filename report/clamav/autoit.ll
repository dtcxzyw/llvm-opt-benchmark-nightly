Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/autoit?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0
@.str.482 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.483 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.484 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.485 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.486 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.487 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.488 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.489 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.490 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.491 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.492 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.493 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.494 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.495 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.496 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.497 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.498 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.499 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.500 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.501 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.502 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.503 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.504 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.505 = private unnamed_addr constant [2 x i8] c":\00", align 1
@__const.ea06.opers = private unnamed_addr constant [25 x ptr] [ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @.str.503, ptr @.str.504, ptr @.str.505], align 16
@.str.506 = private unnamed_addr constant [11 x i8] c"cli_autoit\00", align 1
@.str.507 = private unnamed_addr constant [53 x i8] c"autoit: no FILE magic found, giving up (got 0x%08x)\0A\00", align 1
@.str.509 = private unnamed_addr constant [40 x i8] c"autoit: magic string too long to print\0A\00", align 1
@.str.510 = private unnamed_addr constant [69 x i8] c"autoit: decompression error after %u bytes - partial file may exist\0A\00", align 1
@.str.511 = private unnamed_addr constant [33 x i8] c"autoit: script has got %u lines\0A\00", align 1
@.str.512 = private unnamed_addr constant [66 x i8] c"autoit: too few bytes present - expected enough for a keyword ID\0A\00", align 1
@.str.513 = private unnamed_addr constant [41 x i8] c"autoit: unknown AutoIT keyword ID: 0x%x\0A\00", align 1
@.str.514 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.515 = private unnamed_addr constant [51 x i8] c"autoit: encountered use of unknown keyword ID: %s\0A\00", align 1
@.str.516 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.517 = private unnamed_addr constant [67 x i8] c"autoit: too few bytes present - expected enough for a function ID\0A\00", align 1
@.str.518 = private unnamed_addr constant [42 x i8] c"autoit: unknown AutoIT function ID: 0x%x\0A\00", align 1
@.str.519 = private unnamed_addr constant [52 x i8] c"autoit: encountered use of unknown function ID: %s\0A\00", align 1
@.str.520 = private unnamed_addr constant [37 x i8] c"autoit: not enough space for an int\0A\00", align 1
@.str.521 = private unnamed_addr constant [8 x i8] c"0x%08x \00", align 1
@.str.522 = private unnamed_addr constant [39 x i8] c"autoit: not enough space for an int64\0A\00", align 1
@.str.523 = private unnamed_addr constant [10 x i8] c"0x%016lx \00", align 1
@.str.524 = private unnamed_addr constant [39 x i8] c"autoit: not enough space for a double\0A\00", align 1
@.str.525 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.526 = private unnamed_addr constant [35 x i8] c"autoit: not enough space for size\0A\00", align 1
@.str.527 = private unnamed_addr constant [54 x i8] c"autoit: size too big - needed %d, total %d, avail %d\0A\00", align 1
@.str.528 = private unnamed_addr constant [33 x i8] c"autoit: found unknown op (0x%x)\0A\00", align 1
@.str.529 = private unnamed_addr constant [58 x i8] c"autoit: decompilation aborted - partial script may exist\0A\00", align 1
@.str.530 = private unnamed_addr constant [28 x i8] c"autoit: %s extracted to %s\0A\00", align 1
@.str.531 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.532 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.533 = private unnamed_addr constant [35 x i8] c"autoit: %s successfully extracted\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scanautoit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [600 x i8], align 16              ; 23 uses
  %i.b = alloca [1024 x i8], align 16             ; 10 uses
  %2 = alloca %struct.UNP, align 8                ; 39 uses
  %i.c = alloca [300 x i8], align 16              ; 10 uses
  %i.d = alloca [1024 x i8], align 16             ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.451) #14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call ptr %i.h(ptr noundef %i.f, i64 noundef %1, i64 noundef 1, i32 noundef 0) #14, !inline_history !27 ; 20 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.iq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = tail call ptr @cli_gentemp_with_prefix(ptr noundef %i.k, ptr noundef nonnull @.str.452) #14 ; 9 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %bb.iq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @mkdir(ptr noundef nonnull %i.l, i32 noundef 448) #14
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.453, ptr noundef nonnull %i.l) #14
  tail call void @free(ptr noundef nonnull %i.l) #14
  br label %bb.iq

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.454, ptr noundef nonnull %i.l) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load i8, ptr %i.i, align 1, !tbaa !50
  switch i8 %i.r, label %bb.im [
    i8 53, label %bb.h
    i8 54, label %bb.cz
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false)
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !8    ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr i8, ptr %i.t, i64 16       ; 7 uses
  %.val.i.i = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.x = getelementptr i8, ptr %i.t, i64 72       ; 7 uses
  %.val4.i.i = load i64, ptr %i.x, align 8, !tbaa !52
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %.val.i.i to i64
  %i.aa = add i64 %.val4.i.i, %i.z
  %i.ab = sub i64 %i.y, %i.aa
  %i.ac = tail call ptr %i.v(ptr noundef %i.t, i64 noundef %i.ab, i64 noundef 16, i32 noundef 0) #14, !inline_history !53
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %ea05.exit, label %.preheader605.preheader.i

.preheader605.preheader.i:                        ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.ae = load i8, ptr %i.s, align 1, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ai = load i8, ptr %i.af, align 1, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.ak = load i8, ptr %i.ah, align 1, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 11
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 13
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 14
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bg = load i8, ptr %i.bd, align 1, !tbaa !50
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bi = tail call i32 @cli_checklimits(ptr noundef nonnull @.str.457, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph671.lr.ph.i, label %ea05.exit

.lr.ph671.lr.ph.i:                                ; preds = %.preheader605.preheader.i
  %scevgep.i = getelementptr i8, ptr %i.i, i64 17
  %i.bk = zext i8 %i.ae to i32
  %i.bl = zext i8 %i.ag to i32
  %i.bm = zext i8 %i.ai to i32
  %i.bn = zext i8 %i.ak to i32
  %i.bo = zext i8 %i.am to i32
  %i.bp = zext i8 %i.ao to i32
  %i.bq = zext i8 %i.aq to i32
  %i.br = zext i8 %i.as to i32
  %i.bs = zext i8 %i.au to i32
  %i.bt = zext i8 %i.aw to i32
  %i.bu = zext i8 %i.ay to i32
  %i.bv = zext i8 %i.ba to i32
  %i.bw = zext i8 %i.bc to i32
  %i.bx = zext i8 %i.be to i32
  %i.by = zext i8 %i.bg to i32
  %i.bz = zext i8 %i.bh to i32
  %i.ca = add nuw nsw i32 %i.bk, 8879
  %i.cb = add nuw nsw i32 %i.ca, %i.bl
  %i.cc = add nuw nsw i32 %i.cb, %i.bm
  %i.cd = add nuw nsw i32 %i.cc, %i.bn
  %i.ce = add nuw nsw i32 %i.cd, %i.bo
  %i.cf = add nuw nsw i32 %i.ce, %i.bp
  %i.cg = add nuw nsw i32 %i.cf, %i.bq
  %i.ch = add nuw nsw i32 %i.cg, %i.br
  %i.ci = add nuw nsw i32 %i.ch, %i.bs
  %i.cj = add nuw nsw i32 %i.ci, %i.bt
  %i.ck = add nuw nsw i32 %i.cj, %i.bu
  %i.cl = add nuw nsw i32 %i.ck, %i.bv
  %i.cm = add nuw nsw i32 %i.cl, %i.bw
  %i.cn = add nuw nsw i32 %i.cm, %i.bx
  %i.co = add nuw nsw i32 %i.cn, %i.by
  %i.cp = add nuw nsw i32 %i.co, %i.bz
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 1023
  br label %.lr.ph671.i

bb.i:                                             ; preds = %.lr.ph671.i, %.backedge.i
  %.1122670.i = phi ptr [ %.1122.ph690.i, %.lr.ph671.i ], [ %.1122.be.i, %.backedge.i ] ; 4 uses
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !25
  %.val.i184.i = load ptr, ptr %i.w, align 8, !tbaa !51
  %.val4.i185.i = load i64, ptr %i.x, align 8, !tbaa !52
  %i.cs = ptrtoint ptr %.1122670.i to i64
  %i.ct = ptrtoint ptr %.val.i184.i to i64
  %i.cu = add i64 %.val4.i185.i, %i.ct
  %i.cv = sub i64 %i.cs, %i.cu
  %i.cw = call ptr %i.cr(ptr noundef %i.t, i64 noundef %i.cv, i64 noundef 8, i32 noundef 0) #14, !inline_history !53
  %.not148.i = icmp eq ptr %i.cw, null
  br i1 %.not148.i, label %ea05.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cx = load i32, ptr %.1122670.i, align 1, !tbaa !50
  %.not149.i = icmp eq i32 %i.cx, -827298305
  br i1 %.not149.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.458) #14
  br label %ea05.exit

bb.l:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %.1122670.i, i64 4
  %i.cz = load i32, ptr %i.cy, align 1, !tbaa !50 ; 2 uses
  %i.da = xor i32 %i.cz, 10684                    ; 4 uses
  %i.db = icmp slt i32 %i.cz, 0
  br i1 %i.db, label %ea05.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %.1122670.i, i64 8 ; 3 uses
  %i.dd = load i8, ptr @cli_debug_flag, align 1, !tbaa !50
  %i.de = icmp ne i8 %i.dd, 0
  %i.df = zext nneg i32 %i.da to i64              ; 4 uses
  %i.dg = icmp ult i32 %i.da, 300
  %or.cond.i = and i1 %i.dg, %i.de
  br i1 %or.cond.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dh = load ptr, ptr %i.u, align 8, !tbaa !25
  %.val.i186.i = load ptr, ptr %i.w, align 8, !tbaa !51
  %.val4.i187.i = load i64, ptr %i.x, align 8, !tbaa !52
  %i.di = ptrtoint ptr %i.dc to i64
  %i.dj = ptrtoint ptr %.val.i186.i to i64
  %i.dk = add i64 %.val4.i187.i, %i.dj
  %i.dl = sub i64 %i.di, %i.dk
  %i.dm = call ptr %i.dh(ptr noundef nonnull %i.t, i64 noundef %i.dl, i64 noundef range(i64 0, 4294967296) %i.df, i32 noundef 0) #14, !inline_history !53
  %.not150.i = icmp eq ptr %i.dm, null
  br i1 %.not150.i, label %ea05.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.dc, i64 %i.df, i1 false)
  %i.dn = add nuw nsw i32 %i.da, 41566
  call fastcc void @MT_decrypt(ptr noundef nonnull %i.c, i32 noundef %i.da, i32 noundef %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.df
  store i8 0, ptr %i.do, align 1, !tbaa !50
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.459, ptr noundef nonnull %i.c) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.df ; 3 uses
  %i.dq = load ptr, ptr %i.u, align 8, !tbaa !25
  %.val.i188.i = load ptr, ptr %i.w, align 8, !tbaa !51
  %.val4.i189.i = load i64, ptr %i.x, align 8, !tbaa !52
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %.val.i188.i to i64
  %i.dt = add i64 %.val4.i189.i, %i.ds
  %i.du = sub i64 %i.dr, %i.dt
  %i.dv = call ptr %i.dq(ptr noundef nonnull %i.t, i64 noundef %i.du, i64 noundef 4, i32 noundef 0) #14, !inline_history !53
  %.not151.i = icmp eq ptr %i.dv, null
  br i1 %.not151.i, label %ea05.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = load i32, ptr %i.dp, align 1, !tbaa !50 ; 2 uses
  %i.dx = xor i32 %i.dw, 10668                    ; 4 uses
  %i.dy = icmp slt i32 %i.dw, 0
  br i1 %i.dy, label %ea05.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 3 uses
  %i.ea = load i8, ptr @cli_debug_flag, align 1, !tbaa !50
  %i.eb = icmp ne i8 %i.ea, 0
  %i.ec = zext nneg i32 %i.dx to i64              ; 4 uses
  %i.ed = icmp ult i32 %i.dx, 300
  %or.cond5.i = and i1 %i.ed, %i.eb
  br i1 %or.cond5.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ee = load ptr, ptr %i.u, align 8, !tbaa !25
  %.val.i190.i = load ptr, ptr %i.w, align 8, !tbaa !51
  %.val4.i191.i = load i64, ptr %i.x, align 8, !tbaa !52
  %i.ef = ptrtoint ptr %i.dz to i64
  %i.eg = ptrtoint ptr %.val.i190.i to i64
  %i.eh = add i64 %.val4.i191.i, %i.eg
  %i.ei = sub i64 %i.ef, %i.eh
  %i.ej = call ptr %i.ee(ptr noundef nonnull %i.t, i64 noundef %i.ei, i64 noundef range(i64 0, 4294967296) %i.ec, i32 noundef 0) #14, !inline_history !53
  %.not152.i = icmp eq ptr %i.ej, null
  br i1 %.not152.i, label %ea05.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.dz, i64 %i.ec, i1 false)
  %i.ek = add nuw nsw i32 %i.dx, 62046
  call fastcc void @MT_decrypt(ptr noundef nonnull %i.c, i32 noundef %i.dx, i32 noundef %i.ek)
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ec
  store i8 0, ptr %i.el, align 1, !tbaa !50
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.460, ptr noundef nonnull %i.c) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec ; 7 uses
  %i.en = load ptr, ptr %i.u, align 8, !tbaa !25
  %.val.i192.i = load ptr, ptr %i.w, align 8, !tbaa !51
  %.val4.i193.i = load i64, ptr %i.x, align 8, !tbaa !52
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %.val.i192.i to i64
  %i.eq = add i64 %.val4.i193.i, %i.ep
  %i.er = sub i64 %i.eo, %i.eq
  %i.es = call ptr %i.en(ptr noundef nonnull %i.t, i64 noundef %i.er, i64 noundef 13, i32 noundef 0) #14, !inline_history !53
  %.not153.i = icmp eq ptr %i.es, null
  br i1 %.not153.i, label %ea05.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = load i8, ptr %i.em, align 1, !tbaa !50
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !50 ; 3 uses
  %i.ew = xor i32 %i.ev, 17834                    ; 16 uses
  %i.ex = icmp slt i32 %i.ev, 0
  br i1 %i.ex, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.461) #14
  br label %ea05.exit

bb.x:                                             ; preds = %bb.v
  %.not154.i = icmp eq i32 %i.ev, 17834
  br i1 %.not154.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.462) #14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 29
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.cn, %bb.ak, %bb.ai, %bb.ac, %bb.aa, %bb.y
  %.1122.be.i = phi ptr [ %i.ey, %bb.y ], [ %i.fk, %bb.aa ], [ %i.fh, %bb.ac ], [ %i.fu, %bb.ai ], [ %i.fu, %bb.ak ], [ %i.fu, %bb.cn ]
  %i.ez = call i32 @cli_checklimits(ptr noundef nonnull @.str.457, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.i, label %ea05.exit

bb.z:                                             ; preds = %bb.x
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.463, i32 noundef %i.ew) #14
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 5
  %i.fc = load i32, ptr %i.fb, align 1, !tbaa !50
  %i.fd = xor i32 %i.fc, 17834
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.464, i32 noundef %i.fd) #14
  %i.fe = getelementptr inbounds nuw i8, ptr %i.em, i64 9
  %i.ff = load i32, ptr %i.fe, align 1, !tbaa !50
  %i.fg = xor i32 %i.ff, 50130
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.465, i32 noundef %i.fg) #14
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 29 ; 5 uses
  %i.fi = zext nneg i32 %i.ew to i64              ; 6 uses
  %i.fj = call i32 @cli_checklimits(ptr noundef nonnull @.str.457, ptr noundef nonnull %0, i64 noundef %i.fi, i64 noundef 0, i64 noundef 0) #14
  %.not155.i = icmp eq i32 %i.fj, 0
  br i1 %.not155.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  br label %.backedge.i

bb.ab:                                            ; preds = %bb.z
  %i.fl = icmp eq i8 %i.et, 1                     ; 2 uses
  %i.fm = icmp ult i32 %i.ew, 4
  %or.cond9.i = and i1 %i.fl, %i.fm
  br i1 %or.cond9.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.466) #14
  br label %.backedge.i

bb.ad:                                            ; preds = %bb.ab
  %i.fn = call ptr @cli_max_malloc(i64 noundef %i.fi) #14 ; 113 uses
  %.not156.i = icmp eq ptr %i.fn, null
  br i1 %.not156.i, label %ea05.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fo = load ptr, ptr %i.u, align 8, !tbaa !25
  %.val.i194.i = load ptr, ptr %i.w, align 8, !tbaa !51
  %.val4.i195.i = load i64, ptr %i.x, align 8, !tbaa !52
  %i.fp = ptrtoint ptr %i.fh to i64
  %i.fq = ptrtoint ptr %.val.i194.i to i64
  %i.fr = add i64 %.val4.i195.i, %i.fq
  %i.fs = sub i64 %i.fp, %i.fr
  %i.ft = call ptr %i.fo(ptr noundef nonnull %i.t, i64 noundef %i.fs, i64 noundef range(i64 0, 4294967296) %i.fi, i32 noundef 0) #14, !inline_history !53
  %.not157.i = icmp eq ptr %i.ft, null
  br i1 %.not157.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.467) #14
  br label %.thread551.i

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fn, ptr nonnull align 1 %i.fh, i64 %i.fi, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi ; 4 uses
end_hunk_0
begin_hunk_1_@cli_scanautoit:bb.a
  %i.ams = or disjoint i32 %i.amq, %.masked811.i
  %.sroa.125.sroa.0.0.insert.ext353.2.i = shl nuw nsw i32 %.sroa.125.sroa.0.26.2.i, 1 ; 5 uses
  %i.amt = and i32 %.sroa.125.sroa.0.0.insert.ext353.2.i, 65536
  %i.amu = or disjoint i32 %i.amt, %i.ams
  %.not24.i227.3.i = icmp eq i32 %i.amp, 1
  br i1 %.not24.i227.3.i, label %.preheader594.4.thread.i, label %.preheader594.4.i

.preheader594.4.thread.i:                         ; preds = %.preheader594.3.i
  %i.amv = add i32 %.sroa.46.26.2.i, 1
  %i.amw = zext i32 %.sroa.46.26.2.i to i64
  %i.amx = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.amw
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !50
  %i.amz = zext i8 %i.amy to i32
  %i.ana = shl nuw nsw i32 %i.amz, 8
  %i.anb = zext i32 %i.amv to i64
  %i.anc = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.anb
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !50
  %i.ane = zext i8 %i.and to i32
  %i.anf = or disjoint i32 %i.ana, %i.ane
  %i.ang = or i32 %i.anf, %.sroa.125.sroa.0.0.insert.ext353.2.i ; 2 uses
  %.sroa.125.sroa.0.0.insert.ext353.3982.i = shl nuw nsw i32 %i.ang, 1
  br label %.preheader594.5.thread.i

.preheader594.4.i:                                ; preds = %.preheader594.3.i
  %.sroa.125.sroa.0.0.insert.ext353.3.i = shl nuw nsw i32 %.sroa.125.sroa.0.26.2.i, 2 ; 3 uses
  %.not24.i227.4.i = icmp eq i32 %i.amp, 2
  br i1 %.not24.i227.4.i, label %bb.ch, label %.preheader594.5.i

bb.ch:                                            ; preds = %.preheader594.4.i
  %i.anh = add i32 %.sroa.46.26.2.i, 1
  %i.ani = zext i32 %.sroa.46.26.2.i to i64
  %i.anj = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ani
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !50
  %i.anl = zext i8 %i.ank to i32
  %i.anm = shl nuw nsw i32 %i.anl, 8
  %i.ann = zext i32 %i.anh to i64
  %i.ano = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ann
  %i.anp = load i8, ptr %i.ano, align 1, !tbaa !50
  %i.anq = zext i8 %i.anp to i32
  %i.anr = or disjoint i32 %i.anm, %i.anq
  %i.ans = or i32 %i.anr, %.sroa.125.sroa.0.0.insert.ext353.3.i
  br label %.preheader594.5.thread.i

.preheader594.5.thread.i:                         ; preds = %bb.ch, %.preheader594.4.thread.i
  %.sroa.125.sroa.0.26.3984.ph.i = phi i32 [ %i.ang, %.preheader594.4.thread.i ], [ %.sroa.125.sroa.0.0.insert.ext353.2.i, %bb.ch ]
  %.sroa.125.sroa.0.26.4.ph.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext353.3982.i, %.preheader594.4.thread.i ], [ %i.ans, %bb.ch ] ; 2 uses
  %.ph985.i = phi i32 [ 14, %.preheader594.4.thread.i ], [ 15, %bb.ch ]
  %.sroa.46.26.4.ph.i = add i32 %.sroa.46.26.2.i, 2
  %.sroa.125.sroa.0.0.insert.ext353.4989.i = shl nuw nsw i32 %.sroa.125.sroa.0.26.4.ph.i, 1
  br label %.preheader594.6.i

.preheader594.5.i:                                ; preds = %.preheader594.4.i
  %.sroa.125.sroa.0.0.insert.ext353.4.i = shl nuw nsw i32 %.sroa.125.sroa.0.26.2.i, 3 ; 2 uses
  %i.ant = add i32 %i.amp, -3                     ; 2 uses
  %.not24.i227.5.i = icmp eq i32 %i.ant, 0
  br i1 %.not24.i227.5.i, label %bb.ci, label %.preheader594.6.i

bb.ci:                                            ; preds = %.preheader594.5.i
  %i.anu = add i32 %.sroa.46.26.2.i, 1
  %i.anv = zext i32 %.sroa.46.26.2.i to i64
  %i.anw = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.anv
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !50
  %i.any = zext i8 %i.anx to i32
  %i.anz = shl nuw nsw i32 %i.any, 8
  %i.aoa = add i32 %.sroa.46.26.2.i, 2
  %i.aob = zext i32 %i.anu to i64
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aob
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !50
  %i.aoe = zext i8 %i.aod to i32
  %i.aof = or disjoint i32 %i.anz, %i.aoe
  %i.aog = or i32 %i.aof, %.sroa.125.sroa.0.0.insert.ext353.4.i
  br label %.preheader594.6.i

.preheader594.6.i:                                ; preds = %bb.ci, %.preheader594.5.i, %.preheader594.5.thread.i
  %.pn1044.in.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext353.2.i, %bb.ci ], [ %.sroa.125.sroa.0.0.insert.ext353.2.i, %.preheader594.5.i ], [ %.sroa.125.sroa.0.26.3984.ph.i, %.preheader594.5.thread.i ]
  %.sroa.125.sroa.0.26.4991.i = phi i32 [ %.sroa.125.sroa.0.0.insert.ext353.3.i, %bb.ci ], [ %.sroa.125.sroa.0.0.insert.ext353.3.i, %.preheader594.5.i ], [ %.sroa.125.sroa.0.26.4.ph.i, %.preheader594.5.thread.i ]
  %.sroa.46.26.5.i = phi i32 [ %i.aoa, %bb.ci ], [ %.sroa.46.26.2.i, %.preheader594.5.i ], [ %.sroa.46.26.4.ph.i, %.preheader594.5.thread.i ] ; 4 uses
  %.sroa.125.sroa.0.26.5.i = phi i32 [ %i.aog, %bb.ci ], [ %.sroa.125.sroa.0.0.insert.ext353.4.i, %.preheader594.5.i ], [ %.sroa.125.sroa.0.0.insert.ext353.4989.i, %.preheader594.5.thread.i ]
  %i.aoh = phi i32 [ 16, %bb.ci ], [ %i.ant, %.preheader594.5.i ], [ %.ph985.i, %.preheader594.5.thread.i ]
  %.pn1044.i = and i32 %.pn1044.in.i, 32768
  %i.aoi = or disjoint i32 %.pn1044.i, %i.amu
  %i.aoj = shl nuw nsw i32 %i.aoi, 3
  %i.aok = shl nuw nsw i32 %.sroa.125.sroa.0.26.4991.i, 2
  %i.aol = and i32 %i.aok, 131072
  %i.aom = or disjoint i32 %i.aoj, %i.aol
  %.sroa.125.sroa.0.0.insert.ext353.5.i = shl nuw nsw i32 %.sroa.125.sroa.0.26.5.i, 1 ; 3 uses
  %i.aon = and i32 %.sroa.125.sroa.0.0.insert.ext353.5.i, 65536
  %i.aoo = or disjoint i32 %i.aon, %i.aom
  %i.aop = add i32 %i.aoh, -1                     ; 2 uses
  %.not24.i227.6.i = icmp eq i32 %i.aop, 0
  br i1 %.not24.i227.6.i, label %bb.cj, label %.preheader594.7.i

bb.cj:                                            ; preds = %.preheader594.6.i
  %i.aoq = add i32 %.sroa.46.26.5.i, 1
  %i.aor = zext i32 %.sroa.46.26.5.i to i64
  %i.aos = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aor
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !50
  %i.aou = zext i8 %i.aot to i32
  %i.aov = shl nuw nsw i32 %i.aou, 8
  %i.aow = add i32 %.sroa.46.26.5.i, 2
  %i.aox = zext i32 %i.aoq to i64
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.aox
  %i.aoz = load i8, ptr %i.aoy, align 1, !tbaa !50
  %i.apa = zext i8 %i.aoz to i32
  %i.apb = or disjoint i32 %i.aov, %i.apa
  %i.apc = or i32 %i.apb, %.sroa.125.sroa.0.0.insert.ext353.5.i
  br label %.preheader594.7.i

.preheader594.7.i:                                ; preds = %bb.cj, %.preheader594.6.i
  %.sroa.46.26.6.i = phi i32 [ %i.aow, %bb.cj ], [ %.sroa.46.26.5.i, %.preheader594.6.i ] ; 4 uses
  %.sroa.125.sroa.0.26.6.i = phi i32 [ %i.apc, %bb.cj ], [ %.sroa.125.sroa.0.0.insert.ext353.5.i, %.preheader594.6.i ]
  %i.apd = phi i32 [ 16, %bb.cj ], [ %i.aop, %.preheader594.6.i ]
  %i.ape = shl nuw nsw i32 %i.aoo, 1
  %i.apf = and i32 %i.ape, 1081999360
  %.sroa.125.sroa.0.0.insert.ext353.6.i = shl nuw nsw i32 %.sroa.125.sroa.0.26.6.i, 1 ; 3 uses
  %i.apg = and i32 %.sroa.125.sroa.0.0.insert.ext353.6.i, 65536
  %i.aph = or disjoint i32 %i.apg, %i.apf
  %i.api = add i32 %i.apd, -1                     ; 2 uses
  %.not24.i227.7.i = icmp eq i32 %i.api, 0
  br i1 %.not24.i227.7.i, label %bb.ck, label %.loopexit.i

bb.ck:                                            ; preds = %.preheader594.7.i
  %i.apj = add i32 %.sroa.46.26.6.i, 1
  %i.apk = zext i32 %.sroa.46.26.6.i to i64
  %i.apl = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.apk
  %i.apm = load i8, ptr %i.apl, align 1, !tbaa !50
  %i.apn = zext i8 %i.apm to i32
  %i.apo = shl nuw nsw i32 %i.apn, 8
  %i.app = add i32 %.sroa.46.26.6.i, 2
  %i.apq = zext i32 %i.apj to i64
  %i.apr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.apq
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !50
  %i.apt = zext i8 %i.aps to i32
  %i.apu = or disjoint i32 %i.apo, %i.apt
  %i.apv = or i32 %i.apu, %.sroa.125.sroa.0.0.insert.ext353.6.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader594.7.i, %bb.ck
  %.sroa.46.26.7.i = phi i32 [ %i.app, %bb.ck ], [ %.sroa.46.26.6.i, %.preheader594.7.i ]
  %.sroa.125.sroa.0.26.7.i = phi i32 [ %i.apv, %bb.ck ], [ %.sroa.125.sroa.0.0.insert.ext353.6.i, %.preheader594.7.i ]
  %i.apw = phi i32 [ 16, %bb.ck ], [ %i.api, %.preheader594.7.i ]
  %i.apx = shl nuw nsw i32 %i.aph, 1
  %.sroa.125.sroa.0.0.insert.ext353.7.i = shl nuw nsw i32 %.sroa.125.sroa.0.26.7.i, 1 ; 2 uses
  %i.apy = and i32 %.sroa.125.sroa.0.0.insert.ext353.7.i, 65536
  %i.apz = or disjoint i32 %i.apy, %i.apx
  %.sroa.125.sroa.0.0.extract.trunc356.7.i = trunc i32 %.sroa.125.sroa.0.0.insert.ext353.7.i to i16
  %.sroa.125.sroa.44.0.extract.shift397.7.i = lshr exact i32 %i.apz, 16
  %i.aqa = add i32 %i.apw, -1
  %i.aqb = trunc nuw i32 %.sroa.125.sroa.44.0.extract.shift397.7.i to i8
  %i.aqc = zext i32 %.sroa.35.0662.i208 to i64
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.aqc
  store i8 %i.aqb, ptr %i.aqd, align 1, !tbaa !50
  %i.aqe = add nuw i32 %.sroa.35.0662.i208, 1     ; 2 uses
  %i.aqf = icmp ult i32 %i.aqe, %spec.select.i
  br i1 %i.aqf, label %.backedge, label %._crit_edge.i.thread116

.backedge:                                        ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.125.sroa.0.0665.i.be = phi i16 [ %.sroa.125.sroa.0.0.extract.trunc356.7.i, %.loopexit.i ], [ %.sroa.125.sroa.0.2.i, %.loopexit.i.thread ]
  %.sroa.108.0664.i.be = phi i32 [ %i.aqa, %.loopexit.i ], [ %.sroa.108.2.i, %.loopexit.i.thread ] ; 2 uses
  %.sroa.46.0663.i.be = phi i32 [ %.sroa.46.26.7.i, %.loopexit.i ], [ %.sroa.46.2.i, %.loopexit.i.thread ] ; 2 uses
  %.sroa.35.0662.i.be = phi i32 [ %i.aqe, %.loopexit.i ], [ %.lcssa435, %.loopexit.i.thread ] ; 2 uses
  %i.aqg = icmp ne i32 %.sroa.108.0664.i.be, 0    ; 2 uses
  %i.aqh = sub i32 %i.ew, %.sroa.46.0663.i.be
  %i.aqi = icmp ugt i32 %i.aqh, 1
  %or.cond566.not.i = select i1 %i.aqg, i1 true, i1 %i.aqi
  br i1 %or.cond566.not.i, label %.preheader603.i, label %.thread948.i

._crit_edge.i.thread116:                          ; preds = %.loopexit.i
  call void @free(ptr noundef %i.fn) #14
  br label %bb.cm

.loopexit.i.thread:                               ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa435 = phi i32 [ %i.ajc, %vec.epilog.middle.block ], [ %i.air, %middle.block ], [ %.lcssa504.unr, %.lr.ph.i.prol.loopexit ], [ %i.akw, %.lr.ph.i ] ; 2 uses
  %i.aqj = icmp ult i32 %.lcssa435, %spec.select.i
  br i1 %i.aqj, label %.backedge, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.loopexit.i.thread
  call void @free(ptr noundef %i.fn) #14
  br label %bb.cm

._crit_edge.i:                                    ; preds = %bb.ce, %.thread948.i
  %.sroa.35.0662.i159 = phi i32 [ %.sroa.35.0662.i.lcssa, %.thread948.i ], [ %.sroa.35.0662.i208, %bb.ce ] ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.480) #14
  %i.aqk = zext i32 %.sroa.35.0662.i159 to i64
  %i.aql = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.aqk
  store i8 0, ptr %i.aql, align 1, !tbaa !50
  %i.aqm = add nuw i32 %.sroa.35.0662.i159, 1
  br label %.thread525.i

.thread525.i:                                     ; preds = %.loopexit597.i, %bb.cb, %bb.cc, %bb.cd, %.thread525.sink.split.i, %._crit_edge.i
  %.sroa.35.0630.i = phi i32 [ %i.aqm, %._crit_edge.i ], [ %.sroa.35.0662.i208, %.thread525.sink.split.i ], [ %.sroa.35.0662.i208, %bb.cd ], [ %.sroa.35.0662.i208, %bb.cc ], [ %.sroa.35.0662.i208, %bb.cb ], [ %.sroa.35.0662.i208, %.loopexit597.i ] ; 2 uses
  call void @free(ptr noundef %i.fn) #14
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.471, i32 noundef %.sroa.35.0630.i) #14
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ag
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.472) #14
  br label %bb.cm

bb.cm:                                            ; preds = %._crit_edge.i.thread116, %._crit_edge.i.thread, %bb.cl, %.thread525.i
  %.sroa.0.1.i = phi ptr [ %i.gb, %._crit_edge.i.thread116 ], [ %i.gb, %.thread525.i ], [ %i.fn, %bb.cl ], [ %i.gb, %._crit_edge.i.thread ] ; 5 uses
  %.sroa.79.1.i = phi i32 [ %spec.select.i, %._crit_edge.i.thread116 ], [ %.sroa.35.0630.i, %.thread525.i ], [ %i.ew, %bb.cl ], [ %spec.select.i, %._crit_edge.i.thread ] ; 3 uses
  %i.aqn = icmp ult i32 %.sroa.79.1.i, 4
  br i1 %i.aqn, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm, %.thread994.i
  %.sroa.0.1997.i = phi ptr [ %i.gb, %.thread994.i ], [ %.sroa.0.1.i, %bb.cm ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.473) #14
  call void @free(ptr noundef %.sroa.0.1997.i) #14
  br label %.backedge.i

bb.co:                                            ; preds = %bb.cm
  %i.aqo = add i32 %.0117.ph691.i, 1              ; 2 uses
  %i.aqp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1023, ptr noundef nonnull @.str.474, ptr noundef nonnull %i.l, i32 noundef %i.aqo) #14 ; 0 uses
  store i8 0, ptr %i.cq, align 1, !tbaa !50
  %i.aqq = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.d, i32 noundef 578, i32 noundef 384) #14 ; 6 uses
  %i.aqr = icmp slt i32 %i.aqq, 0
  br i1 %i.aqr, label %.thread546.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aqs = zext i32 %.sroa.79.1.i to i64          ; 2 uses
  %i.aqt = call i64 @cli_writen(i32 noundef %i.aqq, ptr noundef nonnull %.sroa.0.1.i, i64 noundef %i.aqs) #14
  %.not172.i = icmp eq i64 %i.aqt, %i.aqs
  br i1 %.not172.i, label %bb.cq, label %.thread546.thread998.i

.thread546.thread998.i:                           ; preds = %bb.cp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.476, i32 noundef %.sroa.79.1.i) #14
  call void @free(ptr noundef nonnull %.sroa.0.1.i) #14
  br label %.thread546.thread559.i

bb.cq:                                            ; preds = %bb.cp
  call void @free(ptr noundef nonnull %.sroa.0.1.i) #14
  %i.aqu = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 48
  %i.aqw = load i32, ptr %i.aqv, align 8, !tbaa !30
  %.not173.i = icmp eq i32 %i.aqw, 0
  br i1 %.not173.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.477, ptr noundef nonnull %i.d) #14
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.478) #14
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.aqx = call i64 @lseek(i32 noundef %i.aqq, i64 noundef 0, i32 noundef 0) #14
  %i.aqy = icmp eq i64 %i.aqx, -1
  br i1 %i.aqy, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.479) #14
  br label %.thread546.thread559.i

bb.cv:                                            ; preds = %bb.ct
  %i.aqz = call i32 @cli_magic_scan_desc(i32 noundef %i.aqq, ptr noundef nonnull %i.d, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not174.i = icmp eq i32 %i.aqz, 0
  br i1 %.not174.i, label %bb.cw, label %.thread546.thread559.i

bb.cw:                                            ; preds = %bb.cv
  %i.ara = call i32 @close(i32 noundef %i.aqq) #14 ; 0 uses
  %i.arb = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 48
  %i.ard = load i32, ptr %i.arc, align 8, !tbaa !30
  %.not175.i = icmp eq i32 %i.ard, 0
  br i1 %.not175.i, label %bb.cx, label %.outer.i

bb.cx:                                            ; preds = %bb.cw
  %i.are = call i32 @cli_unlink(ptr noundef nonnull %i.d) #14 ; 0 uses
  br label %.outer.i

.outer.i:                                         ; preds = %bb.cx, %bb.cw
  %i.arf = call i32 @cli_checklimits(ptr noundef nonnull @.str.457, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14 ; 2 uses
  %i.arg = icmp eq i32 %i.arf, 0
  br i1 %i.arg, label %.lr.ph671.i, label %ea05.exit

.lr.ph671.i:                                      ; preds = %.outer.i, %.lr.ph671.lr.ph.i
  %.0117.ph691.i = phi i32 [ 0, %.lr.ph671.lr.ph.i ], [ %i.aqo, %.outer.i ]
  %.1122.ph690.i = phi ptr [ %scevgep.i, %.lr.ph671.lr.ph.i ], [ %i.fu, %.outer.i ]
  br label %bb.i

.thread551.i:                                     ; preds = %bb.al, %bb.af
  %.0120.i = phi i32 [ 0, %bb.af ], [ 20, %bb.al ]
  call void @free(ptr noundef nonnull %i.fn) #14
  br label %ea05.exit

.thread546.i:                                     ; preds = %bb.co
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.475, ptr noundef nonnull %i.d) #14
  call void @free(ptr noundef nonnull %.sroa.0.1.i) #14
  br label %ea05.exit

.thread546.thread559.i:                           ; preds = %bb.cv, %bb.cu, %.thread546.thread998.i
  %.0120536544562.i = phi i32 [ 14, %.thread546.thread998.i ], [ 13, %bb.cu ], [ %i.aqz, %bb.cv ] ; 2 uses
  %i.arh = call i32 @close(i32 noundef %i.aqq) #14 ; 0 uses
  %i.ari = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 48
  %i.ark = load i32, ptr %i.arj, align 8, !tbaa !30
  %.not178.i = icmp eq i32 %i.ark, 0
  br i1 %.not178.i, label %bb.cy, label %ea05.exit

bb.cy:                                            ; preds = %.thread546.thread559.i
  %i.arl = call i32 @cli_unlink(ptr noundef nonnull %i.d) #14 ; 0 uses
  br label %ea05.exit

ea05.exit:                                        ; preds = %.outer.i, %bb.i, %bb.l, %bb.n, %bb.p, %bb.q, %bb.s, %bb.u, %.backedge.i, %bb.ad, %bb.h, %.preheader605.preheader.i, %bb.k, %bb.w, %.thread551.i, %.thread546.i, %.thread546.thread559.i, %bb.cy
  %.0120536544554.i = phi i32 [ %.0120.i, %.thread551.i ], [ %.0120536544562.i, %.thread546.thread559.i ], [ %.0120536544562.i, %bb.cy ], [ 9, %.thread546.i ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.w ], [ 0, %bb.l ], [ %i.bi, %.preheader605.preheader.i ], [ %i.ez, %.backedge.i ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.u ], [ 20, %bb.ad ], [ 0, %bb.q ], [ %i.arf, %.outer.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.in

bb.cz:                                            ; preds = %bb.g
  %i.arm = load i32, ptr @fpu_words, align 4, !tbaa !54 ; 2 uses
  %i.arn = icmp eq i32 %i.arm, 0
  br i1 %i.arn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aro = tail call i32 @get_fpu_endian() #14    ; 2 uses
  store i32 %i.aro, ptr @fpu_words, align 4, !tbaa !54
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.arp = phi i32 [ %i.aro, %bb.da ], [ %i.arm, %bb.cz ]
  %i.arq = icmp eq i32 %i.arp, 3
  br i1 %i.arq, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.455) #14
  br label %bb.in

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.arr = load ptr, ptr %i.e, align 8, !tbaa !8  ; 9 uses
  %i.ars = tail call i32 @cli_checklimits(ptr noundef nonnull @.str.506, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14 ; 2 uses
  %i.art = icmp eq i32 %i.ars, 0
  br i1 %i.art, label %.lr.ph491.i, label %ea06.exit

.lr.ph491.i:                                      ; preds = %bb.dd
  %i.aru = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arr, i64 104 ; 6 uses
  %i.arw = getelementptr i8, ptr %i.arr, i64 16   ; 6 uses
  %i.arx = getelementptr i8, ptr %i.arr, i64 72   ; 6 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 26 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 57 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 19 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.asg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 26 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.b, i64 1023
  br label %bb.de

bb.de:                                            ; preds = %bb.il, %.lr.ph491.i
  %.0221489.i = phi i32 [ 0, %.lr.ph491.i ], [ %.1222.i, %bb.il ] ; 4 uses
  %.0236488.i = phi ptr [ %i.aru, %.lr.ph491.i ], [ %.1237.i, %bb.il ] ; 4 uses
  %i.asj = load ptr, ptr %i.arv, align 8, !tbaa !25
  %.val.i.i27 = load ptr, ptr %i.arw, align 8, !tbaa !51
  %.val4.i.i28 = load i64, ptr %i.arx, align 8, !tbaa !52
  %i.ask = ptrtoint ptr %.0236488.i to i64
  %i.asl = ptrtoint ptr %.val.i.i27 to i64
  %i.asm = add i64 %.val4.i.i28, %i.asl
  %i.asn = sub i64 %i.ask, %i.asm
  %i.aso = call ptr %i.asj(ptr noundef %i.arr, i64 noundef %i.asn, i64 noundef 8, i32 noundef 0) #14, !inline_history !63
  %.not.i29 = icmp eq ptr %i.aso, null
  br i1 %.not.i29, label %ea06.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.asp = load i32, ptr %.0236488.i, align 1, !tbaa !50 ; 2 uses
  %.not287.i = icmp eq i32 %i.asp, 1388987243
  br i1 %.not287.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.507, i32 noundef %i.asp) #14
  br label %ea06.exit

bb.dh:                                            ; preds = %bb.df
  %i.asq = getelementptr inbounds nuw i8, ptr %.0236488.i, i64 4
  %i.asr = load i32, ptr %i.asq, align 1, !tbaa !50 ; 2 uses
  %i.ass = xor i32 %i.asr, 44476                  ; 3 uses
  %i.ast = shl i32 %i.ass, 1                      ; 9 uses
  %i.asu = icmp slt i32 %i.ast, 0
  br i1 %i.asu, label %ea06.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.asv = getelementptr inbounds nuw i8, ptr %.0236488.i, i64 8 ; 3 uses
  %i.asw = icmp ult i32 %i.ass, 300
  br i1 %i.asw, label %bb.dj, label %bb.dq

bb.dj:                                            ; preds = %bb.di
  %i.asx = zext nneg i32 %i.ast to i64            ; 4 uses
  %i.asy = load ptr, ptr %i.arv, align 8, !tbaa !25
  %.val.i356.i = load ptr, ptr %i.arw, align 8, !tbaa !51
  %.val4.i357.i = load i64, ptr %i.arx, align 8, !tbaa !52
  %i.asz = ptrtoint ptr %i.asv to i64
  %i.ata = ptrtoint ptr %.val.i356.i to i64
  %i.atb = add i64 %.val4.i357.i, %i.ata
  %i.atc = sub i64 %i.asz, %i.atb
  %i.atd = call ptr %i.asy(ptr noundef nonnull %i.arr, i64 noundef %i.atc, i64 noundef range(i64 0, 4294967296) %i.asx, i32 noundef 0) #14, !inline_history !63
  %.not288.i = icmp eq ptr %i.atd, null
  br i1 %.not288.i, label %ea06.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.asv, i64 %i.asx, i1 false)
  %i.ate = trunc nuw nsw i32 %i.ass to i16
  %i.atf = add nuw nsw i16 %i.ate, -19649
  call fastcc void @LAME_decrypt(ptr noundef nonnull %i.a, i32 noundef %i.ast, i16 noundef zeroext %i.atf)
  %i.atg = icmp eq i32 %i.ast, 0
  br i1 %i.atg, label %u2a.exit.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ath = icmp samesign ult i32 %i.ast, 5
  %i.ati = load i8, ptr %i.a, align 16
  %i.atj = icmp ne i8 %i.ati, -1
  %or.cond411.not517.i = select i1 %i.ath, i1 true, i1 %i.atj
  %i.atk = load i8, ptr %i.ary, align 1
  %i.atl = icmp ne i8 %i.atk, -2
  %or.cond414.not514.i = select i1 %or.cond411.not517.i, i1 true, i1 %i.atl
  %i.atm = load i8, ptr %i.arz, align 2
  %.not.i.i = icmp eq i8 %i.atm, 0
  %or.cond511.i = select i1 %or.cond414.not514.i, i1 true, i1 %.not.i.i
  br i1 %or.cond511.i, label %.lr.ph.preheader.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.atn = add nsw i32 %i.ast, -2
  br label %.lr.ph49.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dl
  %i.ato = call i32 @llvm.umin.i32(i32 %i.ast, i32 20) ; 2 uses
  %i.atp = zext nneg i32 %i.ato to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.do, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.do ] ; 2 uses
  %.045.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.atx, %bb.do ]
  %i.atq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i ; 2 uses
  %i.atr = load i8, ptr %i.atq, align 2, !tbaa !50
  %.not43.i.i = icmp eq i8 %i.atr, 0
  br i1 %.not43.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atq, i64 1
  %i.att = load i8, ptr %i.ats, align 1, !tbaa !50
  %i.atu = icmp eq i8 %i.att, 0
  %i.atv = zext i1 %i.atu to i32
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.lr.ph.i.i
  %i.atw = phi i32 [ 0, %.lr.ph.i.i ], [ %i.atv, %bb.dn ]
  %i.atx = add i32 %i.atw, %.045.i.i              ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.aty = icmp samesign ult i64 %indvars.iv.next.i.i, %i.atp
  br i1 %i.aty, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.do
  %i.atz = shl i32 %i.atx, 2
  %.not42.i.i = icmp ult i32 %i.atz, %i.ato
  br i1 %.not42.i.i, label %u2a.exit.i, label %.lr.ph49.preheader.i.i

.lr.ph49.preheader.i.i:                           ; preds = %._crit_edge.i.i, %bb.dm
  %.035.i.i = phi i32 [ %i.atn, %bb.dm ], [ %i.ast, %._crit_edge.i.i ] ; 2 uses
  %.034.i.i = phi ptr [ %i.arz, %bb.dm ], [ %i.a, %._crit_edge.i.i ] ; 9 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %.035.i.i, i32 2)
  %i.aua = add nsw i32 %umax.i, -1
  %i.aub = lshr i32 %i.aua, 1
  %narrow = add nuw i32 %i.aub, 1
  %i.auc = zext i32 %narrow to i64                ; 2 uses
  %xtraiter = and i64 %i.auc, 7                   ; 3 uses
  %i.aud = icmp ult i32 %.035.i.i, 15
  br i1 %i.aud, label %.lr.ph49.i.i.epil.preheader, label %.lr.ph49.preheader.i.i.new

.lr.ph49.preheader.i.i.new:                       ; preds = %.lr.ph49.preheader.i.i
  %unroll_iter = and i64 %i.auc, 4294967288
  br label %.lr.ph49.i.i

.lr.ph49.i.i:                                     ; preds = %.lr.ph49.i.i, %.lr.ph49.preheader.i.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph49.preheader.i.i.new ], [ %indvars.iv.next.i.7, %.lr.ph49.i.i ] ; 9 uses
  %.03646.i.i = phi ptr [ %i.a, %.lr.ph49.preheader.i.i.new ], [ %i.avi, %.lr.ph49.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph49.preheader.i.i.new ], [ %niter.next.7, %.lr.ph49.i.i ]
  %i.aue = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !50
  %i.aug = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 1
  store i8 %i.auf, ptr %.03646.i.i, align 1, !tbaa !50
  %i.auh = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 2
  %i.auj = load i8, ptr %i.aui, align 1, !tbaa !50
  %i.auk = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 2
  store i8 %i.auj, ptr %i.aug, align 1, !tbaa !50
  %i.aul = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 4
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !50
  %i.auo = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 3
  store i8 %i.aun, ptr %i.auk, align 1, !tbaa !50
  %i.aup = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 6
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !50
  %i.aus = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 4
  store i8 %i.aur, ptr %i.auo, align 1, !tbaa !50
  %i.aut = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 8
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !50
  %i.auw = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 5
  store i8 %i.auv, ptr %i.aus, align 1, !tbaa !50
  %i.aux = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 10
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !50
  %i.ava = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 6
  store i8 %i.auz, ptr %i.auw, align 1, !tbaa !50
  %i.avb = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 12
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !50
  %i.ave = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 7
  store i8 %i.avd, ptr %i.ava, align 1, !tbaa !50
  %i.avf = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 14
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !50
  %i.avi = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 8 ; 2 uses
  store i8 %i.avh, ptr %i.ave, align 1, !tbaa !50
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 16 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %u2a.exit.i.loopexit.unr-lcssa, label %.lr.ph49.i.i

u2a.exit.i.loopexit.unr-lcssa:                    ; preds = %.lr.ph49.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %u2a.exit.i, label %.lr.ph49.i.i.epil.preheader

.lr.ph49.i.i.epil.preheader:                      ; preds = %u2a.exit.i.loopexit.unr-lcssa, %.lr.ph49.preheader.i.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph49.preheader.i.i ], [ %indvars.iv.next.i.7, %u2a.exit.i.loopexit.unr-lcssa ]
  %.03646.i.i.epil.init = phi ptr [ %i.a, %.lr.ph49.preheader.i.i ], [ %i.avi, %u2a.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod555 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod555)
  br label %.lr.ph49.i.i.epil

.lr.ph49.i.i.epil:                                ; preds = %.lr.ph49.i.i.epil, %.lr.ph49.i.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph49.i.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph49.i.i.epil.preheader ] ; 2 uses
  %.03646.i.i.epil = phi ptr [ %i.avl, %.lr.ph49.i.i.epil ], [ %.03646.i.i.epil.init, %.lr.ph49.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph49.i.i.epil ], [ 0, %.lr.ph49.i.i.epil.preheader ]
  %i.avj = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i.epil
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !50
  %i.avl = getelementptr inbounds nuw i8, ptr %.03646.i.i.epil, i64 1
  store i8 %i.avk, ptr %.03646.i.i.epil, align 1, !tbaa !50
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %u2a.exit.i, label %.lr.ph49.i.i.epil, !llvm.loop !64

u2a.exit.i:                                       ; preds = %u2a.exit.i.loopexit.unr-lcssa, %.lr.ph49.i.i.epil, %._crit_edge.i.i, %bb.dk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.459, ptr noundef nonnull %i.a) #14
  %i.avm = icmp eq i32 %i.asr, 44463
  br i1 %i.avm, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %u2a.exit.i
  %i.avn = load i128, ptr %i.a, align 16
  %i.avo = xor i128 112072022528062101447413485049216908862, %i.avn
  %i.avp = getelementptr i8, ptr %i.a, i64 3
  %i.avq = load i128, ptr %i.avp, align 1
  %i.avr = xor i128 80066441183196353176882849944769418561, %i.avq
  %i.avs = or i128 %i.avo, %i.avr
  %i.avt = icmp ne i128 %i.avs, 0
  %i.avu = zext i1 %i.avt to i32
  %.not289.i = icmp eq i32 %i.avu, 0
  br label %bb.dr

bb.dq:                                            ; preds = %bb.di
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.509) #14
  %.pre.i30 = zext nneg i32 %i.ast to i64
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %u2a.exit.i
  %.pre-phi.i31 = phi i64 [ %i.asx, %bb.dp ], [ %i.asx, %u2a.exit.i ], [ %.pre.i30, %bb.dq ]
  %.0220.i = phi i1 [ %.not289.i, %bb.dp ], [ false, %u2a.exit.i ], [ false, %bb.dq ] ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.asv, i64 %.pre-phi.i31 ; 3 uses
  %i.avw = load ptr, ptr %i.arv, align 8, !tbaa !25
  %.val.i358.i = load ptr, ptr %i.arw, align 8, !tbaa !51
  %.val4.i359.i = load i64, ptr %i.arx, align 8, !tbaa !52
  %i.avx = ptrtoint ptr %i.avv to i64
  %i.avy = ptrtoint ptr %.val.i358.i to i64
  %i.avz = add i64 %.val4.i359.i, %i.avy
  %i.awa = sub i64 %i.avx, %i.avz
  %i.awb = call ptr %i.avw(ptr noundef %i.arr, i64 noundef %i.awa, i64 noundef 4, i32 noundef 0) #14, !inline_history !63
  %.not290.i = icmp eq ptr %i.awb, null
  br i1 %.not290.i, label %ea06.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.awc = load i32, ptr %i.avv, align 1, !tbaa !50
end_hunk_1
begin_hunk_2_@cli_scanautoit:bb.a

bb.dx:                                            ; preds = %bb.dw
  %i.axc = add nsw i32 %i.awe, -2
  br label %.lr.ph49.preheader.i370.i

.lr.ph.preheader.i362.i:                          ; preds = %bb.dw
  %i.axd = call i32 @llvm.umin.i32(i32 %i.awe, i32 20) ; 2 uses
  %i.axe = zext nneg i32 %i.axd to i64
  br label %.lr.ph.i363.i

.lr.ph.i363.i:                                    ; preds = %bb.dz, %.lr.ph.preheader.i362.i
  %indvars.iv.i364.i = phi i64 [ 0, %.lr.ph.preheader.i362.i ], [ %indvars.iv.next.i367.i, %bb.dz ] ; 2 uses
  %.045.i365.i = phi i32 [ 0, %.lr.ph.preheader.i362.i ], [ %i.axm, %bb.dz ]
  %i.axf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i364.i ; 2 uses
  %i.axg = load i8, ptr %i.axf, align 2, !tbaa !50
  %.not43.i366.i = icmp eq i8 %i.axg, 0
  br i1 %.not43.i366.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i363.i
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axf, i64 1
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !50
  %i.axj = icmp eq i8 %i.axi, 0
  %i.axk = zext i1 %i.axj to i32
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph.i363.i
  %i.axl = phi i32 [ 0, %.lr.ph.i363.i ], [ %i.axk, %bb.dy ]
  %i.axm = add i32 %i.axl, %.045.i365.i           ; 2 uses
  %indvars.iv.next.i367.i = add nuw nsw i64 %indvars.iv.i364.i, 2 ; 2 uses
  %i.axn = icmp samesign ult i64 %indvars.iv.next.i367.i, %i.axe
  br i1 %i.axn, label %.lr.ph.i363.i, label %._crit_edge.i368.i

._crit_edge.i368.i:                               ; preds = %bb.dz
  %i.axo = shl i32 %i.axm, 2
  %.not42.i369.i = icmp ult i32 %i.axo, %i.axd
  br i1 %.not42.i369.i, label %u2a.exit378.i, label %.lr.ph49.preheader.i370.i

.lr.ph49.preheader.i370.i:                        ; preds = %._crit_edge.i368.i, %bb.dx
  %.035.i371.i = phi i32 [ %i.axc, %bb.dx ], [ %i.awe, %._crit_edge.i368.i ] ; 2 uses
  %.034.i372.i = phi ptr [ %i.arz, %bb.dx ], [ %i.a, %._crit_edge.i368.i ] ; 9 uses
  %umax549.i = call i32 @llvm.umax.i32(i32 %.035.i371.i, i32 2)
  %i.axp = add nsw i32 %umax549.i, -1
  %i.axq = lshr i32 %i.axp, 1
  %narrow566 = add nuw i32 %i.axq, 1
  %i.axr = zext i32 %narrow566 to i64             ; 2 uses
  %xtraiter556 = and i64 %i.axr, 7                ; 3 uses
  %i.axs = icmp ult i32 %.035.i371.i, 15
  br i1 %i.axs, label %.lr.ph49.i373.i.epil.preheader, label %.lr.ph49.preheader.i370.i.new

.lr.ph49.preheader.i370.i.new:                    ; preds = %.lr.ph49.preheader.i370.i
  %unroll_iter560 = and i64 %i.axr, 4294967288
  br label %.lr.ph49.i373.i

.lr.ph49.i373.i:                                  ; preds = %.lr.ph49.i373.i, %.lr.ph49.preheader.i370.i.new
  %indvars.iv546.i = phi i64 [ 0, %.lr.ph49.preheader.i370.i.new ], [ %indvars.iv.next547.i.7, %.lr.ph49.i373.i ] ; 9 uses
  %.03646.i375.i = phi ptr [ %i.a, %.lr.ph49.preheader.i370.i.new ], [ %i.ayx, %.lr.ph49.i373.i ] ; 9 uses
  %niter561 = phi i64 [ 0, %.lr.ph49.preheader.i370.i.new ], [ %niter561.next.7, %.lr.ph49.i373.i ]
  %i.axt = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !50
  %i.axv = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 1
  store i8 %i.axu, ptr %.03646.i375.i, align 1, !tbaa !50
  %i.axw = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 2
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !50
  %i.axz = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 2
  store i8 %i.axy, ptr %i.axv, align 1, !tbaa !50
  %i.aya = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 4
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !50
  %i.ayd = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 3
  store i8 %i.ayc, ptr %i.axz, align 1, !tbaa !50
  %i.aye = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 6
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !50
  %i.ayh = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 4
  store i8 %i.ayg, ptr %i.ayd, align 1, !tbaa !50
  %i.ayi = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 8
  %i.ayk = load i8, ptr %i.ayj, align 1, !tbaa !50
  %i.ayl = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 5
  store i8 %i.ayk, ptr %i.ayh, align 1, !tbaa !50
  %i.aym = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 10
  %i.ayo = load i8, ptr %i.ayn, align 1, !tbaa !50
  %i.ayp = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 6
  store i8 %i.ayo, ptr %i.ayl, align 1, !tbaa !50
  %i.ayq = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 12
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !50
  %i.ayt = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 7
  store i8 %i.ays, ptr %i.ayp, align 1, !tbaa !50
  %i.ayu = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 14
  %i.ayw = load i8, ptr %i.ayv, align 1, !tbaa !50
  %i.ayx = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 8 ; 2 uses
  store i8 %i.ayw, ptr %i.ayt, align 1, !tbaa !50
  %indvars.iv.next547.i.7 = add nuw nsw i64 %indvars.iv546.i, 16 ; 2 uses
  %niter561.next.7 = add i64 %niter561, 8         ; 2 uses
  %niter561.ncmp.7 = icmp eq i64 %niter561.next.7, %unroll_iter560
  br i1 %niter561.ncmp.7, label %u2a.exit378.i.loopexit.unr-lcssa, label %.lr.ph49.i373.i

u2a.exit378.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph49.i373.i
  %lcmp.mod558.not = icmp eq i64 %xtraiter556, 0
  br i1 %lcmp.mod558.not, label %u2a.exit378.i, label %.lr.ph49.i373.i.epil.preheader

.lr.ph49.i373.i.epil.preheader:                   ; preds = %u2a.exit378.i.loopexit.unr-lcssa, %.lr.ph49.preheader.i370.i
  %indvars.iv546.i.epil.init = phi i64 [ 0, %.lr.ph49.preheader.i370.i ], [ %indvars.iv.next547.i.7, %u2a.exit378.i.loopexit.unr-lcssa ]
  %.03646.i375.i.epil.init = phi ptr [ %i.a, %.lr.ph49.preheader.i370.i ], [ %i.ayx, %u2a.exit378.i.loopexit.unr-lcssa ]
  %lcmp.mod559 = icmp ne i64 %xtraiter556, 0
  call void @llvm.assume(i1 %lcmp.mod559)
  br label %.lr.ph49.i373.i.epil

.lr.ph49.i373.i.epil:                             ; preds = %.lr.ph49.i373.i.epil, %.lr.ph49.i373.i.epil.preheader
  %indvars.iv546.i.epil = phi i64 [ %indvars.iv.next547.i.epil, %.lr.ph49.i373.i.epil ], [ %indvars.iv546.i.epil.init, %.lr.ph49.i373.i.epil.preheader ] ; 2 uses
  %.03646.i375.i.epil = phi ptr [ %i.aza, %.lr.ph49.i373.i.epil ], [ %.03646.i375.i.epil.init, %.lr.ph49.i373.i.epil.preheader ] ; 2 uses
  %epil.iter557 = phi i64 [ %epil.iter557.next, %.lr.ph49.i373.i.epil ], [ 0, %.lr.ph49.i373.i.epil.preheader ]
  %i.ayy = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i.epil
  %i.ayz = load i8, ptr %i.ayy, align 1, !tbaa !50
  %i.aza = getelementptr inbounds nuw i8, ptr %.03646.i375.i.epil, i64 1
  store i8 %i.ayz, ptr %.03646.i375.i.epil, align 1, !tbaa !50
  %indvars.iv.next547.i.epil = add nuw nsw i64 %indvars.iv546.i.epil, 2
  %epil.iter557.next = add i64 %epil.iter557, 1   ; 2 uses
  %epil.iter557.cmp.not = icmp eq i64 %epil.iter557.next, %xtraiter556
  br i1 %epil.iter557.cmp.not, label %u2a.exit378.i, label %.lr.ph49.i373.i.epil, !llvm.loop !65

u2a.exit378.i:                                    ; preds = %u2a.exit378.i.loopexit.unr-lcssa, %.lr.ph49.i373.i.epil, %._crit_edge.i368.i, %bb.dv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.460, ptr noundef nonnull %i.a) #14
  br label %._crit_edge576.i

._crit_edge576.i:                                 ; preds = %u2a.exit378.i, %bb.dt
  %i.azb = getelementptr inbounds nuw i8, ptr %i.awg, i64 %i.awk ; 7 uses
  %i.azc = load ptr, ptr %i.arv, align 8, !tbaa !25
  %.val.i379.i = load ptr, ptr %i.arw, align 8, !tbaa !51
  %.val4.i380.i = load i64, ptr %i.arx, align 8, !tbaa !52
  %i.azd = ptrtoint ptr %i.azb to i64
  %i.aze = ptrtoint ptr %.val.i379.i to i64
  %i.azf = add i64 %.val4.i380.i, %i.aze
  %i.azg = sub i64 %i.azd, %i.azf
  %i.azh = call ptr %i.azc(ptr noundef %i.arr, i64 noundef %i.azg, i64 noundef 13, i32 noundef 0) #14, !inline_history !63
  %.not292.i = icmp eq ptr %i.azh, null
  br i1 %.not292.i, label %ea06.exit, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge576.i
  %i.azi = load i8, ptr %i.azb, align 1, !tbaa !50
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azb, i64 1
  %i.azk = load i32, ptr %i.azj, align 1, !tbaa !50 ; 3 uses
  %i.azl = xor i32 %i.azk, 34748                  ; 2 uses
  store i32 %i.azl, ptr %i.asa, align 4, !tbaa !66
  %i.azm = icmp slt i32 %i.azk, 0
  br i1 %i.azm, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.461) #14
  br label %ea06.exit

bb.ec:                                            ; preds = %bb.ea
  %.not293.i = icmp eq i32 %i.azk, 34748
  br i1 %.not293.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.462) #14
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azb, i64 29
  br label %bb.il

bb.ee:                                            ; preds = %bb.ec
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.463, i32 noundef %i.azl) #14
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azb, i64 5
  %i.azp = load i32, ptr %i.azo, align 1, !tbaa !50
  %i.azq = xor i32 %i.azp, 34748
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.464, i32 noundef %i.azq) #14
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azb, i64 9
  %i.azs = load i32, ptr %i.azr, align 1, !tbaa !50
  %i.azt = xor i32 %i.azs, 42629
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.465, i32 noundef %i.azt) #14
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azb, i64 29 ; 5 uses
  %i.azv = load i32, ptr %i.asa, align 4, !tbaa !66
  %i.azw = zext i32 %i.azv to i64
  %i.azx = call i32 @cli_checklimits(ptr noundef nonnull @.str.457, ptr noundef nonnull %0, i64 noundef %i.azw, i64 noundef 0, i64 noundef 0) #14
  %.not294.i = icmp eq i32 %i.azx, 0
  br i1 %.not294.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.azy = load i32, ptr %i.asa, align 4, !tbaa !66
  %i.azz = zext i32 %i.azy to i64
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azu, i64 %i.azz
  br label %bb.il

bb.eg:                                            ; preds = %bb.ee
  %i.bab = icmp eq i8 %i.azi, 1                   ; 2 uses
  %i.bac = load i32, ptr %i.asa, align 4          ; 2 uses
  %i.bad = icmp ult i32 %i.bac, 4
  %or.cond9.i33 = select i1 %i.bab, i1 %i.bad, i1 false
  br i1 %or.cond9.i33, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.466) #14
  br label %bb.il

bb.ei:                                            ; preds = %bb.eg
  %i.bae = zext i32 %i.bac to i64
  %i.baf = add i32 %.0221489.i, 1                 ; 6 uses
  %i.bag = call ptr @cli_max_malloc(i64 noundef %i.bae) #14 ; 2 uses
  store ptr %i.bag, ptr %i.asb, align 8, !tbaa !68
  %.not295.i = icmp eq ptr %i.bag, null
  br i1 %.not295.i, label %ea06.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.bah = load i32, ptr %i.asa, align 4, !tbaa !66
  %i.bai = zext i32 %i.bah to i64
  %i.baj = load ptr, ptr %i.arv, align 8, !tbaa !25
  %.val.i381.i = load ptr, ptr %i.arw, align 8, !tbaa !51
  %.val4.i382.i = load i64, ptr %i.arx, align 8, !tbaa !52
  %i.bak = ptrtoint ptr %i.azu to i64
  %i.bal = ptrtoint ptr %.val.i381.i to i64
  %i.bam = add i64 %.val4.i382.i, %i.bal
  %i.ban = sub i64 %i.bak, %i.bam
  %i.bao = call ptr %i.baj(ptr noundef nonnull %i.arr, i64 noundef %i.ban, i64 noundef range(i64 0, 4294967296) %i.bai, i32 noundef 0) #14, !inline_history !63
  %.not296.i = icmp eq ptr %i.bao, null
  br i1 %.not296.i, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.467) #14
  %i.bap = load ptr, ptr %i.asb, align 8, !tbaa !68
  call void @free(ptr noundef %i.bap) #14
  br label %ea06.exit

bb.el:                                            ; preds = %bb.ej
  %i.baq = load ptr, ptr %i.asb, align 8, !tbaa !68
  %i.bar = load i32, ptr %i.asa, align 4, !tbaa !66
  %i.bas = zext i32 %i.bar to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.baq, ptr nonnull align 1 %i.azu, i64 %i.bas, i1 false)
  %i.bat = load i32, ptr %i.asa, align 4, !tbaa !66 ; 2 uses
  %i.bau = zext i32 %i.bat to i64
  %i.bav = getelementptr inbounds nuw i8, ptr %i.azu, i64 %i.bau ; 5 uses
  %i.baw = load ptr, ptr %i.asb, align 8, !tbaa !68
  call fastcc void @LAME_decrypt(ptr noundef %i.baw, i32 noundef %i.bat, i16 noundef zeroext 9335)
  br i1 %i.bab, label %bb.em, label %bb.ff

bb.em:                                            ; preds = %bb.el
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.468) #14
  %i.bax = load ptr, ptr %i.asb, align 8, !tbaa !68 ; 2 uses
  %i.bay = load i32, ptr %i.bax, align 1, !tbaa !50
  %.not297.i = icmp eq i32 %i.bay, 909132101
  br i1 %.not297.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.469) #14
  %i.baz = load ptr, ptr %i.asb, align 8, !tbaa !68
  call void @free(ptr noundef %i.baz) #14
  br label %bb.il

bb.eo:                                            ; preds = %bb.em
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bax, i64 4
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !54 ; 2 uses
  %i.bbc = call i32 @llvm.bswap.i32(i32 %i.bbb)   ; 2 uses
  store i32 %i.bbc, ptr %i.asc, align 8, !tbaa !69
  %.not298.i = icmp eq i32 %i.bbb, 0
  br i1 %.not298.i, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.bbd = load i32, ptr %i.asa, align 4, !tbaa !66 ; 2 uses
  store i32 %i.bbd, ptr %i.asc, align 8, !tbaa !69
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.bbe = phi i32 [ %i.bbd, %bb.ep ], [ %i.bbc, %bb.eo ]
  %i.bbf = zext i32 %i.bbe to i64
  %i.bbg = call i32 @cli_checklimits(ptr noundef nonnull @.str.457, ptr noundef nonnull %0, i64 noundef %i.bbf, i64 noundef 0, i64 noundef 0) #14
  %.not299.i = icmp eq i32 %i.bbg, 0
  br i1 %.not299.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.bbh = load ptr, ptr %i.asb, align 8, !tbaa !68
  call void @free(ptr noundef %i.bbh) #14
  br label %bb.il

bb.es:                                            ; preds = %bb.eq
  %i.bbi = load i32, ptr %i.asc, align 8, !tbaa !69
  %i.bbj = zext i32 %i.bbi to i64
  %i.bbk = call ptr @cli_max_malloc(i64 noundef %i.bbj) #14 ; 2 uses
  store ptr %i.bbk, ptr %2, align 8, !tbaa !70
  %.not300.i = icmp eq ptr %i.bbk, null
  br i1 %.not300.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.bbl = load ptr, ptr %i.asb, align 8, !tbaa !68
  call void @free(ptr noundef %i.bbl) #14
  br label %ea06.exit

bb.eu:                                            ; preds = %bb.es
  %i.bbm = load i32, ptr %i.asc, align 8, !tbaa !69
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.470, i32 noundef %i.bbm) #14
  store i32 0, ptr %i.asd, align 8, !tbaa !71
  store i32 8, ptr %i.ase, align 4, !tbaa !72
  store i32 0, ptr %i.asf, align 4, !tbaa !50
  store i32 0, ptr %i.asg, align 8, !tbaa !73
  store i32 0, ptr %i.ash, align 8, !tbaa !74
  %i.bbn = load i32, ptr %i.asc, align 8
  %.not523.i = icmp eq i32 %i.bbn, 0
  br i1 %.not523.i, label %.thread.i37, label %.lr.ph478.i

.lr.ph478.i:                                      ; preds = %bb.eu, %.loopexit.i36
  %i.bbo = call fastcc i32 @getbits(ptr noundef %2, i32 noundef 1)
  %.not302.i = icmp eq i32 %i.bbo, 0
  br i1 %.not302.i, label %bb.ev, label %bb.fd

bb.ev:                                            ; preds = %.lr.ph478.i
  %i.bbp = call fastcc i32 @getbits(ptr noundef %2, i32 noundef 15) ; 4 uses
  %i.bbq = call fastcc i32 @getbits(ptr noundef %2, i32 noundef 2) ; 2 uses
  %i.bbr = icmp eq i32 %i.bbq, 3
  br i1 %i.bbr, label %bb.ew, label %.loopexit438.i

bb.ew:                                            ; preds = %bb.ev
  %i.bbs = call fastcc i32 @getbits(ptr noundef %2, i32 noundef 3) ; 2 uses
  %i.bbt = icmp eq i32 %i.bbs, 7
  br i1 %i.bbt, label %bb.ex, label %.loopexit438.i

bb.ex:                                            ; preds = %bb.ew
  %i.bbu = call fastcc i32 @getbits(ptr noundef %2, i32 noundef 5) ; 2 uses
  %i.bbv = icmp eq i32 %i.bbu, 31
  br i1 %i.bbv, label %bb.ey, label %.loopexit438.i

bb.ey:                                            ; preds = %bb.ex
  %i.bbw = call fastcc i32 @getbits(ptr noundef %2, i32 noundef 8) ; 2 uses
  %i.bbx = icmp eq i32 %i.bbw, 255
  br i1 %i.bbx, label %.preheader437.i, label %.loopexit438.i

.preheader437.i:                                  ; preds = %bb.ey, %.preheader437.i
  %.0215.i = phi i32 [ %i.bca, %.preheader437.i ], [ 296, %bb.ey ] ; 2 uses
  %i.bby = call fastcc i32 @getbits(ptr noundef %2, i32 noundef 8) ; 2 uses
  %i.bbz = icmp eq i32 %i.bby, 255
  %i.bca = add i32 %.0215.i, 255
  br i1 %i.bbz, label %.preheader437.i, label %.loopexit438.i

.loopexit438.i:                                   ; preds = %.preheader437.i, %bb.ey, %bb.ex, %bb.ew, %bb.ev
  %.0216.i = phi i32 [ %i.bbq, %bb.ev ], [ %i.bbw, %bb.ey ], [ %i.bbu, %bb.ex ], [ %i.bbs, %bb.ew ], [ %i.bby, %.preheader437.i ]
  %.1.i38 = phi i32 [ 0, %bb.ev ], [ 41, %bb.ey ], [ 10, %bb.ex ], [ 3, %bb.ew ], [ %.0215.i, %.preheader437.i ]
  %3 = add nuw nsw i32 %.0216.i, 3
  %i.bcb = add i32 %3, %.1.i38                    ; 5 uses
  %i.bcc = load i32, ptr %i.ash, align 8, !tbaa !74
  %.not303.i = icmp eq i32 %i.bcc, 0
  br i1 %.not303.i, label %bb.ez, label %.thread.i37

bb.ez:                                            ; preds = %.loopexit438.i
  %i.bcd = load i32, ptr %i.asc, align 8, !tbaa !69 ; 3 uses
  %i.bce = icmp eq i32 %i.bcd, 0
  %i.bcf = zext i32 %i.bcb to i64                 ; 2 uses
  %i.bcg = add i32 %i.bcb, -1                     ; 2 uses
  %i.bch = icmp uge i32 %i.bcg, %i.bcd
  %or.cond348.i = select i1 %i.bce, i1 true, i1 %i.bch
  br i1 %or.cond348.i, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.bci = zext i32 %i.bcd to i64
  %i.bcj = load ptr, ptr %2, align 8, !tbaa !70   ; 3 uses
  %i.bck = load i32, ptr %i.asd, align 8, !tbaa !71 ; 5 uses
  %i.bcl = zext i32 %i.bck to i64
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcj, i64 %i.bcl
  %i.bcn = ptrtoint ptr %i.bcm to i64             ; 2 uses
  %i.bco = ptrtoint ptr %i.bcj to i64             ; 3 uses
  %i.bcp = add i64 %i.bcn, %i.bcf                 ; 2 uses
  %i.bcq = add i64 %i.bco, %i.bci                 ; 4 uses
  %.not306.i = icmp ule i64 %i.bcp, %i.bcq
  %i.bcr = icmp ugt i64 %i.bcp, %i.bco
  %or.cond349.i = and i1 %.not306.i, %i.bcr
  %i.bcs = icmp ugt i64 %i.bcq, %i.bcn
  %or.cond350.i = and i1 %i.bcs, %or.cond349.i
  br i1 %or.cond350.i, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.bct = sub i32 %i.bck, %i.bbp
  %i.bcu = zext i32 %i.bct to i64
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcj, i64 %i.bcu
  %i.bcw = ptrtoint ptr %i.bcv to i64             ; 2 uses
  %i.bcx = add i64 %i.bcw, %i.bcf                 ; 2 uses
  %.not308.i = icmp ule i64 %i.bcx, %i.bcq
  %i.bcy = icmp ugt i64 %i.bcx, %i.bco
  %or.cond351.i = and i1 %.not308.i, %i.bcy
  %i.bcz = icmp ugt i64 %i.bcq, %i.bcw
  %or.cond352.i = and i1 %i.bcz, %or.cond351.i
  br i1 %or.cond352.i, label %.lr.ph.i39.preheader, label %bb.fc

.lr.ph.i39.preheader:                             ; preds = %bb.fb
  %xtraiter562 = and i32 %i.bcb, 1
  %lcmp.mod563.not = icmp eq i32 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %.lr.ph.i39.prol.loopexit, label %.lr.ph.i39.prol

.lr.ph.i39.prol:                                  ; preds = %.lr.ph.i39.preheader
  %i.bda = add nsw i32 %i.bcb, -1
  %i.bdb = load ptr, ptr %2, align 8, !tbaa !70   ; 2 uses
  %i.bdc = sub i32 %i.bck, %i.bbp
  %i.bdd = zext i32 %i.bdc to i64
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %i.bdd
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !50
  %i.bdg = zext i32 %i.bck to i64
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %i.bdg
  store i8 %i.bdf, ptr %i.bdh, align 1, !tbaa !50
  %i.bdi = load i32, ptr %i.asd, align 8, !tbaa !71
  %i.bdj = add i32 %i.bdi, 1                      ; 3 uses
  store i32 %i.bdj, ptr %i.asd, align 8, !tbaa !71
  br label %.lr.ph.i39.prol.loopexit

.lr.ph.i39.prol.loopexit:                         ; preds = %.lr.ph.i39.prol, %.lr.ph.i39.preheader
  %.lcssa536.unr = phi i32 [ poison, %.lr.ph.i39.preheader ], [ %i.bdj, %.lr.ph.i39.prol ]
  %.unr = phi i32 [ %i.bck, %.lr.ph.i39.preheader ], [ %i.bdj, %.lr.ph.i39.prol ]
  %.1217476.i.unr = phi i32 [ %i.bcb, %.lr.ph.i39.preheader ], [ %i.bda, %.lr.ph.i39.prol ]
  %i.bdk = icmp eq i32 %i.bcg, 0
  br i1 %i.bdk, label %.loopexit.i36, label %.lr.ph.i39

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  store i32 1, ptr %i.ash, align 8, !tbaa !74
  br label %.thread.i37

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.prol.loopexit, %.lr.ph.i39
  %i.bdl = phi i32 [ %i.bee, %.lr.ph.i39 ], [ %.unr, %.lr.ph.i39.prol.loopexit ] ; 2 uses
  %.1217476.i = phi i32 [ %i.bdv, %.lr.ph.i39 ], [ %.1217476.i.unr, %.lr.ph.i39.prol.loopexit ]
  %i.bdm = load ptr, ptr %2, align 8, !tbaa !70   ; 2 uses
  %i.bdn = sub i32 %i.bdl, %i.bbp
  %i.bdo = zext i32 %i.bdn to i64
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdm, i64 %i.bdo
  %i.bdq = load i8, ptr %i.bdp, align 1, !tbaa !50
  %i.bdr = zext i32 %i.bdl to i64
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdm, i64 %i.bdr
  store i8 %i.bdq, ptr %i.bds, align 1, !tbaa !50
  %i.bdt = load i32, ptr %i.asd, align 8, !tbaa !71
  %i.bdu = add i32 %i.bdt, 1                      ; 3 uses
  store i32 %i.bdu, ptr %i.asd, align 8, !tbaa !71
  %i.bdv = add i32 %.1217476.i, -2                ; 2 uses
  %i.bdw = load ptr, ptr %2, align 8, !tbaa !70   ; 2 uses
  %i.bdx = sub i32 %i.bdu, %i.bbp
  %i.bdy = zext i32 %i.bdx to i64
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdw, i64 %i.bdy
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !50
  %i.beb = zext i32 %i.bdu to i64
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bdw, i64 %i.beb
  store i8 %i.bea, ptr %i.bec, align 1, !tbaa !50
  %i.bed = load i32, ptr %i.asd, align 8, !tbaa !71
  %i.bee = add i32 %i.bed, 1                      ; 3 uses
  store i32 %i.bee, ptr %i.asd, align 8, !tbaa !71
  %.not309.i.1 = icmp eq i32 %i.bdv, 0
  br i1 %.not309.i.1, label %.loopexit.i36, label %.lr.ph.i39

bb.fd:                                            ; preds = %.lr.ph478.i
  %i.bef = call fastcc i32 @getbits(ptr noundef %2, i32 noundef 8)
  %i.beg = trunc i32 %i.bef to i8
  %i.beh = load ptr, ptr %2, align 8, !tbaa !70
  %i.bei = load i32, ptr %i.asd, align 8, !tbaa !71
  %i.bej = zext i32 %i.bei to i64
  %i.bek = getelementptr inbounds nuw i8, ptr %i.beh, i64 %i.bej
  store i8 %i.beg, ptr %i.bek, align 1, !tbaa !50
  %i.bel = load i32, ptr %i.asd, align 8, !tbaa !71
  %i.bem = add i32 %i.bel, 1                      ; 2 uses
  store i32 %i.bem, ptr %i.asd, align 8, !tbaa !71
  br label %.loopexit.i36

.loopexit.i36:                                    ; preds = %.lr.ph.i39.prol.loopexit, %.lr.ph.i39, %bb.fd
  %i.ben = phi i32 [ %i.bem, %bb.fd ], [ %.lcssa536.unr, %.lr.ph.i39.prol.loopexit ], [ %i.bee, %.lr.ph.i39 ]
  %i.beo = load i32, ptr %i.ash, align 8, !tbaa !74
  %.not301.i = icmp eq i32 %i.beo, 0
  %i.bep = load i32, ptr %i.asc, align 8
  %i.beq = icmp ult i32 %i.ben, %i.bep
  %i.ber = select i1 %.not301.i, i1 %i.beq, i1 false
  br i1 %i.ber, label %.lr.ph478.i, label %.thread.i37

.thread.i37:                                      ; preds = %.loopexit.i36, %.loopexit438.i, %bb.fc, %bb.eu
  %i.bes = load ptr, ptr %i.asb, align 8, !tbaa !68
  call void @free(ptr noundef %i.bes) #14
  %i.bet = load i32, ptr %i.ash, align 8, !tbaa !74
  %.not310.i = icmp eq i32 %i.bet, 0
  br i1 %.not310.i, label %.thread._crit_edge.i, label %bb.fe

.thread._crit_edge.i:                             ; preds = %.thread.i37
  %.pre556.i = load i32, ptr %i.asc, align 8, !tbaa !69
  br label %bb.fg

bb.fe:                                            ; preds = %.thread.i37
  %i.beu = load i32, ptr %i.asd, align 8, !tbaa !71
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.510, i32 noundef %i.beu) #14
  %i.bev = load i32, ptr %i.asd, align 8, !tbaa !71 ; 2 uses
  store i32 %i.bev, ptr %i.asc, align 8, !tbaa !69
  br label %bb.fg

bb.ff:                                            ; preds = %bb.el
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.472) #14
  %i.bew = load ptr, ptr %i.asb, align 8, !tbaa !68
  store ptr %i.bew, ptr %2, align 8, !tbaa !70
  %i.bex = load i32, ptr %i.asa, align 4, !tbaa !66 ; 2 uses
  store i32 %i.bex, ptr %i.asc, align 8, !tbaa !69
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %.thread._crit_edge.i
  %i.bey = phi i32 [ %.pre556.i, %.thread._crit_edge.i ], [ %i.bev, %bb.fe ], [ %i.bex, %bb.ff ] ; 4 uses
  %i.bez = icmp ult i32 %i.bey, 4
  br i1 %i.bez, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.473) #14
  %i.bfa = load ptr, ptr %2, align 8, !tbaa !70
  call void @free(ptr noundef %i.bfa) #14
  br label %bb.il

bb.fi:                                            ; preds = %bb.fg
  br i1 %.0220.i, label %bb.fj, label %bb.hv

bb.fj:                                            ; preds = %bb.fi
  store i32 %i.bey, ptr %i.asa, align 4, !tbaa !66
  %i.bfb = zext i32 %i.bey to i64
  %i.bfc = call ptr @cli_max_malloc(i64 noundef %i.bfb) #14 ; 3 uses
  %.not311.i = icmp eq ptr %i.bfc, null
  br i1 %.not311.i, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.bfd = load ptr, ptr %2, align 8, !tbaa !70
  call void @free(ptr noundef %i.bfd) #14
  br label %ea06.exit

bb.fl:                                            ; preds = %bb.fj
  store i32 0, ptr %i.asd, align 8, !tbaa !71
  store i32 4, ptr %i.ase, align 4, !tbaa !72
  %i.bfe = load ptr, ptr %2, align 8, !tbaa !70
  %i.bff = load i32, ptr %i.bfe, align 1, !tbaa !50 ; 2 uses
  store i32 %i.bff, ptr %i.asg, align 8, !tbaa !73
  store i32 0, ptr %i.ash, align 8, !tbaa !74
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.511, i32 noundef %i.bff) #14
  %i.bfg = load i32, ptr %i.ash, align 8, !tbaa !74
  %i.bfh = icmp eq i32 %i.bfg, 0                  ; 2 uses
  %i.bfi = load i32, ptr %i.asg, align 8          ; 2 uses
  %i.bfj = icmp ne i32 %i.bfi, 0
  %or.cond22483.i = select i1 %i.bfh, i1 %i.bfj, i1 false
  br i1 %or.cond22483.i, label %.lr.ph486.i, label %.critedge.i

.lr.ph486.i:                                      ; preds = %bb.fl, %bb.ht
  %i.bfk = phi i32 [ %i.bqn, %bb.ht ], [ %i.bfi, %bb.fl ]
  %.0223484.i = phi ptr [ %.21.i, %bb.ht ], [ %i.bfc, %bb.fl ] ; 35 uses
  %i.bfl = load i32, ptr %i.ase, align 4, !tbaa !72 ; 6 uses
  %i.bfm = load i32, ptr %i.asc, align 8, !tbaa !69 ; 13 uses
  %i.bfn = icmp ult i32 %i.bfl, %i.bfm
  br i1 %i.bfn, label %bb.fm, label %.critedge.thread.i

end_hunk_2
begin_hunk_3_@cli_scanautoit:bb.a
  %i.bpi = zext i32 %i.bpg to i64
  %i.bpj = getelementptr inbounds nuw i8, ptr %.15.i, i64 %i.bpi
  store i8 32, ptr %i.bpj, align 1, !tbaa !50
  br label %bb.ht

bb.hm:                                            ; preds = %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm
  %i.bpk = load i32, ptr %i.asd, align 8, !tbaa !71 ; 2 uses
  %i.bpl = add i32 %i.bpk, 4
  %i.bpm = load i32, ptr %i.asa, align 4, !tbaa !66 ; 2 uses
  %.not322.i = icmp ult i32 %i.bpl, %i.bpm
  br i1 %.not322.i, label %.thread398.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.bpn = add i32 %i.bpm, 512                    ; 2 uses
  store i32 %i.bpn, ptr %i.asa, align 4, !tbaa !66
  %i.bpo = zext i32 %i.bpn to i64
  %i.bpp = call ptr @cli_max_realloc(ptr noundef %.0223484.i, i64 noundef %i.bpo) #14 ; 2 uses
  %.not323.i = icmp eq ptr %i.bpp, null
  br i1 %.not323.i, label %bb.ho, label %..thread398_crit_edge.i

..thread398_crit_edge.i:                          ; preds = %bb.hn
  %.pre558.i = load i32, ptr %i.asd, align 8, !tbaa !71
  br label %.thread398.i

bb.ho:                                            ; preds = %bb.hn
  store i32 1, ptr %i.ash, align 8, !tbaa !74
  br label %bb.ht

.thread398.i:                                     ; preds = %..thread398_crit_edge.i, %bb.hm
  %i.bpq = phi i32 [ %i.bpk, %bb.hm ], [ %.pre558.i, %..thread398_crit_edge.i ]
  %.18.i = phi ptr [ %.0223484.i, %bb.hm ], [ %i.bpp, %..thread398_crit_edge.i ] ; 2 uses
  %i.bpr = zext i32 %i.bpq to i64
  %i.bps = getelementptr inbounds nuw i8, ptr %.18.i, i64 %i.bpr
  %i.bpt = zext nneg i8 %i.bfs to i64
  %i.bpu = getelementptr [8 x i8], ptr @__const.ea06.opers, i64 %i.bpt
  %i.bpv = getelementptr i8, ptr %i.bpu, i64 -512
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !75
  %i.bpx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bps, i64 noundef 4, ptr noundef nonnull @.str.516, ptr noundef %i.bpw) #14
  %i.bpy = load i32, ptr %i.asd, align 8, !tbaa !71
  %i.bpz = add i32 %i.bpy, %i.bpx
  store i32 %i.bpz, ptr %i.asd, align 8, !tbaa !71
  br label %bb.ht

bb.hp:                                            ; preds = %bb.fm
  %i.bqa = add i32 %i.bfk, -1
  store i32 %i.bqa, ptr %i.asg, align 8, !tbaa !73
  %i.bqb = load i32, ptr %i.asd, align 8, !tbaa !71 ; 2 uses
  %i.bqc = add i32 %i.bqb, 1                      ; 2 uses
  %i.bqd = load i32, ptr %i.asa, align 4, !tbaa !66 ; 2 uses
  %.not320.i = icmp ult i32 %i.bqc, %i.bqd
  br i1 %.not320.i, label %.thread401.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.bqe = add i32 %i.bqd, 512                    ; 2 uses
  store i32 %i.bqe, ptr %i.asa, align 4, !tbaa !66
  %i.bqf = zext i32 %i.bqe to i64
  %i.bqg = call ptr @cli_max_realloc(ptr noundef %.0223484.i, i64 noundef %i.bqf) #14 ; 2 uses
  %.not321.i = icmp eq ptr %i.bqg, null
  br i1 %.not321.i, label %bb.hr, label %..thread401_crit_edge.i

..thread401_crit_edge.i:                          ; preds = %bb.hq
  %.pre557.i = load i32, ptr %i.asd, align 8, !tbaa !71 ; 2 uses
  %.pre574.i = add i32 %.pre557.i, 1
  br label %.thread401.i

bb.hr:                                            ; preds = %bb.hq
  store i32 1, ptr %i.ash, align 8, !tbaa !74
  br label %bb.ht

.thread401.i:                                     ; preds = %..thread401_crit_edge.i, %bb.hp
  %.pre-phi575.i = phi i32 [ %.pre574.i, %..thread401_crit_edge.i ], [ %i.bqc, %bb.hp ]
  %i.bqh = phi i32 [ %.pre557.i, %..thread401_crit_edge.i ], [ %i.bqb, %bb.hp ]
  %.20.i = phi ptr [ %i.bqg, %..thread401_crit_edge.i ], [ %.0223484.i, %bb.hp ] ; 2 uses
  store i32 %.pre-phi575.i, ptr %i.asd, align 8, !tbaa !71
  %i.bqi = zext i32 %i.bqh to i64
  %i.bqj = getelementptr inbounds nuw i8, ptr %.20.i, i64 %i.bqi
  store i8 10, ptr %i.bqj, align 1, !tbaa !50
  br label %bb.ht

bb.hs:                                            ; preds = %bb.fm
  %i.bqk = zext i8 %i.bfs to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.528, i32 noundef %i.bqk) #14
  store i32 1, ptr %i.ash, align 8, !tbaa !74
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %.thread401.i, %bb.hr, %.thread398.i, %bb.ho, %bb.hl, %bb.hj, %.thread396.i, %bb.hc, %bb.ha, %bb.gy, %bb.gv, %bb.gs, %bb.gq, %.thread391.i, %bb.gn, %.thread388.i, %bb.gl, %bb.gi, %bb.gg, %.thread386.i, %bb.ga, %bb.fy, %bb.fw, %.thread384.i, %bb.fq, %bb.fo
  %.21.i = phi ptr [ %.0223484.i, %bb.hs ], [ %.0223484.i, %bb.hr ], [ %.0223484.i, %.thread384.i ], [ %.0223484.i, %bb.gi ], [ %.8231.i, %.thread388.i ], [ %.0223484.i, %bb.gl ], [ %.0223484.i, %.thread386.i ], [ %.0223484.i, %bb.gs ], [ %.13.i, %bb.gy ], [ %.0223484.i, %bb.gv ], [ %.0223484.i, %.thread391.i ], [ %.18.i, %.thread398.i ], [ %.0223484.i, %bb.ho ], [ %.20.i, %.thread401.i ], [ %.0223484.i, %bb.fo ], [ %.0223484.i, %bb.fq ], [ %.2225.i, %bb.fw ], [ %.0223484.i, %bb.fy ], [ %.0223484.i, %bb.ga ], [ %.5228.i, %bb.gg ], [ %.0223484.i, %bb.gn ], [ %.10.i, %bb.gq ], [ %.0223484.i, %bb.ha ], [ %.0223484.i, %bb.hc ], [ %.0223484.i, %.thread396.i ], [ %.15.i, %bb.hj ], [ %.15.i, %bb.hl ] ; 2 uses
  %i.bql = load i32, ptr %i.ash, align 8, !tbaa !74
  %i.bqm = icmp eq i32 %i.bql, 0                  ; 2 uses
  %i.bqn = load i32, ptr %i.asg, align 8          ; 2 uses
  %i.bqo = icmp ne i32 %i.bqn, 0
  %or.cond22.i = select i1 %i.bqm, i1 %i.bqo, i1 false
  br i1 %or.cond22.i, label %.lr.ph486.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ht, %bb.fl
  %.0223.lcssa.i = phi ptr [ %i.bfc, %bb.fl ], [ %.21.i, %bb.ht ] ; 2 uses
  %.lcssa441.i = phi i1 [ %i.bfh, %bb.fl ], [ %i.bqm, %bb.ht ]
  br i1 %.lcssa441.i, label %.critedge.thread.i, label %bb.hu

bb.hu:                                            ; preds = %.critedge.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.529) #14
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.lr.ph486.i, %bb.hu, %.critedge.i
  %.0223444.i = phi ptr [ %.0223.lcssa.i, %.critedge.i ], [ %.0223.lcssa.i, %bb.hu ], [ %.0223484.i, %.lr.ph486.i ]
  %i.bqp = load ptr, ptr %2, align 8, !tbaa !70
  call void @free(ptr noundef %i.bqp) #14
  br label %bb.hw

bb.hv:                                            ; preds = %bb.fi
  %i.bqq = load ptr, ptr %2, align 8, !tbaa !70
  store i32 %i.bey, ptr %i.asd, align 8, !tbaa !71
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.critedge.thread.i
  %.22.i = phi ptr [ %.0223444.i, %.critedge.thread.i ], [ %i.bqq, %bb.hv ] ; 4 uses
  %i.bqr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1023, ptr noundef nonnull @.str.474, ptr noundef nonnull %i.l, i32 noundef %i.baf) #14 ; 0 uses
  store i8 0, ptr %i.asi, align 1, !tbaa !50
  %i.bqs = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 578, i32 noundef 384) #14 ; 7 uses
  %i.bqt = icmp slt i32 %i.bqs, 0
  br i1 %i.bqt, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.475, ptr noundef nonnull %i.b) #14
  call void @free(ptr noundef %.22.i) #14
  br label %ea06.exit

bb.hy:                                            ; preds = %bb.hw
  %i.bqu = load i32, ptr %i.asd, align 8, !tbaa !71
  %i.bqv = zext i32 %i.bqu to i64
  %i.bqw = call i64 @cli_writen(i32 noundef %i.bqs, ptr noundef %.22.i, i64 noundef %i.bqv) #14
  %i.bqx = load i32, ptr %i.asd, align 8, !tbaa !71
  %i.bqy = zext i32 %i.bqx to i64
  %.not313.i = icmp eq i64 %i.bqw, %i.bqy
  br i1 %.not313.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.bqz = load i32, ptr %i.asc, align 8, !tbaa !69
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.476, i32 noundef %i.bqz) #14
  %i.bra = call i32 @close(i32 noundef %i.bqs) #14 ; 0 uses
  call void @free(ptr noundef %.22.i) #14
  br label %ea06.exit

bb.ia:                                            ; preds = %bb.hy
  call void @free(ptr noundef %.22.i) #14
  %i.brb = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 48
  %i.brd = load i32, ptr %i.brc, align 8, !tbaa !30
  %.not314.i = icmp eq i32 %i.brd, 0
  %i.bre = select i1 %.0220.i, ptr @.str.531, ptr @.str.532 ; 2 uses
  br i1 %.not314.i, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.530, ptr noundef nonnull %i.bre, ptr noundef nonnull %i.b) #14
  br label %bb.id

bb.ic:                                            ; preds = %bb.ia
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.533, ptr noundef nonnull %i.bre) #14
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %i.brf = call i64 @lseek(i32 noundef %i.bqs, i64 noundef 0, i32 noundef 0) #14
  %i.brg = icmp eq i64 %i.brf, -1
  br i1 %i.brg, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.479) #14
  %i.brh = call i32 @close(i32 noundef %i.bqs) #14 ; 0 uses
  br label %ea06.exit

bb.if:                                            ; preds = %bb.id
  %i.bri = call i32 @cli_magic_scan_desc(i32 noundef %i.bqs, ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #14
  %.not315.i = icmp eq i32 %i.bri, 0
  %i.brj = call i32 @close(i32 noundef %i.bqs) #14 ; 0 uses
  %i.brk = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brk, i64 48
  %i.brm = load i32, ptr %i.brl, align 8, !tbaa !30
  %.not316.i = icmp eq i32 %i.brm, 0              ; 2 uses
  br i1 %.not315.i, label %bb.ij, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  br i1 %.not316.i, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.brn = call i32 @cli_unlink(ptr noundef nonnull %i.b) #14
  %.not319.i = icmp eq i32 %i.brn, 0
  br i1 %.not319.i, label %bb.ii, label %ea06.exit

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  br label %ea06.exit

bb.ij:                                            ; preds = %bb.if
  br i1 %.not316.i, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.bro = call i32 @cli_unlink(ptr noundef nonnull %i.b) #14
  %.not317.i = icmp eq i32 %i.bro, 0
  br i1 %.not317.i, label %bb.il, label %ea06.exit

bb.il:                                            ; preds = %bb.ik, %bb.ij, %bb.fh, %bb.er, %bb.en, %bb.eh, %bb.ef, %bb.ed
  %.1237.i = phi ptr [ %i.bav, %bb.er ], [ %i.bav, %bb.fh ], [ %i.azn, %bb.ed ], [ %i.bav, %bb.en ], [ %i.baa, %bb.ef ], [ %i.azu, %bb.eh ], [ %i.bav, %bb.ik ], [ %i.bav, %bb.ij ]
  %.1222.i = phi i32 [ %i.baf, %bb.er ], [ %i.baf, %bb.fh ], [ %.0221489.i, %bb.ed ], [ %i.baf, %bb.en ], [ %.0221489.i, %bb.ef ], [ %.0221489.i, %bb.eh ], [ %i.baf, %bb.ik ], [ %i.baf, %bb.ij ]
  %i.brp = call i32 @cli_checklimits(ptr noundef nonnull @.str.506, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14 ; 2 uses
  %i.brq = icmp eq i32 %i.brp, 0
  br i1 %i.brq, label %bb.de, label %ea06.exit

ea06.exit:                                        ; preds = %bb.de, %bb.dh, %bb.dj, %bb.dr, %bb.ds, %bb.du, %._crit_edge576.i, %bb.ei, %bb.ik, %bb.il, %bb.dd, %bb.dg, %bb.eb, %bb.ek, %bb.et, %bb.fk, %bb.hx, %bb.hz, %bb.ie, %bb.ih, %bb.ii
  %.2235.i = phi i32 [ 10, %bb.ih ], [ 0, %bb.dg ], [ 1, %bb.ii ], [ 13, %bb.ie ], [ 14, %bb.hz ], [ 9, %bb.hx ], [ 0, %bb.eb ], [ 0, %bb.ek ], [ 20, %bb.et ], [ 20, %bb.fk ], [ %i.ars, %bb.dd ], [ 10, %bb.ik ], [ 0, %bb.dh ], [ 0, %bb.dj ], [ 0, %bb.ds ], [ 0, %bb.du ], [ 0, %._crit_edge576.i ], [ 20, %bb.ei ], [ 0, %bb.dr ], [ 0, %bb.de ], [ %i.brp, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.in

bb.im:                                            ; preds = %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.456) #14
  br label %bb.in

bb.in:                                            ; preds = %bb.dc, %ea06.exit, %bb.im, %ea05.exit
  %.0.a = phi i32 [ 0, %bb.im ], [ %.0120536544554.i, %ea05.exit ], [ 0, %bb.dc ], [ %.2235.i, %ea06.exit ]
  %i.brr = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 48
  %i.brt = load i32, ptr %i.brs, align 8, !tbaa !30
  %.not26 = icmp eq i32 %i.brt, 0
  br i1 %.not26, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.bru = call i32 @cli_rmdirs(ptr noundef nonnull %i.l) #14 ; 0 uses
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  call void @free(ptr noundef %i.l) #14
  br label %bb.iq

bb.iq:                                            ; preds = %bb.b, %bb.a, %bb.ip, %bb.d
  %.020 = phi i32 [ 18, %bb.d ], [ %.0.a, %bb.ip ], [ 12, %bb.a ], [ 18, %bb.b ]
  ret i32 %.020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @cli_gentemp_with_prefix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @get_fpu_endian() local_unnamed_addr #2

declare i32 @cli_rmdirs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @cli_checklimits(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @MT_decrypt(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.MT, align 8                 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 10 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !54
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = phi i32 [ %2, %bb.a ], [ %i.m, %bb.c ]   ; 2 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.c = lshr i32 %i.b, 30
  %i.d = xor i32 %i.c, %i.b
  %i.e = mul i32 %i.d, 1812433253
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  %i.g = add i32 %i.e, %i.f                       ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.g, ptr %i.h, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 624
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i32 %i.g, 30
  %i.j = xor i32 %i.i, %i.g
  %i.k = mul i32 %i.j, 1812433253
  %i.l = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store i32 %i.m, ptr %i.n, align 4, !tbaa !54
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not16 = icmp eq i32 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 920
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1596
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 908
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 912
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 2496
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 912
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 916
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2500
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 916
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 920
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 2504
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %MT_getnext.exit
  %.pre.i = phi i32 [ %2, %.lr.ph ], [ %.pre.i21, %MT_getnext.exit ] ; 2 uses
  %.01218 = phi ptr [ %0, %.lr.ph ], [ %i.ee, %MT_getnext.exit ] ; 3 uses
  %.01317 = phi i32 [ %1, %.lr.ph ], [ %i.ac, %MT_getnext.exit ]
  %i.aa = phi i32 [ 1, %.lr.ph ], [ %i.do, %MT_getnext.exit ]
  %i.ab = phi ptr [ %i.a, %.lr.ph ], [ %i.dr, %MT_getnext.exit ] ; 2 uses
  %i.ac = add i32 %.01317, -1                     ; 2 uses
  %i.ad = add nsw i32 %i.aa, -1                   ; 3 uses
  store i32 %i.ad, ptr %i.o, align 8, !tbaa !78
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %vector.ph25, label %._crit_edge58.i

._crit_edge58.i:                                  ; preds = %bb.e
  %.pre60.i = load i32, ptr %i.ab, align 4, !tbaa !54
  br label %MT_getnext.exit

vector.ph25:                                      ; preds = %bb.e
  store i32 624, ptr %i.o, align 8, !tbaa !78
  %vector.recur.init28 = insertelement <4 x i32> poison, i32 %.pre.i, i64 3
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph25
  %index27 = phi i64 [ 0, %vector.ph25 ], [ %index.next34, %vector.body26 ] ; 3 uses
  %vector.recur29 = phi <4 x i32> [ %vector.recur.init28, %vector.ph25 ], [ %wide.load31, %vector.body26 ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index27 ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %wide.load30 = load <4 x i32>, ptr %i.ag, align 8, !tbaa !54 ; 4 uses
  %wide.load31 = load <4 x i32>, ptr %i.ah, align 8, !tbaa !54 ; 5 uses
  %i.ai = shufflevector <4 x i32> %vector.recur29, <4 x i32> %wide.load30, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aj = shufflevector <4 x i32> %wide.load30, <4 x i32> %wide.load31, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ak = and <4 x i32> %wide.load30, splat (i32 2147483646)
  %i.al = and <4 x i32> %wide.load31, splat (i32 2147483646)
  %i.am = and <4 x i32> %i.ai, splat (i32 -2147483648)
  %i.an = and <4 x i32> %i.aj, splat (i32 -2147483648)
  %i.ao = or disjoint <4 x i32> %i.ak, %i.am
  %i.ap = or disjoint <4 x i32> %i.al, %i.an
  %i.aq = lshr exact <4 x i32> %i.ao, splat (i32 1)
  %i.ar = lshr exact <4 x i32> %i.ap, splat (i32 1)
  %i.as = and <4 x i32> %wide.load30, splat (i32 1)
  %i.at = and <4 x i32> %wide.load31, splat (i32 1)
  %i.au = icmp eq <4 x i32> %i.as, zeroinitializer
  %i.av = icmp eq <4 x i32> %i.at, zeroinitializer
  %i.aw = select <4 x i1> %i.au, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.ax = select <4 x i1> %i.av, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 1588
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 1604
  %wide.load32 = load <4 x i32>, ptr %i.ay, align 8, !tbaa !54
  %wide.load33 = load <4 x i32>, ptr %i.az, align 8, !tbaa !54
  %i.ba = xor <4 x i32> %i.aw, %wide.load32
  %i.bb = xor <4 x i32> %i.ax, %wide.load33
  %i.bc = xor <4 x i32> %i.ba, %i.aq
  %i.bd = xor <4 x i32> %i.bb, %i.ar
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %i.bc, ptr %i.ae, align 4, !tbaa !54
  store <4 x i32> %i.bd, ptr %i.be, align 4, !tbaa !54
  %index.next34 = add nuw i64 %index27, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next34, 224
  br i1 %i.bf, label %vector.ph, label %vector.body26, !llvm.loop !81

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 908
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 912
  %wide.load = load <4 x i32>, ptr %i.bj, align 4, !tbaa !54 ; 4 uses
  %i.bk = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bl = and <4 x i32> %wide.load, splat (i32 2147483646)
  %i.bm = and <4 x i32> %i.bk, splat (i32 -2147483648)
  %i.bn = or disjoint <4 x i32> %i.bl, %i.bm
  %i.bo = lshr exact <4 x i32> %i.bn, splat (i32 1)
  %i.bp = and <4 x i32> %wide.load, splat (i32 1)
  %i.bq = icmp eq <4 x i32> %i.bp, zeroinitializer
  %i.br = select <4 x i1> %i.bq, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %wide.load24 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !54
  %i.bs = xor <4 x i32> %i.br, %wide.load24
  %i.bt = xor <4 x i32> %i.bs, %i.bo
  store <4 x i32> %i.bt, ptr %i.bh, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_3
