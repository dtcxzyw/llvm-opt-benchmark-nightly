inline.NumInlined: 134
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjsNuU4yXw23_3fst:bb.a
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #24
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjsNuU4yXw23_3fst(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !146
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !146

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  br i1 %2, label %bb.g, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCsjsNuU4yXw23_3fst3raw3opsNtB5_10StreamHeap3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !9 ; 3 uses
  %i.f = icmp ult i64 %i.e, 576460752303423488
  tail call void @llvm.assume(i1 %i.f)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.06.010 = phi i64 [ 0, %.lr.ph ], [ %i.i, %bb.f ] ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.06.010, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !150
  %i.j = call noundef dereferenceable_or_null(64) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !150 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 1, i64 64) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjsNuU4yXw23_3fst3raw3ops10StreamHeapEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #25
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  store i64 %.sroa.06.010, ptr %i.g, align 8, !alias.scope !147
  store i64 64, ptr %i.a, align 8, !alias.scope !147
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !147
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !147
  store i64 0, ptr %i.h, align 8, !alias.scope !147
  invoke fastcc void @_RNvMs5_NtNtCsjsNuU4yXw23_3fst3raw3opsNtB5_10StreamHeap6refill(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond.not = icmp eq i64 %i.i, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvMs5_NtNtCsjsNuU4yXw23_3fst3raw3opsNtB5_10StreamHeap3pop(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [40 x i8], align 8      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !156, !noalias !153, !noundef !9 ; 6 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !153, !noalias !156
  br label %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE3popB1h_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = add nsw i64 %i.b, -1                     ; 7 uses
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !156, !noalias !153
  %i.f = load i64, ptr %i.d, align 8, !range !5, !alias.scope !156, !noalias !153, !noundef !9
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !156, !noalias !153, !nonnull !9, !noundef !9 ; 18 uses
  %i.j = icmp ult i64 %i.b, 230584300921369397
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.e ; 5 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !158 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !158 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !158 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !158 ; 2 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.4.sroa.6.0.copyload.i = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !158 ; 2 uses
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE3pop0B1j_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.i, align 1, !alias.scope !159, !noalias !162
  store i64 %.sroa.05.0.copyload.i, ptr %i.i, align 1, !alias.scope !159, !noalias !162
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.02.0.copyload.i.1.i.i.i.i.i.i = load i64, ptr %i.m, align 1, !alias.scope !167, !noalias !169
  store i64 %.sroa.4.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !167, !noalias !169
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.02.0.copyload.i.2.i.i.i.i.i.i = load i64, ptr %i.n, align 1, !alias.scope !171, !noalias !173
  store i64 %.sroa.4.sroa.4.0.copyload.i, ptr %i.n, align 1, !alias.scope !171, !noalias !173
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %.sroa.02.0.copyload.i.3.i.i.i.i.i.i = load i64, ptr %i.o, align 1, !alias.scope !175, !noalias !177
  store i64 %.sroa.4.sroa.5.0.copyload.i, ptr %i.o, align 1, !alias.scope !175, !noalias !177
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %.sroa.02.0.copyload.i.4.i.i.i.i.i.i = load i64, ptr %i.p, align 1, !alias.scope !179, !noalias !181
  store i64 %.sroa.4.sroa.6.0.copyload.i, ptr %i.p, align 1, !alias.scope !179, !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !183
  %2 = add nsw i64 %i.b, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.b, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.bp, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %bb.d ], [ %i.bt, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = add nsw i64 %i.b, -2
  %i.r = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false), !noalias !183
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %.sroa.12.1.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %bb.e ], [ %.sroa.12.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.12.1.i.i.i ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.i, i64 40, i1 false), !noalias !183
  %i.v = icmp samesign ult i64 %.sroa.12.1.i.i.i, %i.e
  tail call void @llvm.assume(i1 %i.v)
  %.sroa.036.0.copyload.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !183
  %.sroa.437.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.437.0.copyload.i.i.i.i = load ptr, ptr %.sroa.437.0..sroa_idx.i.i.i.i, align 8, !noalias !183 ; 3 uses
  %.sroa.538.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load <2 x i64>, ptr %.sroa.538.0..sroa_idx.i.i.i.i, align 8, !noalias !183
  %.sroa.538.0.copyload.i.i.i.i = load i64, ptr %.sroa.538.0..sroa_idx.i.i.i.i, align 8, !noalias !183 ; 2 uses
  %.sroa.740.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.740.0.copyload.i.i.i.i = load i64, ptr %.sroa.740.0..sroa_idx.i.i.i.i, align 8, !noalias !183 ; 2 uses
  %.not41.i.i.i.i = icmp eq i64 %.sroa.12.1.i.i.i, 0
  br i1 %.not41.i.i.i.i, label %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE19sift_down_to_bottomB1h_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.437.0.copyload.i.i.i.i) ]
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.15.042.i.i.i.i = phi i64 [ %.sroa.12.1.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %bb.h ] ; 3 uses
  %i.x = add nsw i64 %.sroa.15.042.i.i.i.i, -1
  %i.y = lshr i64 %i.x, 1                         ; 4 uses
  %i.z = icmp samesign ult i64 %i.y, %i.e
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.y ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !190, !noalias !191, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !190, !noalias !191, !nonnull !9, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !190, !noalias !191, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.538.0.copyload.i.i.i.i, i64 %i.ag)
  %i.ah = tail call i32 @memcmp(ptr nonnull %.sroa.437.0.copyload.i.i.i.i, ptr nonnull %i.ae, i64 %spec.store.select.i.i.i.i.i.i), !noalias !194 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %.sroa.538.0.copyload.i.i.i.i, %i.ag
  %spec.select.i.i.i.i.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai ; 2 uses
  %i.al = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  %i.am = icmp ule i64 %i.ac, %.sroa.740.0.copyload.i.i.i.i
  %i.an = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %i.ao = select i1 %i.al, i1 %i.am, i1 %i.an
  br i1 %i.ao, label %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE19sift_down_to_bottomB1h_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.15.042.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false), !noalias !183
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE19sift_down_to_bottomB1h_.exit.i.i, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i ], [ 1, %bb.d ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i ; 3 uses
  %i.ar = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.as = icmp samesign ult i64 %i.ar, %i.e
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.ar ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !205, !noalias !206, !noundef !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !207, !noalias !208, !noundef !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !205, !noalias !206, !nonnull !9, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !205, !noalias !206, !noundef !9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !207, !noalias !208, !nonnull !9, !noundef !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !207, !noalias !208, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.bf)
  %i.bg = tail call i32 @memcmp(ptr nonnull %i.az, ptr nonnull %i.bd, i64 %spec.store.select.i.i.i.i.i), !noalias !209 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %i.bj = sub i64 %i.bb, %i.bf
  %spec.select.i.i.i.i.i = select i1 %i.bi, i64 %i.bj, i64 %i.bh ; 2 uses
  %i.bk = icmp eq i64 %spec.select.i.i.i.i.i, 0
  %i.bl = icmp ule i64 %i.ax, %i.av
  %i.bm = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %i.bn = select i1 %i.bk, i1 %i.bl, i1 %i.bm
  %i.bo = zext i1 %i.bn to i64
  %i.bp = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.bo ; 4 uses
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.bp
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.bq, i64 40, i1 false), !noalias !183
  %i.bs = shl nuw nsw i64 %i.bp, 1                ; 2 uses
  %i.bt = or disjoint i64 %i.bs, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.bs, %2
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE19sift_down_to_bottomB1h_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.15.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.15.042.i.i.i.i, %bb.g ], [ 0, %bb.h ]
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.15.0.lcssa.i.i.i.i ; 4 uses
  store i64 %.sroa.036.0.copyload.i.i.i.i, ptr %i.bu, align 8, !noalias !183
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %.sroa.437.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !noalias !183
  %.sroa.6.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x i64> %i.w, ptr %.sroa.6.0..sroa_idx7.i.i.i.i, align 8, !noalias !183
  %.sroa.715.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i64 %.sroa.740.0.copyload.i.i.i.i, ptr %.sroa.715.0..sroa_idx16.i.i.i.i, align 8, !noalias !183
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  br label %_RNCNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE3pop0B1j_.exit.i

_RNCNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE3pop0B1j_.exit.i: ; preds = %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE19sift_down_to_bottomB1h_.exit.i.i, %bb.c
  %.sroa.13.0.i = phi i64 [ %.sroa.4.sroa.6.0.copyload.i, %bb.c ], [ %.sroa.02.0.copyload.i.4.i.i.i.i.i.i, %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE19sift_down_to_bottomB1h_.exit.i.i ]
  %.sroa.11.0.i = phi i64 [ %.sroa.4.sroa.5.0.copyload.i, %bb.c ], [ %.sroa.02.0.copyload.i.3.i.i.i.i.i.i, %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE19sift_down_to_bottomB1h_.exit.i.i ]
  %.sroa.9.0.i = phi i64 [ %.sroa.4.sroa.4.0.copyload.i, %bb.c ], [ %.sroa.02.0.copyload.i.2.i.i.i.i.i.i, %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE19sift_down_to_bottomB1h_.exit.i.i ]
  %.sroa.6.0.i = phi i64 [ %.sroa.4.sroa.0.0.copyload.i, %bb.c ], [ %.sroa.02.0.copyload.i.1.i.i.i.i.i.i, %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE19sift_down_to_bottomB1h_.exit.i.i ]
  %.sroa.0.0.i = phi i64 [ %.sroa.05.0.copyload.i, %bb.c ], [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE19sift_down_to_bottomB1h_.exit.i.i ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !153, !noalias !156
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.i, ptr %.sroa.4.0..sroa_idx10.i, align 8, !alias.scope !153, !noalias !156
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !153, !noalias !156
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.11.0.i, ptr %.sroa.611.0..sroa_idx.i, align 8, !alias.scope !153, !noalias !156
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.13.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !153, !noalias !156
  br label %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE3popB1h_.exit

_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE3popB1h_.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotE3pop0B1j_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtCsjsNuU4yXw23_3fst3raw3opsNtB5_10StreamHeap6refill(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !9 ; 2 uses
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.d ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !9, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !9, !align !210, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !9, !nonnull !9
  invoke void %i.o(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.k)
          to label %bb.e unwind label %bb.s

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !9 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i64 0, ptr %i.u, align 8, !alias.scope !211, !noalias !214
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjsNuU4yXw23_3fst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef range(i64 0, -9223372036854775808) %i.r)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.f
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !216, !noalias !214, !noundef !9 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.w)
  %.not.i.i = icmp eq i64 %i.r, 0
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtCsjsNuU4yXw23_3fst3raw3opsNtB5_19SymmetricDifferenceNtNtB9_6stream8Streamer4next:bb.a
  %.not13 = icmp eq i64 %i.au, -1
  br i1 %.not13, label %._crit_edge, label %bb.d

.critedge:                                        ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsjsNuU4yXw23_3fst3raw3ops12IndexedValueE8push_mutBL_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.critedge
  %i.av = load i64, ptr %i.h, align 8, !range !298, !alias.scope !428, !noundef !9
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB13_.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !431, !noundef !9 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ay, label %.thread23, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val3.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !438, !nonnull !9, !noundef !9
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !439
  br label %.thread23

bb.t:                                             ; preds = %bb.q
  %.val.i.i.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !431, !noundef !9 ; 2 uses
  %i.az = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB13_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !438, !nonnull !9, !noundef !9
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !442
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB13_.exit

.thread23:                                        ; preds = %bb.s, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  br label %bb.x

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB13_.exit: ; preds = %bb.u, %bb.t, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  %i.ba = load i64, ptr %i.h, align 8, !range !298, !noundef !9
  %.not15 = icmp eq i64 %i.ba, -1
  br i1 %.not15, label %bb.w, label %bb.v, !prof !67

bb.v:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB13_.exit
  %i.bb = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !9
  %i.be = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9
  %i.bf = load i64, ptr %i.k, align 8, !noundef !9
  store ptr %i.bb, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bf, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.f

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB13_.exit
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #27
  unreachable

bb.x:                                             ; preds = %.thread23, %.thread
  %.pn21 = phi { ptr, i32 } [ %.pn22, %.thread ], [ %i.ax, %.thread23 ]
  resume { ptr, i32 } %.pn21

.thread:                                          ; preds = %bb.k, %bb.n, %bb.g
  %.pn22 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.g ], [ %i.am, %bb.k ], [ %i.as, %bb.n ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #25
          to label %bb.x unwind label %bb.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs8_NtNtCsjsNuU4yXw23_3fst3raw3opsNtB5_4SlotNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !445, !noalias !448, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !448, !noalias !445, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !445, !noalias !448, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !445, !noalias !448, !noundef !9 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !448, !noalias !445, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !448, !noalias !445, !noundef !9 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.l)
  %i.m = tail call i32 @memcmp(ptr nonnull %i.f, ptr nonnull %i.j, i64 %spec.store.select.i), !noalias !450 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp eq i32 %i.m, 0
  %i.p = sub i64 %i.h, %i.l
  %spec.select.i = select i1 %i.o, i64 %i.p, i64 %i.n ; 2 uses
  %i.q = tail call i8 @llvm.scmp.i8.i64(i64 0, i64 %spec.select.i)
  %i.r = icmp eq i64 %spec.select.i, 0
  %i.s = tail call i8 @llvm.ucmp.i8.i64(i64 %i.d, i64 %i.b)
  %.sroa.0.0.neg.i = select i1 %i.r, i8 %i.s, i8 %i.q
  ret i8 %.sroa.0.0.neg.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsjsNuU4yXw23_3fst3raw5errorNtB4_5ErrorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNtNtCsjsNuU4yXw23_3fst3raw5errorNtB2_5ErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRhNtB6_5Debug3fmtCsjsNuU4yXw23_3fst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB15_3raw6OutputEEL_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB15_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #14

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionE7reserveBI_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjsNuU4yXw23_3fst(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRShNtB6_5Debug3fmtCsjsNuU4yXw23_3fst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsbSS6DM8SDEO_5alloc6stringNtB5_13FromUtf8ErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsjsNuU4yXw23_3fst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBO_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nounwind }
attributes #25 = { cold }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { noinline noreturn }
attributes #29 = { noinline }
attributes #30 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{!"address", !"read_provenance"}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB1e_: argument 0"}
!8 = distinct !{!8, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB1e_"}
!9 = !{}
!10 = !{!11, !13}
!11 = distinct !{!11, !12, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst: argument 0"}
!12 = distinct !{!12, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst"}
!13 = distinct !{!13, !14, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsjsNuU4yXw23_3fst: argument 0"}
!14 = distinct !{!14, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsjsNuU4yXw23_3fst"}
!15 = !{!13}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst: argument 0"}
!18 = distinct !{!18, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst: argument 0"}
!21 = distinct !{!21, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtBG_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB1y_3raw6OutputEEL_EEEB1y_: argument 0"}
!24 = distinct !{!24, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtBG_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB1y_3raw6OutputEEL_EEEB1y_"}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB1e_: argument 0"}
!27 = distinct !{!27, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB1e_"}
!28 = distinct !{!28, !29, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc11collections11binary_heap10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB1K_: argument 0"}
!29 = distinct !{!29, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc11collections11binary_heap10BinaryHeapNtNtNtCsjsNuU4yXw23_3fst3raw3ops4SlotEEB1K_"}
!30 = !{!31, !33}
!31 = distinct !{!31, !32, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst: argument 0"}
!32 = distinct !{!32, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst"}
!33 = distinct !{!33, !34, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsjsNuU4yXw23_3fst: argument 0"}
!34 = distinct !{!34, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsjsNuU4yXw23_3fst"}
!35 = !{!33}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst: argument 0"}
!38 = distinct !{!38, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst: argument 0"}
!41 = distinct !{!41, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjsNuU4yXw23_3fst"}
!42 = !{!43, !45, !47}
!43 = distinct !{!43, !44, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsjsNuU4yXw23_3fst3raw10TransitionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_: argument 0"}
!44 = distinct !{!44, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsjsNuU4yXw23_3fst3raw10TransitionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_"}
!45 = distinct !{!45, !46, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionEEB1c_: argument 0"}
!46 = distinct !{!46, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionEEB1c_"}
!47 = distinct !{!47, !48, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjsNuU4yXw23_3fst3raw5build11BuilderNodeEBH_: argument 0"}
!48 = distinct !{!48, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjsNuU4yXw23_3fst3raw5build11BuilderNodeEBH_"}
!49 = !{!45, !47}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsjsNuU4yXw23_3fst3raw10TransitionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_: argument 0"}
!52 = distinct !{!52, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsjsNuU4yXw23_3fst3raw10TransitionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsjsNuU4yXw23_3fst3raw10TransitionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_: argument 0"}
!55 = distinct !{!55, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsjsNuU4yXw23_3fst3raw10TransitionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsjsNuU4yXw23_3fst: argument 0"}
!58 = distinct !{!58, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsjsNuU4yXw23_3fst"}
!59 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!60 = !{i64 0, i64 2}
!61 = !{i64 0, i64 -9223372036854775807}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RNvNtNtCsjsNuU4yXw23_3fst3raw5crc3214crc32c_slice16: argument 0"}
!64 = distinct !{!64, !"_RNvNtNtCsjsNuU4yXw23_3fst3raw5crc3214crc32c_slice16"}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedE8push_mutBL_: argument 0"}
!70 = distinct !{!70, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedE8push_mutBL_"}
!71 = !{!72}
!72 = distinct !{!72, !70, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedE8push_mutBL_: argument 1"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_RNvMs0_NtNtCsjsNuU4yXw23_3fst3raw5buildNtB5_15UnfinishedNodes10push_empty: argument 0"}
!75 = distinct !{!75, !"_RNvMs0_NtNtCsjsNuU4yXw23_3fst3raw5buildNtB5_15UnfinishedNodes10push_empty"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedE8push_mutBL_: argument 0"}
!78 = distinct !{!78, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedE8push_mutBL_"}
!79 = !{!77, !74}
!80 = !{!81}
!81 = distinct !{!81, !78, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedE8push_mutBL_: argument 1"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvMs1_NtNtCsjsNuU4yXw23_3fst3raw5buildNtB5_21BuilderNodeUnfinished13last_compiled: argument 0"}
!84 = distinct !{!84, !"_RNvMs1_NtNtCsjsNuU4yXw23_3fst3raw5buildNtB5_21BuilderNodeUnfinished13last_compiled"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionE8push_mutBJ_: argument 0"}
!87 = distinct !{!87, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionE8push_mutBJ_"}
!88 = !{!86, !83}
!89 = !{!90}
!90 = distinct !{!90, !87, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionE8push_mutBJ_: argument 1"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNvMs1_NtNtCsjsNuU4yXw23_3fst3raw5buildNtB5_21BuilderNodeUnfinished13last_compiled: argument 0"}
!93 = distinct !{!93, !"_RNvMs1_NtNtCsjsNuU4yXw23_3fst3raw5buildNtB5_21BuilderNodeUnfinished13last_compiled"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionE8push_mutBJ_: argument 0"}
!96 = distinct !{!96, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionE8push_mutBJ_"}
!97 = !{!95, !92}
!98 = !{!99}
!99 = distinct !{!99, !96, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjsNuU4yXw23_3fst3raw10TransitionE8push_mutBJ_: argument 1"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedEEB28_: argument 0"}
!102 = distinct !{!102, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedEEB28_"}
!103 = !{!104, !101}
!104 = distinct !{!104, !105, !"_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedEEINtB5_7ZipImplBW_B1o_E3newB1y_: argument 0"}
!105 = distinct !{!105, !"_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedEEINtB5_7ZipImplBW_B1o_E3newB1y_"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhRNtNtNtCsjsNuU4yXw23_3fst3raw5build21BuilderNodeUnfinishedEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_B2b_NtB2b_15UnfinishedNodes18find_common_prefix0NCINvMB39_B36_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterhEIB5F_B29_EEB3P_EB1i_5count0E0E0B2f_: argument 0"}
end_hunk_1
