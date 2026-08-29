Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DSBGST\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b8 = internal global double 0.000000e+00, align 8
@c_b9 = internal global double 1.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@c_b20 = internal global double -1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dsbgst_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef captures(none) initializes((0, 4)) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 45 uses
  %i.b = alloca i32, align 4                      ; 28 uses
  %i.c = alloca i32, align 4                      ; 73 uses
  %i.d = alloca i32, align 4                      ; 65 uses
  %i.e = alloca double, align 8                   ; 10 uses
  %i.f = alloca i32, align 4                      ; 67 uses
  %i.g = alloca double, align 8                   ; 10 uses
  %i.h = alloca i32, align 4                      ; 38 uses
  %i.i = alloca i32, align 4                      ; 12 uses
  %i.j = alloca i32, align 4                      ; 120 uses
  %i.k = alloca double, align 8                   ; 22 uses
  %i.l = alloca i32, align 4                      ; 23 uses
  %i.m = alloca i32, align 4                      ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.n = load i32, ptr %6, align 4, !tbaa !8      ; 105 uses
  %narrow = xor i32 %i.n, -1
  %i.o = sext i32 %narrow to i64                  ; 6 uses
  %i.p = getelementptr [8 x i8], ptr %5, i64 %i.o ; 212 uses
  %i.q = load i32, ptr %8, align 4, !tbaa !8      ; 13 uses
  %narrow2639 = xor i32 %i.q, -1
  %i.r = sext i32 %narrow2639 to i64              ; 4 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %7, i64 %i.r ; 37 uses
  %i.t = load i32, ptr %10, align 4, !tbaa !8     ; 25 uses
  %narrow2646 = xor i32 %i.t, -1
  %i.u = sext i32 %narrow2646 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %9, i64 %i.u ; 24 uses
  %i.w = getelementptr inbounds i8, ptr %11, i64 -8 ; 199 uses
  %i.x = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %i.y = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  %.fr = freeze i32 %i.y
  %i.z = load i32, ptr %3, align 4, !tbaa !8
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  store i32 %i.aa, ptr %i.j, align 4, !tbaa !8
  %i.ab = load i32, ptr %4, align 4, !tbaa !8     ; 4 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 11 uses
  store i32 0, ptr %12, align 4, !tbaa !8
  %.not = icmp eq i32 %i.x, 0                     ; 15 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %.not2640 = icmp eq i32 %i.ad, 0
  br i1 %.not2640, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not2641 = icmp eq i32 %.fr, 0                 ; 4 uses
  br i1 %.not2641, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %.not2642 = icmp eq i32 %i.ae, 0
  br i1 %.not2642, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = load i32, ptr %2, align 4, !tbaa !8     ; 5 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %4, align 4, !tbaa !8     ; 3 uses
  %or.cond2756 = icmp ugt i32 %i.aj, %i.ah
  br i1 %or.cond2756, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %6, align 4, !tbaa !8     ; 2 uses
  %.not2643 = icmp sgt i32 %i.ak, %i.ah
  br i1 %.not2643, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %8, align 4, !tbaa !8
  %.not2644 = icmp sgt i32 %i.al, %i.aj
  br i1 %.not2644, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %10, align 4, !tbaa !8    ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp samesign ugt i32 %i.af, 1
  %i.ap = icmp samesign ult i32 %i.am, %i.af
  %spec.select = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %spec.select, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.pr = load i32, ptr %12, align 4, !tbaa !8     ; 2 uses
  %.not2645 = icmp eq i32 %.pr, 0
  br i1 %.not2645, label %bb.n, label %.thread

.thread.sink.split:                               ; preds = %bb.j, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sink4173 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -4, %bb.f ], [ -7, %bb.h ], [ -9, %bb.i ], [ -5, %bb.g ], [ -3, %bb.e ], [ -11, %bb.l ], [ -11, %bb.j ] ; 2 uses
  store i32 %.sink4173, ptr %12, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.m
  %i.aq = phi i32 [ %.pr, %bb.m ], [ %.sink4173, %.thread.sink.split ]
  %i.ar = sub nsw i32 0, %i.aq
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !8
  %i.as = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %.loopexit2877

bb.n:                                             ; preds = %bb.m
  %i.at = icmp eq i32 %i.af, 0
  br i1 %i.at, label %.loopexit2877, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = mul nsw i32 %i.aa, %i.ak
  store i32 %i.au, ptr %i.f, align 4, !tbaa !8
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b8, ptr noundef nonnull @c_b9, ptr noundef %9, ptr noundef nonnull %10) #4
  %.pre = load i32, ptr %2, align 4, !tbaa !8
  %.pre3785 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = phi i32 [ %.pre3785, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.aw = phi i32 [ %.pre, %bb.p ], [ %i.af, %bb.o ] ; 3 uses
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = sdiv i32 %i.ax, 2                       ; 72 uses
  %i.az = add nsw i32 %i.aw, 1
  %i.ba = add nsw i32 %i.ay, 1                    ; 15 uses
  %i.bb = sext i32 %i.n to i64                    ; 25 uses
  %i.bc = sext i32 %i.q to i64                    ; 14 uses
  %i.bd = sext i32 %i.ay to i64                   ; 16 uses
  %.0255729803501 = add i32 %i.n, -1
  %.0255729803502 = add i32 %i.n, -1              ; 11 uses
  %i.be = shl nsw i64 %i.o, 3                     ; 3 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.be
  %i.bf = add nsw i64 %i.be, 8                    ; 2 uses
  %scevgep4279 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bg = shl nsw i64 %i.r, 3
  %i.bh = getelementptr i8, ptr %7, i64 %i.bg
  %scevgep4283 = getelementptr i8, ptr %i.bh, i64 8
  %i.bi = add i32 %i.ab, 1
  %scevgep4285 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4287.a = getelementptr i8, ptr %5, i64 %i.bf
  %i.bj = add i32 %i.ab, 1
  %i.bk = shl nsw i64 %i.o, 3                     ; 3 uses
  %scevgep4336 = getelementptr i8, ptr %5, i64 %i.bk
  %i.bl = add nsw i64 %i.bk, 8                    ; 4 uses
  %scevgep4339 = getelementptr i8, ptr %5, i64 %i.bl
  %i.bm = shl nsw i64 %i.r, 3                     ; 2 uses
  %i.bn = add nsw i64 %i.bm, 8                    ; 2 uses
  %scevgep4341 = getelementptr i8, ptr %7, i64 %i.bn
  %i.bo = add i32 %i.ab, 1
  %scevgep4343 = getelementptr i8, ptr %7, i64 %i.bm
  %scevgep4345 = getelementptr i8, ptr %7, i64 %i.bn
  %scevgep4348.a = getelementptr i8, ptr %5, i64 %i.bl
  %scevgep4350.a = getelementptr i8, ptr %5, i64 %i.bk
  %scevgep4352.a = getelementptr i8, ptr %5, i64 %i.bl
  %scevgep4355.a = getelementptr i8, ptr %5, i64 %i.bl
  br label %.outer2886

.outer2886:                                       ; preds = %.loopexit2884, %bb.q
  %.pre3787 = phi i32 [ %.pre3787.pre, %.loopexit2884 ], [ %i.aw, %bb.q ] ; 6 uses
  %i.bp = phi i32 [ %i.bww, %.loopexit2884 ], [ %i.av, %bb.q ] ; 10 uses
  %.02605.ph = phi i32 [ %.126062773, %.loopexit2884 ], [ %i.az, %bb.q ] ; 33 uses
  %.02547.ph = phi i32 [ %.125482776, %.loopexit2884 ], [ undef, %bb.q ]
  %.02542.ph = phi i32 [ %.125432779, %.loopexit2884 ], [ undef, %bb.q ]
  %.02538.ph = phi i32 [ %.125392782, %.loopexit2884 ], [ undef, %bb.q ]
  %.02532.ph = phi i32 [ %.025322916, %.loopexit2884 ], [ 1, %bb.q ]
  %.not26472935 = icmp eq i32 %.02532.ph, 0
  %.pre3786 = load i32, ptr %3, align 4, !tbaa !8 ; 9 uses
  br i1 %.not26472935, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer2886
  %i.bq = add i32 %.02605.ph, -1                  ; 43 uses
  %i.br = add i32 %.02605.ph, -2                  ; 16 uses
  %i.bs = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 9 uses
  store i32 %i.bs, ptr %i.l, align 4, !tbaa !8
  %i.bt = add i32 %.pre3786, %i.bq                ; 2 uses
  %i.bu = call i32 @llvm.smin.i32(i32 %.pre3787, i32 %i.bt) ; 16 uses
  %i.bv = sub i32 %i.bq, %i.bs                    ; 13 uses
  %i.bw = load i32, ptr %i.j, align 4, !tbaa !8   ; 22 uses
  %i.bx = add nsw i32 %i.bv, %i.bw                ; 4 uses
  %.not2651 = icmp sgt i32 %.02605.ph, %i.ba
  br i1 %.not2651, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i32 %.pre3787, ptr %i.a, align 4, !tbaa !8
  %.neg.le = sub nsw i32 1, %.02605.ph            ; 5 uses
  %i.by = mul i32 %i.bq, %i.q                     ; 7 uses
  %.not26533001 = icmp sgt i32 %i.bq, %i.bu       ; 4 uses
  br i1 %.not2641, label %bb.bo, label %bb.s

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bz = icmp eq i32 %.pre3786, 0
  store i32 %.pre3787, ptr %i.a, align 4, !tbaa !8
  store i32 %i.bt, ptr %i.b, align 4, !tbaa !8
  br i1 %i.bz, label %.loopexit2888, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.outer2886
  %.02547.lcssa = phi i32 [ %.02547.ph, %.outer2886 ], [ %i.ay, %.lr.ph.split ] ; 3 uses
  %.02542.lcssa = phi i32 [ %.02542.ph, %.outer2886 ], [ %i.bu, %.lr.ph.split ] ; 3 uses
  %.02538.lcssa = phi i32 [ %.02538.ph, %.outer2886 ], [ %i.bx, %.lr.ph.split ] ; 3 uses
  %i.ca = add nsw i32 %.pre3786, %.02605.ph       ; 3 uses
  %.not2648 = icmp slt i32 %i.ca, %.pre3787
  br i1 %.not2648, label %bb.r, label %.loopexit2888

bb.r:                                             ; preds = %._crit_edge
  br i1 %.not2641, label %bb.by, label %bb.ab

bb.s:                                             ; preds = %.lr.ph.split.us
  %i.cb = add i32 %i.by, %i.ac                    ; 7 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !9 ; 13 uses
  br i1 %.not26533001, label %._crit_edge2954, label %.lr.ph2953
end_hunk_0
begin_hunk_1_@dsbgst_:bb.a
  %invariant.op4803.a = sub i32 2, %i.ay
  %invariant.op4804 = sub i32 1, %i.ay
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.pre3819.a = phi i32 [ %.pre3786, %.outer.us.preheader ], [ %.pre3819.be, %.outer.us.backedge ] ; 6 uses
  %i.bxe = phi i32 [ %i.bp, %.outer.us.preheader ], [ %.be, %.outer.us.backedge ] ; 2 uses
  %.22607.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.32608.us, %.outer.us.backedge ] ; 4 uses
  %.32550.ph.us = phi i32 [ %.22549, %.outer.us.preheader ], [ %.42551.us, %.outer.us.backedge ]
  %.32545.ph.us = phi i32 [ %.22544, %.outer.us.preheader ], [ %.42546.us, %.outer.us.backedge ]
  %.32541.ph.us = phi i32 [ %.22540, %.outer.us.preheader ], [ %.4.us, %.outer.us.backedge ]
  %.12533.ph.us = phi i32 [ 1, %.outer.us.preheader ], [ %.125332894.us, %.outer.us.backedge ]
  %.not26983209.us = icmp eq i32 %.12533.ph.us, 0
  br i1 %.not26983209.us, label %bb.dl, label %.lr.ph3212.us

bb.dl:                                            ; preds = %.lr.ph3212.split.split.us, %.outer.us
  %.32550.lcssa.us = phi i32 [ %i.ba, %.lr.ph3212.split.split.us ], [ %.32550.ph.us, %.outer.us ]
  %.32545.lcssa.us = phi i32 [ %i.cyr, %.lr.ph3212.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %i.cyu, %.lr.ph3212.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bxf = sub nsw i32 %.22607.ph.us, %.pre3819.a ; 2 uses
  %i.bxg = icmp slt i32 %i.bxf, 2
  br i1 %i.bxg, label %.loopexit2877, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph3212.split.us.us, %bb.dl
  %.125332894.us = phi i32 [ 0, %bb.dl ], [ 1, %.lr.ph3212.split.us.us ]
  %.not26982891.us = phi i1 [ true, %bb.dl ], [ false, %.lr.ph3212.split.us.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bxf, %bb.dl ], [ %i.cyn, %.lr.ph3212.split.us.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %bb.dl ], [ %i.cyw, %.lr.ph3212.split.us.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %bb.dl ], [ %i.cyr, %.lr.ph3212.split.us.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %bb.dl ], [ %i.cyu, %.lr.ph3212.split.us.us ] ; 2 uses
  %i.bxh = load i32, ptr %i.l, align 4, !tbaa !8  ; 6 uses
  %i.bxi = sub nsw i32 %i.ay, %i.bxh
  %i.bxj = icmp slt i32 %.32608.us, %i.bxi
  br i1 %i.bxj, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bxk = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %storemerge.us = phi i32 [ %i.bxk, %bb.dn ], [ %i.ay, %bb.dm ]
  store i32 %storemerge.us, ptr %i.i, align 4, !tbaa !8
  br i1 %.not26982891.us, label %bb.dy, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bxl = mul nsw i32 %.32608.us, %i.q           ; 8 uses
  %i.bxm = sext i32 %i.bxl to i64
  %i.bxn = getelementptr [8 x i8], ptr %i.s, i64 %i.bxm ; 2 uses
  %i.bxo = getelementptr i8, ptr %i.bxn, i64 8
  %i.bxp = load double, ptr %i.bxo, align 8, !tbaa !9 ; 13 uses
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !8
  %.not27023369.us = icmp sgt i32 %.42546.us, %.32608.us ; 2 uses
  br i1 %.not27023369.us, label %._crit_edge3373.us, label %.lr.ph3372.us

.lr.ph3372.us.new:                                ; preds = %.prol.loopexit4728, %.lr.ph3372.us.new
  %indvars.iv3722 = phi i64 [ %indvars.iv.next3723.3, %.lr.ph3372.us.new ], [ %indvars.iv3722.unr, %.prol.loopexit4728 ] ; 6 uses
  %i.bxq = mul nsw i64 %indvars.iv3722, %i.bb
  %i.bxr = trunc nsw i64 %indvars.iv3722 to i32
  %i.bxs = sub i32 %i.cyx, %i.bxr
  %i.bxt = sext i32 %i.bxs to i64
  %i.bxu = getelementptr [8 x i8], ptr %i.p, i64 %i.bxq
  %i.bxv = getelementptr [8 x i8], ptr %i.bxu, i64 %i.bxt ; 2 uses
  %i.bxw = load double, ptr %i.bxv, align 8, !tbaa !9
  %i.bxx = fdiv double %i.bxw, %i.bxp
  store double %i.bxx, ptr %i.bxv, align 8, !tbaa !9
  %indvars.iv.next3723 = add nsw i64 %indvars.iv3722, 1 ; 2 uses
  %i.bxy = mul nsw i64 %indvars.iv.next3723, %i.bb
  %i.bxz = trunc nsw i64 %indvars.iv.next3723 to i32
  %i.bya = sub i32 %i.cyx, %i.bxz
  %i.byb = sext i32 %i.bya to i64
  %i.byc = getelementptr [8 x i8], ptr %i.p, i64 %i.bxy
  %i.byd = getelementptr [8 x i8], ptr %i.byc, i64 %i.byb ; 2 uses
  %i.bye = load double, ptr %i.byd, align 8, !tbaa !9
  %i.byf = fdiv double %i.bye, %i.bxp
  store double %i.byf, ptr %i.byd, align 8, !tbaa !9
  %indvars.iv.next3723.1 = add nsw i64 %indvars.iv3722, 2 ; 2 uses
  %i.byg = mul nsw i64 %indvars.iv.next3723.1, %i.bb
  %i.byh = trunc nsw i64 %indvars.iv.next3723.1 to i32
  %i.byi = sub i32 %i.cyx, %i.byh
  %i.byj = sext i32 %i.byi to i64
  %i.byk = getelementptr [8 x i8], ptr %i.p, i64 %i.byg
  %i.byl = getelementptr [8 x i8], ptr %i.byk, i64 %i.byj ; 2 uses
  %i.bym = load double, ptr %i.byl, align 8, !tbaa !9
  %i.byn = fdiv double %i.bym, %i.bxp
  store double %i.byn, ptr %i.byl, align 8, !tbaa !9
  %indvars.iv.next3723.2 = add nsw i64 %indvars.iv3722, 3 ; 2 uses
  %i.byo = mul nsw i64 %indvars.iv.next3723.2, %i.bb
  %i.byp = trunc nsw i64 %indvars.iv.next3723.2 to i32
  %i.byq = sub i32 %i.cyx, %i.byp
  %i.byr = sext i32 %i.byq to i64
  %i.bys = getelementptr [8 x i8], ptr %i.p, i64 %i.byo
  %i.byt = getelementptr [8 x i8], ptr %i.bys, i64 %i.byr ; 2 uses
  %i.byu = load double, ptr %i.byt, align 8, !tbaa !9
  %i.byv = fdiv double %i.byu, %i.bxp
  store double %i.byv, ptr %i.byt, align 8, !tbaa !9
  %indvars.iv.next3723.3 = add nsw i64 %indvars.iv3722, 4 ; 2 uses
  %lftr.wideiv3725.3 = trunc i64 %indvars.iv.next3723.3 to i32
  %exitcond3726.not.3 = icmp eq i32 %i.cyx, %lftr.wideiv3725.3
  br i1 %exitcond3726.not.3, label %._crit_edge3373.us, label %.lr.ph3372.us.new, !llvm.loop !97

._crit_edge3373.us:                               ; preds = %.prol.loopexit4728, %.lr.ph3372.us.new, %bb.dp
  %i.byw = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  store i32 %i.byw, ptr %i.c, align 4, !tbaa !8
  %i.byx = add nsw i32 %.pre3819.a, %.32608.us    ; 4 uses
  store i32 %i.byx, ptr %i.a, align 4, !tbaa !8
  %i.byy = call i32 @llvm.smin.i32(i32 %i.byw, i32 %i.byx) ; 9 uses
  %.not27043374.us = icmp sgt i32 %.32608.us, %i.byy
  br i1 %.not27043374.us, label %._crit_edge3378.us, label %iter.check4654

vec.epilog.scalar.ph4655:                         ; preds = %vec.epilog.scalar.ph4655, %vec.epilog.scalar.ph4655.preheader.new
  %indvars.iv3727 = phi i64 [ %indvars.iv3727.unr, %vec.epilog.scalar.ph4655.preheader.new ], [ %indvars.iv.next3728.3, %vec.epilog.scalar.ph4655 ] ; 5 uses
  %i.byz = trunc nsw i64 %indvars.iv3727 to i32
  %i.bza = add i32 %i.czl, %i.byz
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzb ; 2 uses
  %i.bzd = load double, ptr %i.bzc, align 8, !tbaa !9
  %i.bze = fdiv double %i.bzd, %i.bxp
  store double %i.bze, ptr %i.bzc, align 8, !tbaa !9
  %i.bzf = trunc i64 %indvars.iv3727 to i32
  %.reass4789.a = add i32 %i.bzf, %invariant.op4788.a
  %i.bzg = sext i32 %.reass4789.a to i64
  %i.bzh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzg ; 2 uses
  %i.bzi = load double, ptr %i.bzh, align 8, !tbaa !9
  %i.bzj = fdiv double %i.bzi, %i.bxp
  store double %i.bzj, ptr %i.bzh, align 8, !tbaa !9
  %i.bzk = trunc i64 %indvars.iv3727 to i32
  %.reass4791 = add i32 %i.bzk, %invariant.op4790
  %i.bzl = sext i32 %.reass4791 to i64
  %i.bzm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzl ; 2 uses
  %i.bzn = load double, ptr %i.bzm, align 8, !tbaa !9
  %i.bzo = fdiv double %i.bzn, %i.bxp
  store double %i.bzo, ptr %i.bzm, align 8, !tbaa !9
  %i.bzp = trunc i64 %indvars.iv3727 to i32
  %.reass4793 = add i32 %i.bzp, %invariant.op4792
  %i.bzq = sext i32 %.reass4793 to i64
  %i.bzr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzq ; 2 uses
  %i.bzs = load double, ptr %i.bzr, align 8, !tbaa !9
  %i.bzt = fdiv double %i.bzs, %i.bxp
  store double %i.bzt, ptr %i.bzr, align 8, !tbaa !9
  %indvars.iv.next3728.3 = add nuw nsw i64 %indvars.iv3727, 4 ; 2 uses
  %lftr.wideiv3730.3 = trunc i64 %indvars.iv.next3728.3 to i32
  %exitcond3731.not.3 = icmp eq i32 %i.czn, %lftr.wideiv3730.3
  br i1 %exitcond3731.not.3, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4655, !llvm.loop !98

._crit_edge3378.us:                               ; preds = %vec.epilog.scalar.ph4655.prol.loopexit, %vec.epilog.scalar.ph4655, %middle.block4650, %vec.epilog.middle.block4666, %._crit_edge3373.us
  %i.bzu = add i32 %i.bxh, %.32608.us             ; 7 uses
  %i.bzv = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053392.us = icmp slt i32 %i.bxh, 1
  br i1 %.not27053392.us, label %bb.dr, label %.lr.ph3396.us

bb.dq:                                            ; preds = %.lr.ph3396.us, %._crit_edge3388.us
  %indvar4574 = phi i64 [ 0, %.lr.ph3396.us ], [ %indvar.next4575, %._crit_edge3388.us ] ; 8 uses
  %indvar4514 = phi i32 [ 0, %.lr.ph3396.us ], [ %indvar.next4515, %._crit_edge3388.us ] ; 4 uses
  %indvars.iv3732 = phi i64 [ %i.dcr, %.lr.ph3396.us ], [ %indvars.iv.next3733, %._crit_edge3388.us ] ; 12 uses
  %.182575.neg3394.us.in = phi i32 [ %.32608.us, %.lr.ph3396.us ], [ %i.cbe, %._crit_edge3388.us ]
  %i.bzw = add i64 %indvar4574, %i.dcr
  %i.bzx = trunc i64 %indvar4574 to i32
  %i.bzy = mul i32 %i.n, %i.bzx
  %i.bzz = add i32 %i.bzy, %i.ddp
  %i.caa = sext i32 %i.bzz to i64
  %i.cab = shl nsw i64 %i.caa, 3                  ; 2 uses
  %scevgep4578 = getelementptr i8, ptr %scevgep4577, i64 %i.cab ; 5 uses
  %smax4580 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dcs)
  %i.cac = add i64 %indvar4574, %i.dcr
  %i.cad = sub i64 %smax4580, %i.cac
  %i.cae = shl nsw i64 %i.cad, 3                  ; 3 uses
  %i.caf = getelementptr i8, ptr %scevgep4579, i64 %i.cae
  %scevgep4581 = getelementptr i8, ptr %i.caf, i64 %i.cab ; 5 uses
  %i.cag = trunc i64 %indvar4574 to i32
  %i.cah = add i32 %i.ddq, %i.cag
  %i.cai = sext i32 %i.cah to i64
  %i.caj = shl nsw i64 %i.cai, 3                  ; 3 uses
  %scevgep4583 = getelementptr i8, ptr %scevgep4582, i64 %i.caj ; 2 uses
  %scevgep4585 = getelementptr i8, ptr %scevgep4584.a, i64 %i.caj
  %i.cak = getelementptr i8, ptr %scevgep4586, i64 %i.cae
  %scevgep4587 = getelementptr i8, ptr %i.cak, i64 %i.caj
  %i.cal = trunc i64 %indvar4574 to i32
  %i.cam = add i32 %i.ddr, %i.cal
  %i.can = sext i32 %i.cam to i64
  %i.cao = shl nsw i64 %i.can, 3                  ; 3 uses
  %scevgep4589 = getelementptr i8, ptr %scevgep4588, i64 %i.cao ; 2 uses
  %scevgep4591 = getelementptr i8, ptr %scevgep4590, i64 %i.cao
  %i.cap = getelementptr i8, ptr %scevgep4592, i64 %i.cae
  %scevgep4593 = getelementptr i8, ptr %i.cap, i64 %i.cao
  %i.caq = mul i32 %.0255729803502, %indvar4514
  %i.car = add i32 %i.dcy, %i.caq
  %i.cas = sext i32 %i.car to i64                 ; 2 uses
  %i.cat = shl nsw i64 %i.cas, 3
  %scevgep4518 = getelementptr i8, ptr %scevgep4517, i64 %i.cat ; 2 uses
  %i.cau = add nsw i64 %i.ddd, %i.cas
  %i.cav = shl nsw i64 %i.cau, 3
  %scevgep4520 = getelementptr i8, ptr %scevgep4519, i64 %i.cav ; 2 uses
  %i.caw = add i32 %i.dde, %indvar4514
  %i.cax = sext i32 %i.caw to i64
  %i.cay = shl nsw i64 %i.cax, 3
  %scevgep4522 = getelementptr i8, ptr %scevgep4521, i64 %i.cay
  %i.caz = mul i32 %.0255729803502, %indvar4514
  %i.cba = add i32 %i.dcy, %i.caz                 ; 2 uses
  %i.cbb = trunc i64 %indvars.iv3732 to i32
  %i.cbc = mul i32 %i.n, %i.cbb
  %i.cbd = sub i32 %i.cbc, %.182575.neg3394.us.in ; 9 uses
  %i.cbe = trunc nsw i64 %indvars.iv3732 to i32   ; 3 uses
  %.reass3390.us.reass.reass = add i32 %i.cbe, %invariant.op4801 ; 2 uses
  %i.cbf = add nsw i32 %.reass3390.us.reass.reass, %i.dcm ; 3 uses
  %i.cbg = sext i32 %i.cbf to i64
  %i.cbh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbg ; 2 uses
  %i.cbi = add nsw i32 %.reass3390.us.reass.reass, %i.bxl ; 3 uses
  %i.cbj = sext i32 %i.cbi to i64
  %i.cbk = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cbj ; 2 uses
  %i.cbl = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dcs)
  %reass.sub4669 = sub i64 %i.cbl, %i.bzw
  %i.cbm = add i64 %reass.sub4669, 1              ; 3 uses
  %min.iters.check4616 = icmp ult i64 %i.cbm, 12
  br i1 %min.iters.check4616, label %scalar.ph4615.preheader, label %vector.scevcheck4572

vector.scevcheck4572:                             ; preds = %bb.dq
  %i.cbn = trunc i64 %indvar4574 to i32
  %i.cbo = mul i32 %i.n, %i.cbn
  %i.cbp = add i32 %i.cbo, %i.ddp                 ; 2 uses
  %smax4573 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dcs)
  %i.cbq = add i64 %indvar4574, %i.dcr
  %i.cbr = sub i64 %smax4573, %i.cbq              ; 2 uses
  %i.cbs = trunc i64 %i.cbr to i32                ; 3 uses
  %i.cbt = add i32 %i.cbp, %i.cbs
  %i.cbu = icmp slt i32 %i.cbt, %i.cbp
  %i.cbv = add i32 %i.cbi, %i.cbs
  %i.cbw = icmp slt i32 %i.cbv, %i.cbi
  %i.cbx = icmp ugt i64 %i.cbr, 4294967295
  %i.cby = or i1 %i.cbw, %i.cbx
  %i.cbz = add i32 %i.cbf, %i.cbs
  %i.cca = icmp slt i32 %i.cbz, %i.cbf
  %i.ccb = or i1 %i.cbu, %i.cby
  %i.ccc = or i1 %i.cca, %i.ccb
  br i1 %i.ccc, label %scalar.ph4615.preheader, label %vector.memcheck4576

vector.memcheck4576:                              ; preds = %vector.scevcheck4572
  %bound04596 = icmp ult ptr %scevgep4578, %scevgep4585
  %bound14597 = icmp ult ptr %scevgep4583, %scevgep4581
  %found.conflict4598 = and i1 %bound04596, %bound14597
  %bound04599 = icmp ult ptr %scevgep4578, %scevgep4587
  %bound14600 = icmp ult ptr %scevgep4583, %scevgep4581
  %found.conflict4601 = and i1 %bound04599, %bound14600
  %conflict.rdx4602 = or i1 %found.conflict4598, %found.conflict4601
  %bound04603 = icmp ult ptr %scevgep4578, %scevgep4591
  %bound14604 = icmp ult ptr %scevgep4589, %scevgep4581
  %found.conflict4605 = and i1 %bound04603, %bound14604
  %conflict.rdx4606 = or i1 %conflict.rdx4602, %found.conflict4605
  %bound04607 = icmp ult ptr %scevgep4578, %scevgep4593
  %bound14608 = icmp ult ptr %scevgep4589, %scevgep4581
  %found.conflict4609 = and i1 %bound04607, %bound14608
  %conflict.rdx4610 = or i1 %conflict.rdx4606, %found.conflict4609
  %bound04611 = icmp ult ptr %scevgep4578, %scevgep4595
  %bound14612 = icmp ult ptr %i.dcp, %scevgep4581
  %found.conflict4613 = and i1 %bound04611, %bound14612
  %conflict.rdx4614 = or i1 %conflict.rdx4610, %found.conflict4613
  br i1 %conflict.rdx4614, label %scalar.ph4615.preheader, label %vector.ph4617

vector.ph4617:                                    ; preds = %vector.memcheck4576
  %n.vec4618 = and i64 %i.cbm, -4                 ; 3 uses
  %i.ccd = add i64 %indvars.iv3732, %n.vec4618
  %i.cce = load double, ptr %i.cbh, align 8, !tbaa !9, !alias.scope !99
  %broadcast.splatinsert4625.a = insertelement <4 x double> poison, double %i.cce, i64 0
  %broadcast.splat4626.a = shufflevector <4 x double> %broadcast.splatinsert4625.a, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ccf = load double, ptr %i.cbk, align 8, !tbaa !9, !alias.scope !102
  %broadcast.splatinsert4619 = insertelement <4 x double> poison, double %i.ccf, i64 0
  %broadcast.splat4620 = shufflevector <4 x double> %broadcast.splatinsert4619, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ccg = fneg <4 x double> %broadcast.splat4620
  %i.cch = load double, ptr %i.dcp, align 8, !tbaa !9, !alias.scope !104
  %broadcast.splatinsert4628 = insertelement <4 x double> poison, double %i.cch, i64 0
  %broadcast.splat4629 = shufflevector <4 x double> %broadcast.splatinsert4628, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body4621

vector.body4621:                                  ; preds = %vector.body4621, %vector.ph4617
  %index4622 = phi i64 [ 0, %vector.ph4617 ], [ %index.next4630, %vector.body4621 ] ; 2 uses
  %i.cci = add i64 %indvars.iv3732, %index4622
  %i.ccj = trunc nsw i64 %i.cci to i32            ; 2 uses
  %i.cck = add i32 %i.cbd, %i.ccj
  %i.ccl = sext i32 %i.cck to i64
  %i.ccm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccl ; 2 uses
  %wide.load4623 = load <4 x double>, ptr %i.ccm, align 8, !tbaa !9, !alias.scope !106, !noalias !108
  %.reass4795 = add i32 %i.ccj, %invariant.op4794 ; 2 uses
  %i.ccn = add nsw i32 %.reass4795, %i.bxl
  %i.cco = sext i32 %i.ccn to i64
  %i.ccp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cco
  %wide.load4624 = load <4 x double>, ptr %i.ccp, align 8, !tbaa !9, !alias.scope !111 ; 2 uses
  %i.ccq = fneg <4 x double> %wide.load4624
  %i.ccr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccq, <4 x double> %broadcast.splat4626.a, <4 x double> %wide.load4623)
  %i.ccs = add nsw i32 %.reass4795, %i.dcm
  %i.cct = sext i32 %i.ccs to i64
  %i.ccu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cct
  %wide.load4627 = load <4 x double>, ptr %i.ccu, align 8, !tbaa !9, !alias.scope !112
  %i.ccv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccg, <4 x double> %wide.load4627, <4 x double> %i.ccr)
  %i.ccw = fmul <4 x double> %wide.load4624, %broadcast.splat4629
  %i.ccx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccw, <4 x double> %broadcast.splat4620, <4 x double> %i.ccv)
  store <4 x double> %i.ccx, ptr %i.ccm, align 8, !tbaa !9, !alias.scope !106, !noalias !108
  %index.next4630 = add nuw i64 %index4622, 4     ; 2 uses
  %i.ccy = icmp eq i64 %index.next4630, %n.vec4618
  br i1 %i.ccy, label %middle.block4631, label %vector.body4621, !llvm.loop !113

middle.block4631:                                 ; preds = %vector.body4621
  %cmp.n4632 = icmp eq i64 %i.cbm, %n.vec4618
  br i1 %cmp.n4632, label %.loopexit, label %scalar.ph4615.preheader

scalar.ph4615.preheader:                          ; preds = %vector.memcheck4576, %vector.scevcheck4572, %bb.dq, %middle.block4631
  %indvars.iv3734.ph = phi i64 [ %indvars.iv3732, %vector.memcheck4576 ], [ %indvars.iv3732, %vector.scevcheck4572 ], [ %indvars.iv3732, %bb.dq ], [ %i.ccd, %middle.block4631 ]
  br label %scalar.ph4615

scalar.ph4615:                                    ; preds = %scalar.ph4615.preheader, %scalar.ph4615
  %indvars.iv3734 = phi i64 [ %indvars.iv.next3735.a, %scalar.ph4615 ], [ %indvars.iv3734.ph, %scalar.ph4615.preheader ] ; 3 uses
  %i.ccz = trunc nsw i64 %indvars.iv3734 to i32   ; 2 uses
  %i.cda = add i32 %i.cbd, %i.ccz
  %i.cdb = sext i32 %i.cda to i64
  %i.cdc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdb ; 2 uses
  %i.cdd = load double, ptr %i.cdc, align 8, !tbaa !9
  %.reass3380.us.reass.reass = add i32 %i.ccz, %invariant.op4796 ; 2 uses
  %i.cde = add nsw i32 %.reass3380.us.reass.reass, %i.bxl
  %i.cdf = sext i32 %i.cde to i64
  %i.cdg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cdf
  %i.cdh = load double, ptr %i.cdg, align 8, !tbaa !9 ; 2 uses
  %i.cdi = load double, ptr %i.cbh, align 8, !tbaa !9
  %i.cdj = fneg double %i.cdh
  %i.cdk = call double @llvm.fmuladd.f64(double %i.cdj, double %i.cdi, double %i.cdd)
  %i.cdl = load double, ptr %i.cbk, align 8, !tbaa !9 ; 2 uses
  %i.cdm = add nsw i32 %.reass3380.us.reass.reass, %i.dcm
  %i.cdn = sext i32 %i.cdm to i64
  %i.cdo = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdn
  %i.cdp = load double, ptr %i.cdo, align 8, !tbaa !9
  %i.cdq = fneg double %i.cdl
  %i.cdr = call double @llvm.fmuladd.f64(double %i.cdq, double %i.cdp, double %i.cdk)
  %i.cds = load double, ptr %i.dcp, align 8, !tbaa !9
  %i.cdt = fmul double %i.cdh, %i.cds
  %i.cdu = call double @llvm.fmuladd.f64(double %i.cdt, double %i.cdl, double %i.cdr)
  store double %i.cdu, ptr %i.cdc, align 8, !tbaa !9
  %indvars.iv.next3735.a = add nsw i64 %indvars.iv3734, 1
  %.not2726.us.not = icmp slt i64 %indvars.iv3734, %i.dcs
  br i1 %.not2726.us.not, label %scalar.ph4615, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %scalar.ph4615, %middle.block4631
  br i1 %.not2728.not3384.us, label %iter.check4556, label %._crit_edge3388.us

vec.epilog.scalar.ph4557:                         ; preds = %vec.epilog.scalar.ph4563.prol.loopexit, %vec.epilog.scalar.ph4557
  %indvars.iv3737 = phi i64 [ %indvars.iv.next3738, %vec.epilog.scalar.ph4557 ], [ %indvars.iv3739.unr, %vec.epilog.scalar.ph4563.prol.loopexit ] ; 4 uses
  %13 = load double, ptr %i.dbb, align 8, !tbaa !9
  %14 = trunc i64 %indvars.iv3737 to i32
  %15 = add i32 %14, 1                            ; 2 uses
  %16 = add i32 %i.dcq, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i8], ptr %i.p, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !9
  %20 = add i32 %i.cbd, %15
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %i.p, i64 %21 ; 2 uses
  %23 = load double, ptr %22, align 8, !tbaa !9
  %24 = fneg double %13
  %25 = call double @llvm.fmuladd.f64(double %24, double %19, double %23)
  store double %25, ptr %22, align 8, !tbaa !9
  %26 = load double, ptr %i.dbb, align 8, !tbaa !9
  %27 = trunc i64 %indvars.iv3737 to i32
  %28 = add i32 %27, 2                            ; 2 uses
  %29 = add i32 %i.dcq, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i8], ptr %i.p, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = add i32 %i.cbd, %28
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %i.p, i64 %34 ; 2 uses
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fneg double %26
  %38 = call double @llvm.fmuladd.f64(double %37, double %32, double %36)
  store double %38, ptr %35, align 8, !tbaa !9
  %39 = load double, ptr %i.dbb, align 8, !tbaa !9
  %40 = trunc i64 %indvars.iv3737 to i32
  %41 = add i32 %40, 3                            ; 2 uses
  %42 = add i32 %i.dcq, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %i.p, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = add i32 %i.cbd, %41
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i8], ptr %i.p, i64 %47 ; 2 uses
  %49 = load double, ptr %48, align 8, !tbaa !9
  %50 = fneg double %39
  %51 = call double @llvm.fmuladd.f64(double %50, double %45, double %49)
  store double %51, ptr %48, align 8, !tbaa !9
  %indvars.iv.next3738 = add nsw i64 %indvars.iv3737, 4 ; 3 uses
  %i.cdv = load double, ptr %i.dbb, align 8, !tbaa !9
  %i.cdw = trunc nsw i64 %indvars.iv.next3738 to i32 ; 2 uses
  %i.cdx = add i32 %i.dcq, %i.cdw
  %i.cdy = sext i32 %i.cdx to i64
  %i.cdz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdy
  %i.cea = load double, ptr %i.cdz, align 8, !tbaa !9
  %i.ceb = add i32 %i.cbd, %i.cdw
  %i.cec = sext i32 %i.ceb to i64
  %i.ced = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cec ; 2 uses
  %i.cee = load double, ptr %i.ced, align 8, !tbaa !9
  %i.cef = fneg double %i.cdv
  %i.ceg = call double @llvm.fmuladd.f64(double %i.cef, double %i.cea, double %i.cee)
  store double %i.ceg, ptr %i.ced, align 8, !tbaa !9
  %exitcond3743.not.3 = icmp eq i64 %indvars.iv.next3738, %i.dct
  br i1 %exitcond3743.not.3, label %._crit_edge3388.us, label %vec.epilog.scalar.ph4557, !llvm.loop !115

._crit_edge3388.us:                               ; preds = %vec.epilog.scalar.ph4563.prol.loopexit, %vec.epilog.scalar.ph4557, %middle.block4552, %vec.epilog.middle.block4569, %.loopexit
  %indvars.iv.next3733 = add nsw i64 %indvars.iv3732, 1
  %.not2705.us.not = icmp slt i64 %indvars.iv3732, %i.dcs
  %indvar.next4515 = add i32 %indvar4514, 1
  %indvar.next4575 = add i64 %indvar4574, 1
  br i1 %.not2705.us.not, label %bb.dq, label %._crit_edge3397.us, !llvm.loop !116

bb.dr:                                            ; preds = %._crit_edge3397.us, %._crit_edge3378.us
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !8
  br i1 %.not27023369.us, label %bb.du, label %.lr.ph3409.us

bb.ds:                                            ; preds = %.lr.ph3409.us, %._crit_edge3403.us
  %indvars.iv3744 = phi i64 [ %i.dek, %.lr.ph3409.us ], [ %indvars.iv.next3745, %._crit_edge3403.us ] ; 4 uses
  %i.ceh = trunc i64 %indvars.iv3744 to i32
  %i.cei = add i32 %.pre3819.a, %i.ceh
  %i.cej = call i32 @llvm.smin.i32(i32 %i.cei, i32 %i.bzu) ; 2 uses
  %.not27253399.us.not = icmp slt i32 %.32608.us, %i.cej
  br i1 %.not27253399.us.not, label %.lr.ph3402.us, label %._crit_edge3403.us

bb.dt:                                            ; preds = %.lr.ph3402.us, %bb.dt
  %indvars.iv3741.in = phi i64 [ %i.dej, %.lr.ph3402.us ], [ %indvars.iv3741, %bb.dt ]
  %indvars.iv3741 = add nuw nsw i64 %indvars.iv3741.in, 1 ; 3 uses
  %i.cek = trunc nsw i64 %indvars.iv3741 to i32   ; 2 uses
  %i.cel = add i32 %i.dei, %i.cek
  %i.cem = sext i32 %i.cel to i64
  %i.cen = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cem
  %i.ceo = load double, ptr %i.cen, align 8, !tbaa !9
  %i.cep = load double, ptr %i.def, align 8, !tbaa !9
  %i.ceq = add i32 %i.deg, %i.cek
  %i.cer = sext i32 %i.ceq to i64
  %i.ces = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cer ; 2 uses
  %i.cet = load double, ptr %i.ces, align 8, !tbaa !9
  %i.ceu = fneg double %i.ceo
  %i.cev = call double @llvm.fmuladd.f64(double %i.ceu, double %i.cep, double %i.cet)
  store double %i.cev, ptr %i.ces, align 8, !tbaa !9
  %.not2725.us.not = icmp samesign ult i64 %indvars.iv3741, %i.deh
  br i1 %.not2725.us.not, label %bb.dt, label %._crit_edge3403.us, !llvm.loop !117

._crit_edge3403.us:                               ; preds = %bb.dt, %bb.ds
  %indvars.iv.next3745 = add nsw i64 %indvars.iv3744, 1 ; 2 uses
  %lftr.wideiv3748 = trunc i64 %indvars.iv.next3745 to i32
  %exitcond3749.not = icmp eq i32 %i.bzv, %lftr.wideiv3748
  br i1 %exitcond3749.not, label %._crit_edge3410.us, label %bb.ds, !llvm.loop !118

bb.du:                                            ; preds = %._crit_edge3410.us, %bb.dr
  br i1 %.not, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.cew = fdiv double 1.000000e+00, %i.bxp
  store double %i.cew, ptr %i.e, align 8, !tbaa !9
  %i.cex = mul nsw i32 %.32608.us, %i.t
  %i.cey = sext i32 %i.cex to i64
  %i.cez = getelementptr [8 x i8], ptr %i.v, i64 %i.cey
  %i.cfa = getelementptr i8, ptr %i.cez, i64 8    ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.e, ptr noundef %i.cfa, ptr noundef nonnull @c__1) #4
  %i.cfb = load i32, ptr %i.l, align 4, !tbaa !8
  %i.cfc = icmp sgt i32 %i.cfb, 0
  br i1 %i.cfc, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.cfd = getelementptr i8, ptr %i.bxn, i64 16
  %i.cfe = mul nsw i32 %i.bzv, %i.t
  %i.cff = sext i32 %i.cfe to i64
  %i.cfg = getelementptr [8 x i8], ptr %i.v, i64 %i.cff
  %i.cfh = getelementptr i8, ptr %i.cfg, i64 8
  call void @dger_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.cfa, ptr noundef nonnull @c__1, ptr noundef %i.cfd, ptr noundef nonnull @c__1, ptr noundef %i.cfh, ptr noundef nonnull %10) #4
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %i.cfi = mul nsw i32 %.42546.us, %i.n
  %i.cfj = sub i32 %i.bzv, %.42546.us
  %i.cfk = add nsw i32 %i.cfj, %i.cfi
  %i.cfl = sext i32 %i.cfk to i64
  %i.cfm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cfl
  %i.cfn = load double, ptr %i.cfm, align 8, !tbaa !9
  store double %i.cfn, ptr %i.k, align 8, !tbaa !9
  %.pre3820.a = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.do
  %i.cfo = phi i32 [ %.pre3820.a, %bb.dx ], [ %i.bxe, %bb.do ] ; 2 uses
  %i.cfp = add nsw i32 %i.cfo, -1
  store i32 %i.cfp, ptr %i.d, align 4, !tbaa !8
  %.not27073433.us = icmp slt i32 %i.cfo, 2
  br i1 %.not27073433.us, label %._crit_edge3438.us, label %.lr.ph3437.us

bb.dz:                                            ; preds = %.lr.ph3437.us, %.loopexit2872.us
  %indvars.iv3761 = phi i64 [ 1, %.lr.ph3437.us ], [ %indvars.iv.next3762, %.loopexit2872.us ] ; 6 uses
  %indvars.iv3752 = phi i32 [ %.reass4169.reass, %.lr.ph3437.us ], [ %indvars.iv.next3753, %.loopexit2872.us ] ; 2 uses
  %indvars.iv3750 = phi i32 [ %i.dfg, %.lr.ph3437.us ], [ %indvars.iv.next3751, %.loopexit2872.us ] ; 2 uses
  %.202577.neg3435.us = phi i32 [ -1, %.lr.ph3437.us ], [ %i.cmr, %.loopexit2872.us ] ; 2 uses
  %smax3754 = call i32 @llvm.smax.i32(i32 %indvars.iv3752, i32 1)
  %.pre3821.a = load i32, ptr %i.j, align 4, !tbaa !8 ; 4 uses
  br i1 %.not26982891.us, label %._crit_edge3822, label %bb.ea

._crit_edge3822:                                  ; preds = %bb.dz
  %.pre3823 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.cfq = add nuw nsw i64 %indvars.iv3761, %i.dfh ; 3 uses
  %i.cfr = sext i32 %.pre3821.a to i64
  %i.cfs = icmp sgt i64 %i.cfq, %i.cfr
  %i.cft = icmp slt i64 %i.cfq, %i.bd
  %or.cond2763.us = select i1 %i.cfs, i1 %i.cft, i1 false
  %.pre3824 = load i32, ptr %3, align 4, !tbaa !8 ; 3 uses
  br i1 %or.cond2763.us, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.cfu = add i32 %.pre3821.a, %.202577.neg3435.us
  %i.cfv = trunc nsw i64 %i.cfq to i32            ; 2 uses
  %i.cfw = sub nsw i32 %i.cfv, %.pre3824          ; 2 uses
  %i.cfx = mul nsw i32 %i.cfw, %i.n
  %i.cfy = add nsw i32 %i.cfu, %i.cfx
  %i.cfz = sext i32 %i.cfy to i64
  %i.cga = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cfz
  %i.cgb = load i32, ptr %2, align 4, !tbaa !8
  %i.cgc = trunc nuw nsw i64 %indvars.iv3761 to i32 ; 3 uses
  %i.cgd = add i32 %.32608.us, %i.cgc             ; 2 uses
  %i.cge = sub i32 %i.cgd, %.pre3824
  %i.cgf = add i32 %i.cge, %i.cgb
  %i.cgg = sext i32 %i.cgf to i64
  %i.cgh = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgg
  %i.cgi = sext i32 %i.cfw to i64
  %i.cgj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgi
  call void @dlartg_(ptr noundef %i.cga, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cgh, ptr noundef nonnull %i.cgj, ptr noundef nonnull %i.g) #4
  %i.cgk = add i32 %i.dfc, %i.cgc
  %i.cgl = sext i32 %i.cgk to i64
  %i.cgm = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cgl
  %i.cgn = load double, ptr %i.cgm, align 8, !tbaa !9
  %i.cgo = fneg double %i.cgn
  %i.cgp = load double, ptr %i.k, align 8, !tbaa !9
  %i.cgq = fmul double %i.cgp, %i.cgo             ; 2 uses
  %i.cgr = load i32, ptr %2, align 4, !tbaa !8
  %i.cgs = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.cgt = add i32 %i.cgd, %i.cgr
  %i.cgu = sub i32 %i.cgt, %i.cgs
  %i.cgv = sext i32 %i.cgu to i64
  %i.cgw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgv ; 2 uses
  %i.cgx = load double, ptr %i.cgw, align 8, !tbaa !9
  %i.cgy = sub nsw i32 %i.cfv, %i.cgs             ; 2 uses
  %i.cgz = sext i32 %i.cgy to i64
  %i.cha = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgz ; 2 uses
  %i.chb = load double, ptr %i.cha, align 8, !tbaa !9
  %i.chc = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.chd = mul nsw i32 %i.cgy, %i.n
  %i.che = add nsw i32 %i.chc, %i.chd
  %i.chf = sext i32 %i.che to i64
  %i.chg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.chf ; 3 uses
  %i.chh = load double, ptr %i.chg, align 8, !tbaa !9
  %i.chi = fneg double %i.chh
  %i.chj = fmul double %i.chb, %i.chi
  %i.chk = call double @llvm.fmuladd.f64(double %i.cgx, double %i.cgq, double %i.chj)
  %i.chl = load i32, ptr %4, align 4, !tbaa !8
  %i.chm = add i32 %i.dfd, %i.cgc
  %i.chn = sub i32 %i.chm, %i.chl
  %i.cho = sext i32 %i.chn to i64
  %i.chp = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cho
  store double %i.chk, ptr %i.chp, align 8, !tbaa !9
  %i.chq = load double, ptr %i.cha, align 8, !tbaa !9
  %i.chr = load double, ptr %i.cgw, align 8, !tbaa !9
  %i.chs = load double, ptr %i.chg, align 8, !tbaa !9
  %i.cht = fmul double %i.chr, %i.chs
  %i.chu = call double @llvm.fmuladd.f64(double %i.chq, double %i.cgq, double %i.cht)
  store double %i.chu, ptr %i.chg, align 8, !tbaa !9
  %i.chv = load double, ptr %i.g, align 8, !tbaa !9
  store double %i.chv, ptr %i.k, align 8, !tbaa !9
  br label %bb.ec

bb.ec:                                            ; preds = %._crit_edge3822, %bb.eb, %bb.ea
  %i.chw = phi i32 [ %i.cgs, %bb.eb ], [ %.pre3824, %bb.ea ], [ %.pre3823, %._crit_edge3822 ] ; 3 uses
  %i.chx = phi i32 [ %i.chc, %bb.eb ], [ %.pre3821.a, %bb.ea ], [ %.pre3821.a, %._crit_edge3822 ] ; 9 uses
  %i.chy = trunc nuw nsw i64 %indvars.iv3761 to i32 ; 3 uses
  %i.chz = add i32 %.reass4167.reass, %i.chy
  %i.cia = call i32 @llvm.smax.i32(i32 %i.chz, i32 1)
  %i.cib = mul nsw i32 %i.chx, %i.cia
  %i.cic = add i32 %i.dfe, %i.chy
  %i.cid = sub i32 %i.cic, %i.cib                 ; 7 uses
  %i.cie = add i32 %i.chw, -1                     ; 2 uses
  %i.cif = add i32 %i.cie, %i.cid
  %i.cig = sdiv i32 %i.cif, %i.chx                ; 5 uses
  store i32 %i.cig, ptr %i.h, align 4, !tbaa !8
  %i.cih = add nsw i32 %i.cig, -1
  %i.cii = mul nsw i32 %i.cih, %i.chx             ; 3 uses
  %i.cij = sub nsw i32 %i.cid, %i.cii             ; 12 uses
  br i1 %.not26982891.us, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.cik = add i32 %i.dff, %i.chy
  %i.cil = shl i32 %i.chw, 1
  %i.cim = sub i32 %i.cik, %i.cil
  %i.cin = call i32 @llvm.smin.i32(i32 %i.cid, i32 %i.cim) ; 2 uses
  %.pre3918 = add i32 %i.cie, %i.cin
  %.pre3920 = sdiv i32 %.pre3918, %i.chx
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pre-phi3921 = phi i32 [ %.pre3920, %bb.ed ], [ %i.cig, %bb.ec ] ; 2 uses
  %.3.us = phi i32 [ %i.cin, %bb.ed ], [ %i.cid, %bb.ec ] ; 4 uses
  store i32 %.pre-phi3921, ptr %i.m, align 4, !tbaa !8
  store i32 %.3.us, ptr %i.c, align 4, !tbaa !8
end_hunk_1
begin_hunk_2_@dsbgst_:bb.a
  %gep4163.3 = getelementptr [8 x i8], ptr %invariant.gep4162, i64 %i.cyi
  %i.cyj = load double, ptr %gep4163.3, align 8, !tbaa !9
  %i.cyk = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cyi
  store double %i.cyj, ptr %i.cyk, align 8, !tbaa !9
  %gep4165.3 = getelementptr [8 x i8], ptr %invariant.gep4164, i64 %indvars.iv.next3776.2
  %i.cyl = load double, ptr %gep4165.3, align 8, !tbaa !9
  %i.cym = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3776.2
  store double %i.cyl, ptr %i.cym, align 8, !tbaa !9
  %indvars.iv.next3776.3 = add nuw nsw i64 %indvars.iv3775, 4 ; 2 uses
  %exitcond3779.not.3 = icmp eq i64 %indvars.iv.next3776.3, %wide.trip.count3778
  br i1 %exitcond3779.not.3, label %.outer.us.backedge, label %scalar.ph4499, !llvm.loop !134

.lr.ph3212.us:                                    ; preds = %.outer.us
  %i.cyn = add nuw nsw i32 %.22607.ph.us, 1       ; 4 uses
  %i.cyo = sub nsw i32 %i.ay, %i.cyn
  %i.cyp = call i32 @llvm.smin.i32(i32 %i.bxe, i32 %i.cyo) ; 2 uses
  store i32 %i.cyp, ptr %i.l, align 4, !tbaa !8
  %i.cyq = sub nsw i32 %i.cyn, %.pre3819.a
  %i.cyr = call i32 @llvm.smax.i32(i32 %i.cyq, i32 1) ; 2 uses
  %i.cys = add nsw i32 %i.cyp, %i.cyn
  %i.cyt = load i32, ptr %i.j, align 4, !tbaa !8
  %i.cyu = sub i32 %i.cys, %i.cyt                 ; 2 uses
  %.not2700.us = icmp slt i32 %.22607.ph.us, %i.ay
  br i1 %.not2700.us, label %.lr.ph3212.split.us.us, label %.lr.ph3212.split.us3500

.lr.ph3212.split.us3500:                          ; preds = %.lr.ph3212.us
  %i.cyv = icmp eq i32 %.pre3819.a, 0
  br i1 %i.cyv, label %.loopexit2877, label %.lr.ph3212.split.split.us

.lr.ph3212.split.us.us:                           ; preds = %.lr.ph3212.us
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %i.cyw = add nuw nsw i32 %.22607.ph.us, 2
  br label %bb.dm

.lr.ph3212.split.split.us:                        ; preds = %.lr.ph3212.split.us3500
  store i32 1, ptr %i.c, align 4, !tbaa !8
  br label %bb.dl

.lr.ph3372.us:                                    ; preds = %bb.dp
  %i.cyx = add nuw i32 %.32608.us, 1              ; 6 uses
  %i.cyy = sext i32 %.42546.us to i64             ; 2 uses
  %i.cyz = add i32 %.32608.us, 1
  %i.cza = sub i32 %i.cyz, %.42546.us
  %i.czb = sub i32 %.32608.us, %.42546.us
  %xtraiter4729 = and i32 %i.cza, 3               ; 2 uses
  %lcmp.mod4730.not = icmp eq i32 %xtraiter4729, 0
  br i1 %lcmp.mod4730.not, label %.prol.loopexit4728, label %.prol.preheader4727

.prol.preheader4727:                              ; preds = %.lr.ph3372.us, %.prol.preheader4727
  %indvars.iv3722.prol = phi i64 [ %indvars.iv.next3723.prol, %.prol.preheader4727 ], [ %i.cyy, %.lr.ph3372.us ] ; 3 uses
  %prol.iter4731 = phi i32 [ %prol.iter4731.next, %.prol.preheader4727 ], [ 0, %.lr.ph3372.us ]
  %i.czc = mul nsw i64 %indvars.iv3722.prol, %i.bb
  %i.czd = trunc nsw i64 %indvars.iv3722.prol to i32
  %i.cze = sub i32 %i.cyx, %i.czd
  %i.czf = sext i32 %i.cze to i64
  %i.czg = getelementptr [8 x i8], ptr %i.p, i64 %i.czc
  %i.czh = getelementptr [8 x i8], ptr %i.czg, i64 %i.czf ; 2 uses
  %i.czi = load double, ptr %i.czh, align 8, !tbaa !9
  %i.czj = fdiv double %i.czi, %i.bxp
  store double %i.czj, ptr %i.czh, align 8, !tbaa !9
  %indvars.iv.next3723.prol = add nsw i64 %indvars.iv3722.prol, 1 ; 2 uses
  %prol.iter4731.next = add i32 %prol.iter4731, 1 ; 2 uses
  %prol.iter4731.cmp.not = icmp eq i32 %prol.iter4731.next, %xtraiter4729
  br i1 %prol.iter4731.cmp.not, label %.prol.loopexit4728, label %.prol.preheader4727, !llvm.loop !135

.prol.loopexit4728:                               ; preds = %.prol.preheader4727, %.lr.ph3372.us
  %indvars.iv3722.unr = phi i64 [ %i.cyy, %.lr.ph3372.us ], [ %indvars.iv.next3723.prol, %.prol.preheader4727 ]
  %i.czk = icmp ult i32 %i.czb, 3
  br i1 %i.czk, label %._crit_edge3373.us, label %.lr.ph3372.us.new

iter.check4654:                                   ; preds = %._crit_edge3373.us
  %reass.sub3511 = mul i32 %.32608.us, %.32608.us3512
  %i.czl = add i32 %reass.sub3511, 1              ; 7 uses
  %i.czm = zext nneg i32 %.32608.us to i64        ; 4 uses
  %i.czn = add nuw i32 %i.byy, 1
  %i.czo = sub i32 %i.byy, %.32608.us             ; 3 uses
  %i.czp = zext i32 %i.czo to i64
  %i.czq = add nuw nsw i64 %i.czp, 1              ; 5 uses
  %min.iters.check4636 = icmp ult i32 %i.czo, 3
  br i1 %min.iters.check4636, label %vec.epilog.scalar.ph4655.preheader, label %vector.scevcheck4634

vector.scevcheck4634:                             ; preds = %iter.check4654
  %i.czr = sub i32 %i.byy, %.32608.us
  %i.czs = mul i32 %i.n, %.32608.us
  %i.czt = add i32 %i.czs, 1                      ; 2 uses
  %i.czu = add i32 %i.czt, %i.czr
  %i.czv = icmp slt i32 %i.czu, %i.czt
  br i1 %i.czv, label %vec.epilog.scalar.ph4655.preheader, label %vector.main.loop.iter.check4637

vector.main.loop.iter.check4637:                  ; preds = %vector.scevcheck4634
  %min.iters.check4638 = icmp ult i32 %i.czo, 15
  br i1 %min.iters.check4638, label %vec.epilog.ph4658, label %vector.ph4639

vector.ph4639:                                    ; preds = %vector.main.loop.iter.check4637
  %i.czw = and i64 %i.czq, 12
  %n.vec4640 = and i64 %i.czq, 8589934576         ; 4 uses
  %i.czx = add nuw nsw i64 %n.vec4640, %i.czm
  %broadcast.splatinsert4641 = insertelement <4 x double> poison, double %i.bxp, i64 0
  %broadcast.splat4642 = shufflevector <4 x double> %broadcast.splatinsert4641, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4784 = add i32 %.32608.us, %i.czl
  br label %vector.body4643

vector.body4643:                                  ; preds = %vector.body4643, %vector.ph4639
  %index4644 = phi i64 [ 0, %vector.ph4639 ], [ %index.next4649, %vector.body4643 ] ; 2 uses
  %i.czy = trunc i64 %index4644 to i32
  %.reass4785 = add i32 %i.czy, %invariant.op4784
  %i.czz = sext i32 %.reass4785 to i64
  %i.daa = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.czz ; 5 uses
  %i.dab = getelementptr inbounds nuw i8, ptr %i.daa, i64 32 ; 2 uses
  %i.dac = getelementptr inbounds nuw i8, ptr %i.daa, i64 64 ; 2 uses
  %i.dad = getelementptr inbounds nuw i8, ptr %i.daa, i64 96 ; 2 uses
  %wide.load4645 = load <4 x double>, ptr %i.daa, align 8, !tbaa !9
  %wide.load4646 = load <4 x double>, ptr %i.dab, align 8, !tbaa !9
  %wide.load4647 = load <4 x double>, ptr %i.dac, align 8, !tbaa !9
  %wide.load4648 = load <4 x double>, ptr %i.dad, align 8, !tbaa !9
  %i.dae = fdiv <4 x double> %wide.load4645, %broadcast.splat4642
  %i.daf = fdiv <4 x double> %wide.load4646, %broadcast.splat4642
  %i.dag = fdiv <4 x double> %wide.load4647, %broadcast.splat4642
  %i.dah = fdiv <4 x double> %wide.load4648, %broadcast.splat4642
  store <4 x double> %i.dae, ptr %i.daa, align 8, !tbaa !9
  store <4 x double> %i.daf, ptr %i.dab, align 8, !tbaa !9
  store <4 x double> %i.dag, ptr %i.dac, align 8, !tbaa !9
  store <4 x double> %i.dah, ptr %i.dad, align 8, !tbaa !9
  %index.next4649 = add nuw i64 %index4644, 16    ; 2 uses
  %i.dai = icmp eq i64 %index.next4649, %n.vec4640
  br i1 %i.dai, label %middle.block4650, label %vector.body4643, !llvm.loop !136

middle.block4650:                                 ; preds = %vector.body4643
  %cmp.n4651 = icmp eq i64 %i.czq, %n.vec4640
  br i1 %cmp.n4651, label %._crit_edge3378.us, label %vec.epilog.iter.check4656

vec.epilog.iter.check4656:                        ; preds = %middle.block4650
  %min.epilog.iters.check4657 = icmp eq i64 %i.czw, 0
  br i1 %min.epilog.iters.check4657, label %vec.epilog.scalar.ph4655.preheader, label %vec.epilog.ph4658, !prof !18

vec.epilog.ph4658:                                ; preds = %vector.main.loop.iter.check4637, %vec.epilog.iter.check4656
  %vec.epilog.resume.val4652 = phi i64 [ %n.vec4640, %vec.epilog.iter.check4656 ], [ 0, %vector.main.loop.iter.check4637 ]
  %n.vec4659 = and i64 %i.czq, 8589934588         ; 3 uses
  %i.daj = add nuw nsw i64 %n.vec4659, %i.czm
  %broadcast.splatinsert4660 = insertelement <4 x double> poison, double %i.bxp, i64 0
  %broadcast.splat4661 = shufflevector <4 x double> %broadcast.splatinsert4660, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4786.a = add i32 %.32608.us, %i.czl
  br label %vec.epilog.vector.body4662

vec.epilog.vector.body4662:                       ; preds = %vec.epilog.vector.body4662, %vec.epilog.ph4658
  %index4663 = phi i64 [ %vec.epilog.resume.val4652, %vec.epilog.ph4658 ], [ %index.next4665, %vec.epilog.vector.body4662 ] ; 2 uses
  %i.dak = trunc i64 %index4663 to i32
  %.reass4787 = add i32 %i.dak, %invariant.op4786.a
  %i.dal = sext i32 %.reass4787 to i64
  %i.dam = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dal ; 2 uses
  %wide.load4664 = load <4 x double>, ptr %i.dam, align 8, !tbaa !9
  %i.dan = fdiv <4 x double> %wide.load4664, %broadcast.splat4661
  store <4 x double> %i.dan, ptr %i.dam, align 8, !tbaa !9
  %index.next4665 = add nuw i64 %index4663, 4     ; 2 uses
  %i.dao = icmp eq i64 %index.next4665, %n.vec4659
  br i1 %i.dao, label %vec.epilog.middle.block4666, label %vec.epilog.vector.body4662, !llvm.loop !137

vec.epilog.middle.block4666:                      ; preds = %vec.epilog.vector.body4662
  %cmp.n4667 = icmp eq i64 %i.czq, %n.vec4659
  br i1 %cmp.n4667, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4655.preheader

vec.epilog.scalar.ph4655.preheader:               ; preds = %vector.scevcheck4634, %iter.check4654, %vec.epilog.iter.check4656, %vec.epilog.middle.block4666
  %indvars.iv3727.ph = phi i64 [ %i.czm, %iter.check4654 ], [ %i.czm, %vector.scevcheck4634 ], [ %i.czx, %vec.epilog.iter.check4656 ], [ %i.daj, %vec.epilog.middle.block4666 ] ; 3 uses
  %i.dap = add i32 %i.byy, 1
  %i.daq = trunc i64 %indvars.iv3727.ph to i32    ; 2 uses
  %i.dar = sub i32 %i.dap, %i.daq
  %i.das = sub i32 %i.byy, %i.daq
  %xtraiter4732 = and i32 %i.dar, 3               ; 2 uses
  %lcmp.mod4733.not = icmp eq i32 %xtraiter4732, 0
  br i1 %lcmp.mod4733.not, label %vec.epilog.scalar.ph4655.prol.loopexit, label %vec.epilog.scalar.ph4655.prol

vec.epilog.scalar.ph4655.prol:                    ; preds = %vec.epilog.scalar.ph4655.preheader, %vec.epilog.scalar.ph4655.prol
  %indvars.iv3727.prol = phi i64 [ %indvars.iv.next3728.prol, %vec.epilog.scalar.ph4655.prol ], [ %indvars.iv3727.ph, %vec.epilog.scalar.ph4655.preheader ] ; 2 uses
  %prol.iter4734 = phi i32 [ %prol.iter4734.next, %vec.epilog.scalar.ph4655.prol ], [ 0, %vec.epilog.scalar.ph4655.preheader ]
  %i.dat = trunc nsw i64 %indvars.iv3727.prol to i32
  %i.dau = add i32 %i.czl, %i.dat
  %i.dav = sext i32 %i.dau to i64
  %i.daw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dav ; 2 uses
  %i.dax = load double, ptr %i.daw, align 8, !tbaa !9
  %i.day = fdiv double %i.dax, %i.bxp
  store double %i.day, ptr %i.daw, align 8, !tbaa !9
  %indvars.iv.next3728.prol = add nuw nsw i64 %indvars.iv3727.prol, 1 ; 2 uses
  %prol.iter4734.next = add i32 %prol.iter4734, 1 ; 2 uses
  %prol.iter4734.cmp.not = icmp eq i32 %prol.iter4734.next, %xtraiter4732
  br i1 %prol.iter4734.cmp.not, label %vec.epilog.scalar.ph4655.prol.loopexit, label %vec.epilog.scalar.ph4655.prol, !llvm.loop !138

vec.epilog.scalar.ph4655.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4655.prol, %vec.epilog.scalar.ph4655.preheader
  %indvars.iv3727.unr = phi i64 [ %indvars.iv3727.ph, %vec.epilog.scalar.ph4655.preheader ], [ %indvars.iv.next3728.prol, %vec.epilog.scalar.ph4655.prol ]
  %i.daz = icmp ult i32 %i.das, 3
  br i1 %i.daz, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4655.preheader.new

vec.epilog.scalar.ph4655.preheader.new:           ; preds = %vec.epilog.scalar.ph4655.prol.loopexit
  %invariant.op4788.a = add i32 1, %i.czl
  %invariant.op4790 = add i32 2, %i.czl
  %invariant.op4792 = add i32 3, %i.czl
  br label %vec.epilog.scalar.ph4655

iter.check4556:                                   ; preds = %.loopexit
  %.reass3383.reass.us = add i32 %invariant.op3398.us, %i.cbe
  %i.dba = sext i32 %.reass3383.reass.us to i64
  %i.dbb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dba ; 8 uses
  br i1 %min.iters.check4534, label %vec.epilog.scalar.ph4557.preheader, label %vector.scevcheck4513

vector.scevcheck4513:                             ; preds = %iter.check4556
  %i.dbc = add i32 %i.cba, %i.ddt
  %i.dbd = icmp slt i32 %i.dbc, %i.cba
  %i.dbe = or i1 %i.dbd, %i.ddx
  br i1 %i.dbe, label %vec.epilog.scalar.ph4557.preheader, label %vector.memcheck4516

vector.memcheck4516:                              ; preds = %vector.scevcheck4513
  %bound04526 = icmp ult ptr %scevgep4518, %scevgep4522
  %bound14527 = icmp ult ptr %i.dbb, %scevgep4520
  %found.conflict4528 = and i1 %bound04526, %bound14527
  %bound04529 = icmp ult ptr %scevgep4518, %scevgep4525
  %bound14530 = icmp ult ptr %scevgep4524, %scevgep4520
  %found.conflict4531 = and i1 %bound04529, %bound14530
  %conflict.rdx4532 = or i1 %found.conflict4528, %found.conflict4531
  br i1 %conflict.rdx4532, label %vec.epilog.scalar.ph4557.preheader, label %vector.main.loop.iter.check4535

vector.main.loop.iter.check4535:                  ; preds = %vector.memcheck4516
  br i1 %min.iters.check4536, label %vec.epilog.ph4560, label %vector.ph4537

vector.ph4537:                                    ; preds = %vector.main.loop.iter.check4535
  %i.dbf = load double, ptr %i.dbb, align 8, !tbaa !9, !alias.scope !139
  %.scalar4671 = fneg double %i.dbf
  %i.dbg = insertelement <4 x double> poison, double %.scalar4671, i64 0
  %i.dbh = shufflevector <4 x double> %i.dbg, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4541

vector.body4541:                                  ; preds = %vector.body4541, %vector.ph4537
  %index4542 = phi i64 [ 0, %vector.ph4537 ], [ %index.next4551, %vector.body4541 ] ; 2 uses
  %i.dbi = trunc i64 %index4542 to i32
  %.reass4798 = add i32 %i.dbi, %invariant.op4797 ; 2 uses
  %i.dbj = add i32 %i.dcq, %.reass4798
  %i.dbk = sext i32 %i.dbj to i64
  %i.dbl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbk ; 4 uses
  %i.dbm = getelementptr inbounds nuw i8, ptr %i.dbl, i64 32
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.dbl, i64 64
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbl, i64 96
  %wide.load4543 = load <4 x double>, ptr %i.dbl, align 8, !tbaa !9, !alias.scope !142
  %wide.load4544 = load <4 x double>, ptr %i.dbm, align 8, !tbaa !9, !alias.scope !142
  %wide.load4545 = load <4 x double>, ptr %i.dbn, align 8, !tbaa !9, !alias.scope !142
  %wide.load4546 = load <4 x double>, ptr %i.dbo, align 8, !tbaa !9, !alias.scope !142
  %i.dbp = add i32 %i.cbd, %.reass4798
  %i.dbq = sext i32 %i.dbp to i64
  %i.dbr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbq ; 5 uses
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.dbr, i64 32 ; 2 uses
  %i.dbt = getelementptr inbounds nuw i8, ptr %i.dbr, i64 64 ; 2 uses
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbr, i64 96 ; 2 uses
  %wide.load4547 = load <4 x double>, ptr %i.dbr, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %wide.load4548 = load <4 x double>, ptr %i.dbs, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %wide.load4549 = load <4 x double>, ptr %i.dbt, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %wide.load4550 = load <4 x double>, ptr %i.dbu, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %i.dbv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbh, <4 x double> %wide.load4543, <4 x double> %wide.load4547)
  %i.dbw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbh, <4 x double> %wide.load4544, <4 x double> %wide.load4548)
  %i.dbx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbh, <4 x double> %wide.load4545, <4 x double> %wide.load4549)
  %i.dby = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbh, <4 x double> %wide.load4546, <4 x double> %wide.load4550)
  store <4 x double> %i.dbv, ptr %i.dbr, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  store <4 x double> %i.dbw, ptr %i.dbs, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  store <4 x double> %i.dbx, ptr %i.dbt, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  store <4 x double> %i.dby, ptr %i.dbu, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %index.next4551 = add nuw i64 %index4542, 16    ; 2 uses
  %i.dbz = icmp eq i64 %index.next4551, %n.vec4538
  br i1 %i.dbz, label %middle.block4552, label %vector.body4541, !llvm.loop !147

middle.block4552:                                 ; preds = %vector.body4541
  br i1 %cmp.n4553, label %._crit_edge3388.us, label %vec.epilog.iter.check4558

vec.epilog.iter.check4558:                        ; preds = %middle.block4552
  br i1 %min.epilog.iters.check4559, label %vec.epilog.scalar.ph4557.preheader, label %vec.epilog.ph4560, !prof !18

vec.epilog.ph4560:                                ; preds = %vector.main.loop.iter.check4535, %vec.epilog.iter.check4558
  %vec.epilog.resume.val4554 = phi i64 [ %n.vec4538, %vec.epilog.iter.check4558 ], [ 0, %vector.main.loop.iter.check4535 ]
  %i.dca = load double, ptr %i.dbb, align 8, !tbaa !9, !alias.scope !139
  %.scalar4672 = fneg double %i.dca
  %i.dcb = insertelement <4 x double> poison, double %.scalar4672, i64 0
  %i.dcc = shufflevector <4 x double> %i.dcb, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4564

vec.epilog.vector.body4564:                       ; preds = %vec.epilog.vector.body4564, %vec.epilog.ph4560
  %index4565 = phi i64 [ %vec.epilog.resume.val4554, %vec.epilog.ph4560 ], [ %index.next4568, %vec.epilog.vector.body4564 ] ; 2 uses
  %i.dcd = trunc i64 %index4565 to i32
  %.reass4800 = add i32 %i.dcd, %invariant.op4799 ; 2 uses
  %i.dce = add i32 %i.dcq, %.reass4800
  %i.dcf = sext i32 %i.dce to i64
  %i.dcg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dcf
  %wide.load4566 = load <4 x double>, ptr %i.dcg, align 8, !tbaa !9, !alias.scope !142
  %i.dch = add i32 %i.cbd, %.reass4800
  %i.dci = sext i32 %i.dch to i64
  %i.dcj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dci ; 2 uses
  %wide.load4567 = load <4 x double>, ptr %i.dcj, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %i.dck = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dcc, <4 x double> %wide.load4566, <4 x double> %wide.load4567)
  store <4 x double> %i.dck, ptr %i.dcj, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %index.next4568 = add nuw i64 %index4565, 4     ; 2 uses
  %i.dcl = icmp eq i64 %index.next4568, %n.vec4561
  br i1 %i.dcl, label %vec.epilog.middle.block4569, label %vec.epilog.vector.body4564, !llvm.loop !148

vec.epilog.middle.block4569:                      ; preds = %vec.epilog.vector.body4564
  br i1 %cmp.n4570, label %._crit_edge3388.us, label %vec.epilog.scalar.ph4557.preheader

vec.epilog.scalar.ph4557.preheader:               ; preds = %vector.memcheck4516, %vector.scevcheck4513, %iter.check4556, %vec.epilog.iter.check4558, %vec.epilog.middle.block4569
  %indvars.iv3737.ph = phi i64 [ %i.dcs, %iter.check4556 ], [ %i.dcs, %vector.scevcheck4513 ], [ %i.dcs, %vector.memcheck4516 ], [ %i.ddz, %vec.epilog.iter.check4558 ], [ %i.dea, %vec.epilog.middle.block4569 ] ; 4 uses
  %52 = sub i64 %i.dct, %indvars.iv3737.ph
  %xtraiter4741 = and i64 %52, 3                  ; 2 uses
  %lcmp.mod4742.not = icmp eq i64 %xtraiter4741, 0
  br i1 %lcmp.mod4742.not, label %vec.epilog.scalar.ph4563.prol.loopexit, label %vec.epilog.scalar.ph4563.prol

vec.epilog.scalar.ph4563.prol:                    ; preds = %vec.epilog.scalar.ph4557.preheader, %vec.epilog.scalar.ph4563.prol
  %indvars.iv3739.prol = phi i64 [ %indvars.iv.next3740.prol, %vec.epilog.scalar.ph4563.prol ], [ %indvars.iv3737.ph, %vec.epilog.scalar.ph4557.preheader ]
  %prol.iter4743 = phi i64 [ %prol.iter4743.next, %vec.epilog.scalar.ph4563.prol ], [ 0, %vec.epilog.scalar.ph4557.preheader ]
  %indvars.iv.next3740.prol = add nsw i64 %indvars.iv3739.prol, 1 ; 3 uses
  %53 = load double, ptr %i.dbb, align 8, !tbaa !9
  %54 = trunc nsw i64 %indvars.iv.next3740.prol to i32 ; 2 uses
  %55 = add i32 %i.dcq, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i8], ptr %i.p, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !9
  %59 = add i32 %i.cbd, %54
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %i.p, i64 %60 ; 2 uses
  %62 = load double, ptr %61, align 8, !tbaa !9
  %63 = fneg double %53
  %64 = call double @llvm.fmuladd.f64(double %63, double %58, double %62)
  store double %64, ptr %61, align 8, !tbaa !9
  %prol.iter4743.next = add i64 %prol.iter4743, 1 ; 2 uses
  %prol.iter4743.cmp.not = icmp eq i64 %prol.iter4743.next, %xtraiter4741
  br i1 %prol.iter4743.cmp.not, label %vec.epilog.scalar.ph4563.prol.loopexit, label %vec.epilog.scalar.ph4563.prol, !llvm.loop !149

vec.epilog.scalar.ph4563.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4563.prol, %vec.epilog.scalar.ph4557.preheader
  %indvars.iv3739.unr = phi i64 [ %indvars.iv3737.ph, %vec.epilog.scalar.ph4557.preheader ], [ %indvars.iv.next3740.prol, %vec.epilog.scalar.ph4563.prol ]
  %65 = sub i64 %indvars.iv3737.ph, %i.dct
  %66 = icmp ugt i64 %65, -4
  br i1 %66, label %._crit_edge3388.us, label %vec.epilog.scalar.ph4557

.lr.ph3396.us:                                    ; preds = %._crit_edge3378.us
  %i.dcm = mul i32 %.32608.us, %i.n               ; 5 uses
  %i.dcn = sext i32 %i.dcm to i64                 ; 2 uses
  %i.dco = getelementptr [8 x i8], ptr %i.p, i64 %i.dcn
  %i.dcp = getelementptr i8, ptr %i.dco, i64 8    ; 3 uses
  store i32 %i.byw, ptr %i.a, align 4, !tbaa !8
  store i32 %i.byx, ptr %i.b, align 4, !tbaa !8
  %.not2728.not3384.us = icmp slt i32 %i.bzu, %i.byy
  %reass.sub3513 = sub i32 %i.bxl, %.32608.us
  %invariant.op3398.us = add i32 %reass.sub3513, 1
  %reass.sub3514 = mul i32 %.32608.us, %.32608.us3515
  %i.dcq = add i32 %reass.sub3514, 1              ; 7 uses
  %i.dcr = sext i32 %i.bzv to i64                 ; 4 uses
  %i.dcs = sext i32 %i.bzu to i64                 ; 14 uses
  %i.dct = sext i32 %i.byy to i64                 ; 7 uses
  %i.dcu = xor i64 %i.dcs, -1
  %i.dcv = add nsw i64 %i.dcu, %i.dct             ; 2 uses
  %i.dcw = add nuw i32 %i.bxh, 1
  %i.dcx = mul i32 %i.n, %i.bzv                   ; 2 uses
  %i.dcy = add i32 %i.dcw, %i.dcx                 ; 2 uses
  %i.dcz = add nuw i32 %i.bxh, 2
  %i.dda = mul i32 %i.n, %.32608.us
  %i.ddb = add i32 %i.dcz, %i.dda                 ; 2 uses
  %i.ddc = mul nsw i64 %i.dcs, -8
  %scevgep4519 = getelementptr i8, ptr %5, i64 %i.ddc
  %i.ddd = add nsw i64 %i.o, %i.dct
  %i.dde = add i32 %i.bxl, 2
  %i.ddf = add nuw i32 %i.bxh, 2
  %i.ddg = mul i32 %i.n, %.32608.us
  %i.ddh = add i32 %i.ddf, %i.ddg
  %i.ddi = sext i32 %i.ddh to i64                 ; 2 uses
  %i.ddj = shl nsw i64 %i.ddi, 3
  %scevgep4524 = getelementptr i8, ptr %scevgep4523, i64 %i.ddj
  %i.ddk = add nsw i64 %i.o, %i.dct
  %i.ddl = add nsw i64 %i.ddk, %i.ddi
  %i.ddm = sub nsw i64 %i.ddl, %i.dcs
  %i.ddn = shl nsw i64 %i.ddm, 3
  %scevgep4525 = getelementptr i8, ptr %5, i64 %i.ddn
  %i.ddo = sub nsw i64 %i.dct, %i.dcs             ; 7 uses
  %i.ddp = add i32 %i.dcx, 1                      ; 2 uses
  %i.ddq = add i32 %i.bxl, 2
  %i.ddr = add i32 %i.dcm, 2
  %i.dds = shl nsw i64 %i.dcn, 3
  %scevgep4595 = getelementptr i8, ptr %scevgep4594, i64 %i.dds
  %invariant.op4801 = sub i32 1, %.32608.us
  %invariant.op4794 = sub i32 1, %.32608.us
  %invariant.op4796 = sub i32 1, %.32608.us
  %min.iters.check4534 = icmp ult i64 %i.ddo, 4
  %i.ddt = trunc i64 %i.dcv to i32                ; 2 uses
  %i.ddu = add i32 %i.ddb, %i.ddt
  %i.ddv = icmp slt i32 %i.ddu, %i.ddb
  %i.ddw = icmp ugt i64 %i.dcv, 4294967295
  %i.ddx = or i1 %i.ddv, %i.ddw
  %min.iters.check4536 = icmp ult i64 %i.ddo, 16
  %i.ddy = and i64 %i.ddo, 12
  %n.vec4538 = and i64 %i.ddo, -16                ; 4 uses
  %i.ddz = add nsw i64 %n.vec4538, %i.dcs
  %invariant.op4797 = add i32 %i.bzu, 1
  %cmp.n4553 = icmp eq i64 %i.ddo, %n.vec4538
  %min.epilog.iters.check4559 = icmp eq i64 %i.ddy, 0
  %n.vec4561 = and i64 %i.ddo, -4                 ; 3 uses
  %i.dea = add nsw i64 %n.vec4561, %i.dcs
  %invariant.op4799 = add i32 %i.bzu, 1
  %cmp.n4570 = icmp eq i64 %i.ddo, %n.vec4561
  br label %bb.dq

._crit_edge3397.us:                               ; preds = %._crit_edge3388.us
  store i32 %i.byy, ptr %i.c, align 4, !tbaa !8
  br label %bb.dr

.lr.ph3402.us:                                    ; preds = %bb.ds
  %indvars3747 = trunc i64 %indvars.iv3744 to i32 ; 2 uses
  %i.deb = mul nsw i64 %indvars.iv3744, %i.bb
  %i.dec = sub i32 %i.bzv, %indvars3747
  %i.ded = sext i32 %i.dec to i64
  %i.dee = getelementptr [8 x i8], ptr %i.p, i64 %i.deb
  %i.def = getelementptr [8 x i8], ptr %i.dee, i64 %i.ded
  %reass.sub3519 = mul i32 %i.bwy, %indvars3747
  %i.deg = add i32 %reass.sub3519, 1
  %i.deh = zext nneg i32 %i.cej to i64
  br label %bb.dt

.lr.ph3409.us:                                    ; preds = %bb.dr
  store i32 %i.bzu, ptr %i.b, align 4, !tbaa !8
  %reass.sub3518 = sub i32 %i.bxl, %.32608.us
  %i.dei = add i32 %reass.sub3518, 1
  %i.dej = zext nneg i32 %.32608.us to i64
  %i.dek = sext i32 %.42546.us to i64
  br label %bb.ds

._crit_edge3410.us:                               ; preds = %._crit_edge3403.us
  %i.del = add i32 %.32608.us, %.pre3819.a
  %smin3746 = call i32 @llvm.smin.i32(i32 %i.byx, i32 %i.bzu)
  store i32 %i.del, ptr %i.a, align 4, !tbaa !8
  store i32 %smin3746, ptr %i.c, align 4, !tbaa !8
  br label %bb.du

.lr.ph3416.us:                                    ; preds = %bb.ee
  %i.dem = load i32, ptr %2, align 4, !tbaa !8
  %i.den = add i32 %i.cig, %smax3754
  %i.deo = sub i32 1, %i.den
  %i.dep = mul i32 %i.chx, %i.deo
  %i.deq = add i32 %indvars.iv3750, %i.dep
  %i.der = sext i32 %i.deq to i64
  %i.des = sext i32 %i.chx to i64                 ; 2 uses
  %i.det = sext i32 %i.dem to i64
  %i.deu = sext i32 %.3.us to i64                 ; 2 uses
  %invariant.gep4152 = getelementptr [8 x i8], ptr %i.p, i64 %i.des
  %invariant.gep4154 = getelementptr [8 x i8], ptr %i.w, i64 %i.det
  br label %bb.ef

.lr.ph3421.us:                                    ; preds = %bb.ei
  %i.dev = add nsw i32 %i.cij, -1
  %i.dew = mul nsw i32 %i.dev, %i.n               ; 2 uses
  %i.dex = add i32 %i.dew, 2
  %i.dey = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.pre3959.a
  %i.dez = sext i32 %.pre3951.a to i64            ; 2 uses
  %invariant.gep4156 = getelementptr [8 x i8], ptr %i.p, i64 %i.dez
  br label %bb.ej

.lr.ph3427.us:                                    ; preds = %bb.ek
  %i.dfa = add i32 %i.cid, -1
  %.pre3829 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.el

.lr.ph3437.us:                                    ; preds = %bb.dy
  %i.dfb = mul nsw i32 %.32608.us, %i.q
  %i.dfc = add i32 %i.dfb, 1
  %i.dfd = add i32 %.32608.us, %i.ay
  %.reass4167.reass = add i32 %.42551.us, %invariant.op4802
  %i.dfe = add nuw i32 %.32608.us, 1
  %i.dff = add nsw i32 %.32608.us, -1
  %i.dfg = add nuw i32 %.32608.us, 2
  %.reass4169.reass = add i32 %.42551.us, %invariant.op4803.a
  %i.dfh = zext nneg i32 %.32608.us to i64
  br label %bb.dz

.lr.ph3446.us:                                    ; preds = %._crit_edge3442.us
  %i.dfi = load i32, ptr %4, align 4, !tbaa !8
  %i.dfj = sub i32 %i.ay, %i.dfi                  ; 2 uses
  %i.dfk = load i32, ptr %2, align 4, !tbaa !8
  %invariant.op3451.us = add i32 %i.dfj, %i.dfk
  %i.dfl = sext i32 %i.cpi to i64
  %i.dfm = sext i32 %i.cpc to i64
  %i.dfn = sext i32 %i.cnr to i64                 ; 2 uses
  br label %bb.ey

.lr.ph3456.us:                                    ; preds = %bb.ey
  store i32 %i.cnr, ptr %i.c, align 4, !tbaa !8
  store i32 %i.cpc, ptr %i.d, align 4, !tbaa !8
  %i.dfo = load i32, ptr %4, align 4, !tbaa !8
  %invariant.op3458.us = sub i32 %i.ay, %i.dfo    ; 2 uses
  %i.dfp = load i32, ptr %2, align 4, !tbaa !8
  %invariant.op3462.us = add i32 %invariant.op3458.us, %i.dfp
  %i.dfq = sext i32 %i.cpi to i64
  %i.dfr = sext i32 %i.cpc to i64                 ; 2 uses
  %i.dfs = sext i32 %i.cnr to i64                 ; 2 uses
  %invariant.gep4158 = getelementptr [8 x i8], ptr %i.p, i64 %i.dfr
  br label %bb.ez

.lr.ph3466.us:                                    ; preds = %bb.er
  %i.dft = sub i32 %.42551.us, %i.ay
  %i.dfu = add nuw i32 %.32608.us, 1
  %i.dfv = add i32 %.32608.us, %i.ay
  br label %bb.es

.lr.ph3471.us:                                    ; preds = %bb.fe
  %i.dfw = add nsw i32 %i.crs, -1
  %i.dfx = mul nsw i32 %i.dfw, %i.n               ; 2 uses
  %i.dfy = add i32 %i.dfx, 2
  %i.dfz = sext i32 %i.cru to i64                 ; 2 uses
  %invariant.gep4160 = getelementptr [8 x i8], ptr %i.p, i64 %i.dfz
  br label %bb.ff

.lr.ph3477.us:                                    ; preds = %bb.fg
  %i.dga = add i32 %i.crl, -1
  %.pre3840 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.fh

.lr.ph3485.us:                                    ; preds = %._crit_edge3467.us
  %i.dgb = sub i32 %.42551.us, %i.ay
  %i.dgc = add nuw i32 %.32608.us, 1
  br label %bb.fd

.lr.ph3489.us:                                    ; preds = %bb.fl
  %i.dgd = add i32 %i.cwg, -1
  br label %bb.fm

.lr.ph3494.us:                                    ; preds = %._crit_edge3486.us
  %.reass4171.reass = add i32 %.42551.us, %invariant.op4804
  %i.dge = add nuw i32 %.32608.us, 1
  %.pre3906 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br label %bb.fl

.lr.ph3499.us:                                    ; preds = %bb.fp
  %i.dgf = load i32, ptr %2, align 4, !tbaa !8
  %i.dgg = sext i32 %i.dgf to i64                 ; 9 uses
  %i.dgh = sext i32 %.pre3819.pre.pre to i64      ; 5 uses
  %i.dgi = sub i32 %i.cxp, %i.cxq
  %wide.trip.count3778 = zext i32 %i.dgi to i64   ; 4 uses
  %invariant.gep4162 = getelementptr [8 x i8], ptr %i.w, i64 %i.dgh ; 6 uses
  %invariant.gep4164 = getelementptr [8 x i8], ptr %i.w, i64 %i.dgh ; 6 uses
  %i.dgj = add nsw i64 %wide.trip.count3778, -2   ; 3 uses
  %min.iters.check4500 = icmp ult i64 %i.dgj, 16
  br i1 %min.iters.check4500, label %scalar.ph4499.preheader, label %vector.memcheck4491

vector.memcheck4491:                              ; preds = %.lr.ph3499.us
  %i.dgk = shl nsw i64 %i.dgg, 3
  %diff.check4492 = icmp ugt i64 %i.dgk, -64
  %i.dgl = shl nsw i64 %i.dgh, 3
  %diff.check4493 = icmp ugt i64 %i.dgl, -64
  %conflict.rdx4494 = or i1 %diff.check4492, %diff.check4493
  %i.dgm = sub nsw i64 %i.dgh, %i.dgg
  %i.dgn = shl nsw i64 %i.dgm, 3
  %i.dgo = add nsw i64 %i.dgn, -1
  %diff.check4495 = icmp ult i64 %i.dgo, 63
  %conflict.rdx4496 = or i1 %conflict.rdx4494, %diff.check4495
  %i.dgp = add nsw i64 %i.dgg, %i.dgh
  %i.dgq = shl nsw i64 %i.dgp, 3
  %diff.check4497 = icmp ugt i64 %i.dgq, -64
  %conflict.rdx4498 = or i1 %conflict.rdx4496, %diff.check4497
  br i1 %conflict.rdx4498, label %scalar.ph4499.preheader, label %vector.ph4501

vector.ph4501:                                    ; preds = %vector.memcheck4491
  %n.vec4502 = and i64 %i.dgj, -8                 ; 3 uses
  %i.dgr = or disjoint i64 %n.vec4502, 2
  br label %vector.body4503

vector.body4503:                                  ; preds = %vector.body4503, %vector.ph4501
  %index4504 = phi i64 [ 0, %vector.ph4501 ], [ %index.next4509, %vector.body4503 ] ; 2 uses
  %i.dgs = or disjoint i64 %index4504, 2          ; 3 uses
  %i.dgt = add nsw i64 %i.dgs, %i.dgg             ; 2 uses
  %i.dgu = getelementptr [8 x i8], ptr %invariant.gep4162, i64 %i.dgt ; 2 uses
  %i.dgv = getelementptr i8, ptr %i.dgu, i64 32
  %wide.load4505 = load <4 x double>, ptr %i.dgu, align 8, !tbaa !9
  %wide.load4506 = load <4 x double>, ptr %i.dgv, align 8, !tbaa !9
  %i.dgw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dgt ; 2 uses
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.dgw, i64 32
  store <4 x double> %wide.load4505, ptr %i.dgw, align 8, !tbaa !9
  store <4 x double> %wide.load4506, ptr %i.dgx, align 8, !tbaa !9
  %i.dgy = getelementptr [8 x i8], ptr %invariant.gep4164, i64 %i.dgs ; 2 uses
  %i.dgz = getelementptr i8, ptr %i.dgy, i64 32
  %wide.load4507 = load <4 x double>, ptr %i.dgy, align 8, !tbaa !9
  %wide.load4508 = load <4 x double>, ptr %i.dgz, align 8, !tbaa !9
  %i.dha = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dgs ; 2 uses
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dha, i64 32
  store <4 x double> %wide.load4507, ptr %i.dha, align 8, !tbaa !9
  store <4 x double> %wide.load4508, ptr %i.dhb, align 8, !tbaa !9
  %index.next4509 = add nuw i64 %index4504, 8     ; 2 uses
  %i.dhc = icmp eq i64 %index.next4509, %n.vec4502
  br i1 %i.dhc, label %middle.block4510, label %vector.body4503, !llvm.loop !150

middle.block4510:                                 ; preds = %vector.body4503
  %cmp.n4511 = icmp eq i64 %i.dgj, %n.vec4502
  br i1 %cmp.n4511, label %.outer.us.backedge, label %scalar.ph4499.preheader

.outer.us.backedge:                               ; preds = %scalar.ph4499.prol.loopexit, %scalar.ph4499, %middle.block4510, %._crit_edge3495.us.thread, %bb.fp, %._crit_edge3495.us
  %.pre3819.be = phi i32 [ %.pre3819.pre.pre4095, %._crit_edge3495.us.thread ], [ %.pre3819.pre.pre, %._crit_edge3495.us ], [ %.pre3819.pre.pre, %bb.fp ], [ %.pre3819.pre.pre, %middle.block4510 ], [ %.pre3819.pre.pre, %scalar.ph4499 ], [ %.pre3819.pre.pre, %scalar.ph4499.prol.loopexit ]
  %.be = phi i32 [ %.ph4094, %._crit_edge3495.us.thread ], [ %.pre3846, %._crit_edge3495.us ], [ %.pre3846, %bb.fp ], [ %.pre3846, %middle.block4510 ], [ %.pre3846, %scalar.ph4499 ], [ %.pre3846, %scalar.ph4499.prol.loopexit ]
  br label %.outer.us

scalar.ph4499.preheader:                          ; preds = %vector.memcheck4491, %.lr.ph3499.us, %middle.block4510
  %indvars.iv3775.ph = phi i64 [ 2, %vector.memcheck4491 ], [ 2, %.lr.ph3499.us ], [ %i.dgr, %middle.block4510 ] ; 4 uses
  %i.dhd = sub nsw i64 %wide.trip.count3778, %indvars.iv3775.ph
  %xtraiter4735 = and i64 %i.dhd, 3               ; 2 uses
  %lcmp.mod4736.not = icmp eq i64 %xtraiter4735, 0
  br i1 %lcmp.mod4736.not, label %scalar.ph4499.prol.loopexit, label %scalar.ph4499.prol

scalar.ph4499.prol:                               ; preds = %scalar.ph4499.preheader, %scalar.ph4499.prol
  %indvars.iv3775.prol = phi i64 [ %indvars.iv.next3776.prol, %scalar.ph4499.prol ], [ %indvars.iv3775.ph, %scalar.ph4499.preheader ] ; 4 uses
  %prol.iter4737 = phi i64 [ %prol.iter4737.next, %scalar.ph4499.prol ], [ 0, %scalar.ph4499.preheader ]
  %i.dhe = add nsw i64 %indvars.iv3775.prol, %i.dgg ; 2 uses
  %gep4163.prol = getelementptr [8 x i8], ptr %invariant.gep4162, i64 %i.dhe
  %i.dhf = load double, ptr %gep4163.prol, align 8, !tbaa !9
  %i.dhg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dhe
  store double %i.dhf, ptr %i.dhg, align 8, !tbaa !9
  %gep4165.prol = getelementptr [8 x i8], ptr %invariant.gep4164, i64 %indvars.iv3775.prol
  %i.dhh = load double, ptr %gep4165.prol, align 8, !tbaa !9
  %i.dhi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3775.prol
  store double %i.dhh, ptr %i.dhi, align 8, !tbaa !9
  %indvars.iv.next3776.prol = add nuw nsw i64 %indvars.iv3775.prol, 1 ; 2 uses
  %prol.iter4737.next = add i64 %prol.iter4737, 1 ; 2 uses
  %prol.iter4737.cmp.not = icmp eq i64 %prol.iter4737.next, %xtraiter4735
  br i1 %prol.iter4737.cmp.not, label %scalar.ph4499.prol.loopexit, label %scalar.ph4499.prol, !llvm.loop !151

scalar.ph4499.prol.loopexit:                      ; preds = %scalar.ph4499.prol, %scalar.ph4499.preheader
  %indvars.iv3775.unr = phi i64 [ %indvars.iv3775.ph, %scalar.ph4499.preheader ], [ %indvars.iv.next3776.prol, %scalar.ph4499.prol ]
  %i.dhj = sub nsw i64 %indvars.iv3775.ph, %wide.trip.count3778
  %i.dhk = icmp ugt i64 %i.dhj, -4
  br i1 %i.dhk, label %.outer.us.backedge, label %scalar.ph4499

.outer:                                           ; preds = %.outer.backedge, %.outer.preheader
  %.pre3788 = phi i32 [ %.pre3786, %.outer.preheader ], [ %.pre3788.be, %.outer.backedge ] ; 6 uses
  %i.dhl = phi i32 [ %i.bp, %.outer.preheader ], [ %.be4675, %.outer.backedge ] ; 3 uses
  %.22607.ph = phi i32 [ 0, %.outer.preheader ], [ %.32608, %.outer.backedge ] ; 4 uses
  %.32550.ph = phi i32 [ %.22549, %.outer.preheader ], [ %.42551, %.outer.backedge ]
  %.32545.ph = phi i32 [ %.22544, %.outer.preheader ], [ %.42546, %.outer.backedge ]
  %.32541.ph = phi i32 [ %.22540, %.outer.preheader ], [ %.4, %.outer.backedge ]
  %.12533.ph = phi i32 [ 1, %.outer.preheader ], [ %.125332894, %.outer.backedge ]
  %.not26983209 = icmp eq i32 %.12533.ph, 0
  br i1 %.not26983209, label %bb.fq, label %.lr.ph3212

.lr.ph3212:                                       ; preds = %.outer
  %i.dhm = add nuw nsw i32 %.22607.ph, 1          ; 4 uses
  %i.dhn = sub nsw i32 %i.ay, %i.dhm
  %i.dho = call i32 @llvm.smin.i32(i32 %i.dhl, i32 %i.dhn) ; 2 uses
  store i32 %i.dho, ptr %i.l, align 4, !tbaa !8
  %i.dhp = sub nsw i32 %i.dhm, %.pre3788          ; 3 uses
  %i.dhq = call i32 @llvm.smax.i32(i32 %i.dhp, i32 1) ; 2 uses
  %i.dhr = add nsw i32 %i.dho, %i.dhm
  %i.dhs = load i32, ptr %i.j, align 4, !tbaa !8
  %i.dht = sub i32 %i.dhr, %i.dhs                 ; 2 uses
  %.not2700 = icmp slt i32 %.22607.ph, %i.ay
  br i1 %.not2700, label %.lr.ph3212.split.us, label %.lr.ph3212.split

.lr.ph3212.split.us:                              ; preds = %.lr.ph3212
  store i32 %i.dhp, ptr %i.d, align 4, !tbaa !8
  %i.dhu = add nuw nsw i32 %.22607.ph, 2
  br label %bb.fr

.lr.ph3212.split:                                 ; preds = %.lr.ph3212
  %i.dhv = icmp eq i32 %.pre3788, 0
  br i1 %i.dhv, label %.loopexit2877, label %._crit_edge3213

._crit_edge3213:                                  ; preds = %.lr.ph3212.split
  store i32 %i.dhp, ptr %i.d, align 4, !tbaa !8
  br label %bb.fq

bb.fq:                                            ; preds = %._crit_edge3213, %.outer
  %.32550.lcssa = phi i32 [ %i.ba, %._crit_edge3213 ], [ %.32550.ph, %.outer ]
  %.32545.lcssa = phi i32 [ %i.dhq, %._crit_edge3213 ], [ %.32545.ph, %.outer ]
  %.32541.lcssa = phi i32 [ %i.dht, %._crit_edge3213 ], [ %.32541.ph, %.outer ]
  %i.dhw = sub nsw i32 %.22607.ph, %.pre3788      ; 2 uses
  %i.dhx = icmp slt i32 %i.dhw, 2
  br i1 %i.dhx, label %.loopexit2877, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph3212.split.us, %bb.fq
  %.125332894 = phi i32 [ 0, %bb.fq ], [ 1, %.lr.ph3212.split.us ]
  %.not26982891 = phi i1 [ true, %bb.fq ], [ false, %.lr.ph3212.split.us ] ; 6 uses
  %.32608 = phi i32 [ %i.dhw, %bb.fq ], [ %i.dhm, %.lr.ph3212.split.us ] ; 50 uses
  %.42551 = phi i32 [ %.32550.lcssa, %bb.fq ], [ %i.dhu, %.lr.ph3212.split.us ] ; 6 uses
  %.42546 = phi i32 [ %.32545.lcssa, %bb.fq ], [ %i.dhq, %.lr.ph3212.split.us ] ; 10 uses
  %.4 = phi i32 [ %.32541.lcssa, %bb.fq ], [ %i.dht, %.lr.ph3212.split.us ] ; 2 uses
  %i.dhy = load i32, ptr %i.l, align 4, !tbaa !8  ; 6 uses
  %i.dhz = sub nsw i32 %i.ay, %i.dhy
  %i.dia = icmp slt i32 %.32608, %i.dhz
  br i1 %i.dia, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.dib = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %storemerge = phi i32 [ %i.dib, %bb.fs ], [ %i.ay, %bb.fr ]
  store i32 %storemerge, ptr %i.i, align 4, !tbaa !8
  br i1 %.not26982891, label %bb.gd, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.dic = mul nsw i32 %.32608, %i.q
  %i.did = add nsw i32 %i.dic, %i.ac
  %i.die = sext i32 %i.did to i64
  %i.dif = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.die
  %i.dig = load double, ptr %i.dif, align 8, !tbaa !9 ; 13 uses
  store i32 %.32608, ptr %i.c, align 4, !tbaa !8
  %.not27293223 = icmp sgt i32 %.42546, %.32608   ; 2 uses
  br i1 %.not27293223, label %._crit_edge3227, label %iter.check4476

iter.check4476:                                   ; preds = %bb.fu
  %i.dih = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.dii = mul i32 %.32608, %.32608.us3515        ; 2 uses
  %invariant.op3228 = add i32 %i.dii, %i.dih      ; 7 uses
  %i.dij = zext i32 %.42546 to i64                ; 4 uses
  %i.dik = add nuw i32 %.32608, 1
  %i.dil = sub i32 %.32608, %.42546               ; 3 uses
  %i.dim = zext i32 %i.dil to i64
  %i.din = add nuw nsw i64 %i.dim, 1              ; 5 uses
  %min.iters.check4458 = icmp ult i32 %i.dil, 3
  br i1 %min.iters.check4458, label %vec.epilog.scalar.ph4477.preheader, label %vector.scevcheck4456

vector.scevcheck4456:                             ; preds = %iter.check4476
  %i.dio = sub i32 %.32608, %.42546
  %i.dip = add i32 %.42546, %i.dih
  %i.diq = add i32 %i.dip, %i.dii                 ; 2 uses
  %i.dir = add i32 %i.diq, %i.dio
  %i.dis = icmp slt i32 %i.dir, %i.diq
  br i1 %i.dis, label %vec.epilog.scalar.ph4477.preheader, label %vector.main.loop.iter.check4459

vector.main.loop.iter.check4459:                  ; preds = %vector.scevcheck4456
  %min.iters.check4460 = icmp ult i32 %i.dil, 15
  br i1 %min.iters.check4460, label %vec.epilog.ph4480, label %vector.ph4461

vector.ph4461:                                    ; preds = %vector.main.loop.iter.check4459
  %i.dit = and i64 %i.din, 12
  %n.vec4462 = and i64 %i.din, 8589934576         ; 4 uses
  %i.diu = add nuw nsw i64 %n.vec4462, %i.dij
  %broadcast.splatinsert4463 = insertelement <4 x double> poison, double %i.dig, i64 0
  %broadcast.splat4464 = shufflevector <4 x double> %broadcast.splatinsert4463, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4772 = add i32 %.42546, %invariant.op3228
  br label %vector.body4465

vector.body4465:                                  ; preds = %vector.body4465, %vector.ph4461
  %index4466 = phi i64 [ 0, %vector.ph4461 ], [ %index.next4471, %vector.body4465 ] ; 2 uses
  %i.div = trunc i64 %index4466 to i32
  %.reass4773 = add i32 %i.div, %invariant.op4772
  %i.diw = sext i32 %.reass4773 to i64
  %i.dix = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.diw ; 5 uses
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dix, i64 32 ; 2 uses
  %i.diz = getelementptr inbounds nuw i8, ptr %i.dix, i64 64 ; 2 uses
  %i.dja = getelementptr inbounds nuw i8, ptr %i.dix, i64 96 ; 2 uses
  %wide.load4467 = load <4 x double>, ptr %i.dix, align 8, !tbaa !9
  %wide.load4468 = load <4 x double>, ptr %i.diy, align 8, !tbaa !9
  %wide.load4469 = load <4 x double>, ptr %i.diz, align 8, !tbaa !9
  %wide.load4470 = load <4 x double>, ptr %i.dja, align 8, !tbaa !9
  %i.djb = fdiv <4 x double> %wide.load4467, %broadcast.splat4464
  %i.djc = fdiv <4 x double> %wide.load4468, %broadcast.splat4464
  %i.djd = fdiv <4 x double> %wide.load4469, %broadcast.splat4464
  %i.dje = fdiv <4 x double> %wide.load4470, %broadcast.splat4464
  store <4 x double> %i.djb, ptr %i.dix, align 8, !tbaa !9
  store <4 x double> %i.djc, ptr %i.diy, align 8, !tbaa !9
  store <4 x double> %i.djd, ptr %i.diz, align 8, !tbaa !9
  store <4 x double> %i.dje, ptr %i.dja, align 8, !tbaa !9
  %index.next4471 = add nuw i64 %index4466, 16    ; 2 uses
  %i.djf = icmp eq i64 %index.next4471, %n.vec4462
  br i1 %i.djf, label %middle.block4472, label %vector.body4465, !llvm.loop !152

middle.block4472:                                 ; preds = %vector.body4465
  %cmp.n4473 = icmp eq i64 %i.din, %n.vec4462
  br i1 %cmp.n4473, label %._crit_edge3227, label %vec.epilog.iter.check4478

vec.epilog.iter.check4478:                        ; preds = %middle.block4472
  %min.epilog.iters.check4479 = icmp eq i64 %i.dit, 0
  br i1 %min.epilog.iters.check4479, label %vec.epilog.scalar.ph4477.preheader, label %vec.epilog.ph4480, !prof !18

vec.epilog.ph4480:                                ; preds = %vector.main.loop.iter.check4459, %vec.epilog.iter.check4478
  %vec.epilog.resume.val4474 = phi i64 [ %n.vec4462, %vec.epilog.iter.check4478 ], [ 0, %vector.main.loop.iter.check4459 ]
  %n.vec4481 = and i64 %i.din, 8589934588         ; 3 uses
  %i.djg = add nuw nsw i64 %n.vec4481, %i.dij
  %broadcast.splatinsert4482 = insertelement <4 x double> poison, double %i.dig, i64 0
  %broadcast.splat4483 = shufflevector <4 x double> %broadcast.splatinsert4482, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4774 = add i32 %.42546, %invariant.op3228
  br label %vec.epilog.vector.body4484

vec.epilog.vector.body4484:                       ; preds = %vec.epilog.vector.body4484, %vec.epilog.ph4480
  %index4485 = phi i64 [ %vec.epilog.resume.val4474, %vec.epilog.ph4480 ], [ %index.next4487, %vec.epilog.vector.body4484 ] ; 2 uses
  %i.djh = trunc i64 %index4485 to i32
  %.reass4775 = add i32 %i.djh, %invariant.op4774
  %i.dji = sext i32 %.reass4775 to i64
  %i.djj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dji ; 2 uses
  %wide.load4486 = load <4 x double>, ptr %i.djj, align 8, !tbaa !9
  %i.djk = fdiv <4 x double> %wide.load4486, %broadcast.splat4483
  store <4 x double> %i.djk, ptr %i.djj, align 8, !tbaa !9
  %index.next4487 = add nuw i64 %index4485, 4     ; 2 uses
  %i.djl = icmp eq i64 %index.next4487, %n.vec4481
  br i1 %i.djl, label %vec.epilog.middle.block4488, label %vec.epilog.vector.body4484, !llvm.loop !153

vec.epilog.middle.block4488:                      ; preds = %vec.epilog.vector.body4484
  %cmp.n4489 = icmp eq i64 %i.din, %n.vec4481
  br i1 %cmp.n4489, label %._crit_edge3227, label %vec.epilog.scalar.ph4477.preheader

vec.epilog.scalar.ph4477.preheader:               ; preds = %vector.scevcheck4456, %iter.check4476, %vec.epilog.iter.check4478, %vec.epilog.middle.block4488
  %indvars.iv3661.ph = phi i64 [ %i.dij, %iter.check4476 ], [ %i.dij, %vector.scevcheck4456 ], [ %i.diu, %vec.epilog.iter.check4478 ], [ %i.djg, %vec.epilog.middle.block4488 ] ; 3 uses
  %i.djm = add i32 %.32608, 1
  %i.djn = trunc i64 %indvars.iv3661.ph to i32    ; 2 uses
  %i.djo = sub i32 %i.djm, %i.djn
  %i.djp = sub i32 %.32608, %i.djn
  %xtraiter4704 = and i32 %i.djo, 3               ; 2 uses
  %lcmp.mod4705.not = icmp eq i32 %xtraiter4704, 0
  br i1 %lcmp.mod4705.not, label %vec.epilog.scalar.ph4477.prol.loopexit, label %vec.epilog.scalar.ph4477.prol

vec.epilog.scalar.ph4477.prol:                    ; preds = %vec.epilog.scalar.ph4477.preheader, %vec.epilog.scalar.ph4477.prol
  %indvars.iv3661.prol = phi i64 [ %indvars.iv.next3662.prol, %vec.epilog.scalar.ph4477.prol ], [ %indvars.iv3661.ph, %vec.epilog.scalar.ph4477.preheader ] ; 2 uses
  %prol.iter4706 = phi i32 [ %prol.iter4706.next, %vec.epilog.scalar.ph4477.prol ], [ 0, %vec.epilog.scalar.ph4477.preheader ]
  %i.djq = trunc i64 %indvars.iv3661.prol to i32
  %.reass3229.prol = add i32 %invariant.op3228, %i.djq
  %i.djr = sext i32 %.reass3229.prol to i64
  %i.djs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.djr ; 2 uses
  %i.djt = load double, ptr %i.djs, align 8, !tbaa !9
  %i.dju = fdiv double %i.djt, %i.dig
  store double %i.dju, ptr %i.djs, align 8, !tbaa !9
  %indvars.iv.next3662.prol = add i64 %indvars.iv3661.prol, 1 ; 2 uses
  %prol.iter4706.next = add i32 %prol.iter4706, 1 ; 2 uses
  %prol.iter4706.cmp.not = icmp eq i32 %prol.iter4706.next, %xtraiter4704
  br i1 %prol.iter4706.cmp.not, label %vec.epilog.scalar.ph4477.prol.loopexit, label %vec.epilog.scalar.ph4477.prol, !llvm.loop !154

vec.epilog.scalar.ph4477.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4477.prol, %vec.epilog.scalar.ph4477.preheader
  %indvars.iv3661.unr = phi i64 [ %indvars.iv3661.ph, %vec.epilog.scalar.ph4477.preheader ], [ %indvars.iv.next3662.prol, %vec.epilog.scalar.ph4477.prol ]
  %i.djv = icmp ult i32 %i.djp, 3
  br i1 %i.djv, label %._crit_edge3227, label %vec.epilog.scalar.ph4477.preheader.new

vec.epilog.scalar.ph4477.preheader.new:           ; preds = %vec.epilog.scalar.ph4477.prol.loopexit
  %invariant.op4776 = add i32 1, %invariant.op3228
  %invariant.op4777 = add i32 2, %invariant.op3228
  %invariant.op4778 = add i32 3, %invariant.op3228
  br label %vec.epilog.scalar.ph4477

vec.epilog.scalar.ph4477:                         ; preds = %vec.epilog.scalar.ph4477, %vec.epilog.scalar.ph4477.preheader.new
  %indvars.iv3661 = phi i64 [ %indvars.iv3661.unr, %vec.epilog.scalar.ph4477.preheader.new ], [ %indvars.iv.next3662.3, %vec.epilog.scalar.ph4477 ] ; 5 uses
  %i.djw = trunc i64 %indvars.iv3661 to i32
  %.reass3229 = add i32 %invariant.op3228, %i.djw
  %i.djx = sext i32 %.reass3229 to i64
  %i.djy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.djx ; 2 uses
  %i.djz = load double, ptr %i.djy, align 8, !tbaa !9
  %i.dka = fdiv double %i.djz, %i.dig
  store double %i.dka, ptr %i.djy, align 8, !tbaa !9
  %i.dkb = trunc i64 %indvars.iv3661 to i32
  %.reass3229.1.reass = add i32 %i.dkb, %invariant.op4776
  %i.dkc = sext i32 %.reass3229.1.reass to i64
  %i.dkd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dkc ; 2 uses
  %i.dke = load double, ptr %i.dkd, align 8, !tbaa !9
  %i.dkf = fdiv double %i.dke, %i.dig
  store double %i.dkf, ptr %i.dkd, align 8, !tbaa !9
  %i.dkg = trunc i64 %indvars.iv3661 to i32
  %.reass3229.2.reass = add i32 %i.dkg, %invariant.op4777
  %i.dkh = sext i32 %.reass3229.2.reass to i64
  %i.dki = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dkh ; 2 uses
  %i.dkj = load double, ptr %i.dki, align 8, !tbaa !9
  %i.dkk = fdiv double %i.dkj, %i.dig
  store double %i.dkk, ptr %i.dki, align 8, !tbaa !9
  %i.dkl = trunc i64 %indvars.iv3661 to i32
  %.reass3229.3.reass = add i32 %i.dkl, %invariant.op4778
  %i.dkm = sext i32 %.reass3229.3.reass to i64
  %i.dkn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dkm ; 2 uses
  %i.dko = load double, ptr %i.dkn, align 8, !tbaa !9
  %i.dkp = fdiv double %i.dko, %i.dig
  store double %i.dkp, ptr %i.dkn, align 8, !tbaa !9
  %indvars.iv.next3662.3 = add nsw i64 %indvars.iv3661, 4 ; 2 uses
  %lftr.wideiv3664.3 = trunc i64 %indvars.iv.next3662.3 to i32
  %exitcond3665.not.3 = icmp eq i32 %i.dik, %lftr.wideiv3664.3
  br i1 %exitcond3665.not.3, label %._crit_edge3227, label %vec.epilog.scalar.ph4477, !llvm.loop !155

._crit_edge3227:                                  ; preds = %vec.epilog.scalar.ph4477.prol.loopexit, %vec.epilog.scalar.ph4477, %middle.block4472, %vec.epilog.middle.block4488, %bb.fu
  %i.dkq = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  store i32 %i.dkq, ptr %i.d, align 4, !tbaa !8
  %i.dkr = add i32 %.pre3788, %.32608             ; 4 uses
  store i32 %i.dkr, ptr %i.a, align 4, !tbaa !8
  %i.dks = call i32 @llvm.smin.i32(i32 %i.dkq, i32 %i.dkr) ; 7 uses
  %.not27313230 = icmp sgt i32 %.32608, %i.dks
  br i1 %.not27313230, label %._crit_edge3234, label %.lr.ph3233

.lr.ph3233:                                       ; preds = %._crit_edge3227
  %i.dkt = load i32, ptr %i.j, align 4, !tbaa !8  ; 5 uses
  %i.dku = zext nneg i32 %.32608 to i64           ; 2 uses
  %i.dkv = add nuw i32 %i.dks, 1
  %i.dkw = add i32 %i.dks, 1
  %i.dkx = sub i32 %i.dkw, %.32608
  %i.dky = sub i32 %i.dks, %.32608
  %xtraiter4709 = and i32 %i.dkx, 3               ; 2 uses
  %lcmp.mod4710.not = icmp eq i32 %xtraiter4709, 0
  br i1 %lcmp.mod4710.not, label %.prol.loopexit4708, label %.prol.preheader4707

.prol.preheader4707:                              ; preds = %.lr.ph3233, %.prol.preheader4707
  %indvars.iv3666.prol = phi i64 [ %indvars.iv.next3667.prol, %.prol.preheader4707 ], [ %i.dku, %.lr.ph3233 ] ; 3 uses
  %prol.iter4711 = phi i32 [ %prol.iter4711.next, %.prol.preheader4707 ], [ 0, %.lr.ph3233 ]
  %i.dkz = trunc nsw i64 %indvars.iv3666.prol to i32
  %i.dla = sub i32 %.32608, %i.dkz
  %i.dlb = trunc i64 %indvars.iv3666.prol to i32
  %i.dlc = mul i32 %i.n, %i.dlb
  %i.dld = add i32 %i.dla, %i.dlc
  %i.dle = add i32 %i.dld, %i.dkt
  %i.dlf = sext i32 %i.dle to i64
  %i.dlg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dlf ; 2 uses
  %i.dlh = load double, ptr %i.dlg, align 8, !tbaa !9
  %i.dli = fdiv double %i.dlh, %i.dig
  store double %i.dli, ptr %i.dlg, align 8, !tbaa !9
  %indvars.iv.next3667.prol = add nuw nsw i64 %indvars.iv3666.prol, 1 ; 2 uses
  %prol.iter4711.next = add i32 %prol.iter4711, 1 ; 2 uses
  %prol.iter4711.cmp.not = icmp eq i32 %prol.iter4711.next, %xtraiter4709
  br i1 %prol.iter4711.cmp.not, label %.prol.loopexit4708, label %.prol.preheader4707, !llvm.loop !156

.prol.loopexit4708:                               ; preds = %.prol.preheader4707, %.lr.ph3233
  %indvars.iv3666.unr = phi i64 [ %i.dku, %.lr.ph3233 ], [ %indvars.iv.next3667.prol, %.prol.preheader4707 ]
  %i.dlj = icmp ult i32 %i.dky, 3
  br i1 %i.dlj, label %._crit_edge3234, label %.lr.ph3233.new

.lr.ph3233.new:                                   ; preds = %.prol.loopexit4708, %.lr.ph3233.new
  %indvars.iv3666 = phi i64 [ %indvars.iv.next3667.3, %.lr.ph3233.new ], [ %indvars.iv3666.unr, %.prol.loopexit4708 ] ; 6 uses
  %i.dlk = trunc nsw i64 %indvars.iv3666 to i32
  %i.dll = sub i32 %.32608, %i.dlk
  %i.dlm = trunc i64 %indvars.iv3666 to i32
  %i.dln = mul i32 %i.n, %i.dlm
  %i.dlo = add i32 %i.dll, %i.dln
  %i.dlp = add i32 %i.dlo, %i.dkt
  %i.dlq = sext i32 %i.dlp to i64
  %i.dlr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dlq ; 2 uses
  %i.dls = load double, ptr %i.dlr, align 8, !tbaa !9
  %i.dlt = fdiv double %i.dls, %i.dig
  store double %i.dlt, ptr %i.dlr, align 8, !tbaa !9
  %indvars.iv.next3667 = add nuw nsw i64 %indvars.iv3666, 1 ; 2 uses
  %i.dlu = trunc nsw i64 %indvars.iv.next3667 to i32
  %i.dlv = sub i32 %.32608, %i.dlu
  %i.dlw = trunc i64 %indvars.iv.next3667 to i32
  %i.dlx = mul i32 %i.n, %i.dlw
  %i.dly = add i32 %i.dlv, %i.dlx
  %i.dlz = add i32 %i.dly, %i.dkt
  %i.dma = sext i32 %i.dlz to i64
  %i.dmb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dma ; 2 uses
  %i.dmc = load double, ptr %i.dmb, align 8, !tbaa !9
  %i.dmd = fdiv double %i.dmc, %i.dig
  store double %i.dmd, ptr %i.dmb, align 8, !tbaa !9
  %indvars.iv.next3667.1 = add nuw nsw i64 %indvars.iv3666, 2 ; 2 uses
  %i.dme = trunc nsw i64 %indvars.iv.next3667.1 to i32
  %i.dmf = sub i32 %.32608, %i.dme
  %i.dmg = trunc i64 %indvars.iv.next3667.1 to i32
  %i.dmh = mul i32 %i.n, %i.dmg
  %i.dmi = add i32 %i.dmf, %i.dmh
  %i.dmj = add i32 %i.dmi, %i.dkt
  %i.dmk = sext i32 %i.dmj to i64
  %i.dml = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dmk ; 2 uses
  %i.dmm = load double, ptr %i.dml, align 8, !tbaa !9
  %i.dmn = fdiv double %i.dmm, %i.dig
  store double %i.dmn, ptr %i.dml, align 8, !tbaa !9
  %indvars.iv.next3667.2 = add nuw nsw i64 %indvars.iv3666, 3 ; 2 uses
  %i.dmo = trunc nsw i64 %indvars.iv.next3667.2 to i32
  %i.dmp = sub i32 %.32608, %i.dmo
  %i.dmq = trunc i64 %indvars.iv.next3667.2 to i32
  %i.dmr = mul i32 %i.n, %i.dmq
  %i.dms = add i32 %i.dmp, %i.dmr
  %i.dmt = add i32 %i.dms, %i.dkt
  %i.dmu = sext i32 %i.dmt to i64
  %i.dmv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dmu ; 2 uses
  %i.dmw = load double, ptr %i.dmv, align 8, !tbaa !9
  %i.dmx = fdiv double %i.dmw, %i.dig
  store double %i.dmx, ptr %i.dmv, align 8, !tbaa !9
  %indvars.iv.next3667.3 = add nuw nsw i64 %indvars.iv3666, 4 ; 2 uses
  %lftr.wideiv3669.3 = trunc i64 %indvars.iv.next3667.3 to i32
  %exitcond3670.not.3 = icmp eq i32 %i.dkv, %lftr.wideiv3669.3
  br i1 %exitcond3670.not.3, label %._crit_edge3234, label %.lr.ph3233.new, !llvm.loop !157

._crit_edge3234:                                  ; preds = %.prol.loopexit4708, %.lr.ph3233.new, %._crit_edge3227
  %i.dmy = add i32 %i.dhy, %.32608                ; 6 uses
  %i.dmz = add nuw i32 %.32608, 1                 ; 5 uses
  %.not27323251 = icmp slt i32 %i.dhy, 1
  br i1 %.not27323251, label %bb.fw, label %.lr.ph3254

.lr.ph3254:                                       ; preds = %._crit_edge3234
  %i.dna = load i32, ptr %i.j, align 4            ; 8 uses
  %i.dnb = mul nsw i32 %.32608, %i.n
  %i.dnc = add nsw i32 %i.dna, %i.dnb
  %i.dnd = sext i32 %i.dnc to i64
  %i.dne = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dnd ; 3 uses
  store i32 %i.dkq, ptr %i.a, align 4, !tbaa !8
  store i32 %i.dkr, ptr %i.b, align 4, !tbaa !8
  %.not2755.not3242 = icmp slt i32 %i.dmy, %i.dks
  %i.dnf = add i32 %.32608, %i.ac
  %invariant.op3247 = add i32 %i.dna, %.32608     ; 3 uses
  %i.dng = sext i32 %i.dmz to i64
  %i.dnh = zext nneg i32 %.32608 to i64           ; 4 uses
  %i.dni = add nuw i32 %i.dmz, %i.dhy
  %i.dnj = sext i32 %i.dmy to i64                 ; 6 uses
  %i.dnk = sext i32 %i.dks to i64                 ; 3 uses
  %i.dnl = sub nsw i64 %i.dnk, %i.dnj
  %xtraiter4721 = and i64 %i.dnl, 1
  %lcmp.mod4722.not = icmp eq i64 %xtraiter4721, 0
  %indvars.iv.next3679.prol = add nsw i64 %i.dnj, 1 ; 2 uses
  %.25.neg.prol = xor i32 %i.dmy, -1              ; 2 uses
  %i.dnm = trunc i64 %indvars.iv.next3679.prol to i32
  %i.dnn = mul i32 %i.n, %i.dnm                   ; 2 uses
  %.reass3248.prol = add i32 %i.dnn, %invariant.op3247
  %i.dno = add i32 %.reass3248.prol, %.25.neg.prol
  %i.dnp = sext i32 %i.dno to i64
  %i.dnq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dnp
  %invariant.op4779 = add i32 %i.dnn, %.25.neg.prol
  %i.dnr = add nsw i64 %i.dnk, -1
  %i.dns = icmp eq i64 %i.dnr, %i.dnj
  br label %bb.fv

bb.fv:                                            ; preds = %.lr.ph3254, %._crit_edge3246
  %indvar4714 = phi i32 [ 0, %.lr.ph3254 ], [ %indvar.next4715, %._crit_edge3246 ] ; 3 uses
  %indvars.iv3671 = phi i64 [ %i.dng, %.lr.ph3254 ], [ %indvars.iv.next3672, %._crit_edge3246 ] ; 13 uses
  %.neg = add i32 %indvar4714, 1
  %indvars3681 = trunc i64 %indvars.iv3671 to i32 ; 4 uses
  %.not27533235 = icmp sgt i64 %indvars.iv3671, %i.dnj
  br i1 %.not27533235, label %._crit_edge3239, label %.lr.ph3238

.lr.ph3238:                                       ; preds = %bb.fv
  %i.dnt = sub i32 %i.dhy, %indvar4714
  %invariant.op3240 = add i32 %i.dna, %indvars3681 ; 3 uses
  %i.dnu = sub nsw i64 %i.dnh, %indvars.iv3671    ; 2 uses
  %i.dnv = mul nsw i32 %i.n, %indvars3681
  %i.dnw = trunc nsw i64 %i.dnu to i32
  %i.dnx = add i32 %i.dnv, %i.dnw
  %i.dny = add i32 %i.dnx, %i.dna
  %i.dnz = sext i32 %i.dny to i64
  %i.doa = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dnz ; 3 uses
  %i.dob = mul nsw i64 %indvars.iv3671, %i.bc
  %gep4137 = getelementptr [8 x i8], ptr %invariant.gep4136, i64 %i.dnu
  %i.doc = getelementptr [8 x i8], ptr %gep4137, i64 %i.dob ; 3 uses
  %xtraiter4716 = and i32 %i.dnt, 1
  %lcmp.mod4717.not = icmp eq i32 %xtraiter4716, 0
  br i1 %lcmp.mod4717.not, label %.prol.loopexit4713, label %.prol.loopexit4713.unr-lcssa

.prol.loopexit4713.unr-lcssa:                     ; preds = %.lr.ph3238
  %i.dod = trunc i64 %indvars.iv3671 to i32
  %i.doe = mul i32 %i.n, %i.dod                   ; 2 uses
  %.reass3241.prol = add i32 %i.doe, %invariant.op3240
  %i.dof = trunc nsw i64 %indvars.iv3671 to i32
  %i.dog = sub i32 %.reass3241.prol, %i.dof
  %i.doh = sext i32 %i.dog to i64
  %i.doi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.doh ; 2 uses
  %i.doj = load double, ptr %i.doi, align 8, !tbaa !9
  %i.dok = sub nsw i64 %i.dnh, %indvars.iv3671    ; 2 uses
  %i.dol = mul nsw i64 %indvars.iv3671, %i.bc
  %gep4135.prol = getelementptr [8 x i8], ptr %invariant.gep4134, i64 %i.dok
  %i.dom = getelementptr [8 x i8], ptr %gep4135.prol, i64 %i.dol
  %i.don = load double, ptr %i.dom, align 8, !tbaa !9 ; 2 uses
  %i.doo = load double, ptr %i.doa, align 8, !tbaa !9
  %i.dop = fneg double %i.don
  %i.doq = call double @llvm.fmuladd.f64(double %i.dop, double %i.doo, double %i.doj)
  %i.dor = load double, ptr %i.doc, align 8, !tbaa !9 ; 2 uses
  %i.dos = add i32 %i.dna, %i.doe
  %i.dot = trunc nsw i64 %i.dok to i32
  %i.dou = add i32 %i.dos, %i.dot
  %i.dov = sext i32 %i.dou to i64
  %i.dow = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dov
  %i.dox = load double, ptr %i.dow, align 8, !tbaa !9
  %i.doy = fneg double %i.dor
  %i.doz = call double @llvm.fmuladd.f64(double %i.doy, double %i.dox, double %i.doq)
  %i.dpa = load double, ptr %i.dne, align 8, !tbaa !9
  %i.dpb = fmul double %i.don, %i.dpa
  %i.dpc = call double @llvm.fmuladd.f64(double %i.dpb, double %i.dor, double %i.doz)
  store double %i.dpc, ptr %i.doi, align 8, !tbaa !9
  %indvars.iv.next3674.prol = add nsw i64 %indvars.iv3671, 1
  br label %.prol.loopexit4713

.prol.loopexit4713:                               ; preds = %.prol.loopexit4713.unr-lcssa, %.lr.ph3238
  %indvars.iv3673.unr = phi i64 [ %indvars.iv3671, %.lr.ph3238 ], [ %indvars.iv.next3674.prol, %.prol.loopexit4713.unr-lcssa ]
  %i.dpd = icmp eq i32 %i.dhy, %.neg
  br i1 %i.dpd, label %._crit_edge3239, label %.lr.ph3238.new

.lr.ph3238.new:                                   ; preds = %.prol.loopexit4713, %.lr.ph3238.new
  %indvars.iv3673 = phi i64 [ %indvars.iv.next3674.1, %.lr.ph3238.new ], [ %indvars.iv3673.unr, %.prol.loopexit4713 ] ; 6 uses
  %i.dpe = trunc i64 %indvars.iv3673 to i32
  %i.dpf = mul i32 %i.n, %i.dpe                   ; 2 uses
  %.reass3241 = add i32 %i.dpf, %invariant.op3240
  %i.dpg = trunc nsw i64 %indvars.iv3673 to i32
  %i.dph = sub i32 %.reass3241, %i.dpg
  %i.dpi = sext i32 %i.dph to i64
  %i.dpj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dpi ; 2 uses
  %i.dpk = load double, ptr %i.dpj, align 8, !tbaa !9
  %i.dpl = sub nsw i64 %i.dnh, %indvars.iv3673    ; 2 uses
  %i.dpm = mul nsw i64 %indvars.iv3673, %i.bc
  %gep4135 = getelementptr [8 x i8], ptr %invariant.gep4134, i64 %i.dpl
  %i.dpn = getelementptr [8 x i8], ptr %gep4135, i64 %i.dpm
  %i.dpo = load double, ptr %i.dpn, align 8, !tbaa !9 ; 2 uses
  %i.dpp = load double, ptr %i.doa, align 8, !tbaa !9
  %i.dpq = fneg double %i.dpo
  %i.dpr = call double @llvm.fmuladd.f64(double %i.dpq, double %i.dpp, double %i.dpk)
  %i.dps = load double, ptr %i.doc, align 8, !tbaa !9 ; 2 uses
  %i.dpt = add i32 %i.dna, %i.dpf
  %i.dpu = trunc nsw i64 %i.dpl to i32
  %i.dpv = add i32 %i.dpt, %i.dpu
  %i.dpw = sext i32 %i.dpv to i64
  %i.dpx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dpw
  %i.dpy = load double, ptr %i.dpx, align 8, !tbaa !9
  %i.dpz = fneg double %i.dps
  %i.dqa = call double @llvm.fmuladd.f64(double %i.dpz, double %i.dpy, double %i.dpr)
  %i.dqb = load double, ptr %i.dne, align 8, !tbaa !9
  %i.dqc = fmul double %i.dpo, %i.dqb
  %i.dqd = call double @llvm.fmuladd.f64(double %i.dqc, double %i.dps, double %i.dqa)
  store double %i.dqd, ptr %i.dpj, align 8, !tbaa !9
  %indvars.iv.next3674 = add nsw i64 %indvars.iv3673, 1 ; 4 uses
  %i.dqe = trunc i64 %indvars.iv.next3674 to i32
  %i.dqf = mul i32 %i.n, %i.dqe                   ; 2 uses
  %.reass3241.1 = add i32 %i.dqf, %invariant.op3240
  %i.dqg = trunc nsw i64 %indvars.iv.next3674 to i32
  %i.dqh = sub i32 %.reass3241.1, %i.dqg
  %i.dqi = sext i32 %i.dqh to i64
  %i.dqj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dqi ; 2 uses
  %i.dqk = load double, ptr %i.dqj, align 8, !tbaa !9
  %i.dql = sub nsw i64 %i.dnh, %indvars.iv.next3674 ; 2 uses
  %i.dqm = mul nsw i64 %indvars.iv.next3674, %i.bc
  %gep4135.1 = getelementptr [8 x i8], ptr %invariant.gep4134, i64 %i.dql
  %i.dqn = getelementptr [8 x i8], ptr %gep4135.1, i64 %i.dqm
  %i.dqo = load double, ptr %i.dqn, align 8, !tbaa !9 ; 2 uses
  %i.dqp = load double, ptr %i.doa, align 8, !tbaa !9
  %i.dqq = fneg double %i.dqo
  %i.dqr = call double @llvm.fmuladd.f64(double %i.dqq, double %i.dqp, double %i.dqk)
  %i.dqs = load double, ptr %i.doc, align 8, !tbaa !9 ; 2 uses
  %i.dqt = add i32 %i.dna, %i.dqf
  %i.dqu = trunc nsw i64 %i.dql to i32
  %i.dqv = add i32 %i.dqt, %i.dqu
  %i.dqw = sext i32 %i.dqv to i64
  %i.dqx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dqw
  %i.dqy = load double, ptr %i.dqx, align 8, !tbaa !9
  %i.dqz = fneg double %i.dqs
  %i.dra = call double @llvm.fmuladd.f64(double %i.dqz, double %i.dqy, double %i.dqr)
  %i.drb = load double, ptr %i.dne, align 8, !tbaa !9
  %i.drc = fmul double %i.dqo, %i.drb
  %i.drd = call double @llvm.fmuladd.f64(double %i.drc, double %i.dqs, double %i.dra)
  store double %i.drd, ptr %i.dqj, align 8, !tbaa !9
  %indvars.iv.next3674.1 = add nsw i64 %indvars.iv3673, 2 ; 2 uses
  %lftr.wideiv3676.1 = trunc i64 %indvars.iv.next3674.1 to i32
  %exitcond3677.not.1 = icmp eq i32 %i.dni, %lftr.wideiv3676.1
  br i1 %exitcond3677.not.1, label %._crit_edge3239, label %.lr.ph3238.new, !llvm.loop !158

._crit_edge3239:                                  ; preds = %.prol.loopexit4713, %.lr.ph3238.new, %bb.fv
  br i1 %.not2755.not3242, label %.lr.ph3245, label %._crit_edge3246

.lr.ph3245:                                       ; preds = %._crit_edge3239
  %i.dre = mul nsw i64 %indvars.iv3671, %i.bc
  %i.drf = sub i32 %i.dnf, %indvars3681
  %i.drg = sext i32 %i.drf to i64
  %i.drh = getelementptr [8 x i8], ptr %i.s, i64 %i.dre
  %i.dri = getelementptr [8 x i8], ptr %i.drh, i64 %i.drg ; 3 uses
  %invariant.op3249 = add i32 %i.dna, %indvars3681 ; 3 uses
  br i1 %lcmp.mod4722.not, label %.prol.loopexit4720, label %.prol.loopexit4720.unr-lcssa

.prol.loopexit4720.unr-lcssa:                     ; preds = %.lr.ph3245
  %i.drj = load double, ptr %i.dri, align 8, !tbaa !9
  %i.drk = load double, ptr %i.dnq, align 8, !tbaa !9
  %.reass4780 = add i32 %invariant.op3249, %invariant.op4779
  %i.drl = sext i32 %.reass4780 to i64
  %i.drm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.drl ; 2 uses
  %i.drn = load double, ptr %i.drm, align 8, !tbaa !9
  %i.dro = fneg double %i.drj
  %i.drp = call double @llvm.fmuladd.f64(double %i.dro, double %i.drk, double %i.drn)
  store double %i.drp, ptr %i.drm, align 8, !tbaa !9
  br label %.prol.loopexit4720

.prol.loopexit4720:                               ; preds = %.prol.loopexit4720.unr-lcssa, %.lr.ph3245
  %indvars.iv3678.unr = phi i64 [ %i.dnj, %.lr.ph3245 ], [ %indvars.iv.next3679.prol, %.prol.loopexit4720.unr-lcssa ]
  br i1 %i.dns, label %._crit_edge3246, label %.lr.ph3245.new

.lr.ph3245.new:                                   ; preds = %.prol.loopexit4720, %.lr.ph3245.new
  %indvars.iv3678 = phi i64 [ %indvars.iv.next3679.1, %.lr.ph3245.new ], [ %indvars.iv3678.unr, %.prol.loopexit4720 ] ; 3 uses
  %indvars.iv.next3679 = add nsw i64 %indvars.iv3678, 1 ; 2 uses
  %i.drq = trunc nsw i64 %indvars.iv3678 to i32
  %.25.neg = xor i32 %i.drq, -1                   ; 2 uses
  %i.drr = load double, ptr %i.dri, align 8, !tbaa !9
  %i.drs = trunc i64 %indvars.iv.next3679 to i32
  %i.drt = mul i32 %i.n, %i.drs                   ; 2 uses
  %.reass3248 = add i32 %i.drt, %invariant.op3247
  %i.dru = add i32 %.reass3248, %.25.neg
  %i.drv = sext i32 %i.dru to i64
  %i.drw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.drv
  %i.drx = load double, ptr %i.drw, align 8, !tbaa !9
  %.reass3250 = add i32 %i.drt, %invariant.op3249
  %i.dry = add i32 %.reass3250, %.25.neg
  %i.drz = sext i32 %i.dry to i64
  %i.dsa = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.drz ; 2 uses
  %i.dsb = load double, ptr %i.dsa, align 8, !tbaa !9
  %i.dsc = fneg double %i.drr
  %i.dsd = call double @llvm.fmuladd.f64(double %i.dsc, double %i.drx, double %i.dsb)
  store double %i.dsd, ptr %i.dsa, align 8, !tbaa !9
  %indvars.iv.next3679.1 = add nsw i64 %indvars.iv3678, 2 ; 3 uses
  %i.dse = trunc nsw i64 %indvars.iv.next3679 to i32
  %.25.neg.1 = xor i32 %i.dse, -1                 ; 2 uses
  %i.dsf = load double, ptr %i.dri, align 8, !tbaa !9
  %i.dsg = trunc i64 %indvars.iv.next3679.1 to i32
  %i.dsh = mul i32 %i.n, %i.dsg                   ; 2 uses
  %.reass3248.1 = add i32 %i.dsh, %invariant.op3247
  %i.dsi = add i32 %.reass3248.1, %.25.neg.1
  %i.dsj = sext i32 %i.dsi to i64
  %i.dsk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dsj
  %i.dsl = load double, ptr %i.dsk, align 8, !tbaa !9
  %.reass3250.1 = add i32 %i.dsh, %invariant.op3249
  %i.dsm = add i32 %.reass3250.1, %.25.neg.1
  %i.dsn = sext i32 %i.dsm to i64
  %i.dso = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dsn ; 2 uses
  %i.dsp = load double, ptr %i.dso, align 8, !tbaa !9
  %i.dsq = fneg double %i.dsf
  %i.dsr = call double @llvm.fmuladd.f64(double %i.dsq, double %i.dsl, double %i.dsp)
  store double %i.dsr, ptr %i.dso, align 8, !tbaa !9
  %exitcond3682.not.1 = icmp eq i64 %indvars.iv.next3679.1, %i.dnk
  br i1 %exitcond3682.not.1, label %._crit_edge3246, label %.lr.ph3245.new, !llvm.loop !159

._crit_edge3246:                                  ; preds = %.prol.loopexit4720, %.lr.ph3245.new, %._crit_edge3239
  %indvars.iv.next3672 = add nsw i64 %indvars.iv3671, 1
  %.not2732.not = icmp slt i64 %indvars.iv3671, %i.dnj
  %indvar.next4715 = add i32 %indvar4714, 1
  br i1 %.not2732.not, label %bb.fv, label %._crit_edge3255, !llvm.loop !160

._crit_edge3255:                                  ; preds = %._crit_edge3246
  store i32 %i.dks, ptr %i.d, align 4, !tbaa !8
  br label %bb.fw

bb.fw:                                            ; preds = %._crit_edge3255, %._crit_edge3234
  store i32 %.32608, ptr %i.c, align 4, !tbaa !8
  br i1 %.not27293223, label %bb.fz, label %.lr.ph3268

.lr.ph3268:                                       ; preds = %bb.fw
  store i32 %i.dmy, ptr %i.b, align 4, !tbaa !8
  %i.dss = add i32 %.32608, %i.ac
  %i.dst = load i32, ptr %i.j, align 4            ; 2 uses
  %invariant.op3270 = mul i32 %.32608, %.326083506
  %invariant.op3271 = add i32 %invariant.op3270, %i.dst
  %i.dsu = zext nneg i32 %.32608 to i64           ; 2 uses
  %i.dsv = zext i32 %.42546 to i64
  br label %bb.fx

bb.fx:                                            ; preds = %.lr.ph3268, %._crit_edge3264
  %indvars.iv3689 = phi i64 [ %i.dsv, %.lr.ph3268 ], [ %indvars.iv.next3690, %._crit_edge3264 ] ; 3 uses
  %i.dsw = trunc i64 %indvars.iv3689 to i32
  %i.dsx = add i32 %.pre3788, %i.dsw
  %i.dsy = call i32 @llvm.smin.i32(i32 %i.dsx, i32 %i.dmy) ; 2 uses
  %.not27523259.not = icmp slt i32 %.32608, %i.dsy
  br i1 %.not27523259.not, label %.lr.ph3263, label %._crit_edge3264

.lr.ph3263:                                       ; preds = %bb.fx
  %i.dsz = trunc i64 %indvars.iv3689 to i32       ; 2 uses
  %.reass3272 = add i32 %invariant.op3271, %i.dsz
  %i.dta = sext i32 %.reass3272 to i64
  %i.dtb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dta
  %i.dtc = zext nneg i32 %i.dsy to i64
  br label %bb.fy

bb.fy:                                            ; preds = %.lr.ph3263, %bb.fy
  %indvars.iv3684.in = phi i64 [ %i.dsu, %.lr.ph3263 ], [ %indvars.iv3684, %bb.fy ]
  %indvars.iv3682 = phi i64 [ %i.dsu, %.lr.ph3263 ], [ %indvars.iv.next3683, %bb.fy ] ; 2 uses
  %indvars.iv3684 = add nuw nsw i64 %indvars.iv3684.in, 1 ; 4 uses
  %i.dtd = trunc nsw i64 %indvars.iv3682 to i32
  %.132570.neg3261 = xor i32 %i.dtd, -1           ; 2 uses
  %i.dte = mul nsw i64 %indvars.iv3684, %i.bc
  %i.dtf = add i32 %i.dss, %.132570.neg3261
  %i.dtg = sext i32 %i.dtf to i64
  %i.dth = getelementptr [8 x i8], ptr %i.s, i64 %i.dte
  %i.dti = getelementptr [8 x i8], ptr %i.dth, i64 %i.dtg
  %i.dtj = load double, ptr %i.dti, align 8, !tbaa !9
  %i.dtk = load double, ptr %i.dtb, align 8, !tbaa !9
  %i.dtl = add i32 %i.dsz, %.132570.neg3261
  %i.dtm = trunc i64 %indvars.iv3684 to i32
  %i.dtn = mul i32 %i.n, %i.dtm
  %i.dto = add i32 %i.dtl, %i.dtn
  %i.dtp = add i32 %i.dto, %i.dst
  %i.dtq = sext i32 %i.dtp to i64
  %i.dtr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dtq ; 2 uses
  %i.dts = load double, ptr %i.dtr, align 8, !tbaa !9
  %i.dtt = fneg double %i.dtj
  %i.dtu = call double @llvm.fmuladd.f64(double %i.dtt, double %i.dtk, double %i.dts)
  store double %i.dtu, ptr %i.dtr, align 8, !tbaa !9
  %.not2752.not = icmp samesign ult i64 %indvars.iv3684, %i.dtc
  %indvars.iv.next3683 = add nuw nsw i64 %indvars.iv3682, 1
  br i1 %.not2752.not, label %bb.fy, label %._crit_edge3264, !llvm.loop !161

._crit_edge3264:                                  ; preds = %bb.fy, %bb.fx
  %indvars.iv.next3690 = add i64 %indvars.iv3689, 1 ; 2 uses
  %lftr.wideiv3692 = trunc i64 %indvars.iv.next3690 to i32
  %exitcond3693.not = icmp eq i32 %i.dmz, %lftr.wideiv3692
  br i1 %exitcond3693.not, label %._crit_edge3269, label %bb.fx, !llvm.loop !162

._crit_edge3269:                                  ; preds = %._crit_edge3264
  %i.dtv = add i32 %.32608, %.pre3788
  %smin = call i32 @llvm.smin.i32(i32 %i.dkr, i32 %i.dmy)
  store i32 %i.dtv, ptr %i.a, align 4, !tbaa !8
  store i32 %smin, ptr %i.d, align 4, !tbaa !8
  br label %bb.fz

bb.fz:                                            ; preds = %._crit_edge3269, %bb.fw
  br i1 %.not, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.dtw = fdiv double 1.000000e+00, %i.dig
  store double %i.dtw, ptr %i.e, align 8, !tbaa !9
  %i.dtx = mul nsw i32 %.32608, %i.t
  %i.dty = sext i32 %i.dtx to i64
  %i.dtz = getelementptr [8 x i8], ptr %i.v, i64 %i.dty
  %i.dua = getelementptr i8, ptr %i.dtz, i64 8    ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.e, ptr noundef %i.dua, ptr noundef nonnull @c__1) #4
  %i.dub = load i32, ptr %i.l, align 4, !tbaa !8
  %i.duc = icmp sgt i32 %i.dub, 0
  %.pre3789.pre3896 = load i32, ptr %4, align 4, !tbaa !8 ; 2 uses
  br i1 %i.duc, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.dud = load i32, ptr %8, align 4, !tbaa !8
  %i.due = add nsw i32 %i.dud, -1
  store i32 %i.due, ptr %i.c, align 4, !tbaa !8
  %i.duf = mul nsw i32 %i.dmz, %i.q
  %i.dug = add nsw i32 %.pre3789.pre3896, %i.duf
  %i.duh = sext i32 %i.dug to i64
  %i.dui = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.duh
  %i.duj = mul nsw i32 %i.dmz, %i.t
  %i.duk = sext i32 %i.duj to i64
  %i.dul = getelementptr [8 x i8], ptr %i.v, i64 %i.duk
  %i.dum = getelementptr i8, ptr %i.dul, i64 8
  call void @dger_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.dua, ptr noundef nonnull @c__1, ptr noundef %i.dui, ptr noundef nonnull %i.c, ptr noundef %i.dum, ptr noundef nonnull %10) #4
  %.pre3789.pre = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.gc

bb.gc:                                            ; preds = %bb.ga, %bb.gb, %bb.fz
  %.pre3789 = phi i32 [ %.pre3789.pre3896, %bb.ga ], [ %.pre3789.pre, %bb.gb ], [ %i.dhl, %bb.fz ]
  %i.dun = load i32, ptr %i.j, align 4, !tbaa !8
  %i.duo = mul i32 %.32608, %.326083507
  %i.dup = add i32 %i.duo, %.42546
  %i.duq = add i32 %i.dup, %i.dun
  %i.dur = sext i32 %i.duq to i64
  %i.dus = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dur
  %i.dut = load double, ptr %i.dus, align 8, !tbaa !9
  store double %i.dut, ptr %i.k, align 8, !tbaa !9
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.ft
  %i.duu = phi i32 [ %.pre3789, %bb.gc ], [ %i.dhl, %bb.ft ] ; 2 uses
  %i.duv = add nsw i32 %i.duu, -1
  store i32 %i.duv, ptr %i.c, align 4, !tbaa !8
  %.not27343300 = icmp slt i32 %i.duu, 2
  br i1 %.not27343300, label %._crit_edge3305, label %.lr.ph3304

.lr.ph3304:                                       ; preds = %bb.gd
  %i.duw = mul nsw i32 %.32608, %i.n
  %i.dux = add i32 %i.duw, 1
  %i.duy = add i32 %.32608, %i.ay
  %.reass4145.reass = add i32 %.42551, %invariant.op4781.a
  %i.duz = add nuw i32 %.32608, 1
  %i.dva = add nsw i32 %.32608, -1
  %i.dvb = add nuw i32 %.32608, 2
  %.reass4147.reass = add i32 %.42551, %invariant.op4782
  %i.dvc = zext nneg i32 %.32608 to i64
  br label %bb.ge

bb.ge:                                            ; preds = %.lr.ph3304, %.loopexit2874
  %indvars.iv3704.a = phi i64 [ 1, %.lr.ph3304 ], [ %indvars.iv.next3705.a, %.loopexit2874 ] ; 5 uses
  %indvars.iv3702 = phi i64 [ -1, %.lr.ph3304 ], [ %indvars.iv.next3703, %.loopexit2874 ] ; 3 uses
  %indvars.iv3696.a = phi i32 [ %.reass4147.reass, %.lr.ph3304 ], [ %indvars.iv.next3697, %.loopexit2874 ] ; 2 uses
  %indvars.iv3694 = phi i32 [ %i.dvb, %.lr.ph3304 ], [ %indvars.iv.next3695, %.loopexit2874 ] ; 2 uses
  %smax3698 = call i32 @llvm.smax.i32(i32 %indvars.iv3696.a, i32 1)
  %.pre3791 = load i32, ptr %i.j, align 4, !tbaa !8 ; 3 uses
  br i1 %.not26982891, label %._crit_edge3792, label %bb.gf

._crit_edge3792:                                  ; preds = %bb.ge
  %.pre3793 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.gh

bb.gf:                                            ; preds = %bb.ge
  %i.dvd = add nuw nsw i64 %indvars.iv3704.a, %i.dvc ; 6 uses
  %i.dve = sext i32 %.pre3791 to i64
  %i.dvf = icmp sgt i64 %i.dvd, %i.dve
  %i.dvg = icmp slt i64 %i.dvd, %i.bd
  %or.cond2761 = select i1 %i.dvf, i1 %i.dvg, i1 false
  %.pre3794.a = load i32, ptr %3, align 4, !tbaa !8 ; 3 uses
  br i1 %or.cond2761, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.dvh = trunc nuw nsw i64 %indvars.iv3704.a to i32 ; 3 uses
  %i.dvi = add i32 %i.dux, %i.dvh
  %i.dvj = sext i32 %i.dvi to i64
  %i.dvk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dvj
  %i.dvl = load i32, ptr %2, align 4, !tbaa !8
  %i.dvm = add i32 %.32608, %i.dvh                ; 3 uses
  %i.dvn = add i32 %i.dvm, %i.dvl
  %i.dvo = sub i32 %i.dvn, %.pre3794.a
  %i.dvp = sext i32 %i.dvo to i64
  %i.dvq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dvp
  %i.dvr = sext i32 %.pre3794.a to i64
  %i.dvs = sub nsw i64 %i.dvd, %i.dvr
  %i.dvt = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dvs
  call void @dlartg_(ptr noundef %i.dvk, ptr noundef nonnull %i.k, ptr noundef nonnull %i.dvq, ptr noundef nonnull %i.dvt, ptr noundef nonnull %i.g) #4
  %i.dvu = trunc nsw i64 %indvars.iv3702 to i32
  %i.dvv = add i32 %i.ac, %i.dvu
  %i.dvw = mul nsw i64 %i.dvd, %i.bc
  %i.dvx = sext i32 %i.dvv to i64
  %i.dvy = getelementptr [8 x i8], ptr %i.s, i64 %i.dvw
  %i.dvz = getelementptr [8 x i8], ptr %i.dvy, i64 %i.dvx
  %i.dwa = load double, ptr %i.dvz, align 8, !tbaa !9
  %i.dwb = fneg double %i.dwa
  %i.dwc = load double, ptr %i.k, align 8, !tbaa !9
  %i.dwd = fmul double %i.dwc, %i.dwb             ; 2 uses
  %i.dwe = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.dwf = load i32, ptr %3, align 4, !tbaa !8    ; 4 uses
  %i.dwg = add i32 %i.dvm, %i.dwe
  %i.dwh = sub i32 %i.dwg, %i.dwf
  %i.dwi = sext i32 %i.dwh to i64
  %i.dwj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dwi
  %i.dwk = load double, ptr %i.dwj, align 8, !tbaa !9
  %i.dwl = sext i32 %i.dwf to i64
  %i.dwm = sub nsw i64 %i.dvd, %i.dwl
  %i.dwn = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dwm ; 2 uses
  %i.dwo = load double, ptr %i.dwn, align 8, !tbaa !9
  %i.dwp = mul nsw i64 %i.dvd, %i.bb
  %i.dwq = getelementptr [8 x i8], ptr %i.p, i64 %i.dwp
  %i.dwr = getelementptr i8, ptr %i.dwq, i64 8    ; 3 uses
  %i.dws = load double, ptr %i.dwr, align 8, !tbaa !9
  %i.dwt = fneg double %i.dws
  %i.dwu = fmul double %i.dwo, %i.dwt
  %i.dwv = call double @llvm.fmuladd.f64(double %i.dwk, double %i.dwd, double %i.dwu)
  %i.dww = load i32, ptr %4, align 4, !tbaa !8
  %i.dwx = add i32 %i.duy, %i.dvh
  %i.dwy = sub i32 %i.dwx, %i.dww
  %i.dwz = sext i32 %i.dwy to i64
  %i.dxa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dwz
  store double %i.dwv, ptr %i.dxa, align 8, !tbaa !9
  %i.dxb = load double, ptr %i.dwn, align 8, !tbaa !9
  %i.dxc = sub i32 %i.dvm, %i.dwf
  %i.dxd = add i32 %i.dxc, %i.dwe
  %i.dxe = sext i32 %i.dxd to i64
  %i.dxf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dxe
  %i.dxg = load double, ptr %i.dxf, align 8, !tbaa !9
  %i.dxh = load double, ptr %i.dwr, align 8, !tbaa !9
  %i.dxi = fmul double %i.dxg, %i.dxh
  %i.dxj = call double @llvm.fmuladd.f64(double %i.dxb, double %i.dwd, double %i.dxi)
  store double %i.dxj, ptr %i.dwr, align 8, !tbaa !9
  %i.dxk = load double, ptr %i.g, align 8, !tbaa !9
  store double %i.dxk, ptr %i.k, align 8, !tbaa !9
  %.pre3790 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.gh

bb.gh:                                            ; preds = %._crit_edge3792, %bb.gf, %bb.gg
  %i.dxl = phi i32 [ %.pre3794.a, %bb.gf ], [ %i.dwf, %bb.gg ], [ %.pre3793, %._crit_edge3792 ] ; 5 uses
  %i.dxm = phi i32 [ %.pre3791, %bb.gf ], [ %.pre3790, %bb.gg ], [ %.pre3791, %._crit_edge3792 ] ; 8 uses
  %i.dxn = trunc nuw nsw i64 %indvars.iv3704.a to i32 ; 3 uses
  %i.dxo = add i32 %.reass4145.reass, %i.dxn
  %i.dxp = call i32 @llvm.smax.i32(i32 %i.dxo, i32 1)
  %i.dxq = mul nsw i32 %i.dxp, %i.dxm
  %i.dxr = add i32 %i.duz, %i.dxn
  %i.dxs = sub i32 %i.dxr, %i.dxq                 ; 7 uses
  %i.dxt = add i32 %i.dxl, -1                     ; 2 uses
  %i.dxu = add i32 %i.dxt, %i.dxs
  %i.dxv = sdiv i32 %i.dxu, %i.dxm                ; 3 uses
  store i32 %i.dxv, ptr %i.h, align 4, !tbaa !8
  %i.dxw = add i32 %i.dxv, -1                     ; 2 uses
  %i.dxx = mul i32 %i.dxm, %i.dxw                 ; 3 uses
  %i.dxy = sub nsw i32 %i.dxs, %i.dxx             ; 12 uses
  br i1 %.not26982891, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.dxz = add i32 %i.dva, %i.dxn
  %i.dya = shl i32 %i.dxl, 1
  %i.dyb = sub i32 %i.dxz, %i.dya
  %i.dyc = call i32 @llvm.smin.i32(i32 %i.dxs, i32 %i.dyb)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi
  %.2 = phi i32 [ %i.dyc, %bb.gi ], [ %i.dxs, %bb.gh ] ; 5 uses
  %i.dyd = add i32 %.2, -1
  %i.dye = add i32 %i.dyd, %i.dxl
  %i.dyf = sdiv i32 %i.dye, %i.dxm                ; 2 uses
  store i32 %i.dyf, ptr %i.m, align 4, !tbaa !8
  store i32 %.2, ptr %i.d, align 4, !tbaa !8
  store i32 %i.dxm, ptr %i.a, align 4, !tbaa !8
  %i.dyg = icmp slt i32 %i.dxm, 0                 ; 2 uses
  %i.dyh = icmp sge i32 %i.dxy, %.2
  %i.dyi = icmp sle i32 %i.dxy, %.2
  %.in27473274 = select i1 %i.dyg, i1 %i.dyh, i1 %i.dyi
  br i1 %.in27473274, label %.lr.ph3277, label %._crit_edge3278

.lr.ph3277:                                       ; preds = %bb.gj
  %i.dyj = load i32, ptr %2, align 4, !tbaa !8
  %i.dyk = add i32 %smax3698, %i.dxw
  %i.dyl = mul i32 %i.dxm, %i.dyk
  %i.dym = sub i32 %indvars.iv3694, %i.dyl
  %i.dyn = sext i32 %i.dym to i64
  %i.dyo = sext i32 %i.dxm to i64
  %i.dyp = sext i32 %.2 to i64                    ; 2 uses
  %i.dyq = sext i32 %i.dyj to i64
  %invariant.gep4138 = getelementptr [8 x i8], ptr %i.w, i64 %i.dyq
  br label %bb.gk

bb.gk:                                            ; preds = %.lr.ph3277, %bb.gk
  %indvars.iv3699 = phi i64 [ %i.dyn, %.lr.ph3277 ], [ %indvars.iv.next3700, %bb.gk ] ; 4 uses
  %i.dyr = trunc nsw i64 %indvars.iv3699 to i32
  %.reass3280 = add i32 %i.dxt, %i.dyr
  %i.dys = mul nsw i32 %.reass3280, %i.n
  %i.dyt = sext i32 %i.dys to i64
  %i.dyu = getelementptr [8 x i8], ptr %i.p, i64 %i.dyt
  %i.dyv = getelementptr i8, ptr %i.dyu, i64 8    ; 3 uses
  %i.dyw = load double, ptr %i.dyv, align 8, !tbaa !9
  %i.dyx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv3699 ; 2 uses
  %i.dyy = load double, ptr %i.dyx, align 8, !tbaa !9
  %i.dyz = fmul double %i.dyw, %i.dyy
  store double %i.dyz, ptr %i.dyx, align 8, !tbaa !9
  %gep4139 = getelementptr [8 x i8], ptr %invariant.gep4138, i64 %indvars.iv3699
  %i.dza = load double, ptr %gep4139, align 8, !tbaa !9
  %i.dzb = load double, ptr %i.dyv, align 8, !tbaa !9
  %i.dzc = fmul double %i.dza, %i.dzb
  store double %i.dzc, ptr %i.dyv, align 8, !tbaa !9
  %indvars.iv.next3700 = add nsw i64 %indvars.iv3699, %i.dyo ; 3 uses
  %i.dzd = icmp sge i64 %indvars.iv.next3700, %i.dyp
  %i.dze = icmp sle i64 %indvars.iv.next3700, %i.dyp
  %.in2747 = select i1 %i.dyg, i1 %i.dzd, i1 %i.dze
  br i1 %.in2747, label %bb.gk, label %._crit_edge3278, !llvm.loop !163

._crit_edge3278:                                  ; preds = %bb.gk, %bb.gj
  %i.dzf = icmp sgt i32 %i.dyf, 0
  br i1 %i.dzf, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %._crit_edge3278
  %i.dzg = add nsw i32 %i.dxl, %i.dxy
  %i.dzh = mul nsw i32 %i.dzg, %i.n
  %i.dzi = sext i32 %i.dzh to i64
  %i.dzj = getelementptr [8 x i8], ptr %i.p, i64 %i.dzi
  %i.dzk = getelementptr i8, ptr %i.dzj, i64 8
  %i.dzl = sext i32 %i.dxy to i64
  %i.dzm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dzl
  %i.dzn = load i32, ptr %2, align 4, !tbaa !8
  %i.dzo = add nsw i32 %i.dzn, %i.dxy
  %i.dzp = sext i32 %i.dzo to i64
  %i.dzq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dzp
  call void @dlargv_(ptr noundef nonnull %i.m, ptr noundef %i.dzk, ptr noundef nonnull %i.f, ptr noundef nonnull %i.dzm, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dzq, ptr noundef nonnull %i.j) #4
  %.pre3795 = load i32, ptr %i.h, align 4, !tbaa !8
  %.pre3798.pre = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %._crit_edge3278
  %.pre3798 = phi i32 [ %.pre3798.pre, %bb.gl ], [ %i.dxl, %._crit_edge3278 ] ; 4 uses
  %i.dzr = phi i32 [ %.pre3795, %bb.gl ], [ %i.dxv, %._crit_edge3278 ]
  %i.dzs = icmp sgt i32 %i.dzr, 0
  br i1 %i.dzs, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  %i.dzt = add nsw i32 %.pre3798, -1
  store i32 %i.dzt, ptr %i.a, align 4, !tbaa !8
  %.not27483283 = icmp slt i32 %.pre3798, 2
  %.pre3963 = sext i32 %i.dxy to i64              ; 2 uses
  br i1 %.not27483283, label %._crit_edge3288, label %.lr.ph3287

.lr.ph3287:                                       ; preds = %bb.gn
  %i.dzu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.pre3963
  br label %bb.go

bb.go:                                            ; preds = %.lr.ph3287, %bb.go
  %.12.neg3285 = phi i32 [ -1, %.lr.ph3287 ], [ %.12.neg, %bb.go ]
  %.123284 = phi i32 [ 1, %.lr.ph3287 ], [ %i.eak, %bb.go ] ; 4 uses
  %i.dzv = load i32, ptr %i.j, align 4, !tbaa !8
  %i.dzw = add nsw i32 %.123284, %i.dxy
  %i.dzx = mul nsw i32 %i.dzw, %i.n
  %i.dzy = add i32 %i.dzx, %.12.neg3285           ; 2 uses
  %i.dzz = add i32 %i.dzy, %i.dzv
  %i.eaa = sext i32 %i.dzz to i64
  %i.eab = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eaa
  %i.eac = load i32, ptr %3, align 4, !tbaa !8
  %i.ead = add i32 %i.dzy, %i.eac
  %i.eae = sext i32 %i.ead to i64
  %i.eaf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eae
  %i.eag = load i32, ptr %2, align 4, !tbaa !8
  %i.eah = add nsw i32 %i.eag, %i.dxy
  %i.eai = sext i32 %i.eah to i64
  %i.eaj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eai
  call void @dlartv_(ptr noundef nonnull %i.h, ptr noundef %i.eab, ptr noundef nonnull %i.f, ptr noundef %i.eaf, ptr noundef nonnull %i.f, ptr noundef nonnull %i.eaj, ptr noundef nonnull %i.dzu, ptr noundef nonnull %i.j) #4
  %i.eak = add nuw nsw i32 %.123284, 1
  %.12.neg = xor i32 %.123284, -1
  %i.eal = load i32, ptr %i.a, align 4, !tbaa !8
  %.not2748.not = icmp slt i32 %.123284, %i.eal
  br i1 %.not2748.not, label %bb.go, label %._crit_edge3288.loopexit, !llvm.loop !164

._crit_edge3288.loopexit:                         ; preds = %bb.go
  %.pre3796 = load i32, ptr %3, align 4, !tbaa !8
  br label %._crit_edge3288

._crit_edge3288:                                  ; preds = %bb.gn, %._crit_edge3288.loopexit
  %i.eam = phi i32 [ %.pre3796, %._crit_edge3288.loopexit ], [ %.pre3798, %bb.gn ]
  %i.ean = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.eao = mul nsw i32 %i.dxy, %i.n               ; 2 uses
  %i.eap = add nsw i32 %i.ean, %i.eao
  %i.eaq = sext i32 %i.eap to i64
  %i.ear = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eaq
  %i.eas = add nsw i32 %i.dxy, -1
  %i.eat = mul nsw i32 %i.eas, %i.n
  %i.eau = add nsw i32 %i.ean, %i.eat
  %i.eav = sext i32 %i.eau to i64
  %i.eaw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eav
  %i.eax = add nsw i32 %i.eam, %i.eao
  %i.eay = sext i32 %i.eax to i64
  %i.eaz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eay
  %i.eba = load i32, ptr %2, align 4, !tbaa !8
  %i.ebb = add nsw i32 %i.eba, %i.dxy
  %i.ebc = sext i32 %i.ebb to i64
  %i.ebd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ebc
  %i.ebe = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.pre3963
  call void @dlar2v_(ptr noundef nonnull %i.h, ptr noundef %i.ear, ptr noundef %i.eaw, ptr noundef %i.eaz, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ebd, ptr noundef nonnull %i.ebe, ptr noundef nonnull %i.j) #4
  %.pre3797 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.gp

bb.gp:                                            ; preds = %._crit_edge3288, %bb.gm
  %i.ebf = phi i32 [ %.pre3797, %._crit_edge3288 ], [ %.pre3798, %bb.gm ] ; 2 uses
  %i.ebg = load i32, ptr %4, align 4, !tbaa !8
  %i.ebh = trunc i64 %indvars.iv3702 to i32
  %i.ebi = add i32 %i.ebh, 1
  %i.ebj = add i32 %i.ebi, %i.ebg                 ; 3 uses
  store i32 %i.ebj, ptr %i.a, align 4, !tbaa !8
  %.not2749.not3290 = icmp sgt i32 %i.ebf, %i.ebj
  br i1 %.not2749.not3290, label %.lr.ph3294, label %._crit_edge3295

.lr.ph3294:                                       ; preds = %bb.gp
  %i.ebk = add i32 %i.dxs, -1
  %.pre3800 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.gq

bb.gq:                                            ; preds = %.lr.ph3294, %bb.gs
  %i.ebl = phi i32 [ %i.ebj, %.lr.ph3294 ], [ %i.eci, %bb.gs ]
  %i.ebm = phi i32 [ %.pre3800, %.lr.ph3294 ], [ %i.ecj, %bb.gs ] ; 3 uses
  %.13.in3291 = phi i32 [ %i.ebf, %.lr.ph3294 ], [ %.133292, %bb.gs ] ; 2 uses
  %.133292 = add nsw i32 %.13.in3291, -1          ; 4 uses
  %i.ebn = add i32 %i.ebk, %.133292
  %i.ebo = sdiv i32 %i.ebn, %i.ebm                ; 3 uses
  store i32 %i.ebo, ptr %i.m, align 4, !tbaa !8
  %i.ebp = icmp sgt i32 %i.ebo, 0
  br i1 %i.ebp, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.ebq = add nsw i32 %i.ebo, -1
  %i.ebr = mul nsw i32 %i.ebq, %i.ebm
  %i.ebs = sub nsw i32 %i.dxs, %i.ebr             ; 4 uses
  %i.ebt = mul nsw i32 %i.ebs, %i.n
  %i.ebu = add nsw i32 %i.ebt, %.133292
  %i.ebv = sext i32 %i.ebu to i64
  %i.ebw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ebv
  %i.ebx = add nsw i32 %i.ebs, -1
  %i.eby = mul nsw i32 %i.ebx, %i.n
  %i.ebz = add nsw i32 %i.eby, %.13.in3291
  %i.eca = sext i32 %i.ebz to i64
  %i.ecb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eca
  %i.ecc = load i32, ptr %2, align 4, !tbaa !8
  %i.ecd = add nsw i32 %i.ecc, %i.ebs
  %i.ece = sext i32 %i.ecd to i64
  %i.ecf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ece
  %i.ecg = sext i32 %i.ebs to i64
  %i.ech = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ecg
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.ebw, ptr noundef nonnull %i.f, ptr noundef %i.ecb, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ecf, ptr noundef nonnull %i.ech, ptr noundef nonnull %i.j) #4
  %.pre3799 = load i32, ptr %i.j, align 4, !tbaa !8
  %.pre3801 = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gq, %bb.gr
  %i.eci = phi i32 [ %i.ebl, %bb.gq ], [ %.pre3801, %bb.gr ] ; 2 uses
  %i.ecj = phi i32 [ %i.ebm, %bb.gq ], [ %.pre3799, %bb.gr ]
  %.not2749.not = icmp sgt i32 %.133292, %i.eci
  br i1 %.not2749.not, label %bb.gq, label %._crit_edge3295, !llvm.loop !165

._crit_edge3295:                                  ; preds = %bb.gs, %bb.gp
  br i1 %.not, label %.loopexit2874, label %bb.gt

bb.gt:                                            ; preds = %._crit_edge3295
  store i32 %i.dxs, ptr %i.a, align 4, !tbaa !8
  %i.eck = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  store i32 %i.eck, ptr %i.d, align 4, !tbaa !8
  %i.ecl = icmp slt i32 %i.eck, 0
  %i.ecm = icmp slt i32 %i.dxx, 1
  %i.ecn = icmp sgt i32 %i.dxx, -1
  %.in27503296 = select i1 %i.ecl, i1 %i.ecm, i1 %i.ecn
  br i1 %.in27503296, label %.lr.ph3299, label %.loopexit2874

.lr.ph3299:                                       ; preds = %bb.gt, %.lr.ph3299
  %.283297 = phi i32 [ %i.ede, %.lr.ph3299 ], [ %i.dxy, %bb.gt ] ; 5 uses
  %i.eco = mul nsw i32 %.283297, %i.t
  %i.ecp = sext i32 %i.eco to i64
  %i.ecq = getelementptr [8 x i8], ptr %i.v, i64 %i.ecp
  %i.ecr = getelementptr i8, ptr %i.ecq, i64 8
  %i.ecs = add nsw i32 %.283297, -1
  %i.ect = mul nsw i32 %i.ecs, %i.t
  %i.ecu = sext i32 %i.ect to i64
  %i.ecv = getelementptr [8 x i8], ptr %i.v, i64 %i.ecu
  %i.ecw = getelementptr i8, ptr %i.ecv, i64 8
  %i.ecx = load i32, ptr %2, align 4, !tbaa !8
  %i.ecy = add nsw i32 %i.ecx, %.283297
  %i.ecz = sext i32 %i.ecy to i64
  %i.eda = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ecz
  %i.edb = sext i32 %.283297 to i64
  %i.edc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.edb
  call void @drot_(ptr noundef nonnull %i.i, ptr noundef %i.ecr, ptr noundef nonnull @c__1, ptr noundef %i.ecw, ptr noundef nonnull @c__1, ptr noundef nonnull %i.eda, ptr noundef nonnull %i.edc) #4
  %i.edd = load i32, ptr %i.d, align 4, !tbaa !8  ; 2 uses
  %i.ede = add nsw i32 %i.edd, %.283297           ; 3 uses
  %i.edf = icmp slt i32 %i.edd, 0
  %i.edg = load i32, ptr %i.a, align 4            ; 2 uses
  %i.edh = icmp sge i32 %i.ede, %i.edg
  %i.edi = icmp sle i32 %i.ede, %i.edg
  %.in2750 = select i1 %i.edf, i1 %i.edh, i1 %i.edi
  br i1 %.in2750, label %.lr.ph3299, label %.loopexit2874, !llvm.loop !166

.loopexit2874:                                    ; preds = %.lr.ph3299, %bb.gt, %._crit_edge3295
  %indvars.iv.next3705.a = add nuw nsw i64 %indvars.iv3704.a, 1
  %i.edj = load i32, ptr %i.c, align 4, !tbaa !8
  %i.edk = sext i32 %i.edj to i64
  %.not2734.not = icmp slt i64 %indvars.iv3704.a, %i.edk
  %indvars.iv.next3695 = add i32 %indvars.iv3694, 1
  %indvars.iv.next3697 = add i32 %indvars.iv3696.a, 1
  %indvars.iv.next3703 = add nsw i64 %indvars.iv3702, -1
  br i1 %.not2734.not, label %bb.ge, label %._crit_edge3305, !llvm.loop !167

._crit_edge3305:                                  ; preds = %.loopexit2874, %bb.gd
  br i1 %.not26982891, label %._crit_edge3305._crit_edge, label %bb.gu

._crit_edge3305._crit_edge:                       ; preds = %._crit_edge3305
  %.pre3802 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.gw

bb.gu:                                            ; preds = %._crit_edge3305
  %i.edl = icmp sgt i32 %.4, 0
  %i.edm = load i32, ptr %i.l, align 4            ; 4 uses
  %i.edn = icmp sgt i32 %i.edm, 0
  %or.cond5 = select i1 %i.edl, i1 %i.edn, i1 false
  %.pre3803 = load i32, ptr %4, align 4, !tbaa !8 ; 3 uses
  br i1 %or.cond5, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.edo = sub i32 %i.ac, %i.edm
  %i.edp = add nuw nsw i32 %i.edm, %.32608
  %i.edq = mul nsw i32 %i.edp, %i.q
  %i.edr = add nsw i32 %i.edo, %i.edq
  %i.eds = sext i32 %i.edr to i64
  %i.edt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.eds
  %i.edu = load double, ptr %i.edt, align 8, !tbaa !9
  %i.edv = fneg double %i.edu
  %i.edw = load double, ptr %i.k, align 8, !tbaa !9
  %i.edx = fmul double %i.edw, %i.edv
  %i.edy = add i32 %.32608, %i.ay
  %i.edz = add i32 %i.edy, %i.edm
  %i.eea = sub i32 %i.edz, %.pre3803
  %i.eeb = sext i32 %i.eea to i64
  %i.eec = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eeb
  store double %i.edx, ptr %i.eec, align 8, !tbaa !9
  br label %bb.gw

bb.gw:                                            ; preds = %._crit_edge3305._crit_edge, %bb.gu, %bb.gv
  %i.eed = phi i32 [ %.pre3802, %._crit_edge3305._crit_edge ], [ %.pre3803, %bb.gu ], [ %.pre3803, %bb.gv ] ; 3 uses
  %i.eee = icmp sgt i32 %i.eed, 0
  br i1 %i.eee, label %.lr.ph3333, label %._crit_edge3355.thread

.lr.ph3333:                                       ; preds = %bb.gw
  %i.eef = sub i32 %.42551, %i.ay
  %i.eeg = add nuw i32 %.32608, 1
  %i.eeh = add i32 %.32608, %i.ay
  br label %bb.gx

bb.gx:                                            ; preds = %.lr.ph3333, %bb.hh
  %.1525723331 = phi i32 [ %i.eed, %.lr.ph3333 ], [ %i.eir, %bb.hh ] ; 8 uses
  %i.eei = add i32 %i.eef, %.1525723331           ; 3 uses
  %i.eej = load i32, ptr %i.j, align 4, !tbaa !8  ; 3 uses
  %i.eek = add i32 %i.eeg, %.1525723331
  br i1 %.not26982891, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.eel = call i32 @llvm.smax.i32(i32 %i.eei, i32 2)
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.eem = call i32 @llvm.smax.i32(i32 %i.eei, i32 1)
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.sink4184 = phi i32 [ %i.eem, %bb.gz ], [ %i.eel, %bb.gy ]
  %.sink3784 = phi i32 [ 1, %bb.gz ], [ 2, %bb.gy ]
  %i.een = mul nsw i32 %i.eej, %.sink4184
  %i.eeo = sub i32 %i.eek, %i.een                 ; 7 uses
  store i32 %.sink3784, ptr %i.c, align 4, !tbaa !8
  store i32 %i.eei, ptr %i.d, align 4, !tbaa !8
  %i.eep = load i32, ptr %4, align 4, !tbaa !8
  %i.eeq = sub nsw i32 %i.eep, %.1525723331       ; 2 uses
  %i.eer = icmp sgt i32 %i.eeq, 0
  %i.ees = add i32 %i.eeo, -1                     ; 2 uses
  br i1 %i.eer, label %.lr.ph3308, label %._crit_edge3309

.lr.ph3308:                                       ; preds = %bb.ha, %bb.hc
  %i.eet = phi i32 [ %i.efy, %bb.hc ], [ %i.eej, %bb.ha ] ; 3 uses
  %.143306 = phi i32 [ %i.efz, %bb.hc ], [ %i.eeq, %bb.ha ] ; 5 uses
  %i.eeu = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.eev = add i32 %i.ees, %.143306
  %i.eew = add i32 %i.eev, %i.eeu
  %i.eex = sdiv i32 %i.eew, %i.eet                ; 3 uses
  store i32 %i.eex, ptr %i.m, align 4, !tbaa !8
  %i.eey = icmp sgt i32 %i.eex, 0
  br i1 %i.eey, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %.lr.ph3308
  %i.eez = add nsw i32 %i.eex, -1
  %i.efa = mul nsw i32 %i.eez, %i.eet
  %i.efb = sub nsw i32 %i.eeo, %i.efa             ; 2 uses
  %i.efc = add nsw i32 %i.efb, %i.eeu             ; 2 uses
  %i.efd = mul nsw i32 %i.efc, %i.n
  %i.efe = add nsw i32 %i.efd, %.143306
  %i.eff = sext i32 %i.efe to i64
  %i.efg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eff
  %i.efh = add nuw nsw i32 %.143306, 1
  %i.efi = add nsw i32 %i.efc, -1
  %i.efj = mul nsw i32 %i.efi, %i.n
  %i.efk = add nsw i32 %i.efh, %i.efj
  %i.efl = sext i32 %i.efk to i64
  %i.efm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.efl
  %i.efn = load i32, ptr %2, align 4, !tbaa !8
  %i.efo = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.efp = add i32 %i.eeu, %i.ay
  %i.efq = add i32 %i.efp, %i.efb                 ; 2 uses
  %i.efr = add i32 %i.efq, %i.efn
  %i.efs = sub i32 %i.efr, %i.efo
  %i.eft = sext i32 %i.efs to i64
  %i.efu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eft
  %i.efv = sub i32 %i.efq, %i.efo
  %i.efw = sext i32 %i.efv to i64
  %i.efx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.efw
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.efg, ptr noundef nonnull %i.f, ptr noundef %i.efm, ptr noundef nonnull %i.f, ptr noundef nonnull %i.efu, ptr noundef nonnull %i.efx, ptr noundef nonnull %i.j) #4
  %.pre3804 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.hc

bb.hc:                                            ; preds = %.lr.ph3308, %bb.hb
  %i.efy = phi i32 [ %i.eet, %.lr.ph3308 ], [ %.pre3804, %bb.hb ] ; 2 uses
  %i.efz = add nsw i32 %.143306, -1
  %i.ega = icmp sgt i32 %.143306, 1
  br i1 %i.ega, label %.lr.ph3308, label %._crit_edge3309, !llvm.loop !168

._crit_edge3309:                                  ; preds = %bb.hc, %bb.ha
  %i.egb = phi i32 [ %i.eej, %bb.ha ], [ %i.efy, %bb.hc ] ; 8 uses
  %i.egc = load i32, ptr %3, align 4, !tbaa !8    ; 5 uses
  %i.egd = add i32 %i.ees, %i.egc
  %i.ege = sdiv i32 %i.egd, %i.egb                ; 2 uses
  store i32 %i.ege, ptr %i.h, align 4, !tbaa !8
  %i.egf = add nsw i32 %i.ege, -1
  %i.egg = mul nsw i32 %i.egf, %i.egb             ; 3 uses
  %i.egh = sub i32 %i.eeo, %i.egg                 ; 2 uses
  %i.egi = icmp slt i32 %i.egb, 0                 ; 3 uses
  %i.egj = icmp slt i32 %i.egg, 1
  %i.egk = icmp sgt i32 %i.egg, -1
  %.in27423310 = select i1 %i.egi, i1 %i.egj, i1 %i.egk
  br i1 %.in27423310, label %.lr.ph3313, label %._crit_edge3314

.lr.ph3313:                                       ; preds = %._crit_edge3309
  %i.egl = load i32, ptr %4, align 4, !tbaa !8
  %i.egm = sub i32 %i.ay, %i.egl                  ; 2 uses
  %i.egn = load i32, ptr %2, align 4, !tbaa !8
  %invariant.op3318 = add i32 %i.egm, %i.egn
  %i.ego = sext i32 %i.egh to i64
  %i.egp = sext i32 %i.egb to i64
  %i.egq = sext i32 %i.eeo to i64                 ; 2 uses
  br label %bb.hd

bb.hd:                                            ; preds = %.lr.ph3313, %bb.hd
  %indvars.iv3710 = phi i64 [ %i.ego, %.lr.ph3313 ], [ %indvars.iv.next3711, %bb.hd ] ; 2 uses
  %i.egr = trunc nsw i64 %indvars.iv3710 to i32   ; 2 uses
  %i.egs = add nsw i32 %i.egm, %i.egr             ; 2 uses
  %i.egt = add nsw i32 %i.egs, %i.egc
  %i.egu = sext i32 %i.egt to i64
  %i.egv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.egu
  %i.egw = load double, ptr %i.egv, align 8, !tbaa !9
  %i.egx = sext i32 %i.egs to i64
  %i.egy = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.egx
  store double %i.egw, ptr %i.egy, align 8, !tbaa !9
  %.reass3319 = add i32 %invariant.op3318, %i.egr ; 2 uses
  %i.egz = add nsw i32 %.reass3319, %i.egc
  %i.eha = sext i32 %i.egz to i64
  %i.ehb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eha
  %i.ehc = load double, ptr %i.ehb, align 8, !tbaa !9
  %i.ehd = sext i32 %.reass3319 to i64
  %i.ehe = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ehd
  store double %i.ehc, ptr %i.ehe, align 8, !tbaa !9
  %indvars.iv.next3711 = add nsw i64 %indvars.iv3710, %i.egp ; 3 uses
  %i.ehf = icmp sge i64 %indvars.iv.next3711, %i.egq
  %i.ehg = icmp sle i64 %indvars.iv.next3711, %i.egq
  %.in2742 = select i1 %i.egi, i1 %i.ehf, i1 %i.ehg
  br i1 %.in2742, label %bb.hd, label %.lr.ph3323, !llvm.loop !169

._crit_edge3314:                                  ; preds = %._crit_edge3309
  store i32 %i.eeo, ptr %i.d, align 4, !tbaa !8
  store i32 %i.egb, ptr %i.c, align 4, !tbaa !8
  br label %._crit_edge3324

.lr.ph3323:                                       ; preds = %bb.hd
  store i32 %i.eeo, ptr %i.d, align 4, !tbaa !8
  store i32 %i.egb, ptr %i.c, align 4, !tbaa !8
  %i.ehh = add i32 %i.egc, -1
  %i.ehi = load i32, ptr %4, align 4, !tbaa !8
  %invariant.op3325 = sub i32 %i.ay, %i.ehi       ; 2 uses
  %i.ehj = load i32, ptr %2, align 4, !tbaa !8
  %invariant.op3329 = add i32 %invariant.op3325, %i.ehj
  %i.ehk = sext i32 %i.egh to i64
  %i.ehl = sext i32 %i.egb to i64
  %i.ehm = sext i32 %i.eeo to i64                 ; 2 uses
  br label %bb.he

bb.he:                                            ; preds = %.lr.ph3323, %bb.he
  %indvars.iv3713 = phi i64 [ %i.ehk, %.lr.ph3323 ], [ %indvars.iv.next3714, %bb.he ] ; 2 uses
  %i.ehn = trunc nsw i64 %indvars.iv3713 to i32   ; 3 uses
  %i.eho = add i32 %i.ehh, %i.ehn
  %i.ehp = mul nsw i32 %i.eho, %i.n
  %i.ehq = sext i32 %i.ehp to i64
  %i.ehr = getelementptr [8 x i8], ptr %i.p, i64 %i.ehq
  %i.ehs = getelementptr i8, ptr %i.ehr, i64 8    ; 3 uses
  %i.eht = load double, ptr %i.ehs, align 8, !tbaa !9
  %.reass3326 = add i32 %invariant.op3325, %i.ehn
  %i.ehu = sext i32 %.reass3326 to i64
  %i.ehv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ehu ; 2 uses
  %i.ehw = load double, ptr %i.ehv, align 8, !tbaa !9
  %i.ehx = fmul double %i.eht, %i.ehw
  store double %i.ehx, ptr %i.ehv, align 8, !tbaa !9
  %.reass3330 = add i32 %invariant.op3329, %i.ehn
  %i.ehy = sext i32 %.reass3330 to i64
  %i.ehz = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ehy
  %i.eia = load double, ptr %i.ehz, align 8, !tbaa !9
  %i.eib = load double, ptr %i.ehs, align 8, !tbaa !9
  %i.eic = fmul double %i.eia, %i.eib
  store double %i.eic, ptr %i.ehs, align 8, !tbaa !9
  %indvars.iv.next3714 = add nsw i64 %indvars.iv3713, %i.ehl ; 3 uses
  %i.eid = icmp sge i64 %indvars.iv.next3714, %i.ehm
  %i.eie = icmp sle i64 %indvars.iv.next3714, %i.ehm
  %.in2743 = select i1 %i.egi, i1 %i.eid, i1 %i.eie
  br i1 %.in2743, label %bb.he, label %._crit_edge3324, !llvm.loop !170

._crit_edge3324:                                  ; preds = %bb.he, %._crit_edge3314
  br i1 %.not26982891, label %bb.hh, label %bb.hf

bb.hf:                                            ; preds = %._crit_edge3324
  %i.eif = add nsw i32 %.1525723331, %.32608
  %i.eig = icmp sle i32 %i.eif, %i.egb
  %i.eih = load i32, ptr %i.l, align 4
  %.not2744 = icmp sgt i32 %.1525723331, %i.eih
  %or.cond2762 = select i1 %i.eig, i1 true, i1 %.not2744
  br i1 %or.cond2762, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.eii = load i32, ptr %4, align 4, !tbaa !8
  %i.eij = add i32 %i.eeh, %.1525723331
  %i.eik = sub i32 %i.eij, %i.eii                 ; 2 uses
  %i.eil = sext i32 %i.eik to i64
  %i.eim = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eil
  %i.ein = load double, ptr %i.eim, align 8, !tbaa !9
  %i.eio = sub nsw i32 %i.eik, %i.egc
  %i.eip = sext i32 %i.eio to i64
  %i.eiq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eip
  store double %i.ein, ptr %i.eiq, align 8, !tbaa !9
  br label %bb.hh

bb.hh:                                            ; preds = %._crit_edge3324, %bb.hg, %bb.hf
  %i.eir = add nsw i32 %.1525723331, -1
  %i.eis = icmp sgt i32 %.1525723331, 1
  br i1 %i.eis, label %bb.gx, label %._crit_edge3334, !llvm.loop !171

._crit_edge3334:                                  ; preds = %bb.hh
  %.pre3806 = load i32, ptr %4, align 4, !tbaa !8 ; 3 uses
  %i.eit = icmp sgt i32 %.pre3806, 0
  br i1 %i.eit, label %.lr.ph3354, label %._crit_edge3355.thread

.lr.ph3354:                                       ; preds = %._crit_edge3334
  %i.eiu = sub i32 %.42551, %i.ay
  %i.eiv = add nuw i32 %.32608, 1
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph3354, %.loopexit2873
  %.1625733352 = phi i32 [ %.pre3806, %.lr.ph3354 ], [ %i.eoc, %.loopexit2873 ] ; 5 uses
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %i.eiw = add i32 %i.eiu, %.1625733352           ; 2 uses
  store i32 %i.eiw, ptr %i.d, align 4, !tbaa !8
  %i.eix = call i32 @llvm.smax.i32(i32 %i.eiw, i32 1)
  %i.eiy = load i32, ptr %i.j, align 4, !tbaa !8  ; 3 uses
  %i.eiz = mul nsw i32 %i.eiy, %i.eix
  %i.eja = add i32 %i.eiv, %.1625733352
  %i.ejb = sub i32 %i.eja, %i.eiz                 ; 5 uses
  %i.ejc = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.ejd = add i32 %i.ejc, -1
  %i.eje = add i32 %i.ejd, %i.ejb
  %i.ejf = sdiv i32 %i.eje, %i.eiy                ; 3 uses
  store i32 %i.ejf, ptr %i.h, align 4, !tbaa !8
  %i.ejg = add nsw i32 %i.ejf, -1
  %i.ejh = mul nsw i32 %i.ejg, %i.eiy             ; 3 uses
  %i.eji = sub nsw i32 %i.ejb, %i.ejh             ; 6 uses
  %i.ejj = icmp sgt i32 %i.ejf, 0
  %.pre3809 = load i32, ptr %4, align 4, !tbaa !8 ; 2 uses
  br i1 %i.ejj, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.ejk = add nsw i32 %i.eji, %i.ejc
  %i.ejl = mul nsw i32 %i.ejk, %i.n
  %i.ejm = sext i32 %i.ejl to i64
  %i.ejn = getelementptr [8 x i8], ptr %i.p, i64 %i.ejm
  %i.ejo = getelementptr i8, ptr %i.ejn, i64 8
  %i.ejp = add i32 %i.eji, %i.ay                  ; 5 uses
  %i.ejq = sub i32 %i.ejp, %.pre3809              ; 2 uses
  %i.ejr = sext i32 %i.ejq to i64
  %i.ejs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ejr
  %i.ejt = load i32, ptr %2, align 4, !tbaa !8
  %i.eju = add i32 %i.ejq, %i.ejt
  %i.ejv = sext i32 %i.eju to i64
  %i.ejw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ejv
  call void @dlargv_(ptr noundef nonnull %i.h, ptr noundef %i.ejo, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ejs, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ejw, ptr noundef nonnull %i.j) #4
  %i.ejx = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.ejy = add nsw i32 %i.ejx, -1
  store i32 %i.ejy, ptr %i.c, align 4, !tbaa !8
  %.not27393335 = icmp slt i32 %i.ejx, 2
  br i1 %.not27393335, label %._crit_edge3340, label %.lr.ph3339

.lr.ph3339:                                       ; preds = %bb.hj, %.lr.ph3339
  %.15.neg3337 = phi i32 [ %.15.neg, %.lr.ph3339 ], [ -1, %bb.hj ]
  %.153336 = phi i32 [ %i.ekt, %.lr.ph3339 ], [ 1, %bb.hj ] ; 4 uses
  %i.ejz = load i32, ptr %i.j, align 4, !tbaa !8
  %i.eka = add nsw i32 %.153336, %i.eji
  %i.ekb = mul nsw i32 %i.eka, %i.n
  %i.ekc = add i32 %i.ekb, %.15.neg3337           ; 2 uses
  %i.ekd = add i32 %i.ekc, %i.ejz
  %i.eke = sext i32 %i.ekd to i64
  %i.ekf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eke
  %i.ekg = load i32, ptr %3, align 4, !tbaa !8
  %i.ekh = add i32 %i.ekc, %i.ekg
  %i.eki = sext i32 %i.ekh to i64
  %i.ekj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eki
  %i.ekk = load i32, ptr %2, align 4, !tbaa !8
  %i.ekl = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.ekm = add i32 %i.ejp, %i.ekk
  %i.ekn = sub i32 %i.ekm, %i.ekl
  %i.eko = sext i32 %i.ekn to i64
  %i.ekp = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eko
  %i.ekq = sub i32 %i.ejp, %i.ekl
  %i.ekr = sext i32 %i.ekq to i64
  %i.eks = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ekr
  call void @dlartv_(ptr noundef nonnull %i.h, ptr noundef %i.ekf, ptr noundef nonnull %i.f, ptr noundef %i.ekj, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ekp, ptr noundef nonnull %i.eks, ptr noundef nonnull %i.j) #4
  %i.ekt = add nuw nsw i32 %.153336, 1
  %.15.neg = xor i32 %.153336, -1
  %i.eku = load i32, ptr %i.c, align 4, !tbaa !8
  %.not2739.not = icmp slt i32 %.153336, %i.eku
  br i1 %.not2739.not, label %.lr.ph3339, label %._crit_edge3340.loopexit, !llvm.loop !172

._crit_edge3340.loopexit:                         ; preds = %.lr.ph3339
  %.pre3807 = load i32, ptr %3, align 4, !tbaa !8
  br label %._crit_edge3340

._crit_edge3340:                                  ; preds = %._crit_edge3340.loopexit, %bb.hj
  %i.ekv = phi i32 [ %.pre3807, %._crit_edge3340.loopexit ], [ %i.ejx, %bb.hj ]
  %i.ekw = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.ekx = mul nsw i32 %i.eji, %i.n               ; 2 uses
  %i.eky = add nsw i32 %i.ekw, %i.ekx
  %i.ekz = sext i32 %i.eky to i64
  %i.ela = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ekz
  %i.elb = add nsw i32 %i.eji, -1
  %i.elc = mul nsw i32 %i.elb, %i.n
  %i.eld = add nsw i32 %i.ekw, %i.elc
  %i.ele = sext i32 %i.eld to i64
  %i.elf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ele
  %i.elg = add nsw i32 %i.ekv, %i.ekx
  %i.elh = sext i32 %i.elg to i64
  %i.eli = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.elh
  %i.elj = load i32, ptr %2, align 4, !tbaa !8
  %i.elk = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.ell = add i32 %i.ejp, %i.elj
  %i.elm = sub i32 %i.ell, %i.elk
  %i.eln = sext i32 %i.elm to i64
  %i.elo = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eln
  %i.elp = sub i32 %i.ejp, %i.elk
  %i.elq = sext i32 %i.elp to i64
  %i.elr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.elq
  call void @dlar2v_(ptr noundef nonnull %i.h, ptr noundef %i.ela, ptr noundef %i.elf, ptr noundef %i.eli, ptr noundef nonnull %i.f, ptr noundef nonnull %i.elo, ptr noundef nonnull %i.elr, ptr noundef nonnull %i.j) #4
  %.pre3808 = load i32, ptr %4, align 4, !tbaa !8
  %.pre3810 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.hk

bb.hk:                                            ; preds = %._crit_edge3340, %bb.hi
  %i.els = phi i32 [ %.pre3810, %._crit_edge3340 ], [ %i.ejc, %bb.hi ] ; 2 uses
  %i.elt = phi i32 [ %.pre3808, %._crit_edge3340 ], [ %.pre3809, %bb.hi ]
  %reass.sub3509 = sub i32 %i.elt, %.1625733352
  %i.elu = add i32 %reass.sub3509, 1              ; 3 uses
  store i32 %i.elu, ptr %i.c, align 4, !tbaa !8
  %.not2740.not3342 = icmp sgt i32 %i.els, %i.elu
  br i1 %.not2740.not3342, label %.lr.ph3346, label %._crit_edge3347

.lr.ph3346:                                       ; preds = %bb.hk
  %i.elv = add i32 %i.ejb, -1
  %.pre3812 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.hl

bb.hl:                                            ; preds = %.lr.ph3346, %bb.hn
  %i.elw = phi i32 [ %i.elu, %.lr.ph3346 ], [ %i.emx, %bb.hn ]
  %i.elx = phi i32 [ %.pre3812, %.lr.ph3346 ], [ %i.emy, %bb.hn ] ; 3 uses
  %.16.in3343 = phi i32 [ %i.els, %.lr.ph3346 ], [ %.163344, %bb.hn ] ; 2 uses
  %.163344 = add nsw i32 %.16.in3343, -1          ; 4 uses
  %i.ely = add i32 %i.elv, %.163344
  %i.elz = sdiv i32 %i.ely, %i.elx                ; 3 uses
  store i32 %i.elz, ptr %i.m, align 4, !tbaa !8
  %i.ema = icmp sgt i32 %i.elz, 0
  br i1 %i.ema, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.emb = add nsw i32 %i.elz, -1
  %i.emc = mul nsw i32 %i.emb, %i.elx
  %i.emd = sub nsw i32 %i.ejb, %i.emc             ; 3 uses
  %i.eme = mul nsw i32 %i.emd, %i.n
  %i.emf = add nsw i32 %i.eme, %.163344
  %i.emg = sext i32 %i.emf to i64
  %i.emh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.emg
  %i.emi = add nsw i32 %i.emd, -1
  %i.emj = mul nsw i32 %i.emi, %i.n
  %i.emk = add nsw i32 %i.emj, %.16.in3343
  %i.eml = sext i32 %i.emk to i64
  %i.emm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eml
  %i.emn = load i32, ptr %2, align 4, !tbaa !8
  %i.emo = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.emp = add i32 %i.emd, %i.ay                  ; 2 uses
  %i.emq = add i32 %i.emp, %i.emn
  %i.emr = sub i32 %i.emq, %i.emo
  %i.ems = sext i32 %i.emr to i64
  %i.emt = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ems
  %i.emu = sub i32 %i.emp, %i.emo
  %i.emv = sext i32 %i.emu to i64
  %i.emw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.emv
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.emh, ptr noundef nonnull %i.f, ptr noundef %i.emm, ptr noundef nonnull %i.f, ptr noundef nonnull %i.emt, ptr noundef nonnull %i.emw, ptr noundef nonnull %i.j) #4
  %.pre3811 = load i32, ptr %i.j, align 4, !tbaa !8
  %.pre3813 = load i32, ptr %i.c, align 4, !tbaa !8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hl, %bb.hm
  %i.emx = phi i32 [ %i.elw, %bb.hl ], [ %.pre3813, %bb.hm ] ; 2 uses
  %i.emy = phi i32 [ %i.elx, %bb.hl ], [ %.pre3811, %bb.hm ]
  %.not2740.not = icmp sgt i32 %.163344, %i.emx
  br i1 %.not2740.not, label %bb.hl, label %._crit_edge3347, !llvm.loop !173

._crit_edge3347:                                  ; preds = %bb.hn, %bb.hk
  br i1 %.not, label %.loopexit2873, label %bb.ho

bb.ho:                                            ; preds = %._crit_edge3347
  store i32 %i.ejb, ptr %i.c, align 4, !tbaa !8
  %i.emz = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  store i32 %i.emz, ptr %i.d, align 4, !tbaa !8
  %i.ena = icmp slt i32 %i.emz, 0
  %i.enb = icmp slt i32 %i.ejh, 1
  %i.enc = icmp sgt i32 %i.ejh, -1
  %.in27413348 = select i1 %i.ena, i1 %i.enb, i1 %i.enc
  br i1 %.in27413348, label %.lr.ph3351, label %.loopexit2873

.lr.ph3351:                                       ; preds = %bb.ho, %.lr.ph3351
  %.313349 = phi i32 [ %i.enx, %.lr.ph3351 ], [ %i.eji, %bb.ho ] ; 4 uses
  %i.end = mul nsw i32 %.313349, %i.t
  %i.ene = sext i32 %i.end to i64
  %i.enf = getelementptr [8 x i8], ptr %i.v, i64 %i.ene
  %i.eng = getelementptr i8, ptr %i.enf, i64 8
  %i.enh = add nsw i32 %.313349, -1
  %i.eni = mul nsw i32 %i.enh, %i.t
  %i.enj = sext i32 %i.eni to i64
  %i.enk = getelementptr [8 x i8], ptr %i.v, i64 %i.enj
  %i.enl = getelementptr i8, ptr %i.enk, i64 8
  %i.enm = load i32, ptr %2, align 4, !tbaa !8
  %i.enn = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.eno = add i32 %.313349, %i.ay                ; 2 uses
  %i.enp = add i32 %i.eno, %i.enm
  %i.enq = sub i32 %i.enp, %i.enn
  %i.enr = sext i32 %i.enq to i64
  %i.ens = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.enr
  %i.ent = sub i32 %i.eno, %i.enn
  %i.enu = sext i32 %i.ent to i64
  %i.env = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.enu
  call void @drot_(ptr noundef nonnull %i.i, ptr noundef %i.eng, ptr noundef nonnull @c__1, ptr noundef %i.enl, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ens, ptr noundef nonnull %i.env) #4
  %i.enw = load i32, ptr %i.d, align 4, !tbaa !8  ; 2 uses
  %i.enx = add nsw i32 %i.enw, %.313349           ; 3 uses
  %i.eny = icmp slt i32 %i.enw, 0
  %i.enz = load i32, ptr %i.c, align 4            ; 2 uses
  %i.eoa = icmp sge i32 %i.enx, %i.enz
  %i.eob = icmp sle i32 %i.enx, %i.enz
  %.in2741 = select i1 %i.eny, i1 %i.eoa, i1 %i.eob
  br i1 %.in2741, label %.lr.ph3351, label %.loopexit2873, !llvm.loop !174

.loopexit2873:                                    ; preds = %.lr.ph3351, %bb.ho, %._crit_edge3347
  %i.eoc = add nsw i32 %.1625733352, -1
  %i.eod = icmp sgt i32 %.1625733352, 1
  br i1 %i.eod, label %bb.hi, label %._crit_edge3355, !llvm.loop !175

._crit_edge3355.thread:                           ; preds = %._crit_edge3334, %bb.gw
  %.ph4097 = phi i32 [ %.pre3806, %._crit_edge3334 ], [ %i.eed, %bb.gw ] ; 2 uses
  %i.eoe = add nsw i32 %.ph4097, -1
  store i32 %i.eoe, ptr %i.d, align 4, !tbaa !8
  br label %._crit_edge3364.thread

._crit_edge3355:                                  ; preds = %.loopexit2873
  %.pre3814 = load i32, ptr %4, align 4, !tbaa !8 ; 3 uses
  %i.eof = add nsw i32 %.pre3814, -1              ; 2 uses
  store i32 %i.eof, ptr %i.d, align 4, !tbaa !8
  %.not27353360 = icmp slt i32 %.pre3814, 2
  br i1 %.not27353360, label %._crit_edge3364.thread, label %.lr.ph3363

.lr.ph3363:                                       ; preds = %._crit_edge3355
  %.reass4149.reass = add i32 %.42551, %invariant.op4783.a
  %i.eog = add nuw i32 %.32608, 1
  %.pre3899 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br label %bb.hp

bb.hp:                                            ; preds = %.lr.ph3363, %._crit_edge3359
  %.pre3816 = phi i32 [ %.pre3899, %.lr.ph3363 ], [ %.pre38163900, %._crit_edge3359 ] ; 3 uses
  %i.eoh = phi i32 [ %.pre3899, %.lr.ph3363 ], [ %i.eps, %._crit_edge3359 ] ; 2 uses
  %i.eoi = phi i32 [ %i.eof, %.lr.ph3363 ], [ %i.ept, %._crit_edge3359 ]
  %.1725743361 = phi i32 [ 1, %.lr.ph3363 ], [ %i.epu, %._crit_edge3359 ] ; 5 uses
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %i.eoj = add i32 %.reass4149.reass, %.1725743361 ; 2 uses
  store i32 %i.eoj, ptr %i.a, align 4, !tbaa !8
  %i.eok = call i32 @llvm.smax.i32(i32 %i.eoj, i32 1)
  %i.eol = mul nsw i32 %i.eok, %i.eoh
  %i.eom = add i32 %i.eog, %.1725743361
  %i.eon = sub i32 %i.eom, %i.eol                 ; 2 uses
  %i.eoo = load i32, ptr %4, align 4, !tbaa !8
  %i.eop = sub nsw i32 %i.eoo, %.1725743361       ; 2 uses
  %i.eoq = icmp sgt i32 %i.eop, 0
  br i1 %i.eoq, label %.lr.ph3358, label %._crit_edge3359

.lr.ph3358:                                       ; preds = %bb.hp
  %i.eor = add i32 %i.eon, -1
  br label %bb.hq

bb.hq:                                            ; preds = %.lr.ph3358, %bb.hs
  %.pre38163902 = phi i32 [ %.pre3816, %.lr.ph3358 ], [ %.pre38163901, %bb.hs ]
  %i.eos = phi i32 [ %.pre3816, %.lr.ph3358 ], [ %i.epp, %bb.hs ] ; 3 uses
  %.173356 = phi i32 [ %i.eop, %.lr.ph3358 ], [ %i.epq, %bb.hs ] ; 5 uses
  %i.eot = add i32 %i.eor, %.173356
  %i.eou = sdiv i32 %i.eot, %i.eos                ; 3 uses
  store i32 %i.eou, ptr %i.m, align 4, !tbaa !8
  %i.eov = icmp sgt i32 %i.eou, 0
  br i1 %i.eov, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.eow = add nsw i32 %i.eou, -1
  %i.eox = mul nsw i32 %i.eow, %i.eos
  %i.eoy = sub nsw i32 %i.eon, %i.eox             ; 4 uses
  %i.eoz = mul nsw i32 %i.eoy, %i.n
  %i.epa = add nsw i32 %i.eoz, %.173356
  %i.epb = sext i32 %i.epa to i64
  %i.epc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.epb
  %i.epd = add nuw nsw i32 %.173356, 1
  %i.epe = add nsw i32 %i.eoy, -1
  %i.epf = mul nsw i32 %i.epe, %i.n
  %i.epg = add nsw i32 %i.epd, %i.epf
  %i.eph = sext i32 %i.epg to i64
  %i.epi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eph
  %i.epj = load i32, ptr %2, align 4, !tbaa !8
  %i.epk = add nsw i32 %i.epj, %i.eoy
  %i.epl = sext i32 %i.epk to i64
  %i.epm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.epl
  %i.epn = sext i32 %i.eoy to i64
  %i.epo = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.epn
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.epc, ptr noundef nonnull %i.f, ptr noundef %i.epi, ptr noundef nonnull %i.f, ptr noundef nonnull %i.epm, ptr noundef nonnull %i.epo, ptr noundef nonnull %i.j) #4
  %.pre3815 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  %.pre38163901 = phi i32 [ %.pre38163902, %bb.hq ], [ %.pre3815, %bb.hr ] ; 2 uses
  %i.epp = phi i32 [ %i.eos, %bb.hq ], [ %.pre3815, %bb.hr ] ; 2 uses
  %i.epq = add nsw i32 %.173356, -1
  %i.epr = icmp sgt i32 %.173356, 1
  br i1 %i.epr, label %bb.hq, label %._crit_edge3359.loopexit, !llvm.loop !176

._crit_edge3359.loopexit:                         ; preds = %bb.hs
  %.pre3817 = load i32, ptr %i.d, align 4, !tbaa !8
  br label %._crit_edge3359

._crit_edge3359:                                  ; preds = %._crit_edge3359.loopexit, %bb.hp
  %.pre38163900 = phi i32 [ %.pre38163901, %._crit_edge3359.loopexit ], [ %.pre3816, %bb.hp ]
  %i.eps = phi i32 [ %i.epp, %._crit_edge3359.loopexit ], [ %i.eoh, %bb.hp ]
  %i.ept = phi i32 [ %.pre3817, %._crit_edge3359.loopexit ], [ %i.eoi, %bb.hp ] ; 2 uses
  %i.epu = add nuw nsw i32 %.1725743361, 1
  %.not2735.not = icmp slt i32 %.1725743361, %i.ept
  br i1 %.not2735.not, label %bb.hp, label %._crit_edge3364, !llvm.loop !177

._crit_edge3364.thread:                           ; preds = %._crit_edge3355, %._crit_edge3355.thread
  %.ph4099 = phi i32 [ %.ph4097, %._crit_edge3355.thread ], [ %.pre3814, %._crit_edge3355 ]
  %.pre3788.pre.pre4100 = load i32, ptr %3, align 4, !tbaa !8
  br label %.outer.backedge

._crit_edge3364:                                  ; preds = %._crit_edge3359
  %.pre3818 = load i32, ptr %4, align 4, !tbaa !8 ; 7 uses
  %i.epv = icmp sgt i32 %.pre3818, 1
  %.pre3788.pre.pre = load i32, ptr %3, align 4, !tbaa !8 ; 7 uses
  br i1 %i.epv, label %bb.ht, label %.outer.backedge

bb.ht:                                            ; preds = %._crit_edge3364
  %i.epw = add nuw nsw i32 %.pre3818, %.32608     ; 2 uses
  store i32 %i.epw, ptr %i.c, align 4, !tbaa !8
  %i.epx = call i32 @llvm.smin.i32(i32 %i.epw, i32 %i.ay) ; 2 uses
  %i.epy = shl i32 %.pre3788.pre.pre, 1           ; 2 uses
  %i.epz = xor i32 %i.epy, -1
  %i.eqa = add i32 %i.epx, %i.epz                 ; 2 uses
  store i32 %i.eqa, ptr %i.d, align 4, !tbaa !8
  %.not27373365 = icmp slt i32 %i.eqa, 2
  br i1 %.not27373365, label %.outer.backedge, label %.lr.ph3368

.lr.ph3368:                                       ; preds = %bb.ht
  %i.eqb = load i32, ptr %2, align 4, !tbaa !8
  %i.eqc = sext i32 %i.eqb to i64                 ; 9 uses
  %i.eqd = sext i32 %.pre3788.pre.pre to i64      ; 5 uses
  %i.eqe = sub i32 %i.epx, %i.epy
  %wide.trip.count3720 = zext i32 %i.eqe to i64   ; 4 uses
  %invariant.gep4140 = getelementptr [8 x i8], ptr %i.w, i64 %i.eqd ; 6 uses
  %invariant.gep4142 = getelementptr [8 x i8], ptr %i.w, i64 %i.eqd ; 6 uses
  %i.eqf = add nsw i64 %wide.trip.count3720, -2   ; 3 uses
  %min.iters.check4443 = icmp ult i64 %i.eqf, 16
  br i1 %min.iters.check4443, label %scalar.ph4442.preheader, label %vector.memcheck4434

vector.memcheck4434:                              ; preds = %.lr.ph3368
  %i.eqg = shl nsw i64 %i.eqc, 3
  %diff.check4435 = icmp ugt i64 %i.eqg, -64
  %i.eqh = shl nsw i64 %i.eqd, 3
  %diff.check4436 = icmp ugt i64 %i.eqh, -64
  %conflict.rdx4437 = or i1 %diff.check4435, %diff.check4436
  %i.eqi = sub nsw i64 %i.eqd, %i.eqc
  %i.eqj = shl nsw i64 %i.eqi, 3
  %i.eqk = add nsw i64 %i.eqj, -1
  %diff.check4438 = icmp ult i64 %i.eqk, 63
  %conflict.rdx4439 = or i1 %conflict.rdx4437, %diff.check4438
  %i.eql = add nsw i64 %i.eqc, %i.eqd
  %i.eqm = shl nsw i64 %i.eql, 3
  %diff.check4440 = icmp ugt i64 %i.eqm, -64
  %conflict.rdx4441 = or i1 %conflict.rdx4439, %diff.check4440
  br i1 %conflict.rdx4441, label %scalar.ph4442.preheader, label %vector.ph4444

vector.ph4444:                                    ; preds = %vector.memcheck4434
  %n.vec4445 = and i64 %i.eqf, -8                 ; 3 uses
  %i.eqn = or disjoint i64 %n.vec4445, 2
  br label %vector.body4446

vector.body4446:                                  ; preds = %vector.body4446, %vector.ph4444
  %index4447 = phi i64 [ 0, %vector.ph4444 ], [ %index.next4452, %vector.body4446 ] ; 2 uses
  %i.eqo = or disjoint i64 %index4447, 2          ; 3 uses
  %i.eqp = add nsw i64 %i.eqo, %i.eqc             ; 2 uses
  %i.eqq = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.eqp ; 2 uses
  %i.eqr = getelementptr i8, ptr %i.eqq, i64 32
  %wide.load4448 = load <4 x double>, ptr %i.eqq, align 8, !tbaa !9
  %wide.load4449 = load <4 x double>, ptr %i.eqr, align 8, !tbaa !9
  %i.eqs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eqp ; 2 uses
  %i.eqt = getelementptr inbounds nuw i8, ptr %i.eqs, i64 32
  store <4 x double> %wide.load4448, ptr %i.eqs, align 8, !tbaa !9
  store <4 x double> %wide.load4449, ptr %i.eqt, align 8, !tbaa !9
  %i.equ = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %i.eqo ; 2 uses
  %i.eqv = getelementptr i8, ptr %i.equ, i64 32
  %wide.load4450 = load <4 x double>, ptr %i.equ, align 8, !tbaa !9
  %wide.load4451 = load <4 x double>, ptr %i.eqv, align 8, !tbaa !9
  %i.eqw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eqo ; 2 uses
  %i.eqx = getelementptr inbounds nuw i8, ptr %i.eqw, i64 32
  store <4 x double> %wide.load4450, ptr %i.eqw, align 8, !tbaa !9
  store <4 x double> %wide.load4451, ptr %i.eqx, align 8, !tbaa !9
  %index.next4452 = add nuw i64 %index4447, 8     ; 2 uses
  %i.eqy = icmp eq i64 %index.next4452, %n.vec4445
  br i1 %i.eqy, label %middle.block4453, label %vector.body4446, !llvm.loop !178

middle.block4453:                                 ; preds = %vector.body4446
  %cmp.n4454 = icmp eq i64 %i.eqf, %n.vec4445
  br i1 %cmp.n4454, label %.outer.backedge, label %scalar.ph4442.preheader

.outer.backedge:                                  ; preds = %scalar.ph4442.prol.loopexit, %scalar.ph4442, %middle.block4453, %._crit_edge3364.thread, %bb.ht, %._crit_edge3364
  %.pre3788.be = phi i32 [ %.pre3788.pre.pre4100, %._crit_edge3364.thread ], [ %.pre3788.pre.pre, %._crit_edge3364 ], [ %.pre3788.pre.pre, %bb.ht ], [ %.pre3788.pre.pre, %middle.block4453 ], [ %.pre3788.pre.pre, %scalar.ph4442 ], [ %.pre3788.pre.pre, %scalar.ph4442.prol.loopexit ]
  %.be4675 = phi i32 [ %.ph4099, %._crit_edge3364.thread ], [ %.pre3818, %._crit_edge3364 ], [ %.pre3818, %bb.ht ], [ %.pre3818, %middle.block4453 ], [ %.pre3818, %scalar.ph4442 ], [ %.pre3818, %scalar.ph4442.prol.loopexit ]
  br label %.outer

scalar.ph4442.preheader:                          ; preds = %vector.memcheck4434, %.lr.ph3368, %middle.block4453
  %indvars.iv3717.ph = phi i64 [ 2, %vector.memcheck4434 ], [ 2, %.lr.ph3368 ], [ %i.eqn, %middle.block4453 ] ; 4 uses
  %i.eqz = sub nsw i64 %wide.trip.count3720, %indvars.iv3717.ph
  %xtraiter4724 = and i64 %i.eqz, 3               ; 2 uses
  %lcmp.mod4725.not = icmp eq i64 %xtraiter4724, 0
  br i1 %lcmp.mod4725.not, label %scalar.ph4442.prol.loopexit, label %scalar.ph4442.prol

scalar.ph4442.prol:                               ; preds = %scalar.ph4442.preheader, %scalar.ph4442.prol
  %indvars.iv3717.prol = phi i64 [ %indvars.iv.next3718.prol, %scalar.ph4442.prol ], [ %indvars.iv3717.ph, %scalar.ph4442.preheader ] ; 4 uses
  %prol.iter4726 = phi i64 [ %prol.iter4726.next, %scalar.ph4442.prol ], [ 0, %scalar.ph4442.preheader ]
  %i.era = add nsw i64 %indvars.iv3717.prol, %i.eqc ; 2 uses
  %gep4141.prol = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.era
  %i.erb = load double, ptr %gep4141.prol, align 8, !tbaa !9
  %i.erc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.era
  store double %i.erb, ptr %i.erc, align 8, !tbaa !9
  %gep4143.prol = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv3717.prol
  %i.erd = load double, ptr %gep4143.prol, align 8, !tbaa !9
  %i.ere = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3717.prol
  store double %i.erd, ptr %i.ere, align 8, !tbaa !9
  %indvars.iv.next3718.prol = add nuw nsw i64 %indvars.iv3717.prol, 1 ; 2 uses
  %prol.iter4726.next = add i64 %prol.iter4726, 1 ; 2 uses
  %prol.iter4726.cmp.not = icmp eq i64 %prol.iter4726.next, %xtraiter4724
  br i1 %prol.iter4726.cmp.not, label %scalar.ph4442.prol.loopexit, label %scalar.ph4442.prol, !llvm.loop !179

scalar.ph4442.prol.loopexit:                      ; preds = %scalar.ph4442.prol, %scalar.ph4442.preheader
  %indvars.iv3717.unr = phi i64 [ %indvars.iv3717.ph, %scalar.ph4442.preheader ], [ %indvars.iv.next3718.prol, %scalar.ph4442.prol ]
  %i.erf = sub nsw i64 %indvars.iv3717.ph, %wide.trip.count3720
  %i.erg = icmp ugt i64 %i.erf, -4
  br i1 %i.erg, label %.outer.backedge, label %scalar.ph4442

scalar.ph4442:                                    ; preds = %scalar.ph4442.prol.loopexit, %scalar.ph4442
  %indvars.iv3717 = phi i64 [ %indvars.iv.next3718.3, %scalar.ph4442 ], [ %indvars.iv3717.unr, %scalar.ph4442.prol.loopexit ] ; 8 uses
  %i.erh = add nsw i64 %indvars.iv3717, %i.eqc    ; 2 uses
  %gep4141 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.erh
  %i.eri = load double, ptr %gep4141, align 8, !tbaa !9
  %i.erj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.erh
  store double %i.eri, ptr %i.erj, align 8, !tbaa !9
  %gep4143 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv3717
  %i.erk = load double, ptr %gep4143, align 8, !tbaa !9
  %i.erl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3717
  store double %i.erk, ptr %i.erl, align 8, !tbaa !9
  %indvars.iv.next3718 = add nuw nsw i64 %indvars.iv3717, 1 ; 2 uses
  %i.erm = add nsw i64 %indvars.iv.next3718, %i.eqc ; 2 uses
  %gep4141.1 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.erm
  %i.ern = load double, ptr %gep4141.1, align 8, !tbaa !9
  %i.ero = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.erm
  store double %i.ern, ptr %i.ero, align 8, !tbaa !9
  %gep4143.1 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv.next3718
  %i.erp = load double, ptr %gep4143.1, align 8, !tbaa !9
  %i.erq = getelementptr [8 x i8], ptr %11, i64 %indvars.iv3717
  store double %i.erp, ptr %i.erq, align 8, !tbaa !9
  %indvars.iv.next3718.1 = add nuw nsw i64 %indvars.iv3717, 2 ; 3 uses
  %i.err = add nsw i64 %indvars.iv.next3718.1, %i.eqc ; 2 uses
  %gep4141.2 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.err
  %i.ers = load double, ptr %gep4141.2, align 8, !tbaa !9
  %i.ert = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.err
  store double %i.ers, ptr %i.ert, align 8, !tbaa !9
  %gep4143.2 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv.next3718.1
  %i.eru = load double, ptr %gep4143.2, align 8, !tbaa !9
  %i.erv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3718.1
  store double %i.eru, ptr %i.erv, align 8, !tbaa !9
  %indvars.iv.next3718.2 = add nuw nsw i64 %indvars.iv3717, 3 ; 3 uses
  %i.erw = add nsw i64 %indvars.iv.next3718.2, %i.eqc ; 2 uses
  %gep4141.3 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.erw
  %i.erx = load double, ptr %gep4141.3, align 8, !tbaa !9
  %i.ery = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.erw
  store double %i.erx, ptr %i.ery, align 8, !tbaa !9
  %gep4143.3 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv.next3718.2
  %i.erz = load double, ptr %gep4143.3, align 8, !tbaa !9
  %i.esa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3718.2
  store double %i.erz, ptr %i.esa, align 8, !tbaa !9
  %indvars.iv.next3718.3 = add nuw nsw i64 %indvars.iv3717, 4 ; 2 uses
  %exitcond3721.not.3 = icmp eq i64 %indvars.iv.next3718.3, %wide.trip.count3720
  br i1 %exitcond3721.not.3, label %.outer.backedge, label %scalar.ph4442, !llvm.loop !180

.loopexit2877:                                    ; preds = %bb.fq, %.lr.ph3212.split, %bb.dl, %.lr.ph3212.split.us3500, %bb.n, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dger_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlargv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlar2v_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = distinct !{!19, !14, !16, !17}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !14, !16}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = !{!28}
!28 = distinct !{!28, !24}
!29 = !{!30}
!30 = distinct !{!30, !24}
!31 = !{!26, !32, !23, !33, !28}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
!34 = !{!32}
!35 = !{!33}
!36 = distinct !{!36, !14, !16, !17}
!37 = distinct !{!37, !14, !16}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = !{!44}
!44 = distinct !{!44, !40}
!45 = !{!39, !42}
!46 = distinct !{!46, !14, !16, !17}
!47 = distinct !{!47, !14, !16, !17}
!48 = distinct !{!48, !14, !16}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14, !16, !17}
!68 = distinct !{!68, !14, !16}
!69 = distinct !{!69, !14, !16, !17}
!70 = distinct !{!70, !14, !16, !17}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !14, !16}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14, !16, !17}
!96 = distinct !{!96, !14, !16}
!97 = distinct !{!97, !14}
!98 = distinct !{!98, !14, !16}
!99 = !{!100}
!100 = distinct !{!100, !101}
!101 = distinct !{!101, !"LVerDomain"}
!102 = !{!103}
!103 = distinct !{!103, !101}
!104 = !{!105}
!105 = distinct !{!105, !101}
!106 = !{!107}
!107 = distinct !{!107, !101}
!108 = !{!103, !109, !100, !110, !105}
!109 = distinct !{!109, !101}
!110 = distinct !{!110, !101}
!111 = !{!109}
!112 = !{!110}
!113 = distinct !{!113, !14, !16, !17}
!114 = distinct !{!114, !14, !16}
!115 = distinct !{!115, !14, !16}
!116 = distinct !{!116, !14}
!117 = distinct !{!117, !14}
!118 = distinct !{!118, !14}
!119 = distinct !{!119, !14}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = distinct !{!134, !14, !16}
!135 = distinct !{!135, !12}
!136 = distinct !{!136, !14, !16, !17}
!137 = distinct !{!137, !14, !16, !17}
!138 = distinct !{!138, !12}
!139 = !{!140}
!140 = distinct !{!140, !141}
!141 = distinct !{!141, !"LVerDomain"}
!142 = !{!143}
!143 = distinct !{!143, !141}
!144 = !{!145}
!145 = distinct !{!145, !141}
!146 = !{!140, !143}
!147 = distinct !{!147, !14, !16, !17}
!148 = distinct !{!148, !14, !16, !17}
!149 = distinct !{!149, !12}
!150 = distinct !{!150, !14, !16, !17}
!151 = distinct !{!151, !12}
!152 = distinct !{!152, !14, !16, !17}
!153 = distinct !{!153, !14, !16, !17}
!154 = distinct !{!154, !12}
!155 = distinct !{!155, !14, !16}
!156 = distinct !{!156, !12}
!157 = distinct !{!157, !14}
!158 = distinct !{!158, !14}
!159 = distinct !{!159, !14}
!160 = distinct !{!160, !14}
!161 = distinct !{!161, !14}
!162 = distinct !{!162, !14}
!163 = distinct !{!163, !14}
!164 = distinct !{!164, !14}
!165 = distinct !{!165, !14}
!166 = distinct !{!166, !14}
!167 = distinct !{!167, !14}
!168 = distinct !{!168, !14}
!169 = distinct !{!169, !14}
!170 = distinct !{!170, !14}
!171 = distinct !{!171, !14}
!172 = distinct !{!172, !14}
!173 = distinct !{!173, !14}
!174 = distinct !{!174, !14}
!175 = distinct !{!175, !14}
!176 = distinct !{!176, !14}
!177 = distinct !{!177, !14}
!178 = distinct !{!178, !14, !16, !17}
!179 = distinct !{!179, !12}
!180 = distinct !{!180, !14, !16}
end_hunk_2
