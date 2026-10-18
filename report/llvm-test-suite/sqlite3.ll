Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 107
begin_hunk_0_@sqlite3VdbeMemFromBtree:bb.a
bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !195
  %.not38 = icmp eq ptr %i.ck, null
  br i1 %.not38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %4)
  %i.cl = sext i32 %1 to i64
  %i.cm = getelementptr inbounds i8, ptr %.035, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !194
  store i16 272, ptr %i.cf, align 4, !tbaa !197
  br label %bb.y

bb.o:                                             ; preds = %bb.m, %sqlite3BtreeKeyFetch.exit
  %i.co = add nsw i32 %2, 2
  %i.cp = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %4, i32 noundef %i.co, i32 noundef 0) ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i16 112, ptr %i.cr, align 4, !tbaa !197
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 39
  store i8 0, ptr %i.cs, align 1, !tbaa !198
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 38
  store i8 4, ptr %i.ct, align 2, !tbaa !199
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !194 ; 4 uses
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = tail call fastcc i32 @sqlite3BtreeKey(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.cv)
  br label %sqlite3BtreeData.exit

bb.r:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !341 ; 2 uses
  %i.cz = icmp ugt i8 %i.cy, 1
  br i1 %i.cz, label %bb.s, label %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %i.da = icmp eq i8 %i.cy, 3
  br i1 %i.da, label %sqlite3BtreeRestoreOrClearCursorPosition.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !334
  %.not.i.i45 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i45, label %bb.u, label %sqlite3BtreeData.exit.thread

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.cx, align 1, !tbaa !341
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !342
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !343
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.di = tail call fastcc i32 @sqlite3BtreeMoveto(ptr noundef nonnull %0, ptr noundef %i.de, i64 noundef %i.dg, i32 noundef 0, ptr noundef nonnull %i.dh), !inline_history !344 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.v, label %.sqlite3BtreeData.exit.thread_crit_edge

.sqlite3BtreeData.exit.thread_crit_edge:          ; preds = %bb.u
  %.pre = load ptr, ptr %i.cu, align 8, !tbaa !194
  br label %sqlite3BtreeData.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !342 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %sqlite3_free.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !130
  %i.do = shl i64 %i.dn, 32
  %i.dp = ashr exact i64 %i.do, 32
  %i.dq = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.dr = sub nsw i64 %i.dq, %i.dp
  store i64 %i.dr, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.dm) #43, !inline_history !344
  br label %sqlite3_free.exit.i.i

sqlite3_free.exit.i.i:                            ; preds = %bb.w, %bb.v
  store ptr null, ptr %i.dd, align 8, !tbaa !342
  br label %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread.i

sqlite3BtreeRestoreOrClearCursorPosition.exit.i:  ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !345 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread.i, label %sqlite3BtreeData.exit.thread

sqlite3BtreeRestoreOrClearCursorPosition.exit.thread.i: ; preds = %sqlite3BtreeRestoreOrClearCursorPosition.exit.i, %sqlite3_free.exit.i.i, %bb.r
  %i.dv = tail call fastcc i32 @accessPayload(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.cv, i32 noundef 1, i32 noundef 0)
  br label %sqlite3BtreeData.exit

sqlite3BtreeData.exit.thread:                     ; preds = %.sqlite3BtreeData.exit.thread_crit_edge, %sqlite3BtreeRestoreOrClearCursorPosition.exit.i, %bb.t
  %i.dw = phi ptr [ %.pre, %.sqlite3BtreeData.exit.thread_crit_edge ], [ %i.cv, %bb.t ], [ %i.cv, %sqlite3BtreeRestoreOrClearCursorPosition.exit.i ]
  %.0.ph = phi i32 [ %i.di, %.sqlite3BtreeData.exit.thread_crit_edge ], [ 4, %bb.t ], [ %i.dt, %sqlite3BtreeRestoreOrClearCursorPosition.exit.i ]
  %i.dx = sext i32 %2 to i64                      ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  store i8 0, ptr %i.dy, align 1, !tbaa !139
  %i.dz = load ptr, ptr %i.cu, align 8, !tbaa !194
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dx
  %i.eb = getelementptr i8, ptr %i.ea, i64 1
  store i8 0, ptr %i.eb, align 1, !tbaa !139
  br label %bb.x

sqlite3BtreeData.exit:                            ; preds = %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread.i, %bb.q
  %.0 = phi i32 [ %i.cw, %bb.q ], [ %i.dv, %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !194
  %i.ee = sext i32 %2 to i64                      ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 %i.ee
  store i8 0, ptr %i.ef, align 1, !tbaa !139
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !194
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.ee
  %i.ei = getelementptr i8, ptr %i.eh, i64 1
  store i8 0, ptr %i.ei, align 1, !tbaa !139
  %.not39 = icmp eq i32 %.0, 0
  br i1 %.not39, label %bb.y, label %bb.x

bb.x:                                             ; preds = %sqlite3BtreeData.exit.thread, %sqlite3BtreeData.exit
  %.050 = phi i32 [ %.0.ph, %sqlite3BtreeData.exit.thread ], [ %.0, %sqlite3BtreeData.exit ]
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %4)
  br label %bb.y

bb.y:                                             ; preds = %bb.o, %bb.x, %sqlite3BtreeData.exit, %bb.n
  %.1 = phi i32 [ 0, %bb.n ], [ %.050, %bb.x ], [ 0, %sqlite3BtreeData.exit ], [ %i.cp, %bb.o ]
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %2, ptr %i.ej, align 8, !tbaa !196
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2147483647) i32 @sqlite3VdbeSerialGet(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((36, 38)) %2) unnamed_addr #14 {
bb.a:
  switch i32 %1, label %bb.l [
    i32 10, label %bb.b
    i32 11, label %bb.b
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.h
    i32 8, label %bb.k
    i32 9, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 1, ptr %i.a, align 4, !tbaa !197
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !139
  %i.c = sext i8 %i.b to i64
  store i64 %i.c, ptr %2, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 4, ptr %i.d, align 4, !tbaa !197
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !139
  %i.f = sext i8 %i.e to i32
  %i.g = shl nsw i32 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !139
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j
  %i.l = sext i32 %i.k to i64
  store i64 %i.l, ptr %2, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 4, ptr %i.m, align 4, !tbaa !197
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.n = load i8, ptr %0, align 1, !tbaa !139
  %i.o = sext i8 %i.n to i32
  %i.p = shl nsw i32 %i.o, 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !139
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.t, %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !139
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x
  %i.z = sext i32 %i.y to i64
  store i64 %i.z, ptr %2, align 8, !tbaa !139
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 4, ptr %i.aa, align 4, !tbaa !197
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %3 = load i8, ptr %0, align 1, !tbaa !139
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !139
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !139
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !139
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %15, %18
  %i.ab = sext i32 %19 to i64
  store i64 %i.ab, ptr %2, align 8, !tbaa !139
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 4, ptr %i.ac, align 4, !tbaa !197
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.ad = load i8, ptr %0, align 1, !tbaa !139
  %i.ae = sext i8 %i.ad to i32
  %i.af = shl nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !139
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2
  %20 = load i8, ptr %i.al, align 1, !tbaa !139
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 24
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %24 = load i8, ptr %23, align 1, !tbaa !139
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 16
  %27 = or disjoint i64 %26, %22
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %29 = load i8, ptr %28, align 1, !tbaa !139
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 8
  %32 = or disjoint i64 %27, %31
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %34 = load i8, ptr %33, align 1, !tbaa !139
  %i.am = zext i8 %34 to i64
  %35 = or disjoint i64 %32, %i.am
  %i.an = shl nsw i64 %i.ak, 32
  %i.ao = or disjoint i64 %35, %i.an
  store i64 %i.ao, ptr %2, align 8, !tbaa !139
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 4, ptr %i.ap, align 4, !tbaa !197
  br label %bb.o

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.aq = load i8, ptr %0, align 1, !tbaa !139
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !139
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 16
  %i.ax = or disjoint i32 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !139
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = or disjoint i32 %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !139
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !139
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !139
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 16
  %i.bq = or disjoint i64 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !139
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 8
  %i.bv = or disjoint i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !139
  %i.by = zext i8 %i.bx to i64
  %i.bz = or disjoint i64 %i.bv, %i.by
  %i.ca = shl nsw i64 %i.bh, 32
  %i.cb = or disjoint i64 %i.bz, %i.ca            ; 2 uses
  %i.cc = icmp eq i32 %1, 6
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.cb, ptr %2, align 8, !tbaa !139
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 4, ptr %i.cd, align 4, !tbaa !197
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cb, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 8, ptr %i.cf, align 4, !tbaa !197
  br label %bb.o

bb.k:                                             ; preds = %bb.a, %bb.a
  %i.cg = add nsw i32 %1, -8
  %i.ch = zext nneg i32 %i.cg to i64
  store i64 %i.ch, ptr %2, align 8, !tbaa !139
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 4, ptr %i.ci, align 4, !tbaa !197
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.cj = add i32 %1, -12
  %i.ck = lshr i32 %i.cj, 1                       ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %0, ptr %i.cl, align 8, !tbaa !194
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.ck, ptr %i.cm, align 8, !tbaa !196
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.cn, align 8, !tbaa !195
  %i.co = and i32 %1, 1
  %.not = icmp eq i32 %i.co, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i16 258, ptr %i.cp, align 4, !tbaa !197
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store i16 272, ptr %i.cp, align 4, !tbaa !197
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.i, %bb.j, %bb.b, %bb.k, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 8, %bb.i ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 6, %bb.g ], [ 0, %bb.k ], [ 8, %bb.j ], [ %i.ck, %bb.n ], [ %i.ck, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @sqlite3PutVarint(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) unnamed_addr #33 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %.not = icmp ult i64 %1, 72057594037927936
  br i1 %.not, label %.preheader, label %.loopexit.loopexit33

.loopexit.loopexit33:                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.c, align 1, !tbaa !139
  %i.d = lshr i64 %1, 8
  %i.e = trunc i64 %i.d to i8
  %i.f = or i8 %i.e, -128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.f, ptr %i.g, align 1, !tbaa !139
  %i.h = lshr i64 %1, 15
  %i.i = trunc i64 %i.h to i8
  %i.j = or i8 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.j, ptr %i.k, align 1, !tbaa !139
  %i.l = lshr i64 %1, 22
  %i.m = trunc i64 %i.l to i8
  %i.n = or i8 %i.m, -128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.n, ptr %i.o, align 1, !tbaa !139
  %i.p = lshr i64 %1, 29
  %i.q = trunc i64 %i.p to i8
  %i.r = or i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !139
  %i.t = lshr i64 %1, 36
  %i.u = trunc i64 %i.t to i8
  %i.v = or i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !139
  %i.x = lshr i64 %1, 43
  %i.y = trunc i64 %i.x to i8
  %i.z = or i8 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !139
  %i.ab = lshr i64 %1, 50
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = or i8 %i.ac, -128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !139
  %i.af = lshr i64 %1, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, -128
  store i8 %i.ah, ptr %0, align 1, !tbaa !139
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv43 = phi i32 [ %indvars.iv.next44, %.preheader ], [ 1, %bb.a ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 7 uses
  %.125 = phi i64 [ %i.al, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.ai = trunc i64 %.125 to i8
  %i.aj = or i8 %i.ai, -128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !139
  %i.al = lshr i64 %.125, 7                       ; 2 uses
  %.not27 = icmp eq i64 %i.al, 0
  %indvars.iv.next44 = add nuw nsw i32 %indvars.iv43, 1
  br i1 %.not27, label %iter.check, label %.preheader, !llvm.loop !60

iter.check:                                       ; preds = %.preheader
  %i.am = load i8, ptr %i.a, align 1, !tbaa !139
  %i.an = and i8 %i.am, 127
  store i8 %i.an, ptr %i.a, align 1, !tbaa !139
  %wide.trip.count = zext nneg i32 %indvars.iv43 to i64 ; 6 uses
  %min.iters.check = icmp samesign ult i32 %indvars.iv43, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp samesign ult i32 %indvars.iv43, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.ap = sub nsw i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = sub i64 %indvars.iv, %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -15
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -31
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !139
  %wide.load46 = load <16 x i8>, ptr %i.at, align 1, !tbaa !139
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse47 = shufflevector <16 x i8> %wide.load46, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %reverse, ptr %i.au, align 1, !tbaa !139
  store <16 x i8> %reverse47, ptr %i.av, align 1, !tbaa !139
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
end_hunk_0
