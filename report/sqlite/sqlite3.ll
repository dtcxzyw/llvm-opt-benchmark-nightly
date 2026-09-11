Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 369
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@btreeParseCellAdjustSizeForOverflow:bb.a
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1060
  %i.n = add i32 %i.m, -4
  %i.o = urem i32 %i.i, %i.n
  %i.p = add i32 %i.o, %i.c                       ; 2 uses
  %.not = icmp sgt i32 %i.p, %i.f
  %i.q = trunc i32 %i.p to i16
  %spec.select = select i1 %.not, i16 %i.b, i16 %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %spec.select, ptr %i.r, align 4, !tbaa !1596
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1594
  %i.u = zext i16 %spec.select to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %1 to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i16
  %i.aa = add i16 %i.z, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !1595
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext range(i8 1, 10) i8 @sqlite3GetVarint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #20 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !733     ; 4 uses
  %i.b = icmp sgt i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i8 %i.a to i64
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !733   ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = and i8 %i.a, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 7
  %i.j = zext nneg i8 %i.e to i64
  %i.k = or disjoint i64 %i.i, %i.j
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.l = zext i8 %i.a to i32
  %i.m = shl nuw nsw i32 %i.l, 14
  %i.n = zext i8 %i.e to i32                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !733   ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.m, %i.q
  %.not = icmp sgt i8 %i.p, -1
  %i.s = and i32 %i.r, 2080895                    ; 5 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw nsw i32 %i.n, 7
  %i.u = and i32 %i.t, 16256
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = zext nneg i32 %i.v to i64
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.y = shl nuw nsw i32 %i.n, 14
  %i.z = load i8, ptr %i.x, align 1, !tbaa !733   ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa
  %.not107 = icmp sgt i8 %i.z, -1
  %i.ac = and i32 %i.ab, 2080895                  ; 4 uses
  br i1 %.not107, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = shl nuw nsw i32 %i.s, 7
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = zext nneg i32 %i.ae to i64
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = shl i32 %i.s, 14
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !733 ; 3 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj            ; 3 uses
  %.not108 = icmp sgt i8 %i.ai, -1
  br i1 %.not108, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = shl nuw nsw i32 %i.ac, 7
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = lshr i32 %i.s, 18
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 32
  %i.aq = zext i32 %i.am to i64
  %i.ar = or disjoint i64 %i.ap, %i.aq
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.as = shl nuw nsw i32 %i.s, 7
  %i.at = or disjoint i32 %i.ac, %i.as            ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.av = shl i32 %i.ac, 14
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !733 ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax            ; 3 uses
  %.not109 = icmp sgt i8 %i.aw, -1
  br i1 %.not109, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = shl i32 %i.ak, 7
  %i.ba = and i32 %i.az, 266354560
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = lshr i32 %i.at, 18
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 32
  %i.bf = zext i32 %i.bb to i64
  %i.bg = or disjoint i64 %i.be, %i.bf
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bi = shl i32 %i.ak, 14
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !733 ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk            ; 2 uses
  %.not110 = icmp sgt i8 %i.bj, -1
  br i1 %.not110, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = and i32 %i.bl, -266354561
  %i.bn = shl i32 %i.ay, 7
  %i.bo = and i32 %i.bn, 266354560
  %i.bp = or disjoint i32 %i.bm, %i.bo
  %i.bq = lshr i32 %i.at, 11
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 32
  %i.bt = zext i32 %i.bp to i64
  %i.bu = or disjoint i64 %i.bs, %i.bt
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bv = and i32 %i.bl, 2080895                  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bx = shl i32 %i.ay, 14
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !733 ; 2 uses
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz            ; 2 uses
  %.not111 = icmp sgt i8 %i.by, -1
  br i1 %.not111, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = and i32 %i.ca, -266354561
  %i.cc = shl nuw nsw i32 %i.bv, 7
  %i.cd = or disjoint i32 %i.cb, %i.cc
  %i.ce = lshr i32 %i.at, 4
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 32
  %i.ch = zext i32 %i.cd to i64
  %i.ci = or disjoint i64 %i.cg, %i.ch
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = shl i32 %i.bv, 15
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !733
  %i.cm = zext i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  %i.co = shl i32 %i.ca, 8
  %i.cp = and i32 %i.co, 532709120
  %i.cq = or disjoint i32 %i.cn, %i.cp
  %i.cr = shl nuw i32 %i.at, 4
  %i.cs = lshr i8 %i.ai, 3
  %i.ct = and i8 %i.cs, 15
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu
  %i.cw = zext i32 %i.cv to i64
  %i.cx = shl nuw i64 %i.cw, 32
  %i.cy = zext i32 %i.cq to i64
  %i.cz = or disjoint i64 %i.cx, %i.cy
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.sink = phi i64 [ %i.cz, %bb.q ], [ %i.ci, %bb.p ], [ %i.bu, %bb.n ], [ %i.bg, %bb.l ], [ %i.ar, %bb.j ], [ %i.af, %bb.h ], [ %i.w, %bb.f ], [ %i.k, %bb.d ], [ %i.c, %bb.b ]
  %.0 = phi i8 [ 9, %bb.q ], [ 8, %bb.p ], [ 7, %bb.n ], [ 6, %bb.l ], [ 5, %bb.j ], [ 4, %bb.h ], [ 3, %bb.f ], [ 2, %bb.d ], [ 1, %bb.b ]
  store i64 %.sink, ptr %1, align 8, !tbaa !565
  ret i8 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @pagerOpenSavepoint(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !991  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1546
  %i.e = sext i32 %1 to i64
  %i.f = mul nsw i64 %i.e, 56
  %i.g = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.d, i64 noundef %i.f) ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %i.b to i64                     ; 2 uses
  %i.i = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.h
  %i.j = sub nsw i32 %1, %i.b
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, 56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.l, i1 false)
  store ptr %i.g, ptr %i.c, align 8, !tbaa !1546
  %i.m = icmp slt i32 %i.b, %1
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !1001 ; 2 uses
  %i.u = getelementptr inbounds [56 x i8], ptr %i.g, i64 %indvars.iv ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %i.t, ptr %i.v, align 8, !tbaa !1567
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !1503
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !863
  %.not46 = icmp eq ptr %i.x, null
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.p, align 8, !tbaa !1485 ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = load i32, ptr %i.q, align 8, !tbaa !1004
  %i.ab = zext i32 %i.aa to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %storemerge = phi i64 [ %i.ab, %bb.e ], [ %i.y, %bb.d ]
  store i64 %storemerge, ptr %i.u, align 8, !tbaa !1573
  %i.ac = load i32, ptr %i.r, align 4, !tbaa !1550
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !1571
  %i.ae = tail call fastcc ptr @sqlite3Malloc(i64 noundef 512) ; 4 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %sqlite3BitvecCreate.exit.thread, label %bb.g

sqlite3BitvecCreate.exit.thread:                  ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.af, align 8, !tbaa !1548
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 1, ptr %i.ag, align 8, !tbaa !1570
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(508) %i.ah, i8 0, i64 508, i1 false)
  store i32 %i.t, ptr %i.ae, align 8, !tbaa !1370
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !1548
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 1, ptr %i.aj, align 8, !tbaa !1570
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !938 ; 5 uses
  %.not48 = icmp eq ptr %i.ak, null
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1560
  store i32 %i.an, ptr %i.al, align 4, !tbaa !570
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !570
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !570
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 100
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !570
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %i.as, ptr %i.at, align 4, !tbaa !570
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1574
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !570
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ax = trunc i64 %indvars.iv.next to i32       ; 2 uses
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !991
  %exitcond.not = icmp eq i32 %1, %i.ax
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !3687

.loopexit:                                        ; preds = %bb.i, %bb.b, %sqlite3BitvecCreate.exit.thread, %bb.a
  %.042 = phi i32 [ 7, %bb.a ], [ 7, %sqlite3BitvecCreate.exit.thread ], [ 0, %bb.b ], [ 0, %bb.i ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @subjournalPageIfRequired(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !896 ; 10 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %.val2 = load i32, ptr %i.c, align 8, !tbaa !901 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !991  ; 7 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %subjournalPage.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1546 ; 10 uses
  %i.i = add i32 %.val2, -1                       ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %sqlite3BitvecTestNotNull.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %sqlite3BitvecTestNotNull.exit.thread.i ] ; 4 uses
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1567
  %.not.i = icmp ult i32 %i.l, %.val2
  br i1 %.not.i, label %sqlite3BitvecTestNotNull.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1548 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1370
  %.not.i.i = icmp ult i32 %i.i, %i.o
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader.i

.preheader.i.i:                                   ; preds = %bb.c, %bb.d
  %.025.i.i = phi ptr [ %i.w, %bb.d ], [ %i.n, %bb.c ] ; 5 uses
  %.024.i.i = phi i32 [ %i.s, %bb.d ], [ %i.i, %bb.c ]
  %.024.fr.i.i = freeze i32 %.024.i.i             ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1371 ; 3 uses
  %.not30.i.i = icmp eq i32 %i.q, 0
  br i1 %.not30.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = udiv i32 %.024.fr.i.i, %i.q
  %i.s = urem i32 %.024.fr.i.i, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !733  ; 2 uses
  %.not32.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not32.not.i.i, label %.preheader.i, label %.preheader.i.i

bb.e:                                             ; preds = %.preheader.i.i
  %i.x = load i32, ptr %.025.i.i, align 8, !tbaa !1370
  %i.y = icmp ult i32 %i.x, 3969
  br i1 %i.y, label %sqlite3BitvecTestNotNull.exit.i, label %bb.f

sqlite3BitvecTestNotNull.exit.i:                  ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16
  %i.aa = lshr i32 %.024.fr.i.i, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !733
  %i.ae = zext i8 %i.ad to i32
  %i.af = and i32 %.024.fr.i.i, 7
  %i.ag = shl nuw nsw i32 1, %i.af
  %i.ah = and i32 %i.ag, %i.ae
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.preheader.i, label %sqlite3BitvecTestNotNull.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.aj = add i32 %.024.fr.i.i, 1
  %i.ak = urem i32 %.024.fr.i.i, 124              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16 ; 2 uses
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !733 ; 2 uses
  %.not3136.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not3136.i.i, label %.preheader.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %i.ap = phi i32 [ %i.aw, %bb.g ], [ %i.ao, %bb.f ]
  %.037.i.i = phi i32 [ %i.at, %bb.g ], [ %i.ak, %bb.f ]
  %i.aq = icmp eq i32 %i.ap, %i.aj
  br i1 %i.aq, label %sqlite3BitvecTestNotNull.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ar = add i32 %.037.i.i, 1                    ; 2 uses
  %i.as = icmp eq i32 %i.ar, 124
  %i.at = select i1 %i.as, i32 0, i32 %i.ar       ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !733 ; 2 uses
  %.not31.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not31.i.i, label %.preheader.i, label %.lr.ph.i.i, !llvm.loop !125

.preheader.i:                                     ; preds = %bb.f, %sqlite3BitvecTestNotNull.exit.i, %bb.c, %bb.d, %bb.g
  %i.ax = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %.122.i = add nuw nsw i32 %i.ax, 1
  %i.ay = icmp slt i32 %.122.i, %i.e
  br i1 %i.ay, label %.lr.ph24.preheader.i, label %subjRequiresPage.exit

.lr.ph24.preheader.i:                             ; preds = %.preheader.i
  %i.az = add nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.ba = xor i32 %i.ax, -1
  %i.bb = add i32 %i.e, %i.ba
  %i.bc = add nsw i32 %i.e, -2
  %i.bd = sub i32 %i.bc, %i.ax
  %xtraiter = and i32 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol

.lr.ph24.i.prol:                                  ; preds = %.lr.ph24.preheader.i, %.lr.ph24.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph24.i.prol ], [ %i.az, %.lr.ph24.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph24.i.prol ], [ 0, %.lr.ph24.preheader.i ]
  %i.be = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i.prol
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i32 0, ptr %i.bf, align 8, !tbaa !1570
  %indvars.iv.next36.i.prol = add nuw nsw i64 %indvars.iv35.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol, !llvm.loop !3688

.lr.ph24.i.prol.loopexit:                         ; preds = %.lr.ph24.i.prol, %.lr.ph24.preheader.i
  %indvars.iv35.i.unr = phi i64 [ %i.az, %.lr.ph24.preheader.i ], [ %indvars.iv.next36.i.prol, %.lr.ph24.i.prol ]
  %i.bg = icmp ult i32 %i.bd, 7
  br i1 %i.bg, label %subjRequiresPage.exit, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.7, %.lr.ph24.i ], [ %indvars.iv35.i.unr, %.lr.ph24.i.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i32 0, ptr %i.bi, align 8, !tbaa !1570
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  store i32 0, ptr %i.bk, align 8, !tbaa !1570
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  store i32 0, ptr %i.bm, align 8, !tbaa !1570
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 200
  store i32 0, ptr %i.bo, align 8, !tbaa !1570
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 256
  store i32 0, ptr %i.bq, align 8, !tbaa !1570
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 312
  store i32 0, ptr %i.bs, align 8, !tbaa !1570
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 368
  store i32 0, ptr %i.bu, align 8, !tbaa !1570
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 424
  store i32 0, ptr %i.bw, align 8, !tbaa !1570
  %indvars.iv.next36.i.7 = add nuw nsw i64 %indvars.iv35.i, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next36.i.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.e, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %subjRequiresPage.exit, label %.lr.ph24.i, !llvm.loop !3689

sqlite3BitvecTestNotNull.exit.thread.i:           ; preds = %.lr.ph.i.i, %sqlite3BitvecTestNotNull.exit.i, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %subjournalPage.exit, label %bb.b, !llvm.loop !3690

subjRequiresPage.exit:                            ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i, %.preheader.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 9
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !993 ; 2 uses
  %.not.i3 = icmp eq i8 %i.by, 2
  br i1 %.not.i3, label %.thread25.i, label %bb.h

bb.h:                                             ; preds = %subjRequiresPage.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 88 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1549 ; 10 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !863
  %.not.i.i4 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i4, label %bb.i, label %openSubJournal.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.cc = icmp eq i8 %i.by, 4
  br i1 %i.cc, label %.thread10.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 28), align 4, !tbaa !1313
  %.fr.i.i = freeze i32 %i.cd                     ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 26
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !1470
  %.not7.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not7.i.i, label %bb.k, label %.thread10.i.i

.thread10.i.i:                                    ; preds = %bb.j, %bb.i
  %i.cg = load ptr, ptr %.val, align 8, !tbaa !1366
end_hunk_0
begin_hunk_1_@sqlite3Pragma:bb.a
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %.lr.ph2481, label %.thread

.lr.ph2481:                                       ; preds = %.preheader, %.lr.ph2481
  %indvars.iv2658 = phi i64 [ %indvars.iv.next2659, %.lr.ph2481 ], [ 0, %.preheader ] ; 2 uses
  %i.iw = load ptr, ptr %i.bp, align 8, !tbaa !605
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %i.iw, i64 %indvars.iv2658
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !610
  %i.ja = call fastcc i32 @sqlite3BtreeSecureDelete(ptr noundef %i.iz, i32 noundef %.01496) ; 0 uses
  %indvars.iv.next2659 = add nuw nsw i64 %indvars.iv2658, 1 ; 2 uses
  %i.jb = load i32, ptr %i.it, align 8, !tbaa !604
  %i.jc = sext i32 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next2659, %i.jc
  br i1 %i.jd, label %.lr.ph2481, label %.thread, !llvm.loop !4748

.thread:                                          ; preds = %.lr.ph2481, %.preheader, %bb.bm, %sqlite3_stricmp.exit.thread
  %.014962085 = phi i32 [ %.01496, %sqlite3_stricmp.exit.thread ], [ -1, %bb.bm ], [ %.01496, %.preheader ], [ %.01496, %.lr.ph2481 ]
  %i.je = call fastcc i32 @sqlite3BtreeSecureDelete(ptr noundef %i.ib, i32 noundef %.014962085)
  %i.jf = zext nneg i32 %i.je to i64
  call fastcc void @returnSingleInt(ptr noundef %.0.i2072, i64 noundef %i.jf)
  br label %sqlite3DbFree.exit2067

bb.bq:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #58
  store i64 0, ptr %i.i, align 8, !tbaa !565
  call fastcc void @sqlite3CodeVerifySchema(ptr noundef nonnull %0, i32 noundef %.015.i)
  %i.jg = load i32, ptr %i.be, align 4, !tbaa !1174
  %i.jh = add nsw i32 %i.jg, 1                    ; 4 uses
  store i32 %i.jh, ptr %i.be, align 4, !tbaa !1174
  %i.ji = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.jj = and i8 %i.ji, -33
  %i.jk = icmp eq i8 %i.jj, 80
  br i1 %i.jk, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jl = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2072, i32 noundef 180, i32 noundef %.015.i, i32 noundef %i.jh) ; 0 uses
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bq
  %.not1674 = icmp eq ptr %.01371, null
  br i1 %.not1674, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jm = call fastcc i32 @sqlite3DecOrHexToI64(ptr noundef nonnull %.01371, ptr noundef %i.i)
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.jo = load i64, ptr %i.i, align 8, !tbaa !565 ; 2 uses
  %i.jp = icmp slt i64 %i.jo, 0
  br i1 %i.jp, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %spec.select = call i64 @llvm.umin.i64(i64 %i.jo, i64 4294967294)
  %i.jq = trunc nuw i64 %spec.select to i32
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs, %bb.bt, %bb.bu
  %i.jr = phi i32 [ 0, %bb.bs ], [ 0, %bb.bu ], [ %i.jq, %bb.bv ], [ 0, %bb.bt ]
  %i.js = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i2072, i32 noundef 181, i32 noundef %.015.i, i32 noundef %i.jh, i32 noundef %i.jr) ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.br
  %i.jt = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2072, i32 noundef 86, i32 noundef %i.jh, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #58
  br label %sqlite3DbFree.exit2067

bb.by:                                            ; preds = %bb.bc
  %i.ju = call fastcc i32 @getLockingMode(ptr noundef %.01371) ; 6 uses
  %i.jv = load i32, ptr %i.bg, align 8, !tbaa !800
  %i.jw = icmp eq i32 %i.jv, 0                    ; 2 uses
  %i.jx = icmp eq i32 %i.ju, -1
  %or.cond5 = select i1 %i.jw, i1 %i.jx, i1 false
  br i1 %or.cond5, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jy = getelementptr inbounds nuw i8, ptr %i.aa, i64 105
  br label %bb.cf

bb.ca:                                            ; preds = %bb.by
  br i1 %i.jw, label %.preheader2171, label %bb.cc

.preheader2171:                                   ; preds = %bb.ca
  %i.jz = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !604 ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, 2
  br i1 %i.kb, label %.lr.ph2478, label %.preheader2171.._crit_edge2479.split_crit_edge

.preheader2171.._crit_edge2479.split_crit_edge:   ; preds = %.preheader2171
  %.pre2708 = trunc nsw i32 %i.ju to i8
  br label %._crit_edge2479.split

.lr.ph2478:                                       ; preds = %.preheader2171
  %i.kc = load ptr, ptr %i.bp, align 8, !tbaa !605
  %i.kd = icmp sgt i32 %i.ju, -1
  %i.ke = trunc nsw i32 %i.ju to i8               ; 3 uses
  br i1 %i.kd, label %.lr.ph2478.split.preheader, label %._crit_edge2479.split

.lr.ph2478.split.preheader:                       ; preds = %.lr.ph2478
  %wide.trip.count2656 = zext nneg i32 %i.ka to i64
  br label %.lr.ph2478.split

.lr.ph2478.split:                                 ; preds = %.lr.ph2478.split.preheader, %sqlite3PagerLockingMode.exit
  %indvars.iv2653 = phi i64 [ 2, %.lr.ph2478.split.preheader ], [ %indvars.iv.next2654, %sqlite3PagerLockingMode.exit ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [32 x i8], ptr %i.kc, i64 %indvars.iv2653
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !610
  %i.ki = getelementptr i8, ptr %i.kh, i64 8
  %.val1708 = load ptr, ptr %i.ki, align 8, !tbaa !616
  %.val1708.val = load ptr, ptr %.val1708, align 8, !tbaa !622 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1708.val, i64 16
  %i.kk = load i8, ptr %i.kj, align 8, !tbaa !994
  %.not.i1736 = icmp eq i8 %i.kk, 0
  br i1 %.not.i1736, label %bb.cb, label %sqlite3PagerLockingMode.exit

bb.cb:                                            ; preds = %.lr.ph2478.split
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1708.val, i64 296
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !938 ; 2 uses
  %.not.i.i1737 = icmp eq ptr %i.km, null
  br i1 %.not.i.i1737, label %sqlite3WalHeapMemory.exit.thread.i, label %sqlite3WalHeapMemory.exit.i

sqlite3WalHeapMemory.exit.i:                      ; preds = %bb.cb
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 63
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !1471
  %.not7.i = icmp eq i8 %i.ko, 2
  br i1 %.not7.i, label %sqlite3PagerLockingMode.exit, label %sqlite3WalHeapMemory.exit.thread.i

sqlite3WalHeapMemory.exit.thread.i:               ; preds = %sqlite3WalHeapMemory.exit.i, %bb.cb
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1708.val, i64 8
  store i8 %i.ke, ptr %i.kp, align 8, !tbaa !1049
  br label %sqlite3PagerLockingMode.exit

sqlite3PagerLockingMode.exit:                     ; preds = %.lr.ph2478.split, %sqlite3WalHeapMemory.exit.i, %sqlite3WalHeapMemory.exit.thread.i
  %indvars.iv.next2654 = add nuw nsw i64 %indvars.iv2653, 1 ; 2 uses
  %exitcond2657.not = icmp eq i64 %indvars.iv.next2654, %wide.trip.count2656
  br i1 %exitcond2657.not, label %._crit_edge2479.split, label %.lr.ph2478.split, !llvm.loop !4749

._crit_edge2479.split:                            ; preds = %sqlite3PagerLockingMode.exit, %.preheader2171.._crit_edge2479.split_crit_edge, %.lr.ph2478
  %.pre-phi2709 = phi i8 [ %.pre2708, %.preheader2171.._crit_edge2479.split_crit_edge ], [ %i.ke, %.lr.ph2478 ], [ %i.ke, %sqlite3PagerLockingMode.exit ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.aa, i64 105
  store i8 %.pre-phi2709, ptr %i.kq, align 1, !tbaa !2193
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge2479.split, %bb.ca
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !610
  %i.kt = getelementptr i8, ptr %i.ks, i64 8
  %.val1707 = load ptr, ptr %i.kt, align 8, !tbaa !616
  %.val1707.val = load ptr, ptr %.val1707, align 8, !tbaa !622 ; 4 uses
  %i.ku = icmp sgt i32 %i.ju, -1
  br i1 %i.ku, label %bb.cd, label %sqlite3PagerLockingMode.exit1743

bb.cd:                                            ; preds = %bb.cc
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1707.val, i64 16
  %i.kw = load i8, ptr %i.kv, align 8, !tbaa !994
  %.not.i1738 = icmp eq i8 %i.kw, 0
  br i1 %.not.i1738, label %bb.ce, label %sqlite3PagerLockingMode.exit1743

bb.ce:                                            ; preds = %bb.cd
  %i.kx = getelementptr inbounds nuw i8, ptr %.val1707.val, i64 296
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !938 ; 2 uses
  %.not.i.i1739 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i1739, label %sqlite3WalHeapMemory.exit.thread.i1742, label %sqlite3WalHeapMemory.exit.i1740

sqlite3WalHeapMemory.exit.i1740:                  ; preds = %bb.ce
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 63
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !1471
  %.not7.i1741 = icmp eq i8 %i.la, 2
  br i1 %.not7.i1741, label %sqlite3PagerLockingMode.exit1743, label %sqlite3WalHeapMemory.exit.thread.i1742

sqlite3WalHeapMemory.exit.thread.i1742:           ; preds = %sqlite3WalHeapMemory.exit.i1740, %bb.ce
  %i.lb = trunc nuw nsw i32 %i.ju to i8
  %i.lc = getelementptr inbounds nuw i8, ptr %.val1707.val, i64 8
  store i8 %i.lb, ptr %i.lc, align 8, !tbaa !1049
  br label %sqlite3PagerLockingMode.exit1743

sqlite3PagerLockingMode.exit1743:                 ; preds = %bb.cc, %bb.cd, %sqlite3WalHeapMemory.exit.i1740, %sqlite3WalHeapMemory.exit.thread.i1742
  %i.ld = getelementptr inbounds nuw i8, ptr %.val1707.val, i64 8
  br label %bb.cf

bb.cf:                                            ; preds = %sqlite3PagerLockingMode.exit1743, %bb.bz
  %.01493.in.in = phi ptr [ %i.jy, %bb.bz ], [ %i.ld, %sqlite3PagerLockingMode.exit1743 ]
  %.01493.in = load i8, ptr %.01493.in.in, align 1, !tbaa !733
  %i.le = icmp eq i8 %.01493.in, 1
  br i1 %i.le, label %.split, label %.split1497

.split1497:                                       ; preds = %bb.cf
  call fastcc void @returnSingleText(ptr noundef %.0.i2072, ptr noundef nonnull @.str.1074)
  br label %sqlite3DbFree.exit2067

.split:                                           ; preds = %bb.cf
  call fastcc void @returnSingleText(ptr noundef %.0.i2072, ptr noundef nonnull @.str.1075)
  br label %sqlite3DbFree.exit2067

bb.cg:                                            ; preds = %bb.bc
  %i.lf = icmp eq ptr %.01371, null
  br i1 %i.lf, label %.thread2092, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.cg
  %i.lg = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.01371) #59 ; 2 uses
  %i.lh = trunc i64 %i.lg to i32
  %i.li = and i32 %i.lh, 1073741823               ; 2 uses
  %.not2170 = icmp eq i32 %i.li, 0
  br i1 %.not2170, label %select.unfold, label %.preheader.i1746.preheader

.preheader.i1746.preheader:                       ; preds = %sqlite3Strlen30.exit
  %5 = and i64 %i.lg, 1073741823
  %6 = getelementptr i8, ptr @.str.440, i64 %5
  %scevgep2648 = getelementptr i8, ptr %6, i64 -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i1746.preheader, %bb.ci
  %.023.i = phi ptr [ %i.lt, %bb.ci ], [ @.str.440, %.preheader.i1746.preheader ] ; 4 uses
  %.01422.i = phi ptr [ %i.ls, %bb.ci ], [ %.01371, %.preheader.i1746.preheader ] ; 2 uses
  %i.lj = load i8, ptr %.01422.i, align 1, !tbaa !733 ; 2 uses
  %.not.i1747 = icmp eq i8 %i.lj, 0
  br i1 %.not.i1747, label %sqlite3_strnicmp.exit.loopexit, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !733 ; 2 uses
  %i.ln = load i8, ptr %.023.i, align 1, !tbaa !733
  %i.lo = zext i8 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !733 ; 2 uses
  %i.lr = icmp eq i8 %i.lm, %i.lq
  br i1 %i.lr, label %bb.ci, label %split.i

bb.ci:                                            ; preds = %bb.ch
  %i.ls = getelementptr inbounds nuw i8, ptr %.01422.i, i64 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %exitcond2649.not = icmp eq ptr %.023.i, %scevgep2648
  br i1 %exitcond2649.not, label %select.unfold, label %.lr.ph.i, !llvm.loop !21

split.i:                                          ; preds = %bb.ch
  %i.lu = zext i8 %i.lm to i32
  br label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit.loopexit:                   ; preds = %.lr.ph.i
  %.pre2679 = load i8, ptr %.023.i, align 1, !tbaa !733
  %.phi.trans.insert2680 = zext i8 %.pre2679 to i64
  %.phi.trans.insert2681 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2680
  %.pre2682 = load i8, ptr %.phi.trans.insert2681, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %sqlite3_strnicmp.exit.loopexit, %split.i
  %i.lv = phi i8 [ %i.lq, %split.i ], [ %.pre2682, %sqlite3_strnicmp.exit.loopexit ]
  %i.lw = phi i32 [ %i.lu, %split.i ], [ 0, %sqlite3_strnicmp.exit.loopexit ]
  %i.lx = zext i8 %i.lv to i32
  %i.ly = icmp eq i32 %i.lw, %i.lx
  br i1 %i.ly, label %select.unfold, label %.preheader.i1746.1

.preheader.i1746.1:                               ; preds = %sqlite3_strnicmp.exit
  %7 = add nsw i32 %i.li, -1
  %8 = zext nneg i32 %7 to i64                    ; 5 uses
  %scevgep2646 = getelementptr i8, ptr @.str.441, i64 %8
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ck, %.preheader.i1746.1
  %.023.i.1 = phi ptr [ %i.mk, %bb.ck ], [ @.str.441, %.preheader.i1746.1 ] ; 4 uses
  %.01422.i.1 = phi ptr [ %i.mj, %bb.ck ], [ %.01371, %.preheader.i1746.1 ] ; 2 uses
  %i.lz = load i8, ptr %.01422.i.1, align 1, !tbaa !733 ; 2 uses
  %.not.i1747.1 = icmp eq i8 %i.lz, 0
  br i1 %.not.i1747.1, label %sqlite3_strnicmp.exit.loopexit.1, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.1
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !733 ; 2 uses
  %i.md = load i8, ptr %.023.i.1, align 1, !tbaa !733
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !733 ; 2 uses
  %i.mh = icmp eq i8 %i.mc, %i.mg
  br i1 %i.mh, label %bb.ck, label %split.i.1

split.i.1:                                        ; preds = %bb.cj
  %i.mi = zext i8 %i.mc to i32
  br label %sqlite3_strnicmp.exit.1

bb.ck:                                            ; preds = %bb.cj
  %i.mj = getelementptr inbounds nuw i8, ptr %.01422.i.1, i64 1
  %i.mk = getelementptr inbounds nuw i8, ptr %.023.i.1, i64 1
  %exitcond2647.not = icmp eq ptr %.023.i.1, %scevgep2646
  br i1 %exitcond2647.not, label %select.unfold, label %.lr.ph.i.1, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.1:                 ; preds = %.lr.ph.i.1
  %.pre2683 = load i8, ptr %.023.i.1, align 1, !tbaa !733
  %.phi.trans.insert2684 = zext i8 %.pre2683 to i64
  %.phi.trans.insert2685 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2684
  %.pre2686 = load i8, ptr %.phi.trans.insert2685, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit.1

sqlite3_strnicmp.exit.1:                          ; preds = %sqlite3_strnicmp.exit.loopexit.1, %split.i.1
  %i.ml = phi i8 [ %i.mg, %split.i.1 ], [ %.pre2686, %sqlite3_strnicmp.exit.loopexit.1 ]
  %i.mm = phi i32 [ %i.mi, %split.i.1 ], [ 0, %sqlite3_strnicmp.exit.loopexit.1 ]
  %i.mn = zext i8 %i.ml to i32
  %i.mo = icmp eq i32 %i.mm, %i.mn
  br i1 %i.mo, label %select.unfold, label %.preheader.i1746.2

.preheader.i1746.2:                               ; preds = %sqlite3_strnicmp.exit.1
  %scevgep2643 = getelementptr i8, ptr @.str.442, i64 %8
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.cm, %.preheader.i1746.2
  %.023.i.2 = phi ptr [ %i.na, %bb.cm ], [ @.str.442, %.preheader.i1746.2 ] ; 4 uses
  %.01422.i.2 = phi ptr [ %i.mz, %bb.cm ], [ %.01371, %.preheader.i1746.2 ] ; 2 uses
  %i.mp = load i8, ptr %.01422.i.2, align 1, !tbaa !733 ; 2 uses
  %.not.i1747.2 = icmp eq i8 %i.mp, 0
  br i1 %.not.i1747.2, label %sqlite3_strnicmp.exit.loopexit.2, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.2
  %i.mq = zext i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !733 ; 2 uses
  %i.mt = load i8, ptr %.023.i.2, align 1, !tbaa !733
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !733 ; 2 uses
  %i.mx = icmp eq i8 %i.ms, %i.mw
  br i1 %i.mx, label %bb.cm, label %split.i.2

split.i.2:                                        ; preds = %bb.cl
  %i.my = zext i8 %i.ms to i32
  br label %sqlite3_strnicmp.exit.2

bb.cm:                                            ; preds = %bb.cl
  %i.mz = getelementptr inbounds nuw i8, ptr %.01422.i.2, i64 1
  %i.na = getelementptr inbounds nuw i8, ptr %.023.i.2, i64 1
  %exitcond2644.not = icmp eq ptr %.023.i.2, %scevgep2643
  br i1 %exitcond2644.not, label %sqlite3_strnicmp.exit.thread.thread, label %.lr.ph.i.2, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.2:                 ; preds = %.lr.ph.i.2
  %.pre2687 = load i8, ptr %.023.i.2, align 1, !tbaa !733
  %.phi.trans.insert2688 = zext i8 %.pre2687 to i64
  %.phi.trans.insert2689 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2688
  %.pre2690 = load i8, ptr %.phi.trans.insert2689, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit.2

sqlite3_strnicmp.exit.2:                          ; preds = %sqlite3_strnicmp.exit.loopexit.2, %split.i.2
  %i.nb = phi i8 [ %i.mw, %split.i.2 ], [ %.pre2690, %sqlite3_strnicmp.exit.loopexit.2 ]
  %i.nc = phi i32 [ %i.my, %split.i.2 ], [ 0, %sqlite3_strnicmp.exit.loopexit.2 ]
  %i.nd = zext i8 %i.nb to i32
  %i.ne = icmp eq i32 %i.nc, %i.nd
  br i1 %i.ne, label %sqlite3_strnicmp.exit.thread.thread, label %.preheader.i1746.3

.preheader.i1746.3:                               ; preds = %sqlite3_strnicmp.exit.2
  %scevgep2640 = getelementptr i8, ptr @.str.443, i64 %8
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.co, %.preheader.i1746.3
  %.023.i.3 = phi ptr [ %i.nq, %bb.co ], [ @.str.443, %.preheader.i1746.3 ] ; 4 uses
  %.01422.i.3 = phi ptr [ %i.np, %bb.co ], [ %.01371, %.preheader.i1746.3 ] ; 2 uses
  %i.nf = load i8, ptr %.01422.i.3, align 1, !tbaa !733 ; 2 uses
  %.not.i1747.3 = icmp eq i8 %i.nf, 0
  br i1 %.not.i1747.3, label %sqlite3_strnicmp.exit.loopexit.3, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.3
  %i.ng = zext i8 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !733 ; 2 uses
  %i.nj = load i8, ptr %.023.i.3, align 1, !tbaa !733
  %i.nk = zext i8 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !733 ; 2 uses
  %i.nn = icmp eq i8 %i.ni, %i.nm
  br i1 %i.nn, label %bb.co, label %split.i.3

split.i.3:                                        ; preds = %bb.cn
  %i.no = zext i8 %i.ni to i32
  br label %sqlite3_strnicmp.exit.3

bb.co:                                            ; preds = %bb.cn
  %i.np = getelementptr inbounds nuw i8, ptr %.01422.i.3, i64 1
  %i.nq = getelementptr inbounds nuw i8, ptr %.023.i.3, i64 1
  %exitcond2641.not = icmp eq ptr %.023.i.3, %scevgep2640
  br i1 %exitcond2641.not, label %select.unfold, label %.lr.ph.i.3, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.3:                 ; preds = %.lr.ph.i.3
  %.pre2691 = load i8, ptr %.023.i.3, align 1, !tbaa !733
  %.phi.trans.insert2692 = zext i8 %.pre2691 to i64
  %.phi.trans.insert2693 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2692
  %.pre2694 = load i8, ptr %.phi.trans.insert2693, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit.3

sqlite3_strnicmp.exit.3:                          ; preds = %sqlite3_strnicmp.exit.loopexit.3, %split.i.3
  %i.nr = phi i8 [ %i.nm, %split.i.3 ], [ %.pre2694, %sqlite3_strnicmp.exit.loopexit.3 ]
  %i.ns = phi i32 [ %i.no, %split.i.3 ], [ 0, %sqlite3_strnicmp.exit.loopexit.3 ]
  %i.nt = zext i8 %i.nr to i32
  %i.nu = icmp eq i32 %i.ns, %i.nt
  br i1 %i.nu, label %select.unfold, label %.preheader.i1746.4

.preheader.i1746.4:                               ; preds = %sqlite3_strnicmp.exit.3
  %scevgep2637 = getelementptr i8, ptr @.str.444, i64 %8
  br label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.cq, %.preheader.i1746.4
  %.023.i.4 = phi ptr [ %i.og, %bb.cq ], [ @.str.444, %.preheader.i1746.4 ] ; 4 uses
  %.01422.i.4 = phi ptr [ %i.of, %bb.cq ], [ %.01371, %.preheader.i1746.4 ] ; 2 uses
  %i.nv = load i8, ptr %.01422.i.4, align 1, !tbaa !733 ; 2 uses
  %.not.i1747.4 = icmp eq i8 %i.nv, 0
  br i1 %.not.i1747.4, label %sqlite3_strnicmp.exit.loopexit.4, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i.4
  %i.nw = zext i8 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !733 ; 2 uses
  %i.nz = load i8, ptr %.023.i.4, align 1, !tbaa !733
  %i.oa = zext i8 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !733 ; 2 uses
  %i.od = icmp eq i8 %i.ny, %i.oc
  br i1 %i.od, label %bb.cq, label %split.i.4

split.i.4:                                        ; preds = %bb.cp
  %i.oe = zext i8 %i.ny to i32
  br label %sqlite3_strnicmp.exit.4

bb.cq:                                            ; preds = %bb.cp
  %i.of = getelementptr inbounds nuw i8, ptr %.01422.i.4, i64 1
  %i.og = getelementptr inbounds nuw i8, ptr %.023.i.4, i64 1
  %exitcond2638.not = icmp eq ptr %.023.i.4, %scevgep2637
  br i1 %exitcond2638.not, label %select.unfold, label %.lr.ph.i.4, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.4:                 ; preds = %.lr.ph.i.4
  %.pre2695 = load i8, ptr %.023.i.4, align 1, !tbaa !733
  %.phi.trans.insert2696 = zext i8 %.pre2695 to i64
  %.phi.trans.insert2697 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2696
  %.pre2698 = load i8, ptr %.phi.trans.insert2697, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit.4

sqlite3_strnicmp.exit.4:                          ; preds = %sqlite3_strnicmp.exit.loopexit.4, %split.i.4
  %i.oh = phi i8 [ %i.oc, %split.i.4 ], [ %.pre2698, %sqlite3_strnicmp.exit.loopexit.4 ]
  %i.oi = phi i32 [ %i.oe, %split.i.4 ], [ 0, %sqlite3_strnicmp.exit.loopexit.4 ]
  %i.oj = zext i8 %i.oh to i32
  %i.ok = icmp eq i32 %i.oi, %i.oj
  br i1 %i.ok, label %select.unfold, label %.preheader.i1746.5

.preheader.i1746.5:                               ; preds = %sqlite3_strnicmp.exit.4
  %scevgep = getelementptr i8, ptr @.str.445, i64 %8
  br label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.cs, %.preheader.i1746.5
  %.023.i.5 = phi ptr [ %i.ow, %bb.cs ], [ @.str.445, %.preheader.i1746.5 ] ; 4 uses
  %.01422.i.5 = phi ptr [ %i.ov, %bb.cs ], [ %.01371, %.preheader.i1746.5 ] ; 2 uses
  %i.ol = load i8, ptr %.01422.i.5, align 1, !tbaa !733 ; 2 uses
  %.not.i1747.5 = icmp eq i8 %i.ol, 0
  br i1 %.not.i1747.5, label %sqlite3_strnicmp.exit.loopexit.5, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.5
  %i.om = zext i8 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !733 ; 2 uses
  %i.op = load i8, ptr %.023.i.5, align 1, !tbaa !733
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !733 ; 2 uses
  %i.ot = icmp eq i8 %i.oo, %i.os
  br i1 %i.ot, label %bb.cs, label %split.i.5

split.i.5:                                        ; preds = %bb.cr
  %i.ou = zext i8 %i.oo to i32
  br label %sqlite3_strnicmp.exit.5

bb.cs:                                            ; preds = %bb.cr
  %i.ov = getelementptr inbounds nuw i8, ptr %.01422.i.5, i64 1
  %i.ow = getelementptr inbounds nuw i8, ptr %.023.i.5, i64 1
  %exitcond2635.not = icmp eq ptr %.023.i.5, %scevgep
  br i1 %exitcond2635.not, label %select.unfold, label %.lr.ph.i.5, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.5:                 ; preds = %.lr.ph.i.5
  %.pre2699 = load i8, ptr %.023.i.5, align 1, !tbaa !733
  %.phi.trans.insert2700 = zext i8 %.pre2699 to i64
  %.phi.trans.insert2701 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2700
  %.pre2702 = load i8, ptr %.phi.trans.insert2701, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit.5

sqlite3_strnicmp.exit.5:                          ; preds = %sqlite3_strnicmp.exit.loopexit.5, %split.i.5
  %i.ox = phi i8 [ %i.os, %split.i.5 ], [ %.pre2702, %sqlite3_strnicmp.exit.loopexit.5 ]
  %i.oy = phi i32 [ %i.ou, %split.i.5 ], [ 0, %sqlite3_strnicmp.exit.loopexit.5 ]
  %i.oz = zext i8 %i.ox to i32
  %i.pa = icmp eq i32 %i.oy, %i.oz
  br i1 %i.pa, label %select.unfold, label %.thread2092

sqlite3_strnicmp.exit.thread.thread:              ; preds = %bb.cm, %sqlite3_strnicmp.exit.2
  %i.pb = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !917
  %i.pd = and i64 %i.pc, 268435456
  %.not1672 = icmp eq i64 %i.pd, 0
  br i1 %.not1672, label %select.unfold, label %.thread2092

.thread2092:                                      ; preds = %sqlite3_strnicmp.exit.5, %bb.cg, %sqlite3_strnicmp.exit.thread.thread
  %i.pe = load i32, ptr %i.bg, align 8, !tbaa !800
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.ct, label %select.unfold

bb.ct:                                            ; preds = %.thread2092
  store i32 1, ptr %i.bg, align 8, !tbaa !800
  br label %select.unfold

select.unfold:                                    ; preds = %bb.ci, %bb.ck, %bb.co, %bb.cq, %bb.cs, %sqlite3_strnicmp.exit.5, %sqlite3_strnicmp.exit.4, %sqlite3_strnicmp.exit.3, %sqlite3_strnicmp.exit.1, %sqlite3_strnicmp.exit, %sqlite3Strlen30.exit, %sqlite3_strnicmp.exit.thread.thread, %bb.ct, %.thread2092
  %.314912096 = phi i32 [ -1, %bb.ct ], [ -1, %.thread2092 ], [ 2, %sqlite3_strnicmp.exit.thread.thread ], [ 5, %sqlite3_strnicmp.exit.5 ], [ 4, %sqlite3_strnicmp.exit.4 ], [ 3, %sqlite3_strnicmp.exit.3 ], [ 1, %sqlite3_strnicmp.exit.1 ], [ 0, %sqlite3_strnicmp.exit ], [ 1, %bb.ck ], [ 5, %bb.cs ], [ 4, %bb.cq ], [ 3, %bb.co ], [ 0, %sqlite3Strlen30.exit ], [ 0, %bb.ci ]
  %.01388 = phi i32 [ 0, %bb.ct ], [ %.015.i, %.thread2092 ], [ %.015.i, %sqlite3_strnicmp.exit.thread.thread ], [ %.015.i, %sqlite3_strnicmp.exit.5 ], [ %.015.i, %sqlite3_strnicmp.exit.4 ], [ %.015.i, %sqlite3_strnicmp.exit.3 ], [ %.015.i, %sqlite3_strnicmp.exit.1 ], [ %.015.i, %sqlite3_strnicmp.exit ], [ %.015.i, %bb.ck ], [ %.015.i, %bb.cs ], [ %.015.i, %bb.cq ], [ %.015.i, %bb.co ], [ %.015.i, %sqlite3Strlen30.exit ], [ %.015.i, %bb.ci ]
  %i.pg = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !604 ; 2 uses
  %i.pi = icmp sgt i32 %i.ph, 0
  br i1 %i.pi, label %.lr.ph2475.preheader, label %._crit_edge2476

.lr.ph2475.preheader:                             ; preds = %select.unfold
  %i.pj = zext nneg i32 %i.ph to i64
  %i.pk = zext nneg i32 %.01388 to i64
  br label %.lr.ph2475

.lr.ph2475:                                       ; preds = %.lr.ph2475.preheader, %bb.cx
  %indvars.iv2650 = phi i64 [ %i.pj, %.lr.ph2475.preheader ], [ %indvars.iv.next2651, %bb.cx ] ; 2 uses
  %indvars.iv.next2651 = add nsw i64 %indvars.iv2650, -1 ; 4 uses
  %i.pl = load ptr, ptr %i.bp, align 8, !tbaa !605
  %i.pm = getelementptr inbounds nuw [32 x i8], ptr %i.pl, i64 %indvars.iv.next2651
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !610
  %.not1673 = icmp eq ptr %i.po, null
  br i1 %.not1673, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph2475
  %i.pp = icmp eq i64 %indvars.iv.next2651, %i.pk
  br i1 %i.pp, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pq = load i32, ptr %i.bg, align 8, !tbaa !800
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.ps = trunc nuw nsw i64 %indvars.iv.next2651 to i32 ; 2 uses
  call fastcc void @sqlite3VdbeUsesBtree(ptr noundef nonnull %.0.i2072, i32 noundef %i.ps)
  %i.pt = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i2072, i32 noundef 4, i32 noundef %i.ps, i32 noundef 1, i32 noundef %.314912096) ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph2475, %bb.cv, %bb.cw
  %i.pu = icmp samesign ugt i64 %indvars.iv2650, 1
  br i1 %i.pu, label %.lr.ph2475, label %._crit_edge2476, !llvm.loop !4750

._crit_edge2476:                                  ; preds = %bb.cx, %select.unfold
  %i.pv = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2072, i32 noundef 86, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %sqlite3DbFree.exit2067.thread

bb.cy:                                            ; preds = %bb.bc
  %i.pw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !610
  %i.py = getelementptr i8, ptr %i.px, i64 8
  %.val1706 = load ptr, ptr %i.py, align 8, !tbaa !616
  %.val1706.val = load ptr, ptr %.val1706, align 8, !tbaa !622 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #58
  store i64 -2, ptr %i.j, align 8, !tbaa !565
  %.not1670 = icmp eq ptr %.01371, null
  br i1 %.not1670, label %.sqlite3WalLimit.exit_crit_edge.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pz = call fastcc i32 @sqlite3DecOrHexToI64(ptr noundef nonnull %.01371, ptr noundef %i.j) ; 0 uses
  %i.qa = load i64, ptr %i.j, align 8, !tbaa !565
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.qa, i64 -1) ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.val1706.val, i64 208
  store i64 %spec.store.select, ptr %i.qb, align 8, !tbaa !1540
  %i.qc = getelementptr inbounds nuw i8, ptr %.val1706.val, i64 296
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !938 ; 2 uses
  %.not.i.i1748 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i1748, label %sqlite3PagerJournalSizeLimit.exit, label %bb.da

.sqlite3WalLimit.exit_crit_edge.i:                ; preds = %bb.cy
  %i.qe = getelementptr inbounds nuw i8, ptr %.val1706.val, i64 208
  %.pre.i = load i64, ptr %i.qe, align 8, !tbaa !1540
  br label %sqlite3PagerJournalSizeLimit.exit

bb.da:                                            ; preds = %bb.cz
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  store i64 %spec.store.select, ptr %i.qf, align 8, !tbaa !1586
  br label %sqlite3PagerJournalSizeLimit.exit

sqlite3PagerJournalSizeLimit.exit:                ; preds = %.sqlite3WalLimit.exit_crit_edge.i, %bb.cz, %bb.da
  %i.qg = phi i64 [ %.pre.i, %.sqlite3WalLimit.exit_crit_edge.i ], [ %spec.store.select, %bb.da ], [ %spec.store.select, %bb.cz ]
  call fastcc void @returnSingleInt(ptr noundef %.0.i2072, i64 noundef %i.qg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #58
  br label %sqlite3DbFree.exit2067

bb.db:                                            ; preds = %bb.bc
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !610 ; 2 uses
  %.not1669 = icmp eq ptr %.01371, null
  br i1 %.not1669, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.qj = call fastcc i32 @sqlite3BtreeGetAutoVacuum(ptr noundef %i.qi)
  %i.qk = zext nneg i32 %i.qj to i64
  call fastcc void @returnSingleInt(ptr noundef %.0.i2072, i64 noundef %i.qk)
  br label %sqlite3DbFree.exit2067.thread2153

bb.dd:                                            ; preds = %bb.db
  %i.ql = call fastcc i32 @getAutoVacuum(ptr noundef %.01371) ; 3 uses
  %i.qm = trunc nuw i32 %i.ql to i8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.aa, i64 106
  store i8 %i.qm, ptr %i.qn, align 2, !tbaa !1349
  %i.qo = call fastcc i32 @sqlite3BtreeSetAutoVacuum(ptr noundef %i.qi, i32 noundef %i.ql)
  %i.qp = icmp eq i32 %i.qo, 0
  %i.qq = add nsw i32 %i.ql, -1                   ; 2 uses
  %or.cond7 = icmp ult i32 %i.qq, 2
  %or.cond1682 = select i1 %i.qp, i1 %or.cond7, i1 false
  br i1 %or.cond1682, label %bb.de, label %.thread3075

bb.de:                                            ; preds = %bb.dd
  %.val1704 = load i32, ptr %i.ap, align 8, !tbaa !703
  %i.qr = call fastcc ptr @sqlite3VdbeAddOpList(ptr noundef nonnull %.0.i2072, i32 noundef 5, ptr noundef nonnull @sqlite3Pragma.setMeta6) ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  store i32 %.015.i, ptr %i.qs, align 4, !tbaa !926
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 36
  store i32 %.015.i, ptr %i.qt, align 4, !tbaa !926
  %i.qu = add nsw i32 %.val1704, 4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 72
  store i32 %i.qu, ptr %i.qv, align 8, !tbaa !927
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 132
  store i32 %.015.i, ptr %i.qw, align 4, !tbaa !926
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 140
  store i32 %i.qq, ptr %i.qx, align 4, !tbaa !928
  call fastcc void @sqlite3VdbeUsesBtree(ptr noundef nonnull %.0.i2072, i32 noundef %.015.i)
  br label %.thread3075

bb.df:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #58
  store i32 0, ptr %i.k, align 4, !tbaa !570
  %i.qy = icmp eq ptr %.01371, null
  br i1 %i.qy, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qz = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull %.01371, ptr noundef %i.k)
  %i.ra = icmp eq i32 %i.qz, 0
  %i.rb = load i32, ptr %i.k, align 4             ; 2 uses
  %i.rc = icmp slt i32 %i.rb, 1
  %or.cond9 = select i1 %i.ra, i1 true, i1 %i.rc
  br i1 %or.cond9, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg, %bb.df
end_hunk_1
