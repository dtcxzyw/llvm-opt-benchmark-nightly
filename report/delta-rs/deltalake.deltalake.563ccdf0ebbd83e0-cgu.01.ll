Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.01?download=true
inline.NumInlined: 10669
inline.NumDeleted: 3626
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbE11extend_withCs7p2uQeJxui2_9deltalake:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.l = icmp ugt i64 %1, 1
  br i1 %i.l, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs7p2uQeJxui2_9deltalake.exit
  %i.m = add i64 %1, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 %i.a, i64 %i.m, i1 false)
  %i.n = add i64 %i.g, %1
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.o
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs7p2uQeJxui2_9deltalake.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %scevgep, %._crit_edge.thread ], [ %i.k, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.o, %._crit_edge.thread ], [ %i.g, %._crit_edge ]
  store i8 %i.a, ptr %.sroa.0.0.lcssa28, align 1
  %i.p = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.p, %bb.c ], [ %i.g, %._crit_edge ]
  store i64 %storemerge18, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE11extend_withCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12095, !noundef !3 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !alias.scope !12095, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCs7p2uQeJxui2_9deltalake.exit

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCs7p2uQeJxui2_9deltalake.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -4                       ; 4 uses
  %i.m = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.q, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !12098

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.021.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.020.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCs7p2uQeJxui2_9deltalake.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i64 %2, ptr %.sroa.0.0.lcssa28, align 8
  %i.u = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge18, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.sroa.0.021 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0.021.ph, %.lr.ph.preheader30 ] ; 2 uses
  %.sroa.03.020 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.03.020.ph, %.lr.ph.preheader30 ]
  %i.v = add nuw i64 %.sroa.03.020, 1             ; 2 uses
  store i64 %2, ptr %.sroa.0.021, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 8 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !12099
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtCsgvKtmFgitAz_12thread_local5EntryINtNtCsbvkFyIu7lgC_4core4cell7RefCellIBv_NtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEEE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 40)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 230584300921369396
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsgvKtmFgitAz_12thread_local5EntryINtNtB4_4cell7RefCellIBH_NtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0) #25
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %bb.e, !prof !5

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i16 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack7IdValueNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEE6removeCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12100)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12100, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !12100, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !12103, !noalias !12100, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i16, ptr %i.h, align 8, !noalias !12100, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = xor i64 %1, -1
  %i.l = add nsw i64 %i.b, %i.k
  %i.m = shl nsw i64 %i.l, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.j, i64 %i.m, i1 false), !noalias !12100
  %i.n = add nsw i64 %i.b, -1
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !12100
  %i.o = insertvalue { i64, i16 } poison, i64 %i.g, 0
  %i.p = insertvalue { i64, i16 } %i.o, i16 %i.i, 1
  ret { i64, i16 } %i.p

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 40)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 230584300921369396
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB1i_3cfg13DefaultConfigEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0) #25
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %bb.e, !prof !5

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB6_6string6StringINtNtB2p_4util11SharedValueIBv_bEEEEEEE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 128, i64 noundef 128)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 72057594037927936
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtBL_6string6StringINtNtB2Y_4util11SharedValueIBH_bEEEEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0) #25
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %bb.e, !prof !5

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6future10maybe_done9MaybeDoneINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3h_5ErrorEEEE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 128102389400760776
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs8CRAYtH5WmW_12futures_util6future10maybe_done9MaybeDoneINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3A_5ErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0) #25
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %bb.e, !prof !5

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 96)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 96076792050570582
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE16into_boxed_sliceCs7p2uQeJxui2_9deltalake:bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 16, i64 noundef 368)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 25063510969714065
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %bb.e, !prof !5

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCsdNqyU9N9qTX_12sharded_slab4page5LocalE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsdNqyU9N9qTX_12sharded_slab4page5LocalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsdNqyU9N9qTX_12sharded_slab4page5LocalEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %bb.e, !prof !5

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsdNqyU9N9qTX_12sharded_slab4page5LocalEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 2, i64 noundef 4)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4j34XAPZOn0_4http6header3map3PosENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %bb.e, !prof !5

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE6removeCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([640 x i8]) align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [632 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12104)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12104, !noalias !12107, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 14411518807585588
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs7p2uQeJxui2_9deltalake.exit, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs7p2uQeJxui2_9deltalake.exit.thread

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !12104, !noalias !12107, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !12104 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6.0..sroa_idx2, i64 632, i1 false), !noalias !12104
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nsw i64 %i.i, 640
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !12109
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !12104, !noalias !12107
  %.not = icmp eq i64 %.sroa.0.0.copyload1, 15
  br i1 %.not, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.b, !prof !12110

bb.b:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs7p2uQeJxui2_9deltalake.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6, i64 632, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs7p2uQeJxui2_9deltalake.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 14411518807585588
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12111)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12111, !noalias !12114, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE10try_removeCs7p2uQeJxui2_9deltalake.exit, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE10try_removeCs7p2uQeJxui2_9deltalake.exit.thread

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE10try_removeCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !12111, !noalias !12114, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !12111 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !12111
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !12116
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !12111, !noalias !12114
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE10try_removeCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.b, !prof !12110

bb.b:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE10try_removeCs7p2uQeJxui2_9deltalake.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE10try_removeCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE10try_removeCs7p2uQeJxui2_9deltalake.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE10try_removeCs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %bb.e, !prof !5

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit._crit_edge: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs7p2uQeJxui2_9deltalake.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBv_6string6StringEEEINtB2_10EquivalentBq_E10equivalentCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !3
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec10partial_eqINtB4_3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB6_6string6StringEEENtNtBY_3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTReINtNtB9_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val, ptr noundef nonnull %.val2, i64 noundef %.val1)
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec10partial_eqINtB4_3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB6_6string6StringEEENtNtBY_3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake.exit

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec10partial_eqINtB4_3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB6_6string6StringEEENtNtBY_3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB28_6cloned6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB6_6string6StringBR_EENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB4x_13CreateBuilder12with_columnsBR_B2R_E0EE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12117)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !12117
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.e, align 8, !noalias !12117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12120
  call void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !12124
  %i.f = load i64, ptr %i.a, align 8, !range !62, !noalias !12120, !noundef !3 ; 2 uses
  %.not.i8.i = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.i8.i, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB1U_6cloned6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB8_6string6StringBG_EENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB4j_13CreateBuilder12with_columnsBG_B2D_E0EECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.r

bb.c:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE7reserveCs7p2uQeJxui2_9deltalake.exit.i, %.lr.ph.i
  %i.i = phi i64 [ %i.f, %.lr.ph.i ], [ %i.q, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE7reserveCs7p2uQeJxui2_9deltalake.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx5.i, i64 88, i1 false), !noalias !12117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12120
  store i64 %i.i, ptr %i.c, align 8, !noalias !12117
  %i.j = load i64, ptr %i.g, align 8, !alias.scope !12117, !noundef !3 ; 4 uses
  %i.k = icmp ult i64 %i.j, 96076792050570582
  call void @llvm.assume(i1 %i.k)
  %i.l = load i64, ptr %0, align 8, !range !9, !alias.scope !12117, !noundef !3
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE7reserveCs7p2uQeJxui2_9deltalake.exit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12117
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtB8_6traits8iterator8Iterator9size_hintCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB3F_13CreateBuilder12with_columnsB2E_BW_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE7reserveCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB3F_13CreateBuilder12with_columnsB2E_BW_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs7p2uQeJxui2_9deltalake.exit.i, %bb.c
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !12117, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.p = add nuw nsw i64 %i.j, 1
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !12117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12120
  call void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtB8_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !12125
  %i.q = load i64, ptr %i.a, align 8, !range !62, !noalias !12120, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not.i.i, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB1U_6cloned6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB8_6string6StringBG_EENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB4j_13CreateBuilder12with_columnsBG_B2D_E0EECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.c) #25
          to label %bb.b unwind label %bb.g

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB3F_13CreateBuilder12with_columnsB2E_BW_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.b, align 8, !noalias !12117, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12117
  %i.t = call i64 @llvm.uadd.sat.i64(i64 %i.s, i64 1) ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !alias.scope !12126, !noundef !3 ; 2 uses
  %i.v = load i64, ptr %0, align 8, !range !9, !alias.scope !12126, !noundef !3
  %i.w = sub i64 %i.v, %i.u
  %i.x = icmp ugt i64 %i.t, %i.w
  br i1 %i.x, label %bb.f, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE7reserveCs7p2uQeJxui2_9deltalake.exit.i, !prof !10

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB3F_13CreateBuilder12with_columnsB2E_BW_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, i64 noundef %i.t, i64 noundef 8, i64 noundef 96)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE7reserveCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
