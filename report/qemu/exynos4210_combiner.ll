Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/exynos4210_combiner?download=true
inline.NumInlined: 20
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@exynos4210_combiner_init:bb.a
  tail call void @sysbus_init_irq(ptr noundef %i.c, ptr noundef nonnull %i.bi) #4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 1952
  tail call void @sysbus_init_irq(ptr noundef %i.c, ptr noundef nonnull %i.bj) #4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 1960
  tail call void @sysbus_init_irq(ptr noundef %i.c, ptr noundef nonnull %i.bk) #4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 1968
  tail call void @sysbus_init_irq(ptr noundef %i.c, ptr noundef nonnull %i.bl) #4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 1976
  tail call void @sysbus_init_irq(ptr noundef %i.c, ptr noundef nonnull %i.bm) #4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 1984
  tail call void @sysbus_init_irq(ptr noundef %i.c, ptr noundef nonnull %i.bn) #4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 1992
  tail call void @sysbus_init_irq(ptr noundef %i.c, ptr noundef nonnull %i.bo) #4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 816 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.bp, ptr noundef %0, ptr noundef nonnull @exynos4210_combiner_ops, ptr noundef %i.b, ptr noundef nonnull @.str.3, i64 noundef 264) #4
  tail call void @sysbus_init_mmio(ptr noundef %i.c, ptr noundef nonnull %i.bp) #4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @exynos4210_combiner_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #4 ; 3 uses
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @exynos4210_combiner_reset) #4
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @exynos4210_combiner_properties, i64 noundef 1) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_exynos4210_combiner, ptr %i.b, align 8
  ret void
}

declare void @qdev_init_gpio_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @exynos4210_combiner_handler(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = lshr i32 %1, 3                           ; 2 uses
  %i.b = trunc i32 %i.a to i8                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1484
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp ne i32 %i.d, 0
  %i.f = icmp ugt i8 %i.b, 15
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %1, 7
  %.not = icmp eq i32 %2, 0
  %i.h = shl nuw nsw i32 1, %i.g
  %.mask13 = and i32 %i.a, 255                    ; 3 uses
  %i.i = zext nneg i32 %.mask13 to i64            ; 3 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1089 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = trunc nuw i32 %i.h to i8                 ; 2 uses
  %i.n = xor i8 %i.m, -1
  %i.o = and i8 %i.l, %i.n
  %i.p = or i8 %i.l, %i.m
  %.sink = select i1 %.not, i8 %i.o, i8 %i.p
  store i8 %.sink, ptr %i.k, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.i ; 2 uses
  %i.s = load i8, ptr %i.r, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = and i8 %i.u, %i.s
  %.not.i = icmp eq i8 %i.v, 0
  %i.w = icmp ugt i8 %i.b, 31                     ; 2 uses
  %i.x = add nsw i32 %.mask13, -32
  %.sink31.i = select i1 %i.w, i32 %i.x, i32 %.mask13
  %.sink29.i = select i1 %i.w, i64 1480, i64 1476 ; 2 uses
  %i.y = shl nuw i32 1, %.sink31.i                ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = or i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 4
  br label %exynos4210_combiner_update.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = xor i32 %i.y, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, %i.ac
  store i32 %i.af, ptr %i.ad, align 4
  br label %exynos4210_combiner_update.exit

exynos4210_combiner_update.exit:                  ; preds = %bb.c, %bb.d
  %.sink33.i = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.i
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ai, i32 noundef %.sink33.i) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %exynos4210_combiner_update.exit
  ret void
}

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @exynos4210_combiner_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = lshr i64 %1, 4
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 2                  ; 2 uses
  %i.d = lshr i64 %1, 2                           ; 3 uses
  %i.e = icmp ugt i32 %i.b, 63
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1476
  %i.g = and i64 %i.d, 3221225475
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.d to i32
  %i.k = and i32 %i.j, -1073741821
  switch i32 %i.k, label %bb.f [
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.m = zext nneg i32 %i.c to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 16
  %i.aa = or disjoint i32 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw i32 %i.ad, 24
  %i.af = or disjoint i32 %i.aa, %i.ae
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ah = zext nneg i32 %i.c to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load <8 x i8>, ptr %i.ai, align 2       ; 2 uses
  %i.ak = shufflevector <8 x i8> %i.aj, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.al = shufflevector <8 x i8> %i.aj, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.am = and <4 x i8> %i.ak, %i.al
  %i.an = bitcast <4 x i8> %i.am to i32
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.ao = icmp ugt i64 %1, 259
  br i1 %i.ao, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr @qemu_loglevel, align 4
  %i.aq = and i32 %i.ap, 2048
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.j, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i64 noundef %1) #4
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.d
  %i.at = load i32, ptr %i.as, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.i, %bb.g, %bb.h, %bb.b
  %.046.shrunk = phi i32 [ %i.i, %bb.b ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.at, %bb.i ], [ %i.af, %bb.d ], [ %i.an, %bb.e ]
  %.046 = zext i32 %.046.shrunk to i64
  ret i64 %.046
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @exynos4210_combiner_write(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = lshr i64 %1, 4
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = shl i32 %i.b, 2                          ; 19 uses
  %i.d = lshr i64 %1, 2                           ; 2 uses
  %i.e = icmp ugt i32 %i.b, 63
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 2048
  %.not93 = icmp eq i32 %i.g, 0
  br i1 %.not93, label %bb.ac, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i64 noundef %1) #4
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  %i.h = and i64 %1, 12884901896
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 2048
  %.not91 = icmp eq i32 %i.j, 0
  br i1 %.not91, label %bb.ac, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i64 noundef %1) #4
  br label %bb.ac

bb.g:                                             ; preds = %bb.d
  %i.k = icmp ugt i64 %1, 259
  br i1 %i.k, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 2048
  %.not92 = icmp eq i32 %i.m, 0
  br i1 %.not92, label %bb.ac, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i64 noundef %1) #4
  br label %bb.ac

bb.j:                                             ; preds = %bb.g
  %i.n = trunc i64 %2 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.d
  store i32 %i.n, ptr %i.p, align 4
  %trunc = trunc i64 %i.d to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 7 uses
  %i.r = zext nneg i32 %i.c to i64                ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.t = load i8, ptr %i.s, align 2               ; 2 uses
  %i.u = trunc i64 %2 to i8                       ; 2 uses
  br i1 %trunc, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = or i8 %i.t, %i.u                         ; 2 uses
  store i8 %i.v, ptr %i.s, align 2
  %i.w = lshr i64 %2, 8
  %i.x = or disjoint i32 %i.c, 1                  ; 2 uses
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.y ; 4 uses
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = trunc i64 %i.w to i8
  %i.ac = or i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.z, align 2
  %i.ad = lshr i64 %2, 16
  %i.ae = or disjoint i32 %i.c, 2                 ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.af ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = trunc i64 %i.ad to i8
  %i.aj = or i8 %i.ah, %i.ai
  store i8 %i.aj, ptr %i.ag, align 2
  %i.ak = lshr i64 %2, 24
  %i.al = or disjoint i32 %i.c, 3                 ; 2 uses
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.am ; 4 uses
  %i.ao = load i8, ptr %i.an, align 2
  %i.ap = trunc i64 %i.ak to i8
  %i.aq = or i8 %i.ao, %i.ap
  store i8 %i.aq, ptr %i.an, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = and i8 %i.as, %i.v
  %.not.i = icmp eq i8 %i.at, 0
  %i.au = icmp ugt i32 %i.c, 31                   ; 5 uses
  %i.av = add nsw i32 %i.c, -32
  %.sink31.i = select i1 %i.au, i32 %i.av, i32 %i.c
  %.sink29.i = select i1 %i.au, i64 1480, i64 1476 ; 8 uses
  %i.aw = shl nuw i32 1, %.sink31.i               ; 2 uses
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = or i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 4
  br label %exynos4210_combiner_update.exit

bb.m:                                             ; preds = %bb.k
  %i.ba = xor i32 %i.aw, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 4
  br label %exynos4210_combiner_update.exit

exynos4210_combiner_update.exit:                  ; preds = %bb.l, %bb.m
  %.sink33.i = phi i32 [ 0, %bb.m ], [ 1, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.r
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void @qemu_set_irq(ptr noundef %i.bg, i32 noundef %.sink33.i) #4
  %i.bh = load i8, ptr %i.z, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = and i8 %i.bj, %i.bh
  %.not.i56 = icmp eq i8 %i.bk, 0
  %i.bl = add nsw i32 %i.c, -31
  %.sink31.i57 = select i1 %i.au, i32 %i.bl, i32 %i.x
  %i.bm = shl nuw i32 1, %.sink31.i57             ; 2 uses
  br i1 %.not.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %exynos4210_combiner_update.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = or i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4
  br label %exynos4210_combiner_update.exit60

bb.o:                                             ; preds = %exynos4210_combiner_update.exit
  %i.bq = xor i32 %i.bm, -1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = and i32 %i.bs, %i.bq
  store i32 %i.bt, ptr %i.br, align 4
  br label %exynos4210_combiner_update.exit60

exynos4210_combiner_update.exit60:                ; preds = %bb.n, %bb.o
  %.sink33.i59 = phi i32 [ 0, %bb.o ], [ 1, %bb.n ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.y
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void @qemu_set_irq(ptr noundef %i.bv, i32 noundef %.sink33.i59) #4
  %i.bw = load i8, ptr %i.ag, align 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = and i8 %i.by, %i.bw
  %.not.i61 = icmp eq i8 %i.bz, 0
  %i.ca = add nsw i32 %i.c, -30
  %.sink31.i62 = select i1 %i.au, i32 %i.ca, i32 %i.ae
  %i.cb = shl nuw i32 1, %.sink31.i62             ; 2 uses
  br i1 %.not.i61, label %bb.q, label %bb.p

bb.p:                                             ; preds = %exynos4210_combiner_update.exit60
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = or i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %i.cc, align 4
  br label %exynos4210_combiner_update.exit65

bb.q:                                             ; preds = %exynos4210_combiner_update.exit60
  %i.cf = xor i32 %i.cb, -1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = and i32 %i.ch, %i.cf
  store i32 %i.ci, ptr %i.cg, align 4
  br label %exynos4210_combiner_update.exit65

exynos4210_combiner_update.exit65:                ; preds = %bb.p, %bb.q
  %.sink33.i64 = phi i32 [ 0, %bb.q ], [ 1, %bb.p ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.af
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ck, i32 noundef %.sink33.i64) #4
  %i.cl = load i8, ptr %i.an, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = and i8 %i.cn, %i.cl
  %.not.i66 = icmp eq i8 %i.co, 0
  %i.cp = add nsw i32 %i.c, -29
  %.sink31.i67 = select i1 %i.au, i32 %i.cp, i32 %i.al
  %i.cq = shl nuw i32 1, %.sink31.i67             ; 2 uses
  br i1 %.not.i66, label %bb.s, label %bb.r

bb.r:                                             ; preds = %exynos4210_combiner_update.exit65
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = or i32 %i.cs, %i.cq
  store i32 %i.ct, ptr %i.cr, align 4
  br label %exynos4210_combiner_update.exit70

bb.s:                                             ; preds = %exynos4210_combiner_update.exit65
  %i.cu = xor i32 %i.cq, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = and i32 %i.cw, %i.cu
  store i32 %i.cx, ptr %i.cv, align 4
  br label %exynos4210_combiner_update.exit70

exynos4210_combiner_update.exit70:                ; preds = %bb.r, %bb.s
  %.sink33.i69 = phi i32 [ 0, %bb.s ], [ 1, %bb.r ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.am
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void @qemu_set_irq(ptr noundef %i.cz, i32 noundef %.sink33.i69) #4
  br label %bb.ac

bb.t:                                             ; preds = %bb.j
  %i.da = xor i8 %i.u, -1
  %i.db = and i8 %i.t, %i.da                      ; 2 uses
  store i8 %i.db, ptr %i.s, align 2
  %i.dc = lshr i64 %2, 8
  %i.dd = or disjoint i32 %i.c, 1                 ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.de ; 4 uses
  %i.dg = load i8, ptr %i.df, align 2
  %i.dh = trunc i64 %i.dc to i8
  %i.di = xor i8 %i.dh, -1
  %i.dj = and i8 %i.dg, %i.di
  store i8 %i.dj, ptr %i.df, align 2
  %i.dk = lshr i64 %2, 16
  %i.dl = or disjoint i32 %i.c, 2                 ; 2 uses
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.dm ; 4 uses
  %i.do = load i8, ptr %i.dn, align 2
  %i.dp = trunc i64 %i.dk to i8
  %i.dq = xor i8 %i.dp, -1
  %i.dr = and i8 %i.do, %i.dq
  store i8 %i.dr, ptr %i.dn, align 2
  %i.ds = lshr i64 %2, 24
  %i.dt = or disjoint i32 %i.c, 3                 ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.du ; 4 uses
  %i.dw = load i8, ptr %i.dv, align 2
  %i.dx = trunc i64 %i.ds to i8
  %i.dy = xor i8 %i.dx, -1
  %i.dz = and i8 %i.dw, %i.dy
  store i8 %i.dz, ptr %i.dv, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = and i8 %i.eb, %i.db
  %.not.i71 = icmp eq i8 %i.ec, 0
  %i.ed = icmp ugt i32 %i.c, 31                   ; 5 uses
  %i.ee = add nsw i32 %i.c, -32
  %.sink31.i72 = select i1 %i.ed, i32 %i.ee, i32 %i.c
  %.sink29.i73 = select i1 %i.ed, i64 1480, i64 1476 ; 8 uses
  %i.ef = shl nuw i32 1, %.sink31.i72             ; 2 uses
  br i1 %.not.i71, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i73 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = or i32 %i.eh, %i.ef
  store i32 %i.ei, ptr %i.eg, align 4
  br label %exynos4210_combiner_update.exit75

bb.v:                                             ; preds = %bb.t
  %i.ej = xor i32 %i.ef, -1
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i73 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = and i32 %i.el, %i.ej
  store i32 %i.em, ptr %i.ek, align 4
  br label %exynos4210_combiner_update.exit75

exynos4210_combiner_update.exit75:                ; preds = %bb.u, %bb.v
  %.sink33.i74 = phi i32 [ 0, %bb.v ], [ 1, %bb.u ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 4 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.r
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ep, i32 noundef %.sink33.i74) #4
  %i.eq = load i8, ptr %i.df, align 2
  %i.er = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.es = load i8, ptr %i.er, align 1
  %i.et = and i8 %i.es, %i.eq
  %.not.i76 = icmp eq i8 %i.et, 0
  %i.eu = add nsw i32 %i.c, -31
  %.sink31.i77 = select i1 %i.ed, i32 %i.eu, i32 %i.dd
  %i.ev = shl nuw i32 1, %.sink31.i77             ; 2 uses
  br i1 %.not.i76, label %bb.x, label %bb.w

bb.w:                                             ; preds = %exynos4210_combiner_update.exit75
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i73 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = or i32 %i.ex, %i.ev
  store i32 %i.ey, ptr %i.ew, align 4
  br label %exynos4210_combiner_update.exit80

bb.x:                                             ; preds = %exynos4210_combiner_update.exit75
  %i.ez = xor i32 %i.ev, -1
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i73 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = and i32 %i.fb, %i.ez
  store i32 %i.fc, ptr %i.fa, align 4
  br label %exynos4210_combiner_update.exit80

exynos4210_combiner_update.exit80:                ; preds = %bb.w, %bb.x
  %.sink33.i79 = phi i32 [ 0, %bb.x ], [ 1, %bb.w ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.de
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void @qemu_set_irq(ptr noundef %i.fe, i32 noundef %.sink33.i79) #4
  %i.ff = load i8, ptr %i.dn, align 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = and i8 %i.fh, %i.ff
  %.not.i81 = icmp eq i8 %i.fi, 0
  %i.fj = add nsw i32 %i.c, -30
  %.sink31.i82 = select i1 %i.ed, i32 %i.fj, i32 %i.dl
  %i.fk = shl nuw i32 1, %.sink31.i82             ; 2 uses
  br i1 %.not.i81, label %bb.z, label %bb.y

bb.y:                                             ; preds = %exynos4210_combiner_update.exit80
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i73 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = or i32 %i.fm, %i.fk
  store i32 %i.fn, ptr %i.fl, align 4
  br label %exynos4210_combiner_update.exit85

bb.z:                                             ; preds = %exynos4210_combiner_update.exit80
  %i.fo = xor i32 %i.fk, -1
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i73 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = and i32 %i.fq, %i.fo
  store i32 %i.fr, ptr %i.fp, align 4
  br label %exynos4210_combiner_update.exit85

exynos4210_combiner_update.exit85:                ; preds = %bb.y, %bb.z
  %.sink33.i84 = phi i32 [ 0, %bb.z ], [ 1, %bb.y ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.dm
  %i.ft = load ptr, ptr %i.fs, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ft, i32 noundef %.sink33.i84) #4
  %i.fu = load i8, ptr %i.dv, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = and i8 %i.fw, %i.fu
  %.not.i86 = icmp eq i8 %i.fx, 0
  %i.fy = add nsw i32 %i.c, -29
  %.sink31.i87 = select i1 %i.ed, i32 %i.fy, i32 %i.dt
  %i.fz = shl nuw i32 1, %.sink31.i87             ; 2 uses
  br i1 %.not.i86, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %exynos4210_combiner_update.exit85
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i73 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = or i32 %i.gb, %i.fz
  store i32 %i.gc, ptr %i.ga, align 4
  br label %exynos4210_combiner_update.exit90

bb.ab:                                            ; preds = %exynos4210_combiner_update.exit85
  %i.gd = xor i32 %i.fz, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i73 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = and i32 %i.gf, %i.gd
  store i32 %i.gg, ptr %i.ge, align 4
  br label %exynos4210_combiner_update.exit90

exynos4210_combiner_update.exit90:                ; preds = %bb.aa, %bb.ab
  %.sink33.i89 = phi i32 [ 0, %bb.ab ], [ 1, %bb.aa ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.du
  %i.gi = load ptr, ptr %i.gh, align 8
  tail call void @qemu_set_irq(ptr noundef %i.gi, i32 noundef %.sink33.i89) #4
  br label %bb.ac

bb.ac:                                            ; preds = %exynos4210_combiner_update.exit70, %exynos4210_combiner_update.exit90, %bb.h, %bb.i, %bb.e, %bb.f, %bb.b, %bb.c
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @exynos4210_combiner_reset(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.a, i8 noundef 0, i64 noundef 128, i1 noundef false) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(260) %i.b, i8 noundef 0, i64 noundef 260, i1 noundef false) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store i32 16843009, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1412
  store i32 16843009, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store i32 16843009, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1428
  store i32 16843009, ptr %i.f, align 4
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
