Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.03?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1863
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15redirected_noqa20redirected_file_noqa:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noundef !8
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %.backedge, label %bb.b

._crit_edge:                                      ; preds = %.backedge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %.sroa.0.03, i64 32
  %.val = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr i8, ptr %.sroa.0.03, i64 40
  %.val2 = load i64, ptr %i.k, align 8, !noundef !8
  tail call fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15redirected_noqa17build_diagnostics(ptr noundef nonnull align 8 %0, ptr nonnull %.val, i64 %.val2)
  br label %.backedge

.backedge:                                        ; preds = %bb.b, %.lr.ph
  %i.l = icmp eq ptr %i.g, %i.e
  br i1 %i.l, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all10create_fix(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %3, i64 noundef range(i64 0, 128102389400760776) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 576460752303423488) %6, i8 noundef range(i8 0, 3) %7, ptr nofree noundef nonnull readonly align 8 captures(none) %8) unnamed_addr #2 personality ptr @rust_eh_personality !guid !7673 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 1000
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !align !17, !noundef !8 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !8
  %i.n = tail call noundef zeroext i1 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges19contains_line_break(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m, i32 noundef %1, i32 noundef %2)
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting34sort_single_line_elements_sequence(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, i8 noundef %7, ptr noundef nonnull align 8 %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, ptr noundef nonnull align 8 %i.j, i1 noundef zeroext true)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 1032
  %i.p = load ptr, ptr %i.o, align 8, !align !17, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit, %bb.b
  %.sroa.01.0 = phi i8 [ %i.ao, %_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit ], [ 2, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %1, i32 noundef %2)
  call void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix15applicable_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i8 noundef %.sroa.01.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 920
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !8, !align !17, !noundef !8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.0.0 = phi ptr [ %i.r, %bb.e ], [ %i.p, %bb.c ]
  call fastcc void @_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue17from_source_range(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.g, i32 noundef %1, i32 noundef %2, i8 noundef %7, ptr noundef nonnull align 8 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6)
  %i.s = load i64, ptr %i.g, align 8, !range !13, !noundef !8
  %.not4 = icmp eq i64 %i.s, -1
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !8 ; 3 uses
  store i64 %i.u, ptr %i.f, align 8
  %i.v = icmp ult i64 %i.u, 128102389400760776
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %4, ptr %i.e, align 8
  %i.w = icmp eq i64 %i.u, %4
  br i1 %i.w, label %bb.k, label %bb.j, !prof !16

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  ret void

bb.j:                                             ; preds = %bb.g
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #55
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val = load ptr, ptr %i.x, align 8, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr [72 x i8], ptr %.val, i64 %4 ; 2 uses
  store ptr %.val, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.aa, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ab = invoke { ptr, ptr } @_RNvXs5_NtCs6Wt4yPw39th_9itertools10tuple_implINtB5_12TupleWindowsINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemETRB1H_B3c_EENtNtNtNtB18_4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.l
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 4 uses
  %.not.not.not.not.i.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.not.not.not.i.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = getelementptr i8, ptr %i.ad, i64 48
  %.val.i.i = load i32, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !7674, !noundef !8 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 1152921504606846976
  call void @llvm.assume(i1 %i.ah)
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.ai, align 8, !alias.scope !7674
  %i.aj = trunc i32 %.sroa.01.0.copyload.i.i.i.i to i1
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %.sroa.42.0.copyload.i.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !7674
  %i.ak = icmp ult i32 %.val.i.i, %.sroa.42.0.copyload.i.i.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.aj, i1 %i.ak, i1 false
  %.sroa.0.1.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.sroa.0.0.i.i.i.i
  br i1 %.sroa.0.1.i.i.i.i, label %bb.o, label %bb.l

bb.n:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit.thread, label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr i8, ptr %i.y, i64 -56
  %i.am = load i64, ptr %i.al, align 8, !noundef !8 ; 2 uses
  %i.an = icmp ult i64 %i.am, 1152921504606846976
  call void @llvm.assume(i1 %i.an)
  %.not2.i = icmp eq i64 %i.am, 0
  br i1 %.not2.i, label %_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit.thread, label %_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit

bb.q:                                             ; preds = %bb.j
  unreachable

_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit.thread: ; preds = %bb.n, %bb.p
  br label %_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit

_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit: ; preds = %bb.o, %bb.p, %_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit.thread
  %i.ao = phi i8 [ 2, %_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue18comment_complexity.exit.thread ], [ 1, %bb.p ], [ 1, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 1008
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !8, !align !17, !noundef !8
  call fastcc void @_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue23into_sorted_source_code(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d, i1 noundef zeroext true, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.d

bb.r:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp14

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.j
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting28MultilineStringSequenceValueEBL_(ptr noalias noundef align 8 dereferenceable(40) %i.h) #57
          to label %bb.r unwind label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all15sort_dunder_all(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !7677 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = load i32, ptr %1, align 8, !range !19, !noundef !8
  %i.g = icmp eq i32 %i.f, 28
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.i = load i8, ptr %i.h, align 1, !range !25, !alias.scope !7678, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7678, !noundef !8
  %i.l = and i64 %i.k, 72057594037927935
  %i.m = icmp ult i8 %i.i, -48
  %i.n = zext i8 %i.i to i64
  %i.o = add nsw i64 %i.n, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 16)
  %.sroa.0.0.i = select i1 %i.m, i64 %spec.store.select.i, i64 %i.l
  %i.p = icmp eq i64 %.sroa.0.0.i, 7
  br i1 %i.p, label %bb.d, label %bb.c

.sink.split:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.k, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.h, %bb.f, %bb.d, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ugt i8 %i.i, -49
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !7678
  %.sroa.01.0.i = select i1 %i.q, ptr %i.s, ptr %i.r ; 2 uses
  %i.t = load i32, ptr %.sroa.01.0.i, align 1
  %i.u = xor i32 %i.t, 1818320735
  %i.v = getelementptr i8, ptr %.sroa.01.0.i, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1600089196
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ae = load i32, ptr %i.ad, align 8, !range !41, !noundef !8
  %i.af = add i32 %i.ae, -1
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = icmp ugt i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !8, !noundef !8
  %i.ak = getelementptr inbounds nuw [120 x i8], ptr %i.aj, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i8, ptr %i.al, align 8, !range !40, !noundef !8
  %i.an = icmp eq i8 %i.am, 4
  br i1 %i.an, label %bb.h, label %bb.c

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #55
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ao = load i32, ptr %2, align 8, !range !19, !noundef !8
  switch i32 %i.ao, label %bb.c [
    i32 29, label %bb.j
    i32 30, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.aq = load i8, ptr %i.ap, align 4, !range !10, !noundef !8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.06.0 = phi i8 [ %i.aq, %bb.i ], [ 2, %bb.h ]
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.03.0 = load i32, ptr %.sroa.03.0.in, align 8, !noundef !8 ; 2 uses
  %.sroa.4.0.in = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.4.0 = load i32, ptr %.sroa.4.0.in, align 4, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.au = load i64, ptr %i.at, align 8, !noundef !8 ; 2 uses
  call fastcc void @_RNvMs7_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_18SortClassification11of_elements(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.as, i64 noundef %i.au, i1 noundef zeroext true)
  %i.av = load i64, ptr %i.e, align 8, !range !30, !noundef !8 ; 4 uses
  %i.aw = icmp ne i64 %i.av, -9223372036854775806
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = xor i64 %i.av, -9223372036854775808
  %i.ay = icmp slt i64 %i.av, 0
  %i.az = select i1 %i.ay, i64 %i.ax, i64 2
  switch i64 %i.az, label %bb.o [
    i64 3, label %bb.k
    i64 0, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ba = icmp sgt i64 %i.av, -1
  br i1 %i.ba, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.ad, %.thread, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %.pn, %.thread ], [ %i.bf, %bb.ad ], [ %i.bf, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.l
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %.sink.split

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !8, !align !17, !noundef !8
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules15sort_dunder_all17UnsortedDunderAllEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %i.be, i32 noundef %.sroa.03.0, i32 noundef %.sroa.4.0)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.s
  %.sroa.07.1 = phi i1 [ %i.bl, %bb.s ], [ true, %bb.o ]
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load i64, ptr %i.e, align 8, !range !30, !noundef !8 ; 2 uses
  %i.bh = icmp ne i64 %i.bg, -9223372036854775806
  call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp sgt i64 %i.bg, -1
  %or.cond = and i1 %.sroa.07.1, %i.bi
  br i1 %or.cond, label %bb.ad, label %common.resume

bb.q:                                             ; preds = %bb.o
  %i.bj = load i64, ptr %i.e, align 8, !range !30, !noundef !8 ; 2 uses
  %i.bk = icmp ne i64 %i.bj, -9223372036854775806
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp slt i64 %i.bj, 0                   ; 2 uses
  br i1 %i.bl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !8, !noundef !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !8
  invoke fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all10create_fix(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.b, i32 noundef %.sroa.03.0, i32 noundef %.sroa.4.0, ptr noundef nonnull align 8 %i.as, i64 noundef %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i8 noundef %.sroa.06.0, ptr noundef nonnull align 8 %0)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.aa, %bb.q
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.d)
          to label %bb.ac unwind label %bb.p

bb.t:                                             ; preds = %bb.v, %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.c) #57
          to label %bb.y unwind label %bb.ab

bb.u:                                             ; preds = %bb.r
  %i.br = load i64, ptr %i.b, align 8, !range !13, !noundef !8
  %.not13 = icmp eq i64 %i.br, -1
  br i1 %.not13, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.w unwind label %bb.t

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %bb.aa unwind label %bb.z

bb.y:                                             ; preds = %bb.z, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.z ], [ %i.bq, %bb.t ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.d) #57
          to label %.thread unwind label %bb.ab

.thread:                                          ; preds = %bb.y
  %3 = load i64, ptr %i.e, align 8, !range !30, !noundef !8
  %4 = icmp ne i64 %3, -9223372036854775806
  call void @llvm.assume(i1 %4)
  br label %common.resume

bb.z:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.ab:                                            ; preds = %bb.ad, %bb.y, %bb.t
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.ac:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.sink.split

bb.ad:                                            ; preds = %bb.p
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.e) #57
          to label %common.resume unwind label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all22sort_dunder_all_assign(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #2 !guid !7679 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  tail call fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all15sort_dunder_all(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.e, ptr noundef nonnull align 8 %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all26sort_dunder_all_ann_assign(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #2 !guid !7680 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !align !17, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  tail call fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all15sort_dunder_all(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.c, ptr noundef nonnull align 8 %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all26sort_dunder_all_aug_assign(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #2 !guid !7681 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i8, ptr %i.a, align 4, !range !60, !noundef !8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  tail call fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all15sort_dunder_all(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all27sort_dunder_all_extend_call(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #2 !guid !7686 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !8
  %i.f = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) ; 0 uses
  %i.g = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.h = load i64, ptr %i.g, align 8, !noundef !8
  %i.i = icmp eq i64 %i.e, 1
  %i.j = icmp eq i64 %i.h, 0
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.b, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !range !19, !noundef !8
  %i.m = icmp eq i32 %i.l, 25
  br i1 %i.m, label %bb.c, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 31
  %i.o = load i8, ptr %i.n, align 1, !range !25, !alias.scope !7687, !noundef !8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !7687, !noundef !8
  %i.r = and i64 %i.q, 72057594037927935
  %i.s = icmp ult i8 %i.o, -48
  %i.t = zext i8 %i.o to i64
  %i.u = add nsw i64 %i.t, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 16)
  %.sroa.0.0.i.i = select i1 %i.s, i64 %spec.store.select.i.i, i64 %i.r
  %i.v = icmp eq i64 %.sroa.0.0.i.i, 6
  br i1 %i.v, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.x = icmp ugt i8 %i.o, -49
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !7687
  %.sroa.01.0.i.i = select i1 %i.x, ptr %i.y, ptr %i.w ; 2 uses
  %i.z = load i32, ptr %.sroa.01.0.i.i, align 1
  %i.aa = xor i32 %i.z, 1702131813
  %i.ab = getelementptr i8, ptr %.sroa.01.0.i.i, i64 4
  %i.ac = load i16, ptr %i.ab, align 1
  %i.ad = zext i16 %i.ac to i32
  %i.ae = xor i32 %i.ad, 25710
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.d:                                             ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !8, !noundef !8
  tail call fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules15sort_dunder_all15sort_dunder_all(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull align 8 %i.c)
  br label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread: ; preds = %bb.c, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting34sort_single_line_elements_sequence(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1, ptr noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5, ptr nofree noundef nonnull readonly align 8 captures(none) %6, i1 noundef zeroext %7) unnamed_addr #2 personality ptr @rust_eh_personality !guid !7720 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %5, ptr %i.g, align 8, !noalias !7721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7721
  store i64 %3, ptr %i.f, align 8, !noalias !7721
  %i.m = icmp eq i64 %5, %3
  br i1 %i.m, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #55, !noalias !7721
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7721
  %i.n = icmp samesign ugt i64 %5, 1
  br i1 %i.n, label %_RNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_16SequenceElements3new.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @233, ptr noundef nonnull inttoptr (i64 95 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #55, !noalias !7721
  unreachable

_RNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_16SequenceElements3new.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7721
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %5
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %5
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterReEIBX_NtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtB5_7ZipImplBW_B1p_E3newCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 %4, ptr noundef nonnull readonly %i.o, ptr noundef nonnull align 8 %2, ptr noundef nonnull %i.p), !noalias !7722
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtB2A_5slice4iter4IterB14_EIB3g_B17_EEE9from_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !8 ; 2 uses
  %i.s = icmp ult i64 %i.r, 576460752303423488
  call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i64 %i.r, -1
  %i.u = add nsw i8 %1, -2
  %.inv = icmp samesign ult i8 %1, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.u
  switch i8 %narrow, label %bb.e [
    i8 0, label %bb.h
    i8 1, label %bb.f
    i8 2, label %bb.g
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting34sort_single_line_elements_sequence:bb.a

bb.ad:                                            ; preds = %bb.aa, %.split7.i.i, %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.be
  %i.by = sub nuw nsw i64 %i.bf, %i.be            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.by)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.ad
  %i.bz = load i64, ptr %.sroa.68.0..sroa_idx, align 8, !alias.scope !7734, !noundef !8 ; 3 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  call void @llvm.assume(i1 %i.ca)
  %.not.i27 = icmp eq i32 %i.bd, %i.bc
  br i1 %.not.i27, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc29
  %i.cb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7734, !nonnull !8, !noundef !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull readonly align 1 %i.bx, i64 %i.by, i1 false)
  %.pre.i28 = load i64, ptr %.sroa.68.0..sroa_idx, align 8, !alias.scope !7734
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc29
  %i.cd = phi i64 [ %.pre.i28, %bb.ae ], [ %i.bz, %.noexc29 ]
  %i.ce = add i64 %i.cd, %i.by
  store i64 %i.ce, ptr %.sroa.68.0..sroa_idx, align 8, !alias.scope !7734
  %i.cf = icmp ult i64 %i.az, %i.t
  br i1 %i.cf, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter.exit33, %bb.af
  %i.cg = load ptr, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8, !alias.scope !7735, !nonnull !8, !noundef !8
  %i.ch = load ptr, ptr %.sroa.02.sroa.2.0..sroa_idx, align 8, !alias.scope !7735, !nonnull !8, !noundef !8 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.cg
  br i1 %i.ci, label %._crit_edge, label %bb.u

bb.ah:                                            ; preds = %bb.af
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 2)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter.exit33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter.exit33: ; preds = %bb.ah
  %i.cj = load i64, ptr %.sroa.68.0..sroa_idx, align 8, !alias.scope !7736, !noundef !8 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  call void @llvm.assume(i1 %i.ck)
  %i.cl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7736, !nonnull !8, !noundef !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i16 8236, ptr %i.cm, align 1
  %.pre.i31 = load i64, ptr %.sroa.68.0..sroa_idx, align 8, !alias.scope !7736
  %i.cn = add i64 %.pre.i31, 2
  store i64 %i.cn, ptr %.sroa.68.0..sroa_idx, align 8, !alias.scope !7736
  br label %bb.ag

bb.ai:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.al, %.body
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.aj:                                            ; preds = %bb.j
  unreachable

bb.ak:                                            ; preds = %.body, %bb.al
  %.pn1736 = phi { ptr, i32 } [ %i.cp, %bb.al ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn1736

bb.al:                                            ; preds = %bb.j, %bb.h
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting16SequenceElementsEBL_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #57
          to label %bb.ak unwind label %bb.ai
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !7743 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvNtCsEhZmuQNqkz_11ruff_linter14rule_redirects19get_redirect_target(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %.sroa.3.0 = select i1 %.not, i64 %1, i64 %i.c
  %.sroa.01.0 = select i1 %.not, ptr %0, ptr %i.b
  %i.d = tail call noundef i16 @_RNvMNtCsEhZmuQNqkz_11ruff_linter8registryNtNtB4_5codes4Rule9from_code(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.3.0)
  %.not5 = icmp eq i16 %i.d, -1
  br i1 %.not5, label %bb.b, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0EB2n_.exit

bb.b:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %3, 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0EB2n_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0Bb_.exit.backedge.i
  %i.f = phi ptr [ %i.g, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0Bb_.exit.backedge.i ], [ %2, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val5.i = load i64, ptr %i.h, align 8, !noalias !7744, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp samesign ult i64 %1, %.val5.i
  br i1 %.not.i.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0Bb_.exit.backedge.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val4.i = load ptr, ptr %i.i, align 8, !noalias !7744, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val4.i, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %.val5.i), !alias.scope !7745, !noalias !7746
  %i.j = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0EB2n_.exit, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0Bb_.exit.backedge.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0Bb_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %.not9.i = icmp eq ptr %i.g, %i.e
  br i1 %.not9.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0EB2n_.exit, label %.lr.ph.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0EB2n_.exit: ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0Bb_.exit.backedge.i, %.split.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code13code_is_valid0Bb_.exit.backedge.i ], [ true, %.split.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code17invalid_noqa_code(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 384307168202282326) %5) unnamed_addr #2 !guid !7747 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.e, align 8, !nonnull !8, !align !17, !noundef !8
  %i.f = getelementptr i8, ptr %.val, i64 2409
  %.val6 = load i8, ptr %i.f, align 1, !range !10, !noundef !8
  %i.g = trunc nuw i8 %.val6 to i1
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8 = load i64, ptr %i.i, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %.val8, 6
  %i.j = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx
  %i.k = icmp eq i64 %.val8, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val9 = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val10 = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %.idx14 = mul nuw nsw i64 %.val10, 72
  %i.n = getelementptr inbounds nuw i8, ptr %.val9, i64 %.idx14
  %i.o = icmp eq i64 %.val10, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph13

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.sroa.0.011 = phi ptr [ %i.p, %bb.d ], [ %.val7, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !13, !noundef !8
  %.not = icmp eq i64 %i.r, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call fastcc void @_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code17invalid_noqa_code0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.s = icmp eq ptr %i.p, %i.j
  br i1 %i.s, label %.loopexit, label %.lr.ph

.lr.ph13:                                         ; preds = %.loopexit, %bb.f
  %.sroa.02.012 = phi ptr [ %i.t, %bb.f ], [ %.val9, %.loopexit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.012, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.012, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !13, !noundef !8
  %.not5 = icmp eq i64 %i.v, -1
  br i1 %.not5, label %bb.f, label %bb.e

._crit_edge:                                      ; preds = %bb.f, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %.lr.ph13
  call fastcc void @_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code17invalid_noqa_code0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph13
  %i.w = icmp eq ptr %i.t, %i.n
  br i1 %i.w, label %._crit_edge, label %.lr.ph13
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slots17sort_dunder_slots(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !7753 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = tail call noundef align 8 ptr @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB2_7Binding9statement(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.k) ; 7 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.n = load i8, ptr %i.m, align 4, !range !32, !noundef !8 ; 2 uses
  %i.o = icmp samesign ugt i8 %i.n, 1
  %i.p = zext nneg i8 %i.n to i64
  %i.q = add nsw i64 %i.p, -1
  %i.r = select i1 %i.o, i64 %i.q, i64 0
  switch i64 %i.r, label %bb.ap [
    i64 5, label %bb.c
    i64 7, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !8
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %bb.ap

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !align !17, !noundef !8 ; 2 uses
  %.not17 = icmp eq ptr %i.w, null
  br i1 %.not17, label %bb.ap, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !8, !noundef !8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.05.0 = phi ptr [ %i.z, %bb.e ], [ %i.w, %bb.d ]
  %.sroa.03.0.in = phi ptr [ %i.x, %bb.e ], [ %i.l, %bb.d ]
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.aa = load i32, ptr %.sroa.03.0, align 8, !range !19, !noundef !8
  %i.ab = icmp eq i32 %i.aa, 28
  br i1 %i.ab, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 23
  %i.ad = load i8, ptr %i.ac, align 1, !range !25, !alias.scope !7754, !noundef !8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !7754, !noundef !8
  %i.ag = and i64 %i.af, 72057594037927935
  %i.ah = icmp ult i8 %i.ad, -48
  %i.ai = zext i8 %i.ad to i64
  %i.aj = add nsw i64 %i.ai, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 16)
  %.sroa.0.0.i = select i1 %i.ah, i64 %spec.store.select.i, i64 %i.ag
  %i.ak = icmp eq i64 %.sroa.0.0.i, 9
  br i1 %i.ak, label %bb.h, label %bb.ap

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ugt i8 %i.ad, -49
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !7754
  %.sroa.01.0.i = select i1 %i.al, ptr %i.an, ptr %i.am ; 2 uses
  %i.ao = load i64, ptr %.sroa.01.0.i, align 1
  %i.ap = xor i64 %i.ao, 6877969077834571615
  %i.aq = getelementptr i8, ptr %.sroa.01.0.i, i64 8
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = xor i64 %i.as, 95
  %i.au = or i64 %i.ap, %i.at
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not18 = icmp eq i32 %i.aw, 0
  br i1 %.not18, label %bb.i, label %bb.ap

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !range !41, !noundef !8
  %i.bb = add i32 %i.ba, -1
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !8, !noundef !8
  %i.bg = getelementptr inbounds nuw [120 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i8, ptr %i.bh, align 8, !range !40, !noundef !8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %bb.ap

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #55
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB5_20StringLiteralDisplay3new(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.i, ptr noundef nonnull align 8 %.sroa.05.0)
  %i.bl = load i64, ptr %i.i, align 8, !range !24, !noundef !8
  %.not19 = icmp eq i64 %i.bl, -2
  br i1 %.not19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bp = load i64, ptr %i.bo, align 8
  invoke fastcc void @_RNvMs7_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_18SortClassification11of_elements(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ap

.thread.a:                                        ; preds = %.thread, %bb.aq, %bb.v, %bb.o
  %.pn27 = phi { ptr, i32 } [ %i.bq, %bb.o ], [ %i.cd, %bb.aq ], [ %i.cd, %bb.v ], [ %.pn, %.thread ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slots20StringLiteralDisplayEBL_(ptr noalias noundef align 8 dereferenceable(48) %i.j) #57
          to label %bb.ar unwind label %bb.an

bb.o:                                             ; preds = %bb.q, %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.thread.a

bb.p:                                             ; preds = %bb.m
  %i.br = load i64, ptr %i.h, align 8, !range !30, !noundef !8 ; 3 uses
  %i.bs = icmp ne i64 %i.br, -9223372036854775806
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = xor i64 %i.br, -9223372036854775808
  %i.bu = icmp slt i64 %i.br, 0
  %i.bv = select i1 %i.bu, i64 %i.bt, i64 2
  switch i64 %i.bv, label %bb.r [
    i64 3, label %bb.q
    i64 0, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18SortClassificationEBL_(ptr noalias noundef align 8 dereferenceable(24) %i.h)
          to label %bb.u unwind label %bb.o

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bw = load ptr, ptr %i.bk, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7755)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 63
  %i.bz = load i8, ptr %i.by, align 1, !range !25, !alias.scope !7755, !noundef !8
  %i.ca = and i8 %i.bz, -2
  %switch.i = icmp eq i8 %i.ca, -48
  br i1 %switch.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.pn.i = load ptr, ptr %i.bx, align 8, !alias.scope !7755, !nonnull !8, !noundef !8
  %.sroa.0.0.i30 = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.cb = atomicrmw add ptr %.sroa.0.0.i30, i64 1 monotonic, align 8, !noalias !7756
  %i.cc = icmp slt i64 %i.cb, 0
  br i1 %i.cc, label %bb.t, label %bb.w, !prof !11

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx) #55
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slots20StringLiteralDisplayEBL_(ptr noalias noundef align 8 dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ap

bb.v:                                             ; preds = %bb.w, %bb.z, %bb.t
  %.sroa.011.1 = phi i1 [ %i.cp, %bb.z ], [ true, %bb.w ], [ true, %bb.t ]
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load i64, ptr %i.h, align 8, !range !30, !noundef !8 ; 2 uses
  %i.cf = icmp ne i64 %i.ce, -9223372036854775806
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp sgt i64 %i.ce, -1
  %or.cond = and i1 %.sroa.011.1, %i.cg
  br i1 %or.cond, label %bb.aq, label %.thread.a

bb.w:                                             ; preds = %bb.s, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bx, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !noundef !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 28 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !noundef !8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !8, !align !17, !noundef !8
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules17sort_dunder_slots19UnsortedDunderSlotsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull align 8 %i.cm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.f, i32 noundef %i.ci, i32 noundef %i.ck)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cn = load i64, ptr %i.h, align 8, !range !30, !noundef !8 ; 2 uses
  %i.co = icmp ne i64 %i.cn, -9223372036854775806
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = icmp slt i64 %i.cn, 0                   ; 2 uses
  br i1 %i.cp, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !8, !noundef !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !8
  invoke fastcc void @_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB5_20StringLiteralDisplay27generate_sorted_source_code(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cr, i64 noundef %i.ct, ptr noundef nonnull align 8 %0)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.am, %bb.x
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.ao unwind label %bb.v

bb.aa:                                            ; preds = %bb.ah, %bb.ag, %bb.ac, %bb.y
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.e) #57
          to label %bb.ak unwind label %bb.an

bb.ab:                                            ; preds = %bb.y
  %i.cv = load i64, ptr %i.d, align 8, !range !13, !noundef !8
  %.not21 = icmp eq i64 %i.cv, -1
  br i1 %.not21, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cx = load i8, ptr %i.cw, align 8, !range !10, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cy = load i32, ptr %i.ch, align 8, !noundef !8
  %i.cz = load i32, ptr %i.cj, align 4, !noundef !8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.cy, i32 noundef %i.cz)
          to label %bb.ad unwind label %bb.aa

bb.ad:                                            ; preds = %bb.ac
  %i.da = trunc nuw i8 %i.cx to i1
  br i1 %i.da, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noundef !8 ; 2 uses
  %i.dd = icmp ult i64 %i.dc, 2305843009213693952
  call void @llvm.assume(i1 %i.dd)
  %.not22 = icmp eq i64 %i.dc, 0
  br i1 %.not22, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.010.0.copyload = load ptr, ptr %i.de, align 8
  %.not23 = icmp eq ptr %.sroa.010.0.copyload, null
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.df = icmp eq i8 %.sroa.5.0.copyload, 3
  %or.cond29 = select i1 %.not23, i1 %i.df, i1 false
  %spec.select = select i1 %or.cond29, i8 2, i8 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.sroa.09.0 = phi i8 [ 2, %bb.ae ], [ 1, %bb.ad ], [ %spec.select, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix15applicable_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i8 noundef %.sroa.09.0)
          to label %bb.ah unwind label %bb.aa

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.ai unwind label %bb.aa

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ab, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.e)
          to label %bb.am unwind label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.al ], [ %i.cu, %bb.aa ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g) #57
          to label %.thread unwind label %bb.an

.thread:                                          ; preds = %bb.ak
  %2 = load i64, ptr %i.h, align 8, !range !30, !noundef !8
  %3 = icmp ne i64 %2, -9223372036854775806
  call void @llvm.assume(i1 %3)
  br label %.thread.a

bb.al:                                            ; preds = %bb.aj
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

bb.an:                                            ; preds = %bb.aq, %bb.ak, %bb.aa, %.thread.a
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.ao:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slots20StringLiteralDisplayEBL_(ptr noalias noundef align 8 dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.j, %bb.f, %bb.a, %bb.d, %bb.c, %bb.b, %bb.n, %bb.u, %bb.h, %bb.g, %bb.ao
  ret void

bb.aq:                                            ; preds = %bb.v
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.h) #57
          to label %.thread.a unwind label %bb.an

bb.ar:                                            ; preds = %.thread.a
  resume { ptr, i32 } %.pn27
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literal33decimal_from_float_literal_syntax(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !7766 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [144 x i8], align 8               ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [144 x i8], align 8               ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !8
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literal21extract_float_literal.exit.thread, label %tailrecurse.outer.i

tailrecurse.outer.i:                              ; preds = %bb.a, %bb.e
  %.tr2.ph.i = phi ptr [ %i.w, %bb.e ], [ %i.l, %bb.a ]
  %.tr3.ph.i = phi i1 [ %.sroa.01.0.i, %bb.e ], [ false, %bb.a ] ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.d, %tailrecurse.outer.i
  %.tr2.i = phi ptr [ %i.v, %bb.d ], [ %.tr2.ph.i, %tailrecurse.outer.i ] ; 6 uses
  %i.o = load i32, ptr %.tr2.i, align 8, !range !19, !noalias !7767, !noundef !8
  switch i32 %i.o, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literal21extract_float_literal.exit.thread [
    i32 3, label %bb.b
    i32 21, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.p = getelementptr inbounds nuw i8, ptr %.tr2.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.tr2.i, i64 28
  %i.r = load i8, ptr %i.q, align 4, !range !35, !noalias !7767, !noundef !8
  switch i8 %i.r, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literal21extract_float_literal.exit.thread [
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.c:                                             ; preds = %tailrecurse.i
  %i.s = getelementptr inbounds nuw i8, ptr %.tr2.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !20, !noalias !7767, !noundef !8
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literal21extract_float_literal.exit, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literal21extract_float_literal.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.p, align 8, !noalias !7767, !nonnull !8, !noundef !8
  br label %tailrecurse.i

bb.e:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.p, align 8, !noalias !7767, !nonnull !8, !noundef !8
  %.sroa.01.0.i = xor i1 %.tr3.ph.i, true
  br label %tailrecurse.outer.i

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literal21extract_float_literal.exit: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.tr2.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.tr2.i, i64 36
  %.sroa.0.0.i.i = load i32, ptr %i.x, align 8, !noalias !7767, !noundef !8 ; 3 uses
  %.sroa.34.0.i.i = load i32, ptr %i.y, align 4, !noalias !7767, !noundef !8 ; 3 uses
  %i.z = zext i1 %.tr3.ph.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.aa, ptr noundef nonnull align 8 %i.ab)
  %i.ac = load i64, ptr %i.j, align 8, !range !20, !noundef !8
  %.not3 = icmp eq i64 %i.ac, 2
  br i1 %.not3, label %bb.p, label %bb.f

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literal21extract_float_literal.exit.thread: ; preds = %bb.b, %tailrecurse.i, %bb.p, %bb.y, %bb.c, %bb.a
  ret void

bb.f:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literal21extract_float_literal.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i64 144, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7768)
  %i.ad = load i64, ptr %i.g, align 8, !range !9, !alias.scope !7768, !noundef !8 ; 2 uses
  %i.ae = trunc nuw i64 %i.ad to i1               ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !7768, !nonnull !8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !7768
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.ak = load i32, ptr %i.aj, align 8, !alias.scope !7768
  %i.al = zext i32 %i.ak to i64
  %.sroa.7.0.i = select i1 %i.ae, i64 %i.ai, i64 %i.al
  %.sroa.01.0.i6 = select i1 %i.ae, ptr %i.ag, ptr %i.af
  %i.am = icmp eq i64 %.sroa.7.0.i, 2
  br i1 %i.am, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.01.0.i6.sroa.sel = select i1 %i.ae, ptr %.sroa.gep, ptr %i.ah
  %i.an = load i64, ptr %.sroa.01.0.i6.sroa.sel, align 8, !noundef !8
  %i.ao = icmp eq i64 %i.an, 7
  br i1 %i.ao, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %.sroa.01.0.i6, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = xor i32 %i.aq, 1768121700
  %i.as = getelementptr i8, ptr %i.ap, i64 3
  %i.at = load i32, ptr %i.as, align 1
  %i.au = xor i32 %i.at, 1818324329
  %i.av = or i32 %i.ar, %i.au
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.sroa.gep22 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.gep23 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.01.0.i6.sroa.sel24 = select i1 %i.ae, ptr %.sroa.gep22, ptr %.sroa.gep23
  %i.az = load i64, ptr %.sroa.01.0.i6.sroa.sel24, align 8, !noundef !8
  %i.ba = icmp eq i64 %i.az, 7
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.gep25 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.gep26 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.01.0.i6.sroa.sel27 = select i1 %i.ae, ptr %.sroa.gep25, ptr %.sroa.gep26
  %i.bb = load ptr, ptr %.sroa.01.0.i6.sroa.sel27, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 1
  %i.bd = xor i32 %i.bc, 1768121668
  %i.be = getelementptr i8, ptr %i.bb, i64 3
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 1818324329
  %i.bh = or i32 %i.bd, %i.bg
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i1 [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ %i.bk, %bb.j ], [ false, %bb.i ]
  %i.bl = icmp eq i64 %i.ad, 0
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.aj)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literal33decimal_from_float_literal_syntax0Bb_.exit

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %bb.n ], [ %i.ci, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.m
end_hunk_1
