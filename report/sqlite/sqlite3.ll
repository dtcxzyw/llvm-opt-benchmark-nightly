Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3VdbeHandleMovedCursor:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.i, align 2, !tbaa !733
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %sqlite3BtreeCursorRestore.exit
  %.0.i7 = phi i32 [ %.0.i6, %bb.c ], [ 0, %sqlite3BtreeCursorRestore.exit ]
  ret i32 %.0.i7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext range(i8 1, 10) i8 @sqlite3GetVarint32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #20 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !733   ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %0, align 1, !tbaa !733
  %i.g = and i8 %i.f, 127
  %i.h = zext nneg i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 7
  %i.j = or disjoint i32 %i.i, %i.d
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !733   ; 2 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i8 %i.l to i32
  %i.o = load i8, ptr %0, align 1, !tbaa !733
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
  %i.x = load i64, ptr %i.a, align 8, !tbaa !565  ; 2 uses
  %.not = icmp ult i64 %i.x, 4294967296
  %i.y = trunc nuw i64 %i.x to i32
  %storemerge = select i1 %.not, i32 %i.y, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %storemerge.sink = phi i32 [ %storemerge, %bb.e ], [ %i.v, %bb.d ], [ %i.j, %bb.b ]
  %.0 = phi i8 [ %i.w, %bb.e ], [ 3, %bb.d ], [ 2, %bb.b ]
  store i32 %storemerge.sink, ptr %1, align 4, !tbaa !570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VdbeMemFromBtreeZeroOffset(ptr noundef %0, i32 noundef %1, ptr noundef initializes((8, 16), (20, 22)) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i16, ptr %i.a, align 4, !tbaa !1122
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1115
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1123
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1124 ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp sgt i32 %i.c, %i.m
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %.0.i.i = select i1 %i.n, i32 %spec.select.i.i, i32 %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.i, ptr %i.o, align 8, !tbaa !762
  %.not = icmp ugt i32 %1, %.0.i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 16400, ptr %i.p, align 4, !tbaa !686
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %1, ptr %i.q, align 8, !tbaa !1094
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = tail call fastcc i32 @sqlite3VdbeMemFromBtree(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.r, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sqlite3VdbeSerialGet(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((20, 22)) %2) unnamed_addr #20 {
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
  store i16 1025, ptr %i.a, align 4, !tbaa !686
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !1094
  store i32 0, ptr %2, align 8, !tbaa !733
  br label %bb.m

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 1, ptr %i.c, align 4, !tbaa !686
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !733
  %i.e = sext i8 %i.d to i64
  store i64 %i.e, ptr %2, align 8, !tbaa !733
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.f, align 4, !tbaa !686
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.g = load i8, ptr %0, align 1, !tbaa !733
  %i.h = sext i8 %i.g to i32
  %i.i = shl nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !733
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  %i.n = sext i32 %i.m to i64
  store i64 %i.n, ptr %2, align 8, !tbaa !733
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.o, align 4, !tbaa !686
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.p = load i8, ptr %0, align 1, !tbaa !733
  %i.q = sext i8 %i.p to i32
  %i.r = shl nsw i32 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !733
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = sext i32 %i.aa to i64
  store i64 %i.ab, ptr %2, align 8, !tbaa !733
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.ac, align 4, !tbaa !686
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.ad = load i8, ptr %0, align 1, !tbaa !733
  %i.ae = sext i8 %i.ad to i32
  %i.af = shl nsw i32 %i.ae, 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !733
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 16
  %i.ak = or disjoint i32 %i.aj, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !733
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 8
  %i.ap = or disjoint i32 %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !733
  %i.as = zext i8 %i.ar to i32
  %i.at = or disjoint i32 %i.ap, %i.as
  %i.au = sext i32 %i.at to i64
  store i64 %i.au, ptr %2, align 8, !tbaa !733
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.av, align 4, !tbaa !686
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2
  %3 = load i32, ptr %i.aw, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %i.ax = zext i32 %4 to i64
  %i.ay = load i8, ptr %0, align 1, !tbaa !733
  %i.az = sext i8 %i.ay to i32
  %i.ba = shl nsw i32 %i.az, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !733
  %i.bd = zext i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ba, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 32
  %i.bh = or disjoint i64 %i.bg, %i.ax
  store i64 %i.bh, ptr %2, align 8, !tbaa !733
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.bi, align 4, !tbaa !686
  br label %bb.m

bb.i:                                             ; preds = %bb.a, %bb.a
  %i.bj = load i8, ptr %0, align 1, !tbaa !733
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !733
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 16
  %i.bq = or disjoint i64 %i.bp, %i.bl            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !733
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !733
  %i.bx = zext i8 %i.bw to i64
  %i.by = or disjoint i64 %i.bu, %i.bx
  %i.bz = or disjoint i64 %i.by, %i.bq
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 24
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !733
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 16
  %i.ci = or disjoint i64 %i.ch, %i.cd
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !733
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !733
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
  store i16 %.sink.i, ptr %i.db, align 4, !tbaa !686
  br label %bb.m

bb.k:                                             ; preds = %bb.a, %bb.a
  %i.dc = add nsw i32 %1, -8
  %i.dd = zext nneg i32 %i.dc to i64
  store i64 %i.dd, ptr %2, align 8, !tbaa !733
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 4, ptr %i.de, align 4, !tbaa !686
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.df, align 8, !tbaa !762
  %i.dg = add i32 %1, -12
  %i.dh = lshr i32 %i.dg, 1
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !1094
  %i.dj = and i32 %1, 1
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr @sqlite3VdbeSerialGet.aFlag, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !783
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %i.dm, ptr %i.dn, align 4, !tbaa !686
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %serialGet.exit, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @vdbeColumnFromOverflow(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 65535) %1, i32 noundef %2, i64 noundef range(i64 0, 4294967296) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !683  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.d = load i8, ptr %i.c, align 2, !tbaa !787   ; 2 uses
  %i.e = icmp ugt i32 %2, 127
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %2, -12
  %i.g = lshr i32 %i.f, 1
  br label %sqlite3VdbeSerialTypeLen.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3SmallTypeSizes, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !733
  %i.k = zext i8 %i.j to i32
  br label %sqlite3VdbeSerialTypeLen.exit

sqlite3VdbeSerialTypeLen.exit:                    ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.c ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !570
  %i.n = icmp sgt i32 %.0.i, %i.m
  br i1 %i.n, label %.thread98, label %bb.d

bb.d:                                             ; preds = %sqlite3VdbeSerialTypeLen.exit
  %i.o = icmp samesign ugt i32 %.0.i, 4000
  br i1 %i.o, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1718
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1662
  br label %bb.h

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.f
  %i.w = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.b, i64 noundef 32), !inline_history !88 ; 4 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %sqlite3DbMallocZero.exit.thread, label %bb.g

sqlite3DbMallocZero.exit.thread:                  ; preds = %sqlite3DbMallocRaw.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.x, align 8, !tbaa !1662
  br label %.thread98

bb.g:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.w, ptr %i.y, align 8, !tbaa !1662
  %i.z = load i8, ptr %i.s, align 1
  %i.aa = or i8 %i.z, 16
  store i8 %i.aa, ptr %i.s, align 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.ab = phi ptr [ %.pre, %._crit_edge ], [ %i.w, %bb.g ] ; 12 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1664 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %sqlite3RCStrUnref.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4108
  %.not86 = icmp eq i32 %i.af, %1
  br i1 %.not86, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4109
  %.not87 = icmp eq i32 %i.ah, %4
  br i1 %.not87, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !4110
  %.not88 = icmp eq i32 %i.aj, %5
  br i1 %.not88, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !4111
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !733
  %i.ao = tail call fastcc i64 @sqlite3BtreeOffset(ptr noundef %i.an)
  %.not89 = icmp eq i64 %i.al, %i.ao
  %.pr.pre = load ptr, ptr %i.ab, align 8, !tbaa !1664 ; 3 uses
  br i1 %.not89, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not90 = icmp eq ptr %.pr.pre, null
  br i1 %.not90, label %sqlite3RCStrUnref.exit, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.k, %bb.m
  %.pr114 = phi ptr [ %.pr.pre, %bb.m ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ]
  %i.ap = getelementptr inbounds i8, ptr %.pr114, i64 -8 ; 5 uses
end_hunk_0
