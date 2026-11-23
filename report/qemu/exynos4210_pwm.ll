Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/exynos4210_pwm?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@exynos4210_pwm_tick:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %.not26 = icmp eq i32 %i.c, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not27.not = icmp eq i32 %i.c, 0
  %i.q = select i1 %.not27.not, i32 0, i32 4
  %i.r = shl i32 %i.c, 2
  %i.s = add i32 %i.q, %i.r
  %i.t = shl nuw i32 8, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ %i.t, %bb.d ], [ 4194304, %bb.c ]
  %i.u = and i32 %i.p, %.sink
  %.0.not = icmp eq i32 %i.u, 0
  br i1 %.0.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.w = zext i32 %i.c to i64
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load i32, ptr %i.aa, align 16
  %i.ac = zext i32 %i.ab to i64
  tail call void @ptimer_set_count(ptr noundef %i.z, i64 noundef %i.ac) #2
  %i.ad = load ptr, ptr %i.y, align 8
  tail call void @ptimer_run(ptr noundef %i.ad, i32 noundef 1) #2
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.not28.not = icmp eq i32 %i.c, 0
  %i.ae = select i1 %.not28.not, i32 0, i32 4
  %i.af = shl i32 %i.c, 2
  %i.ag = add i32 %i.ae, %i.af
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = xor i32 %i.ah, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.ak = and i32 %i.p, %i.ai
  store i32 %i.ak, ptr %i.aj, align 8
  %i.al = zext i32 %i.c to i64
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1128
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void @ptimer_stop(ptr noundef %i.ao) #2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ptimer_set_count(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ptimer_run(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_stop(ptr noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @exynos4210_pwm_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  switch i64 %1, label %bb.i [
    i64 0, label %bb.b
    i64 4, label %bb.b
    i64 8, label %bb.c
    i64 12, label %bb.d
    i64 24, label %bb.d
    i64 36, label %bb.d
    i64 48, label %bb.d
    i64 60, label %bb.d
    i64 16, label %bb.e
    i64 28, label %bb.e
    i64 40, label %bb.e
    i64 52, label %bb.e
    i64 68, label %bb.h
    i64 64, label %bb.g
    i64 20, label %bb.f
    i64 32, label %bb.f
    i64 44, label %bb.f
    i64 56, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = lshr i64 %1, 2
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.f = load i32, ptr %i.e, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.g = trunc nuw nsw i64 %1 to i8
  %.lhs.trunc = add nsw i8 %i.g, -12
  %i.h = udiv i8 %.lhs.trunc, 12
  %.zext = zext nneg i8 %i.h to i64
  %i.i = getelementptr [48 x i8], ptr %0, i64 %.zext
  %i.j = getelementptr i8, ptr %i.i, i64 1136
  %i.k = load i32, ptr %i.j, align 16
  br label %bb.k

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.l = trunc nuw nsw i64 %1 to i8
  %.lhs.trunc19 = add nsw i8 %i.l, -16
  %i.m = udiv i8 %.lhs.trunc19, 12
  %.zext20 = zext nneg i8 %i.m to i64
  %i.n = getelementptr [48 x i8], ptr %0, i64 %.zext20
  %i.o = getelementptr i8, ptr %i.n, i64 1140
  %i.p = load i32, ptr %i.o, align 4
  br label %bb.k

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.q = trunc nuw nsw i64 %1 to i8
  %.lhs.trunc21 = add nsw i8 %i.q, -20
  %i.r = udiv i8 %.lhs.trunc21, 12
  %.zext22 = zext nneg i8 %i.r to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.s = phi i64 [ %.zext22, %bb.f ], [ 4, %bb.a ]
  %i.t = getelementptr [48 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 1128
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i64 @ptimer_get_count(ptr noundef %i.v) #2
  %i.x = trunc i64 %i.w to i32
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.z = load i32, ptr %i.y, align 4
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.aa = load i32, ptr @qemu_loglevel, align 4
  %i.ab = and i32 %i.aa, 2048
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, i64 noundef %1) #2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %bb.i ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.p, %bb.e ], [ %i.x, %bb.g ], [ %i.z, %bb.h ]
  %i.ac = zext i32 %.0 to i64
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @exynos4210_pwm_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  switch i64 %1, label %bb.ay [
    i64 0, label %bb.b
    i64 4, label %bb.b
    i64 8, label %.preheader
    i64 12, label %bb.al
    i64 24, label %bb.al
    i64 36, label %bb.al
    i64 48, label %bb.al
    i64 60, label %bb.al
    i64 16, label %bb.am
    i64 28, label %bb.am
    i64 40, label %bb.am
    i64 52, label %bb.am
    i64 68, label %bb.an
  ]

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.c) #2
  %i.d = and i64 %2, 2
  %i.e = load i32, ptr %i.a, align 8              ; 2 uses
  %i.f = and i32 %i.e, 2
  %i.g = zext nneg i32 %i.f to i64
  %i.h = icmp samesign ugt i64 %i.d, %i.g
  br i1 %i.h, label %bb.h, label %bb.i

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.i = trunc i64 %2 to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 6 uses
  %i.k = lshr i64 %1, 2
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  store i32 %i.i, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.p) #2
  %i.q = load i32, ptr %i.m, align 16             ; 3 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 16
  %i.v = icmp ugt i32 %i.q, 1
  %4 = load i32, ptr %i.j, align 16               ; 2 uses
  %5 = lshr i32 %4, 8
  %.sink.i = select i1 %i.v, i32 %5, i32 %4
  %6 = and i32 %.sink.i, 255
  %7 = add nuw nsw i32 %6, 1
  %i.w = load i32, ptr %i.n, align 4
  %8 = shl i32 %i.q, 2
  %9 = lshr i32 %i.w, %8
  %10 = and i32 %9, 15
  %11 = shl nuw nsw i32 %7, %10
  %storemerge.i = udiv i32 24000000, %11          ; 3 uses
  store i32 %storemerge.i, ptr %i.t, align 16
  %.not.i = icmp eq i32 %i.u, %storemerge.i
  br i1 %.not.i, label %exynos4210_pwm_update_freq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @ptimer_set_freq(ptr noundef %i.y, i32 noundef %storemerge.i) #2
  br label %exynos4210_pwm_update_freq.exit

exynos4210_pwm_update_freq.exit:                  ; preds = %bb.b, %bb.c
  %i.z = load ptr, ptr %i.o, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.z) #2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.ac) #2
  %i.ad = load i32, ptr %i.aa, align 16           ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 16
  %i.ai = icmp ugt i32 %i.ad, 1
  %i.aj = load i32, ptr %i.j, align 16            ; 2 uses
  %12 = lshr i32 %i.aj, 8
  %.sink.i.1 = select i1 %i.ai, i32 %12, i32 %i.aj
  %13 = and i32 %.sink.i.1, 255
  %14 = add nuw nsw i32 %13, 1
  %15 = load i32, ptr %i.n, align 4
  %16 = shl i32 %i.ad, 2
  %17 = lshr i32 %15, %16
  %18 = and i32 %17, 15
  %19 = shl nuw nsw i32 %14, %18
  %storemerge.i.1 = udiv i32 24000000, %19        ; 3 uses
  store i32 %storemerge.i.1, ptr %i.ag, align 16
  %.not.i.1 = icmp eq i32 %i.ah, %storemerge.i.1
  br i1 %.not.i.1, label %exynos4210_pwm_update_freq.exit.1, label %bb.d

bb.d:                                             ; preds = %exynos4210_pwm_update_freq.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void @ptimer_set_freq(ptr noundef %i.al, i32 noundef %storemerge.i.1) #2
  br label %exynos4210_pwm_update_freq.exit.1

exynos4210_pwm_update_freq.exit.1:                ; preds = %bb.d, %exynos4210_pwm_update_freq.exit
  %i.am = load ptr, ptr %i.ab, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.am) #2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.ap) #2
  %i.aq = load i32, ptr %i.an, align 16           ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = load i32, ptr %i.at, align 16
  %i.av = icmp ugt i32 %i.aq, 1
  %i.aw = load i32, ptr %i.j, align 16            ; 2 uses
  %20 = lshr i32 %i.aw, 8
  %.sink.i.2 = select i1 %i.av, i32 %20, i32 %i.aw
  %21 = and i32 %.sink.i.2, 255
  %22 = add nuw nsw i32 %21, 1
  %23 = load i32, ptr %i.n, align 4
  %24 = shl i32 %i.aq, 2
  %25 = lshr i32 %23, %24
  %26 = and i32 %25, 15
  %27 = shl nuw nsw i32 %22, %26
  %storemerge.i.2 = udiv i32 24000000, %27        ; 3 uses
  store i32 %storemerge.i.2, ptr %i.at, align 16
  %.not.i.2 = icmp eq i32 %i.au, %storemerge.i.2
  br i1 %.not.i.2, label %exynos4210_pwm_update_freq.exit.2, label %bb.e

bb.e:                                             ; preds = %exynos4210_pwm_update_freq.exit.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void @ptimer_set_freq(ptr noundef %i.ay, i32 noundef %storemerge.i.2) #2
  br label %exynos4210_pwm_update_freq.exit.2

exynos4210_pwm_update_freq.exit.2:                ; preds = %bb.e, %exynos4210_pwm_update_freq.exit.1
  %i.az = load ptr, ptr %i.ao, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.az) #2
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.bc) #2
  %i.bd = load i32, ptr %i.ba, align 16           ; 3 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 16
  %i.bi = icmp ugt i32 %i.bd, 1
  %i.bj = load i32, ptr %i.j, align 16            ; 2 uses
  %28 = lshr i32 %i.bj, 8
  %.sink.i.3 = select i1 %i.bi, i32 %28, i32 %i.bj
  %29 = and i32 %.sink.i.3, 255
  %30 = add nuw nsw i32 %29, 1
  %31 = load i32, ptr %i.n, align 4
  %32 = shl i32 %i.bd, 2
  %33 = lshr i32 %31, %32
  %34 = and i32 %33, 15
  %35 = shl nuw nsw i32 %30, %34
  %storemerge.i.3 = udiv i32 24000000, %35        ; 3 uses
  store i32 %storemerge.i.3, ptr %i.bg, align 16
  %.not.i.3 = icmp eq i32 %i.bh, %storemerge.i.3
  br i1 %.not.i.3, label %exynos4210_pwm_update_freq.exit.3, label %bb.f

bb.f:                                             ; preds = %exynos4210_pwm_update_freq.exit.2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void @ptimer_set_freq(ptr noundef %i.bl, i32 noundef %storemerge.i.3) #2
  br label %exynos4210_pwm_update_freq.exit.3

exynos4210_pwm_update_freq.exit.3:                ; preds = %bb.f, %exynos4210_pwm_update_freq.exit.2
  %i.bm = load ptr, ptr %i.bb, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.bm) #2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.bp) #2
  %i.bq = load i32, ptr %i.bn, align 16           ; 3 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 16
  %i.bv = icmp ugt i32 %i.bq, 1
  %i.bw = load i32, ptr %i.j, align 16            ; 2 uses
  %36 = lshr i32 %i.bw, 8
  %.sink.i.4 = select i1 %i.bv, i32 %36, i32 %i.bw
  %37 = and i32 %.sink.i.4, 255
  %38 = add nuw nsw i32 %37, 1
  %39 = load i32, ptr %i.n, align 4
  %40 = shl i32 %i.bq, 2
  %41 = lshr i32 %39, %40
  %42 = and i32 %41, 15
  %43 = shl nuw nsw i32 %38, %42
  %storemerge.i.4 = udiv i32 24000000, %43        ; 3 uses
  store i32 %storemerge.i.4, ptr %i.bt, align 16
  %.not.i.4 = icmp eq i32 %i.bu, %storemerge.i.4
  br i1 %.not.i.4, label %exynos4210_pwm_update_freq.exit.4, label %bb.g

bb.g:                                             ; preds = %exynos4210_pwm_update_freq.exit.3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void @ptimer_set_freq(ptr noundef %i.by, i32 noundef %storemerge.i.4) #2
  br label %exynos4210_pwm_update_freq.exit.4

exynos4210_pwm_update_freq.exit.4:                ; preds = %bb.g, %exynos4210_pwm_update_freq.exit.3
  %i.bz = load ptr, ptr %i.bo, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.bz) #2
  br label %.loopexit

bb.h:                                             ; preds = %.preheader
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.cc = load i32, ptr %i.cb, align 16
  %i.cd = zext i32 %i.cc to i64
  tail call void @ptimer_set_count(ptr noundef %i.ca, i64 noundef %i.cd) #2
  %.pre82 = load i32, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader
  %i.ce = phi i32 [ %.pre82, %bb.h ], [ %i.e, %.preheader ]
  %i.cf = and i64 %2, 1                           ; 2 uses
  %i.cg = and i32 %i.ce, 1
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = icmp samesign ugt i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr %i.b, align 8
  tail call void @ptimer_run(ptr noundef %i.cj, i32 noundef 1) #2
  %.pre83 = load i32, ptr %i.a, align 8
  %.pre92 = and i32 %.pre83, 1
  %.pre93 = zext nneg i32 %.pre92 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi94 = phi i64 [ %.pre93, %bb.j ], [ %i.ch, %bb.i ]
  %i.ck = icmp samesign ult i64 %i.cf, %.pre-phi94
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.b, align 8
  tail call void @ptimer_stop(ptr noundef %i.cl) #2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cm = load ptr, ptr %i.b, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.cm) #2
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.co) #2
  %i.cp = and i64 %2, 512
  %i.cq = load i32, ptr %i.a, align 8             ; 2 uses
  %i.cr = and i32 %i.cq, 512
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = icmp samesign ugt i64 %i.cp, %i.cs
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = load ptr, ptr %i.cn, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.cw = load i32, ptr %i.cv, align 16
  %i.cx = zext i32 %i.cw to i64
  tail call void @ptimer_set_count(ptr noundef %i.cu, i64 noundef %i.cx) #2
  %.pre84 = load i32, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cy = phi i32 [ %.pre84, %bb.n ], [ %i.cq, %bb.m ]
  %i.cz = and i64 %2, 256                         ; 2 uses
  %i.da = and i32 %i.cy, 256
  %i.db = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dc = icmp samesign ugt i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dd = load ptr, ptr %i.cn, align 8
  tail call void @ptimer_run(ptr noundef %i.dd, i32 noundef 1) #2
  %.pre85 = load i32, ptr %i.a, align 8
  %.pre95 = and i32 %.pre85, 256
  %.pre97 = zext nneg i32 %.pre95 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi98 = phi i64 [ %.pre97, %bb.p ], [ %i.db, %bb.o ]
  %i.de = icmp samesign ult i64 %i.cz, %.pre-phi98
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.df = load ptr, ptr %i.cn, align 8
  tail call void @ptimer_stop(ptr noundef %i.df) #2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dg = load ptr, ptr %i.cn, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.dg) #2
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 5 uses
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.di) #2
  %i.dj = and i64 %2, 8192
  %i.dk = load i32, ptr %i.a, align 8             ; 2 uses
  %i.dl = and i32 %i.dk, 8192
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = icmp samesign ugt i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.do = load ptr, ptr %i.dh, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.dq = load i32, ptr %i.dp, align 16
  %i.dr = zext i32 %i.dq to i64
  tail call void @ptimer_set_count(ptr noundef %i.do, i64 noundef %i.dr) #2
  %.pre86 = load i32, ptr %i.a, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ds = phi i32 [ %.pre86, %bb.t ], [ %i.dk, %bb.s ]
  %i.dt = and i64 %2, 4096                        ; 2 uses
  %i.du = and i32 %i.ds, 4096
  %i.dv = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dw = icmp samesign ugt i64 %i.dt, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dx = load ptr, ptr %i.dh, align 8
  tail call void @ptimer_run(ptr noundef %i.dx, i32 noundef 1) #2
  %.pre87 = load i32, ptr %i.a, align 8
  %.pre99 = and i32 %.pre87, 4096
  %.pre101 = zext nneg i32 %.pre99 to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre-phi102 = phi i64 [ %.pre101, %bb.v ], [ %i.dv, %bb.u ]
  %i.dy = icmp samesign ult i64 %i.dt, %.pre-phi102
  br i1 %i.dy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dz = load ptr, ptr %i.dh, align 8
  tail call void @ptimer_stop(ptr noundef %i.dz) #2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ea = load ptr, ptr %i.dh, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.ea) #2
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 5 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.ec) #2
  %i.ed = and i64 %2, 131072
  %i.ee = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ef = and i32 %i.ee, 131072
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = icmp samesign ugt i64 %i.ed, %i.eg
  br i1 %i.eh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ei = load ptr, ptr %i.eb, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.ek = load i32, ptr %i.ej, align 16
  %i.el = zext i32 %i.ek to i64
  tail call void @ptimer_set_count(ptr noundef %i.ei, i64 noundef %i.el) #2
  %.pre88 = load i32, ptr %i.a, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.em = phi i32 [ %.pre88, %bb.z ], [ %i.ee, %bb.y ]
  %i.en = and i64 %2, 65536                       ; 2 uses
  %i.eo = and i32 %i.em, 65536
  %i.ep = zext nneg i32 %i.eo to i64              ; 2 uses
  %i.eq = icmp samesign ugt i64 %i.en, %i.ep
  br i1 %i.eq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.er = load ptr, ptr %i.eb, align 8
  tail call void @ptimer_run(ptr noundef %i.er, i32 noundef 1) #2
  %.pre89 = load i32, ptr %i.a, align 8
  %.pre103 = and i32 %.pre89, 65536
  %.pre105 = zext nneg i32 %.pre103 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre-phi106 = phi i64 [ %.pre105, %bb.ab ], [ %i.ep, %bb.aa ]
  %i.es = icmp samesign ult i64 %i.en, %.pre-phi106
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.et = load ptr, ptr %i.eb, align 8
  tail call void @ptimer_stop(ptr noundef %i.et) #2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.eu = load ptr, ptr %i.eb, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.eu) #2
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 5 uses
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.ew) #2
  %i.ex = and i64 %2, 2097152
  %i.ey = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ez = and i32 %i.ey, 2097152
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = icmp samesign ugt i64 %i.ex, %i.fa
  br i1 %i.fb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fc = load ptr, ptr %i.ev, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.fe = load i32, ptr %i.fd, align 16
  %i.ff = zext i32 %i.fe to i64
  tail call void @ptimer_set_count(ptr noundef %i.fc, i64 noundef %i.ff) #2
  %.pre90 = load i32, ptr %i.a, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fg = phi i32 [ %.pre90, %bb.af ], [ %i.ey, %bb.ae ]
  %i.fh = and i64 %2, 1048576                     ; 2 uses
  %i.fi = and i32 %i.fg, 1048576
  %i.fj = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fk = icmp samesign ugt i64 %i.fh, %i.fj
  br i1 %i.fk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fl = load ptr, ptr %i.ev, align 8
  tail call void @ptimer_run(ptr noundef %i.fl, i32 noundef 1) #2
  %.pre91 = load i32, ptr %i.a, align 8
  %.pre107 = and i32 %.pre91, 1048576
  %.pre109 = zext nneg i32 %.pre107 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pre-phi110 = phi i64 [ %.pre109, %bb.ah ], [ %i.fj, %bb.ag ]
  %i.fm = icmp samesign ult i64 %i.fh, %.pre-phi110
  br i1 %i.fm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fn = load ptr, ptr %i.ev, align 8
  tail call void @ptimer_stop(ptr noundef %i.fn) #2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fo = load ptr, ptr %i.ev, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.fo) #2
  %i.fp = trunc i64 %2 to i32
  store i32 %i.fp, ptr %i.a, align 8
  br label %.loopexit

bb.al:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.fq = trunc nuw nsw i64 %1 to i8
  %.lhs.trunc = add nsw i8 %i.fq, -12
  %i.fr = udiv i8 %.lhs.trunc, 12
  %.zext = zext nneg i8 %i.fr to i64
  %i.fs = trunc i64 %2 to i32
  %i.ft = getelementptr [48 x i8], ptr %0, i64 %.zext
  %i.fu = getelementptr i8, ptr %i.ft, i64 1136
  store i32 %i.fs, ptr %i.fu, align 16
  br label %.loopexit

bb.am:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.fv = trunc nuw nsw i64 %1 to i8
  %.lhs.trunc71 = add nsw i8 %i.fv, -16
  %i.fw = udiv i8 %.lhs.trunc71, 12
  %.zext72 = zext nneg i8 %i.fw to i64
  %i.fx = trunc i64 %2 to i32
  %i.fy = getelementptr [48 x i8], ptr %0, i64 %.zext72
  %i.fz = getelementptr i8, ptr %i.fy, i64 1140
  store i32 %i.fx, ptr %i.fz, align 4
  br label %.loopexit

bb.an:                                            ; preds = %bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 6 uses
  %i.gb = load i32, ptr %i.ga, align 4            ; 3 uses
  %i.gc = and i32 %i.gb, 992
  %i.gd = trunc i64 %2 to i32                     ; 2 uses
  %i.ge = and i32 %i.gd, 31
  %i.gf = or disjoint i32 %i.gc, %i.ge
  %i.gg = and i32 %i.gd, 992
  %i.gh = xor i32 %i.gg, -1
  %i.gi = and i32 %i.gf, %i.gh                    ; 6 uses
  %i.gj = and i32 %i.gi, 32
  %i.gk = and i32 %i.gb, 32
  %i.gl = icmp samesign ult i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.gn = load ptr, ptr %i.gm, align 8
  tail call void @qemu_set_irq(ptr noundef %i.gn, i32 noundef 0) #2
  %.pre = load i32, ptr %i.ga, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.go = phi i32 [ %i.gb, %bb.an ], [ %.pre, %bb.ao ] ; 2 uses
  %i.gp = and i32 %i.gi, 64
  %i.gq = and i32 %i.go, 64
  %i.gr = icmp samesign ult i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.gt = load ptr, ptr %i.gs, align 8
  tail call void @qemu_set_irq(ptr noundef %i.gt, i32 noundef 0) #2
  %.pre79 = load i32, ptr %i.ga, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gu = phi i32 [ %.pre79, %bb.aq ], [ %i.go, %bb.ap ] ; 2 uses
  %i.gv = and i32 %i.gi, 128
  %i.gw = and i32 %i.gu, 128
  %i.gx = icmp samesign ult i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.gz = load ptr, ptr %i.gy, align 8
  tail call void @qemu_set_irq(ptr noundef %i.gz, i32 noundef 0) #2
  %.pre80 = load i32, ptr %i.ga, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ha = phi i32 [ %.pre80, %bb.as ], [ %i.gu, %bb.ar ] ; 2 uses
  %i.hb = and i32 %i.gi, 256
  %i.hc = and i32 %i.ha, 256
  %i.hd = icmp samesign ult i32 %i.hb, %i.hc
  br i1 %i.hd, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.hf = load ptr, ptr %i.he, align 8
  tail call void @qemu_set_irq(ptr noundef %i.hf, i32 noundef 0) #2
  %.pre81 = load i32, ptr %i.ga, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hg = phi i32 [ %.pre81, %bb.au ], [ %i.ha, %bb.at ]
  %i.hh = and i32 %i.gi, 512
  %i.hi = and i32 %i.hg, 512
  %i.hj = icmp samesign ult i32 %i.hh, %i.hi
  br i1 %i.hj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.hl = load ptr, ptr %i.hk, align 8
  tail call void @qemu_set_irq(ptr noundef %i.hl, i32 noundef 0) #2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %i.gi, ptr %i.ga, align 4
  br label %.loopexit

bb.ay:                                            ; preds = %bb.a
  %i.hm = load i32, ptr @qemu_loglevel, align 4
  %i.hn = and i32 %i.hm, 2048
  %.not = icmp eq i32 %i.hn, 0
  br i1 %.not, label %.loopexit, label %bb.az, !prof !7

bb.az:                                            ; preds = %bb.ay
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i64 noundef %1) #2
  br label %.loopexit

.loopexit:                                        ; preds = %exynos4210_pwm_update_freq.exit.4, %bb.ay, %bb.az, %bb.ax, %bb.am, %bb.al, %bb.ak
  ret void
}

declare i64 @ptimer_get_count(ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare void @ptimer_transaction_begin(ptr noundef) local_unnamed_addr #1

declare void @ptimer_transaction_commit(ptr noundef) local_unnamed_addr #1

declare void @ptimer_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_free(ptr noundef) local_unnamed_addr #1

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @exynos4210_pwm_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 106, ptr noundef nonnull @__func__.EXYNOS4210_PWM) #2 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1092 ; 5 uses
  store <4 x i32> <i32 257, i32 0, i32 0, i32 0>, ptr %i.b, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1140
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  store i32 0, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1128 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.h) #2
  %i.i = load i32, ptr %i.d, align 16             ; 3 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 16
  %i.n = icmp ugt i32 %i.i, 1
  %1 = load i32, ptr %i.b, align 16               ; 2 uses
  %2 = lshr i32 %1, 8
  %.sink.i = select i1 %i.n, i32 %2, i32 %1
  %3 = and i32 %.sink.i, 255
  %4 = add nuw nsw i32 %3, 1
  %i.o = load i32, ptr %i.c, align 4
  %5 = shl i32 %i.i, 2
  %6 = lshr i32 %i.o, %5
  %7 = and i32 %6, 15
  %8 = shl nuw nsw i32 %4, %7
  %storemerge.i = udiv i32 24000000, %8           ; 3 uses
  store i32 %storemerge.i, ptr %i.l, align 16
  %.not.i = icmp eq i32 %i.m, %storemerge.i
  br i1 %.not.i, label %exynos4210_pwm_update_freq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @ptimer_set_freq(ptr noundef %i.q, i32 noundef %storemerge.i) #2
  br label %exynos4210_pwm_update_freq.exit

exynos4210_pwm_update_freq.exit:                  ; preds = %bb.a, %bb.b
  %i.r = load ptr, ptr %i.g, align 8
  tail call void @ptimer_stop(ptr noundef %i.r) #2
  %i.s = load ptr, ptr %i.g, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.s) #2
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1188
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  store i32 0, ptr %i.v, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1176 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.x) #2
  %i.y = load i32, ptr %i.t, align 16             ; 3 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 16
  %i.ad = icmp ugt i32 %i.y, 1
  %i.ae = load i32, ptr %i.b, align 16            ; 2 uses
  %9 = lshr i32 %i.ae, 8
  %.sink.i.1 = select i1 %i.ad, i32 %9, i32 %i.ae
  %10 = and i32 %.sink.i.1, 255
  %11 = add nuw nsw i32 %10, 1
  %12 = load i32, ptr %i.c, align 4
  %13 = shl i32 %i.y, 2
  %14 = lshr i32 %12, %13
  %15 = and i32 %14, 15
  %16 = shl nuw nsw i32 %11, %15
  %storemerge.i.1 = udiv i32 24000000, %16        ; 3 uses
  store i32 %storemerge.i.1, ptr %i.ab, align 16
  %.not.i.1 = icmp eq i32 %i.ac, %storemerge.i.1
  br i1 %.not.i.1, label %exynos4210_pwm_update_freq.exit.1, label %bb.c

bb.c:                                             ; preds = %exynos4210_pwm_update_freq.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @ptimer_set_freq(ptr noundef %i.ag, i32 noundef %storemerge.i.1) #2
  br label %exynos4210_pwm_update_freq.exit.1

exynos4210_pwm_update_freq.exit.1:                ; preds = %bb.c, %exynos4210_pwm_update_freq.exit
  %i.ah = load ptr, ptr %i.w, align 8
  tail call void @ptimer_stop(ptr noundef %i.ah) #2
  %i.ai = load ptr, ptr %i.w, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.ai) #2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1236
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  store i32 0, ptr %i.al, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1224 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.an) #2
  %i.ao = load i32, ptr %i.aj, align 16           ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 16
  %i.at = icmp ugt i32 %i.ao, 1
  %i.au = load i32, ptr %i.b, align 16            ; 2 uses
  %17 = lshr i32 %i.au, 8
  %.sink.i.2 = select i1 %i.at, i32 %17, i32 %i.au
  %18 = and i32 %.sink.i.2, 255
  %19 = add nuw nsw i32 %18, 1
  %20 = load i32, ptr %i.c, align 4
  %21 = shl i32 %i.ao, 2
  %22 = lshr i32 %20, %21
  %23 = and i32 %22, 15
  %24 = shl nuw nsw i32 %19, %23
  %storemerge.i.2 = udiv i32 24000000, %24        ; 3 uses
  store i32 %storemerge.i.2, ptr %i.ar, align 16
  %.not.i.2 = icmp eq i32 %i.as, %storemerge.i.2
  br i1 %.not.i.2, label %exynos4210_pwm_update_freq.exit.2, label %bb.d

bb.d:                                             ; preds = %exynos4210_pwm_update_freq.exit.1
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void @ptimer_set_freq(ptr noundef %i.aw, i32 noundef %storemerge.i.2) #2
  br label %exynos4210_pwm_update_freq.exit.2

exynos4210_pwm_update_freq.exit.2:                ; preds = %bb.d, %exynos4210_pwm_update_freq.exit.1
  %i.ax = load ptr, ptr %i.am, align 8
  tail call void @ptimer_stop(ptr noundef %i.ax) #2
  %i.ay = load ptr, ptr %i.am, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.ay) #2
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 1284
  store i32 0, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  store i32 0, ptr %i.bb, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 1272 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.bd) #2
  %i.be = load i32, ptr %i.az, align 16           ; 3 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 16
  %i.bj = icmp ugt i32 %i.be, 1
  %i.bk = load i32, ptr %i.b, align 16            ; 2 uses
  %25 = lshr i32 %i.bk, 8
  %.sink.i.3 = select i1 %i.bj, i32 %25, i32 %i.bk
  %26 = and i32 %.sink.i.3, 255
  %27 = add nuw nsw i32 %26, 1
  %28 = load i32, ptr %i.c, align 4
  %29 = shl i32 %i.be, 2
  %30 = lshr i32 %28, %29
  %31 = and i32 %30, 15
  %32 = shl nuw nsw i32 %27, %31
  %storemerge.i.3 = udiv i32 24000000, %32        ; 3 uses
  store i32 %storemerge.i.3, ptr %i.bh, align 16
  %.not.i.3 = icmp eq i32 %i.bi, %storemerge.i.3
  br i1 %.not.i.3, label %exynos4210_pwm_update_freq.exit.3, label %bb.e

bb.e:                                             ; preds = %exynos4210_pwm_update_freq.exit.2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void @ptimer_set_freq(ptr noundef %i.bm, i32 noundef %storemerge.i.3) #2
  br label %exynos4210_pwm_update_freq.exit.3

exynos4210_pwm_update_freq.exit.3:                ; preds = %bb.e, %exynos4210_pwm_update_freq.exit.2
  %i.bn = load ptr, ptr %i.bc, align 8
  tail call void @ptimer_stop(ptr noundef %i.bn) #2
  %i.bo = load ptr, ptr %i.bc, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.bo) #2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 1332
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1328
  store i32 0, ptr %i.br, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 1320 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void @ptimer_transaction_begin(ptr noundef %i.bt) #2
  %i.bu = load i32, ptr %i.bp, align 16           ; 3 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 16
  %i.bz = icmp ugt i32 %i.bu, 1
  %i.ca = load i32, ptr %i.b, align 16            ; 2 uses
  %33 = lshr i32 %i.ca, 8
  %.sink.i.4 = select i1 %i.bz, i32 %33, i32 %i.ca
  %34 = and i32 %.sink.i.4, 255
  %35 = add nuw nsw i32 %34, 1
  %36 = load i32, ptr %i.c, align 4
  %37 = shl i32 %i.bu, 2
  %38 = lshr i32 %36, %37
  %39 = and i32 %38, 15
  %40 = shl nuw nsw i32 %35, %39
  %storemerge.i.4 = udiv i32 24000000, %40        ; 3 uses
  store i32 %storemerge.i.4, ptr %i.bx, align 16
  %.not.i.4 = icmp eq i32 %i.by, %storemerge.i.4
  br i1 %.not.i.4, label %exynos4210_pwm_update_freq.exit.4, label %bb.f

bb.f:                                             ; preds = %exynos4210_pwm_update_freq.exit.3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void @ptimer_set_freq(ptr noundef %i.cc, i32 noundef %storemerge.i.4) #2
  br label %exynos4210_pwm_update_freq.exit.4

exynos4210_pwm_update_freq.exit.4:                ; preds = %bb.f, %exynos4210_pwm_update_freq.exit.3
  %i.cd = load ptr, ptr %i.bs, align 8
  tail call void @ptimer_stop(ptr noundef %i.cd) #2
  %i.ce = load ptr, ptr %i.bs, align 8
  tail call void @ptimer_transaction_commit(ptr noundef %i.ce) #2
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
