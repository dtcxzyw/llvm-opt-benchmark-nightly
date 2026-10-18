Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3VdbeHandleMovedCursor:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.i, align 2, !tbaa !741
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %sqlite3BtreeCursorRestore.exit
  %.0.i7 = phi i32 [ %.0.i6, %bb.c ], [ 0, %sqlite3BtreeCursorRestore.exit ]
  ret i32 %.0.i7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext range(i8 1, 10) i8 @sqlite3GetVarint32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #21 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !741   ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %0, align 1, !tbaa !741
  %i.g = and i8 %i.f, 127
  %i.h = zext nneg i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 7
  %i.j = or disjoint i32 %i.i, %i.d
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !741   ; 2 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i8 %i.l to i32
  %i.o = load i8, ptr %0, align 1, !tbaa !741
  %i.p = and i8 %i.o, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = shl nuw nsw i32 %i.d, 7
  %i.t = and i32 %i.s, 16256
  %i.u = or disjoint i32 %i.r, %i.t
  %i.v = or disjoint i32 %i.u, %i.n
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.x = load i64, ptr %i.a, align 8, !tbaa !571  ; 2 uses
  %.not = icmp ult i64 %i.x, 4294967296
  %i.y = trunc nuw i64 %i.x to i32
  %storemerge = select i1 %.not, i32 %i.y, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %storemerge.sink = phi i32 [ %storemerge, %bb.e ], [ %i.v, %bb.d ], [ %i.j, %bb.b ]
  %.0 = phi i8 [ %i.w, %bb.e ], [ 3, %bb.d ], [ 2, %bb.b ]
  store i32 %storemerge.sink, ptr %1, align 4, !tbaa !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VdbeMemFromBtreeZeroOffset(ptr noundef %0, i32 noundef %1, ptr noundef initializes((8, 16), (20, 22)) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i16, ptr %i.a, align 4, !tbaa !1132
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1125
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1134 ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp sgt i32 %i.c, %i.m
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %.0.i.i = select i1 %i.n, i32 %spec.select.i.i, i32 %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.i, ptr %i.o, align 8, !tbaa !768
  %.not = icmp ugt i32 %1, %.0.i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 16400, ptr %i.p, align 4, !tbaa !694
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %1, ptr %i.q, align 8, !tbaa !934
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = tail call fastcc i32 @sqlite3VdbeMemFromBtree(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.r, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sqlite3VdbeSerialGet(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((20, 22)) %2) unnamed_addr #21 {
bb.a:
  switch i32 %1, label %bb.l [
    i32 10, label %bb.b
    i32 11, label %bb.c
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.i
    i32 8, label %bb.k
    i32 9, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 1025, ptr %i.a, align 4, !tbaa !694
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !934
  store i32 0, ptr %2, align 8, !tbaa !741
  br label %bb.m

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 1, ptr %i.c, align 4, !tbaa !694
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !741
  %i.e = sext i8 %i.d to i64
  store i64 %i.e, ptr %2, align 8, !tbaa !741
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.f, align 4, !tbaa !694
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.g = load i8, ptr %0, align 1, !tbaa !741
  %i.h = sext i8 %i.g to i32
  %i.i = shl nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !741
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  %i.n = sext i32 %i.m to i64
  store i64 %i.n, ptr %2, align 8, !tbaa !741
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.o, align 4, !tbaa !694
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.p = load i8, ptr %0, align 1, !tbaa !741
  %i.q = sext i8 %i.p to i32
  %i.r = shl nsw i32 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !741
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !741
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = sext i32 %i.aa to i64
  store i64 %i.ab, ptr %2, align 8, !tbaa !741
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.ac, align 4, !tbaa !694
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.ad = load i8, ptr %0, align 1, !tbaa !741
  %i.ae = sext i8 %i.ad to i32
  %i.af = shl nsw i32 %i.ae, 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !741
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 16
  %i.ak = or disjoint i32 %i.aj, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !741
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 8
  %i.ap = or disjoint i32 %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !741
  %i.as = zext i8 %i.ar to i32
  %i.at = or disjoint i32 %i.ap, %i.as
  %i.au = sext i32 %i.at to i64
  store i64 %i.au, ptr %2, align 8, !tbaa !741
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.av, align 4, !tbaa !694
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2
  %3 = load i32, ptr %i.aw, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %i.ax = zext i32 %4 to i64
  %i.ay = load i8, ptr %0, align 1, !tbaa !741
  %i.az = sext i8 %i.ay to i32
  %i.ba = shl nsw i32 %i.az, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !741
  %i.bd = zext i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ba, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 32
  %i.bh = or disjoint i64 %i.bg, %i.ax
  store i64 %i.bh, ptr %2, align 8, !tbaa !741
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.bi, align 4, !tbaa !694
  br label %bb.m

bb.i:                                             ; preds = %bb.a, %bb.a
  %i.bj = load i8, ptr %0, align 1, !tbaa !741
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !741
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 16
  %i.bq = or disjoint i64 %i.bp, %i.bl            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !741
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !741
  %i.bx = zext i8 %i.bw to i64
  %i.by = or disjoint i64 %i.bu, %i.bx
  %i.bz = or disjoint i64 %i.by, %i.bq
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !741
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 24
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !741
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 16
  %i.ci = or disjoint i64 %i.ch, %i.cd
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !741
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !741
  %i.cp = zext i8 %i.co to i64
  %i.cq = shl nuw i64 %i.bz, 32
  %i.cr = or disjoint i64 %i.ci, %i.cq
  %i.cs = or disjoint i64 %i.cr, %i.cp
  %i.ct = or disjoint i64 %i.cs, %i.cm            ; 2 uses
  %i.cu = icmp eq i32 %1, 6
  br i1 %i.cu, label %serialGet.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = and i64 %i.bq, 2146435072
  %i.cw = icmp eq i64 %i.cv, 2146435072
  %i.cx = and i64 %i.ct, 4503599627370495
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = and i1 %i.cw, %i.cy
  %i.da = select i1 %i.cz, i16 1, i16 8
  br label %serialGet.exit

serialGet.exit:                                   ; preds = %bb.i, %bb.j
  %.sink.i = phi i16 [ %i.da, %bb.j ], [ 4, %bb.i ]
  store i64 %i.ct, ptr %2, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %.sink.i, ptr %i.db, align 4, !tbaa !694
  br label %bb.m

bb.k:                                             ; preds = %bb.a, %bb.a
  %i.dc = add nsw i32 %1, -8
  %i.dd = zext nneg i32 %i.dc to i64
  store i64 %i.dd, ptr %2, align 8, !tbaa !741
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.de, align 4, !tbaa !694
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.df, align 8, !tbaa !768
  %i.dg = add i32 %1, -12
  %i.dh = lshr i32 %i.dg, 1
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !934
  %i.dj = and i32 %1, 1
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr @sqlite3VdbeSerialGet.aFlag, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !789
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %i.dm, ptr %i.dn, align 4, !tbaa !694
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %serialGet.exit, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @vdbeColumnFromOverflow(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 65535) %1, i32 noundef %2, i64 noundef range(i64 0, 4294967296) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !691  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.d = load i8, ptr %i.c, align 2, !tbaa !795   ; 2 uses
  %i.e = icmp ugt i32 %2, 127
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %2, -12
  %i.g = lshr i32 %i.f, 1
  br label %sqlite3VdbeSerialTypeLen.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3SmallTypeSizes, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !741
  %i.k = zext i8 %i.j to i32
  br label %sqlite3VdbeSerialTypeLen.exit

sqlite3VdbeSerialTypeLen.exit:                    ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.c ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !576
  %i.n = icmp sgt i32 %.0.i, %i.m
  br i1 %i.n, label %.thread98, label %bb.d

bb.d:                                             ; preds = %sqlite3VdbeSerialTypeLen.exit
  %i.o = icmp samesign ugt i32 %.0.i, 4000
  br i1 %i.o, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1946
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 16
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %sqlite3DbMallocRaw.exit.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1893
  br label %bb.h

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.f
  %i.w = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.b, i64 noundef 32), !inline_history !37 ; 4 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %sqlite3DbMallocZero.exit.thread, label %bb.g

sqlite3DbMallocZero.exit.thread:                  ; preds = %sqlite3DbMallocRaw.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.x, align 8, !tbaa !1893
  br label %.thread98

bb.g:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.w, ptr %i.y, align 8, !tbaa !1893
  %i.z = load i8, ptr %i.s, align 1
  %i.aa = or i8 %i.z, 16
  store i8 %i.aa, ptr %i.s, align 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.ab = phi ptr [ %.pre, %._crit_edge ], [ %i.w, %bb.g ] ; 12 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1895 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %sqlite3RCStrUnref.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4863
  %.not86 = icmp eq i32 %i.af, %1
  br i1 %.not86, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4864
  %.not87 = icmp eq i32 %i.ah, %4
  br i1 %.not87, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !4865
  %.not88 = icmp eq i32 %i.aj, %5
  br i1 %.not88, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !4866
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !741
  %i.ao = tail call fastcc i64 @sqlite3BtreeOffset(ptr noundef %i.an)
  %.not89 = icmp eq i64 %i.al, %i.ao
  %.pr.pre = load ptr, ptr %i.ab, align 8, !tbaa !1895 ; 3 uses
  br i1 %.not89, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not90 = icmp eq ptr %.pr.pre, null
  br i1 %.not90, label %sqlite3RCStrUnref.exit, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.k, %bb.m
  %.pr114 = phi ptr [ %.pr.pre, %bb.m ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ]
  %i.ap = getelementptr inbounds i8, ptr %.pr114, i64 -8 ; 5 uses
end_hunk_0
begin_hunk_1_@rbuVfsRead:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 5, ptr %i.f, align 8, !tbaa !1434
  br label %rbuCaptureWalRead.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 %2, ptr %i.g, align 8, !tbaa !1477
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1463 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 348 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8277
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not32.i = icmp eq i32 %i.i, 0
  %i.m = shl nsw i32 %i.i, 1
  %spec.select.i = select i1 %.not32.i, i32 128, i32 %i.m ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1464
  %i.p = tail call i32 @sqlite3_initialize(), !inline_history !1273
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %rbuCaptureWalRead.exit

sqlite3_realloc64.exit.i:                         ; preds = %bb.f
  %i.q = sext i32 %spec.select.i to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.o, i64 noundef %i.r), !inline_history !1273 ; 2 uses
  %.not33.i = icmp eq ptr %i.s, null
  br i1 %.not33.i, label %rbuCaptureWalRead.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit.i
  store ptr %i.s, ptr %i.n, align 8, !tbaa !1464
  store i32 %spec.select.i, ptr %i.j, align 4, !tbaa !8277
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.t = add nsw i64 %3, -32
  %i.u = add nsw i32 %2, 24
  %i.v = sext i32 %i.u to i64
  %i.w = sdiv i64 %i.t, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.x, 1                          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1474
  %i.ab = icmp ult i32 %i.aa, %i.y
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.y, ptr %i.z, align 8, !tbaa !1474
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1464
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !1463 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.y, ptr %i.ah, align 4, !tbaa !1476
  store i32 0, ptr %i.ag, align 4, !tbaa !1466
  %i.ai = add nsw i32 %i.ae, 1
  store i32 %i.ai, ptr %i.h, align 8, !tbaa !1463
  br label %rbuCaptureWalRead.exit

bb.k:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1504
  %i.al = and i32 %i.ak, 524288
  %.not65 = icmp eq i32 %i.al, 0
  br i1 %.not65, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1489
  %.not66 = icmp slt i64 %3, %i.an
  br i1 %.not66, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.ao, i1 false)
  br label %bb.t

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1472 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !870
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1478
  %i.au = tail call i32 %i.at(ptr noundef nonnull %i.aq, ptr noundef %1, i32 noundef %2, i64 noundef %3) #58 ; 3 uses
  br i1 %.not, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1432
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = icmp eq i32 %i.au, 522
  %or.cond = select i1 %i.ax, i1 %i.ay, i1 false
  %i.az = icmp eq i64 %3, 0
  %or.cond3 = and i1 %i.az, %or.cond
  br i1 %or.cond3, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1504
  %i.bc = and i32 %i.bb, 256
  %.not67 = icmp eq i32 %i.bc, 0
  br i1 %.not67, label %rbuCaptureWalRead.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1434
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %rbuCaptureWalRead.exit

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3649 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !870
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1478
  %i.bl = tail call i32 %i.bk(ptr noundef nonnull %i.bh, ptr noundef %1, i32 noundef %2, i64 noundef 0) #58 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.r, label %rbuCaptureWalRead.exit

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !741
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 53 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !741
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !741
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 55 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !741
  %i.bv = or i8 %i.bq, %i.bo
  %i.bw = or i8 %i.bv, %i.bs
  %i.bx = or i8 %i.bw, %i.bu
  %i.by = icmp ne i8 %i.bx, 0
  store i8 0, ptr %i.bn, align 1, !tbaa !741
  store i8 0, ptr %i.bp, align 1, !tbaa !741
  store i8 0, ptr %i.br, align 1, !tbaa !741
  %i.bz = zext i1 %i.by to i8
  store i8 %i.bz, ptr %i.bt, align 1, !tbaa !741
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i64 0, ptr %i.ca, align 1
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.cb, align 1, !tbaa !741
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !3649
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !1488
  %i.cg = add i32 %i.cf, 1                        ; 4 uses
  %i.ch = lshr i32 %i.cg, 24
  %i.ci = trunc nuw i32 %i.ch to i8
  store i8 %i.ci, ptr %i.cc, align 1, !tbaa !741
  %i.cj = lshr i32 %i.cg, 16
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !741
  %i.cm = lshr i32 %i.cg, 8
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !741
  %i.cp = trunc i32 %i.cg to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !741
  %i.cr = icmp sgt i32 %2, 100
  br i1 %i.cr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.ct = add nsw i32 %2, -100
  %i.cu = zext nneg i32 %i.ct to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cs, i8 0, i64 %i.cu, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.cw = lshr i32 %2, 8
  %i.cx = trunc i32 %i.cw to i8
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !741
  %i.cy = trunc i32 %2 to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !741
  store i8 13, ptr %i.cs, align 1, !tbaa !741
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.critedge, %bb.n, %bb.m
  %.0 = phi i32 [ 0, %bb.m ], [ %i.au, %.critedge ], [ 0, %bb.r ], [ 0, %bb.s ], [ %i.au, %bb.n ] ; 2 uses
  %i.da = icmp eq i32 %.0, 0
  %i.db = icmp eq i64 %3, 0
  %or.cond5 = and i1 %i.db, %i.da
  br i1 %or.cond5, label %bb.u, label %rbuCaptureWalRead.exit

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !1504
  %i.de = and i32 %i.dd, 256
  %.not69 = icmp eq i32 %i.de, 0
  br i1 %.not69, label %rbuCaptureWalRead.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %4 = load i32, ptr %i.df, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %5, ptr %i.dg, align 4, !tbaa !1488
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !741
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.di, ptr %i.dj, align 8, !tbaa !3660
  br label %rbuCaptureWalRead.exit

rbuCaptureWalRead.exit:                           ; preds = %bb.q, %bb.o, %bb.p, %bb.j, %sqlite3_realloc64.exit.i, %bb.f, %bb.d, %bb.t, %bb.u, %bb.v
  %.1 = phi i32 [ %.0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.u ], [ 795, %bb.d ], [ 0, %bb.j ], [ 7, %sqlite3_realloc64.exit.i ], [ 7, %bb.f ], [ %i.bl, %bb.q ], [ 522, %bb.o ], [ 522, %bb.p ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsWrite(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1506 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1431
  switch i32 %i.c, label %._crit_edge [
    i32 3, label %bb.c
    i32 1, label %bb.d
  ]

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !1504
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1477
  %i.f = sext i32 %i.e to i64
  %i.g = sdiv i64 %3, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1464
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1463
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [8 x i8], ptr %i.k, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  store i32 %i.i, ptr %i.p, align 4, !tbaa !1466
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1504 ; 3 uses
  %i.s = and i32 %i.r, 524288
  %.not47 = icmp eq i32 %i.s, 0
  br i1 %.not47, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1489
  %.not48 = icmp slt i64 %3, %i.u
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = sext i32 %2 to i64
  %i.w = add nsw i64 %3, %i.v
  store i64 %i.w, ptr %i.t, align 8, !tbaa !1489
  br label %.critedge

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.d
  %i.x = phi i32 [ %.pre, %._crit_edge ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  %i.y = and i32 %i.x, 8
  %.not49 = icmp eq i32 %i.y, 0
  br i1 %.not49, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = sext i32 %2 to i64
  %i.aa = add nsw i64 %3, %i.z                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !3658 ; 2 uses
  %i.ad = icmp sgt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ae = sub nsw i64 %i.aa, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1519
  %i.ah = add nsw i64 %i.ag, %i.ae                ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !1519
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !3658
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1518 ; 2 uses
  %.not.i = icmp eq i64 %i.aj, 0
  %i.ak = icmp sle i64 %i.ah, %i.aj
  %or.cond.i.not = select i1 %.not.i, i1 true, i1 %i.ak
  br i1 %or.cond.i.not, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.a, %bb.f, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1472 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !870
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1026
  %i.aq = tail call i32 %i.ap(ptr noundef nonnull %i.am, ptr noundef %1, i32 noundef %2, i64 noundef %3) #58 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp eq i64 %3, 0
  %or.cond = and i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1504
  %i.av = and i32 %i.au, 256
  %.not51 = icmp eq i32 %i.av, 0
  br i1 %.not51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %4 = load i32, ptr %i.aw, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %5, ptr %i.ax, align 4, !tbaa !1488
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !741
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.az, ptr %i.ba, align 8, !tbaa !3660
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.c, %bb.k, %bb.j, %.critedge
  %.1 = phi i32 [ %i.aq, %.critedge ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.j ], [ 13, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsTruncate(ptr nofree noundef captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1504
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1506 ; 3 uses
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !3658
  %i.h = sub nsw i64 %1, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1519
  %i.k = add nsw i64 %i.j, %i.h                   ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !1519
  store i64 %1, ptr %i.f, align 8, !tbaa !3658
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1518 ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  %i.n = icmp sle i64 %i.k, %i.m
  %or.cond.i.not = select i1 %.not.i, i1 true, i1 %i.n
  br i1 %or.cond.i.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1472 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !870
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1028
  %i.t = tail call i32 %i.s(ptr noundef nonnull %i.p, i64 noundef %1) #58
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.t, %bb.d ], [ 13, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsSync(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1506 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1431
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1504
  %i.g = and i32 %i.f, 256
  %.not8 = icmp eq i32 %i.g, 0
  %. = select i1 %.not8, i32 0, i32 795
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1472 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1064
  %i.m = tail call i32 %i.l(ptr noundef nonnull %i.i, i32 noundef %1) #58
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %., %bb.c ], [ %i.m, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsFileSize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1472 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1027
  %i.f = tail call i32 %i.e(ptr noundef nonnull %i.b, ptr noundef %1) #58 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !571
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1506 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1432
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1504
  %i.q = and i32 %i.p, 256
  %.not10 = icmp eq i32 %i.q, 0
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1024, ptr %1, align 8, !tbaa !571
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsLock(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1506 ; 2 uses
  %i.c = icmp eq i32 %1, 4
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.e = load i8, ptr %i.d, align 1, !tbaa !3650
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.b, align 8, !tbaa !1431
  %.not11 = icmp eq i32 %i.f, 5
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1472 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !870
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1716
  %i.l = tail call i32 %i.k(ptr noundef nonnull %i.h, i32 noundef %1) #58
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi i32 [ %i.l, %bb.e ], [ 5, %bb.d ], [ 5, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsUnlock(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1472 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1763
  %i.f = tail call i32 %i.e(ptr noundef nonnull %i.b, i32 noundef %1) #58
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsCheckReservedLock(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1472 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !870
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1746
  %i.f = tail call i32 %i.e(ptr noundef nonnull %i.b, ptr noundef %1) #58
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsFileControl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_1
