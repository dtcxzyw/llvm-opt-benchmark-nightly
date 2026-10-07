Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_reqwest_client-732c24861560a46e.lance_namespace_reqwest_client.13bd7863b837ad8b-cgu.0?download=true
inline.NumInlined: 526
inline.NumDeleted: 236
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client:bb.a
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !678
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !678
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !noalias !678
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !678, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !678, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !678
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !678, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !678
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !678
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !678
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskpEw9nXJLNc_10serde_core7private7content7ContentBN_EE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !681
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !681
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 64), !noalias !681
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !681, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !681, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !681
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !681, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !681
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !681
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !681
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE4growCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !3 ; 4 uses
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.b = load i64, ptr %0, align 8, !range !10, !alias.scope !684, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !684, !noundef !3 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !684, !noundef !3 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE24handle_capacity_increaseCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !684, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.l
  %i.q = shl i64 %i.h, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !684
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !684
  br label %_RNvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE24handle_capacity_increaseCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !684, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.a
  %i.u = shl i64 %i.i, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !684
  br label %_RNvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE24handle_capacity_increaseCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

_RNvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE24handle_capacity_increaseCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 257) %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !8
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #25
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.k = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #25
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge14 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 48, 121) %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val16 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val17 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = add i64 %.val17, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val16, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = trunc i64 %.sroa.05.0.i.i.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.i

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val16, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val16, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !3
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg12 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i = and i64 %.val15, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !687
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !6

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i19 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val15                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !3
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.g:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i19:                                       ; preds = %bb.f, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i19 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i19 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val15           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !687
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !7

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i18 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val15
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg13 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg14 = mul i64 %2, %.neg13
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !3
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val15
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val15, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !3
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val17
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

end_hunk_0
begin_hunk_1_@_RNvNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client4apis17parse_deep_object:bb.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %bb.aa, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i
  %i.el = icmp eq i64 %.sroa.0154.0.copyload, 0
  br i1 %i.el, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5155.0.copyload, i64 noundef %.sroa.0154.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !756
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114: ; preds = %bb.ab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.em = icmp eq ptr %i.dp, %i.cz
  br i1 %i.em, label %.loopexit, label %.lr.ph

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit102: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.0149.0.copyload = load i64, ptr %i.p, align 8 ; 4 uses
  %.sroa.5150.0.copyload = load ptr, ptr %.sroa.5150.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client4apis17parse_deep_object(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5150.0.copyload, i64 noundef %.sroa.8.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ct)
          to label %bb.af unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ah, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.ae ], [ %i.fb, %bb.ah ] ; 2 uses
  %i.en = icmp eq i64 %.sroa.0149.0.copyload, 0
  br i1 %i.en, label %.body, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5150.0.copyload, i64 noundef %.sroa.0149.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !757
  br label %.body

bb.ae:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit102
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.af:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit102
  %i.ep = load ptr, ptr %i.ai, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.eq = load i64, ptr %i.aj, align 8, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.er = load i64, ptr %i.s, align 8, !range !10, !alias.scope !759, !noundef !3
  %i.es = sub i64 %i.er, %i.av
  %i.et = icmp ugt i64 %i.eq, %i.es
  br i1 %i.et, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i120, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118, !prof !4

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i120: ; preds = %bb.af
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.av, i64 noundef %i.eq, i64 noundef 8, i64 noundef 48)
          to label %.noexc121 unwind label %bb.ah

.noexc121:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i120
  %i.eu = load i64, ptr %i.y, align 8, !alias.scope !758, !noundef !3 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, 192153584101141163
  call void @llvm.assume(i1 %i.ev)
  %.pre = load ptr, ptr %i.x, align 8, !alias.scope !758
  br label %bb.ag

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118: ; preds = %bb.af
  %i.ew = icmp ult i64 %i.av, 192153584101141163
  call void @llvm.assume(i1 %i.ew)
  %.not.i119 = icmp eq i64 %i.eq, 0
  br i1 %.not.i119, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i133, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118, %.noexc121
  %i.ex = phi ptr [ %.pre, %.noexc121 ], [ %i.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118 ] ; 2 uses
  %i.ey = phi i64 [ %i.eu, %.noexc121 ], [ %i.av, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118 ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [48 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = mul i64 %i.eq, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr nonnull readonly align 8 %i.ep, i64 %i.fa, i1 false), !noalias !758
  br label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i133

bb.ah:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i120
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.q) #27
  br label %bb.ac

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i133: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118, %bb.ag
  %i.fc = phi ptr [ %i.ex, %bb.ag ], [ %i.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118 ]
  %i.fd = phi i64 [ %i.ey, %bb.ag ], [ %i.av, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118 ]
  %i.fe = add i64 %i.fd, %i.eq                    ; 2 uses
  store i64 %i.fe, ptr %i.y, align 8, !alias.scope !758
  call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %.val2.i134 = load i64, ptr %i.q, align 8, !range !10, !alias.scope !760, !noundef !3 ; 2 uses
  %i.ff = icmp eq i64 %.val2.i134, 0
  br i1 %i.ff, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit135, label %bb.ai

bb.ai:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i133
  %i.fg = mul nuw i64 %.val2.i134, 48
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !760
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit135

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit135: ; preds = %bb.ai, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i133
  %i.fh = icmp eq i64 %.sroa.0149.0.copyload, 0
  br i1 %i.fh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit135
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5150.0.copyload, i64 noundef %.sroa.0149.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !761
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138: ; preds = %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.loopexit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.0168.0.copyload = load i64, ptr %i.e, align 8 ; 3 uses
  %.sroa.5170.0.copyload = load ptr, ptr %.sroa.5170.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6173.0.copyload = load i64, ptr %.sroa.6173.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !762
  store i64 0, ptr %i.c, align 8, !noalias !762
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !762
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !762
  store i32 1610612768, ptr %i.ar, align 8, !noalias !762
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !762
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !762
  store ptr %i.c, ptr %i.b, align 8, !noalias !762
  store ptr @160, ptr %i.as, align 8, !noalias !762
  %i.fi = invoke noundef zeroext i1 @_RNvXs_NtCs5QD3CVEMyfH_10serde_json5valueNtB4_5ValueNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ct, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.am unwind label %.loopexit198, !noalias !763

.loopexit198:                                     ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  %lpad.loopexit200 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp199:                            ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp199, %.loopexit198
  %lpad.phi201 = phi { ptr, i32 } [ %lpad.loopexit200, %.loopexit198 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp199 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !764, !noalias !762 ; 2 uses
  %i.fj = icmp eq i64 %.val.i.i, 0
  br i1 %i.fj, label %.body139, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val1.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !764, !noalias !762, !nonnull !3, !noundef !3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !765
  br label %.body139

bb.am:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  br i1 %i.fi, label %bb.an, label %bb.ap, !prof !4

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #29
          to label %.noexc.i unwind label %.loopexit.split-lp199, !noalias !763

.noexc.i:                                         ; preds = %bb.an
  unreachable

.body139:                                         ; preds = %bb.ak, %bb.al
  %i.fk = icmp eq i64 %.sroa.0168.0.copyload, 0
  br i1 %i.fk, label %.body, label %bb.ao

bb.ao:                                            ; preds = %.body139
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5170.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5170.0.copyload, i64 noundef %.sroa.0168.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !766
  br label %.body

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !762
  store i64 %.sroa.0168.0.copyload, ptr %i.f, align 8
  store ptr %.sroa.5170.0.copyload, ptr %.sroa.5170.0..sroa_idx171, align 8
  store i64 %.sroa.6173.0.copyload, ptr %.sroa.6173.0..sroa_idx174, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.fl = load i64, ptr %i.s, align 8, !range !10, !alias.scope !767, !noalias !768, !noundef !3
  %i.fm = icmp eq i64 %i.av, %i.fl
  br i1 %i.fm, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.as unwind label %bb.ar, !noalias !768

bb.ar:                                            ; preds = %bb.aq
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.f) #27, !noalias !767
  br label %.body

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %i.fo = load ptr, ptr %i.x, align 8, !alias.scope !767, !noalias !768, !nonnull !3, !noundef !3 ; 2 uses
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %i.fo, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fp, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !767
  %i.fq = add i64 %i.av, 1                        ; 2 uses
  store i64 %i.fq, ptr %i.y, align 8, !alias.scope !767, !noalias !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 32, 121) %2) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 4 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.a, 14
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.sroa.0.04.i = phi i64 [ 0, %.new ], [ %i.f, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.c = or disjoint i64 %.sroa.0.04.i, 1         ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.i ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 1, !alias.scope !783, !noalias !784
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.e, align 1, !alias.scope !784, !noalias !783
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.d, align 1, !alias.scope !783, !noalias !784
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.e, align 1, !alias.scope !784, !noalias !783
  %i.f = add nuw nsw i64 %.sroa.0.04.i, 2         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.g, align 1, !alias.scope !785, !noalias !786
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.h, align 1, !alias.scope !786, !noalias !785
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %i.g, align 1, !alias.scope !785, !noalias !786
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.h, align 1, !alias.scope !786, !noalias !785
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.unr-lcssa, label %bb.b

_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = trunc i64 %i.a to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

.epil.preheader:                                  ; preds = %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.unr-lcssa, %bb.a
  %.sroa.0.04.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.f, %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.i.epil.init ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %.sroa.0.0.copyload.i.i.epil = load i64, ptr %i.i, align 1, !alias.scope !783, !noalias !784
  %.sroa.02.0.copyload.i.i.epil = load i64, ptr %i.j, align 1, !alias.scope !784, !noalias !783
  store i64 %.sroa.02.0.copyload.i.i.epil, ptr %i.i, align 1, !alias.scope !783, !noalias !784
  store i64 %.sroa.0.0.copyload.i.i.epil, ptr %i.j, align 1, !alias.scope !784, !noalias !783
  br label %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.unr-lcssa, %.epil.preheader
  %i.k = and i64 %2, 7                            ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  %i.l = and i64 %2, 120                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 4 uses
  %i.o = icmp samesign ult i64 %i.k, 4
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.m, align 1, !alias.scope !787, !noalias !788
  %.sroa.02.0.copyload.i.i5 = load i32, ptr %i.n, align 1, !alias.scope !788, !noalias !787
  store i32 %.sroa.02.0.copyload.i.i5, ptr %i.m, align 1, !alias.scope !787, !noalias !788
  store i32 %.sroa.0.0.copyload.i.i4, ptr %i.n, align 1, !alias.scope !788, !noalias !787
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 4, %bb.d ] ; 4 uses
  %i.p = and i64 %2, 2
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.r, align 1, !alias.scope !789, !noalias !790
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.s, align 1, !alias.scope !790, !noalias !789
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.r, align 1, !alias.scope !789, !noalias !790
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.s, align 1, !alias.scope !790, !noalias !789
  %i.t = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %3 = trunc i64 %2 to i1
  br i1 %3, label %bb.h, label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.1.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.u, align 1, !alias.scope !791, !noalias !792
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.v, align 1, !alias.scope !792, !noalias !791
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.u, align 1, !alias.scope !791, !noalias !792
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.v, align 1, !alias.scope !792, !noalias !791
  br label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.h, %bb.g, %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models11boost_querys_1__NtB7_10BoostQueryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1D_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models11match_querys_1__NtB7_10MatchQueryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1D_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12phrase_querys_1__NtB7_11PhraseQueryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1F_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contentss_1__NtB7_11TagContentsNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1F_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13boolean_querys_1__NtB7_12BooleanQueryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_contents_1__NtB7_12IndexContentNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_versions_1__NtB7_12TableVersionNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13version_ranges_1__NtB7_12VersionRangeNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models14error_responses_1__NtB7_13ErrorResponseNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1J_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models14fragment_statss_1__NtB7_13FragmentStatsNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1J_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models14partition_specs_1__NtB7_13PartitionSpecNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1J_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models15branch_contentss_1__NtB7_14BranchContentsNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1L_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models15partition_fields_1__NtB7_14PartitionFieldNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1L_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16fragment_summarys_1__NtB7_15FragmentSummaryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1N_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_fields_1__NtB7_14JsonArrowFieldNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1M_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16string_fts_querys_1__NtB7_14StringFtsQueryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1M_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models17add_columns_entrys_1__NtB7_15AddColumnsEntryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models17json_arrow_schemas_1__NtB7_15JsonArrowSchemaNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models17multi_match_querys_1__NtB7_15MultiMatchQueryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models17table_basic_statss_1__NtB7_15TableBasicStatsNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models18drop_table_requests_1__NtB7_16DropTableRequestNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1Q_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models19alter_columns_entrys_1__NtB7_17AlterColumnsEntryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1S_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models19commit_table_results_1__NtB7_17CommitTableResultNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1S_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models19drop_table_responses_1__NtB7_17DropTableResponseNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1S_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models19list_tables_requests_1__NtB7_17ListTablesRequestNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1S_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models19partition_transforms_1__NtB7_18PartitionTransformNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1T_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models19query_table_requests_1__NtB7_17QueryTableRequestNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1S_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
end_hunk_1
