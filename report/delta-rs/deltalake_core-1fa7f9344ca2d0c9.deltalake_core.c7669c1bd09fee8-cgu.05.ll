Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.05?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNSNvYNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayNtB8_5Array9into_data6vtableCs14kWLkQVSKO_14deltalake_core:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayNtB8_5Array9into_data6vtableCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayNtB7_5Array9into_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNtNtNtCs1N9T06jgEdt_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB8_5Array9into_data6vtableCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtB7_5Array9into_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNtNtNtCs1N9T06jgEdt_11arrow_array5array23fixed_size_binary_array20FixedSizeBinaryArrayNtB8_5Array9into_data6vtableCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array23fixed_size_binary_arrayNtB5_20FixedSizeBinaryArrayNtB7_5Array9into_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNtNtNtCs1N9T06jgEdt_11arrow_array5array9map_array8MapArrayNtB8_5Array9into_data6vtableCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array9map_arrayNtB5_8MapArrayNtB7_5Array9into_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCs8ulvy0Wg6Ot_12delta_kernel8FileMeta14swap_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 88686269585142076) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder21materialize_if_needed(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !alias.scope !18654, !noundef !4
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.h, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18655)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18656, !noundef !4
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.e, 7
  %.not.i.i = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not.i.i to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.f, %i.h     ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !18656, !noundef !4 ; 3 uses
  %i.k = icmp ugt i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw nsw i64 %.sroa.0.0.i.i, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18657)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !18658, !noundef !4 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.0.0.i.i, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %.sroa.0.0.i.i, 63
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %reass.sub.i.i.i = and i64 %.sroa.0.0.i.i, 4611686018427387840
  %i.r = add nuw nsw i64 %reass.sub.i.i.i, 64     ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.0.0.i.i
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.r, %bb.e ]
  %i.t = shl nuw nsw i64 %i.n, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.sroa.4.0.i.i.i)
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %.sroa.0.0.i.i.i)
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !18656
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40, !noalias !18659
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i: ; preds = %bb.f, %bb.c
  %i.u = phi i64 [ %i.j, %bb.c ], [ %.pre.i.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !18656, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.l, i1 false)
  store i64 %.sroa.0.0.i.i, ptr %i.i, align 8, !alias.scope !18656
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #40
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit: ; preds = %bb.b, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !18656
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp samesign ult i64 %i.z, 2147483648
  br i1 %i.ab, label %bb.i, label %bb.k, !prof !9

bb.i:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !18660, !noundef !4 ; 3 uses
  %i.af = load i64, ptr %i.ac, align 8, !range !14, !alias.scope !18660, !noundef !4
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VeclE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VeclE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VeclE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i, %bb.j
  %i.ah = trunc nuw nsw i64 %i.z to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !18660, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ae
  store i32 %i.ah, ptr %i.ak, align 4
  %i.al = add i64 %i.ae, 1
  store i64 %i.al, ptr %i.ad, align 8, !alias.scope !18660
  ret void

bb.k:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add i64 %1, 1                            ; 4 uses
  %i.c = shl i64 %i.b, 2                          ; 4 uses
  %i.d = icmp ugt i64 %i.b, 4611686018427387903
  %.not.i = icmp ugt i64 %i.c, 9223372036854775804
  %or.cond.i = or i1 %i.d, %.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread._crit_edge unwind label %bb.e

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !18667
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18668
  %i.i = tail call noundef align 4 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !18668 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.c) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.l unwind label %bb.k

bb.f:                                             ; preds = %bb.c
  store i64 %i.b, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  unreachable

bb.h:                                             ; preds = %.thread._crit_edge, %bb.f
  %i.n = phi ptr [ %i.i, %bb.f ], [ %.pre, %.thread._crit_edge ]
  %i.o = phi ptr [ %i.m, %bb.f ], [ %i.h, %.thread._crit_edge ]
  store i32 0, ptr %i.n, align 4
  store i64 1, ptr %i.o, align 8, !alias.scope !18667
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18669
  %i.p = call noundef dereferenceable_or_null(1024) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1024, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18669 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1024) #37
          to label %bb.g unwind label %bb.e

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1024, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.s, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE6finishCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [184 x i8], align 8               ; 4 uses
  %i.j = alloca [136 x i8], align 8               ; 11 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [184 x i8], align 8               ; 16 uses
  %i.q = alloca [184 x i8], align 8               ; 5 uses
  %i.r = alloca [184 x i8], align 8               ; 5 uses
  %i.s = alloca [184 x i8], align 8               ; 5 uses
  %i.t = alloca [184 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 20, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.y, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  store i8 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 177
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ac = invoke noundef i64 @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB4_17NullBufferBuilder3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.p) #38
          to label %.body.thread unwind label %bb.aj

bb.c:                                             ; preds = %bb.a
  store i64 %i.ac, ptr %i.v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.q, ptr noundef nonnull align 8 dereferenceable(184) %i.p, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  store i64 0, ptr %i.ae, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  invoke void @_RNvXs7_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.d unwind label %bb.am

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  invoke void @_RNvXs7_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.e unwind label %bb.al

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ab)
          to label %bb.f unwind label %bb.ak

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.af = load i64, ptr %.sroa.517.0..sroa_idx, align 8, !noundef !4 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp samesign ult i64 %i.af, 2147483648
  %i.ai = trunc nuw nsw i64 %i.af to i32
  br i1 %i.ah, label %bb.g, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !18685, !noundef !4 ; 3 uses
  %i.ak = load i64, ptr %i.ae, align 8, !range !14, !alias.scope !18685, !noundef !4
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.k unwind label %bb.ai

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #37
          to label %bb.j unwind label %bb.ai

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.h
  %i.am = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !18685, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aj
  store i32 %i.ai, ptr %i.an, align 4
  %i.ao = add i64 %i.aj, 1
  store i64 %i.ao, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !18685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.i, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i64 184, i1 false)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18686)
  call void @llvm.experimental.noalias.scope.decl(metadata !18687)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  store ptr %i.ap, ptr %i.h, align 8, !noalias !18688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 20, i64 24, i1 false), !noalias !18688
  store ptr %i.f, ptr %i.g, align 8, !noalias !18688
  %i.aq = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.n unwind label %bb.m, !noalias !18686

bb.l:                                             ; preds = %bb.q, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.au, %bb.q ], [ %i.ar, %bb.m ]
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypelEE6finishCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.ag:                                            ; preds = %bb.ae
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !18687, !noalias !18686, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.cd = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !18687, !noalias !18686
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.cf = load <2 x i64>, ptr %i.ce, align 8, !alias.scope !18687, !noalias !18686
  br label %bb.af

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.trap()
  unreachable

.body.thread:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ai ], [ %.pn36.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ch, %bb.ak ], [ %i.ad, %bb.b ], [ %i.ci, %bb.al ], [ %i.cj, %bb.am ]
  resume { ptr, i32 } %.pn

bb.ai:                                            ; preds = %bb.h, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.t) #38
          to label %.body.thread unwind label %bb.aj

bb.aj:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.b
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ak:                                            ; preds = %bb.e
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.s) #38
          to label %.body.thread unwind label %bb.aj

bb.al:                                            ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.r) #38
          to label %.body.thread unwind label %bb.aj

bb.am:                                            ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.q) #38
          to label %.body.thread unwind label %bb.aj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder21materialize_if_needed(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !alias.scope !18704, !noundef !4
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.h, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18705)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18706, !noundef !4
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.e, 7
  %.not.i.i = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not.i.i to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.f, %i.h     ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !18706, !noundef !4 ; 3 uses
  %i.k = icmp ugt i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw nsw i64 %.sroa.0.0.i.i, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18707)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !18708, !noundef !4 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.0.0.i.i, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %.sroa.0.0.i.i, 63
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %reass.sub.i.i.i = and i64 %.sroa.0.0.i.i, 4611686018427387840
  %i.r = add nuw nsw i64 %reass.sub.i.i.i, 64     ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.0.0.i.i
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.r, %bb.e ]
  %i.t = shl nuw nsw i64 %i.n, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.sroa.4.0.i.i.i)
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %.sroa.0.0.i.i.i)
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !18706
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40, !noalias !18709
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i: ; preds = %bb.f, %bb.c
  %i.u = phi i64 [ %i.j, %bb.c ], [ %.pre.i.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !18706, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.l, i1 false)
  store i64 %.sroa.0.0.i.i, ptr %i.i, align 8, !alias.scope !18706
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #40
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit: ; preds = %bb.b, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !18706
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !18710, !noundef !4 ; 3 uses
  %i.ae = load i64, ptr %i.ab, align 8, !range !14, !alias.scope !18710, !noundef !4
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs3v6NujDNJcu_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !18710, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  store i64 %i.z, ptr %i.ai, align 8
  %i.aj = add i64 %i.ad, 1
  store i64 %i.aj, ptr %i.ac, align 8, !alias.scope !18710
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add i64 %1, 1                            ; 4 uses
  %i.c = shl i64 %i.b, 3                          ; 4 uses
  %i.d = icmp ugt i64 %i.b, 2305843009213693951
  %.not.i = icmp ugt i64 %i.c, 9223372036854775800
  %or.cond.i = or i1 %i.d, %.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs3v6NujDNJcu_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread._crit_edge unwind label %bb.e

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !18717
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18718
  %i.i = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18718 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.c) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.l unwind label %bb.k

bb.f:                                             ; preds = %bb.c
  store i64 %i.b, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  unreachable

bb.h:                                             ; preds = %.thread._crit_edge, %bb.f
  %i.n = phi ptr [ %i.i, %bb.f ], [ %.pre, %.thread._crit_edge ]
  %i.o = phi ptr [ %i.m, %bb.f ], [ %i.h, %.thread._crit_edge ]
  store i64 0, ptr %i.n, align 8
  store i64 1, ptr %i.o, align 8, !alias.scope !18717
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18719
  %i.p = call noundef dereferenceable_or_null(1024) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1024, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18719 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1024) #37
          to label %bb.g unwind label %bb.e

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1024, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.s, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE6finishCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [184 x i8], align 8               ; 4 uses
  %i.j = alloca [136 x i8], align 8               ; 11 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [184 x i8], align 8               ; 16 uses
  %i.q = alloca [184 x i8], align 8               ; 5 uses
  %i.r = alloca [184 x i8], align 8               ; 5 uses
  %i.s = alloca [184 x i8], align 8               ; 5 uses
  %i.t = alloca [184 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 22, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.y, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  store i8 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 177
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ac = invoke noundef i64 @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB4_17NullBufferBuilder3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.p) #38
          to label %.body.thread unwind label %bb.ag

bb.c:                                             ; preds = %bb.a
  store i64 %i.ac, ptr %i.v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.q, ptr noundef nonnull align 8 dereferenceable(184) %i.p, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  store i64 0, ptr %i.ae, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  invoke void @_RNvXs7_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.d unwind label %bb.aj

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  invoke void @_RNvXs7_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.e unwind label %bb.ai

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ab)
          to label %bb.f unwind label %bb.ah

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.af = load i64, ptr %.sroa.517.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !18735, !noundef !4 ; 3 uses
  %i.ai = load i64, ptr %i.ae, align 8, !range !14, !alias.scope !18735, !noundef !4
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs3v6NujDNJcu_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.h unwind label %bb.af

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ak = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !18735, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ah
  store i64 %i.af, ptr %i.al, align 8
  %i.am = add i64 %i.ah, 1
  store i64 %i.am, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !18735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.i, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i64 184, i1 false)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18736)
  call void @llvm.experimental.noalias.scope.decl(metadata !18737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  store ptr %i.an, ptr %i.h, align 8, !noalias !18738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18738
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 22, i64 24, i1 false), !noalias !18738
  store ptr %i.f, ptr %i.g, align 8, !noalias !18738
  %i.ao = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.k unwind label %bb.j, !noalias !18736

bb.i:                                             ; preds = %bb.n, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.ap, %bb.j ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.f) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferxEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.p, !noalias !18736

bb.j:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  br i1 %i.ao, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE6finishCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cb = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !18737, !noalias !18736
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.cd = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !18737, !noalias !18736
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

.body.thread:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferxEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.af ], [ %.pn36.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferxEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.cf, %bb.ah ], [ %i.ad, %bb.b ], [ %i.cg, %bb.ai ], [ %i.ch, %bb.aj ]
  resume { ptr, i32 } %.pn

bb.af:                                            ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.t) #38
          to label %.body.thread unwind label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.b
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ah:                                            ; preds = %bb.e
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.s) #38
          to label %.body.thread unwind label %bb.ag

bb.ai:                                            ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.r) #38
          to label %.body.thread unwind label %bb.ag

bb.aj:                                            ; preds = %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.q) #38
          to label %.body.thread unwind label %bb.ag
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder21materialize_if_needed(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !alias.scope !18754, !noundef !4
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.h, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18755)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18756, !noundef !4
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.e, 7
  %.not.i.i = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not.i.i to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.f, %i.h     ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !18756, !noundef !4 ; 3 uses
  %i.k = icmp ugt i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw nsw i64 %.sroa.0.0.i.i, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18757)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !18758, !noundef !4 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.0.0.i.i, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %.sroa.0.0.i.i, 63
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %reass.sub.i.i.i = and i64 %.sroa.0.0.i.i, 4611686018427387840
  %i.r = add nuw nsw i64 %reass.sub.i.i.i, 64     ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.0.0.i.i
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.r, %bb.e ]
  %i.t = shl nuw nsw i64 %i.n, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.sroa.4.0.i.i.i)
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %.sroa.0.0.i.i.i)
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !18756
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40, !noalias !18759
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i: ; preds = %bb.f, %bb.c
  %i.u = phi i64 [ %i.j, %bb.c ], [ %.pre.i.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !18756, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.l, i1 false)
  store i64 %.sroa.0.0.i.i, ptr %i.i, align 8, !alias.scope !18756
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #40
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit: ; preds = %bb.b, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !18756
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp samesign ult i64 %i.z, 2147483648
  br i1 %i.ab, label %bb.i, label %bb.k, !prof !9

bb.i:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !18760, !noundef !4 ; 3 uses
  %i.af = load i64, ptr %i.ac, align 8, !range !14, !alias.scope !18760, !noundef !4
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VeclE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VeclE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VeclE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i, %bb.j
  %i.ah = trunc nuw nsw i64 %i.z to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !18760, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ae
  store i32 %i.ah, ptr %i.ak, align 4
  %i.al = add i64 %i.ae, 1
  store i64 %i.al, ptr %i.ad, align 8, !alias.scope !18760
  ret void

bb.k:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add i64 %1, 1                            ; 4 uses
  %i.c = shl i64 %i.b, 2                          ; 4 uses
  %i.d = icmp ugt i64 %i.b, 4611686018427387903
  %.not.i = icmp ugt i64 %i.c, 9223372036854775804
  %or.cond.i = or i1 %i.d, %.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread._crit_edge unwind label %bb.e

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !18767
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18768
  %i.i = tail call noundef align 4 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !18768 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.c) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.l unwind label %bb.k

bb.f:                                             ; preds = %bb.c
  store i64 %i.b, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  unreachable

bb.h:                                             ; preds = %.thread._crit_edge, %bb.f
  %i.n = phi ptr [ %i.i, %bb.f ], [ %.pre, %.thread._crit_edge ]
  %i.o = phi ptr [ %i.m, %bb.f ], [ %i.h, %.thread._crit_edge ]
  store i32 0, ptr %i.n, align 4
  store i64 1, ptr %i.o, align 8, !alias.scope !18767
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18769
  %i.p = call noundef dereferenceable_or_null(1024) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1024, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18769 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1024) #37
          to label %bb.g unwind label %bb.e

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1024, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.s, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [184 x i8], align 8               ; 4 uses
  %i.j = alloca [136 x i8], align 8               ; 11 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [184 x i8], align 8               ; 16 uses
  %i.q = alloca [184 x i8], align 8               ; 5 uses
  %i.r = alloca [184 x i8], align 8               ; 5 uses
  %i.s = alloca [184 x i8], align 8               ; 5 uses
  %i.t = alloca [184 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 24, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.y, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  store i8 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 177
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ac = invoke noundef i64 @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB4_17NullBufferBuilder3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.p) #38
          to label %.body.thread unwind label %bb.aj

bb.c:                                             ; preds = %bb.a
  store i64 %i.ac, ptr %i.v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.q, ptr noundef nonnull align 8 dereferenceable(184) %i.p, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  store i64 0, ptr %i.ae, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  invoke void @_RNvXs7_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.d unwind label %bb.am

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  invoke void @_RNvXs7_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.e unwind label %bb.al

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ab)
          to label %bb.f unwind label %bb.ak

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.af = load i64, ptr %.sroa.517.0..sroa_idx, align 8, !noundef !4 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp samesign ult i64 %i.af, 2147483648
  %i.ai = trunc nuw nsw i64 %i.af to i32
  br i1 %i.ah, label %bb.g, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !18785, !noundef !4 ; 3 uses
  %i.ak = load i64, ptr %i.ae, align 8, !range !14, !alias.scope !18785, !noundef !4
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.k unwind label %bb.ai

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #37
          to label %bb.j unwind label %bb.ai

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.h
  %i.am = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !18785, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aj
  store i32 %i.ai, ptr %i.an, align 4
  %i.ao = add i64 %i.aj, 1
  store i64 %i.ao, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !18785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.i, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i64 184, i1 false)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18786)
  call void @llvm.experimental.noalias.scope.decl(metadata !18787)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  store ptr %i.ap, ptr %i.h, align 8, !noalias !18788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18788
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 24, i64 24, i1 false), !noalias !18788
  store ptr %i.f, ptr %i.g, align 8, !noalias !18788
  %i.aq = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.n unwind label %bb.m, !noalias !18786

bb.l:                                             ; preds = %bb.q, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.au, %bb.q ], [ %i.ar, %bb.m ]
end_hunk_2
begin_hunk_3_@_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.ag:                                            ; preds = %bb.ae
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !18787, !noalias !18786, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.cd = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !18787, !noalias !18786
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.cf = load <2 x i64>, ptr %i.ce, align 8, !alias.scope !18787, !noalias !18786
  br label %bb.af

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.trap()
  unreachable

.body.thread:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ai ], [ %.pn36.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferlEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ch, %bb.ak ], [ %i.ad, %bb.b ], [ %i.ci, %bb.al ], [ %i.cj, %bb.am ]
  resume { ptr, i32 } %.pn

bb.ai:                                            ; preds = %bb.h, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.t) #38
          to label %.body.thread unwind label %bb.aj

bb.aj:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.b
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ak:                                            ; preds = %bb.e
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.s) #38
          to label %.body.thread unwind label %bb.aj

bb.al:                                            ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.r) #38
          to label %.body.thread unwind label %bb.aj

bb.am:                                            ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.q) #38
          to label %.body.thread unwind label %bb.aj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypexEE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder21materialize_if_needed(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !alias.scope !18804, !noundef !4
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.h, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18805)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18806, !noundef !4
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.e, 7
  %.not.i.i = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not.i.i to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.f, %i.h     ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !18806, !noundef !4 ; 3 uses
  %i.k = icmp ugt i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw nsw i64 %.sroa.0.0.i.i, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18807)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !18808, !noundef !4 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.0.0.i.i, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %.sroa.0.0.i.i, 63
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %reass.sub.i.i.i = and i64 %.sroa.0.0.i.i, 4611686018427387840
  %i.r = add nuw nsw i64 %reass.sub.i.i.i, 64     ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.0.0.i.i
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.r, %bb.e ]
  %i.t = shl nuw nsw i64 %i.n, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.sroa.4.0.i.i.i)
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %.sroa.0.0.i.i.i)
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !18806
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40, !noalias !18809
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i: ; preds = %bb.f, %bb.c
  %i.u = phi i64 [ %i.j, %bb.c ], [ %.pre.i.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !18806, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.l, i1 false)
  store i64 %.sroa.0.0.i.i, ptr %i.i, align 8, !alias.scope !18806
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #40
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit: ; preds = %bb.b, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !18806
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !18810, !noundef !4 ; 3 uses
  %i.ae = load i64, ptr %i.ab, align 8, !range !14, !alias.scope !18810, !noundef !4
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs3v6NujDNJcu_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !18810, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  store i64 %i.z, ptr %i.ai, align 8
  %i.aj = add i64 %i.ad, 1
  store i64 %i.aj, ptr %i.ac, align 8, !alias.scope !18810
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypexEE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add i64 %1, 1                            ; 4 uses
  %i.c = shl i64 %i.b, 3                          ; 4 uses
  %i.d = icmp ugt i64 %i.b, 2305843009213693951
  %.not.i = icmp ugt i64 %i.c, 9223372036854775800
  %or.cond.i = or i1 %i.d, %.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs3v6NujDNJcu_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread._crit_edge unwind label %bb.e

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !18817
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18818
  %i.i = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18818 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.c) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.l unwind label %bb.k

bb.f:                                             ; preds = %bb.c
  store i64 %i.b, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  unreachable

bb.h:                                             ; preds = %.thread._crit_edge, %bb.f
  %i.n = phi ptr [ %i.i, %bb.f ], [ %.pre, %.thread._crit_edge ]
  %i.o = phi ptr [ %i.m, %bb.f ], [ %i.h, %.thread._crit_edge ]
  store i64 0, ptr %i.n, align 8
  store i64 1, ptr %i.o, align 8, !alias.scope !18817
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18819
  %i.p = call noundef dereferenceable_or_null(1024) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1024, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18819 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1024) #37
          to label %bb.g unwind label %bb.e

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1024, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.s, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypexEE6finishCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [184 x i8], align 8               ; 4 uses
  %i.j = alloca [136 x i8], align 8               ; 11 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [184 x i8], align 8               ; 16 uses
  %i.q = alloca [184 x i8], align 8               ; 5 uses
  %i.r = alloca [184 x i8], align 8               ; 5 uses
  %i.s = alloca [184 x i8], align 8               ; 5 uses
  %i.t = alloca [184 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 25, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.y, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  store i8 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 177
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ac = invoke noundef i64 @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB4_17NullBufferBuilder3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.p) #38
          to label %.body.thread unwind label %bb.ag

bb.c:                                             ; preds = %bb.a
  store i64 %i.ac, ptr %i.v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.q, ptr noundef nonnull align 8 dereferenceable(184) %i.p, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  store i64 0, ptr %i.ae, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  invoke void @_RNvXs7_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.d unwind label %bb.aj

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  invoke void @_RNvXs7_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.e unwind label %bb.ai

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ab)
          to label %bb.f unwind label %bb.ah

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.af = load i64, ptr %.sroa.517.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !18835, !noundef !4 ; 3 uses
  %i.ai = load i64, ptr %i.ae, align 8, !range !14, !alias.scope !18835, !noundef !4
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs3v6NujDNJcu_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.h unwind label %bb.af

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ak = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !18835, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ah
  store i64 %i.af, ptr %i.al, align 8
  %i.am = add i64 %i.ah, 1
  store i64 %i.am, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !18835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.i, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i64 184, i1 false)
  call void @_RNvMs3_NtCs3v6NujDNJcu_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18836)
  call void @llvm.experimental.noalias.scope.decl(metadata !18837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  store ptr %i.an, ptr %i.h, align 8, !noalias !18838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18838
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 25, i64 24, i1 false), !noalias !18838
  store ptr %i.f, ptr %i.g, align 8, !noalias !18838
  %i.ao = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.k unwind label %bb.j, !noalias !18836

bb.i:                                             ; preds = %bb.n, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.ap, %bb.j ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.f) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferxEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.p, !noalias !18836

bb.j:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  br i1 %i.ao, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
end_hunk_3
