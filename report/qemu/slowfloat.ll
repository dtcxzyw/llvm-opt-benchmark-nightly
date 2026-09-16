Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/slowfloat?download=true
inline.NumInlined: 295
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@slow_f128M_sub:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !20
  %i.ar = or disjoint i64 %i.ae, 281474976710656
  br label %f128MToFloatX.exit16

f128MToFloatX.exit16:                             ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %.sroa.08.1.i8 = phi i64 [ %.val, %bb.j ], [ 0, %bb.k ], [ %.val, %bb.o ], [ %i.al, %bb.n ], [ 0, %bb.m ]
  %.sroa.8.1.i9 = phi i64 [ %i.ae, %bb.j ], [ 0, %bb.k ], [ %i.ar, %bb.o ], [ %i.am, %bb.n ], [ 0, %bb.m ]
  %.lobit.i6 = lshr i64 %.val3, 63
  %i.as = trunc nuw nsw i64 %.lobit.i6 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i8, i64 %.sroa.8.1.i9, i32 noundef 7) #10 ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  %i.ax = extractvalue { i64, i64 } %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ax, ptr %.sroa.4.0..sroa_idx.i10, align 8, !tbaa !26
  %i.ay = xor i8 %i.as, 1
  store i8 %i.ay, ptr %i.at, align 1, !tbaa !18
  call fastcc void @floatXAdd(ptr noundef %3, ptr noundef %4)
  call fastcc void @floatXToF128M(ptr noundef %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f128M_mul(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 13 uses
  %4 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.val4 = load i64, ptr %0, align 8, !tbaa !34   ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val5 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i64 %.val5, 63
  %i.e = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %.val5, 48
  %i.g = and i64 %i.f, 32767                      ; 2 uses
  %i.h = and i64 %.val5, 281474976710655          ; 5 uses
  switch i64 %i.g, label %bb.h [
    i64 32767, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp ne i64 %.val4, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ne i64 %i.h, 0
  %i.l = icmp ne i64 %.val4, 0
  %or.cond5.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond5.i, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.o, %.preheader.i ], [ %.val4, %bb.e ]
  %.sroa.8.0.i = phi i64 [ %i.p, %.preheader.i ], [ %i.h, %bb.e ]
  %.0.i = phi i64 [ %i.m, %.preheader.i ], [ -16382, %bb.e ]
  %i.m = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.n = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 3 uses
  %i.q = icmp ult i64 %i.p, 281474976710656
  br i1 %i.q, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.r, align 8, !tbaa !20
  br label %f128MToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.s = add nsw i64 %i.g, -16383
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = or disjoint i64 %i.h, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.sroa.08.1.i = phi i64 [ %.val4, %bb.c ], [ 0, %bb.d ], [ %.val4, %bb.h ], [ %i.o, %bb.g ], [ 0, %bb.f ]
  %.sroa.8.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %.val = load i64, ptr %1, align 8, !tbaa !34    ; 5 uses
  %i.z = getelementptr i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.z, align 8, !tbaa !33 ; 3 uses
  store i8 0, ptr %4, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  store i8 0, ptr %i.aa, align 1, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  store i8 0, ptr %i.ab, align 2, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 3
  %.lobit.i6 = lshr i64 %.val3, 63
  %i.ad = trunc nuw nsw i64 %.lobit.i6 to i8
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !18
  %i.ae = lshr i64 %.val3, 48
  %i.af = and i64 %i.ae, 32767                    ; 2 uses
  %i.ag = and i64 %.val3, 281474976710655         ; 5 uses
  switch i64 %i.af, label %bb.o [
    i64 32767, label %bb.i
    i64 0, label %bb.l
  ]

bb.i:                                             ; preds = %f128MToFloatX.exit
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = icmp ne i64 %.val, 0
  %or.cond.i15 = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond.i15, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %4, align 8, !tbaa !16
  br label %f128MToFloatX.exit16

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.aa, align 1, !tbaa !17
  br label %f128MToFloatX.exit16

bb.l:                                             ; preds = %f128MToFloatX.exit
  %i.aj = icmp ne i64 %i.ag, 0
  %i.ak = icmp ne i64 %.val, 0
  %or.cond5.i7 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond5.i7, label %.preheader.i11, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.ab, align 2, !tbaa !19
  br label %f128MToFloatX.exit16

.preheader.i11:                                   ; preds = %bb.l, %.preheader.i11
  %.sroa.08.0.i12 = phi i64 [ %i.an, %.preheader.i11 ], [ %.val, %bb.l ]
  %.sroa.8.0.i13 = phi i64 [ %i.ao, %.preheader.i11 ], [ %i.ag, %bb.l ]
  %.0.i14 = phi i64 [ %i.al, %.preheader.i11 ], [ -16382, %bb.l ]
  %i.al = add nsw i64 %.0.i14, -1                 ; 2 uses
  %i.am = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i12, i64 %.sroa.8.0.i13, i32 noundef 1) #10 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.am, 1      ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 281474976710656
  br i1 %i.ap, label %.preheader.i11, label %bb.n

bb.n:                                             ; preds = %.preheader.i11
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !20
  br label %f128MToFloatX.exit16

bb.o:                                             ; preds = %f128MToFloatX.exit
  %i.ar = add nsw i64 %i.af, -16383
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !20
  %i.at = or disjoint i64 %i.ag, 281474976710656
  br label %f128MToFloatX.exit16

f128MToFloatX.exit16:                             ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %.sroa.08.1.i8 = phi i64 [ %.val, %bb.j ], [ 0, %bb.k ], [ %.val, %bb.o ], [ %i.an, %bb.n ], [ 0, %bb.m ]
  %.sroa.8.1.i9 = phi i64 [ %i.ag, %bb.j ], [ 0, %bb.k ], [ %i.at, %bb.o ], [ %i.ao, %bb.n ], [ 0, %bb.m ]
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i8, i64 %.sroa.8.1.i9, i32 noundef 7) #10 ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  %i.ax = extractvalue { i64, i64 } %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ax, ptr %.sroa.4.0..sroa_idx.i10, align 8, !tbaa !26
  call fastcc void @floatXMul(ptr noundef %3, ptr noundef %4)
  call fastcc void @floatXToF128M(ptr noundef %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f128M_mulAdd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.floatX, align 8             ; 10 uses
  %5 = alloca %struct.uint256, align 8            ; 19 uses
  %6 = alloca %struct.floatX256, align 8          ; 25 uses
  %7 = alloca %struct.floatX256, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %.val7 = load i64, ptr %0, align 8, !tbaa !34   ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val8 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  %i.b = lshr i64 %.val8, 48
  %i.c = and i64 %i.b, 32767                      ; 2 uses
  %i.d = and i64 %.val8, 281474976710655          ; 5 uses
  switch i64 %i.c, label %bb.e [
    i64 32767, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne i64 %.val7, 0
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %f128MToFloatX256.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %f128MToFloatX256.exit

bb.d:                                             ; preds = %bb.a
  %i.g = icmp ne i64 %i.d, 0
  %i.h = icmp ne i64 %.val7, 0
  %or.cond5.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond5.i.i, label %.preheader.i.i, label %f128MToFloatX256.exit

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.08.0.i.i = phi i64 [ %i.k, %.preheader.i.i ], [ %.val7, %bb.d ]
  %.sroa.8.0.i.i = phi i64 [ %i.l, %.preheader.i.i ], [ %i.d, %bb.d ]
  %.0.i.i = phi i64 [ %i.i, %.preheader.i.i ], [ -16382, %bb.d ]
  %i.i = add nsw i64 %.0.i.i, -1                  ; 2 uses
  %i.j = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i.i, i64 %.sroa.8.0.i.i, i32 noundef 1) #10 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 3 uses
  %i.m = icmp ult i64 %i.l, 281474976710656
  br i1 %i.m, label %.preheader.i.i, label %f128MToFloatX256.exit

bb.e:                                             ; preds = %bb.a
  %i.n = add nsw i64 %i.c, -16383
  %i.o = or disjoint i64 %i.d, 281474976710656
  br label %f128MToFloatX256.exit

f128MToFloatX256.exit:                            ; preds = %.preheader.i.i, %bb.b, %bb.c, %bb.d, %bb.e
  %i.p = phi i64 [ %i.n, %bb.e ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.i, %.preheader.i.i ] ; 6 uses
  %i.q = phi i8 [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %.preheader.i.i ] ; 6 uses
  %i.r = phi i8 [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.s = phi i8 [ 0, %bb.e ], [ 1, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %.preheader.i.i ] ; 2 uses
  %.sroa.08.1.i.i = phi i64 [ %.val7, %bb.e ], [ %.val7, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.k, %.preheader.i.i ]
  %.sroa.8.1.i.i = phi i64 [ %i.o, %bb.e ], [ %i.d, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.l, %.preheader.i.i ]
  %.lobit.i.i = lshr i64 %.val8, 63
  %i.t = trunc nuw nsw i64 %.lobit.i.i to i8      ; 4 uses
  %i.u = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i.i, i64 %.sroa.8.1.i.i, i32 noundef 7) #10 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 6 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 6 uses
  store i8 %i.s, ptr %6, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 4 uses
  store i8 %i.r, ptr %i.x, align 1, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 3 uses
  store i8 %i.q, ptr %i.y, align 2, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 3 ; 6 uses
  store i8 %i.t, ptr %i.z, align 1, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 %i.p, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 11 uses
  store i64 %i.w, ptr %i.ac, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 10 uses
  store i64 %i.v, ptr %i.ad, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %.val5 = load i64, ptr %1, align 8, !tbaa !34   ; 5 uses
  %i.ae = getelementptr i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.ae, align 8, !tbaa !33 ; 4 uses
  %i.af = lshr i64 %.val6, 48
  %i.ag = and i64 %i.af, 32767                    ; 2 uses
  %i.ah = and i64 %.val6, 281474976710655         ; 5 uses
  switch i64 %i.ag, label %bb.i [
    i64 32767, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %f128MToFloatX256.exit
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = icmp ne i64 %.val5, 0
  %or.cond.i.i21 = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond.i.i21, label %f128MToFloatX256.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %f128MToFloatX256.exit22

bb.h:                                             ; preds = %f128MToFloatX256.exit
  %i.ak = icmp ne i64 %i.ah, 0
  %i.al = icmp ne i64 %.val5, 0
  %or.cond5.i.i9 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond5.i.i9, label %.preheader.i.i17, label %f128MToFloatX256.exit22

.preheader.i.i17:                                 ; preds = %bb.h, %.preheader.i.i17
  %.sroa.08.0.i.i18 = phi i64 [ %i.ao, %.preheader.i.i17 ], [ %.val5, %bb.h ]
  %.sroa.8.0.i.i19 = phi i64 [ %i.ap, %.preheader.i.i17 ], [ %i.ah, %bb.h ]
  %.0.i.i20 = phi i64 [ %i.am, %.preheader.i.i17 ], [ -16382, %bb.h ]
  %i.am = add nsw i64 %.0.i.i20, -1               ; 2 uses
  %i.an = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i.i18, i64 %.sroa.8.0.i.i19, i32 noundef 1) #10 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0      ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.an, 1      ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 281474976710656
  br i1 %i.aq, label %.preheader.i.i17, label %f128MToFloatX256.exit22

bb.i:                                             ; preds = %f128MToFloatX256.exit
  %i.ar = add nsw i64 %i.ag, -16383
  %i.as = or disjoint i64 %i.ah, 281474976710656
  br label %f128MToFloatX256.exit22

f128MToFloatX256.exit22:                          ; preds = %.preheader.i.i17, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.131.0.i10 = phi i64 [ %i.ar, %bb.i ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.am, %.preheader.i.i17 ]
  %.sroa.8.0.i11 = phi i8 [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %.preheader.i.i17 ] ; 2 uses
  %.sroa.5.0.i12 = phi i1 [ false, %bb.i ], [ false, %bb.f ], [ true, %bb.g ], [ false, %bb.h ], [ false, %.preheader.i.i17 ]
  %.sroa.0.0.i13 = phi i1 [ false, %bb.i ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %.preheader.i.i17 ]
  %.sroa.08.1.i.i14 = phi i64 [ %.val5, %bb.i ], [ %.val5, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ao, %.preheader.i.i17 ]
  %.sroa.8.1.i.i15 = phi i64 [ %i.as, %bb.i ], [ %i.ah, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ap, %.preheader.i.i17 ]
  %.lobit.i.i16 = lshr i64 %.val6, 63
  %i.at = trunc nuw nsw i64 %.lobit.i.i16 to i8   ; 2 uses
  %i.au = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i.i14, i64 %.sroa.8.1.i.i15, i32 noundef 7) #10 ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.au, 0
  %i.aw = extractvalue { i64, i64 } %i.au, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.be = trunc nuw i8 %i.s to i1
  br i1 %i.be, label %floatX256Mul.exit, label %bb.j

bb.j:                                             ; preds = %f128MToFloatX256.exit22
  br i1 %.sroa.0.0.i13, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %6, align 8, !tbaa !41
  store i8 0, ptr %i.x, align 1, !tbaa !42
  store i8 0, ptr %i.y, align 2, !tbaa !43
  store i8 %i.at, ptr %i.z, align 1, !tbaa !44
  br label %floatX256Mul.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = icmp slt i64 %.val6, 0
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = xor i8 %i.t, 1                          ; 2 uses
  store i8 %i.bg, ptr %i.z, align 1, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = phi i8 [ %i.bg, %bb.m ], [ %i.t, %bb.l ] ; 4 uses
  %i.bi = trunc nuw i8 %i.r to i1
  br i1 %i.bi, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bj = trunc nuw i8 %.sroa.8.0.i11 to i1
  br i1 %i.bj, label %bb.p, label %floatX256Mul.exit

bb.p:                                             ; preds = %bb.o
  %i.bk = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.bl = or i8 %i.bk, 16
  store i8 %i.bl, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NaN, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Mul.exit

bb.q:                                             ; preds = %bb.n
  br i1 %.sroa.5.0.i12, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bm = trunc nuw i8 %i.q to i1
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.bo = or i8 %i.bn, 16
  store i8 %i.bo, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NaN, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Mul.exit

bb.t:                                             ; preds = %bb.r
  store i8 1, ptr %i.x, align 1, !tbaa !42
  br label %floatX256Mul.exit

bb.u:                                             ; preds = %bb.q
  %i.bp = or i8 %i.q, %.sroa.8.0.i11
  %or.cond.not = icmp eq i8 %i.bp, 0
  br i1 %or.cond.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = trunc nuw i8 %i.bh to i1
  br i1 %i.bq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NegativeZero, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Mul.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256PositiveZero, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Mul.exit

bb.y:                                             ; preds = %bb.u
  %i.br = add nsw i64 %i.p, %.sroa.131.0.i10      ; 3 uses
  store i64 %i.br, ptr %i.aa, align 8, !tbaa !45
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.046.i = phi i32 [ 0, %bb.y ], [ %i.cm, %bb.ab ]
  %.sroa.0.045.i = phi i64 [ 0, %bb.y ], [ %i.cb, %bb.ab ] ; 2 uses
  %.sroa.10.044.i = phi i64 [ 0, %bb.y ], [ %i.by, %bb.ab ] ; 2 uses
  %.sroa.17.043.i = phi i64 [ 0, %bb.y ], [ %.sroa.17.1.i, %bb.ab ] ; 2 uses
  %.sroa.24.042.i = phi i64 [ 0, %bb.y ], [ %.sroa.24.1.i, %bb.ab ] ; 2 uses
  %i.bs = phi i64 [ 0, %bb.y ], [ %i.ci, %bb.ab ] ; 2 uses
  %i.bt = phi i64 [ 0, %bb.y ], [ %i.cj, %bb.ab ] ; 2 uses
  %i.bu = phi i64 [ %i.v, %bb.y ], [ %i.ck, %bb.ab ] ; 2 uses
  %i.bv = phi i64 [ %i.w, %bb.y ], [ %i.cl, %bb.ab ] ; 2 uses
  %i.bw = and i64 %.sroa.0.045.i, 1
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %.sroa.10.044.i, i64 %.sroa.0.045.i, i64 63) ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.043.i, i64 %.sroa.10.044.i, i64 63) ; 4 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %.sroa.24.042.i, i64 %.sroa.17.043.i, i64 63) ; 3 uses
  %i.ca = lshr i64 %.sroa.24.042.i, 1             ; 2 uses
  %i.cb = or i64 %i.bx, %i.bw                     ; 3 uses
  %i.cc = and i64 %i.bs, 1
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = add i64 %i.bz, %i.av                    ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.bz
  %i.cf = zext i1 %i.ce to i64
  %i.cg = add i64 %i.ca, %i.aw
  %i.ch = add i64 %i.cg, %i.cf
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.24.1.i = phi i64 [ %i.ca, %bb.z ], [ %i.ch, %bb.aa ] ; 5 uses
  %.sroa.17.1.i = phi i64 [ %i.bz, %bb.z ], [ %i.cd, %bb.aa ] ; 4 uses
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bs, i64 63)
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bt, i64 63)
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bu, i64 63)
  %i.cl = lshr i64 %i.bv, 1
  %i.cm = add nuw nsw i32 %.046.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cm, 248
  br i1 %exitcond.not.i, label %bb.ac, label %bb.z

bb.ac:                                            ; preds = %bb.ab
  %i.cn = icmp ugt i64 %.sroa.24.1.i, 72057594037927935
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.co = add nsw i64 %i.br, 1                    ; 2 uses
  store i64 %i.co, ptr %i.aa, align 8, !tbaa !45
  %i.cp = and i64 %i.cb, 1
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.bx, i64 63)
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.1.i, i64 %i.by, i64 63)
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %.sroa.24.1.i, i64 %.sroa.17.1.i, i64 63)
  %i.ct = lshr i64 %.sroa.24.1.i, 1
  %i.cu = or i64 %i.cq, %i.cp
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cv = phi i64 [ %i.co, %bb.ad ], [ %i.br, %bb.ac ]
  %.sroa.24.2.i = phi i64 [ %i.ct, %bb.ad ], [ %.sroa.24.1.i, %bb.ac ] ; 2 uses
  %.sroa.17.2.i = phi i64 [ %i.cs, %bb.ad ], [ %.sroa.17.1.i, %bb.ac ] ; 2 uses
  %.sroa.10.2.i = phi i64 [ %i.cr, %bb.ad ], [ %i.by, %bb.ac ] ; 2 uses
  %.sroa.0.2.i = phi i64 [ %i.cu, %bb.ad ], [ %i.cb, %bb.ac ] ; 2 uses
  store i64 %.sroa.0.2.i, ptr %i.ab, align 8, !tbaa !26
  store i64 %.sroa.10.2.i, ptr %8, align 8, !tbaa !26
  store i64 %.sroa.17.2.i, ptr %i.ad, align 8, !tbaa !26
  store i64 %.sroa.24.2.i, ptr %i.ac, align 8, !tbaa !26
  br label %floatX256Mul.exit

floatX256Mul.exit:                                ; preds = %f128MToFloatX256.exit22, %bb.k, %bb.o, %bb.p, %bb.s, %bb.t, %bb.w, %bb.x, %bb.ae
  %.promoted72.i = phi i64 [ 0, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.0.2.i, %bb.ae ] ; 4 uses
  %.promoted74.i = phi i64 [ 0, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.10.2.i, %bb.ae ] ; 4 uses
  %.promoted76.i = phi i64 [ %i.v, %f128MToFloatX256.exit22 ], [ %i.v, %bb.k ], [ %i.v, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.v, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.17.2.i, %bb.ae ] ; 4 uses
  %.promoted78.i = phi i64 [ %i.w, %f128MToFloatX256.exit22 ], [ %i.w, %bb.k ], [ %i.w, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.w, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.24.2.i, %bb.ae ] ; 4 uses
  %i.cw = phi i64 [ %i.p, %f128MToFloatX256.exit22 ], [ %i.p, %bb.k ], [ %i.p, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.p, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %i.cv, %bb.ae ] ; 5 uses
  %i.cx = phi i8 [ %i.t, %f128MToFloatX256.exit22 ], [ %i.at, %bb.k ], [ %i.bh, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.bh, %bb.t ], [ 1, %bb.w ], [ 0, %bb.x ], [ %i.bh, %bb.ae ] ; 9 uses
  %i.cy = phi i8 [ %i.q, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ %i.q, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %bb.w ], [ 1, %bb.x ], [ %i.q, %bb.ae ] ; 2 uses
  %i.cz = phi i8 [ %i.r, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ 1, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 1, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.ae ]
  %i.da = phi i1 [ true, %f128MToFloatX256.exit22 ], [ true, %bb.k ], [ false, %bb.o ], [ true, %bb.p ], [ true, %bb.s ], [ false, %bb.t ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.ae ]
  %.val = load i64, ptr %2, align 8, !tbaa !34    ; 5 uses
  %i.db = getelementptr i8, ptr %2, i64 8
  %.val4 = load i64, ptr %i.db, align 8, !tbaa !33 ; 3 uses
  %i.dc = lshr i64 %.val4, 48
  %i.dd = and i64 %i.dc, 32767                    ; 2 uses
  %i.de = and i64 %.val4, 281474976710655         ; 5 uses
  switch i64 %i.dd, label %bb.ai [
    i64 32767, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %floatX256Mul.exit
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = icmp ne i64 %.val, 0
  %or.cond.i.i35 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i35, label %f128MToFloatX256.exit36, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br label %f128MToFloatX256.exit36

bb.ah:                                            ; preds = %floatX256Mul.exit
  %i.dh = icmp ne i64 %i.de, 0
  %i.di = icmp ne i64 %.val, 0
  %or.cond5.i.i23 = select i1 %i.dh, i1 true, i1 %i.di
  br i1 %or.cond5.i.i23, label %.preheader.i.i31, label %f128MToFloatX256.exit36

.preheader.i.i31:                                 ; preds = %bb.ah, %.preheader.i.i31
  %.sroa.08.0.i.i32 = phi i64 [ %i.dl, %.preheader.i.i31 ], [ %.val, %bb.ah ]
  %.sroa.8.0.i.i33 = phi i64 [ %i.dm, %.preheader.i.i31 ], [ %i.de, %bb.ah ]
  %.0.i.i34 = phi i64 [ %i.dj, %.preheader.i.i31 ], [ -16382, %bb.ah ]
  %i.dj = add nsw i64 %.0.i.i34, -1               ; 2 uses
  %i.dk = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i.i32, i64 %.sroa.8.0.i.i33, i32 noundef 1) #10 ; 2 uses
  %i.dl = extractvalue { i64, i64 } %i.dk, 0      ; 2 uses
  %i.dm = extractvalue { i64, i64 } %i.dk, 1      ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 281474976710656
  br i1 %i.dn, label %.preheader.i.i31, label %f128MToFloatX256.exit36

bb.ai:                                            ; preds = %floatX256Mul.exit
  %i.do = add nsw i64 %i.dd, -16383
  %i.dp = or disjoint i64 %i.de, 281474976710656
  br label %f128MToFloatX256.exit36

f128MToFloatX256.exit36:                          ; preds = %.preheader.i.i31, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.sroa.131.0.i24 = phi i64 [ %i.do, %bb.ai ], [ undef, %bb.af ], [ undef, %bb.ag ], [ undef, %bb.ah ], [ %i.dj, %.preheader.i.i31 ] ; 7 uses
  %.sroa.8.0.i25 = phi i8 [ 0, %bb.ai ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 1, %bb.ah ], [ 0, %.preheader.i.i31 ] ; 3 uses
  %.sroa.5.0.i26 = phi i8 [ 0, %bb.ai ], [ 0, %bb.af ], [ 1, %bb.ag ], [ 0, %bb.ah ], [ 0, %.preheader.i.i31 ] ; 2 uses
  %.sroa.0.0.i27 = phi i8 [ 0, %bb.ai ], [ 1, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %.preheader.i.i31 ] ; 2 uses
  %.sroa.08.1.i.i28 = phi i64 [ %.val, %bb.ai ], [ %.val, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ %i.dl, %.preheader.i.i31 ]
  %.sroa.8.1.i.i29 = phi i64 [ %i.dp, %bb.ai ], [ %i.de, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ %i.dm, %.preheader.i.i31 ]
  %.lobit.i.i30 = lshr i64 %.val4, 63
  %i.dq = trunc nuw nsw i64 %.lobit.i.i30 to i8   ; 7 uses
  %i.dr = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i.i28, i64 %.sroa.8.1.i.i29, i32 noundef 7) #10 ; 2 uses
  %i.ds = extractvalue { i64, i64 } %i.dr, 0      ; 2 uses
  %i.dt = extractvalue { i64, i64 } %i.dr, 1      ; 2 uses
  store i8 %.sroa.0.0.i27, ptr %7, align 8, !tbaa !41
  store i8 %.sroa.5.0.i26, ptr %i.ax, align 1, !tbaa !42
  store i8 %.sroa.8.0.i25, ptr %i.ay, align 2, !tbaa !43
  store i8 %i.dq, ptr %i.az, align 1, !tbaa !44
  store i64 %.sroa.131.0.i24, ptr %i.ba, align 8, !tbaa !45
  store i64 %i.dt, ptr %i.bc, align 8, !tbaa !46
  store i64 %i.ds, ptr %i.bd, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  br i1 %i.da, label %floatX256Add.exit, label %bb.aj

bb.aj:                                            ; preds = %f128MToFloatX256.exit36
  %i.du = trunc nuw i8 %.sroa.0.0.i27 to i1
  br i1 %i.du, label %bb.bx, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = trunc nuw i8 %i.cz to i1
  %i.dw = trunc nuw i8 %.sroa.5.0.i26 to i1       ; 2 uses
  br i1 %i.dv, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.not61.i = icmp ne i8 %i.cx, %i.dq
  %or.cond48.not = select i1 %i.dw, i1 %.not61.i, i1 false
  br i1 %or.cond48.not, label %bb.am, label %floatX256Add.exit

bb.am:                                            ; preds = %bb.al
  %i.dx = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.dy = or i8 %i.dx, 16
  store i8 %i.dy, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NaN, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Add.exit

bb.an:                                            ; preds = %bb.ak
  br i1 %i.dw, label %bb.bx, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dz = trunc nuw i8 %i.cy to i1
  %i.ea = and i8 %i.cy, %.sroa.8.0.i25
  %or.cond49.not = icmp eq i8 %i.ea, 0
  br i1 %or.cond49.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eb = icmp eq i8 %i.cx, %i.dq
  br i1 %i.eb, label %floatX256Add.exit, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %.not.i37 = icmp ne i8 %i.cx, %i.dq
  %i.ec = icmp eq i64 %i.cw, %.sroa.131.0.i24
  %or.cond.i = select i1 %.not.i37, i1 %i.ec, i1 false
  %i.ed = icmp eq i64 %.promoted78.i, %i.dt
  %or.cond51 = select i1 %or.cond.i, i1 %i.ed, i1 false
  %i.ee = icmp eq i64 %.promoted76.i, %i.ds
  %or.cond53 = select i1 %or.cond51, i1 %i.ee, i1 false
  br i1 %or.cond53, label %bb.ar, label %eq256M.exit.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.ef = icmp eq i64 %.promoted74.i, 0
  %i.eg = icmp eq i64 %.promoted72.i, 0
  %or.cond55 = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond55, label %bb.as, label %eq256M.exit.thread.i

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %i.eh = load i8, ptr @slowfloat_roundingMode, align 1, !tbaa !27
  %i.ei = icmp eq i8 %i.eh, 2
  br i1 %i.ei, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NegativeZero, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Add.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256PositiveZero, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Add.exit

eq256M.exit.thread.i:                             ; preds = %bb.ar, %bb.aq
  br i1 %i.dz, label %bb.bx, label %bb.av

bb.av:                                            ; preds = %eq256M.exit.thread.i
  %i.ej = trunc nuw i8 %.sroa.8.0.i25 to i1
  br i1 %i.ej, label %floatX256Add.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ek = sub nsw i64 %i.cw, %.sroa.131.0.i24     ; 9 uses
  %i.el = icmp slt i64 %i.ek, 0
  br i1 %i.el, label %bb.ax, label %bb.bh

bb.ax:                                            ; preds = %bb.aw
  store i64 %.sroa.131.0.i24, ptr %i.aa, align 8, !tbaa !45
  %i.em = icmp samesign ult i64 %i.ek, -248
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  br i1 %i.em, label %bb.ay, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ax
  %i.en = sub i64 %.sroa.131.0.i24, %i.cw
  %.neg205 = add i64 %i.cw, 1
  %xtraiter199 = and i64 %i.en, 1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %i.eo = add nsw i64 %i.ek, 1
  %i.ep = and i64 %.promoted72.i, 1
  %i.eq = tail call i64 @llvm.fshl.i64(i64 %.promoted74.i, i64 %.promoted72.i, i64 63)
  %i.er = tail call i64 @llvm.fshl.i64(i64 %.promoted76.i, i64 %.promoted74.i, i64 63) ; 2 uses
  %i.es = tail call i64 @llvm.fshl.i64(i64 %.promoted78.i, i64 %.promoted76.i, i64 63) ; 2 uses
  %i.et = lshr i64 %.promoted78.i, 1              ; 2 uses
  %i.eu = or i64 %i.eq, %i.ep                     ; 2 uses
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa179.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.er, %.preheader.i.prol ]
  %.lcssa178.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.es, %.preheader.i.prol ]
  %.lcssa177.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.et, %.preheader.i.prol ]
  %.lcssa176.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.eu, %.preheader.i.prol ]
  %.unr201 = phi i64 [ %.promoted78.i, %.preheader.i.preheader ], [ %i.et, %.preheader.i.prol ]
  %.unr202 = phi i64 [ %.promoted76.i, %.preheader.i.preheader ], [ %i.es, %.preheader.i.prol ]
  %.unr203 = phi i64 [ %.promoted74.i, %.preheader.i.preheader ], [ %i.er, %.preheader.i.prol ]
  %.unr204 = phi i64 [ %.promoted72.i, %.preheader.i.preheader ], [ %i.eu, %.preheader.i.prol ]
  %.071.i.unr = phi i64 [ %i.ek, %.preheader.i.preheader ], [ %i.eo, %.preheader.i.prol ]
  %i.ev = icmp eq i64 %.sroa.131.0.i24, %.neg205
  br i1 %i.ev, label %.loopexit.i, label %.preheader.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.ab, align 8, !tbaa !49
  br label %bb.az

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %i.ew = phi i64 [ %i.fk, %.preheader.i ], [ %.unr201, %.preheader.i.prol.loopexit ] ; 3 uses
  %i.ex = phi i64 [ %i.fj, %.preheader.i ], [ %.unr202, %.preheader.i.prol.loopexit ] ; 2 uses
  %i.ey = phi i64 [ %i.fi, %.preheader.i ], [ %.unr203, %.preheader.i.prol.loopexit ] ; 2 uses
  %i.ez = phi i64 [ %i.fl, %.preheader.i ], [ %.unr204, %.preheader.i.prol.loopexit ] ; 2 uses
  %.071.i = phi i64 [ %i.ff, %.preheader.i ], [ %.071.i.unr, %.preheader.i.prol.loopexit ]
  %i.fa = tail call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ez, i64 63) ; 2 uses
  %i.fb = tail call i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ey, i64 63) ; 2 uses
  %i.fc = tail call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ex, i64 63) ; 2 uses
  %i.fd = lshr i64 %i.ew, 1
  %i.fe = or i64 %i.fa, %i.ez
  %i.ff = add nsw i64 %.071.i, 2                  ; 2 uses
  %i.fg = and i64 %i.fe, 1
  %i.fh = tail call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fa, i64 63)
  %i.fi = tail call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fb, i64 63) ; 2 uses
  %i.fj = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fc, i64 63) ; 2 uses
  %i.fk = lshr i64 %i.ew, 2                       ; 2 uses
  %i.fl = or i64 %i.fh, %i.fg                     ; 2 uses
  %exitcond.not.i39.1 = icmp eq i64 %i.ff, 0
  br i1 %exitcond.not.i39.1, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %.preheader.i.prol.loopexit
  %.lcssa179 = phi i64 [ %.lcssa179.unr, %.preheader.i.prol.loopexit ], [ %i.fi, %.preheader.i ] ; 2 uses
  %.lcssa178 = phi i64 [ %.lcssa178.unr, %.preheader.i.prol.loopexit ], [ %i.fj, %.preheader.i ] ; 2 uses
  %.lcssa177 = phi i64 [ %.lcssa177.unr, %.preheader.i.prol.loopexit ], [ %i.fk, %.preheader.i ] ; 2 uses
  %.lcssa176 = phi i64 [ %.lcssa176.unr, %.preheader.i.prol.loopexit ], [ %i.fl, %.preheader.i ] ; 2 uses
  store i64 %.lcssa176, ptr %i.ab, align 8, !tbaa !36
  store i64 %.lcssa179, ptr %9, align 8, !tbaa !37
  store i64 %.lcssa178, ptr %i.ad, align 8, !tbaa !38
  store i64 %.lcssa177, ptr %i.ac, align 8, !tbaa !39
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.i, %bb.ay
  %i.fm = phi i64 [ %.lcssa178, %.loopexit.i ], [ 0, %bb.ay ] ; 3 uses
  %i.fn = phi i64 [ %.lcssa177, %.loopexit.i ], [ 0, %bb.ay ] ; 3 uses
  %i.fo = phi i64 [ %.lcssa176, %.loopexit.i ], [ 1, %bb.ay ] ; 3 uses
  %i.fp = phi i64 [ %.lcssa179, %.loopexit.i ], [ 0, %bb.ay ] ; 3 uses
  %.not59.i = icmp eq i8 %i.cx, %i.dq
  br i1 %.not59.i, label %neg256M.exit47, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.fr = or i64 %i.fo, %i.fp
  %.not.i44 = icmp eq i64 %i.fr, 0
  br i1 %.not.i44, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fs = xor i64 %i.fn, -1
  store i64 %i.fs, ptr %i.ac, align 8, !tbaa !39
  %i.ft = xor i64 %i.fm, -1
  store i64 %i.ft, ptr %i.ad, align 8, !tbaa !38
  %.not24.i45 = icmp eq i64 %i.fo, 0
  br i1 %.not24.i45, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fu = xor i64 %i.fp, -1
  store i64 %i.fu, ptr %i.fq, align 8, !tbaa !37
  %i.fv = sub i64 0, %i.fo
  store i64 %i.fv, ptr %i.ab, align 8, !tbaa !36
  br label %neg256M.exit47

bb.bd:                                            ; preds = %bb.bb
  %i.fw = sub i64 0, %i.fp
  store i64 %i.fw, ptr %i.fq, align 8, !tbaa !37
  br label %neg256M.exit47

bb.be:                                            ; preds = %bb.ba
  %.not23.i46 = icmp eq i64 %i.fm, 0
  br i1 %.not23.i46, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fx = xor i64 %i.fn, -1
  store i64 %i.fx, ptr %i.ac, align 8, !tbaa !39
  %i.fy = sub i64 0, %i.fm
  store i64 %i.fy, ptr %i.ad, align 8, !tbaa !38
  br label %neg256M.exit47

bb.bg:                                            ; preds = %bb.be
  %i.fz = sub nsw i64 0, %i.fn
  store i64 %i.fz, ptr %i.ac, align 8, !tbaa !39
  br label %neg256M.exit47

neg256M.exit47:                                   ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.bc, %bb.az
  store i8 %i.dq, ptr %i.z, align 1, !tbaa !44
  br label %neg256M.exit.i

bb.bh:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !tbaa.struct !50
  %i.ga = icmp samesign ugt i64 %i.ek, 248
  br i1 %i.ga, label %bb.bi, label %.preheader62.i

.preheader62.i:                                   ; preds = %bb.bh
  %.promoted.i38 = load i64, ptr %5, align 8      ; 4 uses
  %.not80.i = icmp eq i64 %i.ek, 0
  br i1 %.not80.i, label %.loopexit63.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader62.i
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.promoted65.i = load i64, ptr %i.gb, align 8, !tbaa !37 ; 3 uses
  %.promoted67.i = load i64, ptr %i.gc, align 8, !tbaa !38 ; 3 uses
  %.promoted69.i = load i64, ptr %i.gd, align 8, !tbaa !39 ; 3 uses
  %.neg = add i64 %.sroa.131.0.i24, 1
  %xtraiter = and i64 %i.ek, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.ge = add nsw i64 %i.ek, -1
  %i.gf = and i64 %.promoted.i38, 1
  %i.gg = tail call i64 @llvm.fshl.i64(i64 %.promoted65.i, i64 %.promoted.i38, i64 63)
  %i.gh = tail call i64 @llvm.fshl.i64(i64 %.promoted67.i, i64 %.promoted65.i, i64 63) ; 2 uses
  %i.gi = tail call i64 @llvm.fshl.i64(i64 %.promoted69.i, i64 %.promoted67.i, i64 63) ; 2 uses
  %i.gj = lshr i64 %.promoted69.i, 1              ; 2 uses
  %i.gk = or i64 %i.gg, %i.gf                     ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.unr = phi i64 [ %.promoted69.i, %.lr.ph.i ], [ %i.gj, %.prol.loopexit.unr-lcssa ]
  %.unr196 = phi i64 [ %.promoted67.i, %.lr.ph.i ], [ %i.gi, %.prol.loopexit.unr-lcssa ]
  %.unr197 = phi i64 [ %.promoted65.i, %.lr.ph.i ], [ %i.gh, %.prol.loopexit.unr-lcssa ]
  %.164.i.unr = phi i64 [ %i.ek, %.lr.ph.i ], [ %i.ge, %.prol.loopexit.unr-lcssa ]
  %.unr198 = phi i64 [ %.promoted.i38, %.lr.ph.i ], [ %i.gk, %.prol.loopexit.unr-lcssa ]
  %.lcssa183.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.gh, %.prol.loopexit.unr-lcssa ]
  %.lcssa182.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.gi, %.prol.loopexit.unr-lcssa ]
  %.lcssa181.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.gj, %.prol.loopexit.unr-lcssa ]
  %.lcssa180.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.gk, %.prol.loopexit.unr-lcssa ]
  %i.gl = icmp eq i64 %i.cw, %.neg
  br i1 %i.gl, label %..loopexit63_crit_edge.i, label %.lr.ph.i.new

bb.bi:                                            ; preds = %bb.bh
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %i.gn = phi i64 [ %i.hb, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %i.go = phi i64 [ %i.ha, %.lr.ph.i.new ], [ %.unr196, %.prol.loopexit ] ; 2 uses
  %i.gp = phi i64 [ %i.gz, %.lr.ph.i.new ], [ %.unr197, %.prol.loopexit ] ; 2 uses
  %.164.i = phi i64 [ %i.gw, %.lr.ph.i.new ], [ %.164.i.unr, %.prol.loopexit ] ; 2 uses
  %i.gq = phi i64 [ %i.hc, %.lr.ph.i.new ], [ %.unr198, %.prol.loopexit ] ; 2 uses
  %i.gr = tail call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gq, i64 63) ; 2 uses
  %i.gs = tail call i64 @llvm.fshl.i64(i64 %i.go, i64 %i.gp, i64 63) ; 2 uses
  %i.gt = tail call i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.go, i64 63) ; 2 uses
  %i.gu = lshr i64 %i.gn, 1
  %i.gv = or i64 %i.gr, %i.gq
  %i.gw = add nsw i64 %.164.i, -2
  %i.gx = and i64 %i.gv, 1
  %i.gy = tail call i64 @llvm.fshl.i64(i64 %i.gs, i64 %i.gr, i64 63)
  %i.gz = tail call i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gs, i64 63) ; 2 uses
  %i.ha = tail call i64 @llvm.fshl.i64(i64 %i.gu, i64 %i.gt, i64 63) ; 2 uses
  %i.hb = lshr i64 %i.gn, 2                       ; 2 uses
  %i.hc = or i64 %i.gy, %i.gx                     ; 2 uses
  %i.hd = icmp sgt i64 %.164.i, 2
  br i1 %i.hd, label %.lr.ph.i.new, label %..loopexit63_crit_edge.i

..loopexit63_crit_edge.i:                         ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.lcssa183 = phi i64 [ %.lcssa183.unr, %.prol.loopexit ], [ %i.gz, %.lr.ph.i.new ]
  %.lcssa182 = phi i64 [ %.lcssa182.unr, %.prol.loopexit ], [ %i.ha, %.lr.ph.i.new ]
  %.lcssa181 = phi i64 [ %.lcssa181.unr, %.prol.loopexit ], [ %i.hb, %.lr.ph.i.new ]
  %.lcssa180 = phi i64 [ %.lcssa180.unr, %.prol.loopexit ], [ %i.hc, %.lr.ph.i.new ]
  store i64 %.lcssa183, ptr %i.gb, align 8, !tbaa !37
  store i64 %.lcssa182, ptr %i.gc, align 8, !tbaa !38
  store i64 %.lcssa181, ptr %i.gd, align 8, !tbaa !39
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.preheader62.i, %..loopexit63_crit_edge.i, %bb.bi
  %i.he = phi i64 [ 1, %bb.bi ], [ %.lcssa180, %..loopexit63_crit_edge.i ], [ %.promoted.i38, %.preheader62.i ] ; 4 uses
  store i64 %i.he, ptr %5, align 8
  %.not58.i = icmp eq i8 %i.cx, %i.dq
  br i1 %.not58.i, label %neg256M.exit.i, label %bb.bj

bb.bj:                                            ; preds = %.loopexit63.i
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !37 ; 3 uses
  %i.hh = or i64 %i.hg, %i.he
  %.not.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hj = load <2 x i64>, ptr %i.hi, align 8, !tbaa !26
  %i.hk = xor <2 x i64> %i.hj, splat (i64 -1)
  store <2 x i64> %i.hk, ptr %i.hi, align 8, !tbaa !26
  %.not24.i.i = icmp eq i64 %i.he, 0
  br i1 %.not24.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hl = xor i64 %i.hg, -1
  store i64 %i.hl, ptr %i.hf, align 8, !tbaa !37
  %i.hm = sub i64 0, %i.he
  store i64 %i.hm, ptr %5, align 8, !tbaa !36
  br label %neg256M.exit.i

bb.bm:                                            ; preds = %bb.bk
  %i.hn = sub i64 0, %i.hg
  store i64 %i.hn, ptr %i.hf, align 8, !tbaa !37
  br label %neg256M.exit.i

bb.bn:                                            ; preds = %bb.bj
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !38 ; 2 uses
  %.not23.i.i = icmp eq i64 %i.hp, 0
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !39 ; 2 uses
  br i1 %.not23.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hs = xor i64 %i.hr, -1
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !39
  %i.ht = sub i64 0, %i.hp
  store i64 %i.ht, ptr %i.ho, align 8, !tbaa !38
  br label %neg256M.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.hu = sub i64 0, %i.hr
  store i64 %i.hu, ptr %i.hq, align 8, !tbaa !39
  br label %neg256M.exit.i

neg256M.exit.i:                                   ; preds = %.loopexit63.i, %bb.bl, %bb.bm, %bb.bo, %bb.bp, %neg256M.exit47
  %.sink = phi ptr [ %i.bb, %neg256M.exit47 ], [ %5, %bb.bp ], [ %5, %bb.bo ], [ %5, %bb.bm ], [ %5, %bb.bl ], [ %5, %.loopexit63.i ]
  call fastcc void @add256M(ptr noundef %i.ab, ptr noundef %.sink)
  %i.hv = load i64, ptr %i.ac, align 8, !tbaa !46 ; 4 uses
  %.not60.i = icmp sgt i64 %i.hv, -1
  %.pre110 = load i8, ptr %i.z, align 1, !tbaa !44, !range !23 ; 2 uses
  br i1 %.not60.i, label %floatX256Add.exit, label %bb.bq

end_hunk_0
