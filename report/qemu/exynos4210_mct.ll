Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/exynos4210_mct?download=true
inline.NumInlined: 79
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@exynos4210_gcomp_find:bb.a

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, %i.i
  br i1 %i.ad, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not41.3 = icmp ugt i64 %i.ac, %.131.2
  %spec.select45.3 = select i1 %.not41.3, i32 %.129.2, i32 3
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.ae = sub nuw i64 %i.ac, %i.i
  %.not42.3 = icmp ugt i64 %i.ae, %.127.2
  %spec.select43.3 = select i1 %.not42.3, i32 %.1.2, i32 3
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %.129.3.ph = phi i32 [ %.129.2, %bb.o ], [ %spec.select45.3, %bb.n ]
  %.1.3.ph = phi i32 [ %spec.select43.3, %bb.o ], [ %.1.2, %bb.n ] ; 2 uses
  %i.af = icmp samesign ult i32 %.1.3.ph, 4
  %.0..02866 = select i1 %i.af, i32 %.1.3.ph, i32 %.129.3.ph
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %.not = icmp eq i32 %.133.2, 0
  %i.ag = icmp samesign ult i32 %.1.2, 4
  %.0..028 = select i1 %i.ag, i32 %.1.2, i32 %.129.2
  %spec.select = select i1 %.not, i32 -1, i32 %.0..028
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %i.ah = phi i32 [ %.0..02866, %.thread ], [ %spec.select, %bb.p ]
  ret i32 %i.ah
}

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @ptimer_get_count(ptr noundef) local_unnamed_addr #1

declare void @ptimer_set_count(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ptimer_run(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @exynos4210_ltick_set_cntb(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @exynos4210_ltick_cnt_stop(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not12 = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %.not12, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 @ptimer_get_count(ptr noundef %i.e) #4
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = tail call i64 @ptimer_get_count(ptr noundef %i.i) #4
  %i.k = sub i64 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.k, %i.m
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.n, %bb.e ], [ %i.p, %bb.f ]
  %i.q = load i32, ptr %i.b, align 4
  %.not14.i.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8
  br label %exynos4210_ltick_int_stop.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = sub i64 %i.u, %.0.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8
  %i.y = zext i32 %i.x to i64
  %i.z = udiv i64 %i.v, %i.y
  %i.aa = trunc i64 %i.z to i32
  br label %exynos4210_ltick_int_stop.exit

exynos4210_ltick_int_stop.exit:                   ; preds = %bb.h, %bb.i
  %.013.i.i = phi i32 [ %i.aa, %bb.i ], [ %i.s, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.013.i.i, ptr %i.ab, align 8
  store i32 0, ptr %i.b, align 4
  br label %bb.j

bb.j:                                             ; preds = %exynos4210_ltick_int_stop.exit, %bb.c
  %i.ac = add i32 %1, 1                           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ac, ptr %i.ad, align 8
  %i.ae = add i32 %2, 1                           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ae, ptr %i.af, align 4
  br i1 %.not, label %exynos4210_ltick_cnt_start.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %0, align 8
  %.not.i15 = icmp eq i32 %i.ag, 0
  br i1 %.not.i15, label %exynos4210_ltick_recalc_count.exit.i, label %exynos4210_ltick_cnt_start.exit

exynos4210_ltick_recalc_count.exit.i:             ; preds = %bb.k
  %i.ah = zext i32 %i.ac to i64
  %narrow.i.i = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 1)
  %i.ai = zext i32 %narrow.i.i to i64
  %.sink.i.i = mul nuw i64 %i.ai, %i.ah           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink.i.i, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ak, align 8
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sink.i.i, i64 4294967296) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %spec.select.i.i, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  tail call void @ptimer_set_count(ptr noundef %i.an, i64 noundef %spec.select.i.i) #4
  %i.ao = load ptr, ptr %i.am, align 8
  tail call void @ptimer_run(ptr noundef %i.ao, i32 noundef 1) #4
  store i32 1, ptr %0, align 8
  br label %exynos4210_ltick_cnt_start.exit

exynos4210_ltick_cnt_start.exit:                  ; preds = %exynos4210_ltick_recalc_count.exit.i, %bb.k, %bb.j
  br i1 %.not12, label %exynos4210_ltick_int_start.exit, label %bb.l

bb.l:                                             ; preds = %exynos4210_ltick_cnt_start.exit
  %i.ap = load i32, ptr %i.b, align 4
  %.not.i17 = icmp eq i32 %i.ap, 0
  br i1 %.not.i17, label %bb.m, label %exynos4210_ltick_int_start.exit

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.b, align 4
  br label %exynos4210_ltick_int_start.exit

exynos4210_ltick_int_start.exit:                  ; preds = %bb.m, %bb.l, %exynos4210_ltick_cnt_start.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @exynos4210_ltick_cnt_stop(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 @ptimer_get_count(ptr noundef %i.c) #4
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = tail call i64 @ptimer_get_count(ptr noundef %i.g) #4
  %i.i = sub i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.i, %i.k
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = sub i64 %i.p, %.0.i                      ; 3 uses
  %i.r = load i32, ptr %0, align 8
  %.not24.i = icmp eq i32 %i.r, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.not24.i.a = icmp eq i32 %.pre, 0              ; 2 uses
  br i1 %.not24.i, label %exynos4210_ltick_cnt_get_cnto.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = udiv i64 %i.q, %i.u
  %i.w = urem i64 %i.q, %i.u
  br i1 %.not24.i.a, label %exynos4210_ltick_cnt_get_cnto.exit.thread13, label %exynos4210_ltick_cnt_get_cnto.exit.thread

exynos4210_ltick_cnt_get_cnto.exit.thread13:      ; preds = %bb.f
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.x, ptr %i.y, align 4
  br label %bb.m

exynos4210_ltick_cnt_get_cnto.exit.thread:        ; preds = %bb.f
  %i.z = and i64 %i.v, 4294967295
  %i.aa = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %.sink16 = mul nuw i64 %i.aa, %i.u
  %i.ab = urem i64 %i.q, %.sink16
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ac, ptr %i.ad, align 4
  br label %bb.g

exynos4210_ltick_cnt_get_cnto.exit:               ; preds = %bb.e
  br i1 %.not24.i.a, label %bb.m, label %bb.g

bb.g:                                             ; preds = %exynos4210_ltick_cnt_get_cnto.exit.thread, %exynos4210_ltick_cnt_get_cnto.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = load ptr, ptr %i.b, align 8
  %i.ag = tail call i64 @ptimer_get_count(ptr noundef %i.af) #4
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = tail call i64 @ptimer_get_count(ptr noundef %i.aj) #4
  %i.al = sub i64 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.al, %i.an
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.ao, %bb.h ], [ %i.aq, %bb.i ]
  %i.ar = load i32, ptr %i.ae, align 4
  %.not14.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not14.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i32, ptr %i.as, align 8
  br label %exynos4210_ltick_int_stop.exit

bb.l:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.o, align 8
  %i.av = sub i64 %i.au, %.0.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = udiv i64 %i.av, %i.ay
  %i.ba = trunc i64 %i.az to i32
  br label %exynos4210_ltick_int_stop.exit

exynos4210_ltick_int_stop.exit:                   ; preds = %bb.k, %bb.l
  %.013.i.i = phi i32 [ %i.ba, %bb.l ], [ %i.at, %bb.k ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.013.i.i, ptr %i.bb, align 8
  store i32 0, ptr %i.ae, align 4
  br label %bb.m

bb.m:                                             ; preds = %exynos4210_ltick_cnt_get_cnto.exit.thread13, %exynos4210_ltick_int_stop.exit, %exynos4210_ltick_cnt_get_cnto.exit
  %i.bc = load ptr, ptr %i.b, align 8
  tail call void @ptimer_stop(ptr noundef %i.bc) #4
  store i32 0, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  ret void
}

declare void @ptimer_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @exynos4210_mct_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  switch i64 %1, label %bb.ag [
    i64 0, label %bb.b
    i64 256, label %bb.c
    i64 260, label %bb.c
    i64 272, label %bb.d
    i64 512, label %bb.e
    i64 528, label %bb.e
    i64 544, label %bb.e
    i64 560, label %bb.e
    i64 516, label %bb.e
    i64 532, label %bb.e
    i64 548, label %bb.e
    i64 564, label %bb.e
    i64 576, label %bb.f
    i64 580, label %bb.g
    i64 584, label %bb.h
    i64 588, label %bb.i
    i64 520, label %bb.j
    i64 536, label %bb.j
    i64 552, label %bb.j
    i64 568, label %bb.j
    i64 768, label %bb.k
    i64 776, label %bb.k
    i64 784, label %bb.k
    i64 1024, label %bb.k
    i64 1032, label %bb.k
    i64 1040, label %bb.k
    i64 772, label %bb.l
    i64 1028, label %bb.l
    i64 780, label %bb.v
    i64 1036, label %bb.v
    i64 788, label %bb.ab
    i64 1044, label %bb.ab
    i64 800, label %bb.ac
    i64 1056, label %bb.ac
    i64 816, label %bb.ad
    i64 1072, label %bb.ad
    i64 820, label %bb.ae
    i64 1076, label %bb.ae
    i64 832, label %bb.af
    i64 1088, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = load i32, ptr %i.a, align 16
  br label %exynos4210_ltick_cnt_get_cnto.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.c = shl nuw nsw i64 %1, 3
  %i.d = and i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 @ptimer_get_count(ptr noundef %i.f) #4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sub i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.j, %i.l
  %i.n = lshr i64 %i.m, %i.d
  %i.o = trunc i64 %i.n to i32
  br label %exynos4210_ltick_cnt_get_cnto.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.q = load i32, ptr %i.p, align 8
  br label %exynos4210_ltick_cnt_get_cnto.exit

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.r = shl nuw nsw i64 %1, 3
  %i.s = and i64 %i.r, 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.u = shl nuw nsw i64 %1, 28
  %i.v = add nsw i64 %i.u, -137438953472
  %i.w = lshr i64 %i.v, 32
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, %i.s
  %i.aa = trunc i64 %i.z to i32
  br label %exynos4210_ltick_cnt_get_cnto.exit

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.ac = load i32, ptr %i.ab, align 4
  br label %exynos4210_ltick_cnt_get_cnto.exit

bb.g:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ae = load i32, ptr %i.ad, align 8
  br label %exynos4210_ltick_cnt_get_cnto.exit

bb.h:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.ag = load i32, ptr %i.af, align 4
  br label %exynos4210_ltick_cnt_get_cnto.exit

bb.i:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.ai = load i32, ptr %i.ah, align 8
  br label %exynos4210_ltick_cnt_get_cnto.exit

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.ak = add nsw i64 %1, -520
  %i.al = lshr i64 %i.ak, 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  br label %exynos4210_ltick_cnt_get_cnto.exit

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ao = shl nuw nsw i64 %1, 24
  %i.ap = and i64 %i.ao, 64424509440
  %sext = add nsw i64 %i.ap, -12884901888
  %i.aq = lshr exact i64 %sext, 32
  %i.ar = getelementptr [120 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 1176
  %i.at = lshr i64 %1, 2
  %i.au = and i64 %i.at, 4611686018427386943
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  br label %exynos4210_ltick_cnt_get_cnto.exit

bb.l:                                             ; preds = %bb.a, %bb.a
  %i.ax = shl nuw nsw i64 %1, 24
  %i.ay = and i64 %i.ax, 64424509440
  %i.az = add nsw i64 %i.ay, -12884901888
  %i.ba = lshr exact i64 %i.az, 32
  %i.bb = getelementptr [120 x i8], ptr %0, i64 %i.ba ; 9 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 1112
  %i.bd = getelementptr i8, ptr %i.bb, i64 1160   ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call i64 @ptimer_get_count(ptr noundef %i.be) #4
end_hunk_0
