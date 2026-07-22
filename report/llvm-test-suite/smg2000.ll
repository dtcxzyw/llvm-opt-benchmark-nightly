inline.NumInlined: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %i.av = load i8, ptr %i.au, align 1
  %.not665 = icmp eq i8 %i.av, 80
  br i1 %.not665, label %.tail481, label %sub_1488

.tail481:                                         ; preds = %sub_1483
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.c, label %sub_1488

bb.c:                                             ; preds = %.tail481
  %i.az = getelementptr i8, ptr %i.z, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !12
  %i.bb = call i64 @strtol(ptr noundef nonnull captures(none) %i.ba, ptr noundef null, i32 noundef 10) #10, !inline_history !14
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr i8, ptr %i.z, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !12
  %i.bf = call i64 @strtol(ptr noundef nonnull captures(none) %i.be, ptr noundef null, i32 noundef 10) #10, !inline_history !14
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add nsw i32 %.0455555, 4
  %i.bi = getelementptr i8, ptr %i.z, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !12
  %i.bk = call i64 @strtol(ptr noundef nonnull captures(none) %i.bj, ptr noundef null, i32 noundef 10) #10, !inline_history !14
  %i.bl = trunc i64 %i.bk to i32
  br label %bb.i

sub_1488:                                         ; preds = %.tail481, %sub_1483
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  %.not667 = icmp eq i8 %i.bn, 98
  br i1 %.not667, label %.tail486, label %sub_1493

.tail486:                                         ; preds = %sub_1488
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.d, label %sub_1493

bb.d:                                             ; preds = %.tail486
  %i.br = getelementptr i8, ptr %i.z, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !12
  %i.bt = call i64 @strtol(ptr noundef nonnull captures(none) %i.bs, ptr noundef null, i32 noundef 10) #10, !inline_history !14
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = getelementptr i8, ptr %i.z, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !12
  %i.bx = call i64 @strtol(ptr noundef nonnull captures(none) %i.bw, ptr noundef null, i32 noundef 10) #10, !inline_history !14
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add nsw i32 %.0455555, 4
  %i.ca = getelementptr i8, ptr %i.z, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !12
  %i.cc = call i64 @strtol(ptr noundef nonnull captures(none) %i.cb, ptr noundef null, i32 noundef 10) #10, !inline_history !14
  %i.cd = trunc i64 %i.cc to i32
  br label %bb.i

sub_1493:                                         ; preds = %.tail486, %sub_1488
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.cf = load i8, ptr %i.ce, align 1
  %.not669 = icmp eq i8 %i.cf, 99
  br i1 %.not669, label %.tail491, label %sub_1498

.tail491:                                         ; preds = %sub_1493
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.e, label %sub_1498

bb.e:                                             ; preds = %.tail491
  %i.cj = getelementptr i8, ptr %i.z, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !12
  %i.cl = call double @strtod(ptr noundef nonnull captures(none) %i.ck, ptr noundef null) #10, !inline_history !15
  %i.cm = getelementptr i8, ptr %i.z, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !12
  %i.co = call double @strtod(ptr noundef nonnull captures(none) %i.cn, ptr noundef null) #10, !inline_history !15
  %i.cp = add nsw i32 %.0455555, 4
  %i.cq = getelementptr i8, ptr %i.z, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !12
  %i.cs = call double @strtod(ptr noundef nonnull captures(none) %i.cr, ptr noundef null) #10, !inline_history !15
  br label %bb.i

sub_1498:                                         ; preds = %.tail491, %sub_1493
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.cu = load i8, ptr %i.ct, align 1
  %.not671 = icmp eq i8 %i.cu, 118
  br i1 %.not671, label %.tail496, label %sub_1503

.tail496:                                         ; preds = %sub_1498
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.f, label %sub_1503

bb.f:                                             ; preds = %.tail496
  %i.cy = getelementptr i8, ptr %i.z, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !12
  %i.da = call i64 @strtol(ptr noundef nonnull captures(none) %i.cz, ptr noundef null, i32 noundef 10) #10, !inline_history !14
  %i.db = trunc i64 %i.da to i32
  %i.dc = add nsw i32 %.0455555, 3
  %i.dd = getelementptr i8, ptr %i.z, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !12
  %i.df = call i64 @strtol(ptr noundef nonnull captures(none) %i.de, ptr noundef null, i32 noundef 10) #10, !inline_history !14
  %i.dg = trunc i64 %i.df to i32
  br label %bb.i

sub_1503:                                         ; preds = %.tail496, %sub_1498
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.di = load i8, ptr %i.dh, align 1
  %.not673 = icmp eq i8 %i.di, 100
  br i1 %.not673, label %.tail501, label %.tail501.thread

.tail501:                                         ; preds = %sub_1503
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.g, label %.tail501.thread

bb.g:                                             ; preds = %.tail501
  %i.dm = add nsw i32 %.0455555, 2
  %i.dn = getelementptr i8, ptr %i.z, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !12
  %i.dp = call i64 @strtol(ptr noundef nonnull captures(none) %i.do, ptr noundef null, i32 noundef 10) #10, !inline_history !14
  %i.dq = trunc i64 %i.dp to i32
  br label %bb.i

.tail501.thread:                                  ; preds = %sub_0, %sub_1503, %.tail501
  %i.dr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(8) @.str.6) #11
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.tail501.thread
  %i.dt = add nsw i32 %.0455555, 2
  %i.du = getelementptr i8, ptr %i.z, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !12
  %i.dw = call i64 @strtol(ptr noundef nonnull captures(none) %i.dv, ptr noundef null, i32 noundef 10) #10, !inline_history !14
  %i.dx = trunc i64 %i.dw to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.b
  %.1456 = phi i32 [ %i.ap, %bb.b ], [ %i.bh, %bb.c ], [ %i.bz, %bb.d ], [ %i.cp, %bb.e ], [ %i.dc, %bb.f ], [ %i.dm, %bb.g ], [ %i.dt, %bb.h ] ; 2 uses
  %.1453 = phi i32 [ %i.ak, %bb.b ], [ %.0452556, %bb.c ], [ %.0452556, %bb.d ], [ %.0452556, %bb.e ], [ %.0452556, %bb.f ], [ %.0452556, %bb.g ], [ %.0452556, %bb.h ] ; 2 uses
  %.1451 = phi i32 [ %i.ao, %bb.b ], [ %.0450557, %bb.c ], [ %.0450557, %bb.d ], [ %.0450557, %bb.e ], [ %.0450557, %bb.f ], [ %.0450557, %bb.g ], [ %.0450557, %bb.h ] ; 2 uses
  %.1449 = phi i32 [ %i.at, %bb.b ], [ %.0448558, %bb.c ], [ %.0448558, %bb.d ], [ %.0448558, %bb.e ], [ %.0448558, %bb.f ], [ %.0448558, %bb.g ], [ %.0448558, %bb.h ] ; 2 uses
  %.1447 = phi i32 [ %.0446559, %bb.b ], [ %i.bc, %bb.c ], [ %.0446559, %bb.d ], [ %.0446559, %bb.e ], [ %.0446559, %bb.f ], [ %.0446559, %bb.g ], [ %.0446559, %bb.h ] ; 2 uses
  %.1445 = phi i32 [ %.0444560, %bb.b ], [ %i.bg, %bb.c ], [ %.0444560, %bb.d ], [ %.0444560, %bb.e ], [ %.0444560, %bb.f ], [ %.0444560, %bb.g ], [ %.0444560, %bb.h ] ; 2 uses
  %.1443 = phi i32 [ %.0442561, %bb.b ], [ %i.bl, %bb.c ], [ %.0442561, %bb.d ], [ %.0442561, %bb.e ], [ %.0442561, %bb.f ], [ %.0442561, %bb.g ], [ %.0442561, %bb.h ] ; 2 uses
  %.1441 = phi i32 [ %.0440562, %bb.b ], [ %.0440562, %bb.c ], [ %i.bu, %bb.d ], [ %.0440562, %bb.e ], [ %.0440562, %bb.f ], [ %.0440562, %bb.g ], [ %.0440562, %bb.h ] ; 2 uses
  %.1439 = phi i32 [ %.0438563, %bb.b ], [ %.0438563, %bb.c ], [ %i.by, %bb.d ], [ %.0438563, %bb.e ], [ %.0438563, %bb.f ], [ %.0438563, %bb.g ], [ %.0438563, %bb.h ] ; 2 uses
  %.1437 = phi i32 [ %.0436564, %bb.b ], [ %.0436564, %bb.c ], [ %i.cd, %bb.d ], [ %.0436564, %bb.e ], [ %.0436564, %bb.f ], [ %.0436564, %bb.g ], [ %.0436564, %bb.h ] ; 2 uses
  %.1435 = phi double [ %.0434565, %bb.b ], [ %.0434565, %bb.c ], [ %.0434565, %bb.d ], [ %i.cl, %bb.e ], [ %.0434565, %bb.f ], [ %.0434565, %bb.g ], [ %.0434565, %bb.h ] ; 2 uses
  %.1433 = phi double [ %.0432566, %bb.b ], [ %.0432566, %bb.c ], [ %.0432566, %bb.d ], [ %i.co, %bb.e ], [ %.0432566, %bb.f ], [ %.0432566, %bb.g ], [ %.0432566, %bb.h ] ; 2 uses
  %.1431 = phi double [ %.0430567, %bb.b ], [ %.0430567, %bb.c ], [ %.0430567, %bb.d ], [ %i.cs, %bb.e ], [ %.0430567, %bb.f ], [ %.0430567, %bb.g ], [ %.0430567, %bb.h ] ; 2 uses
  %.1429 = phi i32 [ %.0428568, %bb.b ], [ %.0428568, %bb.c ], [ %.0428568, %bb.d ], [ %.0428568, %bb.e ], [ %.0428568, %bb.f ], [ %.0428568, %bb.g ], [ %i.dx, %bb.h ] ; 2 uses
  %.1424 = phi i32 [ %.0423569, %bb.b ], [ %.0423569, %bb.c ], [ %.0423569, %bb.d ], [ %.0423569, %bb.e ], [ %.0423569, %bb.f ], [ %i.dq, %bb.g ], [ %.0423569, %bb.h ] ; 2 uses
  %.1422 = phi i32 [ %.0421570, %bb.b ], [ %.0421570, %bb.c ], [ %.0421570, %bb.d ], [ %.0421570, %bb.e ], [ %i.db, %bb.f ], [ %.0421570, %bb.g ], [ %.0421570, %bb.h ] ; 2 uses
  %.1420 = phi i32 [ %.0419571, %bb.b ], [ %.0419571, %bb.c ], [ %.0419571, %bb.d ], [ %.0419571, %bb.e ], [ %i.dg, %bb.f ], [ %.0419571, %bb.g ], [ %.0419571, %bb.h ] ; 2 uses
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !4
  %i.dz = icmp slt i32 %.1456, %i.dy
  br i1 %i.dz, label %sub_0, label %.thread479, !llvm.loop !16

bb.j:                                             ; preds = %.tail501.thread
  %i.ea = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(6) @.str.7) #11
  %i.eb = icmp eq i32 %i.ea, 0                    ; 2 uses
  %i.ec = load i32, ptr %i.l, align 4
  %i.ed = icmp eq i32 %i.ec, 0
  %or.cond = select i1 %i.eb, i1 %i.ed, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.ee = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !12
  %i.eg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %i.ef) ; 0 uses
  %putchar459 = call i32 @putchar(i32 10)         ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts460 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts461 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts462 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts463 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts464 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts465 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts466 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts467 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts468 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts469 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %putchar470 = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  br i1 %i.eb, label %bb.m, label %.thread479

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @exit(i32 noundef 1) #12
  unreachable

.thread479:                                       ; preds = %bb.i, %bb.a, %bb.l
  %.0452554 = phi i32 [ %.0452556, %bb.l ], [ 10, %bb.a ], [ %.1453, %bb.i ] ; 14 uses
  %.0450552 = phi i32 [ %.0450557, %bb.l ], [ 10, %bb.a ], [ %.1451, %bb.i ] ; 7 uses
  %.0448550 = phi i32 [ %.0448558, %bb.l ], [ 10, %bb.a ], [ %.1449, %bb.i ] ; 4 uses
  %.0446548 = phi i32 [ %.0446559, %bb.l ], [ %i.s, %bb.a ], [ %.1447, %bb.i ] ; 8 uses
  %.0444546 = phi i32 [ %.0444560, %bb.l ], [ 1, %bb.a ], [ %.1445, %bb.i ] ; 4 uses
  %.0442544 = phi i32 [ %.0442561, %bb.l ], [ 1, %bb.a ], [ %.1443, %bb.i ] ; 2 uses
  %.0440542 = phi i32 [ %.0440562, %bb.l ], [ 1, %bb.a ], [ %.1441, %bb.i ] ; 15 uses
  %.0438540 = phi i32 [ %.0438563, %bb.l ], [ 1, %bb.a ], [ %.1439, %bb.i ] ; 9 uses
  %.0436538 = phi i32 [ %.0436564, %bb.l ], [ 1, %bb.a ], [ %.1437, %bb.i ] ; 5 uses
  %.0434536 = phi double [ %.0434565, %bb.l ], [ 1.000000e+00, %bb.a ], [ %.1435, %bb.i ] ; 4 uses
  %.0432534 = phi double [ %.0432566, %bb.l ], [ 1.000000e+00, %bb.a ], [ %.1433, %bb.i ] ; 3 uses
  %.0430532 = phi double [ %.0430567, %bb.l ], [ 1.000000e+00, %bb.a ], [ %.1431, %bb.i ] ; 3 uses
  %.0428530 = phi i32 [ %.0428568, %bb.l ], [ 0, %bb.a ], [ %.1429, %bb.i ] ; 5 uses
  %.0423528 = phi i32 [ %.0423569, %bb.l ], [ 3, %bb.a ], [ %.1424, %bb.i ] ; 14 uses
  %.0421526 = phi i32 [ %.0421570, %bb.l ], [ 1, %bb.a ], [ %.1422, %bb.i ] ; 3 uses
  %.0419524 = phi i32 [ %.0419571, %bb.l ], [ 1, %bb.a ], [ %.1420, %bb.i ] ; 3 uses
  %i.eh = mul nsw i32 %.0444546, %.0446548        ; 2 uses
  %i.ei = mul nsw i32 %i.eh, %.0442544
  %i.ej = load i32, ptr %i.k, align 4, !tbaa !4
  %.not = icmp eq i32 %i.ei, %i.ej
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread479
  %puts477 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  call void @exit(i32 noundef 1) #12
  unreachable

bb.o:                                             ; preds = %.thread479
  %i.ek = load i32, ptr %i.l, align 4, !tbaa !4
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %puts471 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.em = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %.0452554, i32 noundef %.0450552, i32 noundef %.0448550) ; 0 uses
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %.0446548, i32 noundef %.0444546, i32 noundef %.0442544) ; 0 uses
  %i.eo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %.0440542, i32 noundef %.0438540, i32 noundef %.0436538) ; 0 uses
  %i.ep = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, double noundef %.0434536, double noundef %.0432534, double noundef %.0430532) ; 0 uses
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %.0421526, i32 noundef %.0419524) ; 0 uses
  %i.er = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %.0423528) ; 0 uses
  %i.es = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %.0428530) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.et = call i32 @hypre_MPI_Barrier(i32 noundef 0) #10 ; 0 uses
  %i.eu = call i32 @hypre_InitializeTiming(ptr noundef nonnull @.str.30) #10 ; 3 uses
  %i.ev = call i32 @hypre_BeginTiming(i32 noundef %i.eu) #10 ; 0 uses
  switch i32 %.0423528, label %bb.u [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.ew = call ptr @hypre_CAlloc(i32 noundef 2, i32 noundef 4) #10
  %i.ex = call ptr @hypre_CAlloc(i32 noundef 2, i32 noundef 8) #10 ; 3 uses
  %i.ey = call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 4) #10 ; 2 uses
  store ptr %i.ey, ptr %i.ex, align 8, !tbaa !18
  store i32 -1, ptr %i.ey, align 4, !tbaa !4
  %i.ez = call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 4) #10 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !18
  store i32 0, ptr %i.ez, align 4, !tbaa !4
  %i.fb = load i32, ptr %i.l, align 4, !tbaa !4
  %i.fc = srem i32 %i.fb, %.0446548
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.fd = mul nsw i32 %.0450552, %.0452554
  %i.fe = mul nsw i32 %.0438540, %.0440542
  %i.ff = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 4) #10
  %i.fg = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 8) #10 ; 4 uses
  %i.fh = call ptr @hypre_CAlloc(i32 noundef 2, i32 noundef 4) #10 ; 3 uses
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !18
  store i32 -1, ptr %i.fh, align 4, !tbaa !4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i32 0, ptr %i.fi, align 4, !tbaa !4
  %i.fj = call ptr @hypre_CAlloc(i32 noundef 2, i32 noundef 4) #10 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !18
  store i32 0, ptr %i.fj, align 4, !tbaa !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 -1, ptr %i.fl, align 4, !tbaa !4
  %i.fm = call ptr @hypre_CAlloc(i32 noundef 2, i32 noundef 4) #10 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !18
  store i32 0, ptr %i.fm, align 4, !tbaa !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 0, ptr %i.fo, align 4, !tbaa !4
  %i.fp = load i32, ptr %i.l, align 4, !tbaa !4   ; 2 uses
  %i.fq = srem i32 %i.fp, %.0446548
  %i.fr = sdiv i32 %i.fp, %.0446548
  %i.fs = srem i32 %i.fr, %.0444546
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ft = mul nsw i32 %.0450552, %.0452554
  %i.fu = mul nsw i32 %i.ft, %.0448550
  %i.fv = mul nsw i32 %.0438540, %.0440542
  %i.fw = mul nsw i32 %i.fv, %.0436538
  %i.fx = call ptr @hypre_CAlloc(i32 noundef 4, i32 noundef 4) #10
  %i.fy = call ptr @hypre_CAlloc(i32 noundef 4, i32 noundef 8) #10 ; 5 uses
  %i.fz = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 4) #10 ; 4 uses
  store ptr %i.fz, ptr %i.fy, align 8, !tbaa !18
  store i32 -1, ptr %i.fz, align 4, !tbaa !4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 0, ptr %i.ga, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i32 0, ptr %i.gb, align 4, !tbaa !4
  %i.gc = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 4) #10 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !18
  store i32 0, ptr %i.gc, align 4, !tbaa !4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 -1, ptr %i.ge, align 4, !tbaa !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i32 0, ptr %i.gf, align 4, !tbaa !4
  %i.gg = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 4) #10 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !18
  store i32 0, ptr %i.gg, align 4, !tbaa !4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 0, ptr %i.gi, align 4, !tbaa !4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 -1, ptr %i.gj, align 4, !tbaa !4
  %i.gk = call ptr @hypre_CAlloc(i32 noundef 3, i32 noundef 4) #10 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !18
  store i32 0, ptr %i.gk, align 4, !tbaa !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i32 0, ptr %i.gm, align 4, !tbaa !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i32 0, ptr %i.gn, align 4, !tbaa !4
  %i.go = load i32, ptr %i.l, align 4, !tbaa !4   ; 3 uses
  %i.gp = srem i32 %i.go, %.0446548               ; 2 uses
  %i.gq = sdiv i32 %i.go, %.0446548
  %i.gr = srem i32 %i.gq, %.0444546               ; 2 uses
  %i.gs = mul nsw i32 %i.gr, %.0446548
  %i.gt = add i32 %i.gp, %i.gs
  %i.gu = sub i32 %i.go, %i.gt
  %i.gv = sdiv i32 %i.gu, %i.eh
  %i.gw = mul nsw i32 %i.gv, %.0436538
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.0427 = phi i32 [ undef, %bb.q ], [ %i.fc, %bb.r ], [ %i.fq, %bb.s ], [ %i.gp, %bb.t ] ; 3 uses
  %.0426 = phi i32 [ undef, %bb.q ], [ undef, %bb.r ], [ %i.fs, %bb.s ], [ %i.gr, %bb.t ] ; 2 uses
  %.0425 = phi i32 [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ %i.gw, %bb.t ]
  %.0418 = phi i32 [ undef, %bb.q ], [ %.0440542, %bb.r ], [ %i.fe, %bb.s ], [ %i.fw, %bb.t ] ; 10 uses
  %.0417 = phi i32 [ undef, %bb.q ], [ %.0452554, %bb.r ], [ %i.fd, %bb.s ], [ %i.fu, %bb.t ] ; 7 uses
  %.0416 = phi ptr [ undef, %bb.q ], [ %i.ex, %bb.r ], [ %i.fg, %bb.s ], [ %i.fy, %bb.t ] ; 3 uses
  %.0415 = phi ptr [ undef, %bb.q ], [ %i.ew, %bb.r ], [ %i.ff, %bb.s ], [ %i.fx, %bb.t ] ; 12 uses
  %i.gx = call ptr @hypre_CAlloc(i32 noundef %.0418, i32 noundef 8) #10 ; 13 uses
  %i.gy = call ptr @hypre_CAlloc(i32 noundef %.0418, i32 noundef 8) #10 ; 13 uses
  %i.gz = icmp sgt i32 %.0418, 0                  ; 7 uses
  br i1 %i.gz, label %.lr.ph.preheader, label %.preheader522

.lr.ph.preheader:                                 ; preds = %bb.u
  %wide.trip.count = zext nneg i32 %.0418 to i64
  br label %.lr.ph

.preheader522:                                    ; preds = %.lr.ph, %bb.u
  %i.ha = icmp sgt i32 %.0423528, 0               ; 2 uses
  br i1 %i.ha, label %.lr.ph589.preheader, label %._crit_edge

.lr.ph589.preheader:                              ; preds = %.preheader522
  %wide.trip.count700 = zext nneg i32 %.0423528 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.0423528, 4
  br i1 %min.iters.check, label %.lr.ph589.preheader918, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph589.preheader
  %n.vec = and i64 %wide.trip.count700, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hb = shl nuw nsw i64 %index, 3
  %i.hc = shl i64 %index, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hb
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <4 x i32> splat (i32 1), ptr %i.hd, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.hf, align 16, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count700
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph589.preheader918

.lr.ph589.preheader918:                           ; preds = %.lr.ph589.preheader, %middle.block
  %indvars.iv697.ph = phi i64 [ 0, %.lr.ph589.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph589

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.hh = call ptr @hypre_CAlloc(i32 noundef %.0423528, i32 noundef 4) #10
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !18
  %i.hj = call ptr @hypre_CAlloc(i32 noundef %.0423528, i32 noundef 4) #10
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader522, label %.lr.ph, !llvm.loop !23

.lr.ph589:                                        ; preds = %.lr.ph589.preheader918, %.lr.ph589
  %indvars.iv697 = phi i64 [ %indvars.iv.next698, %.lr.ph589 ], [ %indvars.iv697.ph, %.lr.ph589.preheader918 ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv697, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 2 uses
  store i32 1, ptr %i.hl, align 8, !tbaa !4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store i32 1, ptr %i.hm, align 4, !tbaa !4
  %indvars.iv.next698 = add nuw nsw i64 %indvars.iv697, 1 ; 2 uses
  %exitcond701.not = icmp eq i64 %indvars.iv.next698, %wide.trip.count700
  br i1 %exitcond701.not, label %._crit_edge, label %.lr.ph589, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph589, %middle.block, %.preheader522
  switch i32 %.0423528, label %.loopexit [
    i32 1, label %.preheader514
    i32 2, label %.preheader516
    i32 3, label %.preheader520
  ]

.preheader520:                                    ; preds = %._crit_edge
  %i.hn = icmp sgt i32 %.0436538, 0
  br i1 %i.hn, label %.preheader519.lr.ph, label %.loopexit

.preheader519.lr.ph:                              ; preds = %.preheader520
  %i.ho = icmp sgt i32 %.0438540, 0
  %i.hp = icmp sgt i32 %.0440542, 0
  %i.hq = mul nsw i32 %.0427, %.0440542
  %i.hr = mul nsw i32 %.0426, %.0438540
  br i1 %i.ho, label %.preheader519, label %.loopexit

.preheader516:                                    ; preds = %._crit_edge
  %i.hs = icmp sgt i32 %.0438540, 0
  br i1 %i.hs, label %.preheader515.lr.ph, label %.loopexit

.preheader515.lr.ph:                              ; preds = %.preheader516
  %i.ht = icmp sgt i32 %.0440542, 0
  %i.hu = mul nsw i32 %.0427, %.0440542
  %i.hv = mul nsw i32 %.0426, %.0438540
  br i1 %i.ht, label %.preheader515, label %.loopexit

.preheader514:                                    ; preds = %._crit_edge
  %i.hw = icmp sgt i32 %.0440542, 0
  br i1 %i.hw, label %.lr.ph610, label %.loopexit

.lr.ph610:                                        ; preds = %.preheader514
  %i.hx = mul nsw i32 %.0427, %.0440542           ; 3 uses
  %wide.trip.count718 = zext nneg i32 %.0440542 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count718, 1
  %i.hy = icmp eq i32 %.0440542, 1
  br i1 %i.hy, label %.epil.preheader, label %.lr.ph610.new

.lr.ph610.new:                                    ; preds = %.lr.ph610
  %unroll_iter = and i64 %wide.trip.count718, 2147483646
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph610.new
  %indvars.iv713 = phi i64 [ 0, %.lr.ph610.new ], [ %indvars.iv.next714.1, %bb.v ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph610.new ], [ %niter.next.1, %bb.v ]
  %indvars717 = trunc i64 %indvars.iv713 to i32
  %i.hz = add nsw i32 %i.hx, %indvars717          ; 2 uses
  %i.ia = mul nsw i32 %i.hz, %.0452554
  %i.ib = add nsw i32 %i.ia, -17
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv713
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !18
  store i32 %i.ib, ptr %i.id, align 4, !tbaa !4
  %i.ie = add nsw i32 %i.hz, 1
  %i.if = mul nsw i32 %i.ie, %.0452554
  %i.ig = add nsw i32 %i.if, -18
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv713
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !18
  store i32 %i.ig, ptr %i.ii, align 4, !tbaa !4
  %indvars.iv.next714 = or disjoint i64 %indvars.iv713, 1 ; 3 uses
  %indvars717.1 = trunc i64 %indvars.iv.next714 to i32
  %i.ij = add nsw i32 %i.hx, %indvars717.1        ; 2 uses
  %i.ik = mul nsw i32 %i.ij, %.0452554
  %i.il = add nsw i32 %i.ik, -17
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.next714
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !18
  store i32 %i.il, ptr %i.in, align 4, !tbaa !4
  %i.io = add nsw i32 %i.ij, 1
  %i.ip = mul nsw i32 %i.io, %.0452554
  %i.iq = add nsw i32 %i.ip, -18
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next714
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !18
  store i32 %i.iq, ptr %i.is, align 4, !tbaa !4
  %indvars.iv.next714.1 = add nuw nsw i64 %indvars.iv713, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.v, !llvm.loop !25

.preheader515:                                    ; preds = %.preheader515.lr.ph, %._crit_edge604
  %.1607 = phi i64 [ %indvars.iv.next709, %._crit_edge604 ], [ 0, %.preheader515.lr.ph ]
  %.0399606 = phi i32 [ %i.jl, %._crit_edge604 ], [ 0, %.preheader515.lr.ph ] ; 2 uses
  %i.it = add nsw i32 %.0399606, %i.hv            ; 2 uses
  %i.iu = mul nsw i32 %i.it, %.0450552
  %i.iv = add nsw i32 %i.it, 1
  %i.iw = mul nsw i32 %i.iv, %.0450552
  %i.ix = add nsw i32 %i.iw, -1
  br label %bb.w

bb.w:                                             ; preds = %.preheader515, %bb.w
  %indvars.iv708 = phi i64 [ %.1607, %.preheader515 ], [ %indvars.iv.next709, %bb.w ] ; 3 uses
  %.1402601 = phi i32 [ 0, %.preheader515 ], [ %i.jk, %bb.w ] ; 2 uses
  %i.iy = add nsw i32 %.1402601, %i.hu            ; 2 uses
  %i.iz = mul nsw i32 %i.iy, %.0452554
  %i.ja = add nsw i32 %i.iz, -17
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %indvars.iv708
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !18 ; 2 uses
  store i32 %i.ja, ptr %i.jc, align 4, !tbaa !4
  %i.jd = add nsw i32 %i.iy, 1
  %i.je = mul nsw i32 %i.jd, %.0452554
  %i.jf = add nsw i32 %i.je, -18
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %indvars.iv708
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !18 ; 2 uses
  store i32 %i.jf, ptr %i.jh, align 4, !tbaa !4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i32 %i.iu, ptr %i.ji, align 4, !tbaa !4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  store i32 %i.ix, ptr %i.jj, align 4, !tbaa !4
  %indvars.iv.next709 = add nsw i64 %indvars.iv708, 1 ; 2 uses
  %i.jk = add nuw nsw i32 %.1402601, 1            ; 2 uses
  %exitcond711.not = icmp eq i32 %i.jk, %.0440542
  br i1 %exitcond711.not, label %._crit_edge604, label %bb.w, !llvm.loop !26

._crit_edge604:                                   ; preds = %bb.w
  %i.jl = add nuw nsw i32 %.0399606, 1            ; 2 uses
  %exitcond712.not = icmp eq i32 %i.jl, %.0438540
  br i1 %exitcond712.not, label %.loopexit, label %.preheader515, !llvm.loop !27

.preheader519:                                    ; preds = %.preheader519.lr.ph, %._crit_edge597
  %.3600 = phi i32 [ %.us-phi, %._crit_edge597 ], [ 0, %.preheader519.lr.ph ] ; 2 uses
  %.0398599 = phi i32 [ %i.kn, %._crit_edge597 ], [ 0, %.preheader519.lr.ph ] ; 2 uses
  %i.jm = add nsw i32 %.0398599, %.0425           ; 2 uses
  %i.jn = mul nsw i32 %i.jm, %.0448550
  %i.jo = add nsw i32 %i.jn, 32
  %i.jp = add nsw i32 %i.jm, 1
  %i.jq = mul nsw i32 %i.jp, %.0448550
  %i.jr = add nsw i32 %i.jq, 31
  br i1 %i.hp, label %.preheader518.us.preheader, label %._crit_edge597

.preheader518.us.preheader:                       ; preds = %.preheader519
  %2 = sext i32 %.3600 to i64
  br label %.preheader518.us

.preheader518.us:                                 ; preds = %.preheader518.us.preheader, %._crit_edge593.us
  %.4596.us = phi i64 [ %indvars.iv.next703.a, %._crit_edge593.us ], [ %2, %.preheader518.us.preheader ]
  %.1400595.us = phi i32 [ %i.km, %._crit_edge593.us ], [ 0, %.preheader518.us.preheader ] ; 2 uses
  %i.js = add nsw i32 %.1400595.us, %i.hr         ; 2 uses
  %i.jt = mul nsw i32 %i.js, %.0450552
  %i.ju = add nsw i32 %i.js, 1
  %i.jv = mul nsw i32 %i.ju, %.0450552
  %i.jw = add nsw i32 %i.jv, -1
  br label %bb.x

bb.x:                                             ; preds = %.preheader518.us, %bb.x
  %indvars.iv702.a = phi i64 [ %.4596.us, %.preheader518.us ], [ %indvars.iv.next703.a, %bb.x ] ; 3 uses
  %.2403590.us = phi i32 [ 0, %.preheader518.us ], [ %i.kl, %bb.x ] ; 2 uses
  %i.jx = add nsw i32 %.2403590.us, %i.hq         ; 2 uses
  %i.jy = mul nsw i32 %i.jx, %.0452554
  %i.jz = add nsw i32 %i.jy, -17
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %indvars.iv702.a
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !18 ; 3 uses
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !4
  %i.kc = add nsw i32 %i.jx, 1
  %i.kd = mul nsw i32 %i.kc, %.0452554
  %i.ke = add nsw i32 %i.kd, -18
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %indvars.iv702.a
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !18 ; 3 uses
  store i32 %i.ke, ptr %i.kg, align 4, !tbaa !4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  store i32 %i.jt, ptr %i.kh, align 4, !tbaa !4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i32 %i.jw, ptr %i.ki, align 4, !tbaa !4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i32 %i.jo, ptr %i.kj, align 4, !tbaa !4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i32 %i.jr, ptr %i.kk, align 4, !tbaa !4
  %indvars.iv.next703.a = add nsw i64 %indvars.iv702.a, 1 ; 3 uses
  %i.kl = add nuw nsw i32 %.2403590.us, 1         ; 2 uses
  %exitcond705.not = icmp eq i32 %i.kl, %.0440542
  br i1 %exitcond705.not, label %._crit_edge593.us, label %bb.x, !llvm.loop !28

._crit_edge593.us:                                ; preds = %bb.x
  %i.km = add nuw nsw i32 %.1400595.us, 1         ; 2 uses
  %exitcond706.not = icmp eq i32 %i.km, %.0438540
  br i1 %exitcond706.not, label %._crit_edge597.loopexit, label %.preheader518.us, !llvm.loop !29

._crit_edge597.loopexit:                          ; preds = %._crit_edge593.us
  %3 = trunc nsw i64 %indvars.iv.next703.a to i32
  br label %._crit_edge597

._crit_edge597:                                   ; preds = %.preheader519, %._crit_edge597.loopexit
  %.us-phi = phi i32 [ %3, %._crit_edge597.loopexit ], [ %.3600, %.preheader519 ]
  %i.kn = add nuw nsw i32 %.0398599, 1            ; 2 uses
  %exitcond707.not = icmp eq i32 %i.kn, %.0436538
  br i1 %exitcond707.not, label %.loopexit, label %.preheader519, !llvm.loop !30

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph610
  %indvars.iv713.epil.init = phi i64 [ 0, %.lr.ph610 ], [ %indvars.iv.next714.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod936 = trunc i32 %.0440542 to i1
  call void @llvm.assume(i1 %lcmp.mod936)
  %indvars717.epil = trunc i64 %indvars.iv713.epil.init to i32
  %i.ko = add nsw i32 %i.hx, %indvars717.epil     ; 2 uses
  %i.kp = mul nsw i32 %i.ko, %.0452554
  %i.kq = add nsw i32 %i.kp, -17
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv713.epil.init
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !18
  store i32 %i.kq, ptr %i.ks, align 4, !tbaa !4
  %i.kt = add nsw i32 %i.ko, 1
  %i.ku = mul nsw i32 %i.kt, %.0452554
  %i.kv = add nsw i32 %i.ku, -18
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv713.epil.init
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !18
  store i32 %i.kv, ptr %i.kx, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge597, %._crit_edge604, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader520, %.preheader519.lr.ph, %.preheader516, %.preheader515.lr.ph, %.preheader514, %._crit_edge
  %i.ky = call i32 @HYPRE_StructGridCreate(i32 noundef 0, i32 noundef %.0423528, ptr noundef nonnull %i.n) #10 ; 0 uses
  br i1 %i.gz, label %.lr.ph613.preheader, label %._crit_edge614

.lr.ph613.preheader:                              ; preds = %.loopexit
  %wide.trip.count723 = zext nneg i32 %.0418 to i64
  br label %.lr.ph613

.lr.ph613:                                        ; preds = %.lr.ph613.preheader, %.lr.ph613
  %indvars.iv720 = phi i64 [ 0, %.lr.ph613.preheader ], [ %indvars.iv.next721, %.lr.ph613 ] ; 3 uses
  %i.kz = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv720
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv720
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !18
  %i.le = call i32 @HYPRE_StructGridSetExtents(ptr noundef %i.kz, ptr noundef %i.lb, ptr noundef %i.ld) #10 ; 0 uses
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %exitcond724.not = icmp eq i64 %indvars.iv.next721, %wide.trip.count723
  br i1 %exitcond724.not, label %._crit_edge614, label %.lr.ph613, !llvm.loop !33

._crit_edge614:                                   ; preds = %.lr.ph613, %.loopexit
  %i.lf = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.lg = call i32 @HYPRE_StructGridAssemble(ptr noundef %i.lf) #10 ; 0 uses
  %i.lh = add i32 %.0423528, 1                    ; 7 uses
  %i.li = call i32 @HYPRE_StructStencilCreate(i32 noundef %.0423528, i32 noundef %i.lh, ptr noundef nonnull %i.o) #10 ; 0 uses
  %.not472615 = icmp slt i32 %.0423528, 0         ; 3 uses
  br i1 %.not472615, label %._crit_edge619, label %.lr.ph618.preheader

.lr.ph618.preheader:                              ; preds = %._crit_edge614
  %wide.trip.count728 = zext i32 %i.lh to i64
  br label %.lr.ph618

.lr.ph618:                                        ; preds = %.lr.ph618.preheader, %.lr.ph618
  %indvars.iv725 = phi i64 [ 0, %.lr.ph618.preheader ], [ %indvars.iv.next726, %.lr.ph618 ] ; 3 uses
  %i.lj = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %.0416, i64 %indvars.iv725
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !18
  %i.lm = trunc nuw nsw i64 %indvars.iv725 to i32
  %i.ln = call i32 @HYPRE_StructStencilSetElement(ptr noundef %i.lj, i32 noundef %i.lm, ptr noundef %i.ll) #10 ; 0 uses
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %exitcond729.not = icmp eq i64 %indvars.iv.next726, %wide.trip.count728
  br i1 %exitcond729.not, label %._crit_edge619, label %.lr.ph618, !llvm.loop !36

._crit_edge619:                                   ; preds = %.lr.ph618, %._crit_edge614
  %i.lo = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.lp = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.lq = call i32 @HYPRE_StructMatrixCreate(i32 noundef 0, ptr noundef %i.lo, ptr noundef %i.lp, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.lr = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.ls = call i32 @HYPRE_StructMatrixSetSymmetric(ptr noundef %i.lr, i32 noundef 1) #10 ; 0 uses
  %i.lt = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.lu = call i32 @HYPRE_StructMatrixSetNumGhost(ptr noundef %i.lt, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.lv = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.lw = call i32 @HYPRE_StructMatrixInitialize(ptr noundef %i.lv) #10 ; 0 uses
  %i.lx = mul nsw i32 %.0417, %i.lh               ; 3 uses
  %i.ly = call ptr @hypre_CAlloc(i32 noundef %i.lx, i32 noundef 8) #10 ; 5 uses
  %i.lz = icmp sgt i32 %i.lx, 0
  br i1 %i.lz, label %.preheader513.lr.ph, label %.preheader512

.preheader513.lr.ph:                              ; preds = %._crit_edge619
  %i.ma = insertelement <2 x double> poison, double %.0434536, i64 0
  %i.mb = insertelement <2 x double> %i.ma, double %.0432534, i64 1
  %i.mc = fneg <2 x double> %i.mb                 ; 3 uses
  %i.md = fneg double %.0430532
  %i.me = fadd double %.0434536, %.0432534        ; 2 uses
  %i.mf = fadd double %i.me, %.0430532
  %i.mg = fmul double %i.mf, 2.000000e+00
  %i.mh = fmul double %i.me, 2.000000e+00
  %i.mi = fmul double %.0434536, 2.000000e+00
  br i1 %.not472615, label %.preheader512, label %.preheader513.preheader

.preheader513.preheader:                          ; preds = %.preheader513.lr.ph
  %i.mj = zext i32 %i.lh to i64                   ; 13 uses
  %i.mk = extractelement <2 x double> %i.mc, i64 0
  %min.iters.check848 = icmp ult i32 %i.lh, 8     ; 4 uses
  %n.vec890 = and i64 %i.mj, 4294967288           ; 3 uses
  %cmp.n898 = icmp eq i64 %n.vec890, %i.mj
  %n.vec876 = and i64 %i.mj, 4294967288           ; 3 uses
  %cmp.n884 = icmp eq i64 %n.vec876, %i.mj
  %n.vec862 = and i64 %i.mj, 4294967288           ; 3 uses
  %cmp.n870 = icmp eq i64 %n.vec862, %i.mj
  %n.vec851 = and i64 %i.mj, 4294967288           ; 3 uses
  %cmp.n856 = icmp eq i64 %n.vec851, %i.mj
  br label %.preheader513

.preheader513:                                    ; preds = %.preheader513.preheader, %._crit_edge623
  %indvars.iv750 = phi i64 [ 0, %.preheader513.preheader ], [ %indvars.iv.next751, %._crit_edge623 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv750 ; 6 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 8
  %i.mn = getelementptr i8, ptr %i.ml, i64 16     ; 2 uses
  %i.mo = getelementptr i8, ptr %i.ml, i64 24
  switch i32 %.0423528, label %.lr.ph622.split.preheader [
    i32 1, label %.lr.ph622.split.us.preheader
    i32 2, label %.lr.ph622.split.us624.preheader
    i32 3, label %.lr.ph622.split.us627.preheader
  ]

.lr.ph622.split.us627.preheader:                  ; preds = %.preheader513
  br i1 %min.iters.check848, label %.lr.ph622.split.us627.preheader915, label %vector.body891

vector.body891:                                   ; preds = %.lr.ph622.split.us627.preheader, %vector.body891
  %index892 = phi i64 [ %index.next895, %vector.body891 ], [ 0, %.lr.ph622.split.us627.preheader ] ; 2 uses
  %vec.ind893 = phi <4 x i32> [ %vec.ind.next896, %vector.body891 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph622.split.us627.preheader ] ; 3 uses
  %step.add894 = add <4 x i32> %vec.ind893, splat (i32 4)
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.0415, i64 %index892 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store <4 x i32> %vec.ind893, ptr %i.mp, align 4, !tbaa !4
  store <4 x i32> %step.add894, ptr %i.mq, align 4, !tbaa !4
  %index.next895 = add nuw i64 %index892, 8       ; 2 uses
  %vec.ind.next896 = add <4 x i32> %vec.ind893, splat (i32 8)
  %i.mr = icmp eq i64 %index.next895, %n.vec890
  br i1 %i.mr, label %middle.block897, label %vector.body891, !llvm.loop !39

middle.block897:                                  ; preds = %vector.body891
  br i1 %cmp.n898, label %._crit_edge623.split.split.split.us, label %.lr.ph622.split.us627.preheader915

.lr.ph622.split.us627.preheader915:               ; preds = %.lr.ph622.split.us627.preheader, %middle.block897
  %indvars.iv730.ph = phi i64 [ 0, %.lr.ph622.split.us627.preheader ], [ %n.vec890, %middle.block897 ]
  br label %.lr.ph622.split.us627

.lr.ph622.split.us624.preheader:                  ; preds = %.preheader513
  br i1 %min.iters.check848, label %.lr.ph622.split.us624.preheader914, label %vector.body877

vector.body877:                                   ; preds = %.lr.ph622.split.us624.preheader, %vector.body877
  %index878 = phi i64 [ %index.next881, %vector.body877 ], [ 0, %.lr.ph622.split.us624.preheader ] ; 2 uses
  %vec.ind879 = phi <4 x i32> [ %vec.ind.next882, %vector.body877 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph622.split.us624.preheader ] ; 3 uses
  %step.add880 = add <4 x i32> %vec.ind879, splat (i32 4)
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.0415, i64 %index878 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store <4 x i32> %vec.ind879, ptr %i.ms, align 4, !tbaa !4
  store <4 x i32> %step.add880, ptr %i.mt, align 4, !tbaa !4
  %index.next881 = add nuw i64 %index878, 8       ; 2 uses
  %vec.ind.next882 = add <4 x i32> %vec.ind879, splat (i32 8)
  %i.mu = icmp eq i64 %index.next881, %n.vec876
  br i1 %i.mu, label %middle.block883, label %vector.body877, !llvm.loop !40

middle.block883:                                  ; preds = %vector.body877
  br i1 %cmp.n884, label %._crit_edge623.split.split.us, label %.lr.ph622.split.us624.preheader914

.lr.ph622.split.us624.preheader914:               ; preds = %.lr.ph622.split.us624.preheader, %middle.block883
  %indvars.iv735.ph = phi i64 [ 0, %.lr.ph622.split.us624.preheader ], [ %n.vec876, %middle.block883 ]
  br label %.lr.ph622.split.us624

.lr.ph622.split.us.preheader:                     ; preds = %.preheader513
  br i1 %min.iters.check848, label %.lr.ph622.split.us.preheader913, label %vector.body863

vector.body863:                                   ; preds = %.lr.ph622.split.us.preheader, %vector.body863
  %index864 = phi i64 [ %index.next867, %vector.body863 ], [ 0, %.lr.ph622.split.us.preheader ] ; 2 uses
  %vec.ind865 = phi <4 x i32> [ %vec.ind.next868, %vector.body863 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph622.split.us.preheader ] ; 3 uses
  %step.add866 = add <4 x i32> %vec.ind865, splat (i32 4)
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.0415, i64 %index864 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <4 x i32> %vec.ind865, ptr %i.mv, align 4, !tbaa !4
  store <4 x i32> %step.add866, ptr %i.mw, align 4, !tbaa !4
  %index.next867 = add nuw i64 %index864, 8       ; 2 uses
  %vec.ind.next868 = add <4 x i32> %vec.ind865, splat (i32 8)
  %i.mx = icmp eq i64 %index.next867, %n.vec862
  br i1 %i.mx, label %middle.block869, label %vector.body863, !llvm.loop !41

middle.block869:                                  ; preds = %vector.body863
  br i1 %cmp.n870, label %._crit_edge623.split.us, label %.lr.ph622.split.us.preheader913

.lr.ph622.split.us.preheader913:                  ; preds = %.lr.ph622.split.us.preheader, %middle.block869
  %indvars.iv740.ph = phi i64 [ 0, %.lr.ph622.split.us.preheader ], [ %n.vec862, %middle.block869 ]
  br label %.lr.ph622.split.us

.lr.ph622.split.preheader:                        ; preds = %.preheader513
  br i1 %min.iters.check848, label %.lr.ph622.split.preheader912, label %vector.body852

vector.body852:                                   ; preds = %.lr.ph622.split.preheader, %vector.body852
  %index853 = phi i64 [ %index.next854, %vector.body852 ], [ 0, %.lr.ph622.split.preheader ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body852 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph622.split.preheader ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.0415, i64 %index853 ; 2 uses
end_hunk_0
