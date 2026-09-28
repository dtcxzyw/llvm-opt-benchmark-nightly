Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMNtCsc2V0exE7CWf_11lance_arrow6memoryNtB2_17MemoryAccumulator12record_batch:bb.a
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6252
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h

_RNvMNtCsc2V0exE7CWf_11lance_arrow6memoryNtB2_17MemoryAccumulator12record_array.exit: ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 16 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.a), !noalias !6252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6250
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMNtCsc2V0exE7CWf_11lance_arrow6memoryNtB2_17MemoryAccumulator12record_array.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsc2V0exE7CWf_11lance_arrow6memoryNtB2_17MemoryAccumulator17record_array_data(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.010 = phi ptr [ %i.b, %.lr.ph ], [ %i.h, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noundef !10
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %i.k)
  br i1 %i.l, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !noundef !10 ; 2 uses
  %.not8 = icmp eq ptr %i.n, null
  br i1 %.not8, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %.sroa.0.010, align 8, !nonnull !10, !noundef !10
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !10
  %i.p = load i64, ptr %i.g, align 8, !noundef !10
  %i.q = add i64 %i.p, %.sroa.02.0
  store i64 %i.q, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.r = icmp eq ptr %i.h, %i.e
  br i1 %i.r, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !noundef !10
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %i.u)
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !10 ; 2 uses
  %.idx15 = mul nuw nsw i64 %i.z, 136
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx15
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %._crit_edge14, label %.lr.ph13

bb.g:                                             ; preds = %bb.e
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.04.0 = load i64, ptr %.sroa.04.0.in, align 8, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !10
  %i.ae = add i64 %i.ad, %.sroa.04.0
  store i64 %i.ae, ptr %i.ac, align 8
  br label %bb.f

.lr.ph13:                                         ; preds = %bb.f, %.lr.ph13
  %.sroa.05.011 = phi ptr [ %i.af, %.lr.ph13 ], [ %i.x, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.05.011, i64 136 ; 2 uses
  tail call fastcc void @_RNvMNtCsc2V0exE7CWf_11lance_arrow6memoryNtB2_17MemoryAccumulator17record_array_data(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.05.011)
  %i.ag = icmp eq ptr %i.af, %i.aa
  br i1 %i.ag, label %._crit_edge14, label %.lr.ph13

._crit_edge14:                                    ; preds = %.lr.ph13, %bb.f
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE11append_nullCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder21materialize_if_needed(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = load i64, ptr %i.a, align 8, !range !14, !alias.scope !6261, !noundef !10
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.h, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6262)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !6263, !noundef !10
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.e, 7
  %.not.i.i = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not.i.i to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.f, %i.h     ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6263, !noundef !10 ; 3 uses
  %i.k = icmp ugt i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw nsw i64 %.sroa.0.0.i.i, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6264)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !6265, !noundef !10 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.0.0.i.i, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i, !prof !11

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
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %.sroa.0.0.i.i.i)
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !6263
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #36, !noalias !6266
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i: ; preds = %bb.f, %bb.c
  %i.u = phi i64 [ %i.j, %bb.c ], [ %.pre.i.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !6263, !nonnull !10, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.l, i1 false)
  store i64 %.sroa.0.0.i.i, ptr %i.i, align 8, !alias.scope !6263
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #36
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit: ; preds = %bb.b, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !6263
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !10 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !6267, !noundef !10 ; 3 uses
  %i.ae = load i64, ptr %i.ab, align 8, !range !13, !alias.scope !6267, !noundef !10
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow.exit

bb.i:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs56ggtDZRYpd_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow.exit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !6267, !nonnull !10, !noundef !10
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  store i64 %i.z, ptr %i.ai, align 8
  %i.aj = add i64 %i.ad, 1
  store i64 %i.aj, ptr %i.ac, align 8, !alias.scope !6267
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE13with_capacityCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, i64 noundef range(i64 -1, 4611686018427387903) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add nsw i64 %1, 1                        ; 3 uses
  %i.c = shl i64 %i.b, 3                          ; 4 uses
  %i.d = icmp sgt i64 %1, 2305843009213693950
  %.not.i = icmp ugt i64 %i.c, 9223372036854775800
  %or.cond.i = select i1 %i.d, i1 true, i1 %.not.i, !prof !27
  br i1 %or.cond.i, label %bb.d, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs56ggtDZRYpd_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread._crit_edge unwind label %bb.e

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !6274
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !6275
  %i.i = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !6275 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.10.0.ph = phi i64 [ %i.c, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.10.0.ph) #36
  unreachable

bb.e:                                             ; preds = %.thread, %bb.m
  %i.k = phi ptr [ %i.g, %.thread ], [ %i.s, %bb.m ]
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.m = icmp eq i64 %.val, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc2V0exE7CWf_11lance_arrow.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val12 = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10
  %i.n = shl nuw i64 %.val, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #39
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc2V0exE7CWf_11lance_arrow.exit

bb.g:                                             ; preds = %bb.c
  store i64 %i.b, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.i

bb.h:                                             ; preds = %bb.m
  unreachable

bb.i:                                             ; preds = %.thread._crit_edge, %bb.g
  %i.q = phi ptr [ %i.i, %bb.g ], [ %.pre, %.thread._crit_edge ]
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.h, %.thread._crit_edge ]
  %i.s = phi ptr [ %i.o, %bb.g ], [ %i.g, %.thread._crit_edge ]
  store i64 0, ptr %i.q, align 8
  store i64 1, ptr %i.r, align 8, !alias.scope !6274
  %.not.i13 = icmp slt i64 %2, 0
  br i1 %.not.i13, label %bb.m, label %bb.j, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit16, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !6276
  %i.u = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6276 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = ptrtoint ptr %i.u to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit16

bb.m:                                             ; preds = %bb.i, %bb.k
  %.sroa.419.0.ph = phi i64 [ 1, %bb.k ], [ 0, %bb.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.419.0.ph, i64 %2) #36
          to label %bb.h unwind label %bb.e

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit16: ; preds = %bb.j, %bb.l
  %.sroa.1021.0 = phi i64 [ %i.w, %bb.l ], [ 1, %bb.j ]
  %i.x = inttoptr i64 %.sroa.1021.0 to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 %2, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.z, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE6finishCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [136 x i8], align 8               ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [56 x i8], align 8                ; 11 uses
  %i.s = alloca [56 x i8], align 8                ; 11 uses
  %i.t = alloca [184 x i8], align 8               ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [184 x i8], align 8               ; 16 uses
  %i.y = alloca [184 x i8], align 8               ; 5 uses
  %i.z = alloca [184 x i8], align 8               ; 5 uses
  %i.aa = alloca [184 x i8], align 8              ; 5 uses
  %i.ab = alloca [184 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 22, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 88 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.ag, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  store i8 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 177
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ak = invoke noundef i64 @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aj)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(184) %i.x) #37
          to label %.body32.thread unwind label %bb.az

bb.c:                                             ; preds = %bb.a
  store i64 %i.ak, ptr %i.ad, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.y, ptr noundef nonnull align 8 dereferenceable(184) %i.x, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %i.am, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.5.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx34, align 8 ; 2 uses
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx34, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6340)
  %i.an = icmp ult i64 %.sroa.5.0.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ult i64 %.sroa.0.0.copyload, 1152921504606846976
  %i.ap = shl nuw nsw i64 %.sroa.0.0.copyload, 3
  %i.aq = shl nuw nsw i64 %.sroa.5.0.copyload, 3  ; 2 uses
  tail call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6341
  store i64 1, ptr %i.s, align 8, !noalias !6341
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.ar, align 8, !noalias !6341
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.4.0.copyload, ptr %i.as, align 8, !noalias !6341
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6341
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6341
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !6341
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %i.ap, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !6341
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !6342
  %i.at = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !6342 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.d, label %bb.g, !prof !11

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i unwind label %bb.e, !noalias !6341

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s) #37
          to label %bb.bc unwind label %bb.f, !noalias !6341

bb.f:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !6341
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false), !noalias !6341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6341
  store ptr %i.at, ptr %i.w, align 8, !alias.scope !6340, !noalias !6343
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.ax, align 8, !alias.scope !6340, !noalias !6343
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.aq, ptr %i.ay, align 8, !alias.scope !6340, !noalias !6343
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.sroa.035.0.copyload = load i64, ptr %1, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.436.0.copyload = load ptr, ptr %.sroa.436.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.537.0.copyload = load i64, ptr %.sroa.537.0..sroa_idx, align 8 ; 3 uses
  store i64 0, ptr %1, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6344)
  %i.az = icmp sgt i64 %.sroa.537.0.copyload, -1
  call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6345
  store i64 1, ptr %i.r, align 8, !noalias !6345
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.ba, align 8, !noalias !6345
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i128
!6068 = !{!5952}
!6069 = !{!5953}
!6070 = !{!5955}
!6071 = !{!5955, !5956}
!6072 = !{!5956}
!6073 = !{!5960, !5958, !5955, !5956}
!6074 = !{!5962}
!6075 = !{!5964}
!6076 = !{!5964, !5962}
!6077 = !{!5966}
!6078 = !{!5967}
!6079 = !{!5969}
!6080 = !{!5971}
!6081 = !{!5971, !5972}
!6082 = !{!5972}
!6083 = !{!5976, !5974, !5971, !5972}
!6084 = !{!5978}
!6085 = !{!5979}
!6086 = !{!5981}
!6087 = !{!5981, !5982}
!6088 = !{!5982}
!6089 = !{!5986, !5984, !5981, !5982}
!6090 = !{!5988}
!6091 = !{!5998, !5996, !5994, !5992, !5990, !5988}
!6092 = distinct !{!6092, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow"}
!6093 = distinct !{!6093, !6092, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6094 = distinct !{!6094, !6092, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 1"}
!6095 = distinct !{!6095, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow"}
!6096 = distinct !{!6096, !6095, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6097 = distinct !{!6097, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6098 = distinct !{!6098, !6097, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6099 = !{!6093}
!6100 = !{!6093, !6094}
!6101 = !{!6094}
!6102 = !{!6098, !6096, !6093, !6094}
!6103 = distinct !{!6103, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow"}
!6104 = distinct !{!6104, !6103, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6105 = distinct !{!6105, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE15value_uncheckedCsc2V0exE7CWf_11lance_arrow"}
!6106 = distinct !{!6106, !6105, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE15value_uncheckedCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6107 = !{!6104}
!6108 = !{!6106}
!6109 = !{!6106, !6104}
!6110 = distinct !{!6110, !"_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow"}
!6111 = distinct !{!6111, !6110, !"_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6112 = distinct !{!6112, !"_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow"}
!6113 = distinct !{!6113, !6112, !"_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6114 = distinct !{!6114, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow"}
!6115 = distinct !{!6115, !6114, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6116 = distinct !{!6116, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE15value_uncheckedCsc2V0exE7CWf_11lance_arrow"}
!6117 = distinct !{!6117, !6116, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE15value_uncheckedCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6118 = distinct !{!6118, !"_RNvNtCsc2V0exE7CWf_11lance_arrow4json11decode_json"}
!6119 = distinct !{!6119, !6118, !"_RNvNtCsc2V0exE7CWf_11lance_arrow4json11decode_json: argument 1"}
!6120 = distinct !{!6120, !6118, !"_RNvNtCsc2V0exE7CWf_11lance_arrow4json11decode_json: argument 0"}
!6121 = distinct !{!6121, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow"}
!6122 = distinct !{!6122, !6121, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6123 = distinct !{!6123, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB17_5types17GenericStringTypelEEEE3newCsc2V0exE7CWf_11lance_arrow"}
!6124 = distinct !{!6124, !6123, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB17_5types17GenericStringTypelEEEE3newCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6125 = distinct !{!6125, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericStringTypelEEECsc2V0exE7CWf_11lance_arrow"}
!6126 = distinct !{!6126, !6125, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericStringTypelEEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6127 = distinct !{!6127, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc2V0exE7CWf_11lance_arrow"}
!6128 = distinct !{!6128, !6127, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6129 = distinct !{!6129, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderEECsc2V0exE7CWf_11lance_arrow"}
!6130 = distinct !{!6130, !6129, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6131 = distinct !{!6131, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow"}
!6132 = distinct !{!6132, !6131, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6133 = !{!6113, !6111}
!6134 = !{!6111}
!6135 = !{!6117, !6115}
!6136 = !{!6120, !6119}
!6137 = !{!6122}
!6138 = !{!6124}
!6139 = !{!6126}
!6140 = !{!6130, !6128, !6126}
!6141 = !{!6132}
!6142 = distinct !{!6142, !"_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow"}
!6143 = distinct !{!6143, !6142, !"_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6144 = distinct !{!6144, !"_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow"}
!6145 = distinct !{!6145, !6144, !"_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6146 = distinct !{!6146, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow"}
!6147 = distinct !{!6147, !6146, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6148 = distinct !{!6148, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE15value_uncheckedCsc2V0exE7CWf_11lance_arrow"}
!6149 = distinct !{!6149, !6148, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE15value_uncheckedCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6150 = distinct !{!6150, !"_RNvNtCsc2V0exE7CWf_11lance_arrow4json11decode_json"}
!6151 = distinct !{!6151, !6150, !"_RNvNtCsc2V0exE7CWf_11lance_arrow4json11decode_json: argument 1"}
!6152 = distinct !{!6152, !6150, !"_RNvNtCsc2V0exE7CWf_11lance_arrow4json11decode_json: argument 0"}
!6153 = distinct !{!6153, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow"}
!6154 = distinct !{!6154, !6153, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6155 = !{!6143}
!6156 = !{!6145, !6143}
!6157 = !{!6147}
!6158 = !{!6149}
!6159 = !{!6149, !6147}
!6160 = !{!6152, !6151}
!6161 = !{!6154}
!6162 = distinct !{!6162, !"_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow"}
!6163 = distinct !{!6163, !6162, !"_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6164 = distinct !{!6164, !"_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow"}
!6165 = distinct !{!6165, !6164, !"_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6166 = !{!6163}
!6167 = !{!6165, !6163}
!6168 = distinct !{!6168, !"_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow"}
!6169 = distinct !{!6169, !6168, !"_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6170 = distinct !{!6170, !"_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow"}
!6171 = distinct !{!6171, !6170, !"_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array5nullsCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6172 = distinct !{!6172, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow"}
!6173 = distinct !{!6173, !6172, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6174 = distinct !{!6174, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE15value_uncheckedCsc2V0exE7CWf_11lance_arrow"}
!6175 = distinct !{!6175, !6174, !"_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE15value_uncheckedCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6176 = distinct !{!6176, !"_RNvNtCsc2V0exE7CWf_11lance_arrow4json13get_json_path"}
!6177 = distinct !{!6177, !6176, !"_RNvNtCsc2V0exE7CWf_11lance_arrow4json13get_json_path: argument 2"}
!6178 = distinct !{!6178, !6176, !"_RNvNtCsc2V0exE7CWf_11lance_arrow4json13get_json_path: argument 1"}
!6179 = distinct !{!6179, !6176, !"_RNvNtCsc2V0exE7CWf_11lance_arrow4json13get_json_path: argument 0"}
!6180 = distinct !{!6180, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCskKR1pP4skmg_5jsonb5error5ErrorE3newCsc2V0exE7CWf_11lance_arrow"}
!6181 = distinct !{!6181, !6180, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCskKR1pP4skmg_5jsonb5error5ErrorE3newCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6182 = distinct !{!6182, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCskKR1pP4skmg_5jsonb5error5ErrorE3newCsc2V0exE7CWf_11lance_arrow"}
!6183 = distinct !{!6183, !6182, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCskKR1pP4skmg_5jsonb5error5ErrorE3newCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6184 = distinct !{!6184, !"_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbNtB5_12SpecToString14spec_to_stringCsc2V0exE7CWf_11lance_arrow"}
!6185 = distinct !{!6185, !6184, !"_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbNtB5_12SpecToString14spec_to_stringCsc2V0exE7CWf_11lance_arrow: argument 1"}
!6186 = distinct !{!6186, !6184, !"_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbNtB5_12SpecToString14spec_to_stringCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6187 = distinct !{!6187, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc2V0exE7CWf_11lance_arrow"}
!6188 = distinct !{!6188, !6187, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6189 = distinct !{!6189, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc2V0exE7CWf_11lance_arrow"}
!6190 = distinct !{!6190, !6189, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6191 = distinct !{!6191, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow"}
!6192 = distinct !{!6192, !6191, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6193 = distinct !{!6193, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path8JsonPathECsc2V0exE7CWf_11lance_arrow"}
!6194 = distinct !{!6194, !6193, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path8JsonPathECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6195 = distinct !{!6195, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathEECsc2V0exE7CWf_11lance_arrow"}
!6196 = distinct !{!6196, !6195, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6197 = distinct !{!6197, !"_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6198 = distinct !{!6198, !6197, !"_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6199 = distinct !{!6199, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathECsc2V0exE7CWf_11lance_arrow"}
!6200 = distinct !{!6200, !6199, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6201 = distinct !{!6201, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path8JsonPathECsc2V0exE7CWf_11lance_arrow"}
!6202 = distinct !{!6202, !6201, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path8JsonPathECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6203 = distinct !{!6203, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathEECsc2V0exE7CWf_11lance_arrow"}
!6204 = distinct !{!6204, !6203, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6205 = distinct !{!6205, !"_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6206 = distinct !{!6206, !6205, !"_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6207 = distinct !{!6207, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathECsc2V0exE7CWf_11lance_arrow"}
!6208 = distinct !{!6208, !6207, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6209 = distinct !{!6209, !"_RNCNvMNtCsc2V0exE7CWf_11lance_arrow4jsonNtB4_9JsonArray9json_path0B6_"}
!6210 = distinct !{!6210, !6209, !"_RNCNvMNtCsc2V0exE7CWf_11lance_arrow4jsonNtB4_9JsonArray9json_path0B6_: argument 1"}
!6211 = distinct !{!6211, !6209, !"_RNCNvMNtCsc2V0exE7CWf_11lance_arrow4jsonNtB4_9JsonArray9json_path0B6_: argument 0"}
!6212 = !{!6169}
!6213 = !{!6171, !6169}
!6214 = !{!6173}
!6215 = !{!6175}
!6216 = !{!6175, !6173}
!6217 = !{!6179, !6178, !6177}
!6218 = !{!6179, !6178}
!6219 = !{i64 -1, i64 -9223372036854775771}
!6220 = !{!6181, !6179}
!6221 = !{!6179}
!6222 = !{!6183, !6179}
!6223 = !{!6178, !6177}
!6224 = !{!6186, !6185, !6179, !6178, !6177}
!6225 = !{!6188}
!6226 = !{!6190}
!6227 = !{!6188, !6179}
!6228 = !{!6190, !6188, !6179}
!6229 = !{!6186, !6179}
!6230 = !{!6192}
!6231 = !{!6192, !6186, !6179}
!6232 = !{!6194}
!6233 = !{!6196}
!6234 = !{!6198, !6196, !6194}
!6235 = !{!6196, !6194, !6179}
!6236 = !{!6200, !6196, !6194, !6179}
!6237 = !{!6196, !6194}
!6238 = !{!6202}
!6239 = !{!6204}
!6240 = !{!6206, !6204, !6202}
!6241 = !{!6204, !6202, !6179}
!6242 = !{!6208, !6204, !6202, !6179}
!6243 = !{!6204, !6202}
!6244 = !{!6211, !6210}
!6245 = !{!6211}
!6246 = !{!6210}
!6247 = distinct !{!6247, !"_RNvMNtCsc2V0exE7CWf_11lance_arrow6memoryNtB2_17MemoryAccumulator12record_array"}
!6248 = distinct !{!6248, !6247, !"_RNvMNtCsc2V0exE7CWf_11lance_arrow6memoryNtB2_17MemoryAccumulator12record_array: argument 1"}
!6249 = distinct !{!6249, !6247, !"_RNvMNtCsc2V0exE7CWf_11lance_arrow6memoryNtB2_17MemoryAccumulator12record_array: argument 0"}
!6250 = !{!6249, !6248}
!6251 = !{ptr @_RNvMNtCsc2V0exE7CWf_11lance_arrow6memoryNtB2_17MemoryAccumulator12record_array}
!6252 = !{!6248}
!6253 = distinct !{!6253, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append"}
!6254 = distinct !{!6254, !6253, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append: argument 0"}
!6255 = distinct !{!6255, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance"}
!6256 = distinct !{!6256, !6255, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance: argument 0"}
!6257 = distinct !{!6257, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve"}
!6258 = distinct !{!6258, !6257, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve: argument 0"}
!6259 = distinct !{!6259, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow"}
!6260 = distinct !{!6260, !6259, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6261 = !{!6254}
!6262 = !{!6256}
!6263 = !{!6256, !6254}
!6264 = !{!6258}
!6265 = !{!6258, !6256, !6254}
!6266 = !{!6258, !6256}
!6267 = !{!6260}
!6268 = distinct !{!6268, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow"}
!6269 = distinct !{!6269, !6268, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6270 = distinct !{!6270, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow"}
!6271 = distinct !{!6271, !6270, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6272 = distinct !{!6272, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow"}
!6273 = distinct !{!6273, !6272, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6274 = !{!6269}
!6275 = !{!6271}
!6276 = !{!6273}
!6277 = distinct !{!6277, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4fromCsc2V0exE7CWf_11lance_arrow"}
!6278 = distinct !{!6278, !6277, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4fromCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6279 = distinct !{!6279, !6277, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4fromCsc2V0exE7CWf_11lance_arrow: argument 1"}
!6280 = distinct !{!6280, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow"}
!6281 = distinct !{!6281, !6280, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6282 = distinct !{!6282, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4fromCsc2V0exE7CWf_11lance_arrow"}
!6283 = distinct !{!6283, !6282, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4fromCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6284 = distinct !{!6284, !6282, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4fromCsc2V0exE7CWf_11lance_arrow: argument 1"}
!6285 = distinct !{!6285, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow"}
!6286 = distinct !{!6286, !6285, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6287 = distinct !{!6287, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow"}
!6288 = distinct !{!6288, !6287, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6289 = distinct !{!6289, !"_RNvXs3_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataE4fromCsc2V0exE7CWf_11lance_arrow"}
!6290 = distinct !{!6290, !6289, !"_RNvXs3_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataE4fromCsc2V0exE7CWf_11lance_arrow: argument 1"}
!6291 = distinct !{!6291, !6289, !"_RNvXs3_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataE4fromCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6292 = distinct !{!6292, !"_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsc2V0exE7CWf_11lance_arrow"}
!6293 = distinct !{!6293, !6292, !"_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsc2V0exE7CWf_11lance_arrow: argument 1"}
!6294 = distinct !{!6294, !6292, !"_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6295 = distinct !{!6295, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferxE9new_emptyCsc2V0exE7CWf_11lance_arrow"}
!6296 = distinct !{!6296, !6295, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferxE9new_emptyCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6297 = distinct !{!6297, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow"}
!6298 = distinct !{!6298, !6297, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6299 = distinct !{!6299, !"_RNvXs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_9immutable6BufferE4fromCsc2V0exE7CWf_11lance_arrow"}
!6300 = distinct !{!6300, !6299, !"_RNvXs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_9immutable6BufferE4fromCsc2V0exE7CWf_11lance_arrow: argument 1"}
!6301 = distinct !{!6301, !6299, !"_RNvXs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_9immutable6BufferE4fromCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6302 = distinct !{!6302, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow"}
!6303 = distinct !{!6303, !6302, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6304 = distinct !{!6304, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow"}
!6305 = distinct !{!6305, !6304, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6306 = distinct !{!6306, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6307 = distinct !{!6307, !6306, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6308 = distinct !{!6308, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow"}
!6309 = distinct !{!6309, !6308, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6310 = distinct !{!6310, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow"}
!6311 = distinct !{!6311, !6310, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6312 = distinct !{!6312, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6313 = distinct !{!6313, !6312, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6314 = distinct !{!6314, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow"}
!6315 = distinct !{!6315, !6314, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6316 = distinct !{!6316, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow"}
!6317 = distinct !{!6317, !6316, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6318 = distinct !{!6318, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6319 = distinct !{!6319, !6318, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6320 = distinct !{!6320, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow"}
!6321 = distinct !{!6321, !6320, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6322 = distinct !{!6322, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow"}
!6323 = distinct !{!6323, !6322, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6324 = distinct !{!6324, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6325 = distinct !{!6325, !6324, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6326 = distinct !{!6326, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow"}
!6327 = distinct !{!6327, !6326, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6328 = distinct !{!6328, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow"}
!6329 = distinct !{!6329, !6328, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6330 = distinct !{!6330, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsc2V0exE7CWf_11lance_arrow"}
!6331 = distinct !{!6331, !6330, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6332 = distinct !{!6332, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferECsc2V0exE7CWf_11lance_arrow"}
!6333 = distinct !{!6333, !6332, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6334 = distinct !{!6334, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow"}
!6335 = distinct !{!6335, !6334, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6336 = distinct !{!6336, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow"}
!6337 = distinct !{!6337, !6336, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6338 = distinct !{!6338, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6339 = distinct !{!6339, !6338, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6340 = !{!6278}
!6341 = !{!6278, !6279}
!6342 = !{!6281, !6278, !6279}
!6343 = !{!6279}
!6344 = !{!6283}
!6345 = !{!6283, !6284}
!6346 = !{!6286, !6283, !6284}
!6347 = !{!6284}
!6348 = !{!6288}
!6349 = !{!6291, !6290}
!6350 = !{!6293}
!6351 = !{!6294, !6291, !6290}
!6352 = !{!6294, !6293, !6291, !6290}
!6353 = !{!6296, !6294, !6293, !6291, !6290}
!6354 = !{!6298, !6296, !6294, !6293, !6291, !6290}
!6355 = !{!6307, !6305, !6303, !6301, !6300, !6296, !6294, !6293, !6291, !6290}
!6356 = !{!6301, !6296, !6294, !6293, !6291, !6290}
!6357 = !{!6301, !6300, !6296, !6294, !6293, !6291, !6290}
!6358 = !{!6293, !6291, !6290}
!6359 = !{!6309}
!6360 = !{!6311}
!6361 = !{!6313}
!6362 = !{!6313, !6311, !6309, !6293}
!6363 = !{!6313, !6311, !6309, !6294, !6293, !6291, !6290}
!6364 = !{!6315}
!6365 = !{!6317}
!6366 = !{!6319}
!6367 = !{!6319, !6317, !6315, !6293}
!6368 = !{!6319, !6317, !6315, !6294, !6293, !6291, !6290}
!6369 = !{!6321}
!6370 = !{!6323}
!6371 = !{!6325}
!6372 = !{!6325, !6323, !6321}
!6373 = !{!6325, !6323, !6321, !6291, !6290}
!6374 = !{!6290}
!6375 = !{!6327, !6291, !6290}
!6376 = !{!6329}
!6377 = !{!6339, !6337, !6335, !6333, !6331, !6329, !6291, !6290}
!6378 = distinct !{!6378, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append"}
!6379 = distinct !{!6379, !6378, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append: argument 0"}
!6380 = distinct !{!6380, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance"}
!6381 = distinct !{!6381, !6380, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance: argument 0"}
!6382 = distinct !{!6382, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve"}
!6383 = distinct !{!6383, !6382, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve: argument 0"}
!6384 = distinct !{!6384, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc2V0exE7CWf_11lance_arrow"}
!6385 = distinct !{!6385, !6384, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6386 = !{!6379}
!6387 = !{!6381}
!6388 = !{!6381, !6379}
!6389 = !{!6383}
!6390 = !{!6383, !6381, !6379}
!6391 = !{!6383, !6381}
!6392 = !{!6385}
!6393 = distinct !{!6393, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow"}
!6394 = distinct !{!6394, !6393, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6395 = distinct !{!6395, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow"}
!6396 = distinct !{!6396, !6395, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6397 = !{!6394}
!6398 = !{!6396}
!6399 = distinct !{!6399, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCsc2V0exE7CWf_11lance_arrow"}
!6400 = distinct !{!6400, !6399, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6401 = distinct !{!6401, !6399, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCsc2V0exE7CWf_11lance_arrow: argument 1"}
!6402 = distinct !{!6402, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow"}
!6403 = distinct !{!6403, !6402, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6404 = distinct !{!6404, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4fromCsc2V0exE7CWf_11lance_arrow"}
!6405 = distinct !{!6405, !6404, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4fromCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6406 = distinct !{!6406, !6404, !"_RNvXs7_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4fromCsc2V0exE7CWf_11lance_arrow: argument 1"}
!6407 = distinct !{!6407, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow"}
!6408 = distinct !{!6408, !6407, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6409 = distinct !{!6409, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc2V0exE7CWf_11lance_arrow"}
!6410 = distinct !{!6410, !6409, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6411 = distinct !{!6411, !"_RNvXs3_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataE4fromCsc2V0exE7CWf_11lance_arrow"}
!6412 = distinct !{!6412, !6411, !"_RNvXs3_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataE4fromCsc2V0exE7CWf_11lance_arrow: argument 1"}
!6413 = distinct !{!6413, !6411, !"_RNvXs3_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataE4fromCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6414 = distinct !{!6414, !"_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsc2V0exE7CWf_11lance_arrow"}
!6415 = distinct !{!6415, !6414, !"_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsc2V0exE7CWf_11lance_arrow: argument 1"}
!6416 = distinct !{!6416, !6414, !"_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6417 = distinct !{!6417, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE9new_emptyCsc2V0exE7CWf_11lance_arrow"}
!6418 = distinct !{!6418, !6417, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE9new_emptyCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6419 = distinct !{!6419, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow"}
!6420 = distinct !{!6420, !6419, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6421 = distinct !{!6421, !"_RNvXs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_9immutable6BufferE4fromCsc2V0exE7CWf_11lance_arrow"}
!6422 = distinct !{!6422, !6421, !"_RNvXs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_9immutable6BufferE4fromCsc2V0exE7CWf_11lance_arrow: argument 1"}
!6423 = distinct !{!6423, !6421, !"_RNvXs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_9immutable6BufferE4fromCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6424 = distinct !{!6424, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow"}
!6425 = distinct !{!6425, !6424, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6426 = distinct !{!6426, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow"}
!6427 = distinct !{!6427, !6426, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6428 = distinct !{!6428, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6429 = distinct !{!6429, !6428, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6430 = distinct !{!6430, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow"}
!6431 = distinct !{!6431, !6430, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6432 = distinct !{!6432, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow"}
!6433 = distinct !{!6433, !6432, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6434 = distinct !{!6434, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6435 = distinct !{!6435, !6434, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6436 = distinct !{!6436, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow"}
!6437 = distinct !{!6437, !6436, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6438 = distinct !{!6438, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow"}
!6439 = distinct !{!6439, !6438, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6440 = distinct !{!6440, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6441 = distinct !{!6441, !6440, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6442 = distinct !{!6442, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow"}
!6443 = distinct !{!6443, !6442, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6444 = distinct !{!6444, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow"}
!6445 = distinct !{!6445, !6444, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6446 = distinct !{!6446, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6447 = distinct !{!6447, !6446, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6448 = distinct !{!6448, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow"}
!6449 = distinct !{!6449, !6448, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6450 = distinct !{!6450, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow"}
!6451 = distinct !{!6451, !6450, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6452 = distinct !{!6452, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsc2V0exE7CWf_11lance_arrow"}
!6453 = distinct !{!6453, !6452, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6454 = distinct !{!6454, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferECsc2V0exE7CWf_11lance_arrow"}
!6455 = distinct !{!6455, !6454, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6456 = distinct !{!6456, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow"}
!6457 = distinct !{!6457, !6456, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6458 = distinct !{!6458, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow"}
!6459 = distinct !{!6459, !6458, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow: argument 0"}
!6460 = distinct !{!6460, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow"}
!6461 = distinct !{!6461, !6460, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow: argument 0"}
!6462 = !{!6400}
!6463 = !{!6400, !6401}
!6464 = !{!6403, !6400, !6401}
!6465 = !{!6401}
!6466 = !{!6405}
!6467 = !{!6405, !6406}
!6468 = !{!6408, !6405, !6406}
!6469 = !{!6406}
!6470 = !{!6410}
!6471 = !{!6413, !6412}
end_hunk_1
