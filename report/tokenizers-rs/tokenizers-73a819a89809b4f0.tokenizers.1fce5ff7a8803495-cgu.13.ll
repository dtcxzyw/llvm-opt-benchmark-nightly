Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.13?download=true
inline.NumInlined: 1330
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE10take_frontCs2JiOgHzbbc7_10tokenizers:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 632
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 632
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 632
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 632
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 632
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyinghmE10take_frontCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #10 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.020.024.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1966

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.022.025.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.024.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ]
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.022.025 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.022.025.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.024 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.020.024.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E21reserve_one_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1967, !noalias !1970, !noundef !3 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 2 uses
  br i1 %i.d, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread

_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1967, !noalias !1970, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.q, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread, !prof !1972

_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %bb.a, %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.q, label %bb.b, !prof !121

bb.b:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  %i.m = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.d, label %bb.c, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1976, !noalias !1979, !nonnull !3, !noundef !3
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !1973
  br label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i

_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %.sink11.i.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.c ], [ 4, %bb.b ] ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !121

bb.d:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #30, !noalias !1973
  unreachable

bb.e:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = shl nuw nsw i64 %i.l, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayTciEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.p, !prof !1981

_RINvCsaeZrfuWH35j_8smallvec12layout_arrayTciEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.h
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayTciEECs2JiOgHzbbc7_10tokenizers.exit.i
  %or.cond67.i = icmp ult i64 %.sink.i.i, 576460752303423488
  br i1 %or.cond67.i, label %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayTciEECs2JiOgHzbbc7_10tokenizers.exit48.i, label %bb.p, !prof !1981

bb.j:                                             ; preds = %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayTciEECs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1973
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #27, !noalias !1973 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCsaeZrfuWH35j_8smallvec12layout_arrayTciEECs2JiOgHzbbc7_10tokenizers.exit48.i: ; preds = %bb.i
  %i.v = shl nuw nsw i64 %.sink.i.i, 4
  %i.w = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #27 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayTciEECs2JiOgHzbbc7_10tokenizers.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayTciEECs2JiOgHzbbc7_10tokenizers.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !1973
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !1973
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !1973
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !1973
  br label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit

bb.l:                                             ; preds = %bb.j
  %i.y = shl i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink11.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !1973
  %i.z = shl i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink11.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !1973
  %or.cond.i.i = icmp ult i64 %.sink.i.i, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsaeZrfuWH35j_8smallvec10deallocateTciEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.n, !prof !1981

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1982
  store i64 0, ptr %i.a, align 8, !noalias !1982
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !1982
  unreachable

_RINvCsaeZrfuWH35j_8smallvec10deallocateTciEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.m
  %i.aa = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.aa, i64 noundef 8) #27
  br label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayTciEECs2JiOgHzbbc7_10tokenizers.exit48.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #30
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #30
  unreachable

_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvCsaeZrfuWH35j_8smallvec10deallocateTciEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread, %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E21reserve_one_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1985, !noalias !1988, !noundef !3 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 2 uses
  br i1 %i.d, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread

_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1985, !noalias !1988, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.q, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread, !prof !1972

_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %bb.a, %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.q, label %bb.b, !prof !121

bb.b:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1990)
  %i.m = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.d, label %bb.c, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1993, !noalias !1996, !nonnull !3, !noundef !3
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !1990
  br label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i

_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %.sink11.i.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.c ], [ 4, %bb.b ] ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !121

bb.d:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #30, !noalias !1990
  unreachable

bb.e:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = shl nuw nsw i64 %i.l, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.p, !prof !1981

_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.h
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit.i
  %or.cond67.i = icmp ult i64 %.sink.i.i, 576460752303423488
  br i1 %or.cond67.i, label %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit48.i, label %bb.p, !prof !1981

bb.j:                                             ; preds = %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1990
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #27, !noalias !1990 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit48.i: ; preds = %bb.i
  %i.v = shl nuw nsw i64 %.sink.i.i, 4
  %i.w = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #27 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !1990
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !1990
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !1990
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !1990
  br label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit

bb.l:                                             ; preds = %bb.j
  %i.y = shl i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink11.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !1990
  %i.z = shl i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink11.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !1990
  %or.cond.i.i = icmp ult i64 %.sink.i.i, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsaeZrfuWH35j_8smallvec10deallocateThciEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.n, !prof !1981

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1998
  store i64 0, ptr %i.a, align 8, !noalias !1998
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !1998
  unreachable

_RINvCsaeZrfuWH35j_8smallvec10deallocateThciEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.m
  %i.aa = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.aa, i64 noundef 8) #27
  br label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit48.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #30
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #30
  unreachable

_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvCsaeZrfuWH35j_8smallvec10deallocateThciEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread, %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #30
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !119, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 632
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2001

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 632
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 632
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 632
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 632
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 632
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 632
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 632
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 632
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyinghmE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !119, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 72
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2002

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 72
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 72
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 72
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 72
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 72
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 72
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 72
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 72
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !119, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
