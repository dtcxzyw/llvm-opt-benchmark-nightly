Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1193
loop-unroll.NumRuntimeUnrolled: 419
loop-unroll.NumUnrolled: 1634
begin_hunk_0_@helper_sve_ah_fnmls_zpzzz_b16:bb.a
  %.not25.i = icmp eq i64 %i.m, 0
  br i1 %.not25.i, label %bb.f, label %bb.c, !llvm.loop !9

bb.f:                                             ; preds = %bb.e
  %.not26.i = icmp eq i64 %i.l, 0
  br i1 %.not26.i, label %do_fmla_zpzzz_b16.exit, label %bb.b, !llvm.loop !10

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
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !76

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
  br i1 %.not25.i, label %bb.f, label %bb.c, !llvm.loop !11

bb.f:                                             ; preds = %bb.e
  %.not26.i = icmp eq i64 %i.l, 0
  br i1 %.not26.i, label %do_fmla_zpzzz_h.exit, label %bb.b, !llvm.loop !12

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
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !76

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
  br i1 %.not25.i, label %bb.f, label %bb.c, !llvm.loop !13

bb.f:                                             ; preds = %bb.e
  %.not26.i = icmp eq i64 %i.l, 0
  br i1 %.not26.i, label %do_fmla_zpzzz_s.exit, label %bb.b, !llvm.loop !14

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
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !76

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
  br i1 %.not25.i, label %bb.f, label %bb.c, !llvm.loop !15

bb.f:                                             ; preds = %bb.e
  %.not26.i = icmp eq i64 %i.l, 0
  br i1 %.not26.i, label %do_fmla_zpzzz_d.exit, label %bb.b, !llvm.loop !16

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
  %7 = shl nuw nsw i32 %i.q, 1                    ; 2 uses
  %i.r = and i32 %i.j, %i.k
  %8 = shl nuw nsw i32 %i.r, 1                    ; 2 uses
  %.tr = trunc nuw nsw i32 %i.p to i16
  %i.s = shl nuw i16 %.tr, 15                     ; 2 uses
  %.tr83 = trunc nuw nsw i32 %i.o to i16
  %i.t = shl nuw i16 %.tr83, 15                   ; 2 uses
  br i1 %.not71, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.a, %.split73.us.us
  %.0.us = phi i64 [ %i.z, %.split73.us.us ], [ %i.g, %bb.a ] ; 2 uses
  %i.u = add i64 %.0.us, -1
  %i.v = ashr i64 %i.u, 6
  %i.w = getelementptr inbounds [8 x i8], ptr %4, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.split.us.us
  %.1.us.us = phi i64 [ %.0.us, %.split.us.us ], [ %i.z, %bb.f ] ; 2 uses
  %i.y = add i64 %.1.us.us, -2                    ; 4 uses
  %i.z = add i64 %.1.us.us, -4                    ; 8 uses
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.y
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = xor i16 %i.ad, %i.s
  %i.af = and i64 %i.z, 63                        ; 2 uses
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = and i64 %i.ag, %i.x
  %.not67.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not67.us.us, label %bb.d, label %bb.c, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.z
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = xor i16 %i.aj, %i.t
  %i.al = getelementptr inbounds i8, ptr %3, i64 %i.z
  %i.am = load i16, ptr %i.al, align 2
  %i.an = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ab, i16 noundef zeroext %i.ak, i16 noundef zeroext %i.am, i32 noundef %7, ptr noundef %5) #26
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.z
  store i16 %i.an, ptr %i.ao, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = and i64 %i.y, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.aq, %i.x
  %.not68.us.us = icmp eq i64 %i.ar, 0
  br i1 %.not68.us.us, label %bb.f, label %bb.e, !prof !76

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.at = load i16, ptr %i.as, align 2
  %i.au = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ab, i16 noundef zeroext %i.ae, i16 noundef zeroext %i.at, i32 noundef %8, ptr noundef %5) #26
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.y
  store i16 %i.au, ptr %i.av, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not69.us.us = icmp eq i64 %i.af, 0
  br i1 %.not69.us.us, label %.split73.us.us, label %bb.b, !llvm.loop !1806

.split73.us.us:                                   ; preds = %bb.f
  %.not70.us = icmp eq i64 %i.z, 0
  br i1 %.not70.us, label %.split76.us, label %.split.us.us, !llvm.loop !1807

.split:                                           ; preds = %bb.a, %.split73
  %.0 = phi i64 [ %i.bb, %.split73 ], [ %i.g, %bb.a ] ; 2 uses
  %i.aw = add i64 %.0, -1
  %i.ax = ashr i64 %i.aw, 6
  %i.ay = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.split
  %.1 = phi i64 [ %.0, %.split ], [ %i.bb, %bb.k ] ; 2 uses
  %i.ba = add i64 %.1, -2                         ; 5 uses
  %i.bb = add i64 %.1, -4                         ; 7 uses
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %i.ba
  %i.bd = load i16, ptr %i.bc, align 2            ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.bb
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = xor i16 %i.bf, %i.s
  %i.bh = and i64 %i.bb, 63                       ; 2 uses
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bi, %i.az
  %.not67 = icmp eq i64 %i.bj, 0
  br i1 %.not67, label %bb.i, label %bb.h, !prof !76

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = xor i16 %i.bl, %i.t
  %i.bn = getelementptr inbounds i8, ptr %3, i64 %i.bb
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.bd, i16 noundef zeroext %i.bm, i16 noundef zeroext %i.bo, i32 noundef %7, ptr noundef %5) #26
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bb
  store i16 %i.bp, ptr %i.bq, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.br = and i64 %i.ba, 63
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = and i64 %i.bs, %i.az
  %.not68 = icmp eq i64 %i.bt, 0
  br i1 %.not68, label %bb.k, label %bb.j, !prof !76

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds i8, ptr %3, i64 %i.ba
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.bd, i16 noundef zeroext %i.bg, i16 noundef zeroext %i.bv, i32 noundef %8, ptr noundef %5) #26
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.ba
  store i16 %i.bw, ptr %i.bx, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not69 = icmp eq i64 %i.bh, 0
  br i1 %.not69, label %.split73, label %bb.g, !llvm.loop !1806

.split73:                                         ; preds = %bb.k
  %.not70 = icmp eq i64 %i.bb, 0
  br i1 %.not70, label %.split76.us, label %.split, !llvm.loop !1807

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
  %7 = shl nuw nsw i32 %i.s, 1                    ; 2 uses
  %i.t = and i32 %i.j, %i.k
  %8 = shl nuw nsw i32 %i.t, 1                    ; 2 uses
  br i1 %.not70, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.a, %.split72.us.us
  %.0.us = phi i64 [ %i.z, %.split72.us.us ], [ %i.g, %bb.a ] ; 2 uses
  %i.u = add i64 %.0.us, -1
  %i.v = ashr i64 %i.u, 6
  %i.w = getelementptr inbounds [8 x i8], ptr %4, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.split.us.us
  %.1.us.us = phi i64 [ %.0.us, %.split.us.us ], [ %i.z, %bb.f ] ; 2 uses
  %i.y = add i64 %.1.us.us, -4                    ; 4 uses
  %i.z = add i64 %.1.us.us, -8                    ; 8 uses
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.y
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = xor i32 %i.ad, %i.r
  %i.af = and i64 %i.z, 63                        ; 2 uses
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = and i64 %i.ag, %i.x
  %.not66.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not66.us.us, label %bb.d, label %bb.c, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.z
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = xor i32 %i.aj, %i.p
  %i.al = getelementptr inbounds i8, ptr %3, i64 %i.z
  %i.am = load i32, ptr %i.al, align 4
  %i.an = tail call i32 @float32_muladd(i32 noundef %i.ab, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %7, ptr noundef %5) #26
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.z
  store i32 %i.an, ptr %i.ao, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = and i64 %i.y, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.aq, %i.x
  %.not67.us.us = icmp eq i64 %i.ar, 0
  br i1 %.not67.us.us, label %bb.f, label %bb.e, !prof !76

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.at = load i32, ptr %i.as, align 4
  %i.au = tail call i32 @float32_muladd(i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.at, i32 noundef %8, ptr noundef %5) #26
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.y
  store i32 %i.au, ptr %i.av, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not68.us.us = icmp eq i64 %i.af, 0
  br i1 %.not68.us.us, label %.split72.us.us, label %bb.b, !llvm.loop !1808

.split72.us.us:                                   ; preds = %bb.f
  %.not69.us = icmp eq i64 %i.z, 0
  br i1 %.not69.us, label %.split75.us, label %.split.us.us, !llvm.loop !1809

.split:                                           ; preds = %bb.a, %.split72
  %.0 = phi i64 [ %i.bb, %.split72 ], [ %i.g, %bb.a ] ; 2 uses
  %i.aw = add i64 %.0, -1
  %i.ax = ashr i64 %i.aw, 6
  %i.ay = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.split
  %.1 = phi i64 [ %.0, %.split ], [ %i.bb, %bb.k ] ; 2 uses
  %i.ba = add i64 %.1, -4                         ; 5 uses
  %i.bb = add i64 %.1, -8                         ; 7 uses
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %i.ba
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.bb
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = xor i32 %i.bf, %i.r
  %i.bh = and i64 %i.bb, 63                       ; 2 uses
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bi, %i.az
  %.not66 = icmp eq i64 %i.bj, 0
  br i1 %.not66, label %bb.i, label %bb.h, !prof !76

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = xor i32 %i.bl, %i.p
  %i.bn = getelementptr inbounds i8, ptr %3, i64 %i.bb
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = tail call i32 @float32_muladd(i32 noundef %i.bd, i32 noundef %i.bm, i32 noundef %i.bo, i32 noundef %7, ptr noundef %5) #26
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bb
  store i32 %i.bp, ptr %i.bq, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.br = and i64 %i.ba, 63
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = and i64 %i.bs, %i.az
  %.not67 = icmp eq i64 %i.bt, 0
  br i1 %.not67, label %bb.k, label %bb.j, !prof !76

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds i8, ptr %3, i64 %i.ba
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = tail call i32 @float32_muladd(i32 noundef %i.bd, i32 noundef %i.bg, i32 noundef %i.bv, i32 noundef %8, ptr noundef %5) #26
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.ba
  store i32 %i.bw, ptr %i.bx, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not68 = icmp eq i64 %i.bh, 0
  br i1 %.not68, label %.split72, label %bb.g, !llvm.loop !1808

.split72:                                         ; preds = %bb.k
  %.not69 = icmp eq i64 %i.bb, 0
  br i1 %.not69, label %.split75.us, label %.split, !llvm.loop !1809

.split75.us:                                      ; preds = %.split72, %.split72.us.us
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_fcmla_zpzzz_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef %6) #6 {
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
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 %i.p, 63                     ; 2 uses
  %i.r = and i32 %i.l, %i.n
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 %i.s, 63                     ; 2 uses
  %i.u = and i32 %i.m, %i.j
  %7 = shl nuw nsw i32 %i.u, 1                    ; 2 uses
  %i.v = and i32 %i.j, %i.k
  %8 = shl nuw nsw i32 %i.v, 1                    ; 2 uses
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
  %i.aa = add i64 %.1.us.us, -8                   ; 4 uses
  %i.ab = add i64 %.1.us.us, -16                  ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.aa
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = xor i64 %i.af, %i.t
  %i.ah = and i64 %i.ab, 63                       ; 2 uses
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.z
  %.not66.us.us = icmp eq i64 %i.aj, 0
  br i1 %.not66.us.us, label %bb.d, label %bb.c, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.ab
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = xor i64 %i.al, %i.q
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.ab
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = tail call i64 @float64_muladd(i64 noundef %i.ad, i64 noundef %i.am, i64 noundef %i.ao, i32 noundef %7, ptr noundef %5) #26
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ab
  store i64 %i.ap, ptr %i.aq, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = and i64 %i.aa, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.z
  %.not67.us.us = icmp eq i64 %i.at, 0
  br i1 %.not67.us.us, label %bb.f, label %bb.e, !prof !76

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.aa
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = tail call i64 @float64_muladd(i64 noundef %i.ad, i64 noundef %i.ag, i64 noundef %i.av, i32 noundef %8, ptr noundef %5) #26
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aa
  store i64 %i.aw, ptr %i.ax, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not68.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not68.us.us, label %.split72.us.us, label %bb.b, !llvm.loop !1810

.split72.us.us:                                   ; preds = %bb.f
  %.not69.us = icmp eq i64 %i.ab, 0
  br i1 %.not69.us, label %.split75.us, label %.split.us.us, !llvm.loop !1811

.split:                                           ; preds = %bb.a, %.split72
  %.0 = phi i64 [ %i.bd, %.split72 ], [ %i.g, %bb.a ] ; 2 uses
  %i.ay = add i64 %.0, -1
  %i.az = ashr i64 %i.ay, 6
  %i.ba = getelementptr inbounds [8 x i8], ptr %4, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.split
  %.1 = phi i64 [ %.0, %.split ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bc = add i64 %.1, -8                         ; 5 uses
  %i.bd = add i64 %.1, -16                        ; 7 uses
  %i.be = getelementptr inbounds i8, ptr %1, i64 %i.bc
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.bd
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = xor i64 %i.bh, %i.t
  %i.bj = and i64 %i.bd, 63                       ; 2 uses
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bk, %i.bb
  %.not66 = icmp eq i64 %i.bl, 0
  br i1 %.not66, label %bb.i, label %bb.h, !prof !76

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %i.bc
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = xor i64 %i.bn, %i.q
  %i.bp = getelementptr inbounds i8, ptr %3, i64 %i.bd
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = tail call i64 @float64_muladd(i64 noundef %i.bf, i64 noundef %i.bo, i64 noundef %i.bq, i32 noundef %7, ptr noundef %5) #26
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.bd
  store i64 %i.br, ptr %i.bs, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bt = and i64 %i.bc, 63
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = and i64 %i.bu, %i.bb
  %.not67 = icmp eq i64 %i.bv, 0
  br i1 %.not67, label %bb.k, label %bb.j, !prof !76

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds i8, ptr %3, i64 %i.bc
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = tail call i64 @float64_muladd(i64 noundef %i.bf, i64 noundef %i.bi, i64 noundef %i.bx, i32 noundef %8, ptr noundef %5) #26
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.bc
  store i64 %i.by, ptr %i.bz, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not68 = icmp eq i64 %i.bj, 0
  br i1 %.not68, label %.split72, label %bb.g, !llvm.loop !1810

.split72:                                         ; preds = %bb.k
  %.not69 = icmp eq i64 %i.bd, 0
  br i1 %.not69, label %.split75.us, label %.split, !llvm.loop !1811

.split75.us:                                      ; preds = %.split72, %.split72.us.us
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ftmad_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) #6 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 1
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = lshr i32 %4, 10
  %i.j = and i32 %i.i, 7
  %i.k = zext nneg i32 %i.j to i64                ; 3 uses
  %i.l = and i32 %4, 8192                         ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  %spec.select27 = lshr exact i32 %i.l, 12        ; 2 uses
  %i.m = or disjoint i64 %i.k, 8                  ; 2 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us
  %.02628.us = phi i64 [ %i.x, %.split.us ], [ 0, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.02628.us
  %i.o = load i16, ptr %i.n, align 2              ; 2 uses
  %i.p = icmp slt i16 %i.o, 0                     ; 2 uses
  %i.q = and i16 %i.o, 32767
  %.023.us = select i1 %i.p, i64 %i.m, i64 %i.k
  %.1.us = select i1 %i.p, i32 %spec.select27, i32 0
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02628.us
  %i.s = load i16, ptr %i.r, align 2
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @helper_sve_ftmad_h.coeff, i64 %.023.us
  %i.u = load i16, ptr %i.t, align 2
  %i.v = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.s, i16 noundef zeroext %i.q, i16 noundef zeroext %i.u, i32 noundef %.1.us, ptr noundef %3) #26
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.02628.us
  store i16 %i.v, ptr %i.w, align 2
  %i.x = add nuw nsw i64 %.02628.us, 1            ; 2 uses
  %exitcond32.not = icmp eq i64 %i.x, %i.h
  br i1 %exitcond32.not, label %.split30.us, label %.split.us, !llvm.loop !1812

.split:                                           ; preds = %bb.a, %.split
  %.02628 = phi i64 [ %i.ah, %.split ], [ 0, %bb.a ] ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.02628
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %i.aa = icmp slt i16 %i.z, 0                    ; 2 uses
  %.023 = select i1 %i.aa, i64 %i.m, i64 %i.k
  %.1 = select i1 %i.aa, i32 %spec.select27, i32 0
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02628
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr @helper_sve_ftmad_h.coeff, i64 %.023
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ac, i16 noundef zeroext %i.z, i16 noundef zeroext %i.ae, i32 noundef %.1, ptr noundef %3) #26
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.02628
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = add nuw nsw i64 %.02628, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.h
  br i1 %exitcond.not, label %.split30.us, label %.split, !llvm.loop !1812

.split30.us:                                      ; preds = %.split, %.split.us
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ftmad_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) #6 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 2
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = lshr i32 %4, 10
  %i.j = and i32 %i.i, 7
  %i.k = zext nneg i32 %i.j to i64                ; 3 uses
  %i.l = and i32 %4, 8192                         ; 2 uses
end_hunk_0
