Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
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
  %i.p = getelementptr [8 x i8], ptr %5, i64 %i.o ; 204 uses
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
  %.32545.lcssa.us = phi i32 [ %i.cyq, %.lr.ph3212.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %i.cyt, %.lr.ph3212.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bxf = sub nsw i32 %.22607.ph.us, %.pre3819.a ; 2 uses
  %i.bxg = icmp slt i32 %i.bxf, 2
  br i1 %i.bxg, label %.loopexit2877, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph3212.split.us.us, %bb.dl
  %.125332894.us = phi i32 [ 0, %bb.dl ], [ 1, %.lr.ph3212.split.us.us ]
  %.not26982891.us = phi i1 [ true, %bb.dl ], [ false, %.lr.ph3212.split.us.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bxf, %bb.dl ], [ %i.cym, %.lr.ph3212.split.us.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %bb.dl ], [ %i.cyv, %.lr.ph3212.split.us.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %bb.dl ], [ %i.cyq, %.lr.ph3212.split.us.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %bb.dl ], [ %i.cyt, %.lr.ph3212.split.us.us ] ; 2 uses
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

.lr.ph3372.us.new:                                ; preds = %.prol.loopexit4729, %.lr.ph3372.us.new
  %indvars.iv3722 = phi i64 [ %indvars.iv.next3723.3, %.lr.ph3372.us.new ], [ %indvars.iv3722.unr, %.prol.loopexit4729 ] ; 6 uses
  %i.bxq = mul nsw i64 %indvars.iv3722, %i.bb
  %i.bxr = trunc nsw i64 %indvars.iv3722 to i32
  %i.bxs = sub i32 %i.cyw, %i.bxr
  %i.bxt = sext i32 %i.bxs to i64
  %i.bxu = getelementptr [8 x i8], ptr %i.p, i64 %i.bxq
  %i.bxv = getelementptr [8 x i8], ptr %i.bxu, i64 %i.bxt ; 2 uses
  %i.bxw = load double, ptr %i.bxv, align 8, !tbaa !9
  %i.bxx = fdiv double %i.bxw, %i.bxp
  store double %i.bxx, ptr %i.bxv, align 8, !tbaa !9
  %indvars.iv.next3723 = add nsw i64 %indvars.iv3722, 1 ; 2 uses
  %i.bxy = mul nsw i64 %indvars.iv.next3723, %i.bb
  %i.bxz = trunc nsw i64 %indvars.iv.next3723 to i32
  %i.bya = sub i32 %i.cyw, %i.bxz
  %i.byb = sext i32 %i.bya to i64
  %i.byc = getelementptr [8 x i8], ptr %i.p, i64 %i.bxy
  %i.byd = getelementptr [8 x i8], ptr %i.byc, i64 %i.byb ; 2 uses
  %i.bye = load double, ptr %i.byd, align 8, !tbaa !9
  %i.byf = fdiv double %i.bye, %i.bxp
  store double %i.byf, ptr %i.byd, align 8, !tbaa !9
  %indvars.iv.next3723.1 = add nsw i64 %indvars.iv3722, 2 ; 2 uses
  %i.byg = mul nsw i64 %indvars.iv.next3723.1, %i.bb
  %i.byh = trunc nsw i64 %indvars.iv.next3723.1 to i32
  %i.byi = sub i32 %i.cyw, %i.byh
  %i.byj = sext i32 %i.byi to i64
  %i.byk = getelementptr [8 x i8], ptr %i.p, i64 %i.byg
  %i.byl = getelementptr [8 x i8], ptr %i.byk, i64 %i.byj ; 2 uses
  %i.bym = load double, ptr %i.byl, align 8, !tbaa !9
  %i.byn = fdiv double %i.bym, %i.bxp
  store double %i.byn, ptr %i.byl, align 8, !tbaa !9
  %indvars.iv.next3723.2 = add nsw i64 %indvars.iv3722, 3 ; 2 uses
  %i.byo = mul nsw i64 %indvars.iv.next3723.2, %i.bb
  %i.byp = trunc nsw i64 %indvars.iv.next3723.2 to i32
  %i.byq = sub i32 %i.cyw, %i.byp
  %i.byr = sext i32 %i.byq to i64
  %i.bys = getelementptr [8 x i8], ptr %i.p, i64 %i.byo
  %i.byt = getelementptr [8 x i8], ptr %i.bys, i64 %i.byr ; 2 uses
  %i.byu = load double, ptr %i.byt, align 8, !tbaa !9
  %i.byv = fdiv double %i.byu, %i.bxp
  store double %i.byv, ptr %i.byt, align 8, !tbaa !9
  %indvars.iv.next3723.3 = add nsw i64 %indvars.iv3722, 4 ; 2 uses
  %lftr.wideiv3725.3 = trunc i64 %indvars.iv.next3723.3 to i32
  %exitcond3726.not.3 = icmp eq i32 %i.cyw, %lftr.wideiv3725.3
  br i1 %exitcond3726.not.3, label %._crit_edge3373.us, label %.lr.ph3372.us.new, !llvm.loop !97

._crit_edge3373.us:                               ; preds = %.prol.loopexit4729, %.lr.ph3372.us.new, %bb.dp
  %i.byw = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  store i32 %i.byw, ptr %i.c, align 4, !tbaa !8
  %i.byx = add nsw i32 %.pre3819.a, %.32608.us    ; 4 uses
  store i32 %i.byx, ptr %i.a, align 4, !tbaa !8
  %i.byy = call i32 @llvm.smin.i32(i32 %i.byw, i32 %i.byx) ; 9 uses
  %.not27043374.us = icmp sgt i32 %.32608.us, %i.byy
  br i1 %.not27043374.us, label %._crit_edge3378.us, label %iter.check4655

vec.epilog.scalar.ph4656:                         ; preds = %vec.epilog.scalar.ph4656, %vec.epilog.scalar.ph4656.preheader.new
  %indvars.iv3727 = phi i64 [ %indvars.iv3727.unr, %vec.epilog.scalar.ph4656.preheader.new ], [ %indvars.iv.next3728.3, %vec.epilog.scalar.ph4656 ] ; 5 uses
  %i.byz = trunc nsw i64 %indvars.iv3727 to i32
  %i.bza = add i32 %i.czk, %i.byz
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzb ; 2 uses
  %i.bzd = load double, ptr %i.bzc, align 8, !tbaa !9
  %i.bze = fdiv double %i.bzd, %i.bxp
  store double %i.bze, ptr %i.bzc, align 8, !tbaa !9
  %i.bzf = trunc i64 %indvars.iv3727 to i32
  %.reass4790.a = add i32 %i.bzf, %invariant.op4789.a
  %i.bzg = sext i32 %.reass4790.a to i64
  %i.bzh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzg ; 2 uses
  %i.bzi = load double, ptr %i.bzh, align 8, !tbaa !9
  %i.bzj = fdiv double %i.bzi, %i.bxp
  store double %i.bzj, ptr %i.bzh, align 8, !tbaa !9
  %i.bzk = trunc i64 %indvars.iv3727 to i32
  %.reass4792 = add i32 %i.bzk, %invariant.op4791
  %i.bzl = sext i32 %.reass4792 to i64
  %i.bzm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzl ; 2 uses
  %i.bzn = load double, ptr %i.bzm, align 8, !tbaa !9
  %i.bzo = fdiv double %i.bzn, %i.bxp
  store double %i.bzo, ptr %i.bzm, align 8, !tbaa !9
  %i.bzp = trunc i64 %indvars.iv3727 to i32
  %.reass4794 = add i32 %i.bzp, %invariant.op4793
  %i.bzq = sext i32 %.reass4794 to i64
  %i.bzr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzq ; 2 uses
  %i.bzs = load double, ptr %i.bzr, align 8, !tbaa !9
  %i.bzt = fdiv double %i.bzs, %i.bxp
  store double %i.bzt, ptr %i.bzr, align 8, !tbaa !9
  %indvars.iv.next3728.3 = add nuw nsw i64 %indvars.iv3727, 4 ; 2 uses
  %lftr.wideiv3730.3 = trunc i64 %indvars.iv.next3728.3 to i32
  %exitcond3731.not.3 = icmp eq i32 %i.czm, %lftr.wideiv3730.3
  br i1 %exitcond3731.not.3, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4656, !llvm.loop !98

._crit_edge3378.us:                               ; preds = %vec.epilog.scalar.ph4656.prol.loopexit, %vec.epilog.scalar.ph4656, %middle.block4651, %vec.epilog.middle.block4667, %._crit_edge3373.us
  %i.bzu = add i32 %i.bxh, %.32608.us             ; 7 uses
  %i.bzv = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053392.us = icmp slt i32 %i.bxh, 1
  br i1 %.not27053392.us, label %bb.dr, label %.lr.ph3396.us

bb.dq:                                            ; preds = %.lr.ph3396.us, %._crit_edge3388.us
  %indvar4574 = phi i64 [ 0, %.lr.ph3396.us ], [ %indvar.next4575, %._crit_edge3388.us ] ; 8 uses
  %indvar4514 = phi i32 [ 0, %.lr.ph3396.us ], [ %indvar.next4515, %._crit_edge3388.us ] ; 4 uses
  %indvars.iv3732 = phi i64 [ %i.dcq, %.lr.ph3396.us ], [ %indvars.iv.next3733, %._crit_edge3388.us ] ; 12 uses
  %.182575.neg3394.us.in = phi i32 [ %.32608.us, %.lr.ph3396.us ], [ %i.cbf, %._crit_edge3388.us ]
  %smax4615 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dcr)
  %i.bzw = add i64 %indvar4574, %i.dcq
  %reass.sub4670 = sub i64 %smax4615, %i.bzw
  %i.bzx = add i64 %reass.sub4670, 1              ; 3 uses
  %i.bzy = trunc i64 %indvar4574 to i32
  %i.bzz = mul i32 %i.n, %i.bzy
  %i.caa = add i32 %i.bzz, %i.ddo
  %i.cab = sext i32 %i.caa to i64
  %i.cac = shl nsw i64 %i.cab, 3                  ; 2 uses
  %scevgep4578 = getelementptr i8, ptr %scevgep4577, i64 %i.cac ; 5 uses
  %smax4580 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dcr)
  %i.cad = add i64 %indvar4574, %i.dcq
  %i.cae = sub i64 %smax4580, %i.cad
  %i.caf = shl nsw i64 %i.cae, 3                  ; 3 uses
  %i.cag = getelementptr i8, ptr %scevgep4579, i64 %i.caf
  %scevgep4581 = getelementptr i8, ptr %i.cag, i64 %i.cac ; 5 uses
  %i.cah = trunc i64 %indvar4574 to i32
  %i.cai = add i32 %i.ddp, %i.cah
  %i.caj = sext i32 %i.cai to i64
  %i.cak = shl nsw i64 %i.caj, 3                  ; 3 uses
  %scevgep4583 = getelementptr i8, ptr %scevgep4582, i64 %i.cak ; 2 uses
  %scevgep4585 = getelementptr i8, ptr %scevgep4584.a, i64 %i.cak
  %i.cal = getelementptr i8, ptr %scevgep4586, i64 %i.caf
  %scevgep4587 = getelementptr i8, ptr %i.cal, i64 %i.cak
  %i.cam = trunc i64 %indvar4574 to i32
  %i.can = add i32 %i.ddq, %i.cam
  %i.cao = sext i32 %i.can to i64
  %i.cap = shl nsw i64 %i.cao, 3                  ; 3 uses
  %scevgep4589 = getelementptr i8, ptr %scevgep4588, i64 %i.cap ; 2 uses
  %scevgep4591 = getelementptr i8, ptr %scevgep4590, i64 %i.cap
  %i.caq = getelementptr i8, ptr %scevgep4592, i64 %i.caf
  %scevgep4593 = getelementptr i8, ptr %i.caq, i64 %i.cap
  %i.car = mul i32 %.0255729803502, %indvar4514
  %i.cas = add i32 %i.dcx, %i.car
  %i.cat = sext i32 %i.cas to i64                 ; 2 uses
  %i.cau = shl nsw i64 %i.cat, 3
  %scevgep4518 = getelementptr i8, ptr %scevgep4517, i64 %i.cau ; 2 uses
  %i.cav = add nsw i64 %i.ddc, %i.cat
  %i.caw = shl nsw i64 %i.cav, 3
  %scevgep4520 = getelementptr i8, ptr %scevgep4519, i64 %i.caw ; 2 uses
  %i.cax = add i32 %i.ddd, %indvar4514
  %i.cay = sext i32 %i.cax to i64
  %i.caz = shl nsw i64 %i.cay, 3
  %scevgep4522 = getelementptr i8, ptr %scevgep4521, i64 %i.caz
  %i.cba = mul i32 %.0255729803502, %indvar4514
  %i.cbb = add i32 %i.dcx, %i.cba                 ; 2 uses
  %i.cbc = trunc i64 %indvars.iv3732 to i32
  %i.cbd = mul i32 %i.n, %i.cbc
  %i.cbe = sub i32 %i.cbd, %.182575.neg3394.us.in ; 5 uses
  %i.cbf = trunc nsw i64 %indvars.iv3732 to i32   ; 3 uses
  %.reass3390.us.reass.reass = add i32 %i.cbf, %invariant.op4802 ; 2 uses
  %i.cbg = add nsw i32 %.reass3390.us.reass.reass, %i.dcl ; 3 uses
  %i.cbh = sext i32 %i.cbg to i64
  %i.cbi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbh ; 2 uses
  %i.cbj = add nsw i32 %.reass3390.us.reass.reass, %i.bxl ; 3 uses
  %i.cbk = sext i32 %i.cbj to i64
  %i.cbl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cbk ; 2 uses
  %min.iters.check4617 = icmp ult i64 %i.bzx, 12
  br i1 %min.iters.check4617, label %scalar.ph4616.preheader, label %vector.scevcheck4572

vector.scevcheck4572:                             ; preds = %bb.dq
  %i.cbm = trunc i64 %indvar4574 to i32
  %i.cbn = mul i32 %i.n, %i.cbm
  %i.cbo = add i32 %i.cbn, %i.ddo                 ; 2 uses
  %smax4573 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dcr)
  %i.cbp = add i64 %indvar4574, %i.dcq
  %i.cbq = sub i64 %smax4573, %i.cbp              ; 2 uses
  %i.cbr = trunc i64 %i.cbq to i32                ; 3 uses
  %i.cbs = add i32 %i.cbo, %i.cbr
  %i.cbt = icmp slt i32 %i.cbs, %i.cbo
  %i.cbu = add i32 %i.cbj, %i.cbr
  %i.cbv = icmp slt i32 %i.cbu, %i.cbj
  %i.cbw = icmp ugt i64 %i.cbq, 4294967295
  %i.cbx = or i1 %i.cbv, %i.cbw
  %i.cby = add i32 %i.cbg, %i.cbr
  %i.cbz = icmp slt i32 %i.cby, %i.cbg
  %i.cca = or i1 %i.cbt, %i.cbx
  %i.ccb = or i1 %i.cbz, %i.cca
  br i1 %i.ccb, label %scalar.ph4616.preheader, label %vector.memcheck4576

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
  %bound14612 = icmp ult ptr %i.dco, %scevgep4581
  %found.conflict4613 = and i1 %bound04611, %bound14612
  %conflict.rdx4614 = or i1 %conflict.rdx4610, %found.conflict4613
  br i1 %conflict.rdx4614, label %scalar.ph4616.preheader, label %vector.ph4618

vector.ph4618:                                    ; preds = %vector.memcheck4576
  %n.vec4619 = and i64 %i.bzx, -4                 ; 3 uses
  %i.ccc = add i64 %indvars.iv3732, %n.vec4619
  %i.ccd = load double, ptr %i.cbi, align 8, !tbaa !9, !alias.scope !99
  %broadcast.splatinsert4626.a = insertelement <4 x double> poison, double %i.ccd, i64 0
  %broadcast.splat4627.a = shufflevector <4 x double> %broadcast.splatinsert4626.a, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cce = load double, ptr %i.cbl, align 8, !tbaa !9, !alias.scope !102
  %broadcast.splatinsert4620 = insertelement <4 x double> poison, double %i.cce, i64 0
  %broadcast.splat4621 = shufflevector <4 x double> %broadcast.splatinsert4620, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ccf = fneg <4 x double> %broadcast.splat4621
  %i.ccg = load double, ptr %i.dco, align 8, !tbaa !9, !alias.scope !104
  %broadcast.splatinsert4629 = insertelement <4 x double> poison, double %i.ccg, i64 0
  %broadcast.splat4630 = shufflevector <4 x double> %broadcast.splatinsert4629, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body4622

vector.body4622:                                  ; preds = %vector.body4622, %vector.ph4618
  %index4623 = phi i64 [ 0, %vector.ph4618 ], [ %index.next4631, %vector.body4622 ] ; 2 uses
  %i.cch = add i64 %indvars.iv3732, %index4623
  %i.cci = trunc nsw i64 %i.cch to i32            ; 2 uses
  %i.ccj = add i32 %i.cbe, %i.cci
  %i.cck = sext i32 %i.ccj to i64
  %i.ccl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cck ; 2 uses
  %wide.load4624 = load <4 x double>, ptr %i.ccl, align 8, !tbaa !9, !alias.scope !106, !noalias !108
  %.reass4796 = add i32 %i.cci, %invariant.op4795 ; 2 uses
  %i.ccm = add nsw i32 %.reass4796, %i.bxl
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ccn
  %wide.load4625 = load <4 x double>, ptr %i.cco, align 8, !tbaa !9, !alias.scope !111 ; 2 uses
  %i.ccp = fneg <4 x double> %wide.load4625
  %i.ccq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccp, <4 x double> %broadcast.splat4627.a, <4 x double> %wide.load4624)
  %i.ccr = add nsw i32 %.reass4796, %i.dcl
  %i.ccs = sext i32 %i.ccr to i64
  %i.cct = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccs
  %wide.load4628 = load <4 x double>, ptr %i.cct, align 8, !tbaa !9, !alias.scope !112
  %i.ccu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccf, <4 x double> %wide.load4628, <4 x double> %i.ccq)
  %i.ccv = fmul <4 x double> %wide.load4625, %broadcast.splat4630
  %i.ccw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccv, <4 x double> %broadcast.splat4621, <4 x double> %i.ccu)
  store <4 x double> %i.ccw, ptr %i.ccl, align 8, !tbaa !9, !alias.scope !106, !noalias !108
  %index.next4631 = add nuw i64 %index4623, 4     ; 2 uses
  %i.ccx = icmp eq i64 %index.next4631, %n.vec4619
  br i1 %i.ccx, label %middle.block4632, label %vector.body4622, !llvm.loop !113

middle.block4632:                                 ; preds = %vector.body4622
  %cmp.n4633 = icmp eq i64 %i.bzx, %n.vec4619
  br i1 %cmp.n4633, label %.loopexit, label %scalar.ph4616.preheader

scalar.ph4616.preheader:                          ; preds = %vector.memcheck4576, %vector.scevcheck4572, %bb.dq, %middle.block4632
  %indvars.iv3734.ph = phi i64 [ %indvars.iv3732, %vector.memcheck4576 ], [ %indvars.iv3732, %vector.scevcheck4572 ], [ %indvars.iv3732, %bb.dq ], [ %i.ccc, %middle.block4632 ]
  br label %scalar.ph4616

scalar.ph4616:                                    ; preds = %scalar.ph4616.preheader, %scalar.ph4616
  %indvars.iv3734 = phi i64 [ %indvars.iv.next3735.a, %scalar.ph4616 ], [ %indvars.iv3734.ph, %scalar.ph4616.preheader ] ; 3 uses
  %i.ccy = trunc nsw i64 %indvars.iv3734 to i32   ; 2 uses
  %i.ccz = add i32 %i.cbe, %i.ccy
  %i.cda = sext i32 %i.ccz to i64
  %i.cdb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cda ; 2 uses
  %i.cdc = load double, ptr %i.cdb, align 8, !tbaa !9
  %.reass3380.us.reass.reass = add i32 %i.ccy, %invariant.op4797 ; 2 uses
  %i.cdd = add nsw i32 %.reass3380.us.reass.reass, %i.bxl
  %i.cde = sext i32 %i.cdd to i64
  %i.cdf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cde
  %i.cdg = load double, ptr %i.cdf, align 8, !tbaa !9 ; 2 uses
  %i.cdh = load double, ptr %i.cbi, align 8, !tbaa !9
  %i.cdi = fneg double %i.cdg
  %i.cdj = call double @llvm.fmuladd.f64(double %i.cdi, double %i.cdh, double %i.cdc)
  %i.cdk = load double, ptr %i.cbl, align 8, !tbaa !9 ; 2 uses
  %i.cdl = add nsw i32 %.reass3380.us.reass.reass, %i.dcl
  %i.cdm = sext i32 %i.cdl to i64
  %i.cdn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdm
  %i.cdo = load double, ptr %i.cdn, align 8, !tbaa !9
  %i.cdp = fneg double %i.cdk
  %i.cdq = call double @llvm.fmuladd.f64(double %i.cdp, double %i.cdo, double %i.cdj)
  %i.cdr = load double, ptr %i.dco, align 8, !tbaa !9
  %i.cds = fmul double %i.cdg, %i.cdr
  %i.cdt = call double @llvm.fmuladd.f64(double %i.cds, double %i.cdk, double %i.cdq)
  store double %i.cdt, ptr %i.cdb, align 8, !tbaa !9
  %indvars.iv.next3735.a = add nsw i64 %indvars.iv3734, 1
  %.not2726.us.not = icmp slt i64 %indvars.iv3734, %i.dcr
  br i1 %.not2726.us.not, label %scalar.ph4616, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %scalar.ph4616, %middle.block4632
  br i1 %.not2728.not3384.us, label %iter.check4556, label %._crit_edge3388.us

vec.epilog.scalar.ph4557:                         ; preds = %vec.epilog.scalar.ph4557.preheader, %vec.epilog.scalar.ph4557
  %indvars.iv3737 = phi i64 [ %indvars.iv.next3738, %vec.epilog.scalar.ph4557 ], [ %indvars.iv3737.ph, %vec.epilog.scalar.ph4557.preheader ]
  %indvars.iv.next3738 = add nsw i64 %indvars.iv3737, 1 ; 3 uses
  %i.cdu = load double, ptr %i.dba, align 8, !tbaa !9
  %i.cdv = trunc nsw i64 %indvars.iv.next3738 to i32 ; 2 uses
  %i.cdw = add i32 %i.dcp, %i.cdv
  %i.cdx = sext i32 %i.cdw to i64
  %i.cdy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdx
  %i.cdz = load double, ptr %i.cdy, align 8, !tbaa !9
  %i.cea = add i32 %i.cbe, %i.cdv
  %i.ceb = sext i32 %i.cea to i64
  %i.cec = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ceb ; 2 uses
  %i.ced = load double, ptr %i.cec, align 8, !tbaa !9
  %i.cee = fneg double %i.cdu
  %i.cef = call double @llvm.fmuladd.f64(double %i.cee, double %i.cdz, double %i.ced)
  store double %i.cef, ptr %i.cec, align 8, !tbaa !9
  %.not2728.not.us = icmp slt i64 %indvars.iv.next3738, %i.dcs
  br i1 %.not2728.not.us, label %vec.epilog.scalar.ph4557, label %._crit_edge3388.us, !llvm.loop !115

._crit_edge3388.us:                               ; preds = %vec.epilog.scalar.ph4557, %middle.block4552, %vec.epilog.middle.block4569, %.loopexit
  %indvars.iv.next3733 = add nsw i64 %indvars.iv3732, 1
  %.not2705.us.not = icmp slt i64 %indvars.iv3732, %i.dcr
  %indvar.next4515 = add i32 %indvar4514, 1
  %indvar.next4575 = add i64 %indvar4574, 1
  br i1 %.not2705.us.not, label %bb.dq, label %._crit_edge3397.us, !llvm.loop !116

bb.dr:                                            ; preds = %._crit_edge3397.us, %._crit_edge3378.us
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !8
  br i1 %.not27023369.us, label %bb.du, label %.lr.ph3409.us

bb.ds:                                            ; preds = %.lr.ph3409.us, %._crit_edge3403.us
  %indvars.iv3744 = phi i64 [ %i.dej, %.lr.ph3409.us ], [ %indvars.iv.next3745, %._crit_edge3403.us ] ; 4 uses
  %i.ceg = trunc i64 %indvars.iv3744 to i32
  %i.ceh = add i32 %.pre3819.a, %i.ceg
  %i.cei = call i32 @llvm.smin.i32(i32 %i.ceh, i32 %i.bzu) ; 2 uses
  %.not27253399.us.not = icmp slt i32 %.32608.us, %i.cei
  br i1 %.not27253399.us.not, label %.lr.ph3402.us, label %._crit_edge3403.us

bb.dt:                                            ; preds = %.lr.ph3402.us, %bb.dt
  %indvars.iv3741.in = phi i64 [ %i.dei, %.lr.ph3402.us ], [ %indvars.iv3741, %bb.dt ]
  %indvars.iv3741 = add nuw nsw i64 %indvars.iv3741.in, 1 ; 3 uses
  %i.cej = trunc nsw i64 %indvars.iv3741 to i32   ; 2 uses
  %i.cek = add i32 %i.deh, %i.cej
  %i.cel = sext i32 %i.cek to i64
  %i.cem = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cel
  %i.cen = load double, ptr %i.cem, align 8, !tbaa !9
  %i.ceo = load double, ptr %i.dee, align 8, !tbaa !9
  %i.cep = add i32 %i.def, %i.cej
  %i.ceq = sext i32 %i.cep to i64
  %i.cer = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ceq ; 2 uses
  %i.ces = load double, ptr %i.cer, align 8, !tbaa !9
  %i.cet = fneg double %i.cen
  %i.ceu = call double @llvm.fmuladd.f64(double %i.cet, double %i.ceo, double %i.ces)
  store double %i.ceu, ptr %i.cer, align 8, !tbaa !9
  %.not2725.us.not = icmp samesign ult i64 %indvars.iv3741, %i.deg
  br i1 %.not2725.us.not, label %bb.dt, label %._crit_edge3403.us, !llvm.loop !117

._crit_edge3403.us:                               ; preds = %bb.dt, %bb.ds
  %indvars.iv.next3745 = add nsw i64 %indvars.iv3744, 1 ; 2 uses
  %lftr.wideiv3748 = trunc i64 %indvars.iv.next3745 to i32
  %exitcond3749.not = icmp eq i32 %i.bzv, %lftr.wideiv3748
  br i1 %exitcond3749.not, label %._crit_edge3410.us, label %bb.ds, !llvm.loop !118

bb.du:                                            ; preds = %._crit_edge3410.us, %bb.dr
  br i1 %.not, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.cev = fdiv double 1.000000e+00, %i.bxp
  store double %i.cev, ptr %i.e, align 8, !tbaa !9
  %i.cew = mul nsw i32 %.32608.us, %i.t
  %i.cex = sext i32 %i.cew to i64
  %i.cey = getelementptr [8 x i8], ptr %i.v, i64 %i.cex
  %i.cez = getelementptr i8, ptr %i.cey, i64 8    ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.e, ptr noundef %i.cez, ptr noundef nonnull @c__1) #4
  %i.cfa = load i32, ptr %i.l, align 4, !tbaa !8
  %i.cfb = icmp sgt i32 %i.cfa, 0
  br i1 %i.cfb, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.cfc = getelementptr i8, ptr %i.bxn, i64 16
  %i.cfd = mul nsw i32 %i.bzv, %i.t
  %i.cfe = sext i32 %i.cfd to i64
  %i.cff = getelementptr [8 x i8], ptr %i.v, i64 %i.cfe
  %i.cfg = getelementptr i8, ptr %i.cff, i64 8
  call void @dger_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.cez, ptr noundef nonnull @c__1, ptr noundef %i.cfc, ptr noundef nonnull @c__1, ptr noundef %i.cfg, ptr noundef nonnull %10) #4
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %i.cfh = mul nsw i32 %.42546.us, %i.n
  %i.cfi = sub i32 %i.bzv, %.42546.us
  %i.cfj = add nsw i32 %i.cfi, %i.cfh
  %i.cfk = sext i32 %i.cfj to i64
  %i.cfl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cfk
  %i.cfm = load double, ptr %i.cfl, align 8, !tbaa !9
  store double %i.cfm, ptr %i.k, align 8, !tbaa !9
  %.pre3820.a = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.do
  %i.cfn = phi i32 [ %.pre3820.a, %bb.dx ], [ %i.bxe, %bb.do ] ; 2 uses
  %i.cfo = add nsw i32 %i.cfn, -1
  store i32 %i.cfo, ptr %i.d, align 4, !tbaa !8
  %.not27073433.us = icmp slt i32 %i.cfn, 2
  br i1 %.not27073433.us, label %._crit_edge3438.us, label %.lr.ph3437.us

bb.dz:                                            ; preds = %.lr.ph3437.us, %.loopexit2872.us
  %indvars.iv3761 = phi i64 [ 1, %.lr.ph3437.us ], [ %indvars.iv.next3762, %.loopexit2872.us ] ; 6 uses
  %indvars.iv3752 = phi i32 [ %.reass4169.reass, %.lr.ph3437.us ], [ %indvars.iv.next3753, %.loopexit2872.us ] ; 2 uses
  %indvars.iv3750 = phi i32 [ %i.dff, %.lr.ph3437.us ], [ %indvars.iv.next3751, %.loopexit2872.us ] ; 2 uses
  %.202577.neg3435.us = phi i32 [ -1, %.lr.ph3437.us ], [ %i.cmq, %.loopexit2872.us ] ; 2 uses
  %smax3754 = call i32 @llvm.smax.i32(i32 %indvars.iv3752, i32 1)
  %.pre3821.a = load i32, ptr %i.j, align 4, !tbaa !8 ; 4 uses
  br i1 %.not26982891.us, label %._crit_edge3822, label %bb.ea

._crit_edge3822:                                  ; preds = %bb.dz
  %.pre3823 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.cfp = add nuw nsw i64 %indvars.iv3761, %i.dfg ; 3 uses
  %i.cfq = sext i32 %.pre3821.a to i64
  %i.cfr = icmp sgt i64 %i.cfp, %i.cfq
  %i.cfs = icmp slt i64 %i.cfp, %i.bd
  %or.cond2763.us = select i1 %i.cfr, i1 %i.cfs, i1 false
  %.pre3824 = load i32, ptr %3, align 4, !tbaa !8 ; 3 uses
  br i1 %or.cond2763.us, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.cft = add i32 %.pre3821.a, %.202577.neg3435.us
  %i.cfu = trunc nsw i64 %i.cfp to i32            ; 2 uses
  %i.cfv = sub nsw i32 %i.cfu, %.pre3824          ; 2 uses
  %i.cfw = mul nsw i32 %i.cfv, %i.n
  %i.cfx = add nsw i32 %i.cft, %i.cfw
  %i.cfy = sext i32 %i.cfx to i64
  %i.cfz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cfy
  %i.cga = load i32, ptr %2, align 4, !tbaa !8
  %i.cgb = trunc nuw nsw i64 %indvars.iv3761 to i32 ; 3 uses
  %i.cgc = add i32 %.32608.us, %i.cgb             ; 2 uses
  %i.cgd = sub i32 %i.cgc, %.pre3824
  %i.cge = add i32 %i.cgd, %i.cga
  %i.cgf = sext i32 %i.cge to i64
  %i.cgg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgf
  %i.cgh = sext i32 %i.cfv to i64
  %i.cgi = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgh
  call void @dlartg_(ptr noundef %i.cfz, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cgg, ptr noundef nonnull %i.cgi, ptr noundef nonnull %i.g) #4
  %i.cgj = add i32 %i.dfb, %i.cgb
  %i.cgk = sext i32 %i.cgj to i64
  %i.cgl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cgk
  %i.cgm = load double, ptr %i.cgl, align 8, !tbaa !9
  %i.cgn = fneg double %i.cgm
  %i.cgo = load double, ptr %i.k, align 8, !tbaa !9
  %i.cgp = fmul double %i.cgo, %i.cgn             ; 2 uses
  %i.cgq = load i32, ptr %2, align 4, !tbaa !8
  %i.cgr = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.cgs = add i32 %i.cgc, %i.cgq
  %i.cgt = sub i32 %i.cgs, %i.cgr
  %i.cgu = sext i32 %i.cgt to i64
  %i.cgv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgu ; 2 uses
  %i.cgw = load double, ptr %i.cgv, align 8, !tbaa !9
  %i.cgx = sub nsw i32 %i.cfu, %i.cgr             ; 2 uses
  %i.cgy = sext i32 %i.cgx to i64
  %i.cgz = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgy ; 2 uses
  %i.cha = load double, ptr %i.cgz, align 8, !tbaa !9
  %i.chb = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.chc = mul nsw i32 %i.cgx, %i.n
  %i.chd = add nsw i32 %i.chb, %i.chc
  %i.che = sext i32 %i.chd to i64
  %i.chf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.che ; 3 uses
  %i.chg = load double, ptr %i.chf, align 8, !tbaa !9
  %i.chh = fneg double %i.chg
  %i.chi = fmul double %i.cha, %i.chh
  %i.chj = call double @llvm.fmuladd.f64(double %i.cgw, double %i.cgp, double %i.chi)
  %i.chk = load i32, ptr %4, align 4, !tbaa !8
  %i.chl = add i32 %i.dfc, %i.cgb
  %i.chm = sub i32 %i.chl, %i.chk
  %i.chn = sext i32 %i.chm to i64
  %i.cho = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.chn
  store double %i.chj, ptr %i.cho, align 8, !tbaa !9
  %i.chp = load double, ptr %i.cgz, align 8, !tbaa !9
  %i.chq = load double, ptr %i.cgv, align 8, !tbaa !9
  %i.chr = load double, ptr %i.chf, align 8, !tbaa !9
  %i.chs = fmul double %i.chq, %i.chr
  %i.cht = call double @llvm.fmuladd.f64(double %i.chp, double %i.cgp, double %i.chs)
  store double %i.cht, ptr %i.chf, align 8, !tbaa !9
  %i.chu = load double, ptr %i.g, align 8, !tbaa !9
  store double %i.chu, ptr %i.k, align 8, !tbaa !9
  br label %bb.ec

bb.ec:                                            ; preds = %._crit_edge3822, %bb.eb, %bb.ea
  %i.chv = phi i32 [ %i.cgr, %bb.eb ], [ %.pre3824, %bb.ea ], [ %.pre3823, %._crit_edge3822 ] ; 3 uses
  %i.chw = phi i32 [ %i.chb, %bb.eb ], [ %.pre3821.a, %bb.ea ], [ %.pre3821.a, %._crit_edge3822 ] ; 9 uses
  %i.chx = trunc nuw nsw i64 %indvars.iv3761 to i32 ; 3 uses
  %i.chy = add i32 %.reass4167.reass, %i.chx
  %i.chz = call i32 @llvm.smax.i32(i32 %i.chy, i32 1)
  %i.cia = mul nsw i32 %i.chw, %i.chz
  %i.cib = add i32 %i.dfd, %i.chx
  %i.cic = sub i32 %i.cib, %i.cia                 ; 7 uses
  %i.cid = add i32 %i.chv, -1                     ; 2 uses
  %i.cie = add i32 %i.cid, %i.cic
  %i.cif = sdiv i32 %i.cie, %i.chw                ; 5 uses
  store i32 %i.cif, ptr %i.h, align 4, !tbaa !8
  %i.cig = add nsw i32 %i.cif, -1
  %i.cih = mul nsw i32 %i.cig, %i.chw             ; 3 uses
  %i.cii = sub nsw i32 %i.cic, %i.cih             ; 12 uses
  br i1 %.not26982891.us, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.cij = add i32 %i.dfe, %i.chx
  %i.cik = shl i32 %i.chv, 1
  %i.cil = sub i32 %i.cij, %i.cik
  %i.cim = call i32 @llvm.smin.i32(i32 %i.cic, i32 %i.cil) ; 2 uses
  %.pre3918 = add i32 %i.cid, %i.cim
  %.pre3920 = sdiv i32 %.pre3918, %i.chw
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pre-phi3921 = phi i32 [ %.pre3920, %bb.ed ], [ %i.cif, %bb.ec ] ; 2 uses
  %.3.us = phi i32 [ %i.cim, %bb.ed ], [ %i.cic, %bb.ec ] ; 4 uses
  store i32 %.pre-phi3921, ptr %i.m, align 4, !tbaa !8
  store i32 %.3.us, ptr %i.c, align 4, !tbaa !8
end_hunk_1
begin_hunk_2_@dsbgst_:bb.a
  %gep4163.3 = getelementptr [8 x i8], ptr %invariant.gep4162, i64 %i.cyh
  %i.cyi = load double, ptr %gep4163.3, align 8, !tbaa !9
  %i.cyj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cyh
  store double %i.cyi, ptr %i.cyj, align 8, !tbaa !9
  %gep4165.3 = getelementptr [8 x i8], ptr %invariant.gep4164, i64 %indvars.iv.next3776.2
  %i.cyk = load double, ptr %gep4165.3, align 8, !tbaa !9
  %i.cyl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3776.2
  store double %i.cyk, ptr %i.cyl, align 8, !tbaa !9
  %indvars.iv.next3776.3 = add nuw nsw i64 %indvars.iv3775, 4 ; 2 uses
  %exitcond3779.not.3 = icmp eq i64 %indvars.iv.next3776.3, %wide.trip.count3778
  br i1 %exitcond3779.not.3, label %.outer.us.backedge, label %scalar.ph4499, !llvm.loop !134

.lr.ph3212.us:                                    ; preds = %.outer.us
  %i.cym = add nuw nsw i32 %.22607.ph.us, 1       ; 4 uses
  %i.cyn = sub nsw i32 %i.ay, %i.cym
  %i.cyo = call i32 @llvm.smin.i32(i32 %i.bxe, i32 %i.cyn) ; 2 uses
  store i32 %i.cyo, ptr %i.l, align 4, !tbaa !8
  %i.cyp = sub nsw i32 %i.cym, %.pre3819.a
  %i.cyq = call i32 @llvm.smax.i32(i32 %i.cyp, i32 1) ; 2 uses
  %i.cyr = add nsw i32 %i.cyo, %i.cym
  %i.cys = load i32, ptr %i.j, align 4, !tbaa !8
  %i.cyt = sub i32 %i.cyr, %i.cys                 ; 2 uses
  %.not2700.us = icmp slt i32 %.22607.ph.us, %i.ay
  br i1 %.not2700.us, label %.lr.ph3212.split.us.us, label %.lr.ph3212.split.us3500

.lr.ph3212.split.us3500:                          ; preds = %.lr.ph3212.us
  %i.cyu = icmp eq i32 %.pre3819.a, 0
  br i1 %i.cyu, label %.loopexit2877, label %.lr.ph3212.split.split.us

.lr.ph3212.split.us.us:                           ; preds = %.lr.ph3212.us
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %i.cyv = add nuw nsw i32 %.22607.ph.us, 2
  br label %bb.dm

.lr.ph3212.split.split.us:                        ; preds = %.lr.ph3212.split.us3500
  store i32 1, ptr %i.c, align 4, !tbaa !8
  br label %bb.dl

.lr.ph3372.us:                                    ; preds = %bb.dp
  %i.cyw = add nuw i32 %.32608.us, 1              ; 6 uses
  %i.cyx = sext i32 %.42546.us to i64             ; 2 uses
  %i.cyy = add i32 %.32608.us, 1
  %i.cyz = sub i32 %i.cyy, %.42546.us
  %i.cza = sub i32 %.32608.us, %.42546.us
  %xtraiter4730 = and i32 %i.cyz, 3               ; 2 uses
  %lcmp.mod4731.not = icmp eq i32 %xtraiter4730, 0
  br i1 %lcmp.mod4731.not, label %.prol.loopexit4729, label %.prol.preheader4728

.prol.preheader4728:                              ; preds = %.lr.ph3372.us, %.prol.preheader4728
  %indvars.iv3722.prol = phi i64 [ %indvars.iv.next3723.prol, %.prol.preheader4728 ], [ %i.cyx, %.lr.ph3372.us ] ; 3 uses
  %prol.iter4732 = phi i32 [ %prol.iter4732.next, %.prol.preheader4728 ], [ 0, %.lr.ph3372.us ]
  %i.czb = mul nsw i64 %indvars.iv3722.prol, %i.bb
  %i.czc = trunc nsw i64 %indvars.iv3722.prol to i32
  %i.czd = sub i32 %i.cyw, %i.czc
  %i.cze = sext i32 %i.czd to i64
  %i.czf = getelementptr [8 x i8], ptr %i.p, i64 %i.czb
  %i.czg = getelementptr [8 x i8], ptr %i.czf, i64 %i.cze ; 2 uses
  %i.czh = load double, ptr %i.czg, align 8, !tbaa !9
  %i.czi = fdiv double %i.czh, %i.bxp
  store double %i.czi, ptr %i.czg, align 8, !tbaa !9
  %indvars.iv.next3723.prol = add nsw i64 %indvars.iv3722.prol, 1 ; 2 uses
  %prol.iter4732.next = add i32 %prol.iter4732, 1 ; 2 uses
  %prol.iter4732.cmp.not = icmp eq i32 %prol.iter4732.next, %xtraiter4730
  br i1 %prol.iter4732.cmp.not, label %.prol.loopexit4729, label %.prol.preheader4728, !llvm.loop !135

.prol.loopexit4729:                               ; preds = %.prol.preheader4728, %.lr.ph3372.us
  %indvars.iv3722.unr = phi i64 [ %i.cyx, %.lr.ph3372.us ], [ %indvars.iv.next3723.prol, %.prol.preheader4728 ]
  %i.czj = icmp ult i32 %i.cza, 3
  br i1 %i.czj, label %._crit_edge3373.us, label %.lr.ph3372.us.new

iter.check4655:                                   ; preds = %._crit_edge3373.us
  %reass.sub3511 = mul i32 %.32608.us, %.32608.us3512
  %i.czk = add i32 %reass.sub3511, 1              ; 7 uses
  %i.czl = zext nneg i32 %.32608.us to i64        ; 4 uses
  %i.czm = add nuw i32 %i.byy, 1
  %i.czn = sub i32 %i.byy, %.32608.us             ; 3 uses
  %i.czo = zext i32 %i.czn to i64
  %i.czp = add nuw nsw i64 %i.czo, 1              ; 5 uses
  %min.iters.check4637 = icmp ult i32 %i.czn, 3
  br i1 %min.iters.check4637, label %vec.epilog.scalar.ph4656.preheader, label %vector.scevcheck4635

vector.scevcheck4635:                             ; preds = %iter.check4655
  %i.czq = sub i32 %i.byy, %.32608.us
  %i.czr = mul i32 %i.n, %.32608.us
  %i.czs = add i32 %i.czr, 1                      ; 2 uses
  %i.czt = add i32 %i.czs, %i.czq
  %i.czu = icmp slt i32 %i.czt, %i.czs
  br i1 %i.czu, label %vec.epilog.scalar.ph4656.preheader, label %vector.main.loop.iter.check4638

vector.main.loop.iter.check4638:                  ; preds = %vector.scevcheck4635
  %min.iters.check4639 = icmp ult i32 %i.czn, 15
  br i1 %min.iters.check4639, label %vec.epilog.ph4659, label %vector.ph4640

vector.ph4640:                                    ; preds = %vector.main.loop.iter.check4638
  %i.czv = and i64 %i.czp, 12
  %n.vec4641 = and i64 %i.czp, 8589934576         ; 4 uses
  %i.czw = add nuw nsw i64 %n.vec4641, %i.czl
  %broadcast.splatinsert4642 = insertelement <4 x double> poison, double %i.bxp, i64 0
  %broadcast.splat4643 = shufflevector <4 x double> %broadcast.splatinsert4642, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4785 = add i32 %.32608.us, %i.czk
  br label %vector.body4644

vector.body4644:                                  ; preds = %vector.body4644, %vector.ph4640
  %index4645 = phi i64 [ 0, %vector.ph4640 ], [ %index.next4650, %vector.body4644 ] ; 2 uses
  %i.czx = trunc i64 %index4645 to i32
  %.reass4786 = add i32 %i.czx, %invariant.op4785
  %i.czy = sext i32 %.reass4786 to i64
  %i.czz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.czy ; 5 uses
  %i.daa = getelementptr inbounds nuw i8, ptr %i.czz, i64 32 ; 2 uses
  %i.dab = getelementptr inbounds nuw i8, ptr %i.czz, i64 64 ; 2 uses
  %i.dac = getelementptr inbounds nuw i8, ptr %i.czz, i64 96 ; 2 uses
  %wide.load4646 = load <4 x double>, ptr %i.czz, align 8, !tbaa !9
  %wide.load4647 = load <4 x double>, ptr %i.daa, align 8, !tbaa !9
  %wide.load4648 = load <4 x double>, ptr %i.dab, align 8, !tbaa !9
  %wide.load4649 = load <4 x double>, ptr %i.dac, align 8, !tbaa !9
  %i.dad = fdiv <4 x double> %wide.load4646, %broadcast.splat4643
  %i.dae = fdiv <4 x double> %wide.load4647, %broadcast.splat4643
  %i.daf = fdiv <4 x double> %wide.load4648, %broadcast.splat4643
  %i.dag = fdiv <4 x double> %wide.load4649, %broadcast.splat4643
  store <4 x double> %i.dad, ptr %i.czz, align 8, !tbaa !9
  store <4 x double> %i.dae, ptr %i.daa, align 8, !tbaa !9
  store <4 x double> %i.daf, ptr %i.dab, align 8, !tbaa !9
  store <4 x double> %i.dag, ptr %i.dac, align 8, !tbaa !9
  %index.next4650 = add nuw i64 %index4645, 16    ; 2 uses
  %i.dah = icmp eq i64 %index.next4650, %n.vec4641
  br i1 %i.dah, label %middle.block4651, label %vector.body4644, !llvm.loop !136

middle.block4651:                                 ; preds = %vector.body4644
  %cmp.n4652 = icmp eq i64 %i.czp, %n.vec4641
  br i1 %cmp.n4652, label %._crit_edge3378.us, label %vec.epilog.iter.check4657

vec.epilog.iter.check4657:                        ; preds = %middle.block4651
  %min.epilog.iters.check4658 = icmp eq i64 %i.czv, 0
  br i1 %min.epilog.iters.check4658, label %vec.epilog.scalar.ph4656.preheader, label %vec.epilog.ph4659, !prof !18

vec.epilog.ph4659:                                ; preds = %vector.main.loop.iter.check4638, %vec.epilog.iter.check4657
  %vec.epilog.resume.val4653 = phi i64 [ %n.vec4641, %vec.epilog.iter.check4657 ], [ 0, %vector.main.loop.iter.check4638 ]
  %n.vec4660 = and i64 %i.czp, 8589934588         ; 3 uses
  %i.dai = add nuw nsw i64 %n.vec4660, %i.czl
  %broadcast.splatinsert4661 = insertelement <4 x double> poison, double %i.bxp, i64 0
  %broadcast.splat4662 = shufflevector <4 x double> %broadcast.splatinsert4661, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4787.a = add i32 %.32608.us, %i.czk
  br label %vec.epilog.vector.body4663

vec.epilog.vector.body4663:                       ; preds = %vec.epilog.vector.body4663, %vec.epilog.ph4659
  %index4664 = phi i64 [ %vec.epilog.resume.val4653, %vec.epilog.ph4659 ], [ %index.next4666, %vec.epilog.vector.body4663 ] ; 2 uses
  %i.daj = trunc i64 %index4664 to i32
  %.reass4788 = add i32 %i.daj, %invariant.op4787.a
  %i.dak = sext i32 %.reass4788 to i64
  %i.dal = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dak ; 2 uses
  %wide.load4665 = load <4 x double>, ptr %i.dal, align 8, !tbaa !9
  %i.dam = fdiv <4 x double> %wide.load4665, %broadcast.splat4662
  store <4 x double> %i.dam, ptr %i.dal, align 8, !tbaa !9
  %index.next4666 = add nuw i64 %index4664, 4     ; 2 uses
  %i.dan = icmp eq i64 %index.next4666, %n.vec4660
  br i1 %i.dan, label %vec.epilog.middle.block4667, label %vec.epilog.vector.body4663, !llvm.loop !137

vec.epilog.middle.block4667:                      ; preds = %vec.epilog.vector.body4663
  %cmp.n4668 = icmp eq i64 %i.czp, %n.vec4660
  br i1 %cmp.n4668, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4656.preheader

vec.epilog.scalar.ph4656.preheader:               ; preds = %vector.scevcheck4635, %iter.check4655, %vec.epilog.iter.check4657, %vec.epilog.middle.block4667
  %indvars.iv3727.ph = phi i64 [ %i.czl, %iter.check4655 ], [ %i.czl, %vector.scevcheck4635 ], [ %i.czw, %vec.epilog.iter.check4657 ], [ %i.dai, %vec.epilog.middle.block4667 ] ; 3 uses
  %i.dao = add i32 %i.byy, 1
  %i.dap = trunc i64 %indvars.iv3727.ph to i32    ; 2 uses
  %i.daq = sub i32 %i.dao, %i.dap
  %i.dar = sub i32 %i.byy, %i.dap
  %xtraiter4733 = and i32 %i.daq, 3               ; 2 uses
  %lcmp.mod4734.not = icmp eq i32 %xtraiter4733, 0
  br i1 %lcmp.mod4734.not, label %vec.epilog.scalar.ph4656.prol.loopexit, label %vec.epilog.scalar.ph4656.prol

vec.epilog.scalar.ph4656.prol:                    ; preds = %vec.epilog.scalar.ph4656.preheader, %vec.epilog.scalar.ph4656.prol
  %indvars.iv3727.prol = phi i64 [ %indvars.iv.next3728.prol, %vec.epilog.scalar.ph4656.prol ], [ %indvars.iv3727.ph, %vec.epilog.scalar.ph4656.preheader ] ; 2 uses
  %prol.iter4735 = phi i32 [ %prol.iter4735.next, %vec.epilog.scalar.ph4656.prol ], [ 0, %vec.epilog.scalar.ph4656.preheader ]
  %i.das = trunc nsw i64 %indvars.iv3727.prol to i32
  %i.dat = add i32 %i.czk, %i.das
  %i.dau = sext i32 %i.dat to i64
  %i.dav = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dau ; 2 uses
  %i.daw = load double, ptr %i.dav, align 8, !tbaa !9
  %i.dax = fdiv double %i.daw, %i.bxp
  store double %i.dax, ptr %i.dav, align 8, !tbaa !9
  %indvars.iv.next3728.prol = add nuw nsw i64 %indvars.iv3727.prol, 1 ; 2 uses
  %prol.iter4735.next = add i32 %prol.iter4735, 1 ; 2 uses
  %prol.iter4735.cmp.not = icmp eq i32 %prol.iter4735.next, %xtraiter4733
  br i1 %prol.iter4735.cmp.not, label %vec.epilog.scalar.ph4656.prol.loopexit, label %vec.epilog.scalar.ph4656.prol, !llvm.loop !138

vec.epilog.scalar.ph4656.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4656.prol, %vec.epilog.scalar.ph4656.preheader
  %indvars.iv3727.unr = phi i64 [ %indvars.iv3727.ph, %vec.epilog.scalar.ph4656.preheader ], [ %indvars.iv.next3728.prol, %vec.epilog.scalar.ph4656.prol ]
  %i.day = icmp ult i32 %i.dar, 3
  br i1 %i.day, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4656.preheader.new

vec.epilog.scalar.ph4656.preheader.new:           ; preds = %vec.epilog.scalar.ph4656.prol.loopexit
  %invariant.op4789.a = add i32 1, %i.czk
  %invariant.op4791 = add i32 2, %i.czk
  %invariant.op4793 = add i32 3, %i.czk
  br label %vec.epilog.scalar.ph4656

iter.check4556:                                   ; preds = %.loopexit
  %.reass3383.reass.us = add i32 %invariant.op3398.us, %i.cbf
  %i.daz = sext i32 %.reass3383.reass.us to i64
  %i.dba = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.daz ; 4 uses
  br i1 %min.iters.check4534, label %vec.epilog.scalar.ph4557.preheader, label %vector.scevcheck4513

vector.scevcheck4513:                             ; preds = %iter.check4556
  %i.dbb = add i32 %i.cbb, %i.dds
  %i.dbc = icmp slt i32 %i.dbb, %i.cbb
  %i.dbd = or i1 %i.dbc, %i.ddw
  br i1 %i.dbd, label %vec.epilog.scalar.ph4557.preheader, label %vector.memcheck4516

vector.memcheck4516:                              ; preds = %vector.scevcheck4513
  %bound04526 = icmp ult ptr %scevgep4518, %scevgep4522
  %bound14527 = icmp ult ptr %i.dba, %scevgep4520
  %found.conflict4528 = and i1 %bound04526, %bound14527
  %bound04529 = icmp ult ptr %scevgep4518, %scevgep4525
  %bound14530 = icmp ult ptr %scevgep4524, %scevgep4520
  %found.conflict4531 = and i1 %bound04529, %bound14530
  %conflict.rdx4532 = or i1 %found.conflict4528, %found.conflict4531
  br i1 %conflict.rdx4532, label %vec.epilog.scalar.ph4557.preheader, label %vector.main.loop.iter.check4535

vector.main.loop.iter.check4535:                  ; preds = %vector.memcheck4516
  br i1 %min.iters.check4536, label %vec.epilog.ph4560, label %vector.ph4537

vector.ph4537:                                    ; preds = %vector.main.loop.iter.check4535
  %i.dbe = load double, ptr %i.dba, align 8, !tbaa !9, !alias.scope !139
  %.scalar4672 = fneg double %i.dbe
  %i.dbf = insertelement <4 x double> poison, double %.scalar4672, i64 0
  %i.dbg = shufflevector <4 x double> %i.dbf, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4541

vector.body4541:                                  ; preds = %vector.body4541, %vector.ph4537
  %index4542 = phi i64 [ 0, %vector.ph4537 ], [ %index.next4551, %vector.body4541 ] ; 2 uses
  %i.dbh = trunc i64 %index4542 to i32
  %.reass4799 = add i32 %i.dbh, %invariant.op4798 ; 2 uses
  %i.dbi = add i32 %i.dcp, %.reass4799
  %i.dbj = sext i32 %i.dbi to i64
  %i.dbk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbj ; 4 uses
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbk, i64 32
  %i.dbm = getelementptr inbounds nuw i8, ptr %i.dbk, i64 64
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.dbk, i64 96
  %wide.load4543 = load <4 x double>, ptr %i.dbk, align 8, !tbaa !9, !alias.scope !142
  %wide.load4544 = load <4 x double>, ptr %i.dbl, align 8, !tbaa !9, !alias.scope !142
  %wide.load4545 = load <4 x double>, ptr %i.dbm, align 8, !tbaa !9, !alias.scope !142
  %wide.load4546 = load <4 x double>, ptr %i.dbn, align 8, !tbaa !9, !alias.scope !142
  %i.dbo = add i32 %i.cbe, %.reass4799
  %i.dbp = sext i32 %i.dbo to i64
  %i.dbq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbp ; 5 uses
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbq, i64 32 ; 2 uses
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.dbq, i64 64 ; 2 uses
  %i.dbt = getelementptr inbounds nuw i8, ptr %i.dbq, i64 96 ; 2 uses
  %wide.load4547 = load <4 x double>, ptr %i.dbq, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %wide.load4548 = load <4 x double>, ptr %i.dbr, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %wide.load4549 = load <4 x double>, ptr %i.dbs, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %wide.load4550 = load <4 x double>, ptr %i.dbt, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %i.dbu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbg, <4 x double> %wide.load4543, <4 x double> %wide.load4547)
  %i.dbv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbg, <4 x double> %wide.load4544, <4 x double> %wide.load4548)
  %i.dbw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbg, <4 x double> %wide.load4545, <4 x double> %wide.load4549)
  %i.dbx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbg, <4 x double> %wide.load4546, <4 x double> %wide.load4550)
  store <4 x double> %i.dbu, ptr %i.dbq, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  store <4 x double> %i.dbv, ptr %i.dbr, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  store <4 x double> %i.dbw, ptr %i.dbs, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  store <4 x double> %i.dbx, ptr %i.dbt, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %index.next4551 = add nuw i64 %index4542, 16    ; 2 uses
  %i.dby = icmp eq i64 %index.next4551, %n.vec4538
  br i1 %i.dby, label %middle.block4552, label %vector.body4541, !llvm.loop !147

middle.block4552:                                 ; preds = %vector.body4541
  br i1 %cmp.n4553, label %._crit_edge3388.us, label %vec.epilog.iter.check4558

vec.epilog.iter.check4558:                        ; preds = %middle.block4552
  br i1 %min.epilog.iters.check4559, label %vec.epilog.scalar.ph4557.preheader, label %vec.epilog.ph4560, !prof !18

vec.epilog.ph4560:                                ; preds = %vector.main.loop.iter.check4535, %vec.epilog.iter.check4558
  %vec.epilog.resume.val4554 = phi i64 [ %n.vec4538, %vec.epilog.iter.check4558 ], [ 0, %vector.main.loop.iter.check4535 ]
  %i.dbz = load double, ptr %i.dba, align 8, !tbaa !9, !alias.scope !139
  %.scalar4673 = fneg double %i.dbz
  %i.dca = insertelement <4 x double> poison, double %.scalar4673, i64 0
  %i.dcb = shufflevector <4 x double> %i.dca, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4564

vec.epilog.vector.body4564:                       ; preds = %vec.epilog.vector.body4564, %vec.epilog.ph4560
  %index4565 = phi i64 [ %vec.epilog.resume.val4554, %vec.epilog.ph4560 ], [ %index.next4568, %vec.epilog.vector.body4564 ] ; 2 uses
  %i.dcc = trunc i64 %index4565 to i32
  %.reass4801 = add i32 %i.dcc, %invariant.op4800 ; 2 uses
  %i.dcd = add i32 %i.dcp, %.reass4801
  %i.dce = sext i32 %i.dcd to i64
  %i.dcf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dce
  %wide.load4566 = load <4 x double>, ptr %i.dcf, align 8, !tbaa !9, !alias.scope !142
  %i.dcg = add i32 %i.cbe, %.reass4801
  %i.dch = sext i32 %i.dcg to i64
  %i.dci = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dch ; 2 uses
  %wide.load4567 = load <4 x double>, ptr %i.dci, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %i.dcj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dcb, <4 x double> %wide.load4566, <4 x double> %wide.load4567)
  store <4 x double> %i.dcj, ptr %i.dci, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %index.next4568 = add nuw i64 %index4565, 4     ; 2 uses
  %i.dck = icmp eq i64 %index.next4568, %n.vec4561
  br i1 %i.dck, label %vec.epilog.middle.block4569, label %vec.epilog.vector.body4564, !llvm.loop !148

vec.epilog.middle.block4569:                      ; preds = %vec.epilog.vector.body4564
  br i1 %cmp.n4570, label %._crit_edge3388.us, label %vec.epilog.scalar.ph4557.preheader

vec.epilog.scalar.ph4557.preheader:               ; preds = %vector.memcheck4516, %vector.scevcheck4513, %iter.check4556, %vec.epilog.iter.check4558, %vec.epilog.middle.block4569
  %indvars.iv3737.ph = phi i64 [ %i.dcr, %iter.check4556 ], [ %i.dcr, %vector.scevcheck4513 ], [ %i.dcr, %vector.memcheck4516 ], [ %i.ddy, %vec.epilog.iter.check4558 ], [ %i.ddz, %vec.epilog.middle.block4569 ]
  br label %vec.epilog.scalar.ph4557

.lr.ph3396.us:                                    ; preds = %._crit_edge3378.us
  %i.dcl = mul i32 %.32608.us, %i.n               ; 5 uses
  %i.dcm = sext i32 %i.dcl to i64                 ; 2 uses
  %i.dcn = getelementptr [8 x i8], ptr %i.p, i64 %i.dcm
  %i.dco = getelementptr i8, ptr %i.dcn, i64 8    ; 3 uses
  store i32 %i.byw, ptr %i.a, align 4, !tbaa !8
  store i32 %i.byx, ptr %i.b, align 4, !tbaa !8
  %.not2728.not3384.us = icmp slt i32 %i.bzu, %i.byy
  %reass.sub3513 = sub i32 %i.bxl, %.32608.us
  %invariant.op3398.us = add i32 %reass.sub3513, 1
  %reass.sub3514 = mul i32 %.32608.us, %.32608.us3515
  %i.dcp = add i32 %reass.sub3514, 1              ; 3 uses
  %i.dcq = sext i32 %i.bzv to i64                 ; 4 uses
  %i.dcr = sext i32 %i.bzu to i64                 ; 14 uses
  %i.dcs = sext i32 %i.byy to i64                 ; 5 uses
  %i.dct = xor i64 %i.dcr, -1
  %i.dcu = add nsw i64 %i.dct, %i.dcs             ; 2 uses
  %i.dcv = add nuw i32 %i.bxh, 1
  %i.dcw = mul i32 %i.n, %i.bzv                   ; 2 uses
  %i.dcx = add i32 %i.dcv, %i.dcw                 ; 2 uses
  %i.dcy = add nuw i32 %i.bxh, 2
  %i.dcz = mul i32 %i.n, %.32608.us
  %i.dda = add i32 %i.dcy, %i.dcz                 ; 2 uses
  %i.ddb = mul nsw i64 %i.dcr, -8
  %scevgep4519 = getelementptr i8, ptr %5, i64 %i.ddb
  %i.ddc = add nsw i64 %i.o, %i.dcs
  %i.ddd = add i32 %i.bxl, 2
  %i.dde = add nuw i32 %i.bxh, 2
  %i.ddf = mul i32 %i.n, %.32608.us
  %i.ddg = add i32 %i.dde, %i.ddf
  %i.ddh = sext i32 %i.ddg to i64                 ; 2 uses
  %i.ddi = shl nsw i64 %i.ddh, 3
  %scevgep4524 = getelementptr i8, ptr %scevgep4523, i64 %i.ddi
  %i.ddj = add nsw i64 %i.o, %i.dcs
  %i.ddk = add nsw i64 %i.ddj, %i.ddh
  %i.ddl = sub nsw i64 %i.ddk, %i.dcr
  %i.ddm = shl nsw i64 %i.ddl, 3
  %scevgep4525 = getelementptr i8, ptr %5, i64 %i.ddm
  %i.ddn = sub nsw i64 %i.dcs, %i.dcr             ; 7 uses
  %i.ddo = add i32 %i.dcw, 1                      ; 2 uses
  %i.ddp = add i32 %i.bxl, 2
  %i.ddq = add i32 %i.dcl, 2
  %i.ddr = shl nsw i64 %i.dcm, 3
  %scevgep4595 = getelementptr i8, ptr %scevgep4594, i64 %i.ddr
  %invariant.op4802 = sub i32 1, %.32608.us
  %invariant.op4795 = sub i32 1, %.32608.us
  %invariant.op4797 = sub i32 1, %.32608.us
  %min.iters.check4534 = icmp ult i64 %i.ddn, 4
  %i.dds = trunc i64 %i.dcu to i32                ; 2 uses
  %i.ddt = add i32 %i.dda, %i.dds
  %i.ddu = icmp slt i32 %i.ddt, %i.dda
  %i.ddv = icmp ugt i64 %i.dcu, 4294967295
  %i.ddw = or i1 %i.ddu, %i.ddv
  %min.iters.check4536 = icmp ult i64 %i.ddn, 16
  %i.ddx = and i64 %i.ddn, 12
  %n.vec4538 = and i64 %i.ddn, -16                ; 4 uses
  %i.ddy = add nsw i64 %n.vec4538, %i.dcr
  %invariant.op4798 = add i32 %i.bzu, 1
  %cmp.n4553 = icmp eq i64 %i.ddn, %n.vec4538
  %min.epilog.iters.check4559 = icmp eq i64 %i.ddx, 0
  %n.vec4561 = and i64 %i.ddn, -4                 ; 3 uses
  %i.ddz = add nsw i64 %n.vec4561, %i.dcr
  %invariant.op4800 = add i32 %i.bzu, 1
  %cmp.n4570 = icmp eq i64 %i.ddn, %n.vec4561
  br label %bb.dq

._crit_edge3397.us:                               ; preds = %._crit_edge3388.us
  store i32 %i.byy, ptr %i.c, align 4, !tbaa !8
  br label %bb.dr

.lr.ph3402.us:                                    ; preds = %bb.ds
  %indvars3747 = trunc i64 %indvars.iv3744 to i32 ; 2 uses
  %i.dea = mul nsw i64 %indvars.iv3744, %i.bb
  %i.deb = sub i32 %i.bzv, %indvars3747
  %i.dec = sext i32 %i.deb to i64
  %i.ded = getelementptr [8 x i8], ptr %i.p, i64 %i.dea
  %i.dee = getelementptr [8 x i8], ptr %i.ded, i64 %i.dec
  %reass.sub3519 = mul i32 %i.bwy, %indvars3747
  %i.def = add i32 %reass.sub3519, 1
  %i.deg = zext nneg i32 %i.cei to i64
  br label %bb.dt

.lr.ph3409.us:                                    ; preds = %bb.dr
  store i32 %i.bzu, ptr %i.b, align 4, !tbaa !8
  %reass.sub3518 = sub i32 %i.bxl, %.32608.us
  %i.deh = add i32 %reass.sub3518, 1
  %i.dei = zext nneg i32 %.32608.us to i64
  %i.dej = sext i32 %.42546.us to i64
  br label %bb.ds

._crit_edge3410.us:                               ; preds = %._crit_edge3403.us
  %i.dek = add i32 %.32608.us, %.pre3819.a
  %smin3746 = call i32 @llvm.smin.i32(i32 %i.byx, i32 %i.bzu)
  store i32 %i.dek, ptr %i.a, align 4, !tbaa !8
  store i32 %smin3746, ptr %i.c, align 4, !tbaa !8
  br label %bb.du

.lr.ph3416.us:                                    ; preds = %bb.ee
  %i.del = load i32, ptr %2, align 4, !tbaa !8
  %i.dem = add i32 %i.cif, %smax3754
  %i.den = sub i32 1, %i.dem
  %i.deo = mul i32 %i.chw, %i.den
  %i.dep = add i32 %indvars.iv3750, %i.deo
  %i.deq = sext i32 %i.dep to i64
  %i.der = sext i32 %i.chw to i64                 ; 2 uses
  %i.des = sext i32 %i.del to i64
  %i.det = sext i32 %.3.us to i64                 ; 2 uses
  %invariant.gep4152 = getelementptr [8 x i8], ptr %i.p, i64 %i.der
  %invariant.gep4154 = getelementptr [8 x i8], ptr %i.w, i64 %i.des
  br label %bb.ef

.lr.ph3421.us:                                    ; preds = %bb.ei
  %i.deu = add nsw i32 %i.cii, -1
  %i.dev = mul nsw i32 %i.deu, %i.n               ; 2 uses
  %i.dew = add i32 %i.dev, 2
  %i.dex = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.pre3959.a
  %i.dey = sext i32 %.pre3951.a to i64            ; 2 uses
  %invariant.gep4156 = getelementptr [8 x i8], ptr %i.p, i64 %i.dey
  br label %bb.ej

.lr.ph3427.us:                                    ; preds = %bb.ek
  %i.dez = add i32 %i.cic, -1
  %.pre3829 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.el

.lr.ph3437.us:                                    ; preds = %bb.dy
  %i.dfa = mul nsw i32 %.32608.us, %i.q
  %i.dfb = add i32 %i.dfa, 1
  %i.dfc = add i32 %.32608.us, %i.ay
  %.reass4167.reass = add i32 %.42551.us, %invariant.op4803
  %i.dfd = add nuw i32 %.32608.us, 1
  %i.dfe = add nsw i32 %.32608.us, -1
  %i.dff = add nuw i32 %.32608.us, 2
  %.reass4169.reass = add i32 %.42551.us, %invariant.op4804.a
  %i.dfg = zext nneg i32 %.32608.us to i64
  br label %bb.dz

.lr.ph3446.us:                                    ; preds = %._crit_edge3442.us
  %i.dfh = load i32, ptr %4, align 4, !tbaa !8
  %i.dfi = sub i32 %i.ay, %i.dfh                  ; 2 uses
  %i.dfj = load i32, ptr %2, align 4, !tbaa !8
  %invariant.op3451.us = add i32 %i.dfi, %i.dfj
  %i.dfk = sext i32 %i.cph to i64
  %i.dfl = sext i32 %i.cpb to i64
  %i.dfm = sext i32 %i.cnq to i64                 ; 2 uses
  br label %bb.ey

.lr.ph3456.us:                                    ; preds = %bb.ey
  store i32 %i.cnq, ptr %i.c, align 4, !tbaa !8
  store i32 %i.cpb, ptr %i.d, align 4, !tbaa !8
  %i.dfn = load i32, ptr %4, align 4, !tbaa !8
  %invariant.op3458.us = sub i32 %i.ay, %i.dfn    ; 2 uses
  %i.dfo = load i32, ptr %2, align 4, !tbaa !8
  %invariant.op3462.us = add i32 %invariant.op3458.us, %i.dfo
  %i.dfp = sext i32 %i.cph to i64
  %i.dfq = sext i32 %i.cpb to i64                 ; 2 uses
  %i.dfr = sext i32 %i.cnq to i64                 ; 2 uses
  %invariant.gep4158 = getelementptr [8 x i8], ptr %i.p, i64 %i.dfq
  br label %bb.ez

.lr.ph3466.us:                                    ; preds = %bb.er
  %i.dfs = sub i32 %.42551.us, %i.ay
  %i.dft = add nuw i32 %.32608.us, 1
  %i.dfu = add i32 %.32608.us, %i.ay
  br label %bb.es

.lr.ph3471.us:                                    ; preds = %bb.fe
  %i.dfv = add nsw i32 %i.crr, -1
  %i.dfw = mul nsw i32 %i.dfv, %i.n               ; 2 uses
  %i.dfx = add i32 %i.dfw, 2
  %i.dfy = sext i32 %i.crt to i64                 ; 2 uses
  %invariant.gep4160 = getelementptr [8 x i8], ptr %i.p, i64 %i.dfy
  br label %bb.ff

.lr.ph3477.us:                                    ; preds = %bb.fg
  %i.dfz = add i32 %i.crk, -1
  %.pre3840 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.fh

.lr.ph3485.us:                                    ; preds = %._crit_edge3467.us
  %i.dga = sub i32 %.42551.us, %i.ay
  %i.dgb = add nuw i32 %.32608.us, 1
  br label %bb.fd

.lr.ph3489.us:                                    ; preds = %bb.fl
  %i.dgc = add i32 %i.cwf, -1
  br label %bb.fm

.lr.ph3494.us:                                    ; preds = %._crit_edge3486.us
  %.reass4171.reass = add i32 %.42551.us, %invariant.op4805
  %i.dgd = add nuw i32 %.32608.us, 1
  %.pre3906 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br label %bb.fl

.lr.ph3499.us:                                    ; preds = %bb.fp
  %i.dge = load i32, ptr %2, align 4, !tbaa !8
  %i.dgf = sext i32 %i.dge to i64                 ; 9 uses
  %i.dgg = sext i32 %.pre3819.pre.pre to i64      ; 5 uses
  %i.dgh = sub i32 %i.cxo, %i.cxp
  %wide.trip.count3778 = zext i32 %i.dgh to i64   ; 4 uses
  %invariant.gep4162 = getelementptr [8 x i8], ptr %i.w, i64 %i.dgg ; 6 uses
  %invariant.gep4164 = getelementptr [8 x i8], ptr %i.w, i64 %i.dgg ; 6 uses
  %i.dgi = add nsw i64 %wide.trip.count3778, -2   ; 3 uses
  %min.iters.check4500 = icmp ult i64 %i.dgi, 16
  br i1 %min.iters.check4500, label %scalar.ph4499.preheader, label %vector.memcheck4491

vector.memcheck4491:                              ; preds = %.lr.ph3499.us
  %i.dgj = shl nsw i64 %i.dgf, 3
  %diff.check4492 = icmp ugt i64 %i.dgj, -64
  %i.dgk = shl nsw i64 %i.dgg, 3
  %diff.check4493 = icmp ugt i64 %i.dgk, -64
  %conflict.rdx4494 = or i1 %diff.check4492, %diff.check4493
  %i.dgl = sub nsw i64 %i.dgg, %i.dgf
  %i.dgm = shl nsw i64 %i.dgl, 3
  %i.dgn = add nsw i64 %i.dgm, -1
  %diff.check4495 = icmp ult i64 %i.dgn, 63
  %conflict.rdx4496 = or i1 %conflict.rdx4494, %diff.check4495
  %i.dgo = add nsw i64 %i.dgf, %i.dgg
  %i.dgp = shl nsw i64 %i.dgo, 3
  %diff.check4497 = icmp ugt i64 %i.dgp, -64
  %conflict.rdx4498 = or i1 %conflict.rdx4496, %diff.check4497
  br i1 %conflict.rdx4498, label %scalar.ph4499.preheader, label %vector.ph4501

vector.ph4501:                                    ; preds = %vector.memcheck4491
  %n.vec4502 = and i64 %i.dgi, -8                 ; 3 uses
  %i.dgq = or disjoint i64 %n.vec4502, 2
  br label %vector.body4503

vector.body4503:                                  ; preds = %vector.body4503, %vector.ph4501
  %index4504 = phi i64 [ 0, %vector.ph4501 ], [ %index.next4509, %vector.body4503 ] ; 2 uses
  %i.dgr = or disjoint i64 %index4504, 2          ; 3 uses
  %i.dgs = add nsw i64 %i.dgr, %i.dgf             ; 2 uses
  %i.dgt = getelementptr [8 x i8], ptr %invariant.gep4162, i64 %i.dgs ; 2 uses
  %i.dgu = getelementptr i8, ptr %i.dgt, i64 32
  %wide.load4505 = load <4 x double>, ptr %i.dgt, align 8, !tbaa !9
  %wide.load4506 = load <4 x double>, ptr %i.dgu, align 8, !tbaa !9
  %i.dgv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dgs ; 2 uses
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.dgv, i64 32
  store <4 x double> %wide.load4505, ptr %i.dgv, align 8, !tbaa !9
  store <4 x double> %wide.load4506, ptr %i.dgw, align 8, !tbaa !9
  %i.dgx = getelementptr [8 x i8], ptr %invariant.gep4164, i64 %i.dgr ; 2 uses
  %i.dgy = getelementptr i8, ptr %i.dgx, i64 32
  %wide.load4507 = load <4 x double>, ptr %i.dgx, align 8, !tbaa !9
  %wide.load4508 = load <4 x double>, ptr %i.dgy, align 8, !tbaa !9
  %i.dgz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dgr ; 2 uses
  %i.dha = getelementptr inbounds nuw i8, ptr %i.dgz, i64 32
  store <4 x double> %wide.load4507, ptr %i.dgz, align 8, !tbaa !9
  store <4 x double> %wide.load4508, ptr %i.dha, align 8, !tbaa !9
  %index.next4509 = add nuw i64 %index4504, 8     ; 2 uses
  %i.dhb = icmp eq i64 %index.next4509, %n.vec4502
  br i1 %i.dhb, label %middle.block4510, label %vector.body4503, !llvm.loop !149

middle.block4510:                                 ; preds = %vector.body4503
  %cmp.n4511 = icmp eq i64 %i.dgi, %n.vec4502
  br i1 %cmp.n4511, label %.outer.us.backedge, label %scalar.ph4499.preheader

.outer.us.backedge:                               ; preds = %scalar.ph4499.prol.loopexit, %scalar.ph4499, %middle.block4510, %._crit_edge3495.us.thread, %bb.fp, %._crit_edge3495.us
  %.pre3819.be = phi i32 [ %.pre3819.pre.pre4095, %._crit_edge3495.us.thread ], [ %.pre3819.pre.pre, %._crit_edge3495.us ], [ %.pre3819.pre.pre, %bb.fp ], [ %.pre3819.pre.pre, %middle.block4510 ], [ %.pre3819.pre.pre, %scalar.ph4499 ], [ %.pre3819.pre.pre, %scalar.ph4499.prol.loopexit ]
  %.be = phi i32 [ %.ph4094, %._crit_edge3495.us.thread ], [ %.pre3846, %._crit_edge3495.us ], [ %.pre3846, %bb.fp ], [ %.pre3846, %middle.block4510 ], [ %.pre3846, %scalar.ph4499 ], [ %.pre3846, %scalar.ph4499.prol.loopexit ]
  br label %.outer.us

scalar.ph4499.preheader:                          ; preds = %vector.memcheck4491, %.lr.ph3499.us, %middle.block4510
  %indvars.iv3775.ph = phi i64 [ 2, %vector.memcheck4491 ], [ 2, %.lr.ph3499.us ], [ %i.dgq, %middle.block4510 ] ; 4 uses
  %i.dhc = sub nsw i64 %wide.trip.count3778, %indvars.iv3775.ph
  %xtraiter4736 = and i64 %i.dhc, 3               ; 2 uses
  %lcmp.mod4737.not = icmp eq i64 %xtraiter4736, 0
  br i1 %lcmp.mod4737.not, label %scalar.ph4499.prol.loopexit, label %scalar.ph4499.prol

scalar.ph4499.prol:                               ; preds = %scalar.ph4499.preheader, %scalar.ph4499.prol
  %indvars.iv3775.prol = phi i64 [ %indvars.iv.next3776.prol, %scalar.ph4499.prol ], [ %indvars.iv3775.ph, %scalar.ph4499.preheader ] ; 4 uses
  %prol.iter4738 = phi i64 [ %prol.iter4738.next, %scalar.ph4499.prol ], [ 0, %scalar.ph4499.preheader ]
  %i.dhd = add nsw i64 %indvars.iv3775.prol, %i.dgf ; 2 uses
  %gep4163.prol = getelementptr [8 x i8], ptr %invariant.gep4162, i64 %i.dhd
  %i.dhe = load double, ptr %gep4163.prol, align 8, !tbaa !9
  %i.dhf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dhd
  store double %i.dhe, ptr %i.dhf, align 8, !tbaa !9
  %gep4165.prol = getelementptr [8 x i8], ptr %invariant.gep4164, i64 %indvars.iv3775.prol
  %i.dhg = load double, ptr %gep4165.prol, align 8, !tbaa !9
  %i.dhh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3775.prol
  store double %i.dhg, ptr %i.dhh, align 8, !tbaa !9
  %indvars.iv.next3776.prol = add nuw nsw i64 %indvars.iv3775.prol, 1 ; 2 uses
  %prol.iter4738.next = add i64 %prol.iter4738, 1 ; 2 uses
  %prol.iter4738.cmp.not = icmp eq i64 %prol.iter4738.next, %xtraiter4736
  br i1 %prol.iter4738.cmp.not, label %scalar.ph4499.prol.loopexit, label %scalar.ph4499.prol, !llvm.loop !150

scalar.ph4499.prol.loopexit:                      ; preds = %scalar.ph4499.prol, %scalar.ph4499.preheader
  %indvars.iv3775.unr = phi i64 [ %indvars.iv3775.ph, %scalar.ph4499.preheader ], [ %indvars.iv.next3776.prol, %scalar.ph4499.prol ]
  %i.dhi = sub nsw i64 %indvars.iv3775.ph, %wide.trip.count3778
  %i.dhj = icmp ugt i64 %i.dhi, -4
  br i1 %i.dhj, label %.outer.us.backedge, label %scalar.ph4499

.outer:                                           ; preds = %.outer.backedge, %.outer.preheader
  %.pre3788 = phi i32 [ %.pre3786, %.outer.preheader ], [ %.pre3788.be, %.outer.backedge ] ; 6 uses
  %i.dhk = phi i32 [ %i.bp, %.outer.preheader ], [ %.be4676, %.outer.backedge ] ; 3 uses
  %.22607.ph = phi i32 [ 0, %.outer.preheader ], [ %.32608, %.outer.backedge ] ; 4 uses
  %.32550.ph = phi i32 [ %.22549, %.outer.preheader ], [ %.42551, %.outer.backedge ]
  %.32545.ph = phi i32 [ %.22544, %.outer.preheader ], [ %.42546, %.outer.backedge ]
  %.32541.ph = phi i32 [ %.22540, %.outer.preheader ], [ %.4, %.outer.backedge ]
  %.12533.ph = phi i32 [ 1, %.outer.preheader ], [ %.125332894, %.outer.backedge ]
  %.not26983209 = icmp eq i32 %.12533.ph, 0
  br i1 %.not26983209, label %bb.fq, label %.lr.ph3212

.lr.ph3212:                                       ; preds = %.outer
  %i.dhl = add nuw nsw i32 %.22607.ph, 1          ; 4 uses
  %i.dhm = sub nsw i32 %i.ay, %i.dhl
  %i.dhn = call i32 @llvm.smin.i32(i32 %i.dhk, i32 %i.dhm) ; 2 uses
  store i32 %i.dhn, ptr %i.l, align 4, !tbaa !8
  %i.dho = sub nsw i32 %i.dhl, %.pre3788          ; 3 uses
  %i.dhp = call i32 @llvm.smax.i32(i32 %i.dho, i32 1) ; 2 uses
  %i.dhq = add nsw i32 %i.dhn, %i.dhl
  %i.dhr = load i32, ptr %i.j, align 4, !tbaa !8
  %i.dhs = sub i32 %i.dhq, %i.dhr                 ; 2 uses
  %.not2700 = icmp slt i32 %.22607.ph, %i.ay
  br i1 %.not2700, label %.lr.ph3212.split.us, label %.lr.ph3212.split

.lr.ph3212.split.us:                              ; preds = %.lr.ph3212
  store i32 %i.dho, ptr %i.d, align 4, !tbaa !8
  %i.dht = add nuw nsw i32 %.22607.ph, 2
  br label %bb.fr

.lr.ph3212.split:                                 ; preds = %.lr.ph3212
  %i.dhu = icmp eq i32 %.pre3788, 0
  br i1 %i.dhu, label %.loopexit2877, label %._crit_edge3213

._crit_edge3213:                                  ; preds = %.lr.ph3212.split
  store i32 %i.dho, ptr %i.d, align 4, !tbaa !8
  br label %bb.fq

bb.fq:                                            ; preds = %._crit_edge3213, %.outer
  %.32550.lcssa = phi i32 [ %i.ba, %._crit_edge3213 ], [ %.32550.ph, %.outer ]
  %.32545.lcssa = phi i32 [ %i.dhp, %._crit_edge3213 ], [ %.32545.ph, %.outer ]
  %.32541.lcssa = phi i32 [ %i.dhs, %._crit_edge3213 ], [ %.32541.ph, %.outer ]
  %i.dhv = sub nsw i32 %.22607.ph, %.pre3788      ; 2 uses
  %i.dhw = icmp slt i32 %i.dhv, 2
  br i1 %i.dhw, label %.loopexit2877, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph3212.split.us, %bb.fq
  %.125332894 = phi i32 [ 0, %bb.fq ], [ 1, %.lr.ph3212.split.us ]
  %.not26982891 = phi i1 [ true, %bb.fq ], [ false, %.lr.ph3212.split.us ] ; 6 uses
  %.32608 = phi i32 [ %i.dhv, %bb.fq ], [ %i.dhl, %.lr.ph3212.split.us ] ; 50 uses
  %.42551 = phi i32 [ %.32550.lcssa, %bb.fq ], [ %i.dht, %.lr.ph3212.split.us ] ; 6 uses
  %.42546 = phi i32 [ %.32545.lcssa, %bb.fq ], [ %i.dhp, %.lr.ph3212.split.us ] ; 10 uses
  %.4 = phi i32 [ %.32541.lcssa, %bb.fq ], [ %i.dhs, %.lr.ph3212.split.us ] ; 2 uses
  %i.dhx = load i32, ptr %i.l, align 4, !tbaa !8  ; 6 uses
  %i.dhy = sub nsw i32 %i.ay, %i.dhx
  %i.dhz = icmp slt i32 %.32608, %i.dhy
  br i1 %i.dhz, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.dia = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %storemerge = phi i32 [ %i.dia, %bb.fs ], [ %i.ay, %bb.fr ]
  store i32 %storemerge, ptr %i.i, align 4, !tbaa !8
  br i1 %.not26982891, label %bb.gd, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.dib = mul nsw i32 %.32608, %i.q
  %i.dic = add nsw i32 %i.dib, %i.ac
  %i.did = sext i32 %i.dic to i64
  %i.die = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.did
  %i.dif = load double, ptr %i.die, align 8, !tbaa !9 ; 13 uses
  store i32 %.32608, ptr %i.c, align 4, !tbaa !8
  %.not27293223 = icmp sgt i32 %.42546, %.32608   ; 2 uses
  br i1 %.not27293223, label %._crit_edge3227, label %iter.check4476

iter.check4476:                                   ; preds = %bb.fu
  %i.dig = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.dih = mul i32 %.32608, %.32608.us3515        ; 2 uses
  %invariant.op3228 = add i32 %i.dih, %i.dig      ; 7 uses
  %i.dii = zext i32 %.42546 to i64                ; 4 uses
  %i.dij = add nuw i32 %.32608, 1
  %i.dik = sub i32 %.32608, %.42546               ; 3 uses
  %i.dil = zext i32 %i.dik to i64
  %i.dim = add nuw nsw i64 %i.dil, 1              ; 5 uses
  %min.iters.check4458 = icmp ult i32 %i.dik, 3
  br i1 %min.iters.check4458, label %vec.epilog.scalar.ph4477.preheader, label %vector.scevcheck4456

vector.scevcheck4456:                             ; preds = %iter.check4476
  %i.din = sub i32 %.32608, %.42546
  %i.dio = add i32 %.42546, %i.dig
  %i.dip = add i32 %i.dio, %i.dih                 ; 2 uses
  %i.diq = add i32 %i.dip, %i.din
  %i.dir = icmp slt i32 %i.diq, %i.dip
  br i1 %i.dir, label %vec.epilog.scalar.ph4477.preheader, label %vector.main.loop.iter.check4459

vector.main.loop.iter.check4459:                  ; preds = %vector.scevcheck4456
  %min.iters.check4460 = icmp ult i32 %i.dik, 15
  br i1 %min.iters.check4460, label %vec.epilog.ph4480, label %vector.ph4461

vector.ph4461:                                    ; preds = %vector.main.loop.iter.check4459
  %i.dis = and i64 %i.dim, 12
  %n.vec4462 = and i64 %i.dim, 8589934576         ; 4 uses
  %i.dit = add nuw nsw i64 %n.vec4462, %i.dii
  %broadcast.splatinsert4463 = insertelement <4 x double> poison, double %i.dif, i64 0
  %broadcast.splat4464 = shufflevector <4 x double> %broadcast.splatinsert4463, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4773 = add i32 %.42546, %invariant.op3228
  br label %vector.body4465

vector.body4465:                                  ; preds = %vector.body4465, %vector.ph4461
  %index4466 = phi i64 [ 0, %vector.ph4461 ], [ %index.next4471, %vector.body4465 ] ; 2 uses
  %i.diu = trunc i64 %index4466 to i32
  %.reass4774 = add i32 %i.diu, %invariant.op4773
  %i.div = sext i32 %.reass4774 to i64
  %i.diw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.div ; 5 uses
  %i.dix = getelementptr inbounds nuw i8, ptr %i.diw, i64 32 ; 2 uses
  %i.diy = getelementptr inbounds nuw i8, ptr %i.diw, i64 64 ; 2 uses
  %i.diz = getelementptr inbounds nuw i8, ptr %i.diw, i64 96 ; 2 uses
  %wide.load4467 = load <4 x double>, ptr %i.diw, align 8, !tbaa !9
  %wide.load4468 = load <4 x double>, ptr %i.dix, align 8, !tbaa !9
  %wide.load4469 = load <4 x double>, ptr %i.diy, align 8, !tbaa !9
  %wide.load4470 = load <4 x double>, ptr %i.diz, align 8, !tbaa !9
  %i.dja = fdiv <4 x double> %wide.load4467, %broadcast.splat4464
  %i.djb = fdiv <4 x double> %wide.load4468, %broadcast.splat4464
  %i.djc = fdiv <4 x double> %wide.load4469, %broadcast.splat4464
  %i.djd = fdiv <4 x double> %wide.load4470, %broadcast.splat4464
  store <4 x double> %i.dja, ptr %i.diw, align 8, !tbaa !9
  store <4 x double> %i.djb, ptr %i.dix, align 8, !tbaa !9
  store <4 x double> %i.djc, ptr %i.diy, align 8, !tbaa !9
  store <4 x double> %i.djd, ptr %i.diz, align 8, !tbaa !9
  %index.next4471 = add nuw i64 %index4466, 16    ; 2 uses
  %i.dje = icmp eq i64 %index.next4471, %n.vec4462
  br i1 %i.dje, label %middle.block4472, label %vector.body4465, !llvm.loop !151

middle.block4472:                                 ; preds = %vector.body4465
  %cmp.n4473 = icmp eq i64 %i.dim, %n.vec4462
  br i1 %cmp.n4473, label %._crit_edge3227, label %vec.epilog.iter.check4478

vec.epilog.iter.check4478:                        ; preds = %middle.block4472
  %min.epilog.iters.check4479 = icmp eq i64 %i.dis, 0
  br i1 %min.epilog.iters.check4479, label %vec.epilog.scalar.ph4477.preheader, label %vec.epilog.ph4480, !prof !18

vec.epilog.ph4480:                                ; preds = %vector.main.loop.iter.check4459, %vec.epilog.iter.check4478
  %vec.epilog.resume.val4474 = phi i64 [ %n.vec4462, %vec.epilog.iter.check4478 ], [ 0, %vector.main.loop.iter.check4459 ]
  %n.vec4481 = and i64 %i.dim, 8589934588         ; 3 uses
  %i.djf = add nuw nsw i64 %n.vec4481, %i.dii
  %broadcast.splatinsert4482 = insertelement <4 x double> poison, double %i.dif, i64 0
  %broadcast.splat4483 = shufflevector <4 x double> %broadcast.splatinsert4482, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4775 = add i32 %.42546, %invariant.op3228
  br label %vec.epilog.vector.body4484

vec.epilog.vector.body4484:                       ; preds = %vec.epilog.vector.body4484, %vec.epilog.ph4480
  %index4485 = phi i64 [ %vec.epilog.resume.val4474, %vec.epilog.ph4480 ], [ %index.next4487, %vec.epilog.vector.body4484 ] ; 2 uses
  %i.djg = trunc i64 %index4485 to i32
  %.reass4776 = add i32 %i.djg, %invariant.op4775
  %i.djh = sext i32 %.reass4776 to i64
  %i.dji = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.djh ; 2 uses
  %wide.load4486 = load <4 x double>, ptr %i.dji, align 8, !tbaa !9
  %i.djj = fdiv <4 x double> %wide.load4486, %broadcast.splat4483
  store <4 x double> %i.djj, ptr %i.dji, align 8, !tbaa !9
  %index.next4487 = add nuw i64 %index4485, 4     ; 2 uses
  %i.djk = icmp eq i64 %index.next4487, %n.vec4481
  br i1 %i.djk, label %vec.epilog.middle.block4488, label %vec.epilog.vector.body4484, !llvm.loop !152

vec.epilog.middle.block4488:                      ; preds = %vec.epilog.vector.body4484
  %cmp.n4489 = icmp eq i64 %i.dim, %n.vec4481
  br i1 %cmp.n4489, label %._crit_edge3227, label %vec.epilog.scalar.ph4477.preheader

vec.epilog.scalar.ph4477.preheader:               ; preds = %vector.scevcheck4456, %iter.check4476, %vec.epilog.iter.check4478, %vec.epilog.middle.block4488
  %indvars.iv3661.ph = phi i64 [ %i.dii, %iter.check4476 ], [ %i.dii, %vector.scevcheck4456 ], [ %i.dit, %vec.epilog.iter.check4478 ], [ %i.djf, %vec.epilog.middle.block4488 ] ; 3 uses
  %i.djl = add i32 %.32608, 1
  %i.djm = trunc i64 %indvars.iv3661.ph to i32    ; 2 uses
  %i.djn = sub i32 %i.djl, %i.djm
  %i.djo = sub i32 %.32608, %i.djm
  %xtraiter4705 = and i32 %i.djn, 3               ; 2 uses
  %lcmp.mod4706.not = icmp eq i32 %xtraiter4705, 0
  br i1 %lcmp.mod4706.not, label %vec.epilog.scalar.ph4477.prol.loopexit, label %vec.epilog.scalar.ph4477.prol

vec.epilog.scalar.ph4477.prol:                    ; preds = %vec.epilog.scalar.ph4477.preheader, %vec.epilog.scalar.ph4477.prol
  %indvars.iv3661.prol = phi i64 [ %indvars.iv.next3662.prol, %vec.epilog.scalar.ph4477.prol ], [ %indvars.iv3661.ph, %vec.epilog.scalar.ph4477.preheader ] ; 2 uses
  %prol.iter4707 = phi i32 [ %prol.iter4707.next, %vec.epilog.scalar.ph4477.prol ], [ 0, %vec.epilog.scalar.ph4477.preheader ]
  %i.djp = trunc i64 %indvars.iv3661.prol to i32
  %.reass3229.prol = add i32 %invariant.op3228, %i.djp
  %i.djq = sext i32 %.reass3229.prol to i64
  %i.djr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.djq ; 2 uses
  %i.djs = load double, ptr %i.djr, align 8, !tbaa !9
  %i.djt = fdiv double %i.djs, %i.dif
  store double %i.djt, ptr %i.djr, align 8, !tbaa !9
  %indvars.iv.next3662.prol = add i64 %indvars.iv3661.prol, 1 ; 2 uses
  %prol.iter4707.next = add i32 %prol.iter4707, 1 ; 2 uses
  %prol.iter4707.cmp.not = icmp eq i32 %prol.iter4707.next, %xtraiter4705
  br i1 %prol.iter4707.cmp.not, label %vec.epilog.scalar.ph4477.prol.loopexit, label %vec.epilog.scalar.ph4477.prol, !llvm.loop !153

vec.epilog.scalar.ph4477.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4477.prol, %vec.epilog.scalar.ph4477.preheader
  %indvars.iv3661.unr = phi i64 [ %indvars.iv3661.ph, %vec.epilog.scalar.ph4477.preheader ], [ %indvars.iv.next3662.prol, %vec.epilog.scalar.ph4477.prol ]
  %i.dju = icmp ult i32 %i.djo, 3
  br i1 %i.dju, label %._crit_edge3227, label %vec.epilog.scalar.ph4477.preheader.new

vec.epilog.scalar.ph4477.preheader.new:           ; preds = %vec.epilog.scalar.ph4477.prol.loopexit
  %invariant.op4777 = add i32 1, %invariant.op3228
  %invariant.op4778 = add i32 2, %invariant.op3228
  %invariant.op4779 = add i32 3, %invariant.op3228
  br label %vec.epilog.scalar.ph4477

vec.epilog.scalar.ph4477:                         ; preds = %vec.epilog.scalar.ph4477, %vec.epilog.scalar.ph4477.preheader.new
  %indvars.iv3661 = phi i64 [ %indvars.iv3661.unr, %vec.epilog.scalar.ph4477.preheader.new ], [ %indvars.iv.next3662.3, %vec.epilog.scalar.ph4477 ] ; 5 uses
  %i.djv = trunc i64 %indvars.iv3661 to i32
  %.reass3229 = add i32 %invariant.op3228, %i.djv
  %i.djw = sext i32 %.reass3229 to i64
  %i.djx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.djw ; 2 uses
  %i.djy = load double, ptr %i.djx, align 8, !tbaa !9
  %i.djz = fdiv double %i.djy, %i.dif
  store double %i.djz, ptr %i.djx, align 8, !tbaa !9
  %i.dka = trunc i64 %indvars.iv3661 to i32
  %.reass3229.1.reass = add i32 %i.dka, %invariant.op4777
  %i.dkb = sext i32 %.reass3229.1.reass to i64
  %i.dkc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dkb ; 2 uses
  %i.dkd = load double, ptr %i.dkc, align 8, !tbaa !9
  %i.dke = fdiv double %i.dkd, %i.dif
  store double %i.dke, ptr %i.dkc, align 8, !tbaa !9
  %i.dkf = trunc i64 %indvars.iv3661 to i32
  %.reass3229.2.reass = add i32 %i.dkf, %invariant.op4778
  %i.dkg = sext i32 %.reass3229.2.reass to i64
  %i.dkh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dkg ; 2 uses
  %i.dki = load double, ptr %i.dkh, align 8, !tbaa !9
  %i.dkj = fdiv double %i.dki, %i.dif
  store double %i.dkj, ptr %i.dkh, align 8, !tbaa !9
  %i.dkk = trunc i64 %indvars.iv3661 to i32
  %.reass3229.3.reass = add i32 %i.dkk, %invariant.op4779
  %i.dkl = sext i32 %.reass3229.3.reass to i64
  %i.dkm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dkl ; 2 uses
  %i.dkn = load double, ptr %i.dkm, align 8, !tbaa !9
  %i.dko = fdiv double %i.dkn, %i.dif
  store double %i.dko, ptr %i.dkm, align 8, !tbaa !9
  %indvars.iv.next3662.3 = add nsw i64 %indvars.iv3661, 4 ; 2 uses
  %lftr.wideiv3664.3 = trunc i64 %indvars.iv.next3662.3 to i32
  %exitcond3665.not.3 = icmp eq i32 %i.dij, %lftr.wideiv3664.3
  br i1 %exitcond3665.not.3, label %._crit_edge3227, label %vec.epilog.scalar.ph4477, !llvm.loop !154

._crit_edge3227:                                  ; preds = %vec.epilog.scalar.ph4477.prol.loopexit, %vec.epilog.scalar.ph4477, %middle.block4472, %vec.epilog.middle.block4488, %bb.fu
  %i.dkp = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  store i32 %i.dkp, ptr %i.d, align 4, !tbaa !8
  %i.dkq = add i32 %.pre3788, %.32608             ; 4 uses
  store i32 %i.dkq, ptr %i.a, align 4, !tbaa !8
  %i.dkr = call i32 @llvm.smin.i32(i32 %i.dkp, i32 %i.dkq) ; 7 uses
  %.not27313230 = icmp sgt i32 %.32608, %i.dkr
  br i1 %.not27313230, label %._crit_edge3234, label %.lr.ph3233

.lr.ph3233:                                       ; preds = %._crit_edge3227
  %i.dks = load i32, ptr %i.j, align 4, !tbaa !8  ; 5 uses
  %i.dkt = zext nneg i32 %.32608 to i64           ; 2 uses
  %i.dku = add nuw i32 %i.dkr, 1
  %i.dkv = add i32 %i.dkr, 1
  %i.dkw = sub i32 %i.dkv, %.32608
  %i.dkx = sub i32 %i.dkr, %.32608
  %xtraiter4710 = and i32 %i.dkw, 3               ; 2 uses
  %lcmp.mod4711.not = icmp eq i32 %xtraiter4710, 0
  br i1 %lcmp.mod4711.not, label %.prol.loopexit4709, label %.prol.preheader4708

.prol.preheader4708:                              ; preds = %.lr.ph3233, %.prol.preheader4708
  %indvars.iv3666.prol = phi i64 [ %indvars.iv.next3667.prol, %.prol.preheader4708 ], [ %i.dkt, %.lr.ph3233 ] ; 3 uses
  %prol.iter4712 = phi i32 [ %prol.iter4712.next, %.prol.preheader4708 ], [ 0, %.lr.ph3233 ]
  %i.dky = trunc nsw i64 %indvars.iv3666.prol to i32
  %i.dkz = sub i32 %.32608, %i.dky
  %i.dla = trunc i64 %indvars.iv3666.prol to i32
  %i.dlb = mul i32 %i.n, %i.dla
  %i.dlc = add i32 %i.dkz, %i.dlb
  %i.dld = add i32 %i.dlc, %i.dks
  %i.dle = sext i32 %i.dld to i64
  %i.dlf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dle ; 2 uses
  %i.dlg = load double, ptr %i.dlf, align 8, !tbaa !9
  %i.dlh = fdiv double %i.dlg, %i.dif
  store double %i.dlh, ptr %i.dlf, align 8, !tbaa !9
  %indvars.iv.next3667.prol = add nuw nsw i64 %indvars.iv3666.prol, 1 ; 2 uses
  %prol.iter4712.next = add i32 %prol.iter4712, 1 ; 2 uses
  %prol.iter4712.cmp.not = icmp eq i32 %prol.iter4712.next, %xtraiter4710
  br i1 %prol.iter4712.cmp.not, label %.prol.loopexit4709, label %.prol.preheader4708, !llvm.loop !155

.prol.loopexit4709:                               ; preds = %.prol.preheader4708, %.lr.ph3233
  %indvars.iv3666.unr = phi i64 [ %i.dkt, %.lr.ph3233 ], [ %indvars.iv.next3667.prol, %.prol.preheader4708 ]
  %i.dli = icmp ult i32 %i.dkx, 3
  br i1 %i.dli, label %._crit_edge3234, label %.lr.ph3233.new

.lr.ph3233.new:                                   ; preds = %.prol.loopexit4709, %.lr.ph3233.new
  %indvars.iv3666 = phi i64 [ %indvars.iv.next3667.3, %.lr.ph3233.new ], [ %indvars.iv3666.unr, %.prol.loopexit4709 ] ; 6 uses
  %i.dlj = trunc nsw i64 %indvars.iv3666 to i32
  %i.dlk = sub i32 %.32608, %i.dlj
  %i.dll = trunc i64 %indvars.iv3666 to i32
  %i.dlm = mul i32 %i.n, %i.dll
  %i.dln = add i32 %i.dlk, %i.dlm
  %i.dlo = add i32 %i.dln, %i.dks
  %i.dlp = sext i32 %i.dlo to i64
  %i.dlq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dlp ; 2 uses
  %i.dlr = load double, ptr %i.dlq, align 8, !tbaa !9
  %i.dls = fdiv double %i.dlr, %i.dif
  store double %i.dls, ptr %i.dlq, align 8, !tbaa !9
  %indvars.iv.next3667 = add nuw nsw i64 %indvars.iv3666, 1 ; 2 uses
  %i.dlt = trunc nsw i64 %indvars.iv.next3667 to i32
  %i.dlu = sub i32 %.32608, %i.dlt
  %i.dlv = trunc i64 %indvars.iv.next3667 to i32
  %i.dlw = mul i32 %i.n, %i.dlv
  %i.dlx = add i32 %i.dlu, %i.dlw
  %i.dly = add i32 %i.dlx, %i.dks
  %i.dlz = sext i32 %i.dly to i64
  %i.dma = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dlz ; 2 uses
  %i.dmb = load double, ptr %i.dma, align 8, !tbaa !9
  %i.dmc = fdiv double %i.dmb, %i.dif
  store double %i.dmc, ptr %i.dma, align 8, !tbaa !9
  %indvars.iv.next3667.1 = add nuw nsw i64 %indvars.iv3666, 2 ; 2 uses
  %i.dmd = trunc nsw i64 %indvars.iv.next3667.1 to i32
  %i.dme = sub i32 %.32608, %i.dmd
  %i.dmf = trunc i64 %indvars.iv.next3667.1 to i32
  %i.dmg = mul i32 %i.n, %i.dmf
  %i.dmh = add i32 %i.dme, %i.dmg
  %i.dmi = add i32 %i.dmh, %i.dks
  %i.dmj = sext i32 %i.dmi to i64
  %i.dmk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dmj ; 2 uses
  %i.dml = load double, ptr %i.dmk, align 8, !tbaa !9
  %i.dmm = fdiv double %i.dml, %i.dif
  store double %i.dmm, ptr %i.dmk, align 8, !tbaa !9
  %indvars.iv.next3667.2 = add nuw nsw i64 %indvars.iv3666, 3 ; 2 uses
  %i.dmn = trunc nsw i64 %indvars.iv.next3667.2 to i32
  %i.dmo = sub i32 %.32608, %i.dmn
  %i.dmp = trunc i64 %indvars.iv.next3667.2 to i32
  %i.dmq = mul i32 %i.n, %i.dmp
  %i.dmr = add i32 %i.dmo, %i.dmq
  %i.dms = add i32 %i.dmr, %i.dks
  %i.dmt = sext i32 %i.dms to i64
  %i.dmu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dmt ; 2 uses
  %i.dmv = load double, ptr %i.dmu, align 8, !tbaa !9
  %i.dmw = fdiv double %i.dmv, %i.dif
  store double %i.dmw, ptr %i.dmu, align 8, !tbaa !9
  %indvars.iv.next3667.3 = add nuw nsw i64 %indvars.iv3666, 4 ; 2 uses
  %lftr.wideiv3669.3 = trunc i64 %indvars.iv.next3667.3 to i32
  %exitcond3670.not.3 = icmp eq i32 %i.dku, %lftr.wideiv3669.3
  br i1 %exitcond3670.not.3, label %._crit_edge3234, label %.lr.ph3233.new, !llvm.loop !156

._crit_edge3234:                                  ; preds = %.prol.loopexit4709, %.lr.ph3233.new, %._crit_edge3227
  %i.dmx = add i32 %i.dhx, %.32608                ; 6 uses
  %i.dmy = add nuw i32 %.32608, 1                 ; 5 uses
  %.not27323251 = icmp slt i32 %i.dhx, 1
  br i1 %.not27323251, label %bb.fw, label %.lr.ph3254

.lr.ph3254:                                       ; preds = %._crit_edge3234
  %i.dmz = load i32, ptr %i.j, align 4            ; 8 uses
  %i.dna = mul nsw i32 %.32608, %i.n
  %i.dnb = add nsw i32 %i.dmz, %i.dna
  %i.dnc = sext i32 %i.dnb to i64
  %i.dnd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dnc ; 3 uses
  store i32 %i.dkp, ptr %i.a, align 4, !tbaa !8
  store i32 %i.dkq, ptr %i.b, align 4, !tbaa !8
  %.not2755.not3242 = icmp slt i32 %i.dmx, %i.dkr
  %i.dne = add i32 %.32608, %i.ac
  %invariant.op3247 = add i32 %i.dmz, %.32608     ; 3 uses
  %i.dnf = sext i32 %i.dmy to i64
  %i.dng = zext nneg i32 %.32608 to i64           ; 4 uses
  %i.dnh = add nuw i32 %i.dmy, %i.dhx
  %i.dni = sext i32 %i.dmx to i64                 ; 6 uses
  %i.dnj = sext i32 %i.dkr to i64                 ; 3 uses
  %i.dnk = sub nsw i64 %i.dnj, %i.dni
  %xtraiter4722 = and i64 %i.dnk, 1
  %lcmp.mod4723.not = icmp eq i64 %xtraiter4722, 0
  %indvars.iv.next3679.prol = add nsw i64 %i.dni, 1 ; 2 uses
  %.25.neg.prol = xor i32 %i.dmx, -1              ; 2 uses
  %i.dnl = trunc i64 %indvars.iv.next3679.prol to i32
  %i.dnm = mul i32 %i.n, %i.dnl                   ; 2 uses
  %.reass3248.prol = add i32 %i.dnm, %invariant.op3247
  %i.dnn = add i32 %.reass3248.prol, %.25.neg.prol
  %i.dno = sext i32 %i.dnn to i64
  %i.dnp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dno
  %invariant.op4780 = add i32 %i.dnm, %.25.neg.prol
  %i.dnq = add nsw i64 %i.dnj, -1
  %i.dnr = icmp eq i64 %i.dnq, %i.dni
  br label %bb.fv

bb.fv:                                            ; preds = %.lr.ph3254, %._crit_edge3246
  %indvar4715 = phi i32 [ 0, %.lr.ph3254 ], [ %indvar.next4716, %._crit_edge3246 ] ; 3 uses
  %indvars.iv3671 = phi i64 [ %i.dnf, %.lr.ph3254 ], [ %indvars.iv.next3672, %._crit_edge3246 ] ; 13 uses
  %.neg = add i32 %indvar4715, 1
  %indvars3681 = trunc i64 %indvars.iv3671 to i32 ; 4 uses
  %.not27533235 = icmp sgt i64 %indvars.iv3671, %i.dni
  br i1 %.not27533235, label %._crit_edge3239, label %.lr.ph3238

.lr.ph3238:                                       ; preds = %bb.fv
  %i.dns = sub i32 %i.dhx, %indvar4715
  %invariant.op3240 = add i32 %i.dmz, %indvars3681 ; 3 uses
  %i.dnt = sub nsw i64 %i.dng, %indvars.iv3671    ; 2 uses
  %i.dnu = mul nsw i32 %i.n, %indvars3681
  %i.dnv = trunc nsw i64 %i.dnt to i32
  %i.dnw = add i32 %i.dnu, %i.dnv
  %i.dnx = add i32 %i.dnw, %i.dmz
  %i.dny = sext i32 %i.dnx to i64
  %i.dnz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dny ; 3 uses
  %i.doa = mul nsw i64 %indvars.iv3671, %i.bc
  %gep4137 = getelementptr [8 x i8], ptr %invariant.gep4136, i64 %i.dnt
  %i.dob = getelementptr [8 x i8], ptr %gep4137, i64 %i.doa ; 3 uses
  %xtraiter4717 = and i32 %i.dns, 1
  %lcmp.mod4718.not = icmp eq i32 %xtraiter4717, 0
  br i1 %lcmp.mod4718.not, label %.prol.loopexit4714, label %.prol.loopexit4714.unr-lcssa

.prol.loopexit4714.unr-lcssa:                     ; preds = %.lr.ph3238
  %i.doc = trunc i64 %indvars.iv3671 to i32
  %i.dod = mul i32 %i.n, %i.doc                   ; 2 uses
  %.reass3241.prol = add i32 %i.dod, %invariant.op3240
  %i.doe = trunc nsw i64 %indvars.iv3671 to i32
  %i.dof = sub i32 %.reass3241.prol, %i.doe
  %i.dog = sext i32 %i.dof to i64
  %i.doh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dog ; 2 uses
  %i.doi = load double, ptr %i.doh, align 8, !tbaa !9
  %i.doj = sub nsw i64 %i.dng, %indvars.iv3671    ; 2 uses
  %i.dok = mul nsw i64 %indvars.iv3671, %i.bc
  %gep4135.prol = getelementptr [8 x i8], ptr %invariant.gep4134, i64 %i.doj
  %i.dol = getelementptr [8 x i8], ptr %gep4135.prol, i64 %i.dok
  %i.dom = load double, ptr %i.dol, align 8, !tbaa !9 ; 2 uses
  %i.don = load double, ptr %i.dnz, align 8, !tbaa !9
  %i.doo = fneg double %i.dom
  %i.dop = call double @llvm.fmuladd.f64(double %i.doo, double %i.don, double %i.doi)
  %i.doq = load double, ptr %i.dob, align 8, !tbaa !9 ; 2 uses
  %i.dor = add i32 %i.dmz, %i.dod
  %i.dos = trunc nsw i64 %i.doj to i32
  %i.dot = add i32 %i.dor, %i.dos
  %i.dou = sext i32 %i.dot to i64
  %i.dov = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dou
  %i.dow = load double, ptr %i.dov, align 8, !tbaa !9
  %i.dox = fneg double %i.doq
  %i.doy = call double @llvm.fmuladd.f64(double %i.dox, double %i.dow, double %i.dop)
  %i.doz = load double, ptr %i.dnd, align 8, !tbaa !9
  %i.dpa = fmul double %i.dom, %i.doz
  %i.dpb = call double @llvm.fmuladd.f64(double %i.dpa, double %i.doq, double %i.doy)
  store double %i.dpb, ptr %i.doh, align 8, !tbaa !9
  %indvars.iv.next3674.prol = add nsw i64 %indvars.iv3671, 1
  br label %.prol.loopexit4714

.prol.loopexit4714:                               ; preds = %.prol.loopexit4714.unr-lcssa, %.lr.ph3238
  %indvars.iv3673.unr = phi i64 [ %indvars.iv3671, %.lr.ph3238 ], [ %indvars.iv.next3674.prol, %.prol.loopexit4714.unr-lcssa ]
  %i.dpc = icmp eq i32 %i.dhx, %.neg
  br i1 %i.dpc, label %._crit_edge3239, label %.lr.ph3238.new

.lr.ph3238.new:                                   ; preds = %.prol.loopexit4714, %.lr.ph3238.new
  %indvars.iv3673 = phi i64 [ %indvars.iv.next3674.1, %.lr.ph3238.new ], [ %indvars.iv3673.unr, %.prol.loopexit4714 ] ; 6 uses
  %i.dpd = trunc i64 %indvars.iv3673 to i32
  %i.dpe = mul i32 %i.n, %i.dpd                   ; 2 uses
  %.reass3241 = add i32 %i.dpe, %invariant.op3240
  %i.dpf = trunc nsw i64 %indvars.iv3673 to i32
  %i.dpg = sub i32 %.reass3241, %i.dpf
  %i.dph = sext i32 %i.dpg to i64
  %i.dpi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dph ; 2 uses
  %i.dpj = load double, ptr %i.dpi, align 8, !tbaa !9
  %i.dpk = sub nsw i64 %i.dng, %indvars.iv3673    ; 2 uses
  %i.dpl = mul nsw i64 %indvars.iv3673, %i.bc
  %gep4135 = getelementptr [8 x i8], ptr %invariant.gep4134, i64 %i.dpk
  %i.dpm = getelementptr [8 x i8], ptr %gep4135, i64 %i.dpl
  %i.dpn = load double, ptr %i.dpm, align 8, !tbaa !9 ; 2 uses
  %i.dpo = load double, ptr %i.dnz, align 8, !tbaa !9
  %i.dpp = fneg double %i.dpn
  %i.dpq = call double @llvm.fmuladd.f64(double %i.dpp, double %i.dpo, double %i.dpj)
  %i.dpr = load double, ptr %i.dob, align 8, !tbaa !9 ; 2 uses
  %i.dps = add i32 %i.dmz, %i.dpe
  %i.dpt = trunc nsw i64 %i.dpk to i32
  %i.dpu = add i32 %i.dps, %i.dpt
  %i.dpv = sext i32 %i.dpu to i64
  %i.dpw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dpv
  %i.dpx = load double, ptr %i.dpw, align 8, !tbaa !9
  %i.dpy = fneg double %i.dpr
  %i.dpz = call double @llvm.fmuladd.f64(double %i.dpy, double %i.dpx, double %i.dpq)
  %i.dqa = load double, ptr %i.dnd, align 8, !tbaa !9
  %i.dqb = fmul double %i.dpn, %i.dqa
  %i.dqc = call double @llvm.fmuladd.f64(double %i.dqb, double %i.dpr, double %i.dpz)
  store double %i.dqc, ptr %i.dpi, align 8, !tbaa !9
  %indvars.iv.next3674 = add nsw i64 %indvars.iv3673, 1 ; 4 uses
  %i.dqd = trunc i64 %indvars.iv.next3674 to i32
  %i.dqe = mul i32 %i.n, %i.dqd                   ; 2 uses
  %.reass3241.1 = add i32 %i.dqe, %invariant.op3240
  %i.dqf = trunc nsw i64 %indvars.iv.next3674 to i32
  %i.dqg = sub i32 %.reass3241.1, %i.dqf
  %i.dqh = sext i32 %i.dqg to i64
  %i.dqi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dqh ; 2 uses
  %i.dqj = load double, ptr %i.dqi, align 8, !tbaa !9
  %i.dqk = sub nsw i64 %i.dng, %indvars.iv.next3674 ; 2 uses
  %i.dql = mul nsw i64 %indvars.iv.next3674, %i.bc
  %gep4135.1 = getelementptr [8 x i8], ptr %invariant.gep4134, i64 %i.dqk
  %i.dqm = getelementptr [8 x i8], ptr %gep4135.1, i64 %i.dql
  %i.dqn = load double, ptr %i.dqm, align 8, !tbaa !9 ; 2 uses
  %i.dqo = load double, ptr %i.dnz, align 8, !tbaa !9
  %i.dqp = fneg double %i.dqn
  %i.dqq = call double @llvm.fmuladd.f64(double %i.dqp, double %i.dqo, double %i.dqj)
  %i.dqr = load double, ptr %i.dob, align 8, !tbaa !9 ; 2 uses
  %i.dqs = add i32 %i.dmz, %i.dqe
  %i.dqt = trunc nsw i64 %i.dqk to i32
  %i.dqu = add i32 %i.dqs, %i.dqt
  %i.dqv = sext i32 %i.dqu to i64
  %i.dqw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dqv
  %i.dqx = load double, ptr %i.dqw, align 8, !tbaa !9
  %i.dqy = fneg double %i.dqr
  %i.dqz = call double @llvm.fmuladd.f64(double %i.dqy, double %i.dqx, double %i.dqq)
  %i.dra = load double, ptr %i.dnd, align 8, !tbaa !9
  %i.drb = fmul double %i.dqn, %i.dra
  %i.drc = call double @llvm.fmuladd.f64(double %i.drb, double %i.dqr, double %i.dqz)
  store double %i.drc, ptr %i.dqi, align 8, !tbaa !9
  %indvars.iv.next3674.1 = add nsw i64 %indvars.iv3673, 2 ; 2 uses
  %lftr.wideiv3676.1 = trunc i64 %indvars.iv.next3674.1 to i32
  %exitcond3677.not.1 = icmp eq i32 %i.dnh, %lftr.wideiv3676.1
  br i1 %exitcond3677.not.1, label %._crit_edge3239, label %.lr.ph3238.new, !llvm.loop !157

._crit_edge3239:                                  ; preds = %.prol.loopexit4714, %.lr.ph3238.new, %bb.fv
  br i1 %.not2755.not3242, label %.lr.ph3245, label %._crit_edge3246

.lr.ph3245:                                       ; preds = %._crit_edge3239
  %i.drd = mul nsw i64 %indvars.iv3671, %i.bc
  %i.dre = sub i32 %i.dne, %indvars3681
  %i.drf = sext i32 %i.dre to i64
  %i.drg = getelementptr [8 x i8], ptr %i.s, i64 %i.drd
  %i.drh = getelementptr [8 x i8], ptr %i.drg, i64 %i.drf ; 3 uses
  %invariant.op3249 = add i32 %i.dmz, %indvars3681 ; 3 uses
  br i1 %lcmp.mod4723.not, label %.prol.loopexit4721, label %.prol.loopexit4721.unr-lcssa

.prol.loopexit4721.unr-lcssa:                     ; preds = %.lr.ph3245
  %i.dri = load double, ptr %i.drh, align 8, !tbaa !9
  %i.drj = load double, ptr %i.dnp, align 8, !tbaa !9
  %.reass4781 = add i32 %invariant.op3249, %invariant.op4780
  %i.drk = sext i32 %.reass4781 to i64
  %i.drl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.drk ; 2 uses
  %i.drm = load double, ptr %i.drl, align 8, !tbaa !9
  %i.drn = fneg double %i.dri
  %i.dro = call double @llvm.fmuladd.f64(double %i.drn, double %i.drj, double %i.drm)
  store double %i.dro, ptr %i.drl, align 8, !tbaa !9
  br label %.prol.loopexit4721

.prol.loopexit4721:                               ; preds = %.prol.loopexit4721.unr-lcssa, %.lr.ph3245
  %indvars.iv3678.unr = phi i64 [ %i.dni, %.lr.ph3245 ], [ %indvars.iv.next3679.prol, %.prol.loopexit4721.unr-lcssa ]
  br i1 %i.dnr, label %._crit_edge3246, label %.lr.ph3245.new

.lr.ph3245.new:                                   ; preds = %.prol.loopexit4721, %.lr.ph3245.new
  %indvars.iv3678 = phi i64 [ %indvars.iv.next3679.1, %.lr.ph3245.new ], [ %indvars.iv3678.unr, %.prol.loopexit4721 ] ; 3 uses
  %indvars.iv.next3679 = add nsw i64 %indvars.iv3678, 1 ; 2 uses
  %i.drp = trunc nsw i64 %indvars.iv3678 to i32
  %.25.neg = xor i32 %i.drp, -1                   ; 2 uses
  %i.drq = load double, ptr %i.drh, align 8, !tbaa !9
  %i.drr = trunc i64 %indvars.iv.next3679 to i32
  %i.drs = mul i32 %i.n, %i.drr                   ; 2 uses
  %.reass3248 = add i32 %i.drs, %invariant.op3247
  %i.drt = add i32 %.reass3248, %.25.neg
  %i.dru = sext i32 %i.drt to i64
  %i.drv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dru
  %i.drw = load double, ptr %i.drv, align 8, !tbaa !9
  %.reass3250 = add i32 %i.drs, %invariant.op3249
  %i.drx = add i32 %.reass3250, %.25.neg
  %i.dry = sext i32 %i.drx to i64
  %i.drz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dry ; 2 uses
  %i.dsa = load double, ptr %i.drz, align 8, !tbaa !9
  %i.dsb = fneg double %i.drq
  %i.dsc = call double @llvm.fmuladd.f64(double %i.dsb, double %i.drw, double %i.dsa)
  store double %i.dsc, ptr %i.drz, align 8, !tbaa !9
  %indvars.iv.next3679.1 = add nsw i64 %indvars.iv3678, 2 ; 3 uses
  %i.dsd = trunc nsw i64 %indvars.iv.next3679 to i32
  %.25.neg.1 = xor i32 %i.dsd, -1                 ; 2 uses
  %i.dse = load double, ptr %i.drh, align 8, !tbaa !9
  %i.dsf = trunc i64 %indvars.iv.next3679.1 to i32
  %i.dsg = mul i32 %i.n, %i.dsf                   ; 2 uses
  %.reass3248.1 = add i32 %i.dsg, %invariant.op3247
  %i.dsh = add i32 %.reass3248.1, %.25.neg.1
  %i.dsi = sext i32 %i.dsh to i64
  %i.dsj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dsi
  %i.dsk = load double, ptr %i.dsj, align 8, !tbaa !9
  %.reass3250.1 = add i32 %i.dsg, %invariant.op3249
  %i.dsl = add i32 %.reass3250.1, %.25.neg.1
  %i.dsm = sext i32 %i.dsl to i64
  %i.dsn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dsm ; 2 uses
  %i.dso = load double, ptr %i.dsn, align 8, !tbaa !9
  %i.dsp = fneg double %i.dse
  %i.dsq = call double @llvm.fmuladd.f64(double %i.dsp, double %i.dsk, double %i.dso)
  store double %i.dsq, ptr %i.dsn, align 8, !tbaa !9
  %.not2755.not.1 = icmp slt i64 %indvars.iv.next3679.1, %i.dnj
  br i1 %.not2755.not.1, label %.lr.ph3245.new, label %._crit_edge3246, !llvm.loop !158

._crit_edge3246:                                  ; preds = %.prol.loopexit4721, %.lr.ph3245.new, %._crit_edge3239
  %indvars.iv.next3672 = add nsw i64 %indvars.iv3671, 1
  %.not2732.not = icmp slt i64 %indvars.iv3671, %i.dni
  %indvar.next4716 = add i32 %indvar4715, 1
  br i1 %.not2732.not, label %bb.fv, label %._crit_edge3255, !llvm.loop !159

._crit_edge3255:                                  ; preds = %._crit_edge3246
  store i32 %i.dkr, ptr %i.d, align 4, !tbaa !8
  br label %bb.fw

bb.fw:                                            ; preds = %._crit_edge3255, %._crit_edge3234
  store i32 %.32608, ptr %i.c, align 4, !tbaa !8
  br i1 %.not27293223, label %bb.fz, label %.lr.ph3268

.lr.ph3268:                                       ; preds = %bb.fw
  store i32 %i.dmx, ptr %i.b, align 4, !tbaa !8
  %i.dsr = add i32 %.32608, %i.ac
  %i.dss = load i32, ptr %i.j, align 4            ; 2 uses
  %invariant.op3270 = mul i32 %.32608, %.326083506
  %invariant.op3271 = add i32 %invariant.op3270, %i.dss
  %i.dst = zext nneg i32 %.32608 to i64           ; 2 uses
  %i.dsu = zext i32 %.42546 to i64
  br label %bb.fx

bb.fx:                                            ; preds = %.lr.ph3268, %._crit_edge3264
  %indvars.iv3689 = phi i64 [ %i.dsu, %.lr.ph3268 ], [ %indvars.iv.next3690, %._crit_edge3264 ] ; 3 uses
  %i.dsv = trunc i64 %indvars.iv3689 to i32
  %i.dsw = add i32 %.pre3788, %i.dsv
  %i.dsx = call i32 @llvm.smin.i32(i32 %i.dsw, i32 %i.dmx) ; 2 uses
  %.not27523259.not = icmp slt i32 %.32608, %i.dsx
  br i1 %.not27523259.not, label %.lr.ph3263, label %._crit_edge3264

.lr.ph3263:                                       ; preds = %bb.fx
  %i.dsy = trunc i64 %indvars.iv3689 to i32       ; 2 uses
  %.reass3272 = add i32 %invariant.op3271, %i.dsy
  %i.dsz = sext i32 %.reass3272 to i64
  %i.dta = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dsz
  %i.dtb = zext nneg i32 %i.dsx to i64
  br label %bb.fy

bb.fy:                                            ; preds = %.lr.ph3263, %bb.fy
  %indvars.iv3684.in = phi i64 [ %i.dst, %.lr.ph3263 ], [ %indvars.iv3684, %bb.fy ]
  %indvars.iv3682 = phi i64 [ %i.dst, %.lr.ph3263 ], [ %indvars.iv.next3683, %bb.fy ] ; 2 uses
  %indvars.iv3684 = add nuw nsw i64 %indvars.iv3684.in, 1 ; 4 uses
  %i.dtc = trunc nsw i64 %indvars.iv3682 to i32
  %.132570.neg3261 = xor i32 %i.dtc, -1           ; 2 uses
  %i.dtd = mul nsw i64 %indvars.iv3684, %i.bc
  %i.dte = add i32 %i.dsr, %.132570.neg3261
  %i.dtf = sext i32 %i.dte to i64
  %i.dtg = getelementptr [8 x i8], ptr %i.s, i64 %i.dtd
  %i.dth = getelementptr [8 x i8], ptr %i.dtg, i64 %i.dtf
  %i.dti = load double, ptr %i.dth, align 8, !tbaa !9
  %i.dtj = load double, ptr %i.dta, align 8, !tbaa !9
  %i.dtk = add i32 %i.dsy, %.132570.neg3261
  %i.dtl = trunc i64 %indvars.iv3684 to i32
  %i.dtm = mul i32 %i.n, %i.dtl
  %i.dtn = add i32 %i.dtk, %i.dtm
  %i.dto = add i32 %i.dtn, %i.dss
  %i.dtp = sext i32 %i.dto to i64
  %i.dtq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dtp ; 2 uses
  %i.dtr = load double, ptr %i.dtq, align 8, !tbaa !9
  %i.dts = fneg double %i.dti
  %i.dtt = call double @llvm.fmuladd.f64(double %i.dts, double %i.dtj, double %i.dtr)
  store double %i.dtt, ptr %i.dtq, align 8, !tbaa !9
  %.not2752.not = icmp samesign ult i64 %indvars.iv3684, %i.dtb
  %indvars.iv.next3683 = add nuw nsw i64 %indvars.iv3682, 1
  br i1 %.not2752.not, label %bb.fy, label %._crit_edge3264, !llvm.loop !160

._crit_edge3264:                                  ; preds = %bb.fy, %bb.fx
  %indvars.iv.next3690 = add i64 %indvars.iv3689, 1 ; 2 uses
  %lftr.wideiv3692 = trunc i64 %indvars.iv.next3690 to i32
  %exitcond3693.not = icmp eq i32 %i.dmy, %lftr.wideiv3692
  br i1 %exitcond3693.not, label %._crit_edge3269, label %bb.fx, !llvm.loop !161

._crit_edge3269:                                  ; preds = %._crit_edge3264
  %i.dtu = add i32 %.32608, %.pre3788
  %smin = call i32 @llvm.smin.i32(i32 %i.dkq, i32 %i.dmx)
  store i32 %i.dtu, ptr %i.a, align 4, !tbaa !8
  store i32 %smin, ptr %i.d, align 4, !tbaa !8
  br label %bb.fz

bb.fz:                                            ; preds = %._crit_edge3269, %bb.fw
  br i1 %.not, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.dtv = fdiv double 1.000000e+00, %i.dif
  store double %i.dtv, ptr %i.e, align 8, !tbaa !9
  %i.dtw = mul nsw i32 %.32608, %i.t
  %i.dtx = sext i32 %i.dtw to i64
  %i.dty = getelementptr [8 x i8], ptr %i.v, i64 %i.dtx
  %i.dtz = getelementptr i8, ptr %i.dty, i64 8    ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.e, ptr noundef %i.dtz, ptr noundef nonnull @c__1) #4
  %i.dua = load i32, ptr %i.l, align 4, !tbaa !8
  %i.dub = icmp sgt i32 %i.dua, 0
  %.pre3789.pre3896 = load i32, ptr %4, align 4, !tbaa !8 ; 2 uses
  br i1 %i.dub, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.duc = load i32, ptr %8, align 4, !tbaa !8
  %i.dud = add nsw i32 %i.duc, -1
  store i32 %i.dud, ptr %i.c, align 4, !tbaa !8
  %i.due = mul nsw i32 %i.dmy, %i.q
  %i.duf = add nsw i32 %.pre3789.pre3896, %i.due
  %i.dug = sext i32 %i.duf to i64
  %i.duh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dug
  %i.dui = mul nsw i32 %i.dmy, %i.t
  %i.duj = sext i32 %i.dui to i64
  %i.duk = getelementptr [8 x i8], ptr %i.v, i64 %i.duj
  %i.dul = getelementptr i8, ptr %i.duk, i64 8
  call void @dger_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.dtz, ptr noundef nonnull @c__1, ptr noundef %i.duh, ptr noundef nonnull %i.c, ptr noundef %i.dul, ptr noundef nonnull %10) #4
  %.pre3789.pre = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.gc

bb.gc:                                            ; preds = %bb.ga, %bb.gb, %bb.fz
  %.pre3789 = phi i32 [ %.pre3789.pre3896, %bb.ga ], [ %.pre3789.pre, %bb.gb ], [ %i.dhk, %bb.fz ]
  %i.dum = load i32, ptr %i.j, align 4, !tbaa !8
  %i.dun = mul i32 %.32608, %.326083507
  %i.duo = add i32 %i.dun, %.42546
  %i.dup = add i32 %i.duo, %i.dum
  %i.duq = sext i32 %i.dup to i64
  %i.dur = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.duq
  %i.dus = load double, ptr %i.dur, align 8, !tbaa !9
  store double %i.dus, ptr %i.k, align 8, !tbaa !9
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.ft
  %i.dut = phi i32 [ %.pre3789, %bb.gc ], [ %i.dhk, %bb.ft ] ; 2 uses
  %i.duu = add nsw i32 %i.dut, -1
  store i32 %i.duu, ptr %i.c, align 4, !tbaa !8
  %.not27343300 = icmp slt i32 %i.dut, 2
  br i1 %.not27343300, label %._crit_edge3305, label %.lr.ph3304

.lr.ph3304:                                       ; preds = %bb.gd
  %i.duv = mul nsw i32 %.32608, %i.n
  %i.duw = add i32 %i.duv, 1
  %i.dux = add i32 %.32608, %i.ay
  %.reass4145.reass = add i32 %.42551, %invariant.op4782.a
  %i.duy = add nuw i32 %.32608, 1
  %i.duz = add nsw i32 %.32608, -1
  %i.dva = add nuw i32 %.32608, 2
  %.reass4147.reass = add i32 %.42551, %invariant.op4783
  %i.dvb = zext nneg i32 %.32608 to i64
  br label %bb.ge

bb.ge:                                            ; preds = %.lr.ph3304, %.loopexit2874
  %indvars.iv3704.a = phi i64 [ 1, %.lr.ph3304 ], [ %indvars.iv.next3705.a, %.loopexit2874 ] ; 5 uses
  %indvars.iv3702 = phi i64 [ -1, %.lr.ph3304 ], [ %indvars.iv.next3703, %.loopexit2874 ] ; 3 uses
  %indvars.iv3696.a = phi i32 [ %.reass4147.reass, %.lr.ph3304 ], [ %indvars.iv.next3697, %.loopexit2874 ] ; 2 uses
  %indvars.iv3694 = phi i32 [ %i.dva, %.lr.ph3304 ], [ %indvars.iv.next3695, %.loopexit2874 ] ; 2 uses
  %smax3698 = call i32 @llvm.smax.i32(i32 %indvars.iv3696.a, i32 1)
  %.pre3791 = load i32, ptr %i.j, align 4, !tbaa !8 ; 3 uses
  br i1 %.not26982891, label %._crit_edge3792, label %bb.gf

._crit_edge3792:                                  ; preds = %bb.ge
  %.pre3793 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.gh

bb.gf:                                            ; preds = %bb.ge
  %i.dvc = add nuw nsw i64 %indvars.iv3704.a, %i.dvb ; 6 uses
  %i.dvd = sext i32 %.pre3791 to i64
  %i.dve = icmp sgt i64 %i.dvc, %i.dvd
  %i.dvf = icmp slt i64 %i.dvc, %i.bd
  %or.cond2761 = select i1 %i.dve, i1 %i.dvf, i1 false
  %.pre3794.a = load i32, ptr %3, align 4, !tbaa !8 ; 3 uses
  br i1 %or.cond2761, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.dvg = trunc nuw nsw i64 %indvars.iv3704.a to i32 ; 3 uses
  %i.dvh = add i32 %i.duw, %i.dvg
  %i.dvi = sext i32 %i.dvh to i64
  %i.dvj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dvi
  %i.dvk = load i32, ptr %2, align 4, !tbaa !8
  %i.dvl = add i32 %.32608, %i.dvg                ; 3 uses
  %i.dvm = add i32 %i.dvl, %i.dvk
  %i.dvn = sub i32 %i.dvm, %.pre3794.a
  %i.dvo = sext i32 %i.dvn to i64
  %i.dvp = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dvo
  %i.dvq = sext i32 %.pre3794.a to i64
  %i.dvr = sub nsw i64 %i.dvc, %i.dvq
  %i.dvs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dvr
  call void @dlartg_(ptr noundef %i.dvj, ptr noundef nonnull %i.k, ptr noundef nonnull %i.dvp, ptr noundef nonnull %i.dvs, ptr noundef nonnull %i.g) #4
  %i.dvt = trunc nsw i64 %indvars.iv3702 to i32
  %i.dvu = add i32 %i.ac, %i.dvt
  %i.dvv = mul nsw i64 %i.dvc, %i.bc
  %i.dvw = sext i32 %i.dvu to i64
  %i.dvx = getelementptr [8 x i8], ptr %i.s, i64 %i.dvv
  %i.dvy = getelementptr [8 x i8], ptr %i.dvx, i64 %i.dvw
  %i.dvz = load double, ptr %i.dvy, align 8, !tbaa !9
  %i.dwa = fneg double %i.dvz
  %i.dwb = load double, ptr %i.k, align 8, !tbaa !9
  %i.dwc = fmul double %i.dwb, %i.dwa             ; 2 uses
  %i.dwd = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.dwe = load i32, ptr %3, align 4, !tbaa !8    ; 4 uses
  %i.dwf = add i32 %i.dvl, %i.dwd
  %i.dwg = sub i32 %i.dwf, %i.dwe
  %i.dwh = sext i32 %i.dwg to i64
  %i.dwi = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dwh
  %i.dwj = load double, ptr %i.dwi, align 8, !tbaa !9
  %i.dwk = sext i32 %i.dwe to i64
  %i.dwl = sub nsw i64 %i.dvc, %i.dwk
  %i.dwm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dwl ; 2 uses
  %i.dwn = load double, ptr %i.dwm, align 8, !tbaa !9
  %i.dwo = mul nsw i64 %i.dvc, %i.bb
  %i.dwp = getelementptr [8 x i8], ptr %i.p, i64 %i.dwo
  %i.dwq = getelementptr i8, ptr %i.dwp, i64 8    ; 3 uses
  %i.dwr = load double, ptr %i.dwq, align 8, !tbaa !9
  %i.dws = fneg double %i.dwr
  %i.dwt = fmul double %i.dwn, %i.dws
  %i.dwu = call double @llvm.fmuladd.f64(double %i.dwj, double %i.dwc, double %i.dwt)
  %i.dwv = load i32, ptr %4, align 4, !tbaa !8
  %i.dww = add i32 %i.dux, %i.dvg
  %i.dwx = sub i32 %i.dww, %i.dwv
  %i.dwy = sext i32 %i.dwx to i64
  %i.dwz = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dwy
  store double %i.dwu, ptr %i.dwz, align 8, !tbaa !9
  %i.dxa = load double, ptr %i.dwm, align 8, !tbaa !9
  %i.dxb = sub i32 %i.dvl, %i.dwe
  %i.dxc = add i32 %i.dxb, %i.dwd
  %i.dxd = sext i32 %i.dxc to i64
  %i.dxe = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dxd
  %i.dxf = load double, ptr %i.dxe, align 8, !tbaa !9
  %i.dxg = load double, ptr %i.dwq, align 8, !tbaa !9
  %i.dxh = fmul double %i.dxf, %i.dxg
  %i.dxi = call double @llvm.fmuladd.f64(double %i.dxa, double %i.dwc, double %i.dxh)
  store double %i.dxi, ptr %i.dwq, align 8, !tbaa !9
  %i.dxj = load double, ptr %i.g, align 8, !tbaa !9
  store double %i.dxj, ptr %i.k, align 8, !tbaa !9
  %.pre3790 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.gh

bb.gh:                                            ; preds = %._crit_edge3792, %bb.gf, %bb.gg
  %i.dxk = phi i32 [ %.pre3794.a, %bb.gf ], [ %i.dwe, %bb.gg ], [ %.pre3793, %._crit_edge3792 ] ; 5 uses
  %i.dxl = phi i32 [ %.pre3791, %bb.gf ], [ %.pre3790, %bb.gg ], [ %.pre3791, %._crit_edge3792 ] ; 8 uses
  %i.dxm = trunc nuw nsw i64 %indvars.iv3704.a to i32 ; 3 uses
  %i.dxn = add i32 %.reass4145.reass, %i.dxm
  %i.dxo = call i32 @llvm.smax.i32(i32 %i.dxn, i32 1)
  %i.dxp = mul nsw i32 %i.dxo, %i.dxl
  %i.dxq = add i32 %i.duy, %i.dxm
  %i.dxr = sub i32 %i.dxq, %i.dxp                 ; 7 uses
  %i.dxs = add i32 %i.dxk, -1                     ; 2 uses
  %i.dxt = add i32 %i.dxs, %i.dxr
  %i.dxu = sdiv i32 %i.dxt, %i.dxl                ; 3 uses
  store i32 %i.dxu, ptr %i.h, align 4, !tbaa !8
  %i.dxv = add i32 %i.dxu, -1                     ; 2 uses
  %i.dxw = mul i32 %i.dxl, %i.dxv                 ; 3 uses
  %i.dxx = sub nsw i32 %i.dxr, %i.dxw             ; 12 uses
  br i1 %.not26982891, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.dxy = add i32 %i.duz, %i.dxm
  %i.dxz = shl i32 %i.dxk, 1
  %i.dya = sub i32 %i.dxy, %i.dxz
  %i.dyb = call i32 @llvm.smin.i32(i32 %i.dxr, i32 %i.dya)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi
  %.2 = phi i32 [ %i.dyb, %bb.gi ], [ %i.dxr, %bb.gh ] ; 5 uses
  %i.dyc = add i32 %.2, -1
  %i.dyd = add i32 %i.dyc, %i.dxk
  %i.dye = sdiv i32 %i.dyd, %i.dxl                ; 2 uses
  store i32 %i.dye, ptr %i.m, align 4, !tbaa !8
  store i32 %.2, ptr %i.d, align 4, !tbaa !8
  store i32 %i.dxl, ptr %i.a, align 4, !tbaa !8
  %i.dyf = icmp slt i32 %i.dxl, 0                 ; 2 uses
  %i.dyg = icmp sge i32 %i.dxx, %.2
  %i.dyh = icmp sle i32 %i.dxx, %.2
  %.in27473274 = select i1 %i.dyf, i1 %i.dyg, i1 %i.dyh
  br i1 %.in27473274, label %.lr.ph3277, label %._crit_edge3278

.lr.ph3277:                                       ; preds = %bb.gj
  %i.dyi = load i32, ptr %2, align 4, !tbaa !8
  %i.dyj = add i32 %smax3698, %i.dxv
  %i.dyk = mul i32 %i.dxl, %i.dyj
  %i.dyl = sub i32 %indvars.iv3694, %i.dyk
  %i.dym = sext i32 %i.dyl to i64
  %i.dyn = sext i32 %i.dxl to i64
  %i.dyo = sext i32 %.2 to i64                    ; 2 uses
  %i.dyp = sext i32 %i.dyi to i64
  %invariant.gep4138 = getelementptr [8 x i8], ptr %i.w, i64 %i.dyp
  br label %bb.gk

bb.gk:                                            ; preds = %.lr.ph3277, %bb.gk
  %indvars.iv3699 = phi i64 [ %i.dym, %.lr.ph3277 ], [ %indvars.iv.next3700, %bb.gk ] ; 4 uses
  %i.dyq = trunc nsw i64 %indvars.iv3699 to i32
  %.reass3280 = add i32 %i.dxs, %i.dyq
  %i.dyr = mul nsw i32 %.reass3280, %i.n
  %i.dys = sext i32 %i.dyr to i64
  %i.dyt = getelementptr [8 x i8], ptr %i.p, i64 %i.dys
  %i.dyu = getelementptr i8, ptr %i.dyt, i64 8    ; 3 uses
  %i.dyv = load double, ptr %i.dyu, align 8, !tbaa !9
  %i.dyw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv3699 ; 2 uses
  %i.dyx = load double, ptr %i.dyw, align 8, !tbaa !9
  %i.dyy = fmul double %i.dyv, %i.dyx
  store double %i.dyy, ptr %i.dyw, align 8, !tbaa !9
  %gep4139 = getelementptr [8 x i8], ptr %invariant.gep4138, i64 %indvars.iv3699
  %i.dyz = load double, ptr %gep4139, align 8, !tbaa !9
  %i.dza = load double, ptr %i.dyu, align 8, !tbaa !9
  %i.dzb = fmul double %i.dyz, %i.dza
  store double %i.dzb, ptr %i.dyu, align 8, !tbaa !9
  %indvars.iv.next3700 = add nsw i64 %indvars.iv3699, %i.dyn ; 3 uses
  %i.dzc = icmp sge i64 %indvars.iv.next3700, %i.dyo
  %i.dzd = icmp sle i64 %indvars.iv.next3700, %i.dyo
  %.in2747 = select i1 %i.dyf, i1 %i.dzc, i1 %i.dzd
  br i1 %.in2747, label %bb.gk, label %._crit_edge3278, !llvm.loop !162

._crit_edge3278:                                  ; preds = %bb.gk, %bb.gj
  %i.dze = icmp sgt i32 %i.dye, 0
  br i1 %i.dze, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %._crit_edge3278
  %i.dzf = add nsw i32 %i.dxk, %i.dxx
  %i.dzg = mul nsw i32 %i.dzf, %i.n
  %i.dzh = sext i32 %i.dzg to i64
  %i.dzi = getelementptr [8 x i8], ptr %i.p, i64 %i.dzh
  %i.dzj = getelementptr i8, ptr %i.dzi, i64 8
  %i.dzk = sext i32 %i.dxx to i64
  %i.dzl = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dzk
  %i.dzm = load i32, ptr %2, align 4, !tbaa !8
  %i.dzn = add nsw i32 %i.dzm, %i.dxx
  %i.dzo = sext i32 %i.dzn to i64
  %i.dzp = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dzo
  call void @dlargv_(ptr noundef nonnull %i.m, ptr noundef %i.dzj, ptr noundef nonnull %i.f, ptr noundef nonnull %i.dzl, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dzp, ptr noundef nonnull %i.j) #4
  %.pre3795 = load i32, ptr %i.h, align 4, !tbaa !8
  %.pre3798.pre = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %._crit_edge3278
  %.pre3798 = phi i32 [ %.pre3798.pre, %bb.gl ], [ %i.dxk, %._crit_edge3278 ] ; 4 uses
  %i.dzq = phi i32 [ %.pre3795, %bb.gl ], [ %i.dxu, %._crit_edge3278 ]
  %i.dzr = icmp sgt i32 %i.dzq, 0
  br i1 %i.dzr, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  %i.dzs = add nsw i32 %.pre3798, -1
  store i32 %i.dzs, ptr %i.a, align 4, !tbaa !8
  %.not27483283 = icmp slt i32 %.pre3798, 2
  %.pre3963 = sext i32 %i.dxx to i64              ; 2 uses
  br i1 %.not27483283, label %._crit_edge3288, label %.lr.ph3287

.lr.ph3287:                                       ; preds = %bb.gn
  %i.dzt = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.pre3963
  br label %bb.go

bb.go:                                            ; preds = %.lr.ph3287, %bb.go
  %.12.neg3285 = phi i32 [ -1, %.lr.ph3287 ], [ %.12.neg, %bb.go ]
  %.123284 = phi i32 [ 1, %.lr.ph3287 ], [ %i.eaj, %bb.go ] ; 4 uses
  %i.dzu = load i32, ptr %i.j, align 4, !tbaa !8
  %i.dzv = add nsw i32 %.123284, %i.dxx
  %i.dzw = mul nsw i32 %i.dzv, %i.n
  %i.dzx = add i32 %i.dzw, %.12.neg3285           ; 2 uses
  %i.dzy = add i32 %i.dzx, %i.dzu
  %i.dzz = sext i32 %i.dzy to i64
  %i.eaa = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dzz
  %i.eab = load i32, ptr %3, align 4, !tbaa !8
  %i.eac = add i32 %i.dzx, %i.eab
  %i.ead = sext i32 %i.eac to i64
  %i.eae = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ead
  %i.eaf = load i32, ptr %2, align 4, !tbaa !8
  %i.eag = add nsw i32 %i.eaf, %i.dxx
  %i.eah = sext i32 %i.eag to i64
  %i.eai = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eah
  call void @dlartv_(ptr noundef nonnull %i.h, ptr noundef %i.eaa, ptr noundef nonnull %i.f, ptr noundef %i.eae, ptr noundef nonnull %i.f, ptr noundef nonnull %i.eai, ptr noundef nonnull %i.dzt, ptr noundef nonnull %i.j) #4
  %i.eaj = add nuw nsw i32 %.123284, 1
  %.12.neg = xor i32 %.123284, -1
  %i.eak = load i32, ptr %i.a, align 4, !tbaa !8
  %.not2748.not = icmp slt i32 %.123284, %i.eak
  br i1 %.not2748.not, label %bb.go, label %._crit_edge3288.loopexit, !llvm.loop !163

._crit_edge3288.loopexit:                         ; preds = %bb.go
  %.pre3796 = load i32, ptr %3, align 4, !tbaa !8
  br label %._crit_edge3288

._crit_edge3288:                                  ; preds = %bb.gn, %._crit_edge3288.loopexit
  %i.eal = phi i32 [ %.pre3796, %._crit_edge3288.loopexit ], [ %.pre3798, %bb.gn ]
  %i.eam = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.ean = mul nsw i32 %i.dxx, %i.n               ; 2 uses
  %i.eao = add nsw i32 %i.eam, %i.ean
  %i.eap = sext i32 %i.eao to i64
  %i.eaq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eap
  %i.ear = add nsw i32 %i.dxx, -1
  %i.eas = mul nsw i32 %i.ear, %i.n
  %i.eat = add nsw i32 %i.eam, %i.eas
  %i.eau = sext i32 %i.eat to i64
  %i.eav = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eau
  %i.eaw = add nsw i32 %i.eal, %i.ean
  %i.eax = sext i32 %i.eaw to i64
  %i.eay = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eax
  %i.eaz = load i32, ptr %2, align 4, !tbaa !8
  %i.eba = add nsw i32 %i.eaz, %i.dxx
  %i.ebb = sext i32 %i.eba to i64
  %i.ebc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ebb
  %i.ebd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.pre3963
  call void @dlar2v_(ptr noundef nonnull %i.h, ptr noundef %i.eaq, ptr noundef %i.eav, ptr noundef %i.eay, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ebc, ptr noundef nonnull %i.ebd, ptr noundef nonnull %i.j) #4
  %.pre3797 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.gp

bb.gp:                                            ; preds = %._crit_edge3288, %bb.gm
  %i.ebe = phi i32 [ %.pre3797, %._crit_edge3288 ], [ %.pre3798, %bb.gm ] ; 2 uses
  %i.ebf = load i32, ptr %4, align 4, !tbaa !8
  %i.ebg = trunc i64 %indvars.iv3702 to i32
  %i.ebh = add i32 %i.ebg, 1
  %i.ebi = add i32 %i.ebh, %i.ebf                 ; 3 uses
  store i32 %i.ebi, ptr %i.a, align 4, !tbaa !8
  %.not2749.not3290 = icmp sgt i32 %i.ebe, %i.ebi
  br i1 %.not2749.not3290, label %.lr.ph3294, label %._crit_edge3295

.lr.ph3294:                                       ; preds = %bb.gp
  %i.ebj = add i32 %i.dxr, -1
  %.pre3800 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.gq

bb.gq:                                            ; preds = %.lr.ph3294, %bb.gs
  %i.ebk = phi i32 [ %i.ebi, %.lr.ph3294 ], [ %i.ech, %bb.gs ]
  %i.ebl = phi i32 [ %.pre3800, %.lr.ph3294 ], [ %i.eci, %bb.gs ] ; 3 uses
  %.13.in3291 = phi i32 [ %i.ebe, %.lr.ph3294 ], [ %.133292, %bb.gs ] ; 2 uses
  %.133292 = add nsw i32 %.13.in3291, -1          ; 4 uses
  %i.ebm = add i32 %i.ebj, %.133292
  %i.ebn = sdiv i32 %i.ebm, %i.ebl                ; 3 uses
  store i32 %i.ebn, ptr %i.m, align 4, !tbaa !8
  %i.ebo = icmp sgt i32 %i.ebn, 0
  br i1 %i.ebo, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.ebp = add nsw i32 %i.ebn, -1
  %i.ebq = mul nsw i32 %i.ebp, %i.ebl
  %i.ebr = sub nsw i32 %i.dxr, %i.ebq             ; 4 uses
  %i.ebs = mul nsw i32 %i.ebr, %i.n
  %i.ebt = add nsw i32 %i.ebs, %.133292
  %i.ebu = sext i32 %i.ebt to i64
  %i.ebv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ebu
  %i.ebw = add nsw i32 %i.ebr, -1
  %i.ebx = mul nsw i32 %i.ebw, %i.n
  %i.eby = add nsw i32 %i.ebx, %.13.in3291
  %i.ebz = sext i32 %i.eby to i64
  %i.eca = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ebz
  %i.ecb = load i32, ptr %2, align 4, !tbaa !8
  %i.ecc = add nsw i32 %i.ecb, %i.ebr
  %i.ecd = sext i32 %i.ecc to i64
  %i.ece = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ecd
  %i.ecf = sext i32 %i.ebr to i64
  %i.ecg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ecf
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.ebv, ptr noundef nonnull %i.f, ptr noundef %i.eca, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ece, ptr noundef nonnull %i.ecg, ptr noundef nonnull %i.j) #4
  %.pre3799 = load i32, ptr %i.j, align 4, !tbaa !8
  %.pre3801 = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gq, %bb.gr
  %i.ech = phi i32 [ %i.ebk, %bb.gq ], [ %.pre3801, %bb.gr ] ; 2 uses
  %i.eci = phi i32 [ %i.ebl, %bb.gq ], [ %.pre3799, %bb.gr ]
  %.not2749.not = icmp sgt i32 %.133292, %i.ech
  br i1 %.not2749.not, label %bb.gq, label %._crit_edge3295, !llvm.loop !164

._crit_edge3295:                                  ; preds = %bb.gs, %bb.gp
  br i1 %.not, label %.loopexit2874, label %bb.gt

bb.gt:                                            ; preds = %._crit_edge3295
  store i32 %i.dxr, ptr %i.a, align 4, !tbaa !8
  %i.ecj = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  store i32 %i.ecj, ptr %i.d, align 4, !tbaa !8
  %i.eck = icmp slt i32 %i.ecj, 0
  %i.ecl = icmp slt i32 %i.dxw, 1
  %i.ecm = icmp sgt i32 %i.dxw, -1
  %.in27503296 = select i1 %i.eck, i1 %i.ecl, i1 %i.ecm
  br i1 %.in27503296, label %.lr.ph3299, label %.loopexit2874

.lr.ph3299:                                       ; preds = %bb.gt, %.lr.ph3299
  %.283297 = phi i32 [ %i.edd, %.lr.ph3299 ], [ %i.dxx, %bb.gt ] ; 5 uses
  %i.ecn = mul nsw i32 %.283297, %i.t
  %i.eco = sext i32 %i.ecn to i64
  %i.ecp = getelementptr [8 x i8], ptr %i.v, i64 %i.eco
  %i.ecq = getelementptr i8, ptr %i.ecp, i64 8
  %i.ecr = add nsw i32 %.283297, -1
  %i.ecs = mul nsw i32 %i.ecr, %i.t
  %i.ect = sext i32 %i.ecs to i64
  %i.ecu = getelementptr [8 x i8], ptr %i.v, i64 %i.ect
  %i.ecv = getelementptr i8, ptr %i.ecu, i64 8
  %i.ecw = load i32, ptr %2, align 4, !tbaa !8
  %i.ecx = add nsw i32 %i.ecw, %.283297
  %i.ecy = sext i32 %i.ecx to i64
  %i.ecz = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ecy
  %i.eda = sext i32 %.283297 to i64
  %i.edb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eda
  call void @drot_(ptr noundef nonnull %i.i, ptr noundef %i.ecq, ptr noundef nonnull @c__1, ptr noundef %i.ecv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ecz, ptr noundef nonnull %i.edb) #4
  %i.edc = load i32, ptr %i.d, align 4, !tbaa !8  ; 2 uses
  %i.edd = add nsw i32 %i.edc, %.283297           ; 3 uses
  %i.ede = icmp slt i32 %i.edc, 0
  %i.edf = load i32, ptr %i.a, align 4            ; 2 uses
  %i.edg = icmp sge i32 %i.edd, %i.edf
  %i.edh = icmp sle i32 %i.edd, %i.edf
  %.in2750 = select i1 %i.ede, i1 %i.edg, i1 %i.edh
  br i1 %.in2750, label %.lr.ph3299, label %.loopexit2874, !llvm.loop !165

.loopexit2874:                                    ; preds = %.lr.ph3299, %bb.gt, %._crit_edge3295
  %indvars.iv.next3705.a = add nuw nsw i64 %indvars.iv3704.a, 1
  %i.edi = load i32, ptr %i.c, align 4, !tbaa !8
  %i.edj = sext i32 %i.edi to i64
  %.not2734.not = icmp slt i64 %indvars.iv3704.a, %i.edj
  %indvars.iv.next3695 = add i32 %indvars.iv3694, 1
  %indvars.iv.next3697 = add i32 %indvars.iv3696.a, 1
  %indvars.iv.next3703 = add nsw i64 %indvars.iv3702, -1
  br i1 %.not2734.not, label %bb.ge, label %._crit_edge3305, !llvm.loop !166

._crit_edge3305:                                  ; preds = %.loopexit2874, %bb.gd
  br i1 %.not26982891, label %._crit_edge3305._crit_edge, label %bb.gu

._crit_edge3305._crit_edge:                       ; preds = %._crit_edge3305
  %.pre3802 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.gw

bb.gu:                                            ; preds = %._crit_edge3305
  %i.edk = icmp sgt i32 %.4, 0
  %i.edl = load i32, ptr %i.l, align 4            ; 4 uses
  %i.edm = icmp sgt i32 %i.edl, 0
  %or.cond5 = select i1 %i.edk, i1 %i.edm, i1 false
  %.pre3803 = load i32, ptr %4, align 4, !tbaa !8 ; 3 uses
  br i1 %or.cond5, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.edn = sub i32 %i.ac, %i.edl
  %i.edo = add nuw nsw i32 %i.edl, %.32608
  %i.edp = mul nsw i32 %i.edo, %i.q
  %i.edq = add nsw i32 %i.edn, %i.edp
  %i.edr = sext i32 %i.edq to i64
  %i.eds = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.edr
  %i.edt = load double, ptr %i.eds, align 8, !tbaa !9
  %i.edu = fneg double %i.edt
  %i.edv = load double, ptr %i.k, align 8, !tbaa !9
  %i.edw = fmul double %i.edv, %i.edu
  %i.edx = add i32 %.32608, %i.ay
  %i.edy = add i32 %i.edx, %i.edl
  %i.edz = sub i32 %i.edy, %.pre3803
  %i.eea = sext i32 %i.edz to i64
  %i.eeb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eea
  store double %i.edw, ptr %i.eeb, align 8, !tbaa !9
  br label %bb.gw

bb.gw:                                            ; preds = %._crit_edge3305._crit_edge, %bb.gu, %bb.gv
  %i.eec = phi i32 [ %.pre3802, %._crit_edge3305._crit_edge ], [ %.pre3803, %bb.gu ], [ %.pre3803, %bb.gv ] ; 3 uses
  %i.eed = icmp sgt i32 %i.eec, 0
  br i1 %i.eed, label %.lr.ph3333, label %._crit_edge3355.thread

.lr.ph3333:                                       ; preds = %bb.gw
  %i.eee = sub i32 %.42551, %i.ay
  %i.eef = add nuw i32 %.32608, 1
  %i.eeg = add i32 %.32608, %i.ay
  br label %bb.gx

bb.gx:                                            ; preds = %.lr.ph3333, %bb.hh
  %.1525723331 = phi i32 [ %i.eec, %.lr.ph3333 ], [ %i.eiq, %bb.hh ] ; 8 uses
  %i.eeh = add i32 %i.eee, %.1525723331           ; 3 uses
  %i.eei = load i32, ptr %i.j, align 4, !tbaa !8  ; 3 uses
  %i.eej = add i32 %i.eef, %.1525723331
  br i1 %.not26982891, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.eek = call i32 @llvm.smax.i32(i32 %i.eeh, i32 2)
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.eel = call i32 @llvm.smax.i32(i32 %i.eeh, i32 1)
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.sink4184 = phi i32 [ %i.eel, %bb.gz ], [ %i.eek, %bb.gy ]
  %.sink3784 = phi i32 [ 1, %bb.gz ], [ 2, %bb.gy ]
  %i.eem = mul nsw i32 %i.eei, %.sink4184
  %i.een = sub i32 %i.eej, %i.eem                 ; 7 uses
  store i32 %.sink3784, ptr %i.c, align 4, !tbaa !8
  store i32 %i.eeh, ptr %i.d, align 4, !tbaa !8
  %i.eeo = load i32, ptr %4, align 4, !tbaa !8
  %i.eep = sub nsw i32 %i.eeo, %.1525723331       ; 2 uses
  %i.eeq = icmp sgt i32 %i.eep, 0
  %i.eer = add i32 %i.een, -1                     ; 2 uses
  br i1 %i.eeq, label %.lr.ph3308, label %._crit_edge3309

.lr.ph3308:                                       ; preds = %bb.ha, %bb.hc
  %i.ees = phi i32 [ %i.efx, %bb.hc ], [ %i.eei, %bb.ha ] ; 3 uses
  %.143306 = phi i32 [ %i.efy, %bb.hc ], [ %i.eep, %bb.ha ] ; 5 uses
  %i.eet = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.eeu = add i32 %i.eer, %.143306
  %i.eev = add i32 %i.eeu, %i.eet
  %i.eew = sdiv i32 %i.eev, %i.ees                ; 3 uses
  store i32 %i.eew, ptr %i.m, align 4, !tbaa !8
  %i.eex = icmp sgt i32 %i.eew, 0
  br i1 %i.eex, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %.lr.ph3308
  %i.eey = add nsw i32 %i.eew, -1
  %i.eez = mul nsw i32 %i.eey, %i.ees
  %i.efa = sub nsw i32 %i.een, %i.eez             ; 2 uses
  %i.efb = add nsw i32 %i.efa, %i.eet             ; 2 uses
  %i.efc = mul nsw i32 %i.efb, %i.n
  %i.efd = add nsw i32 %i.efc, %.143306
  %i.efe = sext i32 %i.efd to i64
  %i.eff = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.efe
  %i.efg = add nuw nsw i32 %.143306, 1
  %i.efh = add nsw i32 %i.efb, -1
  %i.efi = mul nsw i32 %i.efh, %i.n
  %i.efj = add nsw i32 %i.efg, %i.efi
  %i.efk = sext i32 %i.efj to i64
  %i.efl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.efk
  %i.efm = load i32, ptr %2, align 4, !tbaa !8
  %i.efn = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.efo = add i32 %i.eet, %i.ay
  %i.efp = add i32 %i.efo, %i.efa                 ; 2 uses
  %i.efq = add i32 %i.efp, %i.efm
  %i.efr = sub i32 %i.efq, %i.efn
  %i.efs = sext i32 %i.efr to i64
  %i.eft = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.efs
  %i.efu = sub i32 %i.efp, %i.efn
  %i.efv = sext i32 %i.efu to i64
  %i.efw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.efv
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.eff, ptr noundef nonnull %i.f, ptr noundef %i.efl, ptr noundef nonnull %i.f, ptr noundef nonnull %i.eft, ptr noundef nonnull %i.efw, ptr noundef nonnull %i.j) #4
  %.pre3804 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.hc

bb.hc:                                            ; preds = %.lr.ph3308, %bb.hb
  %i.efx = phi i32 [ %i.ees, %.lr.ph3308 ], [ %.pre3804, %bb.hb ] ; 2 uses
  %i.efy = add nsw i32 %.143306, -1
  %i.efz = icmp sgt i32 %.143306, 1
  br i1 %i.efz, label %.lr.ph3308, label %._crit_edge3309, !llvm.loop !167

._crit_edge3309:                                  ; preds = %bb.hc, %bb.ha
  %i.ega = phi i32 [ %i.eei, %bb.ha ], [ %i.efx, %bb.hc ] ; 8 uses
  %i.egb = load i32, ptr %3, align 4, !tbaa !8    ; 5 uses
  %i.egc = add i32 %i.eer, %i.egb
  %i.egd = sdiv i32 %i.egc, %i.ega                ; 2 uses
  store i32 %i.egd, ptr %i.h, align 4, !tbaa !8
  %i.ege = add nsw i32 %i.egd, -1
  %i.egf = mul nsw i32 %i.ege, %i.ega             ; 3 uses
  %i.egg = sub i32 %i.een, %i.egf                 ; 2 uses
  %i.egh = icmp slt i32 %i.ega, 0                 ; 3 uses
  %i.egi = icmp slt i32 %i.egf, 1
  %i.egj = icmp sgt i32 %i.egf, -1
  %.in27423310 = select i1 %i.egh, i1 %i.egi, i1 %i.egj
  br i1 %.in27423310, label %.lr.ph3313, label %._crit_edge3314

.lr.ph3313:                                       ; preds = %._crit_edge3309
  %i.egk = load i32, ptr %4, align 4, !tbaa !8
  %i.egl = sub i32 %i.ay, %i.egk                  ; 2 uses
  %i.egm = load i32, ptr %2, align 4, !tbaa !8
  %invariant.op3318 = add i32 %i.egl, %i.egm
  %i.egn = sext i32 %i.egg to i64
  %i.ego = sext i32 %i.ega to i64
  %i.egp = sext i32 %i.een to i64                 ; 2 uses
  br label %bb.hd

bb.hd:                                            ; preds = %.lr.ph3313, %bb.hd
  %indvars.iv3710 = phi i64 [ %i.egn, %.lr.ph3313 ], [ %indvars.iv.next3711, %bb.hd ] ; 2 uses
  %i.egq = trunc nsw i64 %indvars.iv3710 to i32   ; 2 uses
  %i.egr = add nsw i32 %i.egl, %i.egq             ; 2 uses
  %i.egs = add nsw i32 %i.egr, %i.egb
  %i.egt = sext i32 %i.egs to i64
  %i.egu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.egt
  %i.egv = load double, ptr %i.egu, align 8, !tbaa !9
  %i.egw = sext i32 %i.egr to i64
  %i.egx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.egw
  store double %i.egv, ptr %i.egx, align 8, !tbaa !9
  %.reass3319 = add i32 %invariant.op3318, %i.egq ; 2 uses
  %i.egy = add nsw i32 %.reass3319, %i.egb
  %i.egz = sext i32 %i.egy to i64
  %i.eha = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.egz
  %i.ehb = load double, ptr %i.eha, align 8, !tbaa !9
  %i.ehc = sext i32 %.reass3319 to i64
  %i.ehd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ehc
  store double %i.ehb, ptr %i.ehd, align 8, !tbaa !9
  %indvars.iv.next3711 = add nsw i64 %indvars.iv3710, %i.ego ; 3 uses
  %i.ehe = icmp sge i64 %indvars.iv.next3711, %i.egp
  %i.ehf = icmp sle i64 %indvars.iv.next3711, %i.egp
  %.in2742 = select i1 %i.egh, i1 %i.ehe, i1 %i.ehf
  br i1 %.in2742, label %bb.hd, label %.lr.ph3323, !llvm.loop !168

._crit_edge3314:                                  ; preds = %._crit_edge3309
  store i32 %i.een, ptr %i.d, align 4, !tbaa !8
  store i32 %i.ega, ptr %i.c, align 4, !tbaa !8
  br label %._crit_edge3324

.lr.ph3323:                                       ; preds = %bb.hd
  store i32 %i.een, ptr %i.d, align 4, !tbaa !8
  store i32 %i.ega, ptr %i.c, align 4, !tbaa !8
  %i.ehg = add i32 %i.egb, -1
  %i.ehh = load i32, ptr %4, align 4, !tbaa !8
  %invariant.op3325 = sub i32 %i.ay, %i.ehh       ; 2 uses
  %i.ehi = load i32, ptr %2, align 4, !tbaa !8
  %invariant.op3329 = add i32 %invariant.op3325, %i.ehi
  %i.ehj = sext i32 %i.egg to i64
  %i.ehk = sext i32 %i.ega to i64
  %i.ehl = sext i32 %i.een to i64                 ; 2 uses
  br label %bb.he

bb.he:                                            ; preds = %.lr.ph3323, %bb.he
  %indvars.iv3713 = phi i64 [ %i.ehj, %.lr.ph3323 ], [ %indvars.iv.next3714, %bb.he ] ; 2 uses
  %i.ehm = trunc nsw i64 %indvars.iv3713 to i32   ; 3 uses
  %i.ehn = add i32 %i.ehg, %i.ehm
  %i.eho = mul nsw i32 %i.ehn, %i.n
  %i.ehp = sext i32 %i.eho to i64
  %i.ehq = getelementptr [8 x i8], ptr %i.p, i64 %i.ehp
  %i.ehr = getelementptr i8, ptr %i.ehq, i64 8    ; 3 uses
  %i.ehs = load double, ptr %i.ehr, align 8, !tbaa !9
  %.reass3326 = add i32 %invariant.op3325, %i.ehm
  %i.eht = sext i32 %.reass3326 to i64
  %i.ehu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eht ; 2 uses
  %i.ehv = load double, ptr %i.ehu, align 8, !tbaa !9
  %i.ehw = fmul double %i.ehs, %i.ehv
  store double %i.ehw, ptr %i.ehu, align 8, !tbaa !9
  %.reass3330 = add i32 %invariant.op3329, %i.ehm
  %i.ehx = sext i32 %.reass3330 to i64
  %i.ehy = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ehx
  %i.ehz = load double, ptr %i.ehy, align 8, !tbaa !9
  %i.eia = load double, ptr %i.ehr, align 8, !tbaa !9
  %i.eib = fmul double %i.ehz, %i.eia
  store double %i.eib, ptr %i.ehr, align 8, !tbaa !9
  %indvars.iv.next3714 = add nsw i64 %indvars.iv3713, %i.ehk ; 3 uses
  %i.eic = icmp sge i64 %indvars.iv.next3714, %i.ehl
  %i.eid = icmp sle i64 %indvars.iv.next3714, %i.ehl
  %.in2743 = select i1 %i.egh, i1 %i.eic, i1 %i.eid
  br i1 %.in2743, label %bb.he, label %._crit_edge3324, !llvm.loop !169

._crit_edge3324:                                  ; preds = %bb.he, %._crit_edge3314
  br i1 %.not26982891, label %bb.hh, label %bb.hf

bb.hf:                                            ; preds = %._crit_edge3324
  %i.eie = add nsw i32 %.1525723331, %.32608
  %i.eif = icmp sle i32 %i.eie, %i.ega
  %i.eig = load i32, ptr %i.l, align 4
  %.not2744 = icmp sgt i32 %.1525723331, %i.eig
  %or.cond2762 = select i1 %i.eif, i1 true, i1 %.not2744
  br i1 %or.cond2762, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.eih = load i32, ptr %4, align 4, !tbaa !8
  %i.eii = add i32 %i.eeg, %.1525723331
  %i.eij = sub i32 %i.eii, %i.eih                 ; 2 uses
  %i.eik = sext i32 %i.eij to i64
  %i.eil = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eik
  %i.eim = load double, ptr %i.eil, align 8, !tbaa !9
  %i.ein = sub nsw i32 %i.eij, %i.egb
  %i.eio = sext i32 %i.ein to i64
  %i.eip = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eio
  store double %i.eim, ptr %i.eip, align 8, !tbaa !9
  br label %bb.hh

bb.hh:                                            ; preds = %._crit_edge3324, %bb.hg, %bb.hf
  %i.eiq = add nsw i32 %.1525723331, -1
  %i.eir = icmp sgt i32 %.1525723331, 1
  br i1 %i.eir, label %bb.gx, label %._crit_edge3334, !llvm.loop !170

._crit_edge3334:                                  ; preds = %bb.hh
  %.pre3806 = load i32, ptr %4, align 4, !tbaa !8 ; 3 uses
  %i.eis = icmp sgt i32 %.pre3806, 0
  br i1 %i.eis, label %.lr.ph3354, label %._crit_edge3355.thread

.lr.ph3354:                                       ; preds = %._crit_edge3334
  %i.eit = sub i32 %.42551, %i.ay
  %i.eiu = add nuw i32 %.32608, 1
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph3354, %.loopexit2873
  %.1625733352 = phi i32 [ %.pre3806, %.lr.ph3354 ], [ %i.eob, %.loopexit2873 ] ; 5 uses
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %i.eiv = add i32 %i.eit, %.1625733352           ; 2 uses
  store i32 %i.eiv, ptr %i.d, align 4, !tbaa !8
  %i.eiw = call i32 @llvm.smax.i32(i32 %i.eiv, i32 1)
  %i.eix = load i32, ptr %i.j, align 4, !tbaa !8  ; 3 uses
  %i.eiy = mul nsw i32 %i.eix, %i.eiw
  %i.eiz = add i32 %i.eiu, %.1625733352
  %i.eja = sub i32 %i.eiz, %i.eiy                 ; 5 uses
  %i.ejb = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.ejc = add i32 %i.ejb, -1
  %i.ejd = add i32 %i.ejc, %i.eja
  %i.eje = sdiv i32 %i.ejd, %i.eix                ; 3 uses
  store i32 %i.eje, ptr %i.h, align 4, !tbaa !8
  %i.ejf = add nsw i32 %i.eje, -1
  %i.ejg = mul nsw i32 %i.ejf, %i.eix             ; 3 uses
  %i.ejh = sub nsw i32 %i.eja, %i.ejg             ; 6 uses
  %i.eji = icmp sgt i32 %i.eje, 0
  %.pre3809 = load i32, ptr %4, align 4, !tbaa !8 ; 2 uses
  br i1 %i.eji, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.ejj = add nsw i32 %i.ejh, %i.ejb
  %i.ejk = mul nsw i32 %i.ejj, %i.n
  %i.ejl = sext i32 %i.ejk to i64
  %i.ejm = getelementptr [8 x i8], ptr %i.p, i64 %i.ejl
  %i.ejn = getelementptr i8, ptr %i.ejm, i64 8
  %i.ejo = add i32 %i.ejh, %i.ay                  ; 5 uses
  %i.ejp = sub i32 %i.ejo, %.pre3809              ; 2 uses
  %i.ejq = sext i32 %i.ejp to i64
  %i.ejr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ejq
  %i.ejs = load i32, ptr %2, align 4, !tbaa !8
  %i.ejt = add i32 %i.ejp, %i.ejs
  %i.eju = sext i32 %i.ejt to i64
  %i.ejv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eju
  call void @dlargv_(ptr noundef nonnull %i.h, ptr noundef %i.ejn, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ejr, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ejv, ptr noundef nonnull %i.j) #4
  %i.ejw = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.ejx = add nsw i32 %i.ejw, -1
  store i32 %i.ejx, ptr %i.c, align 4, !tbaa !8
  %.not27393335 = icmp slt i32 %i.ejw, 2
  br i1 %.not27393335, label %._crit_edge3340, label %.lr.ph3339

.lr.ph3339:                                       ; preds = %bb.hj, %.lr.ph3339
  %.15.neg3337 = phi i32 [ %.15.neg, %.lr.ph3339 ], [ -1, %bb.hj ]
  %.153336 = phi i32 [ %i.eks, %.lr.ph3339 ], [ 1, %bb.hj ] ; 4 uses
  %i.ejy = load i32, ptr %i.j, align 4, !tbaa !8
  %i.ejz = add nsw i32 %.153336, %i.ejh
  %i.eka = mul nsw i32 %i.ejz, %i.n
  %i.ekb = add i32 %i.eka, %.15.neg3337           ; 2 uses
  %i.ekc = add i32 %i.ekb, %i.ejy
  %i.ekd = sext i32 %i.ekc to i64
  %i.eke = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ekd
  %i.ekf = load i32, ptr %3, align 4, !tbaa !8
  %i.ekg = add i32 %i.ekb, %i.ekf
  %i.ekh = sext i32 %i.ekg to i64
  %i.eki = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ekh
  %i.ekj = load i32, ptr %2, align 4, !tbaa !8
  %i.ekk = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.ekl = add i32 %i.ejo, %i.ekj
  %i.ekm = sub i32 %i.ekl, %i.ekk
  %i.ekn = sext i32 %i.ekm to i64
  %i.eko = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ekn
  %i.ekp = sub i32 %i.ejo, %i.ekk
  %i.ekq = sext i32 %i.ekp to i64
  %i.ekr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ekq
  call void @dlartv_(ptr noundef nonnull %i.h, ptr noundef %i.eke, ptr noundef nonnull %i.f, ptr noundef %i.eki, ptr noundef nonnull %i.f, ptr noundef nonnull %i.eko, ptr noundef nonnull %i.ekr, ptr noundef nonnull %i.j) #4
  %i.eks = add nuw nsw i32 %.153336, 1
  %.15.neg = xor i32 %.153336, -1
  %i.ekt = load i32, ptr %i.c, align 4, !tbaa !8
  %.not2739.not = icmp slt i32 %.153336, %i.ekt
  br i1 %.not2739.not, label %.lr.ph3339, label %._crit_edge3340.loopexit, !llvm.loop !171

._crit_edge3340.loopexit:                         ; preds = %.lr.ph3339
  %.pre3807 = load i32, ptr %3, align 4, !tbaa !8
  br label %._crit_edge3340

._crit_edge3340:                                  ; preds = %._crit_edge3340.loopexit, %bb.hj
  %i.eku = phi i32 [ %.pre3807, %._crit_edge3340.loopexit ], [ %i.ejw, %bb.hj ]
  %i.ekv = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.ekw = mul nsw i32 %i.ejh, %i.n               ; 2 uses
  %i.ekx = add nsw i32 %i.ekv, %i.ekw
  %i.eky = sext i32 %i.ekx to i64
  %i.ekz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eky
  %i.ela = add nsw i32 %i.ejh, -1
  %i.elb = mul nsw i32 %i.ela, %i.n
  %i.elc = add nsw i32 %i.ekv, %i.elb
  %i.eld = sext i32 %i.elc to i64
  %i.ele = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eld
  %i.elf = add nsw i32 %i.eku, %i.ekw
  %i.elg = sext i32 %i.elf to i64
  %i.elh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.elg
  %i.eli = load i32, ptr %2, align 4, !tbaa !8
  %i.elj = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.elk = add i32 %i.ejo, %i.eli
  %i.ell = sub i32 %i.elk, %i.elj
  %i.elm = sext i32 %i.ell to i64
  %i.eln = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.elm
  %i.elo = sub i32 %i.ejo, %i.elj
  %i.elp = sext i32 %i.elo to i64
  %i.elq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.elp
  call void @dlar2v_(ptr noundef nonnull %i.h, ptr noundef %i.ekz, ptr noundef %i.ele, ptr noundef %i.elh, ptr noundef nonnull %i.f, ptr noundef nonnull %i.eln, ptr noundef nonnull %i.elq, ptr noundef nonnull %i.j) #4
  %.pre3808 = load i32, ptr %4, align 4, !tbaa !8
  %.pre3810 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.hk

bb.hk:                                            ; preds = %._crit_edge3340, %bb.hi
  %i.elr = phi i32 [ %.pre3810, %._crit_edge3340 ], [ %i.ejb, %bb.hi ] ; 2 uses
  %i.els = phi i32 [ %.pre3808, %._crit_edge3340 ], [ %.pre3809, %bb.hi ]
  %reass.sub3509 = sub i32 %i.els, %.1625733352
  %i.elt = add i32 %reass.sub3509, 1              ; 3 uses
  store i32 %i.elt, ptr %i.c, align 4, !tbaa !8
  %.not2740.not3342 = icmp sgt i32 %i.elr, %i.elt
  br i1 %.not2740.not3342, label %.lr.ph3346, label %._crit_edge3347

.lr.ph3346:                                       ; preds = %bb.hk
  %i.elu = add i32 %i.eja, -1
  %.pre3812 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.hl

bb.hl:                                            ; preds = %.lr.ph3346, %bb.hn
  %i.elv = phi i32 [ %i.elt, %.lr.ph3346 ], [ %i.emw, %bb.hn ]
  %i.elw = phi i32 [ %.pre3812, %.lr.ph3346 ], [ %i.emx, %bb.hn ] ; 3 uses
  %.16.in3343 = phi i32 [ %i.elr, %.lr.ph3346 ], [ %.163344, %bb.hn ] ; 2 uses
  %.163344 = add nsw i32 %.16.in3343, -1          ; 4 uses
  %i.elx = add i32 %i.elu, %.163344
  %i.ely = sdiv i32 %i.elx, %i.elw                ; 3 uses
  store i32 %i.ely, ptr %i.m, align 4, !tbaa !8
  %i.elz = icmp sgt i32 %i.ely, 0
  br i1 %i.elz, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.ema = add nsw i32 %i.ely, -1
  %i.emb = mul nsw i32 %i.ema, %i.elw
  %i.emc = sub nsw i32 %i.eja, %i.emb             ; 3 uses
  %i.emd = mul nsw i32 %i.emc, %i.n
  %i.eme = add nsw i32 %i.emd, %.163344
  %i.emf = sext i32 %i.eme to i64
  %i.emg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.emf
  %i.emh = add nsw i32 %i.emc, -1
  %i.emi = mul nsw i32 %i.emh, %i.n
  %i.emj = add nsw i32 %i.emi, %.16.in3343
  %i.emk = sext i32 %i.emj to i64
  %i.eml = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.emk
  %i.emm = load i32, ptr %2, align 4, !tbaa !8
  %i.emn = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.emo = add i32 %i.emc, %i.ay                  ; 2 uses
  %i.emp = add i32 %i.emo, %i.emm
  %i.emq = sub i32 %i.emp, %i.emn
  %i.emr = sext i32 %i.emq to i64
  %i.ems = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.emr
  %i.emt = sub i32 %i.emo, %i.emn
  %i.emu = sext i32 %i.emt to i64
  %i.emv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.emu
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.emg, ptr noundef nonnull %i.f, ptr noundef %i.eml, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ems, ptr noundef nonnull %i.emv, ptr noundef nonnull %i.j) #4
  %.pre3811 = load i32, ptr %i.j, align 4, !tbaa !8
  %.pre3813 = load i32, ptr %i.c, align 4, !tbaa !8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hl, %bb.hm
  %i.emw = phi i32 [ %i.elv, %bb.hl ], [ %.pre3813, %bb.hm ] ; 2 uses
  %i.emx = phi i32 [ %i.elw, %bb.hl ], [ %.pre3811, %bb.hm ]
  %.not2740.not = icmp sgt i32 %.163344, %i.emw
  br i1 %.not2740.not, label %bb.hl, label %._crit_edge3347, !llvm.loop !172

._crit_edge3347:                                  ; preds = %bb.hn, %bb.hk
  br i1 %.not, label %.loopexit2873, label %bb.ho

bb.ho:                                            ; preds = %._crit_edge3347
  store i32 %i.eja, ptr %i.c, align 4, !tbaa !8
  %i.emy = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  store i32 %i.emy, ptr %i.d, align 4, !tbaa !8
  %i.emz = icmp slt i32 %i.emy, 0
  %i.ena = icmp slt i32 %i.ejg, 1
  %i.enb = icmp sgt i32 %i.ejg, -1
  %.in27413348 = select i1 %i.emz, i1 %i.ena, i1 %i.enb
  br i1 %.in27413348, label %.lr.ph3351, label %.loopexit2873

.lr.ph3351:                                       ; preds = %bb.ho, %.lr.ph3351
  %.313349 = phi i32 [ %i.enw, %.lr.ph3351 ], [ %i.ejh, %bb.ho ] ; 4 uses
  %i.enc = mul nsw i32 %.313349, %i.t
  %i.end = sext i32 %i.enc to i64
  %i.ene = getelementptr [8 x i8], ptr %i.v, i64 %i.end
  %i.enf = getelementptr i8, ptr %i.ene, i64 8
  %i.eng = add nsw i32 %.313349, -1
  %i.enh = mul nsw i32 %i.eng, %i.t
  %i.eni = sext i32 %i.enh to i64
  %i.enj = getelementptr [8 x i8], ptr %i.v, i64 %i.eni
  %i.enk = getelementptr i8, ptr %i.enj, i64 8
  %i.enl = load i32, ptr %2, align 4, !tbaa !8
  %i.enm = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %i.enn = add i32 %.313349, %i.ay                ; 2 uses
  %i.eno = add i32 %i.enn, %i.enl
  %i.enp = sub i32 %i.eno, %i.enm
  %i.enq = sext i32 %i.enp to i64
  %i.enr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.enq
  %i.ens = sub i32 %i.enn, %i.enm
  %i.ent = sext i32 %i.ens to i64
  %i.enu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ent
  call void @drot_(ptr noundef nonnull %i.i, ptr noundef %i.enf, ptr noundef nonnull @c__1, ptr noundef %i.enk, ptr noundef nonnull @c__1, ptr noundef nonnull %i.enr, ptr noundef nonnull %i.enu) #4
  %i.env = load i32, ptr %i.d, align 4, !tbaa !8  ; 2 uses
  %i.enw = add nsw i32 %i.env, %.313349           ; 3 uses
  %i.enx = icmp slt i32 %i.env, 0
  %i.eny = load i32, ptr %i.c, align 4            ; 2 uses
  %i.enz = icmp sge i32 %i.enw, %i.eny
  %i.eoa = icmp sle i32 %i.enw, %i.eny
  %.in2741 = select i1 %i.enx, i1 %i.enz, i1 %i.eoa
  br i1 %.in2741, label %.lr.ph3351, label %.loopexit2873, !llvm.loop !173

.loopexit2873:                                    ; preds = %.lr.ph3351, %bb.ho, %._crit_edge3347
  %i.eob = add nsw i32 %.1625733352, -1
  %i.eoc = icmp sgt i32 %.1625733352, 1
  br i1 %i.eoc, label %bb.hi, label %._crit_edge3355, !llvm.loop !174

._crit_edge3355.thread:                           ; preds = %._crit_edge3334, %bb.gw
  %.ph4097 = phi i32 [ %.pre3806, %._crit_edge3334 ], [ %i.eec, %bb.gw ] ; 2 uses
  %i.eod = add nsw i32 %.ph4097, -1
  store i32 %i.eod, ptr %i.d, align 4, !tbaa !8
  br label %._crit_edge3364.thread

._crit_edge3355:                                  ; preds = %.loopexit2873
  %.pre3814 = load i32, ptr %4, align 4, !tbaa !8 ; 3 uses
  %i.eoe = add nsw i32 %.pre3814, -1              ; 2 uses
  store i32 %i.eoe, ptr %i.d, align 4, !tbaa !8
  %.not27353360 = icmp slt i32 %.pre3814, 2
  br i1 %.not27353360, label %._crit_edge3364.thread, label %.lr.ph3363

.lr.ph3363:                                       ; preds = %._crit_edge3355
  %.reass4149.reass = add i32 %.42551, %invariant.op4784.a
  %i.eof = add nuw i32 %.32608, 1
  %.pre3899 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br label %bb.hp

bb.hp:                                            ; preds = %.lr.ph3363, %._crit_edge3359
  %.pre3816 = phi i32 [ %.pre3899, %.lr.ph3363 ], [ %.pre38163900, %._crit_edge3359 ] ; 3 uses
  %i.eog = phi i32 [ %.pre3899, %.lr.ph3363 ], [ %i.epr, %._crit_edge3359 ] ; 2 uses
  %i.eoh = phi i32 [ %i.eoe, %.lr.ph3363 ], [ %i.eps, %._crit_edge3359 ]
  %.1725743361 = phi i32 [ 1, %.lr.ph3363 ], [ %i.ept, %._crit_edge3359 ] ; 5 uses
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %i.eoi = add i32 %.reass4149.reass, %.1725743361 ; 2 uses
  store i32 %i.eoi, ptr %i.a, align 4, !tbaa !8
  %i.eoj = call i32 @llvm.smax.i32(i32 %i.eoi, i32 1)
  %i.eok = mul nsw i32 %i.eoj, %i.eog
  %i.eol = add i32 %i.eof, %.1725743361
  %i.eom = sub i32 %i.eol, %i.eok                 ; 2 uses
  %i.eon = load i32, ptr %4, align 4, !tbaa !8
  %i.eoo = sub nsw i32 %i.eon, %.1725743361       ; 2 uses
  %i.eop = icmp sgt i32 %i.eoo, 0
  br i1 %i.eop, label %.lr.ph3358, label %._crit_edge3359

.lr.ph3358:                                       ; preds = %bb.hp
  %i.eoq = add i32 %i.eom, -1
  br label %bb.hq

bb.hq:                                            ; preds = %.lr.ph3358, %bb.hs
  %.pre38163902 = phi i32 [ %.pre3816, %.lr.ph3358 ], [ %.pre38163901, %bb.hs ]
  %i.eor = phi i32 [ %.pre3816, %.lr.ph3358 ], [ %i.epo, %bb.hs ] ; 3 uses
  %.173356 = phi i32 [ %i.eoo, %.lr.ph3358 ], [ %i.epp, %bb.hs ] ; 5 uses
  %i.eos = add i32 %i.eoq, %.173356
  %i.eot = sdiv i32 %i.eos, %i.eor                ; 3 uses
  store i32 %i.eot, ptr %i.m, align 4, !tbaa !8
  %i.eou = icmp sgt i32 %i.eot, 0
  br i1 %i.eou, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.eov = add nsw i32 %i.eot, -1
  %i.eow = mul nsw i32 %i.eov, %i.eor
  %i.eox = sub nsw i32 %i.eom, %i.eow             ; 4 uses
  %i.eoy = mul nsw i32 %i.eox, %i.n
  %i.eoz = add nsw i32 %i.eoy, %.173356
  %i.epa = sext i32 %i.eoz to i64
  %i.epb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.epa
  %i.epc = add nuw nsw i32 %.173356, 1
  %i.epd = add nsw i32 %i.eox, -1
  %i.epe = mul nsw i32 %i.epd, %i.n
  %i.epf = add nsw i32 %i.epc, %i.epe
  %i.epg = sext i32 %i.epf to i64
  %i.eph = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.epg
  %i.epi = load i32, ptr %2, align 4, !tbaa !8
  %i.epj = add nsw i32 %i.epi, %i.eox
  %i.epk = sext i32 %i.epj to i64
  %i.epl = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.epk
  %i.epm = sext i32 %i.eox to i64
  %i.epn = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.epm
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.epb, ptr noundef nonnull %i.f, ptr noundef %i.eph, ptr noundef nonnull %i.f, ptr noundef nonnull %i.epl, ptr noundef nonnull %i.epn, ptr noundef nonnull %i.j) #4
  %.pre3815 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  %.pre38163901 = phi i32 [ %.pre38163902, %bb.hq ], [ %.pre3815, %bb.hr ] ; 2 uses
  %i.epo = phi i32 [ %i.eor, %bb.hq ], [ %.pre3815, %bb.hr ] ; 2 uses
  %i.epp = add nsw i32 %.173356, -1
  %i.epq = icmp sgt i32 %.173356, 1
  br i1 %i.epq, label %bb.hq, label %._crit_edge3359.loopexit, !llvm.loop !175

._crit_edge3359.loopexit:                         ; preds = %bb.hs
  %.pre3817 = load i32, ptr %i.d, align 4, !tbaa !8
  br label %._crit_edge3359

._crit_edge3359:                                  ; preds = %._crit_edge3359.loopexit, %bb.hp
  %.pre38163900 = phi i32 [ %.pre38163901, %._crit_edge3359.loopexit ], [ %.pre3816, %bb.hp ]
  %i.epr = phi i32 [ %i.epo, %._crit_edge3359.loopexit ], [ %i.eog, %bb.hp ]
  %i.eps = phi i32 [ %.pre3817, %._crit_edge3359.loopexit ], [ %i.eoh, %bb.hp ] ; 2 uses
  %i.ept = add nuw nsw i32 %.1725743361, 1
  %.not2735.not = icmp slt i32 %.1725743361, %i.eps
  br i1 %.not2735.not, label %bb.hp, label %._crit_edge3364, !llvm.loop !176

._crit_edge3364.thread:                           ; preds = %._crit_edge3355, %._crit_edge3355.thread
  %.ph4099 = phi i32 [ %.ph4097, %._crit_edge3355.thread ], [ %.pre3814, %._crit_edge3355 ]
  %.pre3788.pre.pre4100 = load i32, ptr %3, align 4, !tbaa !8
  br label %.outer.backedge

._crit_edge3364:                                  ; preds = %._crit_edge3359
  %.pre3818 = load i32, ptr %4, align 4, !tbaa !8 ; 7 uses
  %i.epu = icmp sgt i32 %.pre3818, 1
  %.pre3788.pre.pre = load i32, ptr %3, align 4, !tbaa !8 ; 7 uses
  br i1 %i.epu, label %bb.ht, label %.outer.backedge

bb.ht:                                            ; preds = %._crit_edge3364
  %i.epv = add nuw nsw i32 %.pre3818, %.32608     ; 2 uses
  store i32 %i.epv, ptr %i.c, align 4, !tbaa !8
  %i.epw = call i32 @llvm.smin.i32(i32 %i.epv, i32 %i.ay) ; 2 uses
  %i.epx = shl i32 %.pre3788.pre.pre, 1           ; 2 uses
  %i.epy = xor i32 %i.epx, -1
  %i.epz = add i32 %i.epw, %i.epy                 ; 2 uses
  store i32 %i.epz, ptr %i.d, align 4, !tbaa !8
  %.not27373365 = icmp slt i32 %i.epz, 2
  br i1 %.not27373365, label %.outer.backedge, label %.lr.ph3368

.lr.ph3368:                                       ; preds = %bb.ht
  %i.eqa = load i32, ptr %2, align 4, !tbaa !8
  %i.eqb = sext i32 %i.eqa to i64                 ; 9 uses
  %i.eqc = sext i32 %.pre3788.pre.pre to i64      ; 5 uses
  %i.eqd = sub i32 %i.epw, %i.epx
  %wide.trip.count3720 = zext i32 %i.eqd to i64   ; 4 uses
  %invariant.gep4140 = getelementptr [8 x i8], ptr %i.w, i64 %i.eqc ; 6 uses
  %invariant.gep4142 = getelementptr [8 x i8], ptr %i.w, i64 %i.eqc ; 6 uses
  %i.eqe = add nsw i64 %wide.trip.count3720, -2   ; 3 uses
  %min.iters.check4443 = icmp ult i64 %i.eqe, 16
  br i1 %min.iters.check4443, label %scalar.ph4442.preheader, label %vector.memcheck4434

vector.memcheck4434:                              ; preds = %.lr.ph3368
  %i.eqf = shl nsw i64 %i.eqb, 3
  %diff.check4435 = icmp ugt i64 %i.eqf, -64
  %i.eqg = shl nsw i64 %i.eqc, 3
  %diff.check4436 = icmp ugt i64 %i.eqg, -64
  %conflict.rdx4437 = or i1 %diff.check4435, %diff.check4436
  %i.eqh = sub nsw i64 %i.eqc, %i.eqb
  %i.eqi = shl nsw i64 %i.eqh, 3
  %i.eqj = add nsw i64 %i.eqi, -1
  %diff.check4438 = icmp ult i64 %i.eqj, 63
  %conflict.rdx4439 = or i1 %conflict.rdx4437, %diff.check4438
  %i.eqk = add nsw i64 %i.eqb, %i.eqc
  %i.eql = shl nsw i64 %i.eqk, 3
  %diff.check4440 = icmp ugt i64 %i.eql, -64
  %conflict.rdx4441 = or i1 %conflict.rdx4439, %diff.check4440
  br i1 %conflict.rdx4441, label %scalar.ph4442.preheader, label %vector.ph4444

vector.ph4444:                                    ; preds = %vector.memcheck4434
  %n.vec4445 = and i64 %i.eqe, -8                 ; 3 uses
  %i.eqm = or disjoint i64 %n.vec4445, 2
  br label %vector.body4446

vector.body4446:                                  ; preds = %vector.body4446, %vector.ph4444
  %index4447 = phi i64 [ 0, %vector.ph4444 ], [ %index.next4452, %vector.body4446 ] ; 2 uses
  %i.eqn = or disjoint i64 %index4447, 2          ; 3 uses
  %i.eqo = add nsw i64 %i.eqn, %i.eqb             ; 2 uses
  %i.eqp = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.eqo ; 2 uses
  %i.eqq = getelementptr i8, ptr %i.eqp, i64 32
  %wide.load4448 = load <4 x double>, ptr %i.eqp, align 8, !tbaa !9
  %wide.load4449 = load <4 x double>, ptr %i.eqq, align 8, !tbaa !9
  %i.eqr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eqo ; 2 uses
  %i.eqs = getelementptr inbounds nuw i8, ptr %i.eqr, i64 32
  store <4 x double> %wide.load4448, ptr %i.eqr, align 8, !tbaa !9
  store <4 x double> %wide.load4449, ptr %i.eqs, align 8, !tbaa !9
  %i.eqt = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %i.eqn ; 2 uses
  %i.equ = getelementptr i8, ptr %i.eqt, i64 32
  %wide.load4450 = load <4 x double>, ptr %i.eqt, align 8, !tbaa !9
  %wide.load4451 = load <4 x double>, ptr %i.equ, align 8, !tbaa !9
  %i.eqv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eqn ; 2 uses
  %i.eqw = getelementptr inbounds nuw i8, ptr %i.eqv, i64 32
  store <4 x double> %wide.load4450, ptr %i.eqv, align 8, !tbaa !9
  store <4 x double> %wide.load4451, ptr %i.eqw, align 8, !tbaa !9
  %index.next4452 = add nuw i64 %index4447, 8     ; 2 uses
  %i.eqx = icmp eq i64 %index.next4452, %n.vec4445
  br i1 %i.eqx, label %middle.block4453, label %vector.body4446, !llvm.loop !177

middle.block4453:                                 ; preds = %vector.body4446
  %cmp.n4454 = icmp eq i64 %i.eqe, %n.vec4445
  br i1 %cmp.n4454, label %.outer.backedge, label %scalar.ph4442.preheader

.outer.backedge:                                  ; preds = %scalar.ph4442.prol.loopexit, %scalar.ph4442, %middle.block4453, %._crit_edge3364.thread, %bb.ht, %._crit_edge3364
  %.pre3788.be = phi i32 [ %.pre3788.pre.pre4100, %._crit_edge3364.thread ], [ %.pre3788.pre.pre, %._crit_edge3364 ], [ %.pre3788.pre.pre, %bb.ht ], [ %.pre3788.pre.pre, %middle.block4453 ], [ %.pre3788.pre.pre, %scalar.ph4442 ], [ %.pre3788.pre.pre, %scalar.ph4442.prol.loopexit ]
  %.be4676 = phi i32 [ %.ph4099, %._crit_edge3364.thread ], [ %.pre3818, %._crit_edge3364 ], [ %.pre3818, %bb.ht ], [ %.pre3818, %middle.block4453 ], [ %.pre3818, %scalar.ph4442 ], [ %.pre3818, %scalar.ph4442.prol.loopexit ]
  br label %.outer

scalar.ph4442.preheader:                          ; preds = %vector.memcheck4434, %.lr.ph3368, %middle.block4453
  %indvars.iv3717.ph = phi i64 [ 2, %vector.memcheck4434 ], [ 2, %.lr.ph3368 ], [ %i.eqm, %middle.block4453 ] ; 4 uses
  %i.eqy = sub nsw i64 %wide.trip.count3720, %indvars.iv3717.ph
  %xtraiter4725 = and i64 %i.eqy, 3               ; 2 uses
  %lcmp.mod4726.not = icmp eq i64 %xtraiter4725, 0
  br i1 %lcmp.mod4726.not, label %scalar.ph4442.prol.loopexit, label %scalar.ph4442.prol

scalar.ph4442.prol:                               ; preds = %scalar.ph4442.preheader, %scalar.ph4442.prol
  %indvars.iv3717.prol = phi i64 [ %indvars.iv.next3718.prol, %scalar.ph4442.prol ], [ %indvars.iv3717.ph, %scalar.ph4442.preheader ] ; 4 uses
  %prol.iter4727 = phi i64 [ %prol.iter4727.next, %scalar.ph4442.prol ], [ 0, %scalar.ph4442.preheader ]
  %i.eqz = add nsw i64 %indvars.iv3717.prol, %i.eqb ; 2 uses
  %gep4141.prol = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.eqz
  %i.era = load double, ptr %gep4141.prol, align 8, !tbaa !9
  %i.erb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eqz
  store double %i.era, ptr %i.erb, align 8, !tbaa !9
  %gep4143.prol = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv3717.prol
  %i.erc = load double, ptr %gep4143.prol, align 8, !tbaa !9
  %i.erd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3717.prol
  store double %i.erc, ptr %i.erd, align 8, !tbaa !9
  %indvars.iv.next3718.prol = add nuw nsw i64 %indvars.iv3717.prol, 1 ; 2 uses
  %prol.iter4727.next = add i64 %prol.iter4727, 1 ; 2 uses
  %prol.iter4727.cmp.not = icmp eq i64 %prol.iter4727.next, %xtraiter4725
  br i1 %prol.iter4727.cmp.not, label %scalar.ph4442.prol.loopexit, label %scalar.ph4442.prol, !llvm.loop !178

scalar.ph4442.prol.loopexit:                      ; preds = %scalar.ph4442.prol, %scalar.ph4442.preheader
  %indvars.iv3717.unr = phi i64 [ %indvars.iv3717.ph, %scalar.ph4442.preheader ], [ %indvars.iv.next3718.prol, %scalar.ph4442.prol ]
  %i.ere = sub nsw i64 %indvars.iv3717.ph, %wide.trip.count3720
  %i.erf = icmp ugt i64 %i.ere, -4
  br i1 %i.erf, label %.outer.backedge, label %scalar.ph4442

scalar.ph4442:                                    ; preds = %scalar.ph4442.prol.loopexit, %scalar.ph4442
  %indvars.iv3717 = phi i64 [ %indvars.iv.next3718.3, %scalar.ph4442 ], [ %indvars.iv3717.unr, %scalar.ph4442.prol.loopexit ] ; 8 uses
  %i.erg = add nsw i64 %indvars.iv3717, %i.eqb    ; 2 uses
  %gep4141 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.erg
  %i.erh = load double, ptr %gep4141, align 8, !tbaa !9
  %i.eri = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.erg
  store double %i.erh, ptr %i.eri, align 8, !tbaa !9
  %gep4143 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv3717
  %i.erj = load double, ptr %gep4143, align 8, !tbaa !9
  %i.erk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3717
  store double %i.erj, ptr %i.erk, align 8, !tbaa !9
  %indvars.iv.next3718 = add nuw nsw i64 %indvars.iv3717, 1 ; 2 uses
  %i.erl = add nsw i64 %indvars.iv.next3718, %i.eqb ; 2 uses
  %gep4141.1 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.erl
  %i.erm = load double, ptr %gep4141.1, align 8, !tbaa !9
  %i.ern = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.erl
  store double %i.erm, ptr %i.ern, align 8, !tbaa !9
  %gep4143.1 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv.next3718
  %i.ero = load double, ptr %gep4143.1, align 8, !tbaa !9
  %i.erp = getelementptr [8 x i8], ptr %11, i64 %indvars.iv3717
  store double %i.ero, ptr %i.erp, align 8, !tbaa !9
  %indvars.iv.next3718.1 = add nuw nsw i64 %indvars.iv3717, 2 ; 3 uses
  %i.erq = add nsw i64 %indvars.iv.next3718.1, %i.eqb ; 2 uses
  %gep4141.2 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.erq
  %i.err = load double, ptr %gep4141.2, align 8, !tbaa !9
  %i.ers = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.erq
  store double %i.err, ptr %i.ers, align 8, !tbaa !9
  %gep4143.2 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv.next3718.1
  %i.ert = load double, ptr %gep4143.2, align 8, !tbaa !9
  %i.eru = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3718.1
  store double %i.ert, ptr %i.eru, align 8, !tbaa !9
  %indvars.iv.next3718.2 = add nuw nsw i64 %indvars.iv3717, 3 ; 3 uses
  %i.erv = add nsw i64 %indvars.iv.next3718.2, %i.eqb ; 2 uses
  %gep4141.3 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.erv
  %i.erw = load double, ptr %gep4141.3, align 8, !tbaa !9
  %i.erx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.erv
  store double %i.erw, ptr %i.erx, align 8, !tbaa !9
  %gep4143.3 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv.next3718.2
  %i.ery = load double, ptr %gep4143.3, align 8, !tbaa !9
  %i.erz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3718.2
  store double %i.ery, ptr %i.erz, align 8, !tbaa !9
  %indvars.iv.next3718.3 = add nuw nsw i64 %indvars.iv3717, 4 ; 2 uses
  %exitcond3721.not.3 = icmp eq i64 %indvars.iv.next3718.3, %wide.trip.count3720
  br i1 %exitcond3721.not.3, label %.outer.backedge, label %scalar.ph4442, !llvm.loop !179

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
!149 = distinct !{!149, !14, !16, !17}
!150 = distinct !{!150, !12}
!151 = distinct !{!151, !14, !16, !17}
!152 = distinct !{!152, !14, !16, !17}
!153 = distinct !{!153, !12}
!154 = distinct !{!154, !14, !16}
!155 = distinct !{!155, !12}
!156 = distinct !{!156, !14}
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
!177 = distinct !{!177, !14, !16, !17}
!178 = distinct !{!178, !12}
!179 = distinct !{!179, !14, !16}
end_hunk_2
