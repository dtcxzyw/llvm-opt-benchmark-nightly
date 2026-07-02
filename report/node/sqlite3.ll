inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@exprNodePatternLengthEst:bb.a
  %i.o = zext i8 %.in to i32                      ; 2 uses
  %.not27 = icmp ne i32 %., %i.o
  %.not28 = icmp ne i32 %.32, %i.o
  %or.cond.not = and i1 %.not27, %.not28
  %i.p = zext i1 %or.cond.not to i32
  %spec.select34 = add nsw i32 %.02137, %i.p
  %.pre = load i8, ptr %i.h, align 1, !tbaa !227
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.d, %bb.f
  %i.q = phi i8 [ %.pre, %bb.f ], [ %i.m, %bb.d ], [ %i.m, %bb.d ] ; 2 uses
  %.3 = phi ptr [ %i.h, %bb.f ], [ %.2, %bb.d ], [ %.2, %bb.d ]
  %.1 = phi i32 [ %spec.select34, %bb.f ], [ %.02137, %bb.d ], [ %.02137, %bb.d ] ; 2 uses
  %.not26 = icmp eq i8 %i.q, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !4669

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %.021.lcssa = phi i32 [ 0, %bb.b ], [ %.1, %.critedge ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !227
  %i.t = icmp sgt i32 %.021.lcssa, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  store i32 %.021.lcssa, ptr %i.r, align 8, !tbaa !227
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @whereIsCoveringIndexWalkCallback(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4658 ; 6 uses
  %i.d = load i8, ptr %1, align 8, !tbaa !3021
  switch i8 %i.d, label %bb.f [
    i8 -88, label %bb.b
    i8 -86, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3581
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !4660
  %.not24 = icmp eq i32 %i.f, %i.h
  br i1 %.not24, label %bb.c, label %exprIsCoveredByIndex.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !878
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.l = load i16, ptr %i.k, align 8, !tbaa !875  ; 2 uses
  %.not29 = icmp eq i16 %i.l, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i16, ptr %i.m, align 8, !tbaa !3487
  %wide.trip.count = zext i16 %i.l to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !4670

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !330
  %i.q = icmp eq i16 %i.p, %i.n
  br i1 %i.q, label %exprIsCoveredByIndex.exit.thread, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 1, ptr %i.r, align 1, !tbaa !4662
  br label %exprIsCoveredByIndex.exit.thread

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 99
  %i.t = load i16, ptr %i.s, align 1
  %i.u = and i16 %i.t, 2048
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %exprIsCoveredByIndex.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !4660
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8, !tbaa !875  ; 2 uses
  %.not.i = icmp eq i16 %i.z, 0
  br i1 %.not.i, label %exprIsCoveredByIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ab = phi i16 [ %i.z, %.lr.ph.i ], [ %i.am, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !878
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !330
  %i.af = icmp eq i16 %i.ae, -2
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !2799
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !902
  %i.ak = tail call fastcc i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef nonnull readonly %1, ptr noundef %i.aj, i32 noundef %i.w)
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %exprIsCoveredByIndex.exit, label %._crit_edge14.i

._crit_edge14.i:                                  ; preds = %bb.i
  %.pre.i = load i16, ptr %i.y, align 8, !tbaa !875
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge14.i, %bb.h
  %i.am = phi i16 [ %.pre.i, %._crit_edge14.i ], [ %i.ab, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = zext i16 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next.i, %i.an
  br i1 %i.ao, label %bb.h, label %exprIsCoveredByIndex.exit.thread, !llvm.loop !4671

exprIsCoveredByIndex.exit:                        ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 1, ptr %i.ap, align 4, !tbaa !4661
  br label %exprIsCoveredByIndex.exit.thread

exprIsCoveredByIndex.exit.thread:                 ; preds = %bb.e, %bb.j, %bb.g, %bb.f, %bb.b, %exprIsCoveredByIndex.exit, %._crit_edge
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %bb.b ], [ 2, %._crit_edge ], [ 1, %exprIsCoveredByIndex.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @exprIdxCover(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #34 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !3021
  %i.b = icmp eq i8 %i.a, -88
  br i1 %i.b, label %bb.b, label %sqlite3TableColumnToIndex.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3581
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !4526
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.c, label %sqlite3TableColumnToIndex.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !4528 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i16, ptr %i.k, align 8, !tbaa !3487
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.n = load i16, ptr %i.m, align 8, !tbaa !875  ; 2 uses
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %sqlite3TableColumnToIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !878
  %wide.trip.count.i = zext i16 %i.n to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.r = load i16, ptr %i.q, align 2, !tbaa !330
  %i.s = icmp eq i16 %i.l, %i.r
  br i1 %i.s, label %sqlite3TableColumnToIndex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3TableColumnToIndex.exit.thread, label %bb.d, !llvm.loop !879

sqlite3TableColumnToIndex.exit.thread:            ; preds = %bb.e, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 1, ptr %i.t, align 4, !tbaa !3504
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %bb.d, %bb.a, %bb.b, %sqlite3TableColumnToIndex.exit.thread
  %.0 = phi i32 [ 2, %sqlite3TableColumnToIndex.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc signext i8 @wherePathSatisfiesOrderBy(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull readonly captures(none) %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr nofree noundef captures(none) %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.Walker, align 16            ; 6 uses
  %8 = alloca %struct.WhereScan, align 8          ; 16 uses
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !820
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !651  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq i16 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1328
  %i.f = and i32 %i.e, 64
  %.not272 = icmp eq i32 %i.f, 0
  br i1 %.not272, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i32, ptr %1, align 8, !tbaa !5      ; 2 uses
  %i.h = and i32 %i.g, 65535                      ; 4 uses
  %i.i = icmp samesign ugt i32 %i.h, 63
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.h to i64                ; 5 uses
  %notmask = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask, -1                     ; 3 uses
  %i.l = zext i16 %3 to i32                       ; 5 uses
  %i.m = and i32 %i.l, 2051
  %.not273 = icmp eq i32 %i.m, 0
  %spec.select = select i1 %.not273, i32 386, i32 387 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = and i32 %i.l, 2048
  %.not277 = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not527 = icmp eq i32 %i.h, 0                  ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 42
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 41
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ac = and i32 %i.l, 192
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = and i32 %i.l, 128
  %.not299 = icmp eq i32 %i.ae, 0
  %i.af = and i32 %i.l, 64
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.am = zext i16 %4 to i64                      ; 2 uses
  %9 = load i64, ptr %i.a, align 8, !tbaa !18     ; 3 uses
  %10 = icmp ult i64 %9, %i.k
  br i1 %10, label %.lr.ph740, label %.critedge

.lr.ph740:                                        ; preds = %bb.d, %bb.cs
  %11 = phi i64 [ %12, %bb.cs ], [ %9, %bb.d ]    ; 4 uses
  %.0257518736 = phi ptr [ %.2259, %bb.cs ], [ null, %bb.d ]
  %.0242522735 = phi i64 [ %.1245, %bb.cs ], [ 0, %bb.d ] ; 2 uses
  %indvars.iv579732 = phi i64 [ %.1243, %bb.cs ], [ 0, %bb.d ] ; 2 uses
  %.promoted731 = phi i64 [ %indvars.iv.next580, %bb.cs ], [ 0, %bb.d ] ; 7 uses
  %.not276 = icmp eq i64 %.promoted731, 0
  br i1 %.not276, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph740
  %i.an = getelementptr inbounds nuw i8, ptr %.0257518736, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !4306
  %i.ap = or i64 %i.ao, %indvars.iv579732
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph740
  %.1243 = phi i64 [ %i.ap, %bb.e ], [ %indvars.iv579732, %.lr.ph740 ] ; 2 uses
  %i.aq = icmp samesign ult i64 %.promoted731, %i.am
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !4464
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.promoted731
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !4456 ; 2 uses
  br i1 %.not277, label %bb.h, label %bb.cs

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1258 = phi ptr [ %i.at, %bb.g ], [ %5, %bb.f ] ; 14 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1258, i64 48 ; 4 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !4272 ; 2 uses
  %i.aw = and i32 %i.av, 1024
  %.not278 = icmp eq i32 %i.aw, 0
  br i1 %.not278, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.1258, i64 29
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !227
  %.not322 = icmp eq i8 %i.ay, 0
  br i1 %.not322, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3625
  %i.bb = icmp eq ptr %i.ba, %1
  br i1 %i.bb, label %.critedge.thread, label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !4154
  %i.bd = getelementptr inbounds nuw i8, ptr %.1258, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !4309
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3554 ; 5 uses
  br i1 %.not527, label %._crit_edge, label %.lr.ph491

.lr.ph491:                                        ; preds = %bb.k
  %i.bj = xor i64 %.1243, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %.1258, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %.1258, i64 64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph491, %.critedge3
  %indvars.iv558 = phi i64 [ 0, %.lr.ph491 ], [ %indvars.iv.next559, %.critedge3 ] ; 3 uses
  %i.bm = phi i64 [ %11, %.lr.ph491 ], [ %i.fa, %.critedge3 ] ; 13 uses
  %i.bn = shl nuw i64 1, %indvars.iv558           ; 2 uses
  %i.bo = and i64 %i.bm, %i.bn
  %.not314 = icmp eq i64 %i.bo, 0
  br i1 %.not314, label %bb.m, label %.critedge3

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv558 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !902 ; 2 uses
  %.not9.i = icmp eq ptr %i.bq, null
  br i1 %.not9.i, label %.critedge3, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.r
  %.010.i = phi ptr [ %.1.i, %bb.r ], [ %i.bq, %bb.m ] ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !367 ; 2 uses
  %i.bt = and i32 %i.bs, 532480
  %.not7.i = icmp eq i32 %i.bt, 0
  br i1 %.not7.i, label %sqlite3ExprSkipCollateAndLikely.exitthread-pre-split, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.bu = and i32 %i.bs, 524288
  %.not8.i = icmp eq i32 %i.bu, 0
  br i1 %.not8.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !227
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.by = load i8, ptr %.010.i, align 8, !tbaa !3021 ; 2 uses
  %i.bz = icmp eq i8 %i.by, 114
  br i1 %i.bz, label %bb.q, label %sqlite3ExprSkipCollateAndLikely.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.1.in.i = phi ptr [ %i.bx, %bb.o ], [ %i.ca, %bb.q ]
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !366 ; 2 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %.critedge3, label %.lr.ph.i, !llvm.loop !3965

sqlite3ExprSkipCollateAndLikely.exitthread-pre-split: ; preds = %.lr.ph.i
  %.pr = load i8, ptr %.010.i, align 8, !tbaa !3021
  br label %sqlite3ExprSkipCollateAndLikely.exit

sqlite3ExprSkipCollateAndLikely.exit:             ; preds = %bb.p, %sqlite3ExprSkipCollateAndLikely.exitthread-pre-split
  %i.cb = phi i8 [ %.pr, %sqlite3ExprSkipCollateAndLikely.exitthread-pre-split ], [ %i.by, %bb.p ]
  switch i8 %i.cb, label %.critedge3 [
    i8 -88, label %bb.s
    i8 -86, label %bb.s
  ]

bb.s:                                             ; preds = %sqlite3ExprSkipCollateAndLikely.exit, %sqlite3ExprSkipCollateAndLikely.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i, i64 44
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3581
  %.not317 = icmp eq i32 %i.cd, %i.bi
  br i1 %.not317, label %bb.t, label %.critedge3

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i, i64 48 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !3487 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #59
  store ptr %i.r, ptr %8, align 8, !tbaa !4287
  store ptr %i.r, ptr %i.s, align 8, !tbaa !4289
  store i8 0, ptr %i.t, align 8, !tbaa !4290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store i32 %spec.select, ptr %i.v, align 4, !tbaa !4291
  store i32 0, ptr %i.w, align 8, !tbaa !4292
  store i32 %i.bi, ptr %i.x, align 4, !tbaa !5
  store i8 1, ptr %i.y, align 2, !tbaa !4293
  store i8 1, ptr %i.z, align 1, !tbaa !4294
  %i.cg = icmp eq i16 %i.cf, -2
  br i1 %i.cg, label %sqlite3WhereFindTerm.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.t
  store i16 %i.cf, ptr %i.aa, align 8, !tbaa !330
  %i.ch = call fastcc ptr @whereScanNext(ptr noundef nonnull %8) ; 2 uses
  %.not19.i = icmp eq ptr %i.ch, null
  br i1 %.not19.i, label %sqlite3WhereFindTerm.exit.thread, label %.lr.ph.i339

.lr.ph.i339:                                      ; preds = %.thread.i.i, %bb.x
  %.021.i = phi ptr [ %i.cr, %bb.x ], [ %i.ch, %.thread.i.i ] ; 4 uses
  %.01620.i = phi ptr [ %.1.i340, %bb.x ], [ null, %.thread.i.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.021.i, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !4295 ; 2 uses
  %i.ck = and i64 %i.cj, %i.bj
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.lr.ph.i339
  %i.cm = icmp eq i64 %i.cj, 0
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %.021.i, i64 20
  %i.co = load i16, ptr %i.cn, align 4, !tbaa !4492 ; 2 uses
  %i.cp = and i16 %i.co, 130
  %.not18.i = icmp eq i16 %i.cp, 0
  br i1 %.not18.i, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %.critedge3.thread

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cq = icmp eq ptr %.01620.i, null
  %spec.select.i = select i1 %i.cq, ptr %.021.i, ptr %.01620.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i339
  %.1.i340 = phi ptr [ %.01620.i, %.lr.ph.i339 ], [ %spec.select.i, %bb.w ] ; 6 uses
  %i.cr = call fastcc ptr @whereScanNext(ptr noundef %8) ; 2 uses
  %.not.i341 = icmp eq ptr %i.cr, null
  br i1 %.not.i341, label %sqlite3WhereFindTerm.exit, label %.lr.ph.i339, !llvm.loop !4531

sqlite3WhereFindTerm.exit.thread:                 ; preds = %.thread.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %.critedge3

sqlite3WhereFindTerm.exit:                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  %i.cs = icmp eq ptr %.1.i340, null
  br i1 %i.cs, label %.critedge3, label %bb.y

bb.y:                                             ; preds = %sqlite3WhereFindTerm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1.i340, i64 20
  %.pre585 = load i16, ptr %.phi.trans.insert, align 4, !tbaa !4492 ; 3 uses
  %i.ct = icmp eq i16 %.pre585, 1
  br i1 %i.ct, label %.preheader460, label %.critedge3.thread

.preheader460:                                    ; preds = %bb.y
  %i.cu = load i16, ptr %i.bk, align 4, !tbaa !4270 ; 2 uses
  %.not529 = icmp eq i16 %i.cu, 0
  br i1 %.not529, label %.critedge3, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader460
  %i.cv = load ptr, ptr %i.bl, align 8, !tbaa !4267
  %wide.trip.count = zext i16 %i.cu to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge3, label %bb.aa, !llvm.loop !4672

bb.aa:                                            ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !4297
  %.not318 = icmp eq ptr %.1.i340, %i.cx
  br i1 %.not318, label %.critedge3.thread, label %bb.z

.critedge3.thread:                                ; preds = %bb.aa, %.thread, %bb.y
  %.017.i372624 = phi ptr [ %.021.i, %.thread ], [ %.1.i340, %bb.y ], [ %.1.i340, %bb.aa ]
  %i.cy = phi i16 [ %i.co, %.thread ], [ %.pre585, %bb.y ], [ %.pre585, %bb.aa ]
  %i.cz = and i16 %i.cy, 130
  %.not320 = icmp eq i16 %i.cz, 0
  br i1 %.not320, label %sqlite3StrICmp.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.critedge3.thread
  %i.da = load i16, ptr %i.ce, align 8, !tbaa !3487
  %i.db = icmp sgt i16 %i.da, -1
  br i1 %i.db, label %bb.ac, label %sqlite3StrICmp.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load ptr, ptr %0, align 8, !tbaa !820   ; 5 uses
  %i.dd = load ptr, ptr %i.bp, align 8, !tbaa !902
  %i.de = call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %i.dc, ptr noundef readonly %i.dd) ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ad, label %sqlite3ExprNNCollSeq.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !651
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1299
  br label %sqlite3ExprNNCollSeq.exit

sqlite3ExprNNCollSeq.exit:                        ; preds = %bb.ac, %bb.ad
  %.0.i = phi ptr [ %i.di, %bb.ad ], [ %i.de, %bb.ac ]
  %i.dj = load ptr, ptr %.017.i372624, align 8, !tbaa !1155 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !367
  %i.dm = and i32 %i.dl, 1024
  %.not.i342 = icmp eq i32 %i.dm, 0
  br i1 %.not.i342, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %sqlite3ExprNNCollSeq.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1157 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !371 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !367
  %i.dt = and i32 %i.ds, 512
  %.not.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i, label %bb.af, label %sqlite3ExprCompareCollSeq.exit

bb.af:                                            ; preds = %bb.ae
  %.not15.i.i = icmp eq ptr %i.dq, null
  br i1 %.not15.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !367
  %i.dw = and i32 %i.dv, 512
  %.not16.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not16.i.i, label %bb.ah, label %sqlite3ExprCompareCollSeq.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dx = call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %i.dc, ptr noundef nonnull readonly %i.do) ; 2 uses
  %.not17.i.i = icmp eq ptr %i.dx, null
  br i1 %.not17.i.i, label %sqlite3ExprCompareCollSeq.exit, label %sqlite3ExprCompareCollSeq.exit.thread

bb.ai:                                            ; preds = %sqlite3ExprNNCollSeq.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !371 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1157 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !367
  %i.ee = and i32 %i.ed, 512
  %.not.i8.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i8.i, label %bb.aj, label %sqlite3ExprCompareCollSeq.exit

bb.aj:                                            ; preds = %bb.ai
  %.not15.i12.i = icmp eq ptr %i.eb, null
  br i1 %.not15.i12.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !367
  %i.eh = and i32 %i.eg, 512
  %.not16.i13.i = icmp eq i32 %i.eh, 0
  br i1 %.not16.i13.i, label %bb.al, label %sqlite3ExprCompareCollSeq.exit

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ei = call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %i.dc, ptr noundef nonnull readonly %i.dz) ; 2 uses
  %.not17.i14.i = icmp eq ptr %i.ei, null
  br i1 %.not17.i14.i, label %sqlite3ExprCompareCollSeq.exit, label %sqlite3ExprCompareCollSeq.exit.thread

sqlite3ExprCompareCollSeq.exit:                   ; preds = %bb.ae, %bb.ag, %bb.ah, %bb.ai, %bb.ak, %bb.al
  %.sink.i10.sink.i = phi ptr [ %i.dq, %bb.ah ], [ %i.do, %bb.ae ], [ %i.dq, %bb.ag ], [ %i.dz, %bb.ai ], [ %i.eb, %bb.ak ], [ %i.eb, %bb.al ]
  %i.ej = call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %i.dc, ptr noundef %.sink.i10.sink.i) ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %.critedge3, label %sqlite3ExprCompareCollSeq.exit.thread

sqlite3ExprCompareCollSeq.exit.thread:            ; preds = %bb.ah, %bb.al, %sqlite3ExprCompareCollSeq.exit
  %.0.i343374 = phi ptr [ %i.ej, %sqlite3ExprCompareCollSeq.exit ], [ %i.dx, %bb.ah ], [ %i.ei, %bb.al ]
  %i.el = load ptr, ptr %.0.i, align 8, !tbaa !569
  %i.em = load ptr, ptr %.0.i343374, align 8, !tbaa !569
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %sqlite3ExprCompareCollSeq.exit.thread
  %.013.i = phi ptr [ %i.em, %sqlite3ExprCompareCollSeq.exit.thread ], [ %i.ey, %bb.ap ] ; 2 uses
  %.0.i344 = phi ptr [ %i.el, %sqlite3ExprCompareCollSeq.exit.thread ], [ %i.ex, %bb.ap ] ; 2 uses
  %i.en = load i8, ptr %.0.i344, align 1, !tbaa !227 ; 3 uses
  %i.eo = load i8, ptr %.013.i, align 1, !tbaa !227 ; 2 uses
  %i.ep = icmp eq i8 %i.en, %i.eo
  br i1 %i.ep, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eq = icmp eq i8 %i.en, 0
  br i1 %i.eq, label %sqlite3StrICmp.exit.thread, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.er = zext i8 %i.en to i64
  %i.es = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !227
  %i.eu = zext i8 %i.eo to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !227
  %.not.i345 = icmp eq i8 %i.et, %i.ew
  br i1 %.not.i345, label %bb.ap, label %.critedge3

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i344, i64 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  br label %bb.am

sqlite3StrICmp.exit.thread:                       ; preds = %bb.an, %bb.ab, %.critedge3.thread
  %i.ez = or i64 %i.bm, %i.bn
  br label %.critedge3

.critedge3:                                       ; preds = %bb.r, %bb.z, %bb.ao, %.preheader460, %sqlite3ExprCompareCollSeq.exit, %bb.m, %sqlite3WhereFindTerm.exit.thread, %sqlite3ExprSkipCollateAndLikely.exit, %sqlite3WhereFindTerm.exit, %bb.s, %bb.l, %sqlite3StrICmp.exit.thread
  %i.fa = phi i64 [ %i.bm, %.preheader460 ], [ %i.bm, %bb.ao ], [ %i.ez, %sqlite3StrICmp.exit.thread ], [ %i.bm, %sqlite3ExprCompareCollSeq.exit ], [ %i.bm, %bb.m ], [ %i.bm, %sqlite3WhereFindTerm.exit.thread ], [ %i.bm, %sqlite3ExprSkipCollateAndLikely.exit ], [ %i.bm, %sqlite3WhereFindTerm.exit ], [ %i.bm, %bb.s ], [ %i.bm, %bb.l ], [ %i.bm, %bb.z ], [ %i.bm, %bb.r ] ; 2 uses
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 1 ; 2 uses
  %exitcond562.not = icmp eq i64 %indvars.iv.next559, %i.j
  br i1 %exitcond562.not, label %._crit_edge.loopexit, label %bb.l, !llvm.loop !4673

._crit_edge.loopexit:                             ; preds = %.critedge3
  %.pre586 = load i32, ptr %i.au, align 8, !tbaa !4272
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %i.fb = phi i32 [ %i.av, %bb.k ], [ %.pre586, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa489 = phi i64 [ %11, %bb.k ], [ %i.fa, %._crit_edge.loopexit ] ; 2 uses
  store i64 %.lcssa489, ptr %i.a, align 8
  %i.fc = and i32 %i.fb, 4096
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.aq, label %.thread444

bb.aq:                                            ; preds = %._crit_edge
  %i.fe = and i32 %i.fb, 256
  %.not279 = icmp eq i32 %i.fe, 0
  br i1 %.not279, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ff = getelementptr inbounds nuw i8, ptr %.1258, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !227
  %.not282 = icmp eq ptr %i.fg, null
  br i1 %.not282, label %.lr.ph510, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fh = load i32, ptr %i.ab, align 8, !tbaa !1328
  %i.fi = and i32 %i.fh, 268435456
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.at, label %.lr.ph510

bb.at:                                            ; preds = %bb.as
  %i.fk = trunc nuw nsw i64 %.promoted731 to i32
  %i.fl = call fastcc i32 @wherePathMatchSubqueryOB(ptr noundef nonnull %0, ptr noundef nonnull %.1258, i32 noundef %i.fk, i32 noundef %i.bi, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %i.a)
  %.not283 = icmp eq i32 %i.fl, 0
  br i1 %.not283, label %.lr.ph510, label %.loopexit464

bb.au:                                            ; preds = %bb.aq
  %i.fm = getelementptr inbounds nuw i8, ptr %.1258, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !227 ; 6 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 99
  %i.fq = load i16, ptr %i.fp, align 1
  %i.fr = and i16 %i.fq, 4
  %.not280 = icmp eq i16 %i.fr, 0
  br i1 %.not280, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 94
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !936
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 96
  %i.fv = load i16, ptr %i.fu, align 8, !tbaa !875 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 98
  %i.fx = load i8, ptr %i.fw, align 2, !tbaa !2990
  %.not281 = icmp ne i8 %i.fx, 0
  %i.fy = and i32 %i.fb, 32768
  %i.fz = icmp eq i32 %i.fy, 0
  %narrow457 = and i1 %i.fz, %.not281
  %i.ga = zext i1 %narrow457 to i8                ; 2 uses
  %i.gb = zext i16 %i.ft to i32
  %i.gc = zext i16 %i.fv to i64
  %.not530 = icmp eq i16 %i.fv, 0
  br i1 %.not530, label %.loopexit464, label %.lr.ph510

.lr.ph510:                                        ; preds = %bb.at, %bb.as, %bb.ar, %bb.aw
  %.2220636 = phi i8 [ %i.ga, %bb.aw ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ]
  %.0236635 = phi i32 [ %i.gb, %bb.aw ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.at ]
  %.1247634 = phi i64 [ %i.gc, %bb.aw ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ]
  %.0249633 = phi ptr [ %i.fn, %bb.aw ], [ null, %bb.ar ], [ null, %bb.as ], [ null, %bb.at ] ; 6 uses
  %.promoted502 = load i64, ptr %i.a, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %.1258, i64 24 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.1258, i64 54
  %i.gf = getelementptr inbounds nuw i8, ptr %.1258, i64 64
  %.not288 = icmp eq ptr %.0249633, null
  %i.gg = getelementptr inbounds nuw i8, ptr %.0249633, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %.0249633, i64 56
  %i.gi = getelementptr inbounds nuw i8, ptr %.0249633, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %.0249633, i64 80
  %i.gk = getelementptr inbounds nuw i8, ptr %.0249633, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %.1258, i64 30
  %i.gm = shl nuw i64 1, %.promoted731
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph510, %bb.ck
  %indvars.iv563 = phi i64 [ 0, %.lr.ph510 ], [ %indvars.iv.next564, %bb.ck ] ; 14 uses
  %.0211508 = phi i8 [ 0, %.lr.ph510 ], [ %.2213.ph, %bb.ck ] ; 3 uses
  %.0214507 = phi i8 [ 0, %.lr.ph510 ], [ %.2216.ph, %bb.ck ] ; 4 uses
  %.3506 = phi i8 [ %.2220636, %.lr.ph510 ], [ %.10.ph, %bb.ck ] ; 3 uses
  %.0221505 = phi i8 [ 0, %.lr.ph510 ], [ %.2223.ph, %bb.ck ] ; 3 uses
  %i.gn = phi i64 [ %.promoted502, %.lr.ph510 ], [ %i.lp, %bb.ck ] ; 3 uses
  %i.go = load i16, ptr %i.gd, align 8, !tbaa !227 ; 2 uses
  %i.gp = zext i16 %i.go to i64
  %i.gq = zext i16 %i.go to i64
  %i.gr = icmp samesign ult i64 %indvars.iv563, %i.gq ; 2 uses
  br i1 %i.gr, label %bb.ay, label %.thread379

bb.ay:                                            ; preds = %bb.ax
  %i.gs = load i16, ptr %i.ge, align 2, !tbaa !4286
  %i.gt = zext i16 %i.gs to i64
  %.not284 = icmp samesign ult i64 %indvars.iv563, %i.gt
  br i1 %.not284, label %.thread379, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gu = load ptr, ptr %i.gf, align 8, !tbaa !4267 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv563
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !4297 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 20
  %i.gy = load i16, ptr %i.gx, align 4, !tbaa !4492
  %i.gz = zext i16 %i.gy to i32                   ; 3 uses
  %i.ha = and i32 %spec.select, %i.gz
  %.not285 = icmp eq i32 %i.ha, 0
  br i1 %.not285, label %bb.ba, label %.thread383

.thread383:                                       ; preds = %bb.az
  %i.hb = and i32 %i.gz, 384
  %.not287 = icmp eq i32 %i.hb, 0
  %spec.select326 = select i1 %.not287, i8 %.3506, i8 0
  br label %bb.ck

bb.ba:                                            ; preds = %bb.az
  %i.hc = and i32 %i.gz, 1
  %.not286 = icmp eq i32 %i.hc, 0
  br i1 %.not286, label %.thread379, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = load ptr, ptr %i.gw, align 8, !tbaa !1155
  %i.he = add nuw nsw i64 %i.gp, 4294967295
  %wide.trip.count568 = and i64 %i.he, 4294967295 ; 2 uses
  %exitcond569.not723 = icmp eq i64 %indvars.iv563, %wide.trip.count568
  br i1 %exitcond569.not723, label %.thread379, label %.lr.ph726

bb.bc:                                            ; preds = %.lr.ph726
  %exitcond569.not = icmp eq i64 %indvars.iv.next566, %wide.trip.count568
  br i1 %exitcond569.not, label %.thread379, label %.lr.ph726, !llvm.loop !4674

.lr.ph726:                                        ; preds = %bb.bb, %bb.bc
  %indvars.iv565724 = phi i64 [ %indvars.iv.next566, %bb.bc ], [ %indvars.iv563, %bb.bb ]
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565724, 1 ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next566
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !4297
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !1155
  %i.hi = icmp eq ptr %i.hh, %i.hd
  br i1 %i.hi, label %..thread379.loopexit_crit_edge, label %bb.bc, !llvm.loop !4674

..thread379.loopexit_crit_edge:                   ; preds = %.lr.ph726
  br label %.thread379, !llvm.loop !4674

.thread379:                                       ; preds = %bb.bc, %bb.bb, %..thread379.loopexit_crit_edge, %bb.ba, %bb.ay, %bb.ax
  %.not303492 = phi i1 [ %.not527, %bb.ba ], [ %.not527, %bb.ay ], [ %.not527, %bb.ax ], [ %.not527, %bb.bb ], [ true, %..thread379.loopexit_crit_edge ], [ %.not527, %bb.bc ]
  %.3228 = phi i8 [ 1, %bb.ba ], [ 1, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.bb ], [ 0, %..thread379.loopexit_crit_edge ], [ 1, %bb.bc ]
  br i1 %.not288, label %.thread387, label %bb.bd

bb.bd:                                            ; preds = %.thread379
  %i.hj = load ptr, ptr %i.gg, align 8, !tbaa !878
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %indvars.iv563
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !330 ; 2 uses
  %i.hm = load ptr, ptr %i.gh, align 8, !tbaa !3603
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %indvars.iv563
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !227
  %i.hp = and i8 %i.ho, 1                         ; 4 uses
  %i.hq = load ptr, ptr %i.gi, align 8, !tbaa !1098 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 52
  %i.hs = load i16, ptr %i.hr, align 4, !tbaa !891
  %i.ht = icmp eq i16 %i.hl, %i.hs
  %narrow = select i1 %i.ht, i16 -1, i16 %i.hl
  %narrow.fr = freeze i16 %narrow                 ; 3 uses
  %spec.store.select = sext i16 %narrow.fr to i32 ; 5 uses
  %.not289 = icmp eq i8 %.3506, 0
  br i1 %.not289, label %.thread403, label %bb.be

.thread387:                                       ; preds = %.thread379
  %.not289390 = icmp ne i8 %.3506, 0
  br label %.thread403

bb.be:                                            ; preds = %bb.bd
  %i.hu = icmp sgt i16 %narrow.fr, -1
  br i1 %i.hu, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  br i1 %i.gr, label %.thread403, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !882
  %i.hx = zext nneg i32 %spec.store.select to i64
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load i8, ptr %i.hz, align 8
  %i.ib = and i8 %i.ia, 15
  %i.ic = icmp ne i8 %i.ib, 0
  br label %.thread403

bb.bh:                                            ; preds = %bb.be
  %i.id = icmp ne i16 %narrow.fr, -2
  br label %.thread403

.thread403:                                       ; preds = %bb.bh, %.thread387, %bb.bf, %bb.bg, %bb.bd
  %.0217395.shrunk = phi i8 [ %i.hp, %bb.bd ], [ %i.hp, %bb.bf ], [ 0, %.thread387 ], [ %i.hp, %bb.bh ], [ %i.hp, %bb.bg ] ; 3 uses
  %.0260392 = phi i32 [ %spec.store.select, %bb.bd ], [ %spec.store.select, %bb.bf ], [ -1, %.thread387 ], [ %spec.store.select, %bb.bh ], [ %spec.store.select, %bb.bg ] ; 3 uses
  %.8.shrunk = phi i1 [ false, %bb.bd ], [ true, %bb.bf ], [ %.not289390, %.thread387 ], [ %i.id, %bb.bh ], [ %i.ic, %bb.bg ]
  %.8 = zext i1 %.8.shrunk to i8                  ; 2 uses
  br i1 %.not303492, label %.thread413, label %.lr.ph495

.lr.ph495:                                        ; preds = %.thread403
  %i.ie = icmp sgt i32 %.0260392, -2
  %.not297 = icmp eq i32 %.0260392, -1            ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph495, %sqlite3ExprSkipCollateAndLikely.exit355.thread
  %indvars.iv570 = phi i64 [ 0, %.lr.ph495 ], [ %indvars.iv.next571, %sqlite3ExprSkipCollateAndLikely.exit355.thread ] ; 6 uses
  %.4229494 = phi i8 [ %.3228, %.lr.ph495 ], [ 1, %sqlite3ExprSkipCollateAndLikely.exit355.thread ] ; 4 uses
  %i.if = shl nuw i64 1, %indvars.iv570
  %i.ig = and i64 %i.gn, %i.if
  %.not291 = icmp eq i64 %i.ig, 0
  br i1 %.not291, label %bb.bj, label %sqlite3ExprSkipCollateAndLikely.exit355.thread

bb.bj:                                            ; preds = %bb.bi
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv570 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !902 ; 2 uses
  %.not9.i346 = icmp eq ptr %i.ii, null
  br i1 %.not9.i346, label %sqlite3ExprSkipCollateAndLikely.exit355.thread, label %.lr.ph.i347

.lr.ph.i347:                                      ; preds = %bb.bj, %bb.bo
  %.010.i348 = phi ptr [ %.1.i352, %bb.bo ], [ %i.ii, %bb.bj ] ; 8 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.010.i348, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !367 ; 2 uses
  %i.il = and i32 %i.ik, 532480
  %.not7.i349 = icmp eq i32 %i.il, 0
  br i1 %.not7.i349, label %sqlite3ExprSkipCollateAndLikely.exit355, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i347
  %i.im = and i32 %i.ik, 524288
  %.not8.i350 = icmp eq i32 %i.im, 0
  br i1 %.not8.i350, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.in = getelementptr inbounds nuw i8, ptr %.010.i348, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !227
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.iq = load i8, ptr %.010.i348, align 8, !tbaa !3021
  %i.ir = icmp eq i8 %i.iq, 114
  br i1 %i.ir, label %bb.bn, label %sqlite3ExprSkipCollateAndLikely.exit355

bb.bn:                                            ; preds = %bb.bm
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i348, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %.1.in.i351 = phi ptr [ %i.ip, %bb.bl ], [ %i.is, %bb.bn ]
  %.1.i352 = load ptr, ptr %.1.in.i351, align 8, !tbaa !366 ; 2 uses
  %.not.i353 = icmp eq ptr %.1.i352, null
  br i1 %.not.i353, label %sqlite3ExprSkipCollateAndLikely.exit355.thread, label %.lr.ph.i347, !llvm.loop !3965

sqlite3ExprSkipCollateAndLikely.exit355:          ; preds = %bb.bm, %.lr.ph.i347
  %spec.select329 = select i1 %i.ad, i8 0, i8 %.4229494 ; 5 uses
  br i1 %i.ie, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %sqlite3ExprSkipCollateAndLikely.exit355
  %i.it = load i8, ptr %.010.i348, align 8, !tbaa !3021
  switch i8 %i.it, label %sqlite3ExprSkipCollateAndLikely.exit355.thread [
    i8 -88, label %bb.bq
    i8 -86, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp
  %i.iu = getelementptr inbounds nuw i8, ptr %.010.i348, i64 44
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !3581
  %.not295 = icmp eq i32 %i.iv, %i.bi
  br i1 %.not295, label %bb.br, label %sqlite3ExprSkipCollateAndLikely.exit355.thread

bb.br:                                            ; preds = %bb.bq
  %i.iw = getelementptr inbounds nuw i8, ptr %.010.i348, i64 48
  %i.ix = load i16, ptr %i.iw, align 8, !tbaa !3487
  %i.iy = sext i16 %i.ix to i32
  %.not296 = icmp eq i32 %.0260392, %i.iy
  br i1 %.not296, label %bb.bv, label %sqlite3ExprSkipCollateAndLikely.exit355.thread

bb.bs:                                            ; preds = %sqlite3ExprSkipCollateAndLikely.exit355
  %i.iz = load ptr, ptr %i.gj, align 8, !tbaa !2799
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %indvars.iv563
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !902 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bs, %bb.bt
  %.06.i.i = phi ptr [ %i.jh, %bb.bt ], [ %.010.i348, %bb.bs ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !367
  %i.jf = and i32 %i.je, 8192
  %.not4.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not4.i.i, label %sqlite3ExprSkipCollate.exit.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !371 ; 2 uses
  %.not.i.i356 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i356, label %sqlite3ExprSkipCollate.exit.i, label %.lr.ph.i.i, !llvm.loop !3584

sqlite3ExprSkipCollate.exit.i:                    ; preds = %bb.bt, %.lr.ph.i.i
  %.0.lcssa.i.i = phi ptr [ null, %bb.bt ], [ %.06.i.i, %.lr.ph.i.i ]
  %.not5.i2.i = icmp eq ptr %i.jc, null
  br i1 %.not5.i2.i, label %sqlite3ExprCompareSkip.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %sqlite3ExprSkipCollate.exit.i, %bb.bu
  %.06.i4.i = phi ptr [ %i.jm, %bb.bu ], [ %i.jc, %sqlite3ExprSkipCollate.exit.i ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.06.i4.i, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !367
  %i.jk = and i32 %i.jj, 8192
  %.not4.i5.i = icmp eq i32 %i.jk, 0
  br i1 %.not4.i5.i, label %sqlite3ExprCompareSkip.exit, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i3.i
  %i.jl = getelementptr inbounds nuw i8, ptr %.06.i4.i, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !371 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.jm, null
  br i1 %.not.i6.i, label %sqlite3ExprCompareSkip.exit, label %.lr.ph.i3.i, !llvm.loop !3584

sqlite3ExprCompareSkip.exit:                      ; preds = %.lr.ph.i3.i, %bb.bu, %sqlite3ExprSkipCollate.exit.i
  %.0.lcssa.i7.i = phi ptr [ null, %sqlite3ExprSkipCollate.exit.i ], [ null, %bb.bu ], [ %.06.i4.i, %.lr.ph.i3.i ]
  %i.jn = call fastcc range(i32 0, 3) i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %.0.lcssa.i.i, ptr noundef %.0.lcssa.i7.i, i32 noundef %i.bi)
  %.not292 = icmp eq i32 %i.jn, 0
  br i1 %.not292, label %bb.bv, label %sqlite3ExprSkipCollateAndLikely.exit355.thread

bb.bv:                                            ; preds = %sqlite3ExprCompareSkip.exit, %bb.br
  br i1 %.not297, label %sqlite3StrICmp.exit363.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jo = load ptr, ptr %0, align 8, !tbaa !820   ; 2 uses
  %i.jp = load ptr, ptr %i.ih, align 8, !tbaa !902
  %i.jq = call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %i.jo, ptr noundef readonly %i.jp) ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.bx, label %sqlite3ExprNNCollSeq.exit358

bb.bx:                                            ; preds = %bb.bw
  %i.js = load ptr, ptr %i.jo, align 8, !tbaa !651
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !1299
  br label %sqlite3ExprNNCollSeq.exit358

sqlite3ExprNNCollSeq.exit358:                     ; preds = %bb.bw, %bb.bx
  %.0.i357 = phi ptr [ %i.ju, %bb.bx ], [ %i.jq, %bb.bw ]
  %i.jv = load ptr, ptr %.0.i357, align 8, !tbaa !569
  %i.jw = load ptr, ptr %i.gk, align 8, !tbaa !2803
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv563
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !251
  br label %bb.by

bb.by:                                            ; preds = %bb.cb, %sqlite3ExprNNCollSeq.exit358
  %.013.i359 = phi ptr [ %i.jy, %sqlite3ExprNNCollSeq.exit358 ], [ %i.kk, %bb.cb ] ; 2 uses
  %.0.i360 = phi ptr [ %i.jv, %sqlite3ExprNNCollSeq.exit358 ], [ %i.kj, %bb.cb ] ; 2 uses
  %i.jz = load i8, ptr %.0.i360, align 1, !tbaa !227 ; 3 uses
  %i.ka = load i8, ptr %.013.i359, align 1, !tbaa !227 ; 2 uses
  %i.kb = icmp eq i8 %i.jz, %i.ka
  br i1 %i.kb, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.kc = icmp eq i8 %i.jz, 0
  br i1 %i.kc, label %sqlite3StrICmp.exit363.thread, label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.kd = zext i8 %i.jz to i64
  %i.ke = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !227
  %i.kg = zext i8 %i.ka to i64
  %i.kh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !227
  %.not.i361 = icmp eq i8 %i.kf, %i.ki
  br i1 %.not.i361, label %bb.cb, label %sqlite3ExprSkipCollateAndLikely.exit355.thread

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.i360, i64 1
  %i.kk = getelementptr inbounds nuw i8, ptr %.013.i359, i64 1
  br label %bb.by

sqlite3StrICmp.exit363.thread:                    ; preds = %bb.bv, %bb.bz
  br i1 %.not299, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %sqlite3StrICmp.exit363.thread
  %i.kl = trunc i64 %indvars.iv563 to i16
  %i.km = add i16 %i.kl, 1
  store i16 %i.km, ptr %i.gl, align 2, !tbaa !227
  br label %bb.cd

sqlite3ExprSkipCollateAndLikely.exit355.thread:   ; preds = %bb.bo, %bb.ca, %bb.bj, %sqlite3ExprCompareSkip.exit, %bb.bp, %bb.br, %bb.bq, %bb.bi
  %.6231 = phi i8 [ %.4229494, %bb.bi ], [ %spec.select329, %sqlite3ExprCompareSkip.exit ], [ %spec.select329, %bb.bp ], [ %spec.select329, %bb.bq ], [ %spec.select329, %bb.br ], [ %spec.select329, %bb.ca ], [ %.4229494, %bb.bj ], [ %.4229494, %bb.bo ]
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.kn = icmp eq i8 %.6231, 0
  %i.ko = icmp samesign uge i64 %indvars.iv.next571, %i.j
  %.not303 = select i1 %i.kn, i1 true, i1 %i.ko
  br i1 %.not303, label %.thread413, label %bb.bi, !llvm.loop !4675

bb.cd:                                            ; preds = %sqlite3StrICmp.exit363.thread, %bb.cc
  br i1 %i.ag, label %bb.ce, label %.select.unfold_crit_edge

.select.unfold_crit_edge:                         ; preds = %bb.cd
  %.phi.trans.insert587.a = and i64 %indvars.iv570, 4294967295 ; 2 uses
  %.phi.trans.insert588 = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.phi.trans.insert587.a
  %.phi.trans.insert589 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert588, i64 24
  %.pre590 = load i8, ptr %.phi.trans.insert589, align 8, !tbaa !3498
  br label %select.unfold

bb.ce:                                            ; preds = %bb.cd
  %.not304 = icmp eq i8 %.0211508, 0
  br i1 %.not304, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kp = xor i8 %.0217395.shrunk, %.0214507
  %i.kq = and i64 %indvars.iv570, 4294967295      ; 2 uses
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !3498 ; 2 uses
  %i.ku = and i8 %i.kt, 1
  %.not306 = icmp eq i8 %i.kp, %i.ku
  br i1 %.not306, label %select.unfold, label %.thread413

bb.cg:                                            ; preds = %bb.ce
  %i.kv = and i64 %indvars.iv570, 4294967295      ; 3 uses
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load i8, ptr %i.kx, align 8, !tbaa !3498 ; 3 uses
  %i.kz = and i8 %i.ky, 1                         ; 2 uses
  %i.la = xor i8 %i.kz, %.0217395.shrunk          ; 2 uses
  %.not305 = icmp eq i8 %i.kz, %.0217395.shrunk
  br i1 %.not305, label %select.unfold, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lb = load i64, ptr %6, align 8, !tbaa !18
  %i.lc = or i64 %i.lb, %i.gm
  store i64 %i.lc, ptr %6, align 8, !tbaa !18
  br label %select.unfold

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %bb.cf, %bb.cg, %bb.ch
  %.pre-phi = phi i64 [ %.phi.trans.insert587.a, %.select.unfold_crit_edge ], [ %i.kq, %bb.cf ], [ %i.kv, %bb.cg ], [ %i.kv, %bb.ch ]
  %i.ld = phi i8 [ %.pre590, %.select.unfold_crit_edge ], [ %i.kt, %bb.cf ], [ %i.ky, %bb.cg ], [ %i.ky, %bb.ch ]
  %.1215.ph = phi i8 [ %.0214507, %.select.unfold_crit_edge ], [ %.0214507, %bb.cf ], [ %i.la, %bb.cg ], [ %i.la, %bb.ch ]
  %.1212.ph = phi i8 [ %.0211508, %.select.unfold_crit_edge ], [ 1, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ch ]
  %i.le = and i8 %i.ld, 2
  %.not308 = icmp eq i8 %i.le, 0
  br i1 %.not308, label %.critedge334, label %bb.ci

bb.ci:                                            ; preds = %select.unfold
  %i.lf = load i16, ptr %i.gd, align 8, !tbaa !227
  %i.lg = zext i16 %i.lf to i64
  %i.lh = icmp eq i64 %indvars.iv563, %i.lg
  br i1 %i.lh, label %bb.cj, label %.thread413

bb.cj:                                            ; preds = %bb.ci
  %i.li = load i32, ptr %i.au, align 8, !tbaa !4272
  %i.lj = or i32 %i.li, 524288
  store i32 %i.lj, ptr %i.au, align 8, !tbaa !4272
  br label %.critedge334

.critedge334:                                     ; preds = %select.unfold, %bb.cj
  %.1222 = select i1 %.not297, i8 1, i8 %.0221505
  %i.lk = shl nuw i64 1, %.pre-phi
  %i.ll = or i64 %i.gn, %i.lk                     ; 2 uses
  store i64 %i.ll, ptr %i.a, align 8, !tbaa !18
  br label %bb.ck

.thread413:                                       ; preds = %bb.ci, %bb.cf, %.thread403, %sqlite3ExprSkipCollateAndLikely.exit355.thread
  %i.lm = trunc nuw nsw i64 %indvars.iv563 to i32
  %i.ln = icmp eq i64 %indvars.iv563, 0
  %i.lo = icmp samesign ugt i32 %.0236635, %i.lm
  %or.cond335 = select i1 %i.ln, i1 true, i1 %i.lo
  %.9 = select i1 %or.cond335, i8 0, i8 %.8
  br label %.loopexit464

bb.ck:                                            ; preds = %.critedge334, %.thread383
  %i.lp = phi i64 [ %i.gn, %.thread383 ], [ %i.ll, %.critedge334 ]
  %.2223.ph = phi i8 [ %.0221505, %.thread383 ], [ %.1222, %.critedge334 ] ; 2 uses
  %.10.ph = phi i8 [ %spec.select326, %.thread383 ], [ %.8, %.critedge334 ] ; 2 uses
  %.2216.ph = phi i8 [ %.0214507, %.thread383 ], [ %.1215.ph, %.critedge334 ]
  %.2213.ph = phi i8 [ %.0211508, %.thread383 ], [ %.1212.ph, %.critedge334 ]
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1 ; 2 uses
  %exitcond573.not = icmp eq i64 %indvars.iv.next564, %.1247634
  br i1 %exitcond573.not, label %.loopexit464, label %bb.ax, !llvm.loop !4676

.loopexit464:                                     ; preds = %bb.ck, %bb.at, %bb.aw, %.thread413
  %.0221479 = phi i8 [ %.0221505, %.thread413 ], [ 0, %bb.aw ], [ 0, %bb.at ], [ %.2223.ph, %bb.ck ]
  %.11 = phi i8 [ %.9, %.thread413 ], [ %i.ga, %bb.aw ], [ 0, %bb.at ], [ %.10.ph, %bb.ck ]
  %.not310 = icmp eq i8 %.0221479, 0
  %.not311 = icmp eq i8 %.11, 0
  %or.cond456 = select i1 %.not310, i1 %.not311, i1 false
  %.pre590.pre = load i64, ptr %i.a, align 8      ; 2 uses
  br i1 %or.cond456, label %.critedge, label %.thread444, !llvm.loop !4677

.thread444:                                       ; preds = %.loopexit464, %._crit_edge
  %.promoted513 = phi i64 [ %.lcssa489, %._crit_edge ], [ %.pre590.pre, %.loopexit464 ] ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.1258, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !4306
  %i.ls = or i64 %i.lr, %.0242522735              ; 2 uses
  br i1 %.not527, label %.loopexit463, label %.lr.ph516

.lr.ph516:                                        ; preds = %.thread444
  %i.lt = xor i64 %i.ls, -1
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph516, %bb.cr
  %indvars.iv574 = phi i64 [ 0, %.lr.ph516 ], [ %indvars.iv.next575, %bb.cr ] ; 3 uses
  %i.lu = phi i64 [ %.promoted513, %.lr.ph516 ], [ %i.mw, %bb.cr ] ; 4 uses
  %i.lv = shl nuw i64 1, %indvars.iv574           ; 2 uses
  %i.lw = and i64 %i.lu, %i.lv
  %.not312 = icmp eq i64 %i.lw, 0
  br i1 %.not312, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv574
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !902 ; 6 uses
  %.not.i364 = icmp eq ptr %i.ly, null
  br i1 %.not.i364, label %sqlite3WhereExprUsage.exit.thread448, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lz = load i8, ptr %i.ly, align 8, !tbaa !3021
  %i.ma = icmp eq i8 %i.lz, -88
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !367 ; 2 uses
  %i.md = and i32 %i.mc, 32
  %.not.i.i365 = icmp eq i32 %i.md, 0
  %or.cond.i = select i1 %i.ma, i1 %.not.i.i365, i1 false
  br i1 %or.cond.i, label %bb.co, label %._crit_edge.i

bb.co:                                            ; preds = %bb.cn
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 44
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !3581 ; 2 uses
  %i.mg = load i32, ptr %i.ak, align 8, !tbaa !5
  %i.mh = icmp eq i32 %i.mg, %i.mf
  br i1 %i.mh, label %sqlite3WhereExprUsage.exit.thread448, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.co
  %i.mi = load i32, ptr %i.al, align 4, !tbaa !4260 ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, 1
  br i1 %i.mj, label %.lr.ph.preheader.i.i, label %sqlite3ExprIsConstant.exit

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.mi to i64
  br label %.lr.ph.i.i366

bb.cp:                                            ; preds = %.lr.ph.i.i366
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %sqlite3ExprIsConstant.exit, label %.lr.ph.i.i366, !llvm.loop !4310

.lr.ph.i.i366:                                    ; preds = %bb.cp, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.cp ] ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.i
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !5
  %i.mm = icmp eq i32 %i.ml, %i.mf
  br i1 %i.mm, label %bb.cq, label %bb.cp

bb.cq:                                            ; preds = %.lr.ph.i.i366
  %i.mn = shl nuw i64 1, %indvars.iv.i.i
  br label %sqlite3WhereExprUsage.exit.thread448

._crit_edge.i:                                    ; preds = %bb.cn
  %i.mo = and i32 %i.mc, 8454144
  %.not7.i.i = icmp eq i32 %i.mo, 0
  br i1 %.not7.i.i, label %sqlite3WhereExprUsage.exit, label %sqlite3ExprIsConstant.exit

sqlite3WhereExprUsage.exit:                       ; preds = %._crit_edge.i
  %i.mp = call fastcc i64 @sqlite3WhereExprUsageFull(ptr noundef nonnull %i.ah, ptr noundef nonnull readonly %i.ly), !inline_history !4542 ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %sqlite3ExprIsConstant.exit, label %sqlite3WhereExprUsage.exit.thread448

sqlite3ExprIsConstant.exit:                       ; preds = %bb.cp, %.preheader.i.i, %._crit_edge.i, %sqlite3WhereExprUsage.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #59
  store i16 1, ptr %i.ai, align 4, !tbaa !3504
  store <2 x ptr> <ptr null, ptr @exprNodeIsConstant>, ptr %7, align 16, !tbaa !450
  store ptr @sqlite3SelectWalkFail, ptr %i.aj, align 16, !tbaa !3508
  %i.mr = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %7, ptr noundef nonnull %i.ly) #62, !inline_history !3509 ; 0 uses
  %.pre.i.i = load i16, ptr %i.ai, align 4, !tbaa !3504
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #59
  %.not313 = icmp eq i16 %.pre.i.i, 0
  br i1 %.not313, label %bb.cr, label %sqlite3WhereExprUsage.exit.thread448

sqlite3WhereExprUsage.exit.thread448:             ; preds = %bb.cm, %bb.cq, %bb.co, %sqlite3ExprIsConstant.exit, %sqlite3WhereExprUsage.exit
  %i.ms = phi i64 [ 0, %sqlite3ExprIsConstant.exit ], [ %i.mp, %sqlite3WhereExprUsage.exit ], [ 1, %bb.co ], [ %i.mn, %bb.cq ], [ 0, %bb.cm ]
  %i.mt = and i64 %i.ms, %i.lt
  %i.mu = icmp eq i64 %i.mt, 0
  %i.mv = select i1 %i.mu, i64 %i.lv, i64 0
  %spec.select526 = or i64 %i.lu, %i.mv
  br label %bb.cr

bb.cr:                                            ; preds = %sqlite3WhereExprUsage.exit.thread448, %sqlite3ExprIsConstant.exit, %bb.cl
  %i.mw = phi i64 [ %spec.select526, %sqlite3WhereExprUsage.exit.thread448 ], [ %i.lu, %bb.cl ], [ %i.lu, %sqlite3ExprIsConstant.exit ] ; 2 uses
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next575, %i.j
  br i1 %exitcond578.not, label %.loopexit463, label %bb.cl, !llvm.loop !4678

.loopexit463:                                     ; preds = %bb.cr, %.thread444
  %.lcssa514 = phi i64 [ %.promoted513, %.thread444 ], [ %i.mw, %bb.cr ]
  store i64 %.lcssa514, ptr %i.a, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit463, %bb.g
  %.2259 = phi ptr [ %i.at, %bb.g ], [ %.1258, %.loopexit463 ]
  %.1245 = phi i64 [ %.0242522735, %bb.g ], [ %i.ls, %.loopexit463 ]
  %indvars.iv.next580 = add nuw nsw i64 %.promoted731, 1
  %12 = load i64, ptr %i.a, align 8, !tbaa !18    ; 3 uses
  %i.mx = icmp ult i64 %12, %i.k
  %.not275 = icmp samesign ult i64 %.promoted731, %i.am
  %or.cond.not = select i1 %i.mx, i1 %.not275, i1 false
  br i1 %or.cond.not, label %.lr.ph740, label %.critedge, !llvm.loop !4677

.critedge:                                        ; preds = %bb.cs, %.loopexit464, %bb.d, %bb.i, %bb.j
  %or.cond.not720 = phi i1 [ false, %bb.d ], [ true, %bb.j ], [ true, %bb.i ], [ false, %bb.cs ], [ true, %.loopexit464 ]
  %i.my = phi i64 [ %9, %bb.d ], [ %11, %bb.j ], [ %11, %bb.i ], [ %12, %bb.cs ], [ %.pre590.pre, %.loopexit464 ] ; 2 uses
  %i.mz = icmp eq i64 %i.my, %i.k
  br i1 %i.mz, label %.critedge.thread, label %bb.ct

.critedge.thread:                                 ; preds = %bb.j, %.critedge
  %i.na = trunc i32 %i.g to i8
  br label %.loopexit

bb.ct:                                            ; preds = %.critedge
  br i1 %or.cond.not720, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.ct
  %i.nb = icmp samesign ugt i32 %i.h, 1
  br i1 %i.nb, label %.lr.ph746, label %.loopexit

.preheader:                                       ; preds = %.lr.ph746
  %i.nc = icmp sgt i64 %indvars.iv581745, 2
  br i1 %i.nc, label %.lr.ph746, label %.loopexit, !llvm.loop !4679

.lr.ph746:                                        ; preds = %.preheader.preheader, %.preheader
  %indvars.iv581745 = phi i64 [ %indvars.iv.next582, %.preheader ], [ %i.j, %.preheader.preheader ] ; 2 uses
  %indvars.iv.next582 = add nsw i64 %indvars.iv581745, -1 ; 3 uses
  %notmask324 = shl nsw i64 -1, %indvars.iv.next582
  %i.nd = or i64 %notmask324, %i.my
  %.not325 = icmp eq i64 %i.nd, -1
  br i1 %.not325, label %.loopexit.split.loop.exit, label %.preheader, !llvm.loop !4679

.loopexit.split.loop.exit:                        ; preds = %.lr.ph746
  %i.ne = trunc i64 %indvars.iv.next582 to i8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.au, %bb.av, %.preheader, %.preheader.preheader, %.loopexit.split.loop.exit, %bb.ct, %bb.c, %bb.b, %.critedge.thread
  %.2 = phi i8 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.na, %.critedge.thread ], [ 0, %.preheader.preheader ], [ -1, %bb.ct ], [ %i.ne, %.loopexit.split.loop.exit ], [ 0, %.preheader ], [ 0, %bb.av ], [ 0, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i8 %.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @whereLoopIsNoBetter(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #43 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !4272
  %i.c = and i32 %i.b, 512
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4272
  %i.g = and i32 %i.f, 512
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !227
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  %i.l = load i16, ptr %i.k, align 4, !tbaa !3243
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !227
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  %i.p = load i16, ptr %i.o, align 4, !tbaa !3243
  %i.q = icmp sge i16 %i.l, %i.p
  %. = zext i1 %i.q to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @wherePathMatchSubqueryOB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 65536) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 4 uses
  %i.c = load i64, ptr %6, align 8, !tbaa !18     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.d = shl nuw i64 1, %indvars.iv               ; 2 uses
  %i.e = and i64 %i.d, %i.c
  %.not = icmp eq i64 %i.e, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !4680

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.b, align 8, !tbaa !5    ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.k = load i32, ptr %4, align 8, !tbaa !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.m = zext nneg i32 %2 to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = sext i32 %i.k to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.p = icmp slt i64 %indvars.iv, %i.o
  br i1 %i.p, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.r = load i16, ptr %i.q, align 4, !tbaa !227  ; 2 uses
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !902  ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !3021
  switch i8 %i.v, label %.critedge [
    i8 -88, label %bb.e
    i8 -86, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3581
  %.not51.peel = icmp eq i32 %i.x, %3
  br i1 %.not51.peel, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load i16, ptr %i.y, align 8, !tbaa !3487
  %i.aa = sext i16 %i.z to i32
  %i.ab = zext i16 %i.r to i32
  %i.ac = add nsw i32 %i.ab, -1
  %.not52.peel = icmp eq i32 %i.ac, %i.aa
  br i1 %.not52.peel, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ad = load i16, ptr %i.l, align 4, !tbaa !330
  %i.ae = and i16 %i.ad, 64
  %i.af = icmp eq i16 %i.ae, 0                    ; 2 uses
  br i1 %i.af, label %bb.h, label %.thread.peel

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !3498
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !3498
  %i.ak = xor i8 %i.aj, %i.ah                     ; 2 uses
  %i.al = and i8 %i.ak, 2
  %.not53.peel = icmp eq i8 %i.al, 0
  br i1 %.not53.peel, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.am = and i8 %i.ak, 1
  %.not55.peel = icmp eq i8 %i.am, 0
  br i1 %.not55.peel, label %.thread.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.h, align 8, !tbaa !4272
  %i.ao = and i32 %i.an, 33554432
  %.not56.peel = icmp eq i32 %i.ao, 0
  br i1 %.not56.peel, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ap = load i64, ptr %5, align 8, !tbaa !18
  %i.aq = or i64 %i.ap, %i.n
  store i64 %i.aq, ptr %5, align 8, !tbaa !18
  %.pre = load i64, ptr %6, align 8, !tbaa !18
  br label %.thread.peel

.thread.peel:                                     ; preds = %bb.k, %bb.i, %bb.g
  %i.ar = phi i64 [ %i.c, %bb.g ], [ %.pre, %bb.k ], [ %i.c, %bb.i ]
  %.3.peel = phi i8 [ 0, %bb.g ], [ 1, %bb.k ], [ 0, %bb.i ]
  %i.as = or i64 %i.ar, %i.d                      ; 2 uses
  store i64 %i.as, ptr %6, align 8, !tbaa !18
  %exitcond.peel.not = icmp eq i32 %i.i, 1
  br i1 %exitcond.peel.not, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %.thread.peel, %.thread
  %i.at = phi i64 [ %i.bt, %.thread ], [ %i.as, %.thread.peel ]
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.thread ], [ 1, %.thread.peel ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.thread ], [ %indvars.iv.next, %.thread.peel ] ; 4 uses
  %i.au = icmp slt i64 %indvars.iv80, %i.o
  br i1 %i.au, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.peel.next
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv82 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !227 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv80 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !902 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !3021
  switch i8 %i.bb, label %.critedge [
    i8 -88, label %bb.n
    i8 -86, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
end_hunk_0
