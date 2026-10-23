Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.000?download=true
inline.NumInlined: 13187
inline.NumDeleted: 6664
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB19_3VecfEEENtNtNtB9_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment:.peel.begin
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECs607s0NAIaWN_7segment.exit.i7.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.x, align 8, !alias.scope !19589
  br label %common.resume.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECs607s0NAIaWN_7segment.exit.i7.i: ; preds = %bb.i
  store ptr null, ptr %i.x, align 8, !alias.scope !19589
  br label %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1g_3VecfEEIB1c_fEENtNtNtB9_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit

_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1g_3VecfEEIB1c_fEENtNtNtB9_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEfNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs607s0NAIaWN_7segment.exit.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB13_3VecfEEEINtB5_8FuseImplBY_E4nextCs607s0NAIaWN_7segment.exit.thread.i, %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCs607s0NAIaWN_7segment.exit.thread.i4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECs607s0NAIaWN_7segment.exit.i7.i
  %.sroa.3.0.i5.pn.i = phi float [ %i.s, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEfNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs607s0NAIaWN_7segment.exit.i ], [ undef, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB13_3VecfEEEINtB5_8FuseImplBY_E4nextCs607s0NAIaWN_7segment.exit.thread.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECs607s0NAIaWN_7segment.exit.i7.i ], [ %i.af, %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCs607s0NAIaWN_7segment.exit.thread.i4.i ]
  %.sroa.0.0.i = phi i32 [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEfNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs607s0NAIaWN_7segment.exit.i ], [ 0, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB13_3VecfEEEINtB5_8FuseImplBY_E4nextCs607s0NAIaWN_7segment.exit.thread.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECs607s0NAIaWN_7segment.exit.i7.i ], [ 1, %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCs607s0NAIaWN_7segment.exit.thread.i4.i ]
  %i.ah = insertvalue { i32, float } poison, i32 %.sroa.0.0.i, 0
  %i.ai = insertvalue { i32, float } %i.ah, float %.sroa.3.0.i5.pn.i, 1
  ret { i32, float } %i.ai
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsF_NtCsexYYUdYSQU6_5alloc3vecAfj80_INtNtCskKLDkoKarTP_4core7convert7TryFromINtB5_3VecfEE8try_fromCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([520 x i8]) align 8 captures(none) dereferenceable(520) initializes((0, 4), (8, 32)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 2 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 128
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i32 1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.g, ptr noundef nonnull align 4 dereferenceable(512) %i.f, i64 512, i1 false)
  store i32 0, ptr %0, align 8
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsS_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_14VectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %1, align 8, !range !43, !noundef !14 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775807
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808
  %i.f = icmp slt i64 %i.c, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 1
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19606)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !19606, !nonnull !14, !noundef !14
  %i.k = load i64, ptr %i.h, align 8, !alias.scope !19606, !noundef !14 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19607
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %i.k, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !19607
  %i.l = load i64, ptr %i.b, align 8, !range !24, !noalias !19607, !noundef !14
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !56, !noalias !19607, !noundef !14 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.p, align 8, !noalias !19607
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #37, !noalias !19607
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i: ; preds = %bb.c
  %i.r = load ptr, ptr %i.p, align 8, !noalias !19607, !nonnull !14, !noundef !14 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19607
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i
  %i.t = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull readonly align 4 %i.j, i64 %i.t, i1 false), !noalias !19608
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment.exit

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXs9_NtNtCs4ByaKcm8ifS_6sparse6common13sparse_vectorNtB5_12SparseVectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) #31
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19609)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !19609, !nonnull !14, !noundef !14
  %i.y = load i64, ptr %i.v, align 8, !alias.scope !19609, !noundef !14 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19610
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.y, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !19610
  %i.z = load i64, ptr %i.a, align 8, !range !24, !noalias !19610, !noundef !14
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !56, !noalias !19610, !noundef !14 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.h, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i1, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !19610
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #37, !noalias !19610
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i1: ; preds = %bb.g
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !19610, !nonnull !14, !noundef !14 ; 2 uses
  %i.ag = icmp ule i64 %i.y, %i.ac
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19610
  %.not.i.i2 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i2, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment.exit3, label %bb.i

bb.i:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i1
  %i.ah = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull readonly align 4 %i.x, i64 %i.ah, i1 false), !noalias !19611
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment.exit3

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment.exit3: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i1, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ak, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.y, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment.exit3, %bb.f, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs_NtCs5tRDsWtv0pR_6wyhash6traitsNtB4_6WyHashNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted76 = load i64, ptr %i.c, align 8
  %i.d = and i64 %2, 31                           ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19722)
  %i.e = and i64 %2, 9223372036854775776          ; 9 uses
  %.not38.i = icmp eq i64 %i.e, 0
  br i1 %.not38.i, label %._crit_edge.i, label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions6read64.exit37.i

bb.b:                                             ; preds = %bb.a
  %i.f = xor i64 %i.b, -6884282663029611473
  store i64 %i.f, ptr %0, align 8
  br label %.loopexit

._crit_edge.i:                                    ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions6read64.exit37.i, %.preheader
  %.sroa.0.0.lcssa.i = phi i64 [ %i.b, %.preheader ], [ %i.mf, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions6read64.exit37.i ]
  %i.g = xor i64 %.sroa.0.0.lcssa.i, -6884282663029611473 ; 7 uses
  %i.h = and i64 %2, 31                           ; 8 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions11wyhash_core.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.j = add nuw i64 %2, 31
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 20 uses
  switch i64 %i.l, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.n
    i64 2, label %bb.ac
    i64 3, label %bb.au
  ], !prof !21

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19723)
  switch i64 %i.h, label %bb.e [
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
  ], !prof !19724

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #32, !noalias !19725
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !19725, !noundef !14
  %i.o = zext i8 %i.n to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i

bb.g:                                             ; preds = %bb.d
  %i.p = load i16, ptr %i.m, align 1, !alias.scope !19725
  %i.q = zext i16 %i.p to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i

bb.h:                                             ; preds = %bb.d
  %i.r = load i16, ptr %i.m, align 1, !alias.scope !19725
  %i.s = zext i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !19725, !noundef !14
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i

bb.i:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.m, align 1, !alias.scope !19726
  %i.z = zext i32 %i.y to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i

bb.j:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.m, align 1, !alias.scope !19727
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !19725, !noundef !14
  %i.af = zext i8 %i.ae to i64
  %i.ag = or disjoint i64 %i.ac, %i.af
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i

bb.k:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.m, align 1, !alias.scope !19728
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 16
  %i.ak = getelementptr i8, ptr %i.m, i64 4
  %3 = load i16, ptr %i.ak, align 1, !alias.scope !19725
  %i.al = zext i16 %3 to i64
  %i.am = or disjoint i64 %i.aj, %i.al
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i

bb.l:                                             ; preds = %bb.d
  %i.an = load i32, ptr %i.m, align 1, !alias.scope !19729
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 24
  %i.aq = getelementptr i8, ptr %i.m, i64 4
  %4 = load i16, ptr %i.aq, align 1, !alias.scope !19725
  %i.ar = zext i16 %4 to i64
  %i.as = shl nuw nsw i64 %i.ar, 8
  %i.at = or disjoint i64 %i.as, %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !19725, !noundef !14
  %i.aw = zext i8 %i.av to i64
  %i.ax = or disjoint i64 %i.at, %i.aw
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i

bb.m:                                             ; preds = %bb.d
  %i.ay = load i32, ptr %i.m, align 1, !alias.scope !19730
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ba = zext i32 %i.ay to i64
  %i.bb = shl nuw i64 %i.ba, 32
  %i.bc = load i32, ptr %i.az, align 1, !alias.scope !19731
  %i.bd = zext i32 %i.bc to i64
  %i.be = or disjoint i64 %i.bb, %i.bd
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i

_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.f ], [ %i.q, %bb.g ], [ %i.x, %bb.h ], [ %i.z, %bb.i ], [ %i.ag, %bb.j ], [ %i.am, %bb.k ], [ %i.ax, %bb.l ], [ %i.be, %bb.m ]
  %i.bf = xor i64 %.sroa.0.0.i.i, -1800455987208640293
  %i.bg = zext i64 %i.g to i128
  %i.bh = zext i64 %i.bf to i128
  %i.bi = mul nuw i128 %i.bh, %i.bg               ; 2 uses
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = xor i128 %i.bj, %i.bi
  %i.bl = trunc i128 %i.bk to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions11wyhash_core.exit

bb.n:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19733)
  %i.bm = icmp samesign ugt i64 %i.h, 3
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19734
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bn = load i32, ptr %i.m, align 1, !alias.scope !19734
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19735)
  %i.bo = icmp samesign ugt i64 %i.h, 7
  br i1 %i.bo, label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add nsw i64 %i.d, -4
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19736
  unreachable

_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit.i: ; preds = %bb.p
  %i.bq = or disjoint i64 %i.e, 8                 ; 4 uses
  %i.br = icmp samesign ugt i64 %i.bq, %2
  br i1 %i.br, label %bb.ab, label %bb.r, !prof !16

bb.r:                                             ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit.i
  %i.bs = zext i32 %i.bn to i64
  %i.bt = shl nuw i64 %i.bs, 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bv = load i32, ptr %i.bu, align 1, !alias.scope !19736
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.bt, %i.bw
  %i.by = xor i64 %i.bx, %i.g
  %i.bz = sub nuw nsw i64 %2, %i.bq
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19737)
  switch i64 %i.bz, label %bb.s [
    i64 1, label %bb.t
    i64 2, label %bb.u
    i64 3, label %bb.v
    i64 4, label %bb.w
    i64 5, label %bb.x
    i64 6, label %bb.y
    i64 7, label %bb.z
    i64 8, label %bb.aa
  ], !prof !19724

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #32, !noalias !19738
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !19738, !noundef !14
  %i.cc = zext i8 %i.cb to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i

bb.u:                                             ; preds = %bb.r
  %i.cd = load i16, ptr %i.ca, align 1, !alias.scope !19738
  %i.ce = zext i16 %i.cd to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i

bb.v:                                             ; preds = %bb.r
  %i.cf = load i16, ptr %i.ca, align 1, !alias.scope !19738
  %i.cg = zext i16 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !19738, !noundef !14
  %i.ck = zext i8 %i.cj to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i

bb.w:                                             ; preds = %bb.r
  %i.cm = load i32, ptr %i.ca, align 1, !alias.scope !19739
  %i.cn = zext i32 %i.cm to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i

bb.x:                                             ; preds = %bb.r
  %i.co = load i32, ptr %i.ca, align 1, !alias.scope !19740
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !19738, !noundef !14
  %i.ct = zext i8 %i.cs to i64
  %i.cu = or disjoint i64 %i.cq, %i.ct
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i

bb.y:                                             ; preds = %bb.r
  %i.cv = load i32, ptr %i.ca, align 1, !alias.scope !19741
  %i.cw = zext i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 16
  %i.cy = getelementptr i8, ptr %i.ca, i64 4
  %5 = load i16, ptr %i.cy, align 1, !alias.scope !19738
  %i.cz = zext i16 %5 to i64
  %i.da = or disjoint i64 %i.cx, %i.cz
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i

bb.z:                                             ; preds = %bb.r
  %i.db = load i32, ptr %i.ca, align 1, !alias.scope !19742
  %i.dc = zext i32 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 24
  %i.de = getelementptr i8, ptr %i.ca, i64 4
  %6 = load i16, ptr %i.de, align 1, !alias.scope !19738
  %i.df = zext i16 %6 to i64
  %i.dg = shl nuw nsw i64 %i.df, 8
  %i.dh = or disjoint i64 %i.dg, %i.dd
  %i.di = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !19738, !noundef !14
  %i.dk = zext i8 %i.dj to i64
  %i.dl = or disjoint i64 %i.dh, %i.dk
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i

bb.aa:                                            ; preds = %bb.r
  %i.dm = load i32, ptr %i.ca, align 1, !alias.scope !19743
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.do = zext i32 %i.dm to i64
  %i.dp = shl nuw i64 %i.do, 32
  %i.dq = load i32, ptr %i.dn, align 1, !alias.scope !19744
  %i.dr = zext i32 %i.dq to i64
  %i.ds = or disjoint i64 %i.dp, %i.dr
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i

_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i25.i = phi i64 [ %i.cc, %bb.t ], [ %i.ce, %bb.u ], [ %i.cl, %bb.v ], [ %i.cn, %bb.w ], [ %i.cu, %bb.x ], [ %i.da, %bb.y ], [ %i.dl, %bb.z ], [ %i.ds, %bb.aa ]
  %i.dt = xor i64 %.sroa.0.0.i25.i, -8161530843051276573
  %i.du = zext i64 %i.by to i128
  %i.dv = zext i64 %i.dt to i128
  %i.dw = mul nuw i128 %i.dv, %i.du               ; 2 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = xor i128 %i.dx, %i.dw
  %i.dz = trunc i128 %i.dy to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions11wyhash_core.exit

bb.ab:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bq, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #32, !noalias !19722
  unreachable

bb.ac:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19746)
  %i.ea = icmp samesign ugt i64 %i.h, 3
  br i1 %i.ea, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19747
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.eb = load i32, ptr %i.m, align 1, !alias.scope !19747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19748)
  %i.ec = icmp samesign ugt i64 %i.h, 7
  br i1 %i.ec, label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit27.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = add nsw i64 %i.d, -4
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.ed, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19749
  unreachable

_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit27.i: ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ef = zext i32 %i.eb to i64
  %i.eg = shl nuw i64 %i.ef, 32
  %i.eh = load i32, ptr %i.ee, align 1, !alias.scope !19749
  %i.ei = zext i32 %i.eh to i64
  %i.ej = or disjoint i64 %i.eg, %i.ei
  %i.ek = or disjoint i64 %i.e, 8                 ; 4 uses
  %i.el = icmp samesign ugt i64 %i.ek, %2
  br i1 %i.el, label %bb.ak, label %bb.ag, !prof !16

bb.ag:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit27.i
  %i.em = sub nuw nsw i64 %2, %i.ek               ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19751)
  %i.eo = icmp samesign ugt i64 %i.em, 3
  br i1 %i.eo, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.em, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19752
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ep = load i32, ptr %i.en, align 1, !alias.scope !19752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19753)
  %i.eq = icmp samesign ugt i64 %i.em, 7
  br i1 %i.eq, label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = add nsw i64 %i.em, -4
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.er, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19754
  unreachable

_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i: ; preds = %bb.ai
  %i.es = or disjoint i64 %i.e, 16                ; 2 uses
  %i.et = zext i32 %i.ep to i64
  %i.eu = shl nuw i64 %i.et, 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ew = load i32, ptr %i.ev, align 1, !alias.scope !19754
  %i.ex = zext i32 %i.ew to i64
  %i.ey = or disjoint i64 %i.eu, %i.ex
  %i.ez = xor i64 %i.ej, %i.g
  %i.fa = zext i64 %i.ez to i128
  %i.fb = xor i64 %i.ey, -8161530843051276573
  %i.fc = zext i64 %i.fb to i128
  %i.fd = mul nuw i128 %i.fc, %i.fa               ; 2 uses
  %i.fe = sub nuw nsw i64 %2, %i.es
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %i.es ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19755)
  switch i64 %i.fe, label %bb.al [
    i64 1, label %bb.am
    i64 2, label %bb.an
    i64 3, label %bb.ao
    i64 4, label %bb.ap
    i64 5, label %bb.aq
    i64 6, label %bb.ar
    i64 7, label %bb.as
    i64 8, label %bb.at
  ], !prof !19724

bb.ak:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit27.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ek, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #32, !noalias !19722
  unreachable

bb.al:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #32, !noalias !19756
  unreachable

bb.am:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !19756, !noundef !14
  %i.fh = zext i8 %i.fg to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i

bb.an:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i
  %i.fi = load i16, ptr %i.ff, align 1, !alias.scope !19756
  %i.fj = zext i16 %i.fi to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i

bb.ao:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i
  %i.fk = load i16, ptr %i.ff, align 1, !alias.scope !19756
  %i.fl = zext i16 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !19756, !noundef !14
  %i.fp = zext i8 %i.fo to i64
  %i.fq = or disjoint i64 %i.fm, %i.fp
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i

bb.ap:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i
  %i.fr = load i32, ptr %i.ff, align 1, !alias.scope !19757
  %i.fs = zext i32 %i.fr to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i

bb.aq:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i
  %i.ft = load i32, ptr %i.ff, align 1, !alias.scope !19758
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !19756, !noundef !14
  %i.fy = zext i8 %i.fx to i64
  %i.fz = or disjoint i64 %i.fv, %i.fy
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i

bb.ar:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i
  %i.ga = load i32, ptr %i.ff, align 1, !alias.scope !19759
  %i.gb = zext i32 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 16
  %i.gd = getelementptr i8, ptr %i.ff, i64 4
  %7 = load i16, ptr %i.gd, align 1, !alias.scope !19756
  %i.ge = zext i16 %7 to i64
  %i.gf = or disjoint i64 %i.gc, %i.ge
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i

bb.as:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i
  %i.gg = load i32, ptr %i.ff, align 1, !alias.scope !19760
  %i.gh = zext i32 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, 24
  %i.gj = getelementptr i8, ptr %i.ff, i64 4
  %8 = load i16, ptr %i.gj, align 1, !alias.scope !19756
  %i.gk = zext i16 %8 to i64
  %i.gl = shl nuw nsw i64 %i.gk, 8
  %i.gm = or disjoint i64 %i.gl, %i.gi
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !19756, !noundef !14
  %i.gp = zext i8 %i.go to i64
  %i.gq = or disjoint i64 %i.gm, %i.gp
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i

bb.at:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit28.i
  %i.gr = load i32, ptr %i.ff, align 1, !alias.scope !19761
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.gt = zext i32 %i.gr to i64
  %i.gu = shl nuw i64 %i.gt, 32
  %i.gv = load i32, ptr %i.gs, align 1, !alias.scope !19762
  %i.gw = zext i32 %i.gv to i64
  %i.gx = or disjoint i64 %i.gu, %i.gw
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i

_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i: ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.sroa.0.0.i29.i = phi i64 [ %i.fh, %bb.am ], [ %i.fj, %bb.an ], [ %i.fq, %bb.ao ], [ %i.fs, %bb.ap ], [ %i.fz, %bb.aq ], [ %i.gf, %bb.ar ], [ %i.gq, %bb.as ], [ %i.gx, %bb.at ]
  %i.gy = xor i64 %.sroa.0.0.i29.i, 6384245875588680899
  %i.gz = zext i64 %i.g to i128
  %i.ha = zext i64 %i.gy to i128
  %i.hb = mul nuw i128 %i.ha, %i.gz               ; 2 uses
  %i.hc = xor i128 %i.hb, %i.fd
  %i.hd = lshr i128 %i.hc, 64
  %i.he = xor i128 %i.fd, %i.hd
  %i.hf = xor i128 %i.he, %i.hb
  %i.hg = trunc i128 %i.hf to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions11wyhash_core.exit

bb.au:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19764)
  %i.hh = icmp samesign ugt i64 %i.h, 3
  br i1 %i.hh, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19765
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hi = load i32, ptr %i.m, align 1, !alias.scope !19765
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19766)
  %i.hj = icmp samesign ugt i64 %i.h, 7
  br i1 %i.hj, label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit31.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hk = add nsw i64 %i.d, -4
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.hk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19767
  unreachable

_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit31.i: ; preds = %bb.aw
  %i.hl = or disjoint i64 %i.e, 8                 ; 4 uses
  %i.hm = icmp samesign ugt i64 %i.hl, %2
  br i1 %i.hm, label %bb.bc, label %bb.ay, !prof !16

bb.ay:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit31.i
  %i.hn = zext i32 %i.hi to i64
  %i.ho = shl nuw i64 %i.hn, 32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.hq = load i32, ptr %i.hp, align 1, !alias.scope !19767
  %i.hr = zext i32 %i.hq to i64
  %i.hs = or disjoint i64 %i.ho, %i.hr
  %i.ht = xor i64 %i.hs, %i.g
  %i.hu = sub nuw nsw i64 %2, %i.hl               ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %i.hl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19769)
  %i.hw = icmp samesign ugt i64 %i.hu, 3
  br i1 %i.hw, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.hu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19770
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.hx = load i32, ptr %i.hv, align 1, !alias.scope !19770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19771)
  %i.hy = icmp samesign ugt i64 %i.hu, 7
  br i1 %i.hy, label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit32.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hz = add nsw i64 %i.hu, -4
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.hz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19772
  unreachable

_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit32.i: ; preds = %bb.ba
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ib = zext i32 %i.hx to i64
  %i.ic = shl nuw i64 %i.ib, 32
  %i.id = load i32, ptr %i.ia, align 1, !alias.scope !19772
  %i.ie = zext i32 %i.id to i64
  %i.if = or disjoint i64 %i.ic, %i.ie
  %i.ig = xor i64 %i.if, -8161530843051276573
  %i.ih = zext i64 %i.ht to i128
  %i.ii = zext i64 %i.ig to i128
  %i.ij = mul nuw i128 %i.ii, %i.ih               ; 2 uses
  %i.ik = or disjoint i64 %i.e, 16                ; 2 uses
  %i.il = sub nuw nsw i64 %2, %i.ik               ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 %i.ik ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19774)
  %i.in = icmp samesign ugt i64 %i.il, 3
  br i1 %i.in, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit31.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.hl, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #32, !noalias !19722
  unreachable

bb.bd:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit32.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19775
  unreachable

bb.be:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit32.i
  %i.io = load i32, ptr %i.im, align 1, !alias.scope !19775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19776)
  %i.ip = icmp samesign ugt i64 %i.il, 7
  br i1 %i.ip, label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iq = add nsw i64 %i.il, -4
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.iq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32, !noalias !19777
  unreachable

_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i: ; preds = %bb.be
  %i.ir = or disjoint i64 %i.e, 24                ; 2 uses
  %i.is = zext i32 %i.io to i64
  %i.it = shl nuw i64 %i.is, 32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.iv = load i32, ptr %i.iu, align 1, !alias.scope !19777
  %i.iw = zext i32 %i.iv to i64
  %i.ix = or disjoint i64 %i.it, %i.iw
  %i.iy = xor i64 %i.ix, %i.g
  %i.iz = sub nuw nsw i64 %2, %i.ir
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 %i.ir ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19778)
  switch i64 %i.iz, label %bb.bg [
    i64 1, label %bb.bh
    i64 2, label %bb.bi
    i64 3, label %bb.bj
    i64 4, label %bb.bk
    i64 5, label %bb.bl
    i64 6, label %bb.bm
    i64 7, label %bb.bn
    i64 8, label %bb.bo
  ], !prof !19724

bb.bg:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #32, !noalias !19779
  unreachable

bb.bh:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i
  %i.jb = load i8, ptr %i.ja, align 1, !alias.scope !19779, !noundef !14
  %i.jc = zext i8 %i.jb to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i

bb.bi:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i
  %i.jd = load i16, ptr %i.ja, align 1, !alias.scope !19779
  %i.je = zext i16 %i.jd to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i

bb.bj:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i
  %i.jf = load i16, ptr %i.ja, align 1, !alias.scope !19779
  %i.jg = zext i16 %i.jf to i64
  %i.jh = shl nuw nsw i64 %i.jg, 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jj = load i8, ptr %i.ji, align 1, !alias.scope !19779, !noundef !14
  %i.jk = zext i8 %i.jj to i64
  %i.jl = or disjoint i64 %i.jh, %i.jk
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i

bb.bk:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i
  %i.jm = load i32, ptr %i.ja, align 1, !alias.scope !19780
  %i.jn = zext i32 %i.jm to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i

bb.bl:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i
  %i.jo = load i32, ptr %i.ja, align 1, !alias.scope !19781
  %i.jp = zext i32 %i.jo to i64
  %i.jq = shl nuw nsw i64 %i.jp, 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.js = load i8, ptr %i.jr, align 1, !alias.scope !19779, !noundef !14
  %i.jt = zext i8 %i.js to i64
  %i.ju = or disjoint i64 %i.jq, %i.jt
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i

bb.bm:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i
  %i.jv = load i32, ptr %i.ja, align 1, !alias.scope !19782
  %i.jw = zext i32 %i.jv to i64
  %i.jx = shl nuw nsw i64 %i.jw, 16
  %i.jy = getelementptr i8, ptr %i.ja, i64 4
  %9 = load i16, ptr %i.jy, align 1, !alias.scope !19779
  %i.jz = zext i16 %9 to i64
  %i.ka = or disjoint i64 %i.jx, %i.jz
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i

bb.bn:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i
  %i.kb = load i32, ptr %i.ja, align 1, !alias.scope !19783
  %i.kc = zext i32 %i.kb to i64
  %i.kd = shl nuw nsw i64 %i.kc, 24
  %i.ke = getelementptr i8, ptr %i.ja, i64 4
  %10 = load i16, ptr %i.ke, align 1, !alias.scope !19779
  %i.kf = zext i16 %10 to i64
  %i.kg = shl nuw nsw i64 %i.kf, 8
  %i.kh = or disjoint i64 %i.kg, %i.kd
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ja, i64 6
  %i.kj = load i8, ptr %i.ki, align 1, !alias.scope !19779, !noundef !14
  %i.kk = zext i8 %i.kj to i64
  %i.kl = or disjoint i64 %i.kh, %i.kk
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i

bb.bo:                                            ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions14read64_swapped.exit33.i
  %i.km = load i32, ptr %i.ja, align 1, !alias.scope !19784
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.ko = zext i32 %i.km to i64
  %i.kp = shl nuw i64 %i.ko, 32
  %i.kq = load i32, ptr %i.kn, align 1, !alias.scope !19785
  %i.kr = zext i32 %i.kq to i64
  %i.ks = or disjoint i64 %i.kp, %i.kr
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i

_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i: ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %.sroa.0.0.i34.i = phi i64 [ %i.jc, %bb.bh ], [ %i.je, %bb.bi ], [ %i.jl, %bb.bj ], [ %i.jn, %bb.bk ], [ %i.ju, %bb.bl ], [ %i.ka, %bb.bm ], [ %i.kl, %bb.bn ], [ %i.ks, %bb.bo ]
  %i.kt = xor i64 %.sroa.0.0.i34.i, 2129725606500045391
  %i.ku = zext i64 %i.iy to i128
  %i.kv = zext i64 %i.kt to i128
  %i.kw = mul nuw i128 %i.kv, %i.ku               ; 2 uses
  %i.kx = xor i128 %i.kw, %i.ij
  %i.ky = lshr i128 %i.kx, 64
  %i.kz = xor i128 %i.ij, %i.ky
  %i.la = xor i128 %i.kz, %i.kw
  %i.lb = trunc i128 %i.la to i64
  br label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions11wyhash_core.exit

_RNvNtCs5tRDsWtv0pR_6wyhash9functions6read64.exit37.i: ; preds = %.preheader, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions6read64.exit37.i
  %.sroa.0.041.i = phi i64 [ %i.mf, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions6read64.exit37.i ], [ %i.b, %.preheader ]
  %.sroa.09.040.i = phi ptr [ %i.lc, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions6read64.exit37.i ], [ %1, %.preheader ] ; 5 uses
  %.sroa.5.039.i = phi i64 [ %i.ld, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions6read64.exit37.i ], [ %i.e, %.preheader ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.09.040.i, i64 32
  %i.ld = add i64 %.sroa.5.039.i, -32             ; 2 uses
  %i.le = xor i64 %.sroa.0.041.i, -6884282663029611473
  %i.lf = load i64, ptr %.sroa.09.040.i, align 1, !alias.scope !19786
  %i.lg = xor i64 %i.lf, -1800455987208640293
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.09.040.i, i64 8
  %i.li = load i64, ptr %i.lh, align 1, !alias.scope !19787
  %i.lj = xor i64 %i.li, -8161530843051276573
  %i.lk = zext i64 %i.lg to i128
  %i.ll = zext i64 %i.lj to i128
  %i.lm = mul nuw i128 %i.ll, %i.lk               ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.09.040.i, i64 16
  %i.lo = load i64, ptr %i.ln, align 1, !alias.scope !19788
  %i.lp = xor i64 %i.lo, 6384245875588680899
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.09.040.i, i64 24
  %i.lr = load i64, ptr %i.lq, align 1, !alias.scope !19789
  %i.ls = xor i64 %i.lr, 2129725606500045391
  %i.lt = zext i64 %i.lp to i128
  %i.lu = zext i64 %i.ls to i128
  %i.lv = mul nuw i128 %i.lu, %i.lt               ; 2 uses
  %i.lw = xor i128 %i.lv, %i.lm
  %i.lx = lshr i128 %i.lw, 64
  %i.ly = xor i128 %i.lm, %i.lx
  %i.lz = xor i128 %i.ly, %i.lv
  %i.ma = zext i64 %i.le to i128
  %i.mb = and i128 %i.lz, 18446744073709551615
  %i.mc = mul nuw i128 %i.mb, %i.ma               ; 2 uses
  %i.md = lshr i128 %i.mc, 64
  %i.me = xor i128 %i.md, %i.mc
  %i.mf = trunc i128 %i.me to i64                 ; 2 uses
  %.not.i = icmp eq i64 %i.ld, 0
  br i1 %.not.i, label %._crit_edge.i, label %_RNvNtCs5tRDsWtv0pR_6wyhash9functions6read64.exit37.i

_RNvNtCs5tRDsWtv0pR_6wyhash9functions11wyhash_core.exit: ; preds = %._crit_edge.i, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i
  %.sroa.0.1.i = phi i64 [ %i.g, %._crit_edge.i ], [ %i.bl, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit.i ], [ %i.dz, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit26.i ], [ %i.hg, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit30.i ], [ %i.lb, %_RNvNtCs5tRDsWtv0pR_6wyhash9functions9read_rest.exit35.i ]
  store i64 %.sroa.0.1.i, ptr %0, align 8
  %i.mg = add i64 %.promoted76, %2
  store i64 %i.mg, ptr %i.c, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvNtCs5tRDsWtv0pR_6wyhash9functions11wyhash_core.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvXs_NtCslmvYCXbQjWR_6common16bitpacking_linksNtB4_19PackedLinksIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.i = load i8, ptr %i.h, align 1, !noundef !14 ; 5 uses
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %bb.q, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19804)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !19804, !noundef !14 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !19804, !noundef !14 ; 5 uses
  %.not.i = icmp ult i8 %i.o, %i.q
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19805)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !19806, !noundef !14 ; 3 uses
  %i.t = icmp ugt i64 %i.s, 7
  %i.u = load ptr, ptr %0, align 8, !alias.scope !19806, !nonnull !14, !noundef !14 ; 4 uses
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19806
  store ptr %i.u, ptr %i.b, align 8, !noalias !19806
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.v, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !19806
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !19806
  %i.w = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !19807 ; 2 uses
  %i.x = extractvalue { i1, i8 } %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.y = phi { i1, i8 } [ %i.ah, %.lr.ph.i.i ], [ %i.w, %bb.e ]
  %.sroa.0.015.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ 0, %bb.e ]
  %i.z = extractvalue { i1, i8 } %i.y, 1
  %i.aa = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !19808, !noalias !19806, !noundef !14 ; 2 uses
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !19808, !noalias !19806
  %i.ac = zext i8 %i.z to i64
  %i.ad = shl i64 %i.aa, 3
  %i.ae = and i64 %i.ad, 56
  %i.af = shl nuw i64 %i.ac, %i.ae
  %i.ag = or i64 %i.af, %.sroa.0.015.i.i          ; 2 uses
  %i.ah = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !19807 ; 2 uses
  %i.ai = extractvalue { i1, i8 } %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i.i: ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %i.ag, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19806
  br label %_RNvNtCslmvYCXbQjWR_6common10bitpacking20read_buf_and_advance.exit.i

bb.f:                                             ; preds = %bb.d
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.u, align 1, !noalias !19806
  %i.aj = add i64 %i.s, -8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ak, ptr %0, align 8, !alias.scope !19806, !captures !68
  store i64 %i.aj, ptr %i.r, align 8, !alias.scope !19806
  br label %_RNvNtCslmvYCXbQjWR_6common10bitpacking20read_buf_and_advance.exit.i

_RNvNtCslmvYCXbQjWR_6common10bitpacking20read_buf_and_advance.exit.i: ; preds = %bb.f, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i.i
  %.sroa.0.1.i.i = phi i64 [ %.sroa.04.0.copyload.i.i, %bb.f ], [ %.sroa.0.0.lcssa.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !19804, !noundef !14
  %i.an = and i8 %i.o, 63
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = shl i64 %.sroa.0.1.i.i, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !19804, !noundef !14
  %i.as = and i64 %i.ar, %i.ap
  %i.at = or i64 %i.as, %i.am                     ; 2 uses
  %reass.sub.i = sub i8 %i.o, %i.q                ; 2 uses
  %i.au = add i8 %reass.sub.i, 64                 ; 2 uses
  store i8 %i.au, ptr %i.n, align 8, !alias.scope !19804
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.aw = sub nuw i8 %i.o, %i.q
  store i8 %i.aw, ptr %i.n, align 8, !alias.scope !19804
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !19804, !noundef !14 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !19804, !noundef !14
  %i.bb = and i64 %i.ba, %i.ay
  %i.bc = and i8 %i.q, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = lshr i64 %i.ay, %i.bd
  store i64 %i.be, ptr %i.ax, align 8, !alias.scope !19804
  br label %_RINvMs_NtCslmvYCXbQjWR_6common10bitpackingNtB5_9BitReader4readmECs607s0NAIaWN_7segment.exit

bb.h:                                             ; preds = %_RNvNtCslmvYCXbQjWR_6common10bitpacking20read_buf_and_advance.exit.i
  store i64 0, ptr %i.al, align 8, !alias.scope !19804
  br label %_RINvMs_NtCslmvYCXbQjWR_6common10bitpackingNtB5_9BitReader4readmECs607s0NAIaWN_7segment.exit

bb.i:                                             ; preds = %_RNvNtCslmvYCXbQjWR_6common10bitpacking20read_buf_and_advance.exit.i
  %i.bf = sub i8 0, %reass.sub.i
  %i.bg = and i8 %i.bf, 63
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = lshr i64 %.sroa.0.1.i.i, %i.bh
  store i64 %i.bi, ptr %i.al, align 8, !alias.scope !19804
  br label %_RINvMs_NtCslmvYCXbQjWR_6common10bitpackingNtB5_9BitReader4readmECs607s0NAIaWN_7segment.exit

_RINvMs_NtCslmvYCXbQjWR_6common10bitpackingNtB5_9BitReader4readmECs607s0NAIaWN_7segment.exit: ; preds = %bb.g, %bb.h, %bb.i
end_hunk_0
