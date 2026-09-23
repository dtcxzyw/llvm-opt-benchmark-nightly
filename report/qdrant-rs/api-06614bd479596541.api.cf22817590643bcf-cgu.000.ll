Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.000?download=true
inline.NumInlined: 2431
inline.NumDeleted: 607
begin_hunk_0_@_RNvXs1E_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant13DatetimeRangeINtNtCskKLDkoKarTP_4core7convert4FromINtNtCs607s0NAIaWN_7segment5types5RangeNtB1R_15DateTimeWrapperEE4from:bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.021.0, ptr %i.t, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.522.0, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.623.0, ptr %.sroa.623.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.025.0, ptr %i.u, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.526.0, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.627.0, ptr %.sroa.627.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.029.0, ptr %i.v, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.530.0, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.sroa.631.0, ptr %.sroa.631.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1I_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant5MatchINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types5MatchE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = load i64, ptr %1, align 8, !range !1591, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.092.0.copyload = load i64, ptr %i.j, align 8 ; 9 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  switch i64 %i.i, label %default.unreachable141 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
  ]

default.unreachable141:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.k = icmp slt i64 %.sroa.092.0.copyload, 0
  %i.l = add i64 %.sroa.092.0.copyload, -9223372036854775807
  %i.m = select i1 %i.k, i64 %i.l, i64 0
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.j
    i64 1, label %bb.l
    i64 2, label %bb.k
  ]

bb.d:                                             ; preds = %bb.a
  %i.n = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 3, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.o = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 9, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.p = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 8, ptr %0, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.q = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 10, ptr %0, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.r = trunc nuw i64 %.sroa.092.0.copyload to i1
  br i1 %i.r, label %bb.n, label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.s = trunc nuw i64 %.sroa.092.0.copyload to i1
  br i1 %i.s, label %bb.p, label %bb.q

bb.j:                                             ; preds = %bb.c
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %i.t = insertelement <2 x i64> poison, i64 %.sroa.5.0.copyload, i64 0
  %i.u = insertelement <2 x i64> %i.t, i64 %.sroa.8.0.copyload, i64 1
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %.sroa.5.sroa.0.0.extract.trunc = trunc i64 %.sroa.5.0.copyload to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.o, %bb.j, %bb.k, %bb.c
  %.sroa.1717.1 = phi i64 [ %.sroa.051.0.copyload, %bb.o ], [ %.sroa.5.0.copyload, %bb.c ], [ %.sroa.092.0.copyload, %bb.j ], [ undef, %bb.k ], [ %.sroa.053.0.copyload, %bb.n ], [ %.sroa.057.0.copyload, %bb.p ], [ %.sroa.055.0.copyload, %bb.q ]
  %.sroa.16.1 = phi i8 [ undef, %bb.o ], [ undef, %bb.c ], [ undef, %bb.j ], [ %.sroa.5.sroa.0.0.extract.trunc, %bb.k ], [ undef, %bb.n ], [ undef, %bb.p ], [ undef, %bb.q ]
  %.sroa.0.1 = phi i8 [ 4, %bb.o ], [ 1, %bb.c ], [ 0, %bb.j ], [ 2, %bb.k ], [ 5, %bb.n ], [ 6, %bb.p ], [ 7, %bb.q ]
  %i.v = phi <2 x i64> [ %i.y, %bb.o ], [ undef, %bb.c ], [ %i.u, %bb.j ], [ undef, %bb.k ], [ %i.x, %bb.n ], [ %i.z, %bb.p ], [ %i.aa, %bb.q ]
  store i8 %.sroa.0.1, ptr %0, align 8
  %.sroa.20.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.16.1, ptr %.sroa.20.0..sroa_idx74, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.1717.1.sink = phi i64 [ %.sroa.1717.1, %bb.l ], [ %.sroa.092.0.copyload, %bb.g ], [ %.sroa.092.0.copyload, %bb.f ], [ %.sroa.092.0.copyload, %bb.e ], [ %.sroa.092.0.copyload, %bb.d ]
  %i.w = phi <2 x i64> [ %i.v, %bb.l ], [ %i.q, %bb.g ], [ %i.p, %bb.f ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  %.sroa.30.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1717.1.sink, ptr %.sroa.30.0..sroa_idx86, align 8
  %.sroa.35.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.w, ptr %.sroa.35.0..sroa_idx91, align 8
  ret void

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs_NtNtCshqfBqtY9aGF_8indexmap3set4iterINtB6_8IndexSetxINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEENtNtNtNtBZ_4iter6traits7collect12IntoIterator9into_iterCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %.sroa.5.0..sroa_idx)
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCshqfBqtY9aGF_8indexmap6BucketxuEENvMs0_B2o_B2l_3keyExECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.053.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = load <2 x i64>, ptr %.sroa.454.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.l

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs_NtNtCshqfBqtY9aGF_8indexmap3set4iterINtB6_8IndexSetNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEENtNtNtNtB1A_4iter6traits7collect12IntoIterator9into_iterCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %.sroa.5.0..sroa_idx)
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCshqfBqtY9aGF_8indexmap6BucketNtNtB6_6string6StringuEENvMs0_B2o_B2l_3keyEB2S_ECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.051.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load <2 x i64>, ptr %.sroa.452.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.p:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCshqfBqtY9aGF_8indexmap3set4iterINtB6_8IndexSetxINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEENtNtNtNtBZ_4iter6traits7collect12IntoIterator9into_iterCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %.sroa.5.0..sroa_idx)
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCshqfBqtY9aGF_8indexmap6BucketxuEENvMs0_B2o_B2l_3keyExECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.057.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load <2 x i64>, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.q:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtCshqfBqtY9aGF_8indexmap3set4iterINtB6_8IndexSetNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEENtNtNtNtB1A_4iter6traits7collect12IntoIterator9into_iterCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %.sroa.5.0..sroa_idx)
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCshqfBqtY9aGF_8indexmap6BucketNtNtB6_6string6StringuEENvMs0_B2o_B2l_3keyEB2S_ECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.055.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load <2 x i64>, ptr %.sroa.456.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_16IsEmptyConditionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !captures !45
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1M_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant7OrderByINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load i8, ptr %i.g, align 8, !range !46, !noundef !8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.02.0.copyload = load i32, ptr %i.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1598
  store i64 0, ptr %i.c, align 8, !noalias !1598
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1598
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1598
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.j, align 8, !noalias !1598
  store ptr %i.c, ptr %i.b, align 8, !noalias !1598
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @572, ptr %i.k, align 8, !noalias !1598
  %i.l = invoke noundef zeroext i1 @_RNvXs_NtCs607s0NAIaWN_7segment9json_pathNtB4_8JsonPathNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !1599

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #20
          to label %.body unwind label %bb.e, !noalias !1599

bb.c:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %bb.f, !prof !40

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @573, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @575) #24
          to label %.noexc.i unwind label %bb.b, !noalias !1599

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1599
  unreachable

.body:                                            ; preds = %bb.b, %bb.l
  %.pn = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.m, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #20
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1598
  %switch.selectcmp = icmp eq i8 %i.h, 0
  %switch.select = select i1 %switch.selectcmp, <2 x i32> <i32 1, i32 0>, <2 x i32> splat (i32 1)
  %switch.selectcmp17 = icmp eq i8 %i.h, 2
  %switch.select18 = select i1 %switch.selectcmp17, <2 x i32> <i32 0, i32 undef>, <2 x i32> %switch.select
  %.not13 = icmp eq i32 %.sroa.02.0.copyload, -1
  br i1 %.not13, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %.sroa.02.0.copyload, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false)
  switch i32 %.sroa.02.0.copyload, label %default.unreachable3.i [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

default.unreachable3.i:                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1601, !noalias !1602, !noundef !8
  br label %_RNvXs1N_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant9StartFromINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromE4from.exit

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1601, !noalias !1602, !noundef !8
  br label %_RNvXs1N_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant9StartFromINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromE4from.exit

bb.j:                                             ; preds = %bb.g
  %i.s = invoke { i64, i32 } @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions18date_time_to_proto(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %.sroa.5.0..sroa_idx4)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.t = extractvalue { i64, i32 } %i.s, 0
  %i.u = extractvalue { i64, i32 } %i.s, 1
  br label %_RNvXs1N_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant9StartFromINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromE4from.exit

bb.k:                                             ; preds = %bb.f, %_RNvXs1N_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant9StartFromINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromE4from.exit
  %.sroa.59.sroa.4.0 = phi i32 [ undef, %bb.f ], [ %.sroa.9.0.i, %_RNvXs1N_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant9StartFromINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromE4from.exit ]
  %.sroa.59.sroa.0.0 = phi i64 [ undef, %bb.f ], [ %.sroa.6.0.i, %_RNvXs1N_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant9StartFromINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromE4from.exit ]
  %.sroa.07.0 = phi i64 [ -2, %bb.f ], [ %.sroa.0.0.i, %_RNvXs1N_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant9StartFromINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromE4from.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i32> %switch.select18, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.07.0, ptr %i.w, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.59.sroa.0.0, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.59.sroa.4.0..sroa.59.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.59.sroa.4.0, ptr %.sroa.59.sroa.4.0..sroa.59.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #20
          to label %.body unwind label %bb.m

_RNvXs1N_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant9StartFromINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromE4from.exit: ; preds = %.noexc, %bb.i, %bb.h
  %.sroa.9.0.i = phi i32 [ undef, %bb.h ], [ undef, %bb.i ], [ %i.u, %.noexc ]
  %.sroa.6.0.i = phi i64 [ %i.p, %bb.h ], [ %i.r, %bb.i ], [ %i.t, %.noexc ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775807, %bb.h ], [ -9223372036854775808, %bb.i ], [ -9223372036854775806, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.m:                                             ; preds = %bb.l, %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1N_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant9StartFromINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !48, !noundef !8
  switch i32 %i.a, label %default.unreachable3 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = tail call { i64, i32 } @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions18date_time_to_proto(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.f) ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 0
  %i.i = extractvalue { i64, i32 } %i.g, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.9.0 = phi i32 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.i, %bb.d ]
  %.sroa.6.0 = phi i64 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.h, %bb.d ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.b ], [ -9223372036854775808, %bb.c ], [ -9223372036854775806, %bb.d ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.9.0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1T_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_15IsNullConditionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !captures !45
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1V_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant22StrictModeSparseConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types22StrictModeSparseConfigE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !8   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not = icmp ne ptr %i.b, null                  ; 3 uses
  %. = zext i1 %.not to i64                       ; 2 uses
  %.34 = select i1 %.not, i64 %i.d, i64 undef     ; 2 uses
  %.35 = select i1 %.not, i64 %i.f, i64 0
  store i64 %., ptr %i.a, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.34, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %., ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.34, ptr %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.35, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB14_B1G_EE9from_iterINtNtNtB2G_8adapters3map3MapINtNtNtNtB18_11collections5btree3map8IntoIterB14_NtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCNvXs1V_NtB1K_11conversionsNtB1I_22StrictModeSparseConfigINtNtB2I_7convert4FromNtB5b_22StrictModeSparseConfigE4from0EEB1M_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1W_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant22StrictModeSparseConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types28StrictModeSparseConfigOutputE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !8   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not = icmp ne ptr %i.b, null                  ; 3 uses
  %. = zext i1 %.not to i64                       ; 2 uses
  %.34 = select i1 %.not, i64 %i.d, i64 undef     ; 2 uses
  %.35 = select i1 %.not, i64 %i.f, i64 0
  store i64 %., ptr %i.a, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.34, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %., ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.34, ptr %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.35, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB14_B1G_EE9from_iterINtNtNtB2G_8adapters3map3MapINtNtNtNtB18_11collections5btree3map8IntoIterB14_NtNtCs607s0NAIaWN_7segment5types22StrictModeSparseOutputENCNvXs1W_NtB1K_11conversionsNtB1I_22StrictModeSparseConfigINtNtB2I_7convert4FromNtB5b_28StrictModeSparseConfigOutputE4from0EEB1M_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1X_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant16StrictModeConfigINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types22StrictModeConfigOutputE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 290
  %i.j = load i64, ptr %1, align 8, !range !31, !noundef !8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !31, !noundef !8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !range !31, !noundef !8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = load <4 x i8>, ptr %i.i, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8, !range !31, !noundef !8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load double, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !range !31, !noundef !8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !range !31, !noundef !8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88
end_hunk_0
