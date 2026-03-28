begin_hunk_0
  %i.hs = zext i32 %i.hr to i64
  %.val1953 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1953, i64 %i.hs
  %.0.copyload.i2018 = load i32, ptr %i.ht, align 1
  %.0.copyload.i2018.fr = freeze i32 %.0.copyload.i2018 ; 55 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2018.fr) #18, !srcloc !22
  %.not1931 = icmp eq i32 %.0.copyload.i2018.fr, 0
  br i1 %.not1931, label %bb.bb, label %7

7:                                                ; preds = %bb.ba
  %8 = urem i32 %.0.copyload.i2018.fr, 10
  %.not1932 = icmp eq i32 %8, 0
  br i1 %.not1932, label %.preheader2071.preheader, label %bb.bb

.preheader2071.preheader:                         ; preds = %7
  %9 = urem i32 %.0.copyload.i2018.fr, 100
  %.not1933 = icmp eq i32 %9, 0
  br i1 %.not1933, label %.preheader2071.1, label %bb.bb

10:                                               ; preds = %.preheader2071.29
  tail call void @wasm_rt_trap(i32 noundef 3) #19
  unreachable

.preheader2071.1:                                 ; preds = %.preheader2071.preheader
  %11 = urem i32 %.0.copyload.i2018.fr, 1000
  %.not1933.1 = icmp eq i32 %11, 0
  br i1 %.not1933.1, label %.preheader2071.2, label %bb.bb

.preheader2071.2:                                 ; preds = %.preheader2071.1
  %12 = urem i32 %.0.copyload.i2018.fr, 10000
  %.not1933.2 = icmp eq i32 %12, 0
  br i1 %.not1933.2, label %.preheader2071.3, label %bb.bb

.preheader2071.3:                                 ; preds = %.preheader2071.2
  %13 = urem i32 %.0.copyload.i2018.fr, 100000
  %.not1933.3 = icmp eq i32 %13, 0
  br i1 %.not1933.3, label %.preheader2071.4, label %bb.bb

.preheader2071.4:                                 ; preds = %.preheader2071.3
  %14 = urem i32 %.0.copyload.i2018.fr, 1000000
  %.not1933.4 = icmp eq i32 %14, 0
  br i1 %.not1933.4, label %.preheader2071.5.a, label %bb.bb

.preheader2071.5.a:                               ; preds = %.preheader2071.4
  %i.hu = urem i32 %.0.copyload.i2018.fr, 10000000
  %.not1933.5.a = icmp eq i32 %i.hu, 0
  br i1 %.not1933.5.a, label %.preheader2071.6.a, label %bb.bb

.preheader2071.6.a:                               ; preds = %.preheader2071.5.a
  %i.hv = urem i32 %.0.copyload.i2018.fr, 100000000
  %.not1933.6.a = icmp eq i32 %i.hv, 0
  br i1 %.not1933.6.a, label %.preheader2071.7.a, label %bb.bb

.preheader2071.7.a:                               ; preds = %.preheader2071.6.a
  %i.hw = urem i32 %.0.copyload.i2018.fr, 1000000000
  %.not1933.7.a = icmp eq i32 %i.hw, 0
  br i1 %.not1933.7.a, label %.preheader2071.8.a, label %bb.bb

.preheader2071.8.a:                               ; preds = %.preheader2071.7.a
  %i.hx = urem i32 %.0.copyload.i2018.fr, 1410065408
  %.not1933.8.a = icmp eq i32 %i.hx, 0
  br i1 %.not1933.8.a, label %.preheader2071.9.a, label %bb.bb

.preheader2071.9.a:                               ; preds = %.preheader2071.8.a
  %i.hy = urem i32 %.0.copyload.i2018.fr, 1215752192
  %.not1933.9.a = icmp eq i32 %i.hy, 0
  br i1 %.not1933.9.a, label %.preheader2071.10, label %bb.bb

.preheader2071.10:                                ; preds = %.preheader2071.9.a
  %15 = icmp ult i32 %.0.copyload.i2018.fr, -727379968
  %16 = add nsw i32 %.0.copyload.i2018.fr, 727379968
  %17 = select i1 %15, i32 %.0.copyload.i2018.fr, i32 %16
  %.not1933.10 = icmp eq i32 %17, 0
  br i1 %.not1933.10, label %.preheader2071.11.a, label %bb.bb

.preheader2071.11.a:                              ; preds = %.preheader2071.10
  %i.hz = urem i32 %.0.copyload.i2018.fr, 1316134912
  %.not1933.11 = icmp eq i32 %i.hz, 0
  br i1 %.not1933.11, label %.preheader2071.12, label %bb.bb

.preheader2071.12:                                ; preds = %.preheader2071.11.a
  %i.ia = urem i32 %.0.copyload.i2018.fr, 276447232
  %.not1933.12 = icmp eq i32 %i.ia, 0
  br i1 %.not1933.12, label %.preheader2071.13, label %bb.bb

.preheader2071.13:                                ; preds = %.preheader2071.12
  %18 = icmp ult i32 %.0.copyload.i2018.fr, -1530494976
  %19 = add nsw i32 %.0.copyload.i2018.fr, 1530494976
  %20 = select i1 %18, i32 %.0.copyload.i2018.fr, i32 %19
  %.not1933.13 = icmp eq i32 %20, 0
  br i1 %.not1933.13, label %.preheader2071.14, label %bb.bb

.preheader2071.14:                                ; preds = %.preheader2071.13
  %i.ib = urem i32 %.0.copyload.i2018.fr, 1874919424
  %.not1933.14 = icmp eq i32 %i.ib, 0
  br i1 %.not1933.14, label %.preheader2071.15, label %bb.bb

.preheader2071.15:                                ; preds = %.preheader2071.14
  %i.ic = urem i32 %.0.copyload.i2018.fr, 1569325056
  %.not1933.15 = icmp eq i32 %i.ic, 0
  br i1 %.not1933.15, label %.preheader2071.16, label %bb.bb

.preheader2071.16:                                ; preds = %.preheader2071.15
  %21 = icmp ult i32 %.0.copyload.i2018.fr, -1486618624
  %22 = add nsw i32 %.0.copyload.i2018.fr, 1486618624
  %23 = select i1 %21, i32 %.0.copyload.i2018.fr, i32 %22
  %.not1933.16 = icmp eq i32 %23, 0
  br i1 %.not1933.16, label %.preheader2071.17, label %bb.bb

.preheader2071.17:                                ; preds = %.preheader2071.16
  %24 = icmp ult i32 %.0.copyload.i2018.fr, -1981284352
  %25 = add nsw i32 %.0.copyload.i2018.fr, 1981284352
  %26 = select i1 %24, i32 %.0.copyload.i2018.fr, i32 %25
  %.not1933.17 = icmp eq i32 %26, 0
  br i1 %.not1933.17, label %.preheader2071.18, label %bb.bb

.preheader2071.18:                                ; preds = %.preheader2071.17
  %i.id = urem i32 %.0.copyload.i2018.fr, 1661992960
  %.not1933.18 = icmp eq i32 %i.id, 0
  br i1 %.not1933.18, label %.preheader2071.19, label %bb.bb

.preheader2071.19:                                ; preds = %.preheader2071.18
  %27 = icmp ult i32 %.0.copyload.i2018.fr, -559939584
  %28 = add nsw i32 %.0.copyload.i2018.fr, 559939584
  %29 = select i1 %27, i32 %.0.copyload.i2018.fr, i32 %28
  %.not1933.19 = icmp eq i32 %29, 0
  br i1 %.not1933.19, label %.preheader2071.20, label %bb.bb

.preheader2071.20:                                ; preds = %.preheader2071.19
  %30 = icmp ult i32 %.0.copyload.i2018.fr, -1304428544
  %31 = add nsw i32 %.0.copyload.i2018.fr, 1304428544
  %32 = select i1 %30, i32 %.0.copyload.i2018.fr, i32 %31
  %.not1933.20 = icmp eq i32 %32, 0
  br i1 %.not1933.20, label %.preheader2071.21, label %bb.bb

.preheader2071.21:                                ; preds = %.preheader2071.20
  %33 = icmp ult i32 %.0.copyload.i2018.fr, -159383552
  %34 = add nsw i32 %.0.copyload.i2018.fr, 159383552
  %35 = select i1 %33, i32 %.0.copyload.i2018.fr, i32 %34
  %.not1933.21 = icmp eq i32 %35, 0
  br i1 %.not1933.21, label %.preheader2071.22, label %bb.bb

.preheader2071.22:                                ; preds = %.preheader2071.21
  %36 = icmp ult i32 %.0.copyload.i2018.fr, -1593835520
  %37 = add nsw i32 %.0.copyload.i2018.fr, 1593835520
  %38 = select i1 %36, i32 %.0.copyload.i2018.fr, i32 %37
  %.not1933.22 = icmp eq i32 %38, 0
  br i1 %.not1933.22, label %.preheader2071.23, label %bb.bb

.preheader2071.23:                                ; preds = %.preheader2071.22
  %i.ie = urem i32 %.0.copyload.i2018.fr, 1241513984
  %.not1933.23 = icmp eq i32 %i.ie, 0
  br i1 %.not1933.23, label %.preheader2071.24, label %bb.bb

.preheader2071.24:                                ; preds = %.preheader2071.23
  %39 = icmp ult i32 %.0.copyload.i2018.fr, -469762048
  %40 = add nsw i32 %.0.copyload.i2018.fr, 469762048
  %41 = select i1 %39, i32 %.0.copyload.i2018.fr, i32 %40
  %.not1933.24 = icmp eq i32 %41, 0
  br i1 %.not1933.24, label %.preheader2071.25, label %bb.bb

.preheader2071.25:                                ; preds = %.preheader2071.24
  %42 = icmp ult i32 %.0.copyload.i2018.fr, -402653184
  %43 = add nsw i32 %.0.copyload.i2018.fr, 402653184
  %44 = select i1 %42, i32 %.0.copyload.i2018.fr, i32 %43
  %.not1933.25 = icmp eq i32 %44, 0
  br i1 %.not1933.25, label %.preheader2071.26, label %bb.bb

.preheader2071.26:                                ; preds = %.preheader2071.25
  %45 = and i32 %.0.copyload.i2018.fr, 268435455
  %.not1933.26 = icmp eq i32 %45, 0
  br i1 %.not1933.26, label %.preheader2071.27, label %bb.bb

.preheader2071.27:                                ; preds = %.preheader2071.26
  %46 = icmp ult i32 %.0.copyload.i2018.fr, -1610612736
  %47 = add nsw i32 %.0.copyload.i2018.fr, 1610612736
  %i.if = select i1 %46, i32 %.0.copyload.i2018.fr, i32 %47
  %.not1933.27 = icmp eq i32 %i.if, 0
  br i1 %.not1933.27, label %.preheader2071.28, label %bb.bb

.preheader2071.28:                                ; preds = %.preheader2071.27
  %48 = and i32 %.0.copyload.i2018.fr, 805306368
  %.not1933.28 = icmp eq i32 %48, 0
  br i1 %.not1933.28, label %.preheader2071.29, label %bb.bb

.preheader2071.29:                                ; preds = %.preheader2071.28
  %49 = and i32 %.0.copyload.i2018.fr, 1073741824
  %.not1933.29 = icmp eq i32 %49, 0
  br i1 %.not1933.29, label %10, label %bb.bb

bb.bb:                                            ; preds = %.preheader2071.preheader, %.preheader2071.1, %.preheader2071.2, %.preheader2071.3, %.preheader2071.4, %.preheader2071.5.a, %.preheader2071.6.a, %.preheader2071.7.a, %.preheader2071.8.a, %.preheader2071.9.a, %.preheader2071.10, %.preheader2071.11.a, %.preheader2071.12, %.preheader2071.13, %.preheader2071.14, %.preheader2071.15, %.preheader2071.16, %.preheader2071.17, %.preheader2071.18, %.preheader2071.19, %.preheader2071.20, %.preheader2071.21, %.preheader2071.22, %.preheader2071.23, %.preheader2071.24, %.preheader2071.25, %.preheader2071.26, %.preheader2071.27, %.preheader2071.28, %.preheader2071.29, %7, %bb.ba, %bb.az
  %.81855 = phi i32 [ -9, %bb.az ], [ -9, %bb.ba ], [ 0, %7 ], [ -1, %.preheader2071.preheader ], [ -2, %.preheader2071.1 ], [ -3, %.preheader2071.2 ], [ -4, %.preheader2071.3 ], [ -5, %.preheader2071.4 ], [ -6, %.preheader2071.5.a ], [ -7, %.preheader2071.6.a ], [ -8, %.preheader2071.7.a ], [ -9, %.preheader2071.8.a ], [ -10, %.preheader2071.9.a ], [ -11, %.preheader2071.10 ], [ -12, %.preheader2071.11.a ], [ -13, %.preheader2071.12 ], [ -14, %.preheader2071.13 ], [ -15, %.preheader2071.14 ], [ -16, %.preheader2071.15 ], [ -17, %.preheader2071.16 ], [ -18, %.preheader2071.17 ], [ -19, %.preheader2071.18 ], [ -20, %.preheader2071.19 ], [ -21, %.preheader2071.20 ], [ -22, %.preheader2071.21 ], [ -23, %.preheader2071.22 ], [ -24, %.preheader2071.23 ], [ -25, %.preheader2071.24 ], [ -26, %.preheader2071.25 ], [ -27, %.preheader2071.26 ], [ -28, %.preheader2071.27 ], [ -29, %.preheader2071.28 ], [ -30, %.preheader2071.29 ] ; 2 uses
  %i.ig = sub i32 %.61853, %i.ar
  %i.ih = ashr i32 %i.ig, 2
  %i.ii = mul i32 %i.ih, 9                        ; 2 uses
end_hunk_0
