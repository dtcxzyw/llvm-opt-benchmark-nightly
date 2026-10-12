Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mg?download=true
inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@free

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @calculate_neighboring_subdomain_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = add i32 %4, %1
  %i.d = add i32 %i.c, %i.b
  %i.e = srem i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1564 ; 2 uses
  %i.g = add i32 %5, %2
  %i.h = add i32 %6, %3
  %i.i = load i32, ptr %i.f, align 4, !tbaa !24
  %i.j = load <2 x i32>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.k = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %i.l = insertelement <2 x i32> %i.k, i32 %i.h, i64 1
  %i.m = add <2 x i32> %i.l, %i.j
  %i.n = srem <2 x i32> %i.m, %i.j                ; 2 uses
  %i.o = extractelement <2 x i32> %i.n, i64 1
  %i.p = mul i32 %i.o, %i.i
  %i.q = extractelement <2 x i32> %i.n, i64 0
  %reass.add = add i32 %i.p, %i.q
  %reass.mul = mul i32 %reass.add, %i.b
  %i.r = add i32 %reass.mul, %i.e
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @calculate_neighboring_subdomain_rank(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  %i.e = mul nsw i32 %i.d, %7
  %i.f = add i32 %4, %1
  %i.g = add i32 %i.f, %i.e                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1572
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26
  %.not75 = icmp slt i32 %i.g, %i.j
  br i1 %.not75, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1588
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  %.not76 = icmp eq i32 %i.l, 0
  br i1 %.not76, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1564
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  %i.o = mul nsw i32 %i.n, %8
  %i.p = add i32 %5, %2
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28
  %.not77 = icmp slt i32 %i.q, %i.t
  br i1 %.not77, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.v = load i32, ptr %i.u, align 8, !tbaa !29
  %.not78 = icmp eq i32 %i.v, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !30 ; 2 uses
  br i1 %.not78, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre85 = add nsw i32 %6, %3
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = mul nsw i32 %.pre, %9
  %i.x = add i32 %6, %3                           ; 2 uses
  %i.y = add i32 %i.x, %i.w                       ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1580
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31
  %.not79 = icmp slt i32 %i.y, %i.ab
  br i1 %.not79, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %.pre-phi = phi i32 [ %.pre85, %._crit_edge ], [ %i.x, %bb.i ] ; 2 uses
  %i.ac = add nsw i32 %4, %1                      ; 2 uses
  %.lobit = ashr i32 %i.ac, 31
  %spec.select = add nsw i32 %7, %.lobit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !23
  %.not80 = icmp sge i32 %i.ac, %i.ae
  %i.af = zext i1 %.not80 to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1548
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32 ; 3 uses
  %.171 = add i32 %spec.select, %i.ah
  %i.ai = add i32 %.171, %i.af
  %i.aj = srem i32 %i.ai, %i.ah
  %i.ak = add nsw i32 %5, %2                      ; 2 uses
  %.lobit83 = ashr i32 %i.ak, 31
  %.068 = add nsw i32 %8, %.lobit83
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1564
  %i.am = load i32, ptr %i.al, align 4, !tbaa !24
  %.not81 = icmp sge i32 %i.ak, %i.am
  %i.an = zext i1 %.not81 to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !33 ; 3 uses
  %.169 = add i32 %.068, %i.ap
  %i.aq = add i32 %.169, %i.an
  %i.ar = srem i32 %i.aq, %i.ap
  %.lobit84 = ashr i32 %.pre-phi, 31
  %.067 = add nsw i32 %9, %.lobit84
  %.not82 = icmp sge i32 %.pre-phi, %.pre
  %i.as = zext i1 %.not82 to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.au = load i32, ptr %i.at, align 4, !tbaa !34 ; 2 uses
  %.1 = add i32 %.067, %i.au
  %i.av = add i32 %.1, %i.as
  %i.aw = srem i32 %i.av, %i.au
  %i.ax = mul i32 %i.aw, %i.ap
  %reass.add = add i32 %i.ax, %i.ar
  %reass.mul = mul i32 %reass.add, %i.ah
  %i.ay = add i32 %reass.mul, %i.aj
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b, %bb.j
  %.0 = phi i32 [ %i.ay, %bb.j ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @create_domain(ptr nofree noundef initializes((1596, 1600)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nofree noundef readonly captures(none) %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [27 x i32], align 16              ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1596 ; 5 uses
  store i32 %10, ptr %i.b, align 4, !tbaa !35
  %i.c = icmp eq i32 %10, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !37
  %i.f = tail call i32 @fflush(ptr noundef %i.e)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = add nsw i32 %14, -1                      ; 2 uses
  %i.h = ashr i32 %1, %i.g                        ; 2 uses
  %i.i = icmp sgt i32 %13, %i.h
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.b, align 4, !tbaa !35
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %13, i32 noundef %i.h) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @exit(i32 noundef 0) #15
  unreachable

bb.g:                                             ; preds = %bb.c
  %.not = icmp eq i32 %1, %2
  %.not517 = icmp eq i32 %2, %3
  %or.cond = and i1 %.not, %.not517
  br i1 %or.cond, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr %i.b, align 4, !tbaa !35
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %puts527 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @exit(i32 noundef 0) #15
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.o = mul nsw i32 %8, %7                       ; 4 uses
  %i.p = sdiv i32 %10, %i.o                       ; 23 uses
  %i.q = mul nsw i32 %i.p, %i.o                   ; 0 uses
  %.recomposed = srem i32 %10, %i.o               ; 2 uses
  %i.r = sdiv i32 %.recomposed, %7                ; 19 uses
  %i.s = mul nsw i32 %i.r, %7                     ; 0 uses
  %.recomposed985 = srem i32 %.recomposed, %7     ; 35 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1548 ; 11 uses
  store i32 %7, ptr %i.t, align 4, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 11 uses
  store i32 %8, ptr %i.u, align 4, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1556 ; 11 uses
  store i32 %9, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 5 uses
  store i32 %4, ptr %i.w, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1564 ; 5 uses
  store i32 %5, ptr %i.x, align 4, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 3 uses
  store i32 %6, ptr %i.y, align 8, !tbaa !30
  %i.z = mul nsw i32 %7, %4                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1572 ; 12 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !26
  %i.ab = mul nsw i32 %8, %5                      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 12 uses
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !28
  %i.ad = mul nsw i32 %9, %6                      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1580 ; 12 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !31
  %i.af = mul nsw i32 %5, %4
  %i.ag = mul nsw i32 %i.af, %6                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 13 uses
  %i.aj = sext i32 %i.ag to i64
  %i.ak = shl nsw i64 %i.aj, 8
  %i.al = tail call i32 @posix_memalign(ptr noundef nonnull %i.ai, i64 noundef 64, i64 noundef %i.ak) #14 ; 0 uses
  %i.am = load i32, ptr %i.ah, align 8, !tbaa !38
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 8                    ; 3 uses
  %i.ap = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.aq = mul nsw i32 %i.ap, %1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1536
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !68
  %i.as = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.at = mul nsw i32 %i.as, %1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1540
  store i32 %i.at, ptr %i.au, align 4, !tbaa !69
  %i.av = load i32, ptr %i.ae, align 4, !tbaa !31
  %i.aw = mul nsw i32 %i.av, %1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !70
  %i.ay = load i32, ptr %11, align 4, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 9 uses
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1588 ; 14 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 17 uses
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 6 uses
  store i32 %14, ptr %i.bg, align 4, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store i32 %12, ptr %i.bh, align 8, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1612
  store i32 %13, ptr %i.bi, align 4, !tbaa !72
  %i.bj = icmp sgt i32 %14, 0                     ; 2 uses
  br i1 %i.bj, label %.lr.ph, label %.preheader574

.lr.ph:                                           ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %wide.trip.count = zext nneg i32 %14 to i64     ; 3 uses
  %min.iters.check = icmp eq i32 %14, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index
  store <2 x double> splat (double -1.000000e+00), ptr %i.bm, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index
  store <2 x double> splat (double -1.000000e+00), ptr %i.bn, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader574, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader574:                                    ; preds = %scalar.ph, %middle.block, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 5 uses
  %i.bq = sext i32 %i.r to i64
  %i.br = sext i32 %8 to i64
  %i.bs = sext i32 %i.p to i64
  %i.bt = sext i32 %9 to i64
  %i.bu = add nsw i32 %.recomposed985, -1
  %i.bv = add nsw i32 %i.bu, %7
  %i.bw = icmp sgt i32 %.recomposed985, 0
  %.not522 = icmp sle i32 %.recomposed985, %7
  %.not960 = and i1 %i.bw, %.not522
  %i.bx = icmp sgt i32 %.recomposed985, -1
  %.not522.1 = icmp slt i32 %.recomposed985, %7
  %.not962 = and i1 %i.bx, %.not522.1
  %i.by = add nsw i32 %.recomposed985, 1          ; 2 uses
  %i.bz = insertelement <2 x i32> poison, i32 %.recomposed985, i64 0
  %i.ca = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cb = add nsw <2 x i32> %i.ca, <i32 0, i32 1>
  %i.cc = insertelement <2 x i32> poison, i32 %7, i64 0
  %i.cd = shufflevector <2 x i32> %i.cc, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ce = add nsw <2 x i32> %i.cb, %i.cd
  %i.cf = icmp sgt i32 %.recomposed985, -2
  %.not522.2 = icmp slt i32 %i.by, %7
  %.not964 = and i1 %i.cf, %.not522.2
  %i.cg = add nsw i32 %.recomposed985, -1
  %i.ch = add nsw i32 %i.cg, %7
  %i.ci = icmp sgt i32 %.recomposed985, 0
  %.not522.us = icmp sle i32 %.recomposed985, %7
  %.not966 = and i1 %i.ci, %.not522.us
  %i.cj = icmp sgt i32 %.recomposed985, -1
  %.not522.us.1 = icmp slt i32 %.recomposed985, %7
  %.not968 = and i1 %i.cj, %.not522.us.1
  %i.ck = add nsw <2 x i32> %i.ca, <i32 0, i32 1>
  %i.cl = add nsw <2 x i32> %i.ck, %i.cd
  %i.cm = icmp sgt i32 %.recomposed985, -2
  %.not522.us.2 = icmp slt i32 %i.by, %7
  %.not970 = and i1 %i.cm, %.not522.us.2
  br label %.preheader573

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  store double -1.000000e+00, ptr %i.cn, align 8, !tbaa !41
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  store double -1.000000e+00, ptr %i.co, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader574, label %scalar.ph, !llvm.loop !54

.preheader573:                                    ; preds = %.preheader574, %bb.ck
  %indvars.iv691 = phi i64 [ -1, %.preheader574 ], [ %indvars.iv.next692, %bb.ck ] ; 3 uses
  %i.cp = mul nsw i64 %indvars.iv691, 9
  %i.cq = add nsw i64 %i.cp, 13
  %i.cr = add nsw i64 %indvars.iv691, %i.bs       ; 3 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = add i32 %9, %i.cs
  %i.cu = srem i32 %i.ct, %9
  %i.cv = mul nsw i32 %i.cu, %i.o
  %i.cw = icmp sgt i64 %i.cr, -1
  %.not526 = icmp slt i64 %i.cr, %i.bt
  %.not670 = and i1 %i.cw, %.not526               ; 6 uses
  br label %.preheader572

.preheader571:                                    ; preds = %bb.ck
  %i.cx = icmp sgt i32 %6, 0                      ; 2 uses
  br i1 %i.cx, label %.preheader570.lr.ph, label %._crit_edge

.preheader570.lr.ph:                              ; preds = %.preheader571
  %i.cy = icmp sgt i32 %5, 0
  %i.cz = mul nsw i32 %.recomposed985, %4
  %i.da = mul nsw i32 %i.r, %5
  %i.db = mul nsw i32 %i.p, %6
  %i.dc = sext i32 %14 to i64
  %i.dd = mul nsw i64 %i.dc, 216                  ; 4 uses
  %i.de = zext nneg i32 %i.g to i64               ; 2 uses
  %i.df = icmp sgt i32 %4, 0
  %or.cond932 = and i1 %i.cy, %i.df
  br i1 %or.cond932, label %.preheader570.us.us.preheader, label %._crit_edge

.preheader570.us.us.preheader:                    ; preds = %.preheader570.lr.ph
  %wide.trip.count.i = zext i32 %14 to i64
  %wide.trip.count767 = zext nneg i32 %6 to i64
  %.pre.pre.pre = load ptr, ptr %i.ai, align 8, !tbaa !42
  %wide.trip.count762 = zext nneg i32 %5 to i64
  %wide.trip.count757 = zext nneg i32 %4 to i64
  %.not884 = icmp eq i32 %14, 1
  %i.dg = add nsw i64 %wide.trip.count.i, -2
  %i.dh = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.di = insertelement <4 x i32> %i.dh, i32 %14, i64 1
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %.preheader570.us.us

.preheader570.us.us:                              ; preds = %.preheader570.us.us.preheader, %._crit_edge593.split.us.us.us
  %.pre.pre = phi ptr [ %.pre.pre.pre, %.preheader570.us.us.preheader ], [ %i.fn, %._crit_edge593.split.us.us.us ]
  %indvars.iv764 = phi i64 [ 0, %.preheader570.us.us.preheader ], [ %indvars.iv.next765, %._crit_edge593.split.us.us.us ] ; 4 uses
  %.0488597.us.us = phi i64 [ %i.ao, %.preheader570.us.us.preheader ], [ %i.aaf, %._crit_edge593.split.us.us.us ]
  %i.dk = trunc nuw nsw i64 %indvars.iv764 to i32 ; 3 uses
  %i.dl = mul i32 %5, %i.dk
  %i.dm = trunc i64 %indvars.iv764 to i32
  %i.dn = add i32 %i.db, %i.dm
  %i.do = mul i32 %i.dn, %1                       ; 3 uses
  br label %.preheader569.us.us.us

.preheader569.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader570.us.us
  %.pre = phi ptr [ %i.fn, %._crit_edge.us.us.us ], [ %.pre.pre, %.preheader570.us.us ]
  %indvars.iv759 = phi i64 [ %i.dw, %._crit_edge.us.us.us ], [ 0, %.preheader570.us.us ] ; 10 uses
  %.1489592.us.us.us = phi i64 [ %i.aaf, %._crit_edge.us.us.us ], [ %.0488597.us.us, %.preheader570.us.us ]
  %indvars761 = trunc i64 %indvars.iv759 to i32   ; 8 uses
  %reass.add563.us.us.us = add i32 %i.dl, %indvars761
  %reass.mul564.us.us.us = mul i32 %reass.add563.us.us.us, %4
  %i.dp = trunc i64 %indvars.iv759 to i32
  %i.dq = add i32 %i.da, %i.dp
  %i.dr = mul i32 %i.dq, %1                       ; 3 uses
  %i.ds = add nsw i32 %indvars761, -1             ; 3 uses
  %i.dt = trunc i64 %indvars.iv759 to i32
  %i.du = add i32 %i.dt, -1
  %.lobit83.i.us.us.us = ashr i32 %i.du, 31
  %.068.i.us.us.us = add nsw i32 %.lobit83.i.us.us.us, %i.r ; 3 uses
  %.lobit83.i.us.us.us.1 = ashr i32 %indvars761, 31
  %.068.i.us.us.us.1 = add nsw i32 %.lobit83.i.us.us.us.1, %i.r ; 3 uses
  %i.dv = add nuw nsw i32 %indvars761, 1          ; 3 uses
  %i.dw = add nuw nsw i64 %indvars.iv759, 1       ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.cj, %.preheader569.us.us.us
  %i.dx = phi ptr [ %i.fn, %bb.cj ], [ %.pre, %.preheader569.us.us.us ]
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %bb.cj ], [ 0, %.preheader569.us.us.us ] ; 15 uses
  %.2490589.us.us.us = phi i64 [ %i.aaf, %bb.cj ], [ %.1489592.us.us.us, %.preheader569.us.us.us ]
  %indvars756 = trunc i64 %indvars.iv754 to i32   ; 14 uses
  %i.dy = add i32 %reass.mul564.us.us.us, %indvars756
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [256 x i8], ptr %i.dx, i64 %i.dz ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  store i32 %13, ptr %i.eb, align 4, !tbaa !13
  %i.ec = trunc i64 %indvars.iv754 to i32
  %i.ed = add i32 %i.cz, %i.ec
  %i.ee = mul i32 %i.ed, %1                       ; 3 uses
  store i32 %i.ee, ptr %i.ea, align 8, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i32 %i.dr, ptr %i.ef, align 4, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 %i.do, ptr %i.eg, align 8, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store <4 x i32> %i.dj, ptr %i.eh, align 4, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 248 ; 3 uses
  %i.ej = tail call i32 @posix_memalign(ptr noundef nonnull %i.ei, i64 noundef 64, i64 noundef %i.dd) #14 ; 0 uses
  br i1 %i.bj, label %.lr.ph.i.us.us.us.preheader, label %create_subdomain.exit.us.us.us

.lr.ph.i.us.us.us.preheader:                      ; preds = %bb.l
  br i1 %.not884, label %create_subdomain.exit.us.us.us.loopexit.peel.begin, label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %.lr.ph.i.us.us.us.preheader, %bb.n
  %indvars.iv.i.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us, %bb.n ], [ 0, %.lr.ph.i.us.us.us.preheader ] ; 5 uses
  %.04448.i.us.us.us = phi i64 [ %i.ew, %bb.n ], [ %i.dd, %.lr.ph.i.us.us.us.preheader ]
  %i.ek = icmp eq i64 %indvars.iv.i.us.us.us, %i.de
  br i1 %i.ek, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.us.us.us
  %i.el = tail call i32 (...) @IterativeSolver_NumGrids() #14
  %i.em = add nsw i32 %i.el, %12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.us.us.us
  %.0.i.us.us.us = phi i32 [ %i.em, %bb.m ], [ %12, %.lr.ph.i.us.us.us ]
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !17
  %i.eo = getelementptr inbounds nuw [216 x i8], ptr %i.en, i64 %indvars.iv.i.us.us.us
  %i.ep = trunc nuw nsw i64 %indvars.iv.i.us.us.us to i32 ; 4 uses
  %i.eq = ashr i32 %i.ee, %i.ep
  %i.er = ashr i32 %i.dr, %i.ep
  %i.es = ashr i32 %i.do, %i.ep
  %i.et = ashr i32 %1, %i.ep                      ; 3 uses
  %i.eu = tail call i32 @create_box(ptr noundef %i.eo, i32 noundef %.0.i.us.us.us, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %i.es, i32 noundef %i.et, i32 noundef %i.et, i32 noundef %i.et, i32 noundef %13) #14
  %i.ev = zext i32 %i.eu to i64
  %i.ew = add i64 %.04448.i.us.us.us, %i.ev       ; 2 uses
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us = icmp eq i64 %indvars.iv.i.us.us.us, %i.dg
  br i1 %exitcond.not.i.us.us.us, label %create_subdomain.exit.us.us.us.loopexit.peel.begin, label %.lr.ph.i.us.us.us, !llvm.loop !55

create_subdomain.exit.us.us.us.loopexit.peel.begin: ; preds = %bb.n, %.lr.ph.i.us.us.us.preheader
  %i.ex = phi i64 [ 0, %.lr.ph.i.us.us.us.preheader ], [ %indvars.iv.next.i.us.us.us, %bb.n ] ; 3 uses
  %i.ey = phi i64 [ %i.dd, %.lr.ph.i.us.us.us.preheader ], [ %i.ew, %bb.n ]
  %i.ez = icmp eq i64 %i.ex, %i.de
  br i1 %i.ez, label %bb.o, label %create_subdomain.exit.us.us.us.loopexit.peel.next

bb.o:                                             ; preds = %create_subdomain.exit.us.us.us.loopexit.peel.begin
  %i.fa = tail call i32 (...) @IterativeSolver_NumGrids() #14
  %i.fb = add nsw i32 %i.fa, %12
  br label %create_subdomain.exit.us.us.us.loopexit.peel.next

create_subdomain.exit.us.us.us.loopexit.peel.next: ; preds = %bb.o, %create_subdomain.exit.us.us.us.loopexit.peel.begin
  %.0.i.us.us.us.peel = phi i32 [ %i.fb, %bb.o ], [ %12, %create_subdomain.exit.us.us.us.loopexit.peel.begin ]
  %i.fc = load ptr, ptr %i.ei, align 8, !tbaa !17
  %i.fd = getelementptr inbounds nuw [216 x i8], ptr %i.fc, i64 %i.ex
  %i.fe = trunc nuw nsw i64 %i.ex to i32          ; 4 uses
  %i.ff = ashr i32 %i.ee, %i.fe
  %i.fg = ashr i32 %i.dr, %i.fe
  %i.fh = ashr i32 %i.do, %i.fe
  %i.fi = ashr i32 %1, %i.fe                      ; 3 uses
  %i.fj = tail call i32 @create_box(ptr noundef %i.fd, i32 noundef %.0.i.us.us.us.peel, i32 noundef %i.ff, i32 noundef %i.fg, i32 noundef %i.fh, i32 noundef %i.fi, i32 noundef %i.fi, i32 noundef %i.fi, i32 noundef %13) #14
  %i.fk = zext i32 %i.fj to i64
  %i.fl = add i64 %i.ey, %i.fk
  br label %create_subdomain.exit.us.us.us

create_subdomain.exit.us.us.us:                   ; preds = %create_subdomain.exit.us.us.us.loopexit.peel.next, %bb.l
  %.044.lcssa.i.us.us.us = phi i64 [ %i.dd, %bb.l ], [ %i.fl, %create_subdomain.exit.us.us.us.loopexit.peel.next ]
  %i.fm = load i32, ptr %i.az, align 8, !tbaa !25
  %.not.i.us.us.us = icmp eq i32 %i.fm, 0         ; 9 uses
  %i.fn = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 4 uses
  %i.fo = getelementptr inbounds [256 x i8], ptr %i.fn, i64 %i.dz ; 16 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32 ; 15 uses
  %i.fq = load <2 x i32>, ptr %i.w, align 8, !tbaa !8 ; 3 uses
  %i.fr = shufflevector <2 x i32> %i.fq, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.fs = extractelement <2 x i32> %i.fq, i64 1   ; 107 uses
  %i.ft = extractelement <2 x i32> %i.fq, i64 0   ; 89 uses
  %invariant.op579.us.us.us = add i32 %i.ft, %indvars756 ; 5 uses
  %invariant.op582.us.us.us = add i32 %i.fs, %indvars761 ; 3 uses
  %i.fu = load i32, ptr %i.y, align 8, !tbaa !30  ; 20 uses
  %invariant.op585.us.us.us = add i32 %i.fu, %i.dk
  %.reass583.us.us.us = add i32 %invariant.op582.us.us.us, -1
  %i.fv = add nsw i32 %indvars756, -1
  %.reass580.us.us.us886 = add i32 %invariant.op579.us.us.us, -1
  %i.fw = mul nsw i32 %i.fu, %i.p
  %i.fx = trunc i64 %indvars.iv754 to i32
  %i.fy = add i32 %i.fx, -1
  %.lobit.i.us.us.us = ashr i32 %i.fy, 31
  %spec.select.i.us.us.us = add nsw i32 %.lobit.i.us.us.us, %.recomposed985
  %i.fz = sext i32 %i.fu to i64
  %.reass580.us.us.us = add i32 %invariant.op579.us.us.us, -1
  %i.ga = mul nsw i32 %i.fu, %i.p
  %.lobit.i.us.us.us.1 = ashr i32 %indvars756, 31
  %spec.select.i.us.us.us.1 = add nsw i32 %.lobit.i.us.us.us.1, %.recomposed985
  %i.gb = sext i32 %i.ft to i64
  %.not80.i.us.us.us.1 = icmp sge i64 %indvars.iv754, %i.gb
  %i.gc = zext i1 %.not80.i.us.us.us.1 to i32
  %invariant.op900 = add i32 %spec.select.i.us.us.us.1, %i.gc
  %i.gd = sext i32 %i.fs to i64
  %.not81.i.us.us.us.1 = icmp sgt i64 %indvars.iv759, %i.gd
  %i.ge = zext i1 %.not81.i.us.us.us.1 to i32
  %invariant.op902 = add i32 %.068.i.us.us.us, %i.ge
  %i.gf = sext i32 %i.fu to i64
  %i.gg = mul nsw i32 %i.ft, %.recomposed985
  %i.gh = add nuw nsw i32 %indvars756, 1
  %i.gi = add i32 %i.gh, %i.gg                    ; 2 uses
  %i.gj = icmp slt i32 %i.gi, 0
  %i.gk = mul nsw i32 %i.fs, %i.r
  %i.gl = add i32 %i.ds, %i.gk                    ; 2 uses
  %i.gm = icmp slt i32 %i.gl, 0
  %i.gn = mul nsw i32 %i.fu, %i.p
  %i.go = add nuw nsw i64 %indvars.iv754, 1
  %i.gp = sext i32 %i.ft to i64
  %.not80.i.us.us.us.2 = icmp sge i64 %i.go, %i.gp
  %i.gq = zext i1 %.not80.i.us.us.us.2 to i32
  %invariant.op904 = add i32 %.recomposed985, %i.gq
  %i.gr = sext i32 %i.fs to i64
  %.not81.i.us.us.us.2 = icmp sgt i64 %indvars.iv759, %i.gr
  %i.gs = zext i1 %.not81.i.us.us.us.2 to i32
  %invariant.op906 = add i32 %.068.i.us.us.us, %i.gs
  %i.gt = sext i32 %i.fu to i64
  %.reass580.us.us.us.2 = add i32 %invariant.op579.us.us.us, 1
  %i.gu = mul nsw i32 %i.ft, %.recomposed985
  %i.gv = add nsw i32 %indvars756, -1
  %i.gw = add i32 %i.gv, %i.gu                    ; 2 uses
  %i.gx = icmp slt i32 %i.gw, 0
  %i.gy = mul nsw i32 %i.fs, %i.r
  %i.gz = add i32 %i.gy, %indvars761              ; 2 uses
  %i.ha = icmp slt i32 %i.gz, 0
  %i.hb = mul nsw i32 %i.fu, %i.p
  %i.hc = trunc i64 %indvars.iv754 to i32
  %i.hd = add i32 %i.hc, -1
  %.lobit.i.us.us.us.1711 = ashr i32 %i.hd, 31
  %spec.select.i.us.us.us.1712 = add nsw i32 %.lobit.i.us.us.us.1711, %.recomposed985
  %i.he = sext i32 %i.ft to i64
  %.not80.i.us.us.us.1713 = icmp sgt i64 %indvars.iv754, %i.he
  %i.hf = zext i1 %.not80.i.us.us.us.1713 to i32
  %invariant.op908 = add i32 %spec.select.i.us.us.us.1712, %i.hf
  %i.hg = sext i32 %i.fs to i64
  %.not81.i.us.us.us.1715 = icmp sge i64 %indvars.iv759, %i.hg
  %i.hh = zext i1 %.not81.i.us.us.us.1715 to i32
  %invariant.op910 = add i32 %.068.i.us.us.us.1, %i.hh
  %i.hi = sext i32 %i.fu to i64
  %i.hj = mul nsw i32 %i.ft, %.recomposed985
  %i.hk = add i32 %i.hj, %indvars756              ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 0
  %i.hm = mul nsw i32 %i.fs, %i.r
  %i.hn = add i32 %i.hm, %indvars761              ; 2 uses
  %i.ho = icmp slt i32 %i.hn, 0
  %i.hp = mul nsw i32 %i.fu, %i.p
  %.lobit.i.us.us.us.1.1 = ashr i32 %indvars756, 31
  %spec.select.i.us.us.us.1.1 = add nsw i32 %.lobit.i.us.us.us.1.1, %.recomposed985
  %i.hq = sext i32 %i.ft to i64
  %.not80.i.us.us.us.1.1 = icmp sge i64 %indvars.iv754, %i.hq
  %i.hr = zext i1 %.not80.i.us.us.us.1.1 to i32
  %invariant.op912 = add i32 %spec.select.i.us.us.us.1.1, %i.hr
  %i.hs = sext i32 %i.fs to i64
  %.not81.i.us.us.us.1.1 = icmp sge i64 %indvars.iv759, %i.hs
  %i.ht = zext i1 %.not81.i.us.us.us.1.1 to i32
  %invariant.op914 = add i32 %.068.i.us.us.us.1, %i.ht
  %i.hu = sext i32 %i.fu to i64
  %i.hv = mul nsw i32 %i.ft, %.recomposed985
  %i.hw = add nuw nsw i32 %indvars756, 1
  %i.hx = add i32 %i.hw, %i.hv                    ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 0
  %i.hz = mul nsw i32 %i.fs, %i.r
  %i.ia = add i32 %i.hz, %indvars761              ; 2 uses
  %i.ib = icmp slt i32 %i.ia, 0
  %i.ic = mul nsw i32 %i.fu, %i.p
  %i.id = add nuw nsw i64 %indvars.iv754, 1
  %i.ie = sext i32 %i.ft to i64
  %.not80.i.us.us.us.2.1 = icmp sge i64 %i.id, %i.ie
  %i.if = zext i1 %.not80.i.us.us.us.2.1 to i32
  %invariant.op916 = add i32 %.recomposed985, %i.if
  %i.ig = sext i32 %i.fs to i64
  %.not81.i.us.us.us.2.1 = icmp sge i64 %indvars.iv759, %i.ig
  %i.ih = zext i1 %.not81.i.us.us.us.2.1 to i32
  %invariant.op918 = add i32 %.068.i.us.us.us.1, %i.ih
  %i.ii = sext i32 %i.fu to i64
  %.reass583.us.us.us.2 = add i32 %invariant.op582.us.us.us, 1
  %i.ij = insertelement <4 x i32> poison, i32 %.reass583.us.us.us, i64 0
  %i.ik = insertelement <4 x i32> %i.ij, i32 %.reass580.us.us.us.2, i64 1
  %i.il = insertelement <4 x i32> %i.ik, i32 %invariant.op582.us.us.us, i64 2
  %i.im = insertelement <4 x i32> %i.il, i32 %.reass583.us.us.us.2, i64 3
  %i.in = srem <4 x i32> %i.im, %i.fr             ; 4 uses
  %i.io = mul nsw i32 %i.ft, %.recomposed985
  %i.ip = add nsw i32 %indvars756, -1
  %i.iq = add i32 %i.ip, %i.io                    ; 2 uses
  %i.ir = icmp slt i32 %i.iq, 0
  %i.is = mul nsw i32 %i.fs, %i.r
  %i.it = add i32 %i.dv, %i.is                    ; 2 uses
  %i.iu = icmp slt i32 %i.it, 0
  %i.iv = mul nsw i32 %i.fu, %i.p
  %i.iw = trunc i64 %indvars.iv754 to i32
  %i.ix = add i32 %i.iw, -1
  %.lobit.i.us.us.us.2733 = ashr i32 %i.ix, 31
  %spec.select.i.us.us.us.2734 = add nsw i32 %.lobit.i.us.us.us.2733, %.recomposed985
  %i.iy = sext i32 %i.ft to i64
  %.not80.i.us.us.us.2735 = icmp sgt i64 %indvars.iv754, %i.iy
  %i.iz = zext i1 %.not80.i.us.us.us.2735 to i32
  %invariant.op920 = add i32 %spec.select.i.us.us.us.2734, %i.iz
  %i.ja = sext i32 %i.fs to i64
  %.not81.i.us.us.us.2737 = icmp sge i64 %i.dw, %i.ja
  %i.jb = zext i1 %.not81.i.us.us.us.2737 to i32
  %invariant.op922 = add i32 %i.r, %i.jb
  %i.jc = sext i32 %i.fu to i64
  %i.jd = mul nsw i32 %i.ft, %.recomposed985
  %i.je = add i32 %i.jd, %indvars756              ; 2 uses
  %i.jf = icmp slt i32 %i.je, 0
  %i.jg = mul nsw i32 %i.fs, %i.r
  %i.jh = add i32 %i.dv, %i.jg                    ; 2 uses
  %i.ji = icmp slt i32 %i.jh, 0
  %i.jj = mul nsw i32 %i.fu, %i.p
  %.lobit.i.us.us.us.1.2 = ashr i32 %indvars756, 31
  %spec.select.i.us.us.us.1.2 = add nsw i32 %.lobit.i.us.us.us.1.2, %.recomposed985
  %i.jk = sext i32 %i.ft to i64
  %.not80.i.us.us.us.1.2 = icmp sge i64 %indvars.iv754, %i.jk
  %i.jl = zext i1 %.not80.i.us.us.us.1.2 to i32
  %invariant.op924 = add i32 %spec.select.i.us.us.us.1.2, %i.jl
  %i.jm = sext i32 %i.fs to i64
  %.not81.i.us.us.us.1.2 = icmp sge i64 %i.dw, %i.jm
  %i.jn = zext i1 %.not81.i.us.us.us.1.2 to i32
  %invariant.op926 = add i32 %i.r, %i.jn
  %i.jo = sext i32 %i.fu to i64
  %i.jp = mul nsw i32 %i.ft, %.recomposed985
  %i.jq = add nuw nsw i32 %indvars756, 1
  %i.jr = add i32 %i.jq, %i.jp                    ; 2 uses
  %i.js = icmp slt i32 %i.jr, 0
  %i.jt = mul nsw i32 %i.fs, %i.r
  %i.ju = add i32 %i.dv, %i.jt                    ; 2 uses
  %i.jv = icmp slt i32 %i.ju, 0
  %i.jw = mul nsw i32 %i.fu, %i.p
  %i.jx = add nuw nsw i64 %indvars.iv754, 1
  %i.jy = sext i32 %i.ft to i64
  %.not80.i.us.us.us.2.2 = icmp sge i64 %i.jx, %i.jy
  %i.jz = zext i1 %.not80.i.us.us.us.2.2 to i32
  %invariant.op928 = add i32 %.recomposed985, %i.jz
  %i.ka = sext i32 %i.fs to i64
  %.not81.i.us.us.us.2.2 = icmp sge i64 %i.dw, %i.ka
  %i.kb = zext i1 %.not81.i.us.us.us.2.2 to i32
  %invariant.op930 = add i32 %i.r, %i.kb
  %i.kc = sext i32 %i.fu to i64
  %i.kd = extractelement <4 x i32> %i.in, i64 0
  %i.ke = extractelement <4 x i32> %i.in, i64 1   ; 3 uses
  %i.kf = extractelement <4 x i32> %i.in, i64 2
  %i.kg = extractelement <4 x i32> %i.in, i64 3
  br label %.preheader568.us.us.us

.preheader568.us.us.us:                           ; preds = %calculate_neighboring_subdomain_rank.exit.us.us.us.2.2, %create_subdomain.exit.us.us.us
  %i.kh = phi i32 [ %i.zt, %calculate_neighboring_subdomain_rank.exit.us.us.us.2.2 ], [ %i.fs, %create_subdomain.exit.us.us.us ] ; 12 uses
  %i.ki = phi i32 [ %i.zu, %calculate_neighboring_subdomain_rank.exit.us.us.us.2.2 ], [ %i.ft, %create_subdomain.exit.us.us.us ] ; 7 uses
  %i.kj = phi i32 [ %i.zv, %calculate_neighboring_subdomain_rank.exit.us.us.us.2.2 ], [ %i.fs, %create_subdomain.exit.us.us.us ] ; 4 uses
  %i.kk = phi i32 [ %i.zw, %calculate_neighboring_subdomain_rank.exit.us.us.us.2.2 ], [ %i.ft, %create_subdomain.exit.us.us.us ] ; 3 uses
  %i.kl = phi i32 [ %i.zx, %calculate_neighboring_subdomain_rank.exit.us.us.us.2.2 ], [ %i.fs, %create_subdomain.exit.us.us.us ] ; 6 uses
  %i.km = phi i32 [ %i.zy, %calculate_neighboring_subdomain_rank.exit.us.us.us.2.2 ], [ %i.ft, %create_subdomain.exit.us.us.us ] ; 5 uses
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %calculate_neighboring_subdomain_rank.exit.us.us.us.2.2 ], [ -1, %create_subdomain.exit.us.us.us ] ; 4 uses
  %indvars752 = trunc nsw i64 %indvars.iv749 to i32 ; 2 uses
  %i.kn = mul nsw i64 %indvars.iv749, 9           ; 12 uses
  %i.ko = add nsw i64 %i.kn, 13                   ; 4 uses
  %.reass586.us.us.us = add i32 %invariant.op585.us.us.us, %indvars752
  %i.kp = srem i32 %.reass586.us.us.us, %i.fu
  %i.kq = mul i32 %i.kp, %i.fs                    ; 3 uses
  %i.kr = add nsw i64 %indvars.iv749, %indvars.iv764 ; 18 uses
  %i.ks = add nsw i32 %indvars752, %i.dk          ; 9 uses
  %i.kt = add nsw i64 %i.kn, 10                   ; 4 uses
  %reass.add.i532.us.us.us = add i32 %i.kq, %i.kd
  %reass.mul.i533.us.us.us = mul i32 %reass.add.i532.us.us.us, %i.ft ; 5 uses
  %i.ku = add nsw i64 %i.kn, 9                    ; 4 uses
  br i1 %.not.i.us.us.us, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.preheader568.us.us.us
  %i.kv = mul nsw i32 %i.km, %.recomposed985
  %i.kw = add i32 %i.fv, %i.kv                    ; 2 uses
  %i.kx = icmp slt i32 %i.kw, 0
  br i1 %i.kx, label %calculate_neighboring_subdomain_rank.exit.us.us.us.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ky = load i32, ptr %i.aa, align 4, !tbaa !26
  %.not75.i.us.us.us = icmp slt i32 %i.kw, %i.ky
  br i1 %.not75.i.us.us.us, label %bb.r, label %calculate_neighboring_subdomain_rank.exit.us.us.us.thread

bb.r:                                             ; preds = %bb.q, %.preheader568.us.us.us
  %i.kz = load i32, ptr %i.bc, align 4, !tbaa !27
  %.not76.i.us.us.us = icmp eq i32 %i.kz, 0
  br i1 %.not76.i.us.us.us, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.la = mul nsw i32 %i.kl, %i.r
  %i.lb = add i32 %i.ds, %i.la                    ; 2 uses
  %i.lc = icmp slt i32 %i.lb, 0
  br i1 %i.lc, label %calculate_neighboring_subdomain_rank.exit.us.us.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ld = load i32, ptr %i.ac, align 8, !tbaa !28
  %.not77.i.us.us.us = icmp slt i32 %i.lb, %i.ld
  br i1 %.not77.i.us.us.us, label %bb.u, label %calculate_neighboring_subdomain_rank.exit.us.us.us

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.le = load i32, ptr %i.bf, align 8, !tbaa !29
  %.not78.i.us.us.us = icmp eq i32 %i.le, 0
  br i1 %.not78.i.us.us.us, label %._crit_edge.i.us.us.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lf = add i32 %i.fw, %i.ks                    ; 2 uses
  %i.lg = icmp slt i32 %i.lf, 0
  br i1 %i.lg, label %calculate_neighboring_subdomain_rank.exit.us.us.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lh = load i32, ptr %i.ae, align 4, !tbaa !31
  %.not79.i.us.us.us = icmp slt i32 %i.lf, %i.lh
  br i1 %.not79.i.us.us.us, label %._crit_edge.i.us.us.us, label %calculate_neighboring_subdomain_rank.exit.us.us.us

._crit_edge.i.us.us.us:                           ; preds = %bb.u, %bb.w
  %i.li = sext i32 %i.kk to i64
  %.not80.i.us.us.us = icmp sgt i64 %indvars.iv754, %i.li
  %i.lj = zext i1 %.not80.i.us.us.us to i32
  %i.lk = load i32, ptr %i.t, align 4, !tbaa !32  ; 3 uses
  %.171.i.us.us.us = add i32 %spec.select.i.us.us.us, %i.lk
  %i.ll = add i32 %.171.i.us.us.us, %i.lj
  %i.lm = srem i32 %i.ll, %i.lk
  %i.ln = sext i32 %i.kj to i64
  %.not81.i.us.us.us = icmp sgt i64 %indvars.iv759, %i.ln
  %i.lo = zext i1 %.not81.i.us.us.us to i32
  %i.lp = load i32, ptr %i.u, align 8, !tbaa !33  ; 3 uses
  %.169.i.us.us.us = add i32 %.068.i.us.us.us, %i.lp
  %i.lq = add i32 %.169.i.us.us.us, %i.lo
  %i.lr = srem i32 %i.lq, %i.lp
  %i.ls = trunc nsw i64 %i.kr to i32
  %.lobit84.i.us.us.us = ashr i32 %i.ls, 31
  %.067.i.us.us.us = add nsw i32 %.lobit84.i.us.us.us, %i.p
  %.not82.i.us.us.us = icmp sge i64 %i.kr, %i.fz
  %i.lt = zext i1 %.not82.i.us.us.us to i32
  %i.lu = load i32, ptr %i.v, align 4, !tbaa !34  ; 2 uses
  %.1.i.us.us.us = add i32 %.067.i.us.us.us, %i.lt
  %i.lv = add i32 %.1.i.us.us.us, %i.lu
  %i.lw = srem i32 %i.lv, %i.lu
  %i.lx = mul i32 %i.lw, %i.lp
  %reass.add.i.us.us.us = add i32 %i.lx, %i.lr
  %reass.mul.i.us.us.us = mul i32 %reass.add.i.us.us.us, %i.lk
  %i.ly = add i32 %reass.mul.i.us.us.us, %i.lm
  br label %calculate_neighboring_subdomain_rank.exit.us.us.us

calculate_neighboring_subdomain_rank.exit.us.us.us.thread: ; preds = %bb.q, %bb.p
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.ku
  store i32 -1, ptr %i.lz, align 8, !tbaa !76
  %i.ma = srem i32 %.reass580.us.us.us886, %i.ft  ; 2 uses
  %i.mb = add i32 %reass.mul.i533.us.us.us, %i.ma
  %i.mc = getelementptr [8 x i8], ptr %i.fo, i64 %i.ku
  %i.md = getelementptr i8, ptr %i.mc, i64 36
  store i32 %i.mb, ptr %i.md, align 4, !tbaa !77
  br label %bb.x

calculate_neighboring_subdomain_rank.exit.us.us.us: ; preds = %._crit_edge.i.us.us.us, %bb.w, %bb.v, %bb.t, %bb.s
  %i.me = phi i32 [ %i.kj, %._crit_edge.i.us.us.us ], [ %i.kl, %bb.v ], [ %i.kl, %bb.w ], [ %i.kl, %bb.s ], [ %i.kl, %bb.t ] ; 2 uses
  %i.mf = phi i32 [ %i.kk, %._crit_edge.i.us.us.us ], [ %i.km, %bb.v ], [ %i.km, %bb.w ], [ %i.km, %bb.s ], [ %i.km, %bb.t ]
  %.0.i531.us.us.us = phi i32 [ %i.ly, %._crit_edge.i.us.us.us ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.s ], [ -1, %bb.t ]
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.ku
  store i32 %.0.i531.us.us.us, ptr %i.mg, align 8, !tbaa !76
  %i.mh = srem i32 %.reass580.us.us.us, %i.ft     ; 3 uses
  %i.mi = add i32 %reass.mul.i533.us.us.us, %i.mh
  %i.mj = getelementptr [8 x i8], ptr %i.fo, i64 %i.ku
  %i.mk = getelementptr i8, ptr %i.mj, i64 36
  store i32 %i.mi, ptr %i.mk, align 4, !tbaa !77
  br i1 %.not.i.us.us.us, label %bb.z, label %bb.x

bb.x:                                             ; preds = %calculate_neighboring_subdomain_rank.exit.us.us.us.thread, %calculate_neighboring_subdomain_rank.exit.us.us.us
  %i.ml = phi i32 [ %i.ma, %calculate_neighboring_subdomain_rank.exit.us.us.us.thread ], [ %i.mh, %calculate_neighboring_subdomain_rank.exit.us.us.us ] ; 2 uses
  %i.mm = phi i32 [ %i.kl, %calculate_neighboring_subdomain_rank.exit.us.us.us.thread ], [ %i.me, %calculate_neighboring_subdomain_rank.exit.us.us.us ] ; 2 uses
  %i.mn = mul nsw i32 %i.ki, %.recomposed985
  %i.mo = add i32 %i.mn, %indvars756              ; 2 uses
  %i.mp = icmp slt i32 %i.mo, 0
  br i1 %i.mp, label %calculate_neighboring_subdomain_rank.exit.us.us.us.1.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.mq = load i32, ptr %i.aa, align 4, !tbaa !26
  %.not75.i.us.us.us.1 = icmp slt i32 %i.mo, %i.mq
  br i1 %.not75.i.us.us.us.1, label %bb.z, label %calculate_neighboring_subdomain_rank.exit.us.us.us.1.thread

bb.z:                                             ; preds = %bb.y, %calculate_neighboring_subdomain_rank.exit.us.us.us
  %i.mr = phi i32 [ %i.ml, %bb.y ], [ %i.mh, %calculate_neighboring_subdomain_rank.exit.us.us.us ] ; 2 uses
  %i.ms = phi i32 [ %i.mm, %bb.y ], [ %i.me, %calculate_neighboring_subdomain_rank.exit.us.us.us ]
  %i.mt = phi i32 [ %i.ki, %bb.y ], [ %i.kk, %calculate_neighboring_subdomain_rank.exit.us.us.us ] ; 4 uses
  %i.mu = phi i32 [ %i.ki, %bb.y ], [ %i.mf, %calculate_neighboring_subdomain_rank.exit.us.us.us ] ; 4 uses
  %i.mv = load i32, ptr %i.bc, align 4, !tbaa !27
  %.not76.i.us.us.us.1 = icmp eq i32 %i.mv, 0
  br i1 %.not76.i.us.us.us.1, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mw = mul nsw i32 %i.kh, %i.r
  %i.mx = add i32 %i.ds, %i.mw                    ; 2 uses
  %i.my = icmp slt i32 %i.mx, 0
  br i1 %i.my, label %calculate_neighboring_subdomain_rank.exit.us.us.us.1, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mz = load i32, ptr %i.ac, align 8, !tbaa !28
  %.not77.i.us.us.us.1 = icmp slt i32 %i.mx, %i.mz
  br i1 %.not77.i.us.us.us.1, label %bb.ac, label %calculate_neighboring_subdomain_rank.exit.us.us.us.1

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.na = phi i32 [ %i.kh, %bb.ab ], [ %i.kj, %bb.z ] ; 2 uses
  %i.nb = phi i32 [ %i.kh, %bb.ab ], [ %i.ms, %bb.z ] ; 2 uses
  %i.nc = load i32, ptr %i.bf, align 8, !tbaa !29
  %.not78.i.us.us.us.1 = icmp eq i32 %i.nc, 0
  br i1 %.not78.i.us.us.us.1, label %._crit_edge.i.us.us.us.1, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nd = add i32 %i.ga, %i.ks                    ; 2 uses
  %i.ne = icmp slt i32 %i.nd, 0
  br i1 %i.ne, label %calculate_neighboring_subdomain_rank.exit.us.us.us.1, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nf = load i32, ptr %i.ae, align 4, !tbaa !31
  %.not79.i.us.us.us.1 = icmp slt i32 %i.nd, %i.nf
  br i1 %.not79.i.us.us.us.1, label %._crit_edge.i.us.us.us.1, label %calculate_neighboring_subdomain_rank.exit.us.us.us.1

._crit_edge.i.us.us.us.1:                         ; preds = %bb.ae, %bb.ac
  %i.ng = load i32, ptr %i.t, align 4, !tbaa !32  ; 3 uses
  %.reass901 = add i32 %i.ng, %invariant.op900
  %i.nh = srem i32 %.reass901, %i.ng
  %i.ni = load i32, ptr %i.u, align 8, !tbaa !33  ; 3 uses
  %.reass903 = add i32 %i.ni, %invariant.op902
  %i.nj = srem i32 %.reass903, %i.ni
  %i.nk = trunc nsw i64 %i.kr to i32
  %.lobit84.i.us.us.us.1 = ashr i32 %i.nk, 31
  %.067.i.us.us.us.1 = add nsw i32 %.lobit84.i.us.us.us.1, %i.p
  %.not82.i.us.us.us.1 = icmp sge i64 %i.kr, %i.gf
  %i.nl = zext i1 %.not82.i.us.us.us.1 to i32
  %i.nm = load i32, ptr %i.v, align 4, !tbaa !34  ; 2 uses
  %.1.i.us.us.us.1 = add i32 %.067.i.us.us.us.1, %i.nl
  %i.nn = add i32 %.1.i.us.us.us.1, %i.nm
  %i.no = srem i32 %i.nn, %i.nm
  %i.np = mul i32 %i.no, %i.ni
  %reass.add.i.us.us.us.1 = add i32 %i.np, %i.nj
  %reass.mul.i.us.us.us.1 = mul i32 %reass.add.i.us.us.us.1, %i.ng
  %i.nq = add i32 %reass.mul.i.us.us.us.1, %i.nh
  br label %calculate_neighboring_subdomain_rank.exit.us.us.us.1

calculate_neighboring_subdomain_rank.exit.us.us.us.1.thread: ; preds = %bb.y, %bb.x
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.kt
  store i32 -1, ptr %i.nr, align 8, !tbaa !76
  %i.ns = srem i32 %invariant.op579.us.us.us, %i.ft ; 2 uses
end_hunk_0
