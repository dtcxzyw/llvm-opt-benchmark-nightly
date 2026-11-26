Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.008?download=true
inline.NumInlined: 4952
inline.NumDeleted: 2471
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsg2eWlRba8yQ_16rustls_pki_types11TrustAnchorENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9901
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9921
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !9921
  %i.h = load i64, ptr %i.a, align 8, !range !30, !noalias !9921, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !31, !noalias !9921, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !9921
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #28, !noalias !9921
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !9921, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9921
  store i64 %i.k, ptr %i.c, align 8, !noalias !9921
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !9921
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9921
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !9922

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !9922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9921
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !9922
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !9921
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #31
          to label %bb.g unwind label %bb.e, !noalias !9922

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !9921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !9923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9921
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !26, !noundef !26
  %i.e = load i64, ptr %i.b, align 8, !noundef !26 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9927)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9928
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !9928
  %i.f = load i64, ptr %i.a, align 8, !range !30, !noalias !9928, !noundef !26
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !31, !noalias !9928, !noundef !26 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !9928
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #28, !noalias !9928
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !9928, !nonnull !26, !noundef !26 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9928
  store i64 %i.i, ptr %0, align 8, !alias.scope !9927
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !9927
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !9927
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i
  %i.p = mul nuw nsw i64 %i.e, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !9927
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !9927
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.415.i = alloca i64, align 8              ; 5 uses
  %.sroa.6.i = alloca i64, align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9935)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9936
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !9936
  %i.g = load i64, ptr %i.a, align 8, !range !30, !noalias !9936, !noundef !26
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !31, !noalias !9936, !noundef !26 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !9936
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #28, !noalias !9936
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !9936, !nonnull !26, !noundef !26 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9936
  store i64 %i.j, ptr %i.b, align 8, !noalias !9936
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !9936
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types8ShardKeyNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i, %bb.h
  %.sroa.012.037.i = phi ptr [ %i.u, %bb.h ], [ %i.e, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i ] ; 6 uses
  %.sroa.7.035.i = phi i64 [ %i.v, %bb.h ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i ] ; 3 uses
  %.sroa.10.034.i = phi i64 [ %i.s, %bb.h ], [ %i.j, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i ]
  %i.s = add i64 %.sroa.10.034.i, -1              ; 2 uses
  %i.t = icmp eq ptr %.sroa.012.037.i, %i.q
  br i1 %i.t, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types8ShardKeyNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i, i64 24
  %i.v = add nuw nsw i64 %.sroa.7.035.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9938)
  %i.w = load i64, ptr %.sroa.012.037.i, align 8, !range !30, !alias.scope !9939, !noundef !26
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i, i64 8 ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !9939, !noundef !26
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i, i64 23
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !9939, !noundef !26
  %.not.i.i = icmp slt i8 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i, i64 16
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !9939 ; 4 uses
  %.val21.i.i = load i64, ptr %i.ac, align 8, !alias.scope !9939 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !9940
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i, !prof !27

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsgGgPqgSfnMH_7storage(ptr noundef nonnull %.val.i.i, i64 noundef %.val21.i.i) #28
          to label %.noexc.i unwind label %bb.j, !noalias !9940

.noexc.i:                                         ; preds = %bb.g
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %bb.e, %bb.f
  %i.ag = ptrtoint ptr %.val.i.i to i64
  store i64 %i.ag, ptr %.sroa.415.i, align 8, !alias.scope !9937, !noalias !9936
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i, %bb.d
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i ], [ %.sroa.415.i, %bb.d ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i ], [ %i.z, %bb.d ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i ], [ 1, %bb.d ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !9937, !noalias !9936
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.7.035.i ; 3 uses
  %.sroa.415.i.0..sroa.415.i.0..sroa.415.i.0..sroa.415.0..sroa.415.0..sroa.415.0.copyload.i = load i64, ptr %.sroa.415.i, align 8, !noalias !9936
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !9936
  store i64 %storemerge.i.i, ptr %i.ah, align 8, !noalias !9936
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.415.i.0..sroa.415.i.0..sroa.415.i.0..sroa.415.0..sroa.415.0..sroa.415.0.copyload.i, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !9936
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !9936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.ai = icmp eq i64 %i.s, 0
  br i1 %i.ai, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types8ShardKeyNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit, label %.lr.ph.i

bb.i:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !9936
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.035.i, ptr %i.p, align 8, !noalias !9936
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #31
          to label %bb.k unwind label %bb.i, !noalias !9936

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ak

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types8ShardKeyNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit: ; preds = %.lr.ph.i, %bb.h, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !9936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !9935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9936
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [104 x i8], align 8               ; 8 uses
  %i.d = alloca [48 x i8], align 16               ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 16               ; 5 uses
  %i.g = alloca [24 x i8], align 16               ; 6 uses
  %i.h = alloca [24 x i8], align 16               ; 5 uses
  %i.i = alloca [24 x i8], align 16               ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i35.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.53.i.i.i = alloca [56 x i8], align 8     ; 5 uses
  %.sroa.5.i.i.i = alloca [56 x i8], align 8      ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.513.i.i = alloca [56 x i8], align 8      ; 4 uses
  %.sroa.59.sroa.0.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.56.i.i.sroa.4 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.5.i.i = alloca [56 x i8], align 8        ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 6 uses
  %i.u = alloca [64 x i8], align 16               ; 8 uses
  %i.v = alloca [24 x i8], align 16               ; 5 uses
  %i.w = alloca [104 x i8], align 16              ; 10 uses
  %.sroa.22.sroa.11.sroa.9 = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.22.sroa.13 = alloca [56 x i8], align 8   ; 4 uses
  %.sroa.22.sroa.15 = alloca [56 x i8], align 8   ; 3 uses
  %.sroa.22.sroa.16 = alloca [72 x i8], align 8   ; 2 uses
  %.sroa.22.sroa.17 = alloca [48 x i8], align 8   ; 2 uses
  %.sroa.22.sroa.19 = alloca [16 x i8], align 8   ; 2 uses
  %.sroa.22.sroa.21 = alloca [16 x i8], align 8   ; 2 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.ab = load i64, ptr %i.y, align 8, !noundef !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9993
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, 24530244778869085) %i.ab, i1 noundef zeroext false, i64 noundef 8, i64 noundef 376), !noalias !9993
  %i.ac = load i64, ptr %i.e, align 8, !range !30, !noalias !9993, !noundef !26
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !31, !noalias !9993, !noundef !26 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !9993
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #28, !noalias !9993
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit: ; preds = %bb.a
  %i.ai = load ptr, ptr %i.ag, align 8, !noalias !9993, !nonnull !26, !noundef !26 ; 2 uses
  %i.aj = icmp ule i64 %i.ab, %i.af
  tail call void @llvm.assume(i1 %i.aj), !noalias !9993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9993
  store i64 %i.af, ptr %i.x, align 8, !noalias !9993
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ai, ptr %i.ak, align 8, !noalias !9993
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8, !noalias !9993
  %i.am = getelementptr inbounds nuw [376 x i8], ptr %i.aa, i64 %i.ab
  %i.an = icmp eq i64 %i.af, 0
  br i1 %i.an, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types9ConditionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgGgPqgSfnMH_7storage.exit
  %.sroa.22.8..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.22.sroa.0.sroa.10.0..sroa.22.8..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.22.sroa.11.0..sroa.22.8..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.22.sroa.11.sroa.9.0..sroa.22.sroa.11.0..sroa.22.8..sroa_idx36.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.22.sroa.12.0..sroa.22.8..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %.sroa.22.sroa.13.0..sroa.22.8..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.8142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.11144.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.12145.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.13146.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.14147.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.584.sroa.4.0..sroa.584.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.9124.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.9136.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i36.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %.sroa.013.0226 = phi ptr [ %i.aa, %.lr.ph ], [ %i.bb, %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ] ; 42 uses
  %.sroa.7.0221 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.0220 = phi i64 [ %i.af, %.lr.ph ], [ %i.az, %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ]
  %i.az = add i64 %.sroa.10.0220, -1              ; 2 uses
  %i.ba = icmp eq ptr %.sroa.013.0226, %i.am
  br i1 %i.ba, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types9ConditionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgGgPqgSfnMH_7storage.exit, label %bb.d

.loopexit:                                        ; preds = %bb.e, %bb.as, %bb.av, %bb.ay, %bb.az, %bb.bg, %bb.bb
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.0226, i64 376
  %i.bc = add nuw nsw i64 %.sroa.7.0221, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9994)
  %i.bd = load i64, ptr %.sroa.013.0226, align 8, !range !69, !alias.scope !9994, !noalias !9995, !noundef !26
  %i.be = tail call i64 @llvm.usub.sat.i64(i64 %i.bd, i64 1)
  switch i64 %i.be, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.as
    i64 2, label %bb.av
    i64 3, label %bb.ay
    i64 4, label %bb.az
    i64 5, label %bb.ba
    i64 6, label %bb.bb
    i64 7, label %bb.bg
    i64 8, label %bb.bh
  ]

default.unreachable:                              ; preds = %bb.h, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9996), !noalias !9995
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i35.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9997
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.0226, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9998
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bf)
end_hunk_0
