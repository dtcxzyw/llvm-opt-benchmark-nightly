Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.12?download=true
inline.NumInlined: 624
inline.NumDeleted: 314
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirE8as_sliceCs98D8VPWzHuM_14regex_automata:bb.a
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3newBb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1448) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 64               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 8, i1 noundef zeroext false, i64 noundef 64, i64 noundef 64)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.w, %.body ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB2W_10UnwindSafeNtB2D_4SyncEL_EEB1Q_(ptr nonnull %1, ptr nonnull %2) #29
          to label %bb.o unwind label %bb.m

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !23, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #27
          to label %bb.n unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp samesign ugt i64 %i.h, 7
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.510.sroa.3.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.h

bb.g:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %bb.f, %bb.l
  %i.s = phi ptr [ %i.k, %bb.f ], [ %i.y, %bb.l ]
  %i.t = phi i64 [ 0, %bb.f ], [ %i.aa, %bb.l ]   ; 3 uses
  %.sroa.017.022 = phi i64 [ 0, %bb.f ], [ %i.ab, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 64
  store i8 0, ptr %.sroa.49.0..sroa_idx, align 4
  store i64 0, ptr %.sroa.510.sroa.3.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, align 16
  store i64 0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.u = load i64, ptr %i.c, align 8, !range !18, !alias.scope !636, !noalias !637, !noundef !5
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBU_4meta5regex5CacheEEEEE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge unwind label %bb.j, !noalias !637

._crit_edge:                                      ; preds = %bb.i
  %.pre = load ptr, ptr %i.m, align 8, !alias.scope !636, !noalias !637
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEEBK_(ptr noalias noundef nonnull align 64 dereferenceable(64) %i.b) #29
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %bb.j
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1g_4meta5regex5CacheEEEEEEB1g_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.b unwind label %bb.m

bb.l:                                             ; preds = %._crit_edge, %bb.h
  %i.y = phi ptr [ %.pre, %._crit_edge ], [ %i.s, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.z, ptr noundef nonnull align 64 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.aa = add i64 %i.t, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.n, align 8, !alias.scope !636, !noalias !637
  %i.ab = add nuw nsw i64 %.sroa.017.022, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %bb.g, label %bb.h

bb.m:                                             ; preds = %bb.b, %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %bb.e
  unreachable

bb.o:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex12create_cache(ptr dead_on_unwind noalias noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !12, !invariant.load !5
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.m(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef nonnull %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !12, !invariant.load !5
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !nonnull !5
  %i.n = tail call noundef nonnull align 8 ptr %i.m(ptr noundef nonnull %i.k)
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures3all(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.o)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir10repetition(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc nuw i64 %i.f to i1
  %i.j = icmp eq i64 %i.h, 0
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  br i1 %or.cond, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.c
  %i.m = phi i32 [ %.sroa.0.0.i, %bb.c ], [ %i.l, %bb.a ]
  switch i32 %i.m, label %.thread [
    i32 0, label %2
    i32 1, label %5
  ]

bb.b:                                             ; preds = %.thread, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir10RepetitionECs98D8VPWzHuM_14regex_automata.exit unwind label %bb.l, !inline_history !1

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ne i32 %i.l, 0
  %.sroa.0.0.i = zext i1 %i.o to i32              ; 2 uses
  store i32 %.sroa.0.0.i, ptr %i.k, align 8
  %i.p = load i32, ptr %1, align 8, !range !24, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.r = trunc nuw i32 %i.p to i1
  %i.s = load i32, ptr %i.q, align 4
  %i.t = icmp ne i32 %i.s, 0
  %not. = xor i1 %i.r, true
  %narrow = select i1 %not., i1 true, i1 %i.t
  %.sroa.3.0 = zext i1 %narrow to i32
  store i32 1, ptr %1, align 8
  store i32 %.sroa.3.0, ptr %i.q, align 4
  br label %._crit_edge

2:                                                ; preds = %._crit_edge
  %3 = load i32, ptr %1, align 8, !range !24, !noundef !5
  %4 = trunc nuw i32 %3 to i1
  br i1 %4, label %bb.d, label %.thread

bb.d:                                             ; preds = %2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !noundef !5
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = invoke noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties5empty()
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  store i64 2, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8
  invoke void @_RNvXsm_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3HirNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.h unwind label %bb.g, !inline_history !19

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir7HirKindECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #29
          to label %.body unwind label %bb.j, !inline_history !19

bb.h:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir7HirKindECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir3HirECs98D8VPWzHuM_14regex_automata.exit unwind label %bb.i, !inline_history !19

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !inline_history !19
  unreachable

.body:                                            ; preds = %bb.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.z, %bb.g ]
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !640, !nonnull !5, !noundef !5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #30, !inline_history !19
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir10RepetitionECs98D8VPWzHuM_14regex_automata.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir3HirECs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.h
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !640, !nonnull !5, !noundef !5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #30, !inline_history !19
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir3HirECs98D8VPWzHuM_14regex_automata.exit, %bb.n
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #30
  br label %bb.o

bb.l:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir10RepetitionECs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.b, %.body
  %.pn = phi { ptr, i32 } [ %.pn.i, %.body ], [ %i.n, %bb.b ]
  resume { ptr, i32 } %.pn

5:                                                ; preds = %._crit_edge
  %6 = load i32, ptr %1, align 8, !range !24, !noundef !5
  %7 = trunc nuw i32 %6 to i1
  br i1 %7, label %bb.m, label %.thread

bb.m:                                             ; preds = %5
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !5
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.n, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.d, %2, %5, %bb.m
  %i.ag = invoke noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties10repetition(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.p unwind label %bb.b

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  br label %bb.k

bb.o:                                             ; preds = %bb.p, %bb.k
  ret void

bb.p:                                             ; preds = %.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 6, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ag, ptr %i.ah, align 8
  br label %bb.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo12memory_usage(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = mul i64 %i.c, 80
  %i.e = add i64 %i.d, 80
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo3new(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 8 uses
  %.sroa.02 = alloca [152 x i8], align 8          ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.idx = shl nuw nsw i64 %2, 3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesE8push_mutCs98D8VPWzHuM_14regex_automata.exit
  %.sroa.0.018 = phi ptr [ %i.g, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesE8push_mutCs98D8VPWzHuM_14regex_automata.exit ], [ %1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 8 ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.018, align 8, !nonnull !5, !align !9, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.val = load ptr, ptr %i.i, align 8             ; 10 uses
  %i.j = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCs79ICTHwG85D_12regex_syntax3hir11PropertiesIE13new_uninit_inCs98D8VPWzHuM_14regex_automata()
          to label %bb.u unwind label %.loopexit  ; 11 uses

._crit_edge:                                      ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesE8push_mutCs98D8VPWzHuM_14regex_automata.exit
  %.val8.pre = load ptr, ptr %i.c, align 8        ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.di, 3
  %i.k = getelementptr inbounds nuw i8, ptr %.val8.pre, i64 %.idx.i
  %i.l = icmp eq i64 %i.di, 0
  br i1 %i.l, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %._crit_edge
  %i.m = load ptr, ptr %.val8.pre, align 8, !nonnull !5, !noundef !5 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !range !8, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.s = load <4 x i32>, ptr %i.r, align 8        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.u = load i32, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  %i.w = load i8, ptr %i.v, align 4, !range !13, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.y = load i64, ptr %i.x, align 8, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 77
  %i.aa = load i8, ptr %i.z, align 1, !range !13, !noundef !5 ; 2 uses
  %i.ab = load i64, ptr %i.m, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = trunc nuw i64 %i.ab to i1               ; 3 uses
  %spec.select.i = select i1 %i.ae, i64 %i.ad, i64 undef ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc nuw i64 %i.ag to i1               ; 3 uses
  %.sroa.86.2.peel.i = select i1 %i.aj, i64 %i.ai, i64 undef ; 3 uses
  %i.ak = icmp eq i64 %i.dc, 0
  br i1 %i.ak, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %.peel.next.i
  %.sroa.7.0.i19 = getelementptr i8, ptr %.val8.pre, i64 8
  %.sroa.011.1.peel.i = xor i1 %i.aj, true
  %.sroa.010.2.peel.i = xor i1 %i.ae, true
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %bb.t
  %.sroa.7.0.i37 = phi ptr [ %.sroa.7.0.i, %bb.t ], [ %.sroa.7.0.i19, %.lr.ph38.preheader ] ; 2 uses
  %i.al = phi i1 [ %i.by, %bb.t ], [ %i.ae, %.lr.ph38.preheader ] ; 2 uses
  %i.am = phi i64 [ %i.bx, %bb.t ], [ %spec.select.i, %.lr.ph38.preheader ] ; 3 uses
  %i.an = phi i1 [ %i.cj, %bb.t ], [ %i.aj, %.lr.ph38.preheader ] ; 2 uses
  %i.ao = phi i64 [ %i.ci, %bb.t ], [ %.sroa.86.2.peel.i, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.02.0.load5.i36 = phi i64 [ %.sroa.02.0.load4.i, %bb.t ], [ %i.o, %.lr.ph38.preheader ]
  %.sroa.3.8.load7.i35 = phi i64 [ %.sroa.3.8.load6.i, %bb.t ], [ %i.q, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.010.0.i34 = phi i1 [ %.sroa.010.1.i, %bb.t ], [ %.sroa.010.2.peel.i, %.lr.ph38.preheader ]
  %.sroa.011.0.i33 = phi i1 [ %.sroa.011.2.i, %bb.t ], [ %.sroa.011.1.peel.i, %.lr.ph38.preheader ]
  %.sroa.05.0.i32 = phi i64 [ %.sroa.05.1.i, %bb.t ], [ %i.ab, %.lr.ph38.preheader ] ; 2 uses
  %.sroa.4.0.i31 = phi i64 [ %.sroa.4.1.i, %bb.t ], [ %spec.select.i, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.5.0.i30 = phi i64 [ %.sroa.5.3.i, %bb.t ], [ %i.ag, %.lr.ph38.preheader ] ; 2 uses
  %.sroa.86.0.i29 = phi i64 [ %.sroa.86.3.i, %bb.t ], [ %.sroa.86.2.peel.i, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.9.0.i28 = phi i64 [ %.sroa.9.1.i, %bb.t ], [ %i.o, %.lr.ph38.preheader ] ; 2 uses
  %.sroa.12.0.i27 = phi i64 [ %i.bh, %bb.t ], [ %i.y, %.lr.ph38.preheader ]
  %.sroa.22.0.i22 = phi i32 [ %i.ay, %bb.t ], [ %i.u, %.lr.ph38.preheader ]
  %.sroa.24.0.i21 = phi i8 [ %.sroa.014.0.i, %bb.t ], [ %i.w, %.lr.ph38.preheader ]
  %.sroa.27.0.i20 = phi i8 [ %.sroa.019.0.i, %bb.t ], [ %i.aa, %.lr.ph38.preheader ]
  %i.ap = phi <4 x i32> [ %i.av, %bb.t ], [ %i.s, %.lr.ph38.preheader ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.7.0.i37, align 8, !nonnull !5, !noundef !5 ; 11 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load <4 x i32>, ptr %i.ar, align 8      ; 2 uses
  %i.at = or <4 x i32> %i.as, %i.ap
  %i.au = and <4 x i32> %i.as, %i.ap
  %i.av = shufflevector <4 x i32> %i.at, <4 x i32> %i.au, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !5
  %i.ay = or i32 %i.ax, %.sroa.22.0.i22           ; 2 uses
  %i.az = trunc nuw i8 %.sroa.24.0.i21 to i1
  br i1 %i.az, label %bb.c, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i: ; preds = %bb.t, %bb.a, %.peel.next.i, %._crit_edge
  %.sroa.3.048.i = phi i64 [ undef, %._crit_edge ], [ %i.q, %.peel.next.i ], [ undef, %bb.a ], [ %i.q, %bb.t ]
  %.sroa.27.0.lcssa.i = phi i8 [ 1, %._crit_edge ], [ %i.aa, %.peel.next.i ], [ 1, %bb.a ], [ %.sroa.019.0.i, %bb.t ]
  %.sroa.24.0.lcssa.i = phi i8 [ 1, %._crit_edge ], [ %i.w, %.peel.next.i ], [ 1, %bb.a ], [ %.sroa.014.0.i, %bb.t ]
  %.sroa.22.0.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.u, %.peel.next.i ], [ 0, %bb.a ], [ %i.ay, %bb.t ]
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.y, %.peel.next.i ], [ 0, %bb.a ], [ %i.bh, %bb.t ]
  %.sroa.9.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.o, %.peel.next.i ], [ 0, %bb.a ], [ %.sroa.9.1.i, %bb.t ]
  %.sroa.86.0.lcssa.i = phi i64 [ undef, %._crit_edge ], [ %.sroa.86.2.peel.i, %.peel.next.i ], [ undef, %bb.a ], [ %.sroa.86.3.i, %bb.t ]
  %.sroa.5.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.ag, %.peel.next.i ], [ 0, %bb.a ], [ %.sroa.5.3.i, %bb.t ]
  %.sroa.4.0.lcssa.i = phi i64 [ undef, %._crit_edge ], [ %spec.select.i, %.peel.next.i ], [ undef, %bb.a ], [ %.sroa.4.1.i, %bb.t ]
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.ab, %.peel.next.i ], [ 0, %bb.a ], [ %.sroa.05.1.i, %bb.t ]
  %i.ba = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ %i.s, %.peel.next.i ], [ zeroinitializer, %bb.a ], [ %i.av, %bb.t ]
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !654
  %i.bb = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1449) 80, i64 noundef 8) #30, !noalias !654 ; 14 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.b, label %bb.x, !prof !6

bb.b:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph38
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 76
  %i.be = load i8, ptr %i.bd, align 4, !range !13, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph38
  %.sroa.014.0.i = phi i8 [ %i.be, %bb.c ], [ 0, %.lr.ph38 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !5
  %i.bh = call i64 @llvm.uadd.sat.i64(i64 %.sroa.12.0.i27, i64 %i.bg) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !range !8, !noundef !5 ; 2 uses
  %i.bk = trunc nuw i64 %.sroa.02.0.load5.i36 to i1
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = trunc nuw i64 %i.bj to i1
  %i.bo = icmp eq i64 %.sroa.3.8.load7.i35, %i.bm
  %or.cond.not.i = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond.not.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bp = trunc nuw i64 %i.bj to i1
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.9.1.i = phi i64 [ 0, %bb.g ], [ %.sroa.9.0.i28, %bb.f ], [ %.sroa.9.0.i28, %bb.e ] ; 2 uses
  %.sroa.3.8.load6.i = phi i64 [ undef, %bb.g ], [ %.sroa.3.8.load7.i35, %bb.f ], [ %.sroa.3.8.load7.i35, %bb.e ]
  %.sroa.02.0.load4.i = phi i64 [ 0, %bb.g ], [ 0, %bb.f ], [ 1, %bb.e ]
  %i.bq = trunc nuw i8 %.sroa.27.0.i20 to i1
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 77
  %i.bs = load i8, ptr %i.br, align 1, !range !13, !noundef !5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.019.0.i = phi i8 [ %i.bs, %bb.i ], [ 0, %bb.h ] ; 2 uses
  br i1 %.sroa.010.0.i34, label %bb.l, label %bb.k
end_hunk_0
