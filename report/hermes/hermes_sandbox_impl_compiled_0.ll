begin_hunk_0
  %i.hs = zext i32 %i.hr to i64
  %.val1953 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1953, i64 %i.hs
  %.0.copyload.i2018 = load i32, ptr %i.ht, align 1 ; 14 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2018) #18, !srcloc !22
  %.not1931 = icmp eq i32 %.0.copyload.i2018, 0
  br i1 %.not1931, label %bb.bb, label %.preheader2071.5.a

.preheader2071.5.a:                               ; preds = %bb.ba
  %i.hu = urem i32 %.0.copyload.i2018, 10
  %.not1933.5.a = icmp eq i32 %i.hu, 0
  br i1 %.not1933.5.a, label %.preheader2071.6.a, label %bb.bb

.preheader2071.6.a:                               ; preds = %.preheader2071.5.a
  %i.hv = urem i32 %.0.copyload.i2018, 100
  %.not1933.6.a = icmp eq i32 %i.hv, 0
  br i1 %.not1933.6.a, label %.preheader2071.7.a, label %bb.bb

.preheader2071.7.a:                               ; preds = %.preheader2071.6.a
  %i.hw = urem i32 %.0.copyload.i2018, 1000
  %.not1933.7.a = icmp eq i32 %i.hw, 0
  br i1 %.not1933.7.a, label %.preheader2071.8.a, label %bb.bb

.preheader2071.8.a:                               ; preds = %.preheader2071.7.a
  %i.hx = urem i32 %.0.copyload.i2018, 10000
  %.not1933.8.a = icmp eq i32 %i.hx, 0
  br i1 %.not1933.8.a, label %.preheader2071.9.a, label %bb.bb

.preheader2071.9.a:                               ; preds = %.preheader2071.8.a
  %i.hy = urem i32 %.0.copyload.i2018, 100000
  %.not1933.9.a = icmp eq i32 %i.hy, 0
  br i1 %.not1933.9.a, label %.preheader2071.11.a, label %bb.bb

.preheader2071.11.a:                              ; preds = %.preheader2071.9.a
  %i.hz = urem i32 %.0.copyload.i2018, 1000000
  %.not1933.11 = icmp eq i32 %i.hz, 0
  br i1 %.not1933.11, label %.preheader2071.12, label %bb.bb

.preheader2071.12:                                ; preds = %.preheader2071.11.a
  %i.ia = urem i32 %.0.copyload.i2018, 10000000
  %.not1933.12 = icmp eq i32 %i.ia, 0
  br i1 %.not1933.12, label %.preheader2071.14, label %bb.bb

.preheader2071.14:                                ; preds = %.preheader2071.12
  %i.ib = urem i32 %.0.copyload.i2018, 100000000
  %.not1933.14 = icmp eq i32 %i.ib, 0
  br i1 %.not1933.14, label %.preheader2071.15, label %bb.bb

.preheader2071.15:                                ; preds = %.preheader2071.14
  %i.ic = urem i32 %.0.copyload.i2018, 1000000000
  %.not1933.15 = icmp eq i32 %i.ic, 0
  br i1 %.not1933.15, label %.preheader2071.18, label %bb.bb

.preheader2071.18:                                ; preds = %.preheader2071.15
  %i.id = urem i32 %.0.copyload.i2018, 1410065408
  %.not1933.18 = icmp eq i32 %i.id, 0
  br i1 %.not1933.18, label %.preheader2071.23, label %bb.bb

.preheader2071.23:                                ; preds = %.preheader2071.18
  %i.ie = urem i32 %.0.copyload.i2018, 1215752192
  %.not1933.23 = icmp eq i32 %i.ie, 0
  br i1 %.not1933.23, label %.preheader2071.27, label %bb.bb

.preheader2071.27:                                ; preds = %.preheader2071.23
  %7 = icmp eq i32 %.0.copyload.i2018, -727379968
  %i.if = select i1 %7, i32 -12, i32 -11
  br label %bb.bb

bb.bb:                                            ; preds = %.preheader2071.27, %.preheader2071.6.a, %.preheader2071.7.a, %.preheader2071.8.a, %.preheader2071.9.a, %.preheader2071.11.a, %.preheader2071.12, %.preheader2071.14, %.preheader2071.15, %.preheader2071.18, %.preheader2071.23, %.preheader2071.5.a, %bb.ba, %bb.az
  %.81855 = phi i32 [ -9, %bb.az ], [ -9, %bb.ba ], [ 0, %.preheader2071.5.a ], [ -1, %.preheader2071.6.a ], [ -2, %.preheader2071.7.a ], [ -3, %.preheader2071.8.a ], [ -4, %.preheader2071.9.a ], [ -5, %.preheader2071.11.a ], [ -6, %.preheader2071.12 ], [ -7, %.preheader2071.14 ], [ -8, %.preheader2071.15 ], [ -9, %.preheader2071.18 ], [ -10, %.preheader2071.23 ], [ %i.if, %.preheader2071.27 ] ; 2 uses
  %i.ig = sub i32 %.61853, %i.ar
  %i.ih = ashr i32 %i.ig, 2
  %i.ii = mul i32 %i.ih, 9                        ; 2 uses
end_hunk_0
