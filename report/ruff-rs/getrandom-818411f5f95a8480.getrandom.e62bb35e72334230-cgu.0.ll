Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/getrandom-818411f5f95a8480.getrandom.e62bb35e72334230-cgu.0?download=true
inline.NumInlined: 105
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic11atomic_loadjECsjLbYUzW30kK_9getrandom:bb.a
  %i.b = load atomic i64, ptr %0 acquire, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @3, ptr nonnull inttoptr (i64 99 to ptr), ptr nonnull align 8 @4) #22
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr %0 seq_cst, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c
  %.sroa.0.0 = phi i64 [ %i.a, %bb.c ], [ %i.b, %bb.e ], [ %i.c, %bb.g ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic12atomic_storejECsjLbYUzW30kK_9getrandom(ptr nofree captures(none) %0, i64 %1, i8 %2) unnamed_addr #5 {
bb.a:
  switch i8 %2, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store atomic i64 %1, ptr %0 monotonic, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  store atomic i64 %1, ptr %0 release, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @5, ptr nonnull inttoptr (i64 85 to ptr), ptr nonnull align 8 @6) #22
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @7, ptr nonnull inttoptr (i64 101 to ptr), ptr nonnull align 8 @8) #22
  unreachable

bb.g:                                             ; preds = %bb.a
  store atomic i64 %1, ptr %0 seq_cst, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsjLbYUzW30kK_9getrandom5error6os_err0EB1M_(ptr nofree align 8 captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.c = icmp eq ptr %.promoted, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.02.07 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.e, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8
  %.val = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %.val, 0
  br i1 %i.f, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.sroa.02.07, 1
  %i.h = icmp eq ptr %i.e, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.02.07, %.lr.ph ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE8is_emptyCsjLbYUzW30kK_9getrandom(ptr nofree readnone captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh4iterCsjLbYUzW30kK_9getrandom(ptr %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionjE9unwrap_orCsjLbYUzW30kK_9getrandom(i64 %0, i64 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = trunc nuw i64 %0 to i1
  %. = select i1 %i.a, i64 %1, i64 %2
  ret i64 %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE2okCsjLbYUzW30kK_9getrandom(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterhE3newCsjLbYUzW30kK_9getrandom(ptr %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define range(i32 1, 0) i32 @_RNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZeromE13new_uncheckedCsjLbYUzW30kK_9getrandom(i32 returned %0, ptr align 8 %1) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret i32 %0

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCsjLbYUzW30kK_9getrandom(ptr align 8 %1) #21
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i32 @_RNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZeromE3getCsjLbYUzW30kK_9getrandom(i32 returned %0) unnamed_addr #0 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i32 @_RNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZeromE3newCsjLbYUzW30kK_9getrandom(i32 returned %0) unnamed_addr #0 {
bb.a:
  ret i32 %0
}

; Function Attrs: nounwind nonlazybind uwtable
define range(i32 0, -2147483645) i32 @_RNvNtCsjLbYUzW30kK_9getrandom3imp15getrandom_inner(ptr %0, i64 %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 8 uses
  %i.b = load atomic i64, ptr @_RNvNvNtCsjLbYUzW30kK_9getrandom3imp15getrandom_inner13HAS_GETRANDOM.0 monotonic, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %_RINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB5_8LazyBool11unsync_initNvNtB7_3imp22is_getrandom_availableEB7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 (i64, ...) @syscall(i64 318, ptr nonnull inttoptr (i64 1 to ptr), i64 0, i32 0) #21
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_RNCINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB7_8LazyBool11unsync_initNvNtB9_3imp22is_getrandom_availableE0B9_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #21
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNCINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB7_8LazyBool11unsync_initNvNtB9_3imp22is_getrandom_availableE0B9_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %switch.selectcmp.case1.i.i.i.i.i = icmp ne i32 %i.g, 38
  %switch.selectcmp.case2.i.i.i.i.i = icmp ne i32 %i.g, 1
  %switch.selectcmp.not.i.i.i.i.i = and i1 %switch.selectcmp.case1.i.i.i.i.i, %switch.selectcmp.case2.i.i.i.i.i
  %i.i = zext i1 %switch.selectcmp.not.i.i.i.i.i to i64
  br label %_RNCINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB7_8LazyBool11unsync_initNvNtB9_3imp22is_getrandom_availableE0B9_.exit.i.i

_RNCINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB7_8LazyBool11unsync_initNvNtB9_3imp22is_getrandom_availableE0B9_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.i, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 2 uses
  store atomic i64 %.sroa.0.0.i.i.i.i.i, ptr @_RNvNvNtCsjLbYUzW30kK_9getrandom3imp15getrandom_inner13HAS_GETRANDOM.0 monotonic, align 8
  br label %_RINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB5_8LazyBool11unsync_initNvNtB7_3imp22is_getrandom_availableEB7_.exit

_RINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB5_8LazyBool11unsync_initNvNtB7_3imp22is_getrandom_availableEB7_.exit: ; preds = %bb.a, %_RNCINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB7_8LazyBool11unsync_initNvNtB9_3imp22is_getrandom_availableE0B9_.exit.i.i
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNCINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB7_8LazyBool11unsync_initNvNtB9_3imp22is_getrandom_availableE0B9_.exit.i.i ], [ %i.b, %bb.a ]
  %.not = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not, label %bb.e, label %2

bb.e:                                             ; preds = %_RINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB5_8LazyBool11unsync_initNvNtB7_3imp22is_getrandom_availableEB7_.exit
  %i.j = load atomic i64, ptr @_RNvNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd2FD.0 monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, -1
  %i.k = trunc i64 %i.j to i32
  br i1 %.not.i.i, label %bb.f, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @pthread_mutex_lock(ptr nonnull @_RNvNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd5MUTEX) #21 ; 0 uses
  %i.m = load atomic i64, ptr @_RNvNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd2FD.0 monotonic, align 8 ; 2 uses
  %.not32.i.i = icmp eq i64 %i.m, -1
  %i.n = trunc i64 %i.m to i32
  br i1 %.not32.i.i, label %bb.g, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i.i.i, %bb.g
  %i.o = tail call i32 (ptr, i32, ...) @open(ptr nonnull @23, i32 524288) #21 ; 4 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @__errno_location() #21
  %i.r = load i32, ptr %i.q, align 4              ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i.i.i, label %.loopexit.sink.split.i.i

_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.r, 4
  br i1 %.not.i.i.i.i, label %bb.h, label %.loopexit.sink.split.i.i

bb.j:                                             ; preds = %bb.h
  store i32 %i.o, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 1, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 0, ptr %i.u, align 2
  %i.v = call i32 @poll(ptr nonnull %i.a, i64 1, i32 -1) #21
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %.loopexit33.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.backedge.i.i.i
  %i.x = call ptr @__errno_location() #21
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i
  switch i32 %i.y, label %bb.l [
    i32 4, label %.backedge.i.i.i
    i32 11, label %.backedge.i.i.i
  ]

.backedge.i.i.i:                                  ; preds = %bb.k, %bb.k
  %i.aa = call i32 @poll(ptr nonnull %i.a, i64 1, i32 -1) #21
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %.loopexit33.i.i, label %.lr.ph.i.i.i

.loopexit.sink.split.i.i:                         ; preds = %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i.i.i, %bb.i, %bb.l
  %.pn31.ph.i.i = phi i32 [ %.sroa.0.0.i15.i.i, %bb.l ], [ -2147483647, %bb.i ], [ %i.r, %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread35.i

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.sroa.0.0.i15.i.i = phi i32 [ -2147483647, %.lr.ph.i.i.i ], [ %i.y, %bb.k ]
  %i.ac = call i32 @close(i32 %i.o) #21           ; 0 uses
  br label %.loopexit.sink.split.i.i

.loopexit33.i.i:                                  ; preds = %.backedge.i.i.i, %bb.j
  %i.ad = call i32 @close(i32 %i.o) #21           ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i.i, %.loopexit33.i.i
  %i.ae = call i32 (ptr, i32, ...) @open(ptr nonnull @22, i32 524288) #21 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = call ptr @__errno_location() #21
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i.i, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread35.i

_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i.i: ; preds = %bb.n
  %.not.i.i.i = icmp eq i32 %i.ah, 4
  br i1 %.not.i.i.i, label %bb.m, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread35.i

bb.o:                                             ; preds = %bb.m
  %i.aj = zext nneg i32 %i.ae to i64
  store atomic i64 %i.aj, ptr @_RNvNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd2FD.0 monotonic, align 8
  br label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.i

_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread35.i: ; preds = %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i.i, %bb.n, %.loopexit.sink.split.i.i
  %.sroa.6.0.ph.i.ph.i = phi i32 [ %.pn31.ph.i.i, %.loopexit.sink.split.i.i ], [ -2147483647, %bb.n ], [ %i.ah, %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i.i ]
  %i.ak = call i32 @pthread_mutex_unlock(ptr nonnull @_RNvNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd5MUTEX) #21 ; 0 uses
  br label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit

_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.i: ; preds = %bb.o, %bb.f
  %.sroa.6.0.ph.i.i = phi i32 [ %i.ae, %bb.o ], [ %i.n, %bb.f ]
  %i.al = call i32 @pthread_mutex_unlock(ptr nonnull @_RNvNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd5MUTEX) #21 ; 0 uses
  br label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread.i

_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread.i: ; preds = %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.i, %bb.e
  %.sroa.6.0.i9.i = phi i32 [ %.sroa.6.0.ph.i.i, %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.i ], [ %i.k, %bb.e ]
  %i.am = icmp eq i64 %1, 0
  br i1 %i.am, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit, label %.outer.split.i.preheader.i

.outer.split.i.preheader.i:                       ; preds = %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread.i, %.outer.i.i
  %.sroa.0.0.ph.i418.i = phi ptr [ %i.au, %.outer.i.i ], [ %0, %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread.i ] ; 2 uses
  %.sroa.5.0.ph.i17.i = phi i64 [ %i.av, %.outer.i.i ], [ %1, %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread.i ] ; 3 uses
  br label %.outer.split.i.i

.outer.split.i.i:                                 ; preds = %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i, %.outer.split.i.preheader.i
  %i.an = call noundef i64 @read(i32 %.sroa.6.0.i9.i, ptr %.sroa.0.0.ph.i418.i, i64 %.sroa.5.0.ph.i17.i) #21 ; 5 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.outer.split.i.i
  %i.ap = icmp eq i64 %i.an, -1
  br i1 %i.ap, label %bb.r, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit

bb.q:                                             ; preds = %.outer.split.i.i
  %i.aq = icmp ult i64 %.sroa.5.0.ph.i17.i, %i.an
  br i1 %i.aq, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit, label %.outer.i.i

bb.r:                                             ; preds = %bb.p
  %i.ar = call ptr @__errno_location() #21
  %i.as = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit

_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i: ; preds = %bb.r
  %.not.i5.i = icmp eq i32 %i.as, 4
  br i1 %.not.i5.i, label %.outer.split.i.i, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit

.outer.i.i:                                       ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i418.i, i64 %i.an
  %i.av = sub nuw i64 %.sroa.5.0.ph.i17.i, %i.an  ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit, label %.outer.split.i.preheader.i

2:                                                ; preds = %_RINvMs_NtCsjLbYUzW30kK_9getrandom4lazyNtB5_8LazyBool11unsync_initNvNtB7_3imp22is_getrandom_availableEB7_.exit
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit, label %.outer.split.i.preheader

.outer.split.i.preheader:                         ; preds = %2, %.outer.i
  %.sroa.0.0.ph.i15 = phi ptr [ %i.be, %.outer.i ], [ %0, %2 ] ; 2 uses
  %.sroa.5.0.ph.i14 = phi i64 [ %i.bf, %.outer.i ], [ %1, %2 ] ; 3 uses
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i, %.outer.split.i.preheader
  %i.ax = tail call i64 (i64, ...) @syscall(i64 318, ptr %.sroa.0.0.ph.i15, i64 %.sroa.5.0.ph.i14, i32 0) #21 ; 5 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.outer.split.i
  %i.az = icmp eq i64 %i.ax, -1
  br i1 %i.az, label %bb.u, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit

bb.t:                                             ; preds = %.outer.split.i
  %i.ba = icmp ult i64 %.sroa.5.0.ph.i14, %i.ax
  br i1 %i.ba, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit, label %.outer.i

bb.u:                                             ; preds = %bb.s
  %i.bb = tail call ptr @__errno_location() #21
  %i.bc = load i32, ptr %i.bb, align 4            ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit

_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i: ; preds = %bb.u
  %.not.i = icmp eq i32 %i.bc, 4
  br i1 %.not.i, label %.outer.split.i, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit

.outer.i:                                         ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i15, i64 %i.ax
  %i.bf = sub nuw i64 %.sroa.5.0.ph.i14, %i.ax    ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit, label %.outer.split.i.preheader

_RNvNtCsjLbYUzW30kK_9getrandom8use_file15getrandom_inner.exit: ; preds = %.outer.i, %bb.t, %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i, %bb.u, %bb.s, %.outer.i.i, %bb.q, %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i, %bb.r, %bb.p, %2, %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread.i, %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread35.i
  %.sroa.0.0 = phi i32 [ 0, %2 ], [ %.sroa.6.0.ph.i.ph.i, %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread35.i ], [ 0, %_RNvNtCsjLbYUzW30kK_9getrandom8use_file10get_rng_fd.exit.thread.i ], [ 0, %.outer.i.i ], [ %i.bc, %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i ], [ -2147483646, %bb.p ], [ -2147483647, %bb.r ], [ %i.as, %_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionlENtNtB7_3cmp9PartialEq2neCsjLbYUzW30kK_9getrandom.exit.i.i ], [ -2147483646, %bb.q ], [ -2147483646, %bb.s ], [ -2147483647, %bb.u ], [ 0, %.outer.i ], [ -2147483646, %bb.t ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i32 -2147483648, -2147418112) i32 @_RNvNtCsjLbYUzW30kK_9getrandom5error14internal_error(i16 %0) unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = or disjoint i32 %i.a, -2147483648
  ret i32 %i.b
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal fastcc void @_RNvNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCsjLbYUzW30kK_9getrandom(ptr align 8 %0) unnamed_addr #9 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_nounwind_fmt(ptr nonnull @24, ptr nonnull inttoptr (i64 419 to ptr), i1 zeroext false, ptr align 8 %0) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvXNtCsjLbYUzW30kK_9getrandom11error_implsNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtB4_5error5ErrorE4from(i32 %0) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = shl nuw nsw i64 %i.b, 32
  %i.d = or disjoint i64 %i.c, 2
  %i.e = inttoptr i64 %i.d to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newNtNtCsjLbYUzW30kK_9getrandom5error5ErrorEBU_(i8 40, i32 %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs0_NtCsjLbYUzW30kK_9getrandom5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [128 x i8], align 16              ; 11 uses
  %i.f = alloca [4 x i8], align 4                 ; 2 uses
  %i.g = load i32, ptr %0, align 4                ; 6 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.f, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = call i32 @__xpg_strerror_r(i32 %i.g, ptr nonnull %i.e, i64 128) #21
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %vector.body, label %_RNvNtCsjLbYUzW30kK_9getrandom5error6os_err.exit.thread

vector.body:                                      ; preds = %bb.b
  %wide.load = load <16 x i8>, ptr %i.e, align 16
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.j = icmp eq <16 x i8> %wide.load.fr, zeroinitializer ; 2 uses
  %i.k = bitcast <16 x i1> %i.j to i16
  %.not = icmp eq i16 %i.k, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.l, align 16
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1
  %i.m = icmp eq <16 x i8> %wide.load.fr.1, zeroinitializer ; 2 uses
  %i.n = bitcast <16 x i1> %i.m to i16
  %.not.1 = icmp eq i16 %i.n, 0
  br i1 %.not.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.o, align 16
  %wide.load.fr.2 = freeze <16 x i8> %wide.load.2
  %i.p = icmp eq <16 x i8> %wide.load.fr.2, zeroinitializer ; 2 uses
  %i.q = bitcast <16 x i1> %i.p to i16
  %.not.2 = icmp eq i16 %i.q, 0
  br i1 %.not.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %wide.load.3 = load <16 x i8>, ptr %i.r, align 16
  %wide.load.fr.3 = freeze <16 x i8> %wide.load.3
  %i.s = icmp eq <16 x i8> %wide.load.fr.3, zeroinitializer ; 2 uses
  %i.t = bitcast <16 x i1> %i.s to i16
  %.not.3 = icmp eq i16 %i.t, 0
  br i1 %.not.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %wide.load.4 = load <16 x i8>, ptr %i.u, align 16
  %wide.load.fr.4 = freeze <16 x i8> %wide.load.4
  %i.v = icmp eq <16 x i8> %wide.load.fr.4, zeroinitializer ; 2 uses
  %i.w = bitcast <16 x i1> %i.v to i16
  %.not.4 = icmp eq i16 %i.w, 0
  br i1 %.not.4, label %vector.body.interim.4, label %vector.early.exit

vector.body.interim.4:                            ; preds = %vector.body.interim.3
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %wide.load.5 = load <16 x i8>, ptr %i.x, align 16
  %wide.load.fr.5 = freeze <16 x i8> %wide.load.5
  %i.y = icmp eq <16 x i8> %wide.load.fr.5, zeroinitializer ; 2 uses
  %i.z = bitcast <16 x i1> %i.y to i16
  %.not.5 = icmp eq i16 %i.z, 0
  br i1 %.not.5, label %vector.body.interim.5, label %vector.early.exit

vector.body.interim.5:                            ; preds = %vector.body.interim.4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %wide.load.6 = load <16 x i8>, ptr %i.aa, align 16
  %wide.load.fr.6 = freeze <16 x i8> %wide.load.6
  %i.ab = icmp eq <16 x i8> %wide.load.fr.6, zeroinitializer ; 2 uses
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %.not.6 = icmp eq i16 %i.ac, 0
  br i1 %.not.6, label %vector.body.interim.6, label %vector.early.exit

vector.body.interim.6:                            ; preds = %vector.body.interim.5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %wide.load.7 = load <16 x i8>, ptr %i.ad, align 16
  %wide.load.fr.7 = freeze <16 x i8> %wide.load.7
  %i.ae = icmp eq <16 x i8> %wide.load.fr.7, zeroinitializer ; 2 uses
  %i.af = bitcast <16 x i1> %i.ae to i16
  %.not.7 = icmp eq i16 %i.af, 0
  br i1 %.not.7, label %_RNvXs4_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsjLbYUzW30kK_9getrandom.exit.i, label %vector.early.exit

vector.early.exit:                                ; preds = %vector.body.interim.6, %vector.body.interim.5, %vector.body.interim.4, %vector.body.interim.3, %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim, %vector.body
  %index.lcssa = phi i64 [ 0, %vector.body ], [ 16, %vector.body.interim ], [ 32, %vector.body.interim.1 ], [ 48, %vector.body.interim.2 ], [ 64, %vector.body.interim.3 ], [ 80, %vector.body.interim.4 ], [ 96, %vector.body.interim.5 ], [ 112, %vector.body.interim.6 ]
  %.lcssa = phi <16 x i1> [ %i.j, %vector.body ], [ %i.m, %vector.body.interim ], [ %i.p, %vector.body.interim.1 ], [ %i.s, %vector.body.interim.2 ], [ %i.v, %vector.body.interim.3 ], [ %i.y, %vector.body.interim.4 ], [ %i.ab, %vector.body.interim.5 ], [ %i.ae, %vector.body.interim.6 ]
  %i.ag = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa, i1 false)
  %i.ah = add i64 %index.lcssa, %i.ag
  br label %_RNvXs4_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsjLbYUzW30kK_9getrandom.exit.i

_RNvXs4_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsjLbYUzW30kK_9getrandom.exit.i: ; preds = %vector.body.interim.6, %vector.early.exit
  %..i6.i = phi i64 [ %i.ah, %vector.early.exit ], [ 128, %vector.body.interim.6 ]
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull %i.e, i64 %..i6.i)
  %i.ai = load i64, ptr %i.a, align 8
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load i64, ptr %i.am, align 8
  br i1 %i.aj, label %_RNvNtCsjLbYUzW30kK_9getrandom5error6os_err.exit.thread, label %_RNvNtCsjLbYUzW30kK_9getrandom5error6os_err.exit

_RNvNtCsjLbYUzW30kK_9getrandom5error6os_err.exit.thread: ; preds = %bb.b, %_RNvXs4_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsjLbYUzW30kK_9getrandom.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

_RNvNtCsjLbYUzW30kK_9getrandom5error6os_err.exit: ; preds = %_RNvXs4_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsjLbYUzW30kK_9getrandom.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not10 = icmp eq ptr %i.al, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %switch.tableidx = and i32 %i.g, 2147483647     ; 3 uses
  %i.ao = icmp samesign ult i32 %switch.tableidx, 15
  %switch.maskindex = trunc i32 %i.g to i16
  %switch.shifted = lshr i16 31231, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.ao, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.f

bb.d:                                             ; preds = %_RNvNtCsjLbYUzW30kK_9getrandom5error6os_err.exit
  %i.ap = call zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr nonnull %i.al, i64 %i.an, ptr align 8 %1)
  br label %_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_fmtCsjLbYUzW30kK_9getrandom.exit

bb.e:                                             ; preds = %_RNvNtCsjLbYUzW30kK_9getrandom5error6os_err.exit.thread, %_RNvNtCsjLbYUzW30kK_9getrandom5error6os_err.exit
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aq = load ptr, ptr %1, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr %i.aq, ptr align 8 %i.as, ptr nonnull @25, ptr nonnull %i.d)
  br label %_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_fmtCsjLbYUzW30kK_9getrandom.exit

_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_fmtCsjLbYUzW30kK_9getrandom.exit: ; preds = %bb.f, %bb.e, %switch.lookup, %bb.d
  %.sroa.0.0.in = phi i1 [ %i.ap, %bb.d ], [ %i.at, %bb.e ], [ %i.aw, %switch.lookup ], [ %i.ba, %bb.f ]
  ret i1 %.sroa.0.0.in

switch.lookup:                                    ; preds = %bb.c
  %i.au = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtCsjLbYUzW30kK_9getrandom5errorNtB4_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.au
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.av = zext nneg i32 %switch.tableidx to i64
  %switch.gep30 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtCsjLbYUzW30kK_9getrandom5errorNtB4_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.15, i64 %i.av
  %switch.load31 = load ptr, ptr %switch.gep30, align 8
  %i.aw = tail call zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull %switch.load31, i64 %switch.ext)
  br label %_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_fmtCsjLbYUzW30kK_9getrandom.exit

bb.f:                                             ; preds = %bb.c
  store i32 %i.g, ptr %i.c, align 4
  store ptr %i.c, ptr %i.b, align 8
end_hunk_0
