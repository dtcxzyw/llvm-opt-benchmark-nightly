Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zstd-3cd2bc6607a640e8.zstd.f1c28880dd902fc6-cgu.0?download=true
inline.NumInlined: 179
inline.NumDeleted: 7
begin_hunk_0_@_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor14set_dictionary:bb.a

bb.j:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i13, %bb.i
  store i64 %i.ad, ptr %i.b, align 8, !alias.scope !66
  %.sroa.2.0..sroa_idx.i.i.i.i.i16 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i16, align 8, !alias.scope !66
  %.sroa.3.0..sroa_idx.i.i.i.i.i17 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.z, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i17, align 8, !alias.scope !66
  %i.ah = call ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newNtNtCscdodAO9FK5_5alloc6string6StringECskKSHmVfoRRa_4zstd(i8 40, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultjjE7map_errNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNvCskKSHmVfoRRa_4zstd14map_error_codeEB1y_.exit18

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultjjE7map_errNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNvCskKSHmVfoRRa_4zstd14map_error_codeEB1y_.exit18: ; preds = %bb.f, %bb.j, %bb.e
  %.sroa.0.0 = phi ptr [ %i.s, %bb.e ], [ %i.ah, %bb.j ], [ null, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor16include_checksum(ptr align 8 %0, i1 zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.01.0.insert.insert = select i1 %1, i64 271, i64 15
  %i.c = tail call { i64, i64 } @_RNvMs0_CsagZlUBgSdNw_9zstd_safeNtB5_4CCtx13set_parameter(ptr align 8 %0, i64 %.sroa.01.0.insert.insert) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call { ptr, i64 } @_RNvCsagZlUBgSdNw_9zstd_safe14get_error_name(i64 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjd0ZH04R2Z3_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.i, i1 zeroext false, i64 1, i64 1), !noalias !69
  %i.j = load i64, ptr %i.a, align 8, !noalias !69
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !69 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !noalias !69
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.m, i64 %i.o) #14, !noalias !69
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !noalias !69 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr readonly align 1 %i.h, i64 %i.i, i1 false), !noalias !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !69
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !69
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !69
  %i.q = call ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newNtNtCscdodAO9FK5_5alloc6string6StringECskKSHmVfoRRa_4zstd(i8 40, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit

_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit: ; preds = %bb.a, %bb.e
  %.sroa.03.0.i = phi ptr [ %i.q, %bb.e ], [ null, %bb.a ]
  ret ptr %.sroa.03.0.i
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor19include_contentsize(ptr align 8 %0, i1 zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.01.0.insert.insert = select i1 %1, i64 270, i64 14
  %i.c = tail call { i64, i64 } @_RNvMs0_CsagZlUBgSdNw_9zstd_safeNtB5_4CCtx13set_parameter(ptr align 8 %0, i64 %.sroa.01.0.insert.insert) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call { ptr, i64 } @_RNvCsagZlUBgSdNw_9zstd_safe14get_error_name(i64 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjd0ZH04R2Z3_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.i, i1 zeroext false, i64 1, i64 1), !noalias !72
  %i.j = load i64, ptr %i.a, align 8, !noalias !72
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !noalias !72
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.m, i64 %i.o) #14, !noalias !72
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !noalias !72 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr readonly align 1 %i.h, i64 %i.i, i1 false), !noalias !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !72
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !72
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !72
  %i.q = call ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newNtNtCscdodAO9FK5_5alloc6string6StringECskKSHmVfoRRa_4zstd(i8 40, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit

_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit: ; preds = %bb.a, %bb.e
  %.sroa.03.0.i = phi ptr [ %i.q, %bb.e ], [ null, %bb.a ]
  ret ptr %.sroa.03.0.i
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor21set_compression_level(ptr align 8 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor14set_dictionary(ptr align 8 %0, i32 %1, ptr nonnull inttoptr (i64 1 to ptr), i64 0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor22long_distance_matching(ptr align 8 %0, i1 zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.01.0.insert.insert = select i1 %1, i64 265, i64 9
  %i.c = tail call { i64, i64 } @_RNvMs0_CsagZlUBgSdNw_9zstd_safeNtB5_4CCtx13set_parameter(ptr align 8 %0, i64 %.sroa.01.0.insert.insert) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call { ptr, i64 } @_RNvCsagZlUBgSdNw_9zstd_safe14get_error_name(i64 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjd0ZH04R2Z3_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.i, i1 zeroext false, i64 1, i64 1), !noalias !75
  %i.j = load i64, ptr %i.a, align 8, !noalias !75
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !75 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !noalias !75
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.m, i64 %i.o) #14, !noalias !75
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !noalias !75 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr readonly align 1 %i.h, i64 %i.i, i1 false), !noalias !75
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !75
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !75
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !75
  %i.q = call ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newNtNtCscdodAO9FK5_5alloc6string6StringECskKSHmVfoRRa_4zstd(i8 40, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit

_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit: ; preds = %bb.a, %bb.e
  %.sroa.03.0.i = phi ptr [ %i.q, %bb.e ], [ null, %bb.a ]
  ret ptr %.sroa.03.0.i
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor22set_target_cblock_size(ptr align 8 %0, i32 %1, i32 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = trunc i32 %1 to i1
  %..i = select i1 %i.c, i32 %2, i32 0
  %.sroa.3.0.insert.ext = zext i32 %..i to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %i.d = tail call { i64, i64 } @_RNvMs0_CsagZlUBgSdNw_9zstd_safeNtB5_4CCtx13set_parameter(ptr align 8 %0, i64 %.sroa.3.0.insert.shift) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, i64 } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = tail call { ptr, i64 } @_RNvCsagZlUBgSdNw_9zstd_safe14get_error_name(i64 %i.g) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjd0ZH04R2Z3_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.j, i1 zeroext false, i64 1, i64 1), !noalias !78
  %i.k = load i64, ptr %i.a, align 8, !noalias !78
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !78 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !78
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.n, i64 %i.p) #14, !noalias !78
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !78 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr readonly align 1 %i.i, i64 %i.j, i1 false), !noalias !78
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !78
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !78
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.j, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !78
  %i.r = call ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newNtNtCscdodAO9FK5_5alloc6string6StringECskKSHmVfoRRa_4zstd(i8 40, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit

_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor13set_parameter.exit: ; preds = %bb.a, %bb.e
  %.sroa.03.0.i = phi ptr [ %i.r, %bb.e ], [ null, %bb.a ]
  ret ptr %.sroa.03.0.i
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call { i64, i64 } @_RNvMs0_CsagZlUBgSdNw_9zstd_safeNtB5_4CCtx9ref_cdict(ptr align 8 %0, ptr align 8 %1) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultjjE7map_errNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNvCskKSHmVfoRRa_4zstd14map_error_codeEB1y_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call { ptr, i64 } @_RNvCsagZlUBgSdNw_9zstd_safe14get_error_name(i64 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjd0ZH04R2Z3_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.i, i1 zeroext false, i64 1, i64 1), !noalias !81
  %i.j = load i64, ptr %i.a, align 8, !noalias !81
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !81 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !noalias !81
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.m, i64 %i.o) #14, !noalias !81
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !noalias !81 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr readonly align 1 %i.h, i64 %i.i, i1 false), !noalias !81
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i, %bb.d
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !81
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !81
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !81
  %i.q = call ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newNtNtCscdodAO9FK5_5alloc6string6StringECskKSHmVfoRRa_4zstd(i8 40, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultjjE7map_errNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNvCskKSHmVfoRRa_4zstd14map_error_codeEB1y_.exit

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultjjE7map_errNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNvCskKSHmVfoRRa_4zstd14map_error_codeEB1y_.exit: ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi ptr [ %i.q, %bb.e ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor24with_prepared_dictionary(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = tail call ptr @_RNvXs_CsagZlUBgSdNw_9zstd_safeNtB4_4CCtxNtNtCs4NRVxsYgnAr_4core7default7Default7default()
  store ptr %i.d, ptr %i.c, align 8
  %i.e = invoke { i64, i64 } @_RNvMs0_CsagZlUBgSdNw_9zstd_safeNtB5_4CCtx9ref_cdict(ptr nonnull align 8 %i.c, ptr align 8 %0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary.exit.thread

bb.b:                                             ; preds = %.noexc
  %i.h = extractvalue { i64, i64 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = invoke { ptr, i64 } @_RNvCsagZlUBgSdNw_9zstd_safe14get_error_name(i64 %i.h)
          to label %.noexc4 unwind label %bb.f    ; 2 uses

.noexc4:                                          ; preds = %bb.b
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjd0ZH04R2Z3_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.k, i1 zeroext false, i64 1, i64 1)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %.noexc4
  %i.l = load i64, ptr %i.a, align 8, !noalias !84
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !84 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.noexc5
  %i.q = load i64, ptr %i.p, align 8, !noalias !84
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.o, i64 %i.q) #14
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.c
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i: ; preds = %.noexc5
  %i.r = load ptr, ptr %i.p, align 8, !noalias !84 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr readonly align 1 %i.j, i64 %i.k, i1 false), !noalias !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskKSHmVfoRRa_4zstd.exit.i.i.i.i.i.i.i
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !84
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !84
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.k, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !84
  %i.s = invoke ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newNtNtCscdodAO9FK5_5alloc6string6StringECskKSHmVfoRRa_4zstd(i8 40, ptr nonnull align 8 %i.b)
          to label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary.exit unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.e, %bb.c, %.noexc4, %bb.b, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_CsagZlUBgSdNw_9zstd_safeNtB5_4CCtxNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCskKSHmVfoRRa_4zstd4bulk10compressor10CompressorEBH_.exit unwind label %bb.i

_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary.exit.thread, label %bb.h

_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary.exit.thread: ; preds = %.noexc, %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary.exit
  %i.u = load ptr, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary.exit.thread
  %.sroa.3.0 = phi ptr [ %i.s, %bb.h ], [ %i.u, %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary.exit.thread ]
  %.sroa.0.0 = phi i64 [ 1, %bb.h ], [ 0, %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary.exit.thread ]
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, ptr } %i.v, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.w

bb.h:                                             ; preds = %_RNvMs_NtNtCskKSHmVfoRRa_4zstd4bulk10compressorNtB4_10Compressor23set_prepared_dictionary.exit
  call void @_RNvXs1_CsagZlUBgSdNw_9zstd_safeNtB5_4CCtxNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.c)
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
end_hunk_0
