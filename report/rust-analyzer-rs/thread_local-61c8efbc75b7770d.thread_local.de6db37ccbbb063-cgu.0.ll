inline.NumInlined: 81
inline.NumDeleted: 57
begin_hunk_0_@_RINvNtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native5eager7destroyNtNtCs1bZVCNcVUvD_12thread_local9thread_id11ThreadGuardEB19_:bb.a

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs1bZVCNcVUvD_12thread_local9thread_id11ThreadGuardE0EB1D_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core3cmp7ReversejEE8grow_oneCs1bZVCNcVUvD_12thread_local(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !8
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs1bZVCNcVUvD_12thread_local(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1bZVCNcVUvD_12thread_local(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #3 {
bb.a:
  %i.a = shl i64 %1, 3                            ; 7 uses
  %i.b = icmp ult i64 %1, 2305843009213693952
  %i.c = icmp ult i64 %i.a, 9223372036854775801
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = shl nuw i64 %.0.val, 3                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.a, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #21
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.a, 0
  br i1 %i.h, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.i = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #21
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.m, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs1bZVCNcVUvD_12thread_local(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !16, !noundef !8 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.b, i64 range(i64 0, -1) %i.d)
  %..i14 = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %..i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1bZVCNcVUvD_12thread_local(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %..i14)
  %i.f = load i64, ptr %i.a, align 8, !range !18, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !19, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %..i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: cold nonlazybind uwtable
define void @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id8get_slow(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = cmpxchg ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i32 0, i32 1 acquire monotonic, align 4, !noalias !20
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER), !noalias !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !20
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() #17, !noalias !20
  %i.h = xor i1 %i.g, true
  %i.i = zext i1 %i.h to i8
  br label %_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_.exit

_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.j = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i64 4) monotonic, align 4, !noalias !20
  %.not.i.i.not = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.not, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23
  store ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, ptr %i.a, align 8, !noalias !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.k, align 8, !noalias !23
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #20
          to label %bb.g unwind label %bb.f, !noalias !27

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscAsMj0W7j8b_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEEEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22
          to label %bb.i unwind label %bb.h, !noalias !27

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !27
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.l

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit: ; preds = %_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_.exit
  %i.n = trunc nuw i8 %.sroa.01.0.i.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i64 8), align 8, !range !31, !alias.scope !28, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE3popCs1bZVCNcVUvD_12thread_local.exit.i, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i64 24), align 8, !alias.scope !35, !noundef !8 ; 5 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE3popCs1bZVCNcVUvD_12thread_local.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i64 %i.p, -1                     ; 8 uses
  store i64 %i.r, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i64 24), align 8, !alias.scope !35
  %i.s = icmp samesign ult i64 %i.r, %i.o
  tail call void @llvm.assume(i1 %i.s)
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i64 16), align 8, !alias.scope !35, !nonnull !8, !noundef !8 ; 13 uses
  %i.u = icmp ult i64 %i.p, 1152921504606846977
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.w = load i64, ptr %i.v, align 8, !noalias !35, !noundef !8 ; 6 uses
  %i.x = icmp eq i64 %i.r, 0
  br i1 %i.x, label %_RNvMNtCs1bZVCNcVUvD_12thread_local9thread_idNtB2_15ThreadIdManager5alloc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.t, align 8, !noalias !35
  store i64 %i.w, ptr %i.t, align 8, !noalias !35
  %2 = add nsw i64 %i.p, -3                       ; 2 uses
  %.not.not8.i.i.i.i = icmp samesign ult i64 %i.p, 4
  br i1 %.not.not8.i.i.i.i, label %._crit_edge.i.thread.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp eq i64 %i.au, %2
  br i1 %i.y, label %.thread.i.i.i.i, label %bb.m

._crit_edge.i.thread.i.i.i:                       ; preds = %bb.l
  %i.z = icmp eq i64 %i.r, 2
  br i1 %i.z, label %.thread.i.i.i.i, label %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE19sift_down_to_bottomCs1bZVCNcVUvD_12thread_local.exit.i.i.i

.thread.i.i.i.i:                                  ; preds = %._crit_edge.i.thread.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.05.0.lcssa.i5.i.i.i = phi i64 [ 1, %._crit_edge.i.thread.i.i.i ], [ %i.av, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.12.0.lcssa.i4.i.i.i = phi i64 [ 0, %._crit_edge.i.thread.i.i.i ], [ %i.aq, %._crit_edge.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.05.0.lcssa.i5.i.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.12.0.lcssa.i4.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !noalias !35
  store i64 %i.ac, ptr %i.ab, align 8, !noalias !35
  store i64 %i.w, ptr %i.aa, align 8, !noalias !36
  br label %.lr.ph.i.preheader.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aq
  store i64 %i.w, ptr %i.ad, align 8, !noalias !36
  br label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.m, %.thread.i.i.i.i
  %.lcssa17.sink.i.i.i = phi i64 [ %i.aq, %bb.m ], [ %.sroa.05.0.lcssa.i5.i.i.i, %.thread.i.i.i.i ] ; 2 uses
  %i.ae = icmp samesign ult i64 %.lcssa17.sink.i.i.i, %i.r
  tail call void @llvm.assume(i1 %i.ae)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %.lr.ph.i.preheader.i.i.i.i
  %storemerge11.i.i.i.i.i = phi i64 [ %i.ag, %bb.n ], [ %.lcssa17.sink.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.af = add nsw i64 %storemerge11.i.i.i.i.i, -1
  %i.ag = lshr i64 %i.af, 1                       ; 4 uses
  %i.ah = icmp samesign ult i64 %i.ag, %i.r
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ag
  %.val1.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !41, !noalias !44, !noundef !8 ; 2 uses
  %.not9.i.i.i.i.i = icmp ugt i64 %.val1.i.i.i.i.i, %i.w
  br i1 %.not9.i.i.i.i.i, label %bb.n, label %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE19sift_down_to_bottomCs1bZVCNcVUvD_12thread_local.exit.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %storemerge11.i.i.i.i.i
  store i64 %.val1.i.i.i.i.i, ptr %i.aj, align 8, !noalias !35
  %.not.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE19sift_down_to_bottomCs1bZVCNcVUvD_12thread_local.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.sroa.05.010.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i ], [ 1, %bb.l ] ; 3 uses
  %.sroa.12.09.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i ], [ 0, %bb.l ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.05.010.i.i.i.i
  %i.al = add nuw nsw i64 %.sroa.05.010.i.i.i.i, 1 ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %i.r
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.al
  %.val.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !46, !noalias !49, !noundef !8
  %.val16.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !51, !noalias !52, !noundef !8
  %i.ao = icmp ule i64 %.val16.i.i.i.i, %.val.i.i.i.i
  %i.ap = zext i1 %i.ao to i64
  %i.aq = add nuw nsw i64 %.sroa.05.010.i.i.i.i, %i.ap ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.12.09.i.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !noalias !35
  store i64 %i.at, ptr %i.as, align 8, !noalias !35
  %i.au = shl nuw nsw i64 %i.aq, 1                ; 3 uses
  %i.av = or disjoint i64 %i.au, 1                ; 2 uses
  %.not.not.not.i.i.i.i = icmp samesign ult i64 %i.au, %2
  br i1 %.not.not.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE19sift_down_to_bottomCs1bZVCNcVUvD_12thread_local.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i, %._crit_edge.i.thread.i.i.i
  %storemerge.lcssa.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.thread.i.i.i ], [ 0, %bb.n ], [ %storemerge11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %storemerge.lcssa.i.i.i.i.i
  store i64 %i.w, ptr %i.aw, align 8, !noalias !53
  br label %_RNvMNtCs1bZVCNcVUvD_12thread_local9thread_idNtB2_15ThreadIdManager5alloc.exit

_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE3popCs1bZVCNcVUvD_12thread_local.exit.i: ; preds = %bb.j, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i64 32), align 8, !alias.scope !28, !noundef !8 ; 2 uses
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i64 32), align 8, !alias.scope !28
  br label %_RNvMNtCs1bZVCNcVUvD_12thread_local9thread_idNtB2_15ThreadIdManager5alloc.exit

_RNvMNtCs1bZVCNcVUvD_12thread_local9thread_idNtB2_15ThreadIdManager5alloc.exit: ; preds = %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE3popCs1bZVCNcVUvD_12thread_local.exit.i, %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE19sift_down_to_bottomCs1bZVCNcVUvD_12thread_local.exit.i.i.i, %bb.k
  %.sroa.0.0.i = phi i64 [ %i.ax, %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE3popCs1bZVCNcVUvD_12thread_local.exit.i ], [ %.sroa.0.0.copyload.i.i.i, %_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE19sift_down_to_bottomCs1bZVCNcVUvD_12thread_local.exit.i.i.i ], [ %i.w, %bb.k ] ; 3 uses
  %i.az = add i64 %.sroa.0.0.i, 1                 ; 2 uses
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false)
  %i.bb = sub nsw i64 63, %i.ba                   ; 2 uses
  %i.bc = and i64 %i.bb, 63
  %i.bd = shl nuw i64 1, %i.bc                    ; 2 uses
  %i.be = sub i64 %i.az, %i.bd
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bb, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bd, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.be, ptr %i.bh, align 8
  br i1 %i.n, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvMNtCs1bZVCNcVUvD_12thread_local9thread_idNtB2_15ThreadIdManager5alloc.exit
  %i.bi = load atomic i64, ptr @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bj = and i64 %i.bi, 9223372036854775807
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.bl = tail call noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() #17
  br i1 %i.bl, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i64 4) monotonic, align 4
  br label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %_RNvMNtCs1bZVCNcVUvD_12thread_local9thread_idNtB2_15ThreadIdManager5alloc.exit
  %i.bm = atomicrmw xchg ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i32 0 release, align 4
  %i.bn = icmp eq i32 %i.bm, 2
  br i1 %i.bn, label %bb.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEEB1A_.exit, !prof !12

bb.r:                                             ; preds = %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEEB1A_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEEB1A_.exit: ; preds = %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.r
  store i64 1, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.bo = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs1bZVCNcVUvD_12thread_local9thread_id12THREAD_GUARD0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !range !58, !noundef !8
  switch i8 %i.bq, label %default.unreachable [
    i8 0, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCs1bZVCNcVUvD_12thread_local9thread_id11ThreadGuardE4withNCNvBW_8get_slow0uEBY_.exit
    i8 2, label %bb.t
    i8 1, label %bb.s
  ], !prof !59

default.unreachable:                              ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEEB1A_.exit
  unreachable

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEEB1A_.exit
  tail call void @_RNvNtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bo, ptr noundef nonnull @_RINvNtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native5eager7destroyNtNtCs1bZVCNcVUvD_12thread_local9thread_id11ThreadGuardEB19_)
  store i8 0, ptr %i.bp, align 8
  br label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCs1bZVCNcVUvD_12thread_local9thread_id11ThreadGuardE4withNCNvBW_8get_slow0uEBY_.exit

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEEB1A_.exit
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23
  unreachable

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCs1bZVCNcVUvD_12thread_local9thread_id11ThreadGuardE4withNCNvBW_8get_slow0uEBY_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEEB1A_.exit, %bb.s
  store i64 %.sroa.0.0.i, ptr %i.bo, align 8
  ret void
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop() unnamed_addr #5 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call fastcc noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs1bZVCNcVUvD_12thread_local(ptr noalias nofree noundef nonnull %i.a)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1bZVCNcVUvD_12thread_local(ptr %i.b)
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCs1bZVCNcVUvD_12thread_local9thread_idNtB5_11ThreadGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs1bZVCNcVUvD_12thread_local9thread_id6THREAD0s_023___RUST_STD_INTERNAL_VAL)
  store i64 0, ptr %i.b, align 8
  %i.c = cmpxchg ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i32 0, i32 1 acquire monotonic, align 4, !noalias !60
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER), !noalias !60
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !60
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() #17, !noalias !60
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_.exit

_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.k = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, i64 4) monotonic, align 4, !noalias !60
  %.not.i.i.not = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.not, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  store ptr @_RNvNtCs1bZVCNcVUvD_12thread_local9thread_id17THREAD_ID_MANAGER, ptr %i.a, align 8, !noalias !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.l, align 8, !noalias !63
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20
          to label %bb.g unwind label %bb.f, !noalias !67

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs1bZVCNcVUvD_12thread_local
define internal fastcc noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs1bZVCNcVUvD_12thread_local(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.119, %bb.k ] ; 3 uses
  %.sroa.6.039 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.117, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXs3_NtNtNtCscAsMj0W7j8b_3std3sys5stdio4unixNtB5_6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write5write(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef %.sroa.6.039) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split26
    i64 0, label %.split27
    i64 1, label %.split
  ], !prof !4

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !92

.split26:                                         ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.s, label %bb.i, label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split27:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !93, !noundef !8
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread, label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !93, !noundef !8
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.6.039, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.6.039, i64 noundef %.sroa.6.039, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %.sroa.6.039, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %i.g
  br label %bb.k

_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.o, label %.thread.thread, label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge: ; preds = %bb.k, %bb.e, %.split27, %.split26, %.split, %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ @11, %bb.e ], [ %i.f, %.split27 ], [ %i.f, %.split26 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1bZVCNcVUvD_12thread_local.exit

bb.i:                                             ; preds = %.split26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1bZVCNcVUvD_12thread_local.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !94
  store i8 3, ptr %i.a, align 8, !alias.scope !94
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1bZVCNcVUvD_12thread_local.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1bZVCNcVUvD_12thread_local.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1bZVCNcVUvD_12thread_local.exit
  %.sroa.0.119 = phi ptr [ %.sroa.0.040, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1bZVCNcVUvD_12thread_local.exit ], [ %i.ac, %bb.h ]
  %.sroa.6.117 = phi i64 [ %.sroa.6.039, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1bZVCNcVUvD_12thread_local.exit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.6.117, 0
  br i1 %i.ah, label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1bZVCNcVUvD_12thread_local(ptr nonnull %i.f) #22
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs1bZVCNcVUvD_12thread_local(ptr noalias nofree noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs1bZVCNcVUvD_12thread_local(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 61)
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCscAsMj0W7j8b_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local11destructors10linux_like8register(ptr noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCscAsMj0W7j8b_3std7process5abort() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCscAsMj0W7j8b_3std3sys5stdio4unixNtB5_6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write5write(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noinline }
attributes #18 = { inlinehint }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind }
attributes #22 = { cold }
attributes #23 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1bZVCNcVUvD_12thread_local: argument 0"}
!7 = distinct !{!7, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1bZVCNcVUvD_12thread_local"}
!8 = !{}
!9 = !{i64 8}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1bZVCNcVUvD_12thread_local: argument 0"}
!15 = distinct !{!15, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1bZVCNcVUvD_12thread_local"}
!16 = !{i64 0, i64 -9223372036854775808}
!17 = !{!"branch_weights", i32 2000, i32 2002}
!18 = !{i64 0, i64 2}
!19 = !{i64 0, i64 -9223372036854775807}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_: argument 0"}
!22 = distinct !{!22, !"_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_"}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 0"}
!25 = distinct !{!25, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_"}
!26 = distinct !{!26, !25, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 1"}
!27 = !{!24}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RNvMNtCs1bZVCNcVUvD_12thread_local9thread_idNtB2_15ThreadIdManager5alloc: argument 0"}
!30 = distinct !{!30, !"_RNvMNtCs1bZVCNcVUvD_12thread_local9thread_idNtB2_15ThreadIdManager5alloc"}
!31 = !{i64 -1, i64 -9223372036854775808}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE3popCs1bZVCNcVUvD_12thread_local: argument 0"}
!34 = distinct !{!34, !"_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE3popCs1bZVCNcVUvD_12thread_local"}
!35 = !{!33, !29}
!36 = !{!37, !39, !33, !29}
!37 = distinct !{!37, !38, !"_RNvXsc_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_4HoleINtNtCshzWfHUSfYae_4core3cmp7ReversejEENtNtNtB19_3ops4drop4Drop4dropCs1bZVCNcVUvD_12thread_local: argument 0"}
!38 = distinct !{!38, !"_RNvXsc_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_4HoleINtNtCshzWfHUSfYae_4core3cmp7ReversejEENtNtNtB19_3ops4drop4Drop4dropCs1bZVCNcVUvD_12thread_local"}
!39 = distinct !{!39, !40, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1bZVCNcVUvD_12thread_local: argument 0"}
!40 = distinct !{!40, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1bZVCNcVUvD_12thread_local"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!43 = distinct !{!43, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3cmp5implsjNtB7_10PartialOrd2le"}
!44 = !{!45, !33, !29}
!45 = distinct !{!45, !43, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!48 = distinct !{!48, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3cmp5implsjNtB7_10PartialOrd2le"}
!49 = !{!50, !33, !29}
!50 = distinct !{!50, !48, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!51 = !{!50}
!52 = !{!47, !33, !29}
!53 = !{!54, !56, !33, !29}
!54 = distinct !{!54, !55, !"_RNvXsc_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_4HoleINtNtCshzWfHUSfYae_4core3cmp7ReversejEENtNtNtB19_3ops4drop4Drop4dropCs1bZVCNcVUvD_12thread_local: argument 0"}
!55 = distinct !{!55, !"_RNvXsc_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_4HoleINtNtCshzWfHUSfYae_4core3cmp7ReversejEENtNtNtB19_3ops4drop4Drop4dropCs1bZVCNcVUvD_12thread_local"}
!56 = distinct !{!56, !57, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1bZVCNcVUvD_12thread_local: argument 0"}
!57 = distinct !{!57, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1bZVCNcVUvD_12thread_local"}
!58 = !{i8 0, i8 3}
!59 = !{!"branch_weights", i32 1, i32 6000, i32 1, i32 1}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_: argument 0"}
!62 = distinct !{!62, !"_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerE4lockB11_"}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 0"}
!65 = distinct !{!65, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_"}
!66 = distinct !{!66, !65, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtCs1bZVCNcVUvD_12thread_local9thread_id15ThreadIdManagerEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 1"}
!67 = !{!64}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RNvMNtCs1bZVCNcVUvD_12thread_local9thread_idNtB2_15ThreadIdManager4free: argument 0"}
!70 = distinct !{!70, !"_RNvMNtCs1bZVCNcVUvD_12thread_local9thread_idNtB2_15ThreadIdManager4free"}
!71 = !{!72, !69}
!72 = distinct !{!72, !73, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtNtCsbSS6DM8SDEO_5alloc11collections11binary_heap10BinaryHeapINtNtB5_3cmp7ReversejEEE18get_or_insert_withNvMs7_BL_BI_3newECs1bZVCNcVUvD_12thread_local: argument 0"}
!73 = distinct !{!73, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtNtCsbSS6DM8SDEO_5alloc11collections11binary_heap10BinaryHeapINtNtB5_3cmp7ReversejEEE18get_or_insert_withNvMs7_BL_BI_3newECs1bZVCNcVUvD_12thread_local"}
!74 = !{!75, !69}
!75 = distinct !{!75, !76, !"_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE4pushCs1bZVCNcVUvD_12thread_local: argument 0"}
!76 = distinct !{!76, !"_RNvMs9_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCshzWfHUSfYae_4core3cmp7ReversejEE4pushCs1bZVCNcVUvD_12thread_local"}
!77 = !{!75}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCshzWfHUSfYae_4core3cmp7ReversejEE8push_mutCs1bZVCNcVUvD_12thread_local: argument 0"}
!80 = distinct !{!80, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCshzWfHUSfYae_4core3cmp7ReversejEE8push_mutCs1bZVCNcVUvD_12thread_local"}
!81 = !{!79, !75, !69}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!84 = distinct !{!84, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3cmp5implsjNtB7_10PartialOrd2le"}
!85 = !{!86, !75, !69}
!86 = distinct !{!86, !84, !"_RNvXsU_NtNtCshzWfHUSfYae_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!87 = !{!88, !90, !75, !69}
!88 = distinct !{!88, !89, !"_RNvXsc_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_4HoleINtNtCshzWfHUSfYae_4core3cmp7ReversejEENtNtNtB19_3ops4drop4Drop4dropCs1bZVCNcVUvD_12thread_local: argument 0"}
!89 = distinct !{!89, !"_RNvXsc_NtNtCsbSS6DM8SDEO_5alloc11collections11binary_heapINtB5_4HoleINtNtCshzWfHUSfYae_4core3cmp7ReversejEENtNtNtB19_3ops4drop4Drop4dropCs1bZVCNcVUvD_12thread_local"}
!90 = distinct !{!90, !91, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1bZVCNcVUvD_12thread_local: argument 0"}
!91 = distinct !{!91, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc11collections11binary_heap4HoleINtNtB4_3cmp7ReversejEEECs1bZVCNcVUvD_12thread_local"}
!92 = distinct !{null}
!93 = !{i8 0, i8 44}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1bZVCNcVUvD_12thread_local: argument 0"}
!96 = distinct !{!96, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs1bZVCNcVUvD_12thread_local"}
end_hunk_1
