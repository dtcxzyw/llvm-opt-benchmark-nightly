Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_test-29b616129d36b6c9.deltalake_test.ba0291980bd00892-cgu.07?download=true
inline.NumInlined: 593
inline.NumDeleted: 280
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1w_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1w_6marker4SendEL_EEINtNtB22_3vec3VecB3K_EENtNtNtB1w_6future6future6Future4pollCsfY7SmN0bPrO_14deltalake_test:bb.a

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.546.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12)
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  ret void

bb.f:                                             ; preds = %bb.b
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.sroa.12, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.7.0..sroa_idx27, i64 32, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.641.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.8.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.540.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.sroa.12, i64 32, i1 false)
  store i64 %i.e, ptr %0, align 16
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.439.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %.sroa.026.0.copyload = load i64, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.sroa.12, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.7.0..sroa_idx27, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !895
  store i64 %.sroa.026.0.copyload, ptr %i.a, align 8, !alias.scope !896, !noalias !897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.343.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.sroa.12, i64 32, i1 false)
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !895
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12)
  br label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_5local15LocalFileSystemNtB3S_11ObjectStore13delete_stream0EEB2B_9poll_nextCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 %i.e)
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %i.i, 115292150460684698
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.g, %i.i
  %i.l = load i64, ptr %i.d, align 8, !noundef !4
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.r = load i8, ptr %i.n, align 8, !range !15, !alias.scope !903, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_5local15LocalFileSystemNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCsfY7SmN0bPrO_14deltalake_test.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtB3s_5local15LocalFileSystemNtB3s_11ObjectStore13delete_stream0EB2b_9poll_nextCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.t = load i64, ptr %i.b, align 8, !range !8, !alias.scope !902, !noundef !4
  switch i64 %i.t, label %_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_5local15LocalFileSystemNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCsfY7SmN0bPrO_14deltalake_test.exit [
    i64 2, label %_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_5local15LocalFileSystemNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCsfY7SmN0bPrO_14deltalake_test.exit.thread
    i64 1, label %bb.d
  ]

_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_5local15LocalFileSystemNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.c
  store i8 1, ptr %i.n, align 8, !alias.scope !903
  br label %_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_5local15LocalFileSystemNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCsfY7SmN0bPrO_14deltalake_test.exit.thread

.loopexit:                                        ; preds = %bb.d, %bb.a, %_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_5local15LocalFileSystemNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCsfY7SmN0bPrO_14deltalake_test.exit.thread
  tail call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB1w_11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.u = load i64, ptr %0, align 8, !range !904, !noundef !4 ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 -9223372036854775788, label %.sink.split
    i64 -9223372036854775789, label %bb.e
  ]

_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_5local15LocalFileSystemNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCsfY7SmN0bPrO_14deltalake_test.exit.thread: ; preds = %bb.c, %bb.b, %_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_5local15LocalFileSystemNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCsfY7SmN0bPrO_14deltalake_test.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 128, i1 false)
  %i.v = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.p, align 8
  call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE4pushCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 %i.e)
  %i.y = extractvalue { ptr, i64 } %i.x, 1
  %i.z = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 115292150460684698
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add i64 %i.y, %i.z
  %i.ac = load i64, ptr %i.d, align 8, !noundef !4
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.b, label %.loopexit

bb.e:                                             ; preds = %.loopexit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.af = load i8, ptr %i.ae, align 8, !range !15, !noundef !4
  %i.ag = trunc nuw i8 %i.af to i1
  %. = select i1 %i.ag, i64 -9223372036854775789, i64 -9223372036854775788
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.loopexit
  %.sink = phi i64 [ %., %bb.e ], [ %i.u, %.loopexit ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_5local15LocalFileSystemNtB3S_11ObjectStore13delete_stream0EEB2B_9size_hintCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 %i.b)
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %i.d, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i8, ptr %i.i, align 8, !range !15, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtB3s_5local15LocalFileSystemNtB3s_11ObjectStore13delete_stream0EB2b_9size_hintCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = load i64, ptr %i.a, align 8, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !12, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.h) ; 2 uses
  %i.s = trunc nuw i64 %i.o to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %i.h, %bb.c ], [ %i.r, %bb.b ]
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = add i64 %.sroa.6.0, %i.h                 ; 2 uses
  %i.u = icmp uge i64 %i.t, %.sroa.6.0
  %.6 = zext i1 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0 = phi i64 [ %i.t, %bb.d ], [ undef, %bb.b ]
  %.sroa.05.0 = phi i64 [ %.6, %bb.d ], [ 0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0, %bb.d ], [ %i.r, %bb.b ]
  store i64 %.sroa.04.1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %i.w, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_6future6future6Future4pollCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [96 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -9223372036854775741, ptr %i.c, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !17, !noalias !915, !noundef !4
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test.exit.thread2.i
    i8 2, label %.thread31.a
  ], !prof !916

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.a
  %i.g = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread28 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread31.a, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test.exit.thread2.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i4.i = phi ptr [ %i.g, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68
  %i.j = load i8, ptr %i.i, align 1, !range !15, !noalias !917, !noundef !4 ; 2 uses
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !noalias !917 ; 4 uses
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test.exit.thread2.i
  %.not.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread28

bb.d:                                             ; preds = %bb.b
  %i.n = add i8 %i.m, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test.exit.thread2.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.n, %bb.d ], [ %i.m, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test.exit.thread2.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.l, align 1, !noalias !917
  br label %bb.f

.thread28:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.m, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i9.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %3)
          to label %bb.g unwind label %.thread28

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i9.i, label %bb.h, label %.thread31.a

bb.h:                                             ; preds = %bb.g
  store i64 -9223372036854775741, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = load i64, ptr %i.c, align 16, !range !918, !alias.scope !919, !noundef !4
  %.not.i = icmp eq i64 %i.o, -9223372036854775741
  br i1 %.not.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit

.thread31.a:                                      ; preds = %bb.a, %.noexc, %bb.g
  %.sroa.03.011.i33.off8 = phi i8 [ %i.j, %bb.g ], [ 0, %.noexc ], [ 0, %bb.a ]
  %.sroa.03.011.i33.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ], [ 0, %bb.a ]
  store i8 %.sroa.03.011.i33.off8, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i33.off16, ptr %i.p, align 1
  %i.q = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !nonnull !4, !align !10, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !10, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  invoke void %i.v(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.thread31.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.k:                                             ; preds = %.thread31.a
  %i.x = load i64, ptr %i.c, align 16, !range !918, !noundef !4
  %.not = icmp eq i64 %i.x, -9223372036854775741
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECsfY7SmN0bPrO_14deltalake_test.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECsfY7SmN0bPrO_14deltalake_test.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECsfY7SmN0bPrO_14deltalake_test.exit20: ; preds = %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.i, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECsfY7SmN0bPrO_14deltalake_test.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.n, %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit23: ; preds = %.thread, %bb.n
  resume { ptr, i32 } %.pn27

.thread:                                          ; preds = %bb.j, %.thread28
  %.pn27 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread28 ], [ %i.w, %bb.j ]
  %i.z = load i64, ptr %i.c, align 16, !range !918, !alias.scope !920, !noundef !4
  %.not.i21 = icmp eq i64 %i.z, -9223372036854775741
  br i1 %.not.i21, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit23, label %bb.n

bb.n:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsfY7SmN0bPrO_14deltalake_test.exit23 unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapxNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB1N_6errors15DeltaTableErrorEEENtNtNtB1c_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deINtNvXs3g_NtB4_5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMappppENtB4_11Deserialize11deserialize10MapVisitorNtNtCs6Po7BT7Nknu_5alloc6string6StringB2A_NtNtNtB13_4hash6random11RandomStateENtB4_8Expected3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXs19_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXs19_NtNtCs1gOyXocuPRE_10serde_core2de5implsyNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXsR_NtB4_5implslNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXsR_NtNtCs1gOyXocuPRE_10serde_core2de5implslNtBa_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBa_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesNtNtB13_2fs4FileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXsj_NtCs2pqxYH9ZEk8_3std2ioINtB5_5BytesNtNtB7_2fs4FileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.b = load i8, ptr %0, align 8, !range !17, !noundef !4
  switch i8 %i.b, label %bb.c [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp eq i8 %i.d, 10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = add i64 %i.g, 1                          ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = add i64 %i.h, %i.j
  store i64 %i.k, ptr %i.i, align 8
  %i.l = load i64, ptr %1, align 8, !noundef !4
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %1, align 8
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  store i64 %i.h, ptr %i.f, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
end_hunk_0
