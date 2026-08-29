Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1191
loop-unroll.NumRuntimeUnrolled: 418
loop-unroll.NumUnrolled: 1631
begin_hunk_0_@helper_sve_ah_fnmls_zpzzz_b16:bb.a
  %i.t = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.u = load i16, ptr %i.t, align 2
  %i.v = tail call zeroext i16 @bfloat16_muladd(i16 noundef zeroext %i.q, i16 noundef zeroext %i.s, i16 noundef zeroext %i.u, i32 noundef 1, ptr noundef %5) #26
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.l
  store i16 %i.v, ptr %i.w, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not25.i = icmp eq i64 %i.m, 0
  br i1 %.not25.i, label %bb.f, label %bb.c, !llvm.loop !1739

bb.f:                                             ; preds = %bb.e
  %.not26.i = icmp eq i64 %i.l, 0
  br i1 %.not26.i, label %do_fmla_zpzzz_b16.exit, label %bb.b, !llvm.loop !1740

do_fmla_zpzzz_b16.exit:                           ; preds = %bb.f
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ah_fnmls_zpzzz_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef %6) #6 {
bb.a:
  %i.a = lshr i32 %6, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %6, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i.i = add nuw nsw i32 %.v.v.i.i, 8
  %i.g = zext nneg i32 %.v.i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.0.i = phi i64 [ %i.g, %bb.a ], [ %i.l, %bb.f ] ; 2 uses
  %i.h = add i64 %.0.i, -1
  %i.i = ashr i64 %i.h, 6
  %i.j = getelementptr inbounds [8 x i8], ptr %4, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.1.i = phi i64 [ %.0.i, %bb.b ], [ %i.l, %bb.e ]
  %i.l = add i64 %.1.i, -2                        ; 8 uses
  %i.m = and i64 %i.l, 63                         ; 2 uses
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.n, %i.k
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.q = load i16, ptr %i.p, align 2
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.s = load i16, ptr %i.r, align 2
  %i.t = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.u = load i16, ptr %i.t, align 2
  %i.v = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.q, i16 noundef zeroext %i.s, i16 noundef zeroext %i.u, i32 noundef 1, ptr noundef %5) #26
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.l
  store i16 %i.v, ptr %i.w, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not25.i = icmp eq i64 %i.m, 0
  br i1 %.not25.i, label %bb.f, label %bb.c, !llvm.loop !1741

bb.f:                                             ; preds = %bb.e
  %.not26.i = icmp eq i64 %i.l, 0
  br i1 %.not26.i, label %do_fmla_zpzzz_h.exit, label %bb.b, !llvm.loop !1742

do_fmla_zpzzz_h.exit:                             ; preds = %bb.f
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ah_fnmls_zpzzz_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef %6) #6 {
bb.a:
  %i.a = lshr i32 %6, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %6, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i.i = add nuw nsw i32 %.v.v.i.i, 8
  %i.g = zext nneg i32 %.v.i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.0.i = phi i64 [ %i.g, %bb.a ], [ %i.l, %bb.f ] ; 2 uses
  %i.h = add i64 %.0.i, -1
  %i.i = ashr i64 %i.h, 6
  %i.j = getelementptr inbounds [8 x i8], ptr %4, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.1.i = phi i64 [ %.0.i, %bb.b ], [ %i.l, %bb.e ]
  %i.l = add i64 %.1.i, -4                        ; 8 uses
  %i.m = and i64 %i.l, 63                         ; 2 uses
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.n, %i.k
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.u = load i32, ptr %i.t, align 4
  %i.v = tail call i32 @float32_muladd(i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.u, i32 noundef 1, ptr noundef %5) #26
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.l
  store i32 %i.v, ptr %i.w, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not25.i = icmp eq i64 %i.m, 0
  br i1 %.not25.i, label %bb.f, label %bb.c, !llvm.loop !1743

bb.f:                                             ; preds = %bb.e
  %.not26.i = icmp eq i64 %i.l, 0
  br i1 %.not26.i, label %do_fmla_zpzzz_s.exit, label %bb.b, !llvm.loop !1744

do_fmla_zpzzz_s.exit:                             ; preds = %bb.f
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ah_fnmls_zpzzz_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef %6) #6 {
bb.a:
  %i.a = lshr i32 %6, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %6, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i.i = add nuw nsw i32 %.v.v.i.i, 8
  %i.g = zext nneg i32 %.v.i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.0.i = phi i64 [ %i.g, %bb.a ], [ %i.l, %bb.f ] ; 2 uses
  %i.h = add i64 %.0.i, -1
  %i.i = ashr i64 %i.h, 6
  %i.j = getelementptr inbounds [8 x i8], ptr %4, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.1.i = phi i64 [ %.0.i, %bb.b ], [ %i.l, %bb.e ]
  %i.l = add i64 %.1.i, -8                        ; 8 uses
  %i.m = and i64 %i.l, 63                         ; 2 uses
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.n, %i.k
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.u = load i64, ptr %i.t, align 8
  %i.v = tail call i64 @float64_muladd(i64 noundef %i.q, i64 noundef %i.s, i64 noundef %i.u, i32 noundef 1, ptr noundef %5) #26
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.l
  store i64 %i.v, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not25.i = icmp eq i64 %i.m, 0
  br i1 %.not25.i, label %bb.f, label %bb.c, !llvm.loop !1745

bb.f:                                             ; preds = %bb.e
  %.not26.i = icmp eq i64 %i.l, 0
  br i1 %.not26.i, label %do_fmla_zpzzz_d.exit, label %bb.b, !llvm.loop !1746

do_fmla_zpzzz_d.exit:                             ; preds = %bb.f
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_fcmla_zpzzz_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef %6) #6 {
bb.a:
  %i.a = lshr i32 %6, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %6, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = and i32 %6, 1024                         ; 2 uses
  %.not71 = icmp eq i32 %i.h, 0
  %i.i = lshr i32 %6, 12
  %i.j = and i32 %i.i, 1                          ; 3 uses
  %i.k = lshr i32 %6, 11                          ; 2 uses
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %.lobit = lshr exact i32 %i.h, 10
  %i.m = xor i32 %i.l, %.lobit                    ; 2 uses
  %i.n = xor i32 %i.j, -1                         ; 2 uses
  %i.o = and i32 %i.m, %i.n
  %i.p = and i32 %i.l, %i.n
  %i.q = and i32 %i.m, %i.j
  %.not = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not, i32 0, i32 2            ; 2 uses
  %i.s = and i32 %i.j, %i.k
  %.not66 = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not66, i32 0, i32 2          ; 2 uses
  %.tr = trunc nuw nsw i32 %i.p to i16
  %i.u = shl nuw i16 %.tr, 15                     ; 2 uses
  %.tr83 = trunc nuw nsw i32 %i.o to i16
  %i.v = shl nuw i16 %.tr83, 15                   ; 2 uses
  br i1 %.not71, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.a, %.split73.us.us
  %.0.us = phi i64 [ %i.ab, %.split73.us.us ], [ %i.g, %bb.a ] ; 2 uses
  %i.w = add i64 %.0.us, -1
  %i.x = ashr i64 %i.w, 6
  %i.y = getelementptr inbounds [8 x i8], ptr %4, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.split.us.us
  %.1.us.us = phi i64 [ %.0.us, %.split.us.us ], [ %i.ab, %bb.f ] ; 2 uses
  %i.aa = add i64 %.1.us.us, -2                   ; 4 uses
  %i.ab = add i64 %.1.us.us, -4                   ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2            ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.aa
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = xor i16 %i.af, %i.u
  %i.ah = and i64 %i.ab, 63                       ; 2 uses
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.z
  %.not67.us.us = icmp eq i64 %i.aj, 0
  br i1 %.not67.us.us, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.ab
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = xor i16 %i.al, %i.v
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.ab
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ad, i16 noundef zeroext %i.am, i16 noundef zeroext %i.ao, i32 noundef %i.r, ptr noundef %5) #26
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ab
  store i16 %i.ap, ptr %i.aq, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = and i64 %i.aa, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.z
  %.not68.us.us = icmp eq i64 %i.at, 0
  br i1 %.not68.us.us, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.aa
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ad, i16 noundef zeroext %i.ag, i16 noundef zeroext %i.av, i32 noundef %i.t, ptr noundef %5) #26
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aa
  store i16 %i.aw, ptr %i.ax, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not69.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not69.us.us, label %.split73.us.us, label %bb.b, !llvm.loop !1747

.split73.us.us:                                   ; preds = %bb.f
  %.not70.us = icmp eq i64 %i.ab, 0
  br i1 %.not70.us, label %.split76.us, label %.split.us.us, !llvm.loop !1748

.split:                                           ; preds = %bb.a, %.split73
  %.0 = phi i64 [ %i.bd, %.split73 ], [ %i.g, %bb.a ] ; 2 uses
  %i.ay = add i64 %.0, -1
  %i.az = ashr i64 %i.ay, 6
  %i.ba = getelementptr inbounds [8 x i8], ptr %4, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.split
  %.1 = phi i64 [ %.0, %.split ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bc = add i64 %.1, -2                         ; 5 uses
  %i.bd = add i64 %.1, -4                         ; 7 uses
  %i.be = getelementptr inbounds i8, ptr %1, i64 %i.bc
  %i.bf = load i16, ptr %i.be, align 2            ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.bd
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = xor i16 %i.bh, %i.u
  %i.bj = and i64 %i.bd, 63                       ; 2 uses
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bb
  %.not67 = icmp eq i64 %i.bl, 0
  br i1 %.not67, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %i.bc
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = xor i16 %i.bn, %i.v
  %i.bp = getelementptr inbounds i8, ptr %3, i64 %i.bd
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.bf, i16 noundef zeroext %i.bo, i16 noundef zeroext %i.bq, i32 noundef %i.r, ptr noundef %5) #26
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.bd
  store i16 %i.br, ptr %i.bs, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bt = and i64 %i.bc, 63
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = and i64 %i.bu, %i.bb
  %.not68 = icmp eq i64 %i.bv, 0
  br i1 %.not68, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds i8, ptr %3, i64 %i.bc
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.bf, i16 noundef zeroext %i.bi, i16 noundef zeroext %i.bx, i32 noundef %i.t, ptr noundef %5) #26
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.bc
  store i16 %i.by, ptr %i.bz, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not69 = icmp eq i64 %i.bj, 0
  br i1 %.not69, label %.split73, label %bb.g, !llvm.loop !1747

.split73:                                         ; preds = %bb.k
  %.not70 = icmp eq i64 %i.bd, 0
  br i1 %.not70, label %.split76.us, label %.split, !llvm.loop !1748

.split76.us:                                      ; preds = %.split73, %.split73.us.us
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_fcmla_zpzzz_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef %6) #6 {
bb.a:
  %i.a = lshr i32 %6, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %6, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = and i32 %6, 1024                         ; 2 uses
  %.not70 = icmp eq i32 %i.h, 0
  %i.i = lshr i32 %6, 12
  %i.j = and i32 %i.i, 1                          ; 3 uses
  %i.k = lshr i32 %6, 11                          ; 2 uses
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %.lobit = lshr exact i32 %i.h, 10
  %i.m = xor i32 %i.l, %.lobit                    ; 2 uses
  %i.n = xor i32 %i.j, -1                         ; 2 uses
  %i.o = and i32 %i.m, %i.n
  %i.p = shl nuw i32 %i.o, 31                     ; 2 uses
  %i.q = and i32 %i.l, %i.n
  %i.r = shl nuw i32 %i.q, 31                     ; 2 uses
  %i.s = and i32 %i.m, %i.j
  %.not = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not, i32 0, i32 2            ; 2 uses
  %i.u = and i32 %i.j, %i.k
  %.not65 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not65, i32 0, i32 2          ; 2 uses
  br i1 %.not70, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.a, %.split72.us.us
  %.0.us = phi i64 [ %i.ab, %.split72.us.us ], [ %i.g, %bb.a ] ; 2 uses
  %i.w = add i64 %.0.us, -1
  %i.x = ashr i64 %i.w, 6
  %i.y = getelementptr inbounds [8 x i8], ptr %4, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.split.us.us
  %.1.us.us = phi i64 [ %.0.us, %.split.us.us ], [ %i.ab, %bb.f ] ; 2 uses
  %i.aa = add i64 %.1.us.us, -4                   ; 4 uses
  %i.ab = add i64 %.1.us.us, -8                   ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.aa
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = xor i32 %i.af, %i.r
  %i.ah = and i64 %i.ab, 63                       ; 2 uses
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.z
  %.not66.us.us = icmp eq i64 %i.aj, 0
  br i1 %.not66.us.us, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.ab
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = xor i32 %i.al, %i.p
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.ab
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = tail call i32 @float32_muladd(i32 noundef %i.ad, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.t, ptr noundef %5) #26
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ab
  store i32 %i.ap, ptr %i.aq, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = and i64 %i.aa, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.z
  %.not67.us.us = icmp eq i64 %i.at, 0
  br i1 %.not67.us.us, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.aa
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = tail call i32 @float32_muladd(i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %i.av, i32 noundef %i.v, ptr noundef %5) #26
end_hunk_0
