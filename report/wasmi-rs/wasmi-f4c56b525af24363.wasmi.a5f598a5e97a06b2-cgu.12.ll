Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.12?download=true
inline.NumInlined: 803
inline.NumDeleted: 402
begin_hunk_0_@_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind9into_host:bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(112) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine8code_map4spanNtB5_14EngineFuncSpan12get_or_panic(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = load i32, ptr %0, align 4, !noundef !4   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !4
  %i.f = sub i32 %i.e, %i.c
  %.not = icmp ult i32 %1, %i.f
  br i1 %.not, label %bb.b, label %bb.c, !prof !1198

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.c, %1
  ret i32 %i.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #38
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !401   ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !1198

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1599
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !1599
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1599
  %i.l = load i64, ptr %i.a, align 8, !range !1199, !noalias !1599, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !1200, !noalias !1599, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !1599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1599
  br label %bb.f

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !1599, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1599
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !1599
  %i.s = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1599
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit ], [ -1, %bb.a ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !1602 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !1198

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1608
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1608
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1608
  %i.i = load i64, ptr %i.a, align 8, !range !1199, !noalias !1608, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsefoF4u9kbII_5wasmi.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !1200, !noalias !1608, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1608
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsefoF4u9kbII_5wasmi.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !1608, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1608
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !1608
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !1608
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #42
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsefoF4u9kbII_5wasmi.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #34
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #34 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6layoutNtB5_11StackLayout15register_locals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i8 noundef range(i8 0, 7) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i8 %2, 4
  %. = select i1 %i.a, i16 2, i16 1               ; 2 uses
  %i.b = zext nneg i16 %. to i64
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %.loopexit.sink.split, label %.split, !prof !45

.split:                                           ; preds = %bb.a
  %3 = extractvalue { i64, i1 } %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i16, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = add i64 %3, %i.g                         ; 2 uses
  %i.i = icmp uge i64 %i.h, %i.g
  %i.j = icmp ult i64 %i.h, 65536
  %narrow = and i1 %i.i, %i.j
  br i1 %narrow, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %.split
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.k, align 8, !alias.scope !1609
  %.pre22 = load i64, ptr %0, align 8, !range !401, !alias.scope !1609
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit
  %i.m = phi i64 [ %.pre22, %.lr.ph ], [ %i.s, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ] ; 2 uses
  %i.n = phi i64 [ %.pre, %.lr.ph ], [ %i.v, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ] ; 3 uses
  %i.o = phi i16 [ %i.f, %.lr.ph ], [ %i.w, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ] ; 2 uses
  %.sroa.016.020 = phi i64 [ 0, %.lr.ph ], [ %i.p, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ]
  %i.p = add nuw i64 %.sroa.016.020, 1            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  %i.q = icmp eq i64 %i.n, %i.m
  br i1 %i.q, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #41
  %.pre21 = load i64, ptr %0, align 8, !range !401, !alias.scope !1609
  %.pre23 = load i16, ptr %i.e, align 8
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i16 [ %i.o, %bb.b ], [ %.pre23, %bb.c ]
  %i.s = phi i64 [ %i.m, %bb.b ], [ %.pre21, %bb.c ]
  %i.t = load ptr, ptr %i.l, align 8, !alias.scope !1609, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.n
  store i16 %i.o, ptr %i.u, align 2, !noalias !1609
  %i.v = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.v, ptr %i.k, align 8, !alias.scope !1609
  %i.w = add i16 %i.r, %.                         ; 2 uses
  store i16 %i.w, ptr %i.e, align 8
  %exitcond.not = icmp eq i64 %i.p, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %.split, %bb.a
  %i.x = tail call fastcc noundef nonnull align 8 ptr @_RNvXsc_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtB7_6engine10translator5error16TranslationErrorE4from(i64 9) #37
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit, %.loopexit.sink.split, %.preheader
  %.sroa.0.1 = phi ptr [ null, %.preheader ], [ %i.x, %.loopexit.sink.split ], [ null, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEE8grow_oneB1a_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !401, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1612
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1612
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !1612
  %i.f = load i64, ptr %i.a, align 8, !range !1199, !noalias !1612, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1200, !noalias !1612, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1612
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1612, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1612
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1612
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1612
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5zeGauAcNNa_10wasmi_core5typed11TypedRawValE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !401, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1615
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1615
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !1615
  %i.f = load i64, ptr %i.a, align 8, !range !1199, !noalias !1615, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1200, !noalias !1615, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1615
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1615, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1615
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1615
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1615
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5zeGauAcNNa_10wasmi_core6global10GlobalTypeE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !401, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1618
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1618
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 1, i64 noundef 2), !noalias !1618
  %i.f = load i64, ptr %i.a, align 8, !range !1199, !noalias !1618, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1200, !noalias !1618, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1618
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1618, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1618
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1618
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1618
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi4func4FuncE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !401, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1621
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1621
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8), !noalias !1621
  %i.f = load i64, ptr %i.a, align 8, !range !1199, !noalias !1621, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1200, !noalias !1621, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1621
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1621, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1621
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1621
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1621
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi5table5TableE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !401, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameE8grow_oneBW_:bb.a
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1200, !noalias !1684, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1684
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1684, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1684
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1684
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1684
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5StackE8grow_oneBW_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !401, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1687
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1687
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 112), !noalias !1687
  %i.f = load i64, ptr %i.a, align 8, !range !1199, !noalias !1687, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1200, !noalias !1687, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1687
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1687, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1687
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1687
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1687
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8grow_oneBY_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !401, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1690
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1690
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 120), !noalias !1690
  %i.f = load i64, ptr %i.a, align 8, !range !1199, !noalias !1690, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1200, !noalias !1690, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1690
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1690, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1690
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1690
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1690
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8grow_oneBY_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !401, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1693
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1693
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !1693
  %i.f = load i64, ptr %i.a, align 8, !range !1199, !noalias !1693, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1200, !noalias !1693, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1693
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1693, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1693
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1693
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1693
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !401, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1696
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1696
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !1696
  %i.f = load i64, ptr %i.a, align 8, !range !1199, !noalias !1696, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1200, !noalias !1696, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1696
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1696, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1696
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1696
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1696
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !401, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1699
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1699
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 2, i64 noundef 2), !noalias !1699
  %i.f = load i64, ptr %i.a, align 8, !range !1199, !noalias !1699, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1200, !noalias !1699, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1699
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1699, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1699
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1699
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1699
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #13 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %4 = extractvalue { i64, i1 } %i.a, 0           ; 7 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !1702
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !1702

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %4, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #34
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #34
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %5 = extractvalue { i64, i1 } %i.a, 0           ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %5, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !1702
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !1702

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %3 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #34
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) %3) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.i, %bb.g ], [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.k = icmp eq ptr %.pn9, null
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.m, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.p, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack10push_local(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %2, i8 noundef range(i8 0, 7) %3) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call noundef i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack14next_stack_pos(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) ; 2 uses
  %i.c = zext i32 %2 to i64                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 3 uses
  store i64 %i.b, ptr %i.i, align 8
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack17update_prev_local(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.j, i64 noundef %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp eq i8 %3, 4
  %. = select i1 %i.k, i16 2, i16 1
  call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack16push_temp_offset(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i16 noundef %.)
  %i.l = load i32, ptr %i.a, align 8, !range !1703, !noundef !4
  %i.m = trunc nuw i32 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !400, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = load i32, ptr %i.q, align 4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1704, !noalias !1707, !noundef !4 ; 3 uses
  %i.u = load i64, ptr %1, align 8, !range !401, !alias.scope !1704, !noalias !1707, !noundef !4
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8grow_oneBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #41, !noalias !1707
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1704, !noalias !1707, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.t ; 6 uses
  store i8 0, ptr %i.y, align 8, !noalias !1704
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %3, ptr %.sroa.4.0..sroa_idx24, align 1, !noalias !1704
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.r, ptr %.sroa.525.0..sroa_idx, align 4, !noalias !1704
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %2, ptr %.sroa.6.0..sroa_idx26, align 8, !noalias !1704
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %.sroa.727.0..sroa_idx, align 8, !noalias !1704
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %i.j, ptr %.sroa.8.0..sroa_idx28, align 8, !noalias !1704
  %i.z = add i64 %i.t, 1
  store i64 %i.z, ptr %i.s, align 8, !alias.scope !1704, !noalias !1707
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8
  switch i8 %3, label %default.unreachable31 [
    i8 0, label %bb.k
    i8 1, label %bb.k
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.m
    i8 5, label %bb.k
    i8 6, label %bb.k
  ]

default.unreachable31:                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit
  unreachable

bb.i:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit
  br label %bb.k

bb.j:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit
  br label %bb.k

bb.k:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit, %bb.j, %bb.i
  %.sink32 = phi i64 [ 80, %bb.j ], [ 64, %bb.i ], [ 48, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit ], [ 48, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit ], [ 48, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit ], [ 48, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit ]
  %.sink = phi i64 [ 84, %bb.j ], [ 68, %bb.i ], [ 52, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit ], [ 52, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit ], [ 52, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit ], [ 52, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.sink32
  %.sroa.011.0 = load i32, ptr %i.ad, align 8
  %i.ae = trunc i32 %.sroa.011.0 to i1
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.sroa.8.0 = load i32, ptr %.sroa.8.0..sroa_idx17, align 4
  %i.af = icmp eq i32 %.sroa.8.0, %2
  %i.ag = zext i1 %i.af to i8
  br label %bb.m

bb.m:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit, %bb.k, %bb.l
  %.sroa.07.0 = phi i8 [ %i.ag, %bb.l ], [ 0, %bb.k ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.r, ptr %i.ah, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %3, ptr %.sroa.59.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sroa.07.0, ptr %.sroa.6.0..sroa_idx, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %storemerge = phi i32 [ 0, %bb.m ], [ 1, %bb.f ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack12push_operand(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
end_hunk_1
