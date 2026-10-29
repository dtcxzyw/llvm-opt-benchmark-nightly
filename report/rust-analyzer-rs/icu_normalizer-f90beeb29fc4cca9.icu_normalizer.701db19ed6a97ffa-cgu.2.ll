Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_normalizer-f90beeb29fc4cca9.icu_normalizer.701db19ed6a97ffa-cgu.2?download=true
inline.NumInlined: 100
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE20get32_by_small_indexCs9CN1NTpuHUY_14icu_normalizer:bb.a
  %i.bj = add nuw nsw i32 %i.bi, 2
  %i.bk = shl nuw i32 %i.bh, %i.bj
  %i.bl = and i32 %i.bk, 196608
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bc
  %.sroa.055.0.copyload.i.i = load i16, ptr %i.bm, align 1, !noalias !147
  %i.bn = zext i16 %.sroa.055.0.copyload.i.i to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn
  br label %bb.n

bb.s:                                             ; preds = %bb.a
  %i.bp = trunc i64 %i.d to i32
  %i.bq = add i32 %i.bp, -2
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE11small_indexCs9CN1NTpuHUY_14icu_normalizer.exit

_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE11small_indexCs9CN1NTpuHUY_14icu_normalizer.exit: ; preds = %bb.f, %bb.h, %bb.l, %bb.n, %bb.o, %bb.q, %bb.s
  %.sroa.0.0.i = phi i32 [ %i.bq, %bb.s ], [ %i.aw, %bb.n ], [ %i.as, %bb.l ], [ %i.bf, %bb.q ], [ %i.ay, %bb.o ], [ %i.ab, %bb.h ], [ %i.s, %bb.f ]
  %i.br = zext i32 %.sroa.0.0.i to i64            ; 2 uses
  %i.bs = icmp ugt i64 %i.d, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.in = select i1 %i.bs, ptr %i.bt, ptr %i.bu
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 1
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef i8 @_RNvMsa_NtCs9CN1NTpuHUY_14icu_normalizer10propertiesNtB5_34CanonicalCombiningClassMapBorrowed8get32_u8(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !151, !noundef !4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load i8, ptr %i.b, align 4, !range !7, !alias.scope !152, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  %..i = select i1 %i.d, i32 4095, i32 65535
  %.not.i = icmp ugt i32 %1, %..i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %1, 6
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !152, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !152, !noundef !4
  %i.j = icmp ugt i64 %i.i, %i.f
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.f
  %.sroa.04.0.copyload.i = load i16, ptr %i.k, align 1, !noalias !152
  %i.l = zext i16 %.sroa.04.0.copyload.i to i64
  %i.m = and i32 %1, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.l, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !152, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !152, !noundef !4
  %i.t = icmp ult i64 %i.o, %i.s
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  %.sroa.02.0.copyload.i = load i32, ptr %i.u, align 1, !noalias !152
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = icmp ult i32 %1, 1114112
  br i1 %i.v, label %bb.f, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.sroa.01.0 = phi i32 [ %.sroa.02.0.copyload.i, %bb.b ], [ %i.ab, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.w = and i32 %.sroa.01.0, 1073741312
  %i.x = icmp eq i32 %i.w, 55296
  %i.y = trunc i32 %.sroa.01.0 to i8
  %.sroa.0.0 = select i1 %i.x, i8 %i.y, i8 0
  ret i8 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !noundef !4
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ab = tail call noundef i32 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTriemE20get32_by_small_indexCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, i32 noundef range(i32 0, 1114112) %1) #17
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1, 1114112) i32 @_RNvXs0_NtNtCsgTMNKkQstJd_7zerovec7zerovec5sliceINtB5_13ZeroSliceItercENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store ptr %i.e, ptr %0, align 8
  %.sroa.05.0.copyload = load i24, ptr %i.a, align 1
  %.sroa.02.0.insert.insert.i = zext i24 %.sroa.05.0.copyload to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %.sroa.02.0.insert.insert.i, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NtNtCsgTMNKkQstJd_7zerovec7zerovec5sliceINtB5_13ZeroSliceItercENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintCs9CN1NTpuHUY_14icu_normalizer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 3                   ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i16, i16 } @_RNvXs0_NtNtCsgTMNKkQstJd_7zerovec7zerovec5sliceINtB5_13ZeroSliceItertENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs9CN1NTpuHUY_14icu_normalizer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %i.e, ptr %0, align 8
  %.sroa.05.0.copyload = load i16, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i16 [ %.sroa.05.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i16 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.g = insertvalue { i16, i16 } %i.f, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NtNtCsgTMNKkQstJd_7zerovec7zerovec5sliceINtB5_13ZeroSliceItertENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintCs9CN1NTpuHUY_14icu_normalizer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 1                   ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXs1_NtCs9CN1NTpuHUY_14icu_normalizer5uts46NtB5_11Uts46MapperNtNtCshzWfHUSfYae_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) initializes((0, 24), (48, 64), (120, 136), (160, 163), (168, 184)) %0) unnamed_addr #6 {
bb.a:
  store i64 1, ptr %0, align 8, !alias.scope !155
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !alias.scope !155
  %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @12, ptr %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !155
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !155
  %.sroa.01.sroa.5.sroa.4.0..sroa.01.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @9, ptr %.sroa.01.sroa.5.sroa.4.0..sroa.01.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !155
  %.sroa.01.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %.sroa.01.sroa.6.0..sroa_idx.i, align 8, !alias.scope !155
  %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @15, ptr %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !155
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i16 65, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !155
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 65, ptr %.sroa.5.0..sroa_idx.i, align 2, !alias.scope !155
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %.sroa.73.0..sroa_idx.i, align 8, !alias.scope !155
  %.sroa.73.sroa.4.0..sroa.73.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @17, ptr %.sroa.73.sroa.4.0..sroa.73.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !155
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NvNtCs9CN1NTpuHUY_14icu_normalizer8provider1__NtB7_5BakedINtNtCs1GZEXNOm2AR_12icu_provider13data_provider12DataProviderNtB7_15NormalizerNfcV1E4load(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = load <4 x i8>, ptr %i.c, align 1, !alias.scope !158
  %.fr = freeze <4 x i8> %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.f = load i8, ptr %i.e, align 1, !range !8, !alias.scope !158
  %.fr20 = freeze i8 %i.f
  %.not7.i = icmp eq i8 %.fr20, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.h = load i8, ptr %i.g, align 1, !range !8, !alias.scope !158
  %.not8.i = icmp eq i8 %i.h, -1
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.i = icmp eq i32 %.fr.scalar, -10195339
  %op.rdx = and i1 %i.i, %.not7.i
  %op.rdx19 = select i1 %op.rdx, i1 %.not8.i, i1 false
  br i1 %op.rdx19, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.k = load i8, ptr %i.j, align 1, !range !8, !alias.scope !158, !noundef !4
  %.not9.i = icmp eq i8 %i.k, -1
  br i1 %.not9.i, label %bb.b, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread: ; preds = %bb.a, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.m, align 8
  store ptr null, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  store i8 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(11) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 2, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  store i64 0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 -1, ptr %.sroa.64.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @17, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NvNtCs9CN1NTpuHUY_14icu_normalizer8provider1__NtB7_5BakedINtNtCs1GZEXNOm2AR_12icu_provider13data_provider12DataProviderNtB7_19NormalizerNfdDataV1E4load(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = load <4 x i8>, ptr %i.c, align 1, !alias.scope !161
  %.fr = freeze <4 x i8> %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.f = load i8, ptr %i.e, align 1, !range !8, !alias.scope !161
  %.fr20 = freeze i8 %i.f
  %.not7.i = icmp eq i8 %.fr20, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.h = load i8, ptr %i.g, align 1, !range !8, !alias.scope !161
  %.not8.i = icmp eq i8 %i.h, -1
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.i = icmp eq i32 %.fr.scalar, -10195339
  %op.rdx = and i1 %i.i, %.not7.i
  %op.rdx19 = select i1 %op.rdx, i1 %.not8.i, i1 false
  br i1 %op.rdx19, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.k = load i8, ptr %i.j, align 1, !range !8, !alias.scope !161, !noundef !4
  %.not9.i = icmp eq i8 %i.k, -1
  br i1 %.not9.i, label %bb.b, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread: ; preds = %bb.a, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.m, align 8
  store ptr null, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  store i8 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(11) @19, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 2, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  store i64 0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 -1, ptr %.sroa.64.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @22, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NvNtCs9CN1NTpuHUY_14icu_normalizer8provider1__NtB7_5BakedINtNtCs1GZEXNOm2AR_12icu_provider13data_provider12DataProviderNtB7_25NormalizerNfdSupplementV1E4load(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = load <4 x i8>, ptr %i.c, align 1, !alias.scope !164
  %.fr = freeze <4 x i8> %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.f = load i8, ptr %i.e, align 1, !range !8, !alias.scope !164
  %.fr20 = freeze i8 %i.f
  %.not7.i = icmp eq i8 %.fr20, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.h = load i8, ptr %i.g, align 1, !range !8, !alias.scope !164
  %.not8.i = icmp eq i8 %i.h, -1
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.i = icmp eq i32 %.fr.scalar, -10195339
  %op.rdx = and i1 %i.i, %.not7.i
  %op.rdx19 = select i1 %op.rdx, i1 %.not8.i, i1 false
  br i1 %op.rdx19, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.k = load i8, ptr %i.j, align 1, !range !8, !alias.scope !164, !noundef !4
  %.not9.i = icmp eq i8 %i.k, -1
  br i1 %.not9.i, label %bb.b, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread: ; preds = %bb.a, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.m, align 8
  store ptr null, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  store i8 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(11) @23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 2, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  store i64 0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 -1, ptr %.sroa.64.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @27, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NvNtCs9CN1NTpuHUY_14icu_normalizer8provider1__NtB7_5BakedINtNtCs1GZEXNOm2AR_12icu_provider13data_provider12DataProviderNtB7_21NormalizerNfdTablesV1E4load(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = load <4 x i8>, ptr %i.c, align 1, !alias.scope !167
  %.fr = freeze <4 x i8> %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.f = load i8, ptr %i.e, align 1, !range !8, !alias.scope !167
  %.fr20 = freeze i8 %i.f
  %.not7.i = icmp eq i8 %.fr20, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.h = load i8, ptr %i.g, align 1, !range !8, !alias.scope !167
  %.not8.i = icmp eq i8 %i.h, -1
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.i = icmp eq i32 %.fr.scalar, -10195339
  %op.rdx = and i1 %i.i, %.not7.i
  %op.rdx19 = select i1 %op.rdx, i1 %.not8.i, i1 false
  br i1 %op.rdx19, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.k = load i8, ptr %i.j, align 1, !range !8, !alias.scope !167, !noundef !4
  %.not9.i = icmp eq i8 %i.k, -1
  br i1 %.not9.i, label %bb.b, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread: ; preds = %bb.a, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.m, align 8
  store ptr null, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  store i8 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(11) @28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 2, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  store i64 0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 -1, ptr %.sroa.64.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @15, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NvNtCs9CN1NTpuHUY_14icu_normalizer8provider1__NtB7_5BakedINtNtCs1GZEXNOm2AR_12icu_provider13data_provider12DataProviderNtB7_20NormalizerNfkdDataV1E4load(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = load <4 x i8>, ptr %i.c, align 1, !alias.scope !170
  %.fr = freeze <4 x i8> %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.f = load i8, ptr %i.e, align 1, !range !8, !alias.scope !170
  %.fr20 = freeze i8 %i.f
  %.not7.i = icmp eq i8 %.fr20, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.h = load i8, ptr %i.g, align 1, !range !8, !alias.scope !170
  %.not8.i = icmp eq i8 %i.h, -1
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.i = icmp eq i32 %.fr.scalar, -10195339
  %op.rdx = and i1 %i.i, %.not7.i
  %op.rdx19 = select i1 %op.rdx, i1 %.not8.i, i1 false
  br i1 %op.rdx19, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.k = load i8, ptr %i.j, align 1, !range !8, !alias.scope !170, !noundef !4
  %.not9.i = icmp eq i8 %i.k, -1
  br i1 %.not9.i, label %bb.b, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread: ; preds = %bb.a, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.m, align 8
  store ptr null, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  store i8 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(11) @29, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 2, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  store i64 0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 -1, ptr %.sroa.64.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @32, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsD_NtCs9CN1NTpuHUY_14icu_normalizer8providerNtB5_35NonRecursiveDecompositionSupplementINtNtCseizbxpKYfu7_8zerofrom9zero_from8ZeroFromBK_E9zero_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 20, i1 false)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !175, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !175, !noundef !4
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !175, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1.i = load i64, ptr %i.h, align 8, !alias.scope !175, !noundef !4
  %i.i = load i32, ptr %i.c, align 8, !alias.scope !176, !noundef !4
  %i.j = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val1.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.i, ptr %.sroa.7.0..sroa_idx, align 8
  store ptr %i.j, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NvNtCs9CN1NTpuHUY_14icu_normalizer8provider1__NtB7_5BakedINtNtCs1GZEXNOm2AR_12icu_provider13data_provider12DataProviderNtB7_22NormalizerNfkdTablesV1E4load(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = load <4 x i8>, ptr %i.c, align 1, !alias.scope !179
  %.fr = freeze <4 x i8> %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.f = load i8, ptr %i.e, align 1, !range !8, !alias.scope !179
  %.fr20 = freeze i8 %i.f
  %.not7.i = icmp eq i8 %.fr20, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.h = load i8, ptr %i.g, align 1, !range !8, !alias.scope !179
  %.not8.i = icmp eq i8 %i.h, -1
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.i = icmp eq i32 %.fr.scalar, -10195339
  %op.rdx = and i1 %i.i, %.not7.i
  %op.rdx19 = select i1 %op.rdx, i1 %.not8.i, i1 false
  br i1 %op.rdx19, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.k = load i8, ptr %i.j, align 1, !range !8, !alias.scope !179, !noundef !4
  %.not9.i = icmp eq i8 %i.k, -1
  br i1 %.not9.i, label %bb.b, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread: ; preds = %bb.a, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.m, align 8
  store ptr null, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  store i8 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(11) @33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 2, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  store i64 0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 -1, ptr %.sroa.64.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @12, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsd_NvNtCs9CN1NTpuHUY_14icu_normalizer8provider1__NtB7_5BakedINtNtCs1GZEXNOm2AR_12icu_provider13data_provider12DataProviderNtB7_21NormalizerUts46DataV1E4load(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = load <4 x i8>, ptr %i.c, align 1, !alias.scope !182
  %.fr = freeze <4 x i8> %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.f = load i8, ptr %i.e, align 1, !range !8, !alias.scope !182
  %.fr20 = freeze i8 %i.f
  %.not7.i = icmp eq i8 %.fr20, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.h = load i8, ptr %i.g, align 1, !range !8, !alias.scope !182
  %.not8.i = icmp eq i8 %i.h, -1
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.i = icmp eq i32 %.fr.scalar, -10195339
  %op.rdx = and i1 %i.i, %.not7.i
  %op.rdx19 = select i1 %op.rdx, i1 %.not8.i, i1 false
  br i1 %op.rdx19, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.k = load i8, ptr %i.j, align 1, !range !8, !alias.scope !182, !noundef !4
  %.not9.i = icmp eq i8 %i.k, -1
  br i1 %.not9.i, label %bb.b, label %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread

_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread: ; preds = %bb.a, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.m, align 8
  store ptr null, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  store i8 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(11) @34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 2, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit
  store i64 0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 -1, ptr %.sroa.64.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @9, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10is_unknown.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsi_NtCs9CN1NTpuHUY_14icu_normalizer8providerNtB5_17DecompositionDataINtNtCseizbxpKYfu7_8zerofrom9zero_from8ZeroFromBK_E9zero_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 58)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 20, i1 false)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !187, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !187, !noundef !4
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !187, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i = load i64, ptr %i.g, align 8, !alias.scope !187, !noundef !4
  %i.h = load i32, ptr %i.b, align 8, !alias.scope !188, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i16, ptr %i.i, align 8, !noundef !4
  store ptr %i.d, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCshzWfHUSfYae_4core5array5drainINtB5_5DraintNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassE10wrap_mut_1tNCNvMs1_B1J_INtB1J_13DecompositionNtNtNtB9_3str4iter5CharsE16decomposing_next0E0ENtNtBZ_4drop4Drop4dropB1J_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXs0_NtNtCshzWfHUSfYae_4core5array5drainQINtB5_5DraintNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassE10wrap_mut_1tNCNvMs1_B1K_INtB1K_13DecompositionNtNtNtB9_3str4iter5CharsE16decomposing_next0E0EINtNtB10_8function5FnMutTjEE8call_mutB1K_(ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtB16_23CanonicalCombiningClassNCNvB16_17sort_slice_by_cccs_0E0EB16_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtBY_23CanonicalCombiningClassNCNvBY_17sort_slice_by_cccs_0E0EBY_(ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_Cs9CN1NTpuHUY_14icu_normalizerNtB5_19ComposingNormalizer11as_borrowed(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_9DataError8with_req(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56), ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(11), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nonlazybind "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { noinline noreturn }
attributes #17 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = !{!"branch_weights", i32 4001, i32 4000000}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i8 0, i8 2}
!8 = !{i8 -1, i8 -128}
!9 = distinct !{!9, i1 true, !"_RINvNtCshzWfHUSfYae_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassEKj11_QINtNtB2_5drain5DraintNCINvMBJ_BG_10wrap_mut_1tNCNvMs1_B1p_INtB1p_13DecompositionNtNtNtB4_3str4iter5CharsE16decomposing_next0E0EEB1p_"}
!10 = distinct !{!10, !9, !"_RINvNtCshzWfHUSfYae_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassEKj11_QINtNtB2_5drain5DraintNCINvMBJ_BG_10wrap_mut_1tNCNvMs1_B1p_INtB1p_13DecompositionNtNtNtB4_3str4iter5CharsE16decomposing_next0E0EEB1p_: argument 0"}
!11 = distinct !{!11, !9, !"_RINvNtCshzWfHUSfYae_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassEKj11_QINtNtB2_5drain5DraintNCINvMBJ_BG_10wrap_mut_1tNCNvMs1_B1p_INtB1p_13DecompositionNtNtNtB4_3str4iter5CharsE16decomposing_next0E0EEB1p_: argument 1"}
!12 = distinct !{!12, i1 true, !"_RINvNtCshzWfHUSfYae_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassEQINtNtB2_5drain5DraintNCINvMBQ_BN_10wrap_mut_1tNCNvMs1_B1w_INtB1w_13DecompositionNtNtNtB4_3str4iter5CharsE16decomposing_next0E0EEB1w_"}
!13 = distinct !{!13, !12, !"_RINvNtCshzWfHUSfYae_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassEQINtNtB2_5drain5DraintNCINvMBQ_BN_10wrap_mut_1tNCNvMs1_B1w_INtB1w_13DecompositionNtNtNtB4_3str4iter5CharsE16decomposing_next0E0EEB1w_: argument 1"}
!14 = distinct !{!14, !12, !"_RINvNtCshzWfHUSfYae_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassEQINtNtB2_5drain5DraintNCINvMBQ_BN_10wrap_mut_1tNCNvMs1_B1w_INtB1w_13DecompositionNtNtNtB4_3str4iter5CharsE16decomposing_next0E0EEB1w_: argument 0"}
!15 = distinct !{!15, i1 true, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops9try_traitINtB4_17NeverShortCircuitANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtB4_3Try11from_outputB17_"}
!16 = distinct !{!16, !15, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops9try_traitINtB4_17NeverShortCircuitANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtB4_3Try11from_outputB17_: argument 1"}
!17 = distinct !{!17, !15, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops9try_traitINtB4_17NeverShortCircuitANtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassj11_ENtB4_3Try11from_outputB17_: argument 0"}
!18 = !{!10}
!19 = !{!10, !11}
!20 = !{!14, !13, !10, !11}
!21 = !{!17, !16, !10}
!22 = distinct !{!22, i1 true, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyNtB1i_23CanonicalCombiningClassNCNvB1i_17sort_slice_by_cccs_0E0EB1i_"}
!23 = distinct !{!23, !22, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyNtB1i_23CanonicalCombiningClassNCNvB1i_17sort_slice_by_cccs_0E0EB1i_: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort8merge_upNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtB16_23CanonicalCombiningClassNCNvB16_17sort_slice_by_cccs_0E0EB16_"}
!25 = distinct !{!25, !24, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort8merge_upNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtB16_23CanonicalCombiningClassNCNvB16_17sort_slice_by_cccs_0E0EB16_: argument 1"}
!26 = distinct !{!26, !24, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort8merge_upNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtB16_23CanonicalCombiningClassNCNvB16_17sort_slice_by_cccs_0E0EB16_: argument 0"}
!27 = distinct !{!27, i1 true, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort10merge_downNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyNtB19_23CanonicalCombiningClassNCNvB19_17sort_slice_by_cccs_0E0EB19_"}
!28 = distinct !{!28, !27, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort10merge_downNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyNtB19_23CanonicalCombiningClassNCNvB19_17sort_slice_by_cccs_0E0EB19_: argument 1"}
!29 = distinct !{!29, !27, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort10merge_downNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyNtB19_23CanonicalCombiningClassNCNvB19_17sort_slice_by_cccs_0E0EB19_: argument 0"}
!30 = !{!23}
!31 = !{!26, !25, !23}
!32 = !{!29, !28, !23}
!33 = distinct !{!33, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassEEB1v_"}
!34 = distinct !{!34, !33, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassEEB1v_: argument 0"}
!35 = distinct !{!35, i1 true, !"_RNvXs5_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassENtNtNtBd_3ops4drop4Drop4dropB1i_"}
!36 = distinct !{!36, !35, !"_RNvXs5_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassENtNtNtBd_3ops4drop4Drop4dropB1i_: argument 0"}
!37 = !{!36, !34}
!38 = distinct !{!38, i1 true, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1c_23CanonicalCombiningClassNCNvB1c_17sort_slice_by_cccs_0E0EB1c_"}
!39 = distinct !{!39, !38, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1c_23CanonicalCombiningClassNCNvB1c_17sort_slice_by_cccs_0E0EB1c_: argument 0"}
!40 = distinct !{!40, i1 true, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1c_23CanonicalCombiningClassNCNvB1c_17sort_slice_by_cccs_0E0EB1c_"}
!41 = distinct !{!41, !40, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtB1c_23CanonicalCombiningClassNCNvB1c_17sort_slice_by_cccs_0E0EB1c_: argument 0"}
!42 = distinct !{!42, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassEEB1r_"}
!43 = distinct !{!43, !42, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassEEB1r_: argument 0"}
!44 = distinct !{!44, i1 true, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassENtNtNtBc_3ops4drop4Drop4dropB1d_"}
!45 = distinct !{!45, !44, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtCs9CN1NTpuHUY_14icu_normalizer17CharacterAndClassENtNtNtBc_3ops4drop4Drop4dropB1d_: argument 0"}
!46 = !{!39}
end_hunk_0
