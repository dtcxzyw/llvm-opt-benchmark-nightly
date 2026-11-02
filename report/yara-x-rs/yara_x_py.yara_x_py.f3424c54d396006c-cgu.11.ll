Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_py.yara_x_py.f3424c54d396006c-cgu.11?download=true
inline.NumInlined: 1024
inline.NumDeleted: 341
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskSRqRFwaW70_9yara_x_py:bb.a
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1193
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !1193
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1193
  %i.l = load i64, ptr %i.a, align 8, !range !12, !noalias !1193, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskSRqRFwaW70_9yara_x_py.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !13, !noalias !1193, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1193
  br label %bb.f

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !1193, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1193
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !1193
  %i.s = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1193
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskSRqRFwaW70_9yara_x_py.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskSRqRFwaW70_9yara_x_py.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskSRqRFwaW70_9yara_x_py.exit ], [ -1, %bb.a ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !1198 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1200
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1200
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1200
  %i.i = load i64, ptr %i.a, align 8, !range !12, !noalias !1200, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskSRqRFwaW70_9yara_x_py.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !13, !noalias !1200, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1200
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !1200, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1200
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !1200
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !1200
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #31
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskSRqRFwaW70_9yara_x_py.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #1 {
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
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #30
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
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #30 ; 2 uses
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

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1203
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.h, align 8, !alias.scope !1203
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1203
  %i.i = load i64, ptr %i.a, align 8, !range !12, !noalias !1203, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskSRqRFwaW70_9yara_x_py.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !13, !noalias !1203, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1203
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !1203, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1203
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !1203
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !1203
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskSRqRFwaW70_9yara_x_py.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.n, %bb.e ], [ undef, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskSRqRFwaW70_9yara_x_py.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.e ], [ -1, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskSRqRFwaW70_9yara_x_py.exit ], [ -1, %bb.a ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.r
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [1400 x i8], align 8              ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 3 uses
  %i.k = icmp ult i64 %i.j, 144115188075855872
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val13 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr i8, ptr %1, i64 32
  %.val14 = load ptr, ptr %i.n, align 8, !nonnull !5, !align !14, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.val14, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !noalias !1219, !nonnull !5
  call void %i.p(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noundef nonnull %.val13) #34
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !range !7, !alias.scope !1220, !noundef !5
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECskSRqRFwaW70_9yara_x_py.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECskSRqRFwaW70_9yara_x_py.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.q, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.q, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.u = inttoptr i64 %2 to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.v, align 8
  store i64 1, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.x, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit28

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit28: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, %bb.r, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheE3newCskSRqRFwaW70_9yara_x_py.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECskSRqRFwaW70_9yara_x_py.exit
  ret void

common.resume:                                    ; preds = %10, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bq, %bb.t ], [ %i.t, %bb.f ], [ %11, %10 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #33
  unreachable

bb.h:                                             ; preds = %bb.c
  %4 = urem i64 %2, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %4
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEE8try_lockCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.aa)
  %i.ab = load i64, ptr %i.c, align 8, !range !12, !noundef !5
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load ptr, ptr %5, align 8, !nonnull !5, !align !14, !noundef !5 ; 9 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load i8, ptr %6, align 8, !range !1221, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.aj = trunc nuw i8 %i.ae to i1
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.al = and i64 %i.ak, 9223372036854775807
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc25, !prof !10

.noexc25:                                         ; preds = %bb.k
  %i.an = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #32
  br i1 %i.an, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc25
  store atomic i8 1, ptr %i.ai monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc25, %bb.k, %bb.j
  %i.ao = atomicrmw xchg ptr %i.ad, i32 0 release, align 4
  %i.ap = icmp eq i32 %i.ao, 2
  br i1 %i.ap, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit, !prof !4

bb.m:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit

bb.n:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ar = add nsw i64 %i.ag, -1                   ; 3 uses
  store i64 %i.ar, ptr %i.af, align 8
  %i.as = load i64, ptr %i.aq, align 8, !range !11, !noundef !5
  %i.at = icmp samesign ult i64 %i.ar, %i.as
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.aw = icmp ult i64 %i.ag, 1152921504606846977
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ar
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !align !14, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.az, align 8
  store i64 0, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.bd = trunc nuw i8 %i.ae to i1
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bf = and i64 %i.be, 9223372036854775807
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.bh = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #32
  br i1 %i.bh, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.bc monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i27

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i27: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bi = atomicrmw xchg ptr %i.ad, i32 0 release, align 4
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit28, !prof !4

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i27
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit28

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.m, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.bk, align 8, !nonnull !5, !noundef !5
  %i.bl = getelementptr i8, ptr %1, i64 32
  %.val10 = load ptr, ptr %i.bl, align 8, !nonnull !5, !align !14, !noundef !5
  %i.bm = getelementptr inbounds nuw i8, ptr %.val10, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !5, !noalias !1222, !nonnull !5
  call void %i.bn(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noundef nonnull %.val) #34, !inline_history !1210
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1223
  %i.bo = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #30, !noalias !1223 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.s, label %bb.v, !prof !4

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #31
          to label %.noexc30 unwind label %bb.t

.noexc30:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #28
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bo, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bs, align 8
  store i64 0, ptr %0, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bu, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit28

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i32 = load ptr, ptr %7, align 8, !alias.scope !1224 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val3.i33 = load i8, ptr %8, align 8, !range !1225, !alias.scope !1224, !noundef !5 ; 2 uses
  %.not.i.i34 = icmp eq i8 %.val3.i33, 2
  br i1 %.not.i.i34, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskSRqRFwaW70_9yara_x_py.exit39, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i32) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i32, i64 4
  %i.bw = trunc nuw i8 %.val3.i33 to i1
  br i1 %i.bw, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1224
  %i.by = and i64 %i.bx, 9223372036854775807
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35, label %bb.z, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.ca = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #32, !noalias !1224
  br i1 %i.ca, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bv monotonic, align 1, !noalias !1224
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.cb = atomicrmw xchg ptr %.val.i32, i32 0 release, align 4, !noalias !1224
  %i.cc = icmp eq i32 %i.cb, 2
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit.sink.split.i36, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskSRqRFwaW70_9yara_x_py.exit39, !prof !4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit.sink.split.i36: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i32), !noalias !1224
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskSRqRFwaW70_9yara_x_py.exit39

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskSRqRFwaW70_9yara_x_py.exit39: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit.sink.split.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5
  %i.ce = getelementptr i8, ptr %1, i64 32
  %.val12 = load ptr, ptr %i.ce, align 8, !nonnull !5, !align !14, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %.val12, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !5, !noalias !1226, !nonnull !5
  call void %i.cg(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noundef nonnull %.val11) #34, !inline_history !1210
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1227
  %i.ch = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #30, !noalias !1227 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %9, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheE3newCskSRqRFwaW70_9yara_x_py.exit9, !prof !4

9:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskSRqRFwaW70_9yara_x_py.exit39
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #31
          to label %.noexc38 unwind label %10

.noexc38:                                         ; preds = %9
  unreachable

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.a) #28
          to label %common.resume unwind label %12

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheE3newCskSRqRFwaW70_9yara_x_py.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskSRqRFwaW70_9yara_x_py.exit39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.ch, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %14, align 8
  store i64 0, ptr %0, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %16, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskSRqRFwaW70_9yara_x_py.exit28
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7linters6LinterEL_EE8grow_oneCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1230
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1230
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !1230
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !1230, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !1230, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1230
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1230, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1230
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1230
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1230
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEE8grow_oneCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1233
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1233
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 12), !noalias !1233
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !1233, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !1233, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1233
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1233, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1233
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1233
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1233
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x8compiler7RegexIdE8grow_oneCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1236
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1236
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 4), !noalias !1236
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !1236, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !1236, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1236
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1236, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1236
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1236
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1236
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std4path7PathBufE8grow_oneCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1239
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1239
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !1239
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !1239, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !1239, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1239
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1239, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1239
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1239
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1239
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE8grow_oneCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1242
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1242
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !1242
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !1242, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !1242, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1242
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1242, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1242
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1242
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1242
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsjq8JwqGjWmS_4pyo38pybacked11PyBackedStrE8grow_oneCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1245
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1245
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !1245
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !1245, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !1245, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1245
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
end_hunk_0
