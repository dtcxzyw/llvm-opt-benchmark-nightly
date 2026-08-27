Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zCrcOpt?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @CrcUpdateT4(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %2, 0
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 3
  %i.d = icmp ne i64 %i.c, 0
  %i.e = and i1 %i.a, %i.d
  br i1 %i.e, label %.lr.ph, label %.preheader36

.preheader36:                                     ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %bb.a
  %.032.lcssa = phi i64 [ %2, %bb.a ], [ %10, %.lr.ph ], [ %23, %.lr.ph.1 ], [ %i.m, %.lr.ph.2 ], [ %36, %.lr.ph.3 ] ; 3 uses
  %.029.lcssa = phi i32 [ %0, %bb.a ], [ %9, %.lr.ph ], [ %22, %.lr.ph.1 ], [ %i.l, %.lr.ph.2 ], [ %35, %.lr.ph.3 ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %11, %.lr.ph ], [ %24, %.lr.ph.1 ], [ %i.n, %.lr.ph.2 ], [ %37, %.lr.ph.3 ] ; 2 uses
  %i.f = icmp ugt i64 %.032.lcssa, 3
  br i1 %i.f, label %.lr.ph45, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %4 = load i8, ptr %1, align 1, !tbaa !8
  %.029.tr = trunc i32 %0 to i8
  %.narrow35 = xor i8 %4, %.029.tr
  %5 = zext i8 %.narrow35 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %8 = lshr i32 %0, 8
  %9 = xor i32 %7, %8                             ; 3 uses
  %10 = add i64 %2, -1                            ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %12 = icmp ne i64 %10, 0
  %13 = ptrtoint ptr %11 to i64
  %14 = and i64 %13, 3
  %15 = icmp ne i64 %14, 0
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %.lr.ph.1, label %.preheader36

.lr.ph.1:                                         ; preds = %.lr.ph
  %17 = load i8, ptr %11, align 1, !tbaa !8
  %.029.tr.1 = trunc i32 %9 to i8
  %.narrow35.1 = xor i8 %17, %.029.tr.1
  %18 = zext i8 %.narrow35.1 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !4
  %21 = lshr i32 %9, 8
  %22 = xor i32 %20, %21                          ; 3 uses
  %23 = add i64 %2, -2                            ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %25 = icmp ne i64 %23, 0
  %26 = ptrtoint ptr %24 to i64
  %27 = and i64 %26, 3
  %28 = icmp ne i64 %27, 0
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %.lr.ph.2, label %.preheader36

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.g = load i8, ptr %24, align 1, !tbaa !8
  %.029.tr.2 = trunc i32 %22 to i8
  %.narrow35.2 = xor i8 %i.g, %.029.tr.2
  %i.h = zext i8 %.narrow35.2 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = lshr i32 %22, 8
  %i.l = xor i32 %i.j, %i.k                       ; 3 uses
  %i.m = add i64 %2, -3                           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.o = icmp ne i64 %i.m, 0
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = and i64 %i.p, 3
  %i.r = icmp ne i64 %i.q, 0
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph.3, label %.preheader36

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %30 = load i8, ptr %i.n, align 1, !tbaa !8
  %.029.tr.3 = trunc i32 %i.l to i8
  %.narrow35.3 = xor i8 %30, %.029.tr.3
  %31 = zext i8 %.narrow35.3 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !4
  %34 = lshr i32 %i.l, 8
  %35 = xor i32 %33, %34
  %36 = add i64 %2, -4
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %.preheader36

.preheader:                                       ; preds = %.lr.ph45, %.preheader36
  %.133.lcssa = phi i64 [ %.032.lcssa, %.preheader36 ], [ %i.at, %.lr.ph45 ] ; 3 uses
  %.130.lcssa = phi i32 [ %.029.lcssa, %.preheader36 ], [ %i.as, %.lr.ph45 ] ; 3 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader36 ], [ %i.au, %.lr.ph45 ] ; 3 uses
  %.not49 = icmp eq i64 %.133.lcssa, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph53

.lr.ph45:                                         ; preds = %.preheader36, %.lr.ph45
  %.144 = phi ptr [ %i.au, %.lr.ph45 ], [ %.0.lcssa, %.preheader36 ] ; 2 uses
  %.13043 = phi i32 [ %i.as, %.lr.ph45 ], [ %.029.lcssa, %.preheader36 ]
  %.13342 = phi i64 [ %i.at, %.lr.ph45 ], [ %.032.lcssa, %.preheader36 ]
  %i.t = load i32, ptr %.144, align 4, !tbaa !4
  %i.u = xor i32 %i.t, %.13043                    ; 4 uses
  %i.v = and i32 %i.u, 255
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3072
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = lshr i32 %i.u, 8
  %i.ab = and i32 %i.aa, 255
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2048
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = xor i32 %i.af, %i.z
  %i.ah = lshr i32 %i.u, 16
  %i.ai = and i32 %i.ah, 255
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1024
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = xor i32 %i.ag, %i.am
  %i.ao = lshr i32 %i.u, 24
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = xor i32 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %.13342, -4                     ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.144, i64 4 ; 2 uses
  %i.av = icmp ugt i64 %i.at, 3
  br i1 %i.av, label %.lr.ph45, label %.preheader, !llvm.loop !9

.lr.ph53:                                         ; preds = %.preheader
  %i.aw = load i8, ptr %.1.lcssa, align 1, !tbaa !8
  %.231.tr = trunc i32 %.130.lcssa to i8
  %.narrow = xor i8 %i.aw, %.231.tr
  %i.ax = zext i8 %.narrow to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = lshr i32 %.130.lcssa, 8
  %i.bb = xor i32 %i.az, %i.ba                    ; 3 uses
  %.not = icmp eq i64 %.133.lcssa, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph53.1

.lr.ph53.1:                                       ; preds = %.lr.ph53
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %.231.tr.1 = trunc i32 %i.bb to i8
  %.narrow.1 = xor i8 %i.bd, %.231.tr.1
  %i.be = zext i8 %.narrow.1 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = lshr i32 %i.bb, 8
  %i.bi = xor i32 %i.bg, %i.bh                    ; 3 uses
  %.not.1 = icmp eq i64 %.133.lcssa, 2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph53.2

.lr.ph53.2:                                       ; preds = %.lr.ph53.1
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %.231.tr.2 = trunc i32 %i.bi to i8
  %.narrow.2 = xor i8 %i.bk, %.231.tr.2
  %i.bl = zext i8 %.narrow.2 to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = lshr i32 %i.bi, 8
  %i.bp = xor i32 %i.bn, %i.bo
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph53, %.lr.ph53.1, %.lr.ph53.2, %.preheader
  %.231.lcssa = phi i32 [ %.130.lcssa, %.preheader ], [ %i.bb, %.lr.ph53 ], [ %i.bi, %.lr.ph53.1 ], [ %i.bp, %.lr.ph53.2 ]
  ret i32 %.231.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @CrcUpdateT8(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %2, 0
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 3
  %i.d = icmp ne i64 %i.c, 0
  %i.e = and i1 %i.a, %i.d
  br i1 %i.e, label %.lr.ph.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.a
  %.032.lcssa.i = phi i64 [ %2, %bb.a ], [ %10, %.lr.ph.i ], [ %23, %.lr.ph.i.1 ], [ %i.m, %.lr.ph.i.2 ], [ %36, %.lr.ph.i.3 ] ; 3 uses
  %.029.lcssa.i = phi i32 [ %0, %bb.a ], [ %9, %.lr.ph.i ], [ %22, %.lr.ph.i.1 ], [ %i.l, %.lr.ph.i.2 ], [ %35, %.lr.ph.i.3 ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %11, %.lr.ph.i ], [ %24, %.lr.ph.i.1 ], [ %i.n, %.lr.ph.i.2 ], [ %37, %.lr.ph.i.3 ] ; 2 uses
  %i.f = icmp ugt i64 %.032.lcssa.i, 3
  br i1 %i.f, label %.lr.ph45.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.a
  %4 = load i8, ptr %1, align 1, !tbaa !8
  %.029.tr.i = trunc i32 %0 to i8
  %.narrow35.i = xor i8 %4, %.029.tr.i
  %5 = zext i8 %.narrow35.i to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %8 = lshr i32 %0, 8
  %9 = xor i32 %7, %8                             ; 3 uses
  %10 = add i64 %2, -1                            ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %12 = icmp ne i64 %10, 0
  %13 = ptrtoint ptr %11 to i64
  %14 = and i64 %13, 3
  %15 = icmp ne i64 %14, 0
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %.lr.ph.i.1, label %.preheader36.i

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %17 = load i8, ptr %11, align 1, !tbaa !8
  %.029.tr.i.1 = trunc i32 %9 to i8
  %.narrow35.i.1 = xor i8 %17, %.029.tr.i.1
  %18 = zext i8 %.narrow35.i.1 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !4
  %21 = lshr i32 %9, 8
  %22 = xor i32 %20, %21                          ; 3 uses
  %23 = add i64 %2, -2                            ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %25 = icmp ne i64 %23, 0
  %26 = ptrtoint ptr %24 to i64
  %27 = and i64 %26, 3
  %28 = icmp ne i64 %27, 0
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %.lr.ph.i.2, label %.preheader36.i

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.g = load i8, ptr %24, align 1, !tbaa !8
  %.029.tr.i.2 = trunc i32 %22 to i8
  %.narrow35.i.2 = xor i8 %i.g, %.029.tr.i.2
  %i.h = zext i8 %.narrow35.i.2 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = lshr i32 %22, 8
  %i.l = xor i32 %i.j, %i.k                       ; 3 uses
  %i.m = add i64 %2, -3                           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.o = icmp ne i64 %i.m, 0
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = and i64 %i.p, 3
  %i.r = icmp ne i64 %i.q, 0
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph.i.3, label %.preheader36.i

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %30 = load i8, ptr %i.n, align 1, !tbaa !8
  %.029.tr.i.3 = trunc i32 %i.l to i8
  %.narrow35.i.3 = xor i8 %30, %.029.tr.i.3
  %31 = zext i8 %.narrow35.i.3 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !4
  %34 = lshr i32 %i.l, 8
  %35 = xor i32 %33, %34
  %36 = add i64 %2, -4
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %.preheader36.i

.preheader.i:                                     ; preds = %.lr.ph45.i, %.preheader36.i
  %.133.lcssa.i = phi i64 [ %.032.lcssa.i, %.preheader36.i ], [ %i.at, %.lr.ph45.i ] ; 3 uses
  %.130.lcssa.i = phi i32 [ %.029.lcssa.i, %.preheader36.i ], [ %i.as, %.lr.ph45.i ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader36.i ], [ %i.au, %.lr.ph45.i ] ; 3 uses
  %.not49.i = icmp eq i64 %.133.lcssa.i, 0
  br i1 %.not49.i, label %CrcUpdateT4.exit, label %.lr.ph53.i

.lr.ph45.i:                                       ; preds = %.preheader36.i, %.lr.ph45.i
  %.144.i = phi ptr [ %i.au, %.lr.ph45.i ], [ %.0.lcssa.i, %.preheader36.i ] ; 2 uses
  %.13043.i = phi i32 [ %i.as, %.lr.ph45.i ], [ %.029.lcssa.i, %.preheader36.i ]
  %.13342.i = phi i64 [ %i.at, %.lr.ph45.i ], [ %.032.lcssa.i, %.preheader36.i ]
  %i.t = load i32, ptr %.144.i, align 4, !tbaa !4
  %i.u = xor i32 %i.t, %.13043.i                  ; 4 uses
  %i.v = and i32 %i.u, 255
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3072
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = lshr i32 %i.u, 8
  %i.ab = and i32 %i.aa, 255
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2048
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = xor i32 %i.af, %i.z
  %i.ah = lshr i32 %i.u, 16
  %i.ai = and i32 %i.ah, 255
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1024
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = xor i32 %i.ag, %i.am
  %i.ao = lshr i32 %i.u, 24
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = xor i32 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %.13342.i, -4                   ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.144.i, i64 4 ; 2 uses
  %i.av = icmp ugt i64 %i.at, 3
  br i1 %i.av, label %.lr.ph45.i, label %.preheader.i, !llvm.loop !9

.lr.ph53.i:                                       ; preds = %.preheader.i
  %i.aw = load i8, ptr %.1.lcssa.i, align 1, !tbaa !8
  %.231.tr.i = trunc i32 %.130.lcssa.i to i8
  %.narrow.i = xor i8 %i.aw, %.231.tr.i
  %i.ax = zext i8 %.narrow.i to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = lshr i32 %.130.lcssa.i, 8
  %i.bb = xor i32 %i.az, %i.ba                    ; 3 uses
  %.not.i = icmp eq i64 %.133.lcssa.i, 1
  br i1 %.not.i, label %CrcUpdateT4.exit, label %.lr.ph53.i.1

.lr.ph53.i.1:                                     ; preds = %.lr.ph53.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %.231.tr.i.1 = trunc i32 %i.bb to i8
  %.narrow.i.1 = xor i8 %i.bd, %.231.tr.i.1
  %i.be = zext i8 %.narrow.i.1 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = lshr i32 %i.bb, 8
  %i.bi = xor i32 %i.bg, %i.bh                    ; 3 uses
  %.not.i.1 = icmp eq i64 %.133.lcssa.i, 2
  br i1 %.not.i.1, label %CrcUpdateT4.exit, label %.lr.ph53.i.2

.lr.ph53.i.2:                                     ; preds = %.lr.ph53.i.1
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %.231.tr.i.2 = trunc i32 %i.bi to i8
  %.narrow.i.2 = xor i8 %i.bk, %.231.tr.i.2
  %i.bl = zext i8 %.narrow.i.2 to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = lshr i32 %i.bi, 8
  %i.bp = xor i32 %i.bn, %i.bo
  br label %CrcUpdateT4.exit

CrcUpdateT4.exit:                                 ; preds = %.lr.ph53.i, %.lr.ph53.i.1, %.lr.ph53.i.2, %.preheader.i
  %.231.lcssa.i = phi i32 [ %.130.lcssa.i, %.preheader.i ], [ %i.bb, %.lr.ph53.i ], [ %i.bi, %.lr.ph53.i.1 ], [ %i.bp, %.lr.ph53.i.2 ]
  ret i32 %.231.lcssa.i
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
