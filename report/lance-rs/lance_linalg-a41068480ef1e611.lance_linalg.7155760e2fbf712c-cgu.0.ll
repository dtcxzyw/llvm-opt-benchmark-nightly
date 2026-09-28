Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCs9JgWGBoX3PY_12lance_linalg:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCs9JgWGBoX3PY_12lance_linalg(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 2                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @203, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #74
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !noundef !18  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !18 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !18
  %i.k = lshr i64 %i.j, 2                         ; 2 uses
  %.not12 = icmp eq i64 %i.h, %i.k
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 11, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECs9JgWGBoX3PY_12lance_linalg.exit18

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.k, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.n, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @208, ptr noundef nonnull %i.b)
          to label %bb.g unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECs9JgWGBoX3PY_12lance_linalg.exit18: ; preds = %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit16, %bb.c
  ret void

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !3923
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.l

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775794, ptr %i.r, align 8
  store i8 -1, ptr %0, align 8
  %i.s = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !3924
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit16

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit16 unwind label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.e, %bb.f, %bb.j
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.o, %bb.f ], [ %i.o, %bb.e ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3925)
  call void @llvm.experimental.noalias.scope.decl(metadata !3926)
  call void @llvm.experimental.noalias.scope.decl(metadata !3927)
  call void @llvm.experimental.noalias.scope.decl(metadata !3928)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !3929, !nonnull !18, !noundef !18
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !3929
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECs9JgWGBoX3PY_12lance_linalg.exit

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit16: ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !3930)
  call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  call void @llvm.experimental.noalias.scope.decl(metadata !3932)
  call void @llvm.experimental.noalias.scope.decl(metadata !3933)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !3934, !nonnull !18, !noundef !18
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !3934
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECs9JgWGBoX3PY_12lance_linalg.exit18

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit16
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECs9JgWGBoX3PY_12lance_linalg.exit18

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCs9JgWGBoX3PY_12lance_linalg(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 3                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @203, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #74
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs9JgWGBoX3PY_12lance_linalg8distance7hammingNtB4_14PairwiseResult13with_capacity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl i64 %1, 3                            ; 6 uses
  %i.b = icmp ugt i64 %1, 2305843009213693951
  %.not.i = icmp ugt i64 %i.a, 9223372036854775800
  %or.cond.i = or i1 %i.b, %.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !3941
  %i.d = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !3941 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.a) #74
  unreachable

.thread:                                          ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %i.f)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9JgWGBoX3PY_12lance_linalg.exit13

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !3942
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !3942 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9JgWGBoX3PY_12lance_linalg.exit9, label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit14: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9JgWGBoX3PY_12lance_linalg.exit9
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit14, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit14.thread59
  %.pn63 = phi { ptr, i32 } [ %i.m, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit14.thread59 ], [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit14 ]
  %i.j = shl nuw i64 %1, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  resume { ptr, i32 } %.pn63

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9JgWGBoX3PY_12lance_linalg.exit9: ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.a) #74
          to label %bb.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit14

bb.g:                                             ; preds = %bb.e
  %2 = shl nuw nsw i64 %1, 2                      ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !3943
  %i.k = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !3943 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9JgWGBoX3PY_12lance_linalg.exit13

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit14.thread59: ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = shl nuw i64 %1, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %2) #74
          to label %bb.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit14.thread59

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9JgWGBoX3PY_12lance_linalg.exit13: ; preds = %bb.g, %.thread
  %.sroa.1024.0.ph69 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %i.g, %bb.g ]
  %.sroa.4.037.ph68 = phi i64 [ 0, %.thread ], [ %1, %bb.g ] ; 2 uses
  %.ph67 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %i.d, %bb.g ]
  %.sroa.1028.0 = phi ptr [ inttoptr (i64 4 to ptr), %.thread ], [ %i.k, %bb.g ]
  store i64 %.sroa.4.037.ph68, ptr %0, align 8
  %.sroa.5.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.ph67, ptr %.sroa.5.0..sroa_idx15, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.037.ph68, ptr %i.o, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.1024.0.ph69, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.718.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.1028.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.i:                                             ; preds = %bb.h, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9JgWGBoX3PY_12lance_linalg.exit9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs9JgWGBoX3PY_12lance_linalg8distance7hammingNtB4_14PairwiseResult17into_record_batch(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = alloca [112 x i8], align 8               ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [96 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [96 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.t = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming20DISTANCE_PAIR_SCHEMA, i64 8) acquire, align 8
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEE5force0ECs9JgWGBoX3PY_12lance_linalg.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming20DISTANCE_PAIR_SCHEMA, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  invoke void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming20DISTANCE_PAIR_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEE5force0ECs9JgWGBoX3PY_12lance_linalg.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEE5force0ECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %.noexc, %bb.a
  %i.v = load ptr, ptr @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming20DISTANCE_PAIR_SCHEMA, align 8, !nonnull !18, !noundef !18
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEE5force0ECs9JgWGBoX3PY_12lance_linalg.exit
  %i.y = load ptr, ptr @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming20DISTANCE_PAIR_SCHEMA, align 8, !nonnull !18, !noundef !18 ; 6 uses
  store ptr %i.y, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEE5force0ECs9JgWGBoX3PY_12lance_linalg.exit
  call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.thread59

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %i.q, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !3974
  %i.ac = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !3974 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.g, label %bb.j, !prof !23

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #74
          to label %.noexc31 unwind label %bb.h

.noexc31:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ab)
          to label %.thread59 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ac, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.ac, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  invoke void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr noundef nonnull align 8 dereferenceable(96) %i.n, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !3975
  %i.ak = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !3975 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.m, label %bb.p, !prof !23

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #74
          to label %.noexc33 unwind label %bb.n

.noexc33:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aj)
          to label %bb.ai unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ak, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.ak, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  invoke void @_RNvXsG_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecmEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !3976
  %i.as = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !3976 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.s, label %bb.v, !prof !23

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #74
          to label %.noexc37 unwind label %bb.t

.noexc37:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ar)
          to label %bb.ag unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.v:                                             ; preds = %bb.r
end_hunk_0
