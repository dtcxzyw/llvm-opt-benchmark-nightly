Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.13?download=true
inline.NumInlined: 1330
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E21reserve_one_uncheckedCs2JiOgHzbbc7_10tokenizers:bb.a
  unreachable

_RINvCsaeZrfuWH35j_8smallvec10deallocateTciEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.k
  %i.aa = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.aa, i64 noundef 8) #27
  br label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit

bb.m:                                             ; preds = %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayTciEECs2JiOgHzbbc7_10tokenizers.exit48.i, %bb.h
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #30
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #30
  unreachable

_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvCsaeZrfuWH35j_8smallvec10deallocateTciEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread, %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecATciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E21reserve_one_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1898, !noundef !3 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 3 uses
  br i1 %i.d, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread

_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1898, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread, !prof !16

_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %bb.a, %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !7

_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  %i.m = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink11.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #30, !noalias !1899
  unreachable

bb.c:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E10triple_mutCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = shl nuw nsw i64 %i.l, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.n, !prof !17

_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit.i
  %or.cond67.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond67.i, label %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit48.i, label %bb.n, !prof !17

bb.h:                                             ; preds = %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1899
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #27, !noalias !1899 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.j

_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit48.i: ; preds = %bb.g
  %i.v = shl nuw nsw i64 %.sink.i.i, 4
  %i.w = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #27 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.j ], [ %i.w, %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !1899
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !1899
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !1899
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !1899
  br label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit

bb.j:                                             ; preds = %bb.h
  %i.y = shl nuw i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink11.i.i, i64 %i.y, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !1899
  %i.z = shl nuw i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink11.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !1899
  %or.cond.i.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsaeZrfuWH35j_8smallvec10deallocateThciEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1900
  store i64 0, ptr %i.a, align 8, !noalias !1900
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !1900
  unreachable

_RINvCsaeZrfuWH35j_8smallvec10deallocateThciEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.k
  %i.aa = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.aa, i64 noundef 8) #27
  br label %_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit

bb.m:                                             ; preds = %_RINvCsaeZrfuWH35j_8smallvec12layout_arrayThciEECs2JiOgHzbbc7_10tokenizers.exit48.i, %bb.h
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #30
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #30
  unreachable

_RINvCsaeZrfuWH35j_8smallvec10infallibleuECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvCsaeZrfuWH35j_8smallvec10deallocateThciEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit.thread, %_RNvMsc_CsaeZrfuWH35j_8smallvecINtB5_8SmallVecAThciEj4_E6tripleCs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #30
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !3
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1901

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
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !3
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1902

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
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !3
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1903

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
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmuthmE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !3
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1904

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs0_NtNtCsgbNVBrIJ05E_5rayon4iter9enumerateINtB5_9EnumerateINtNtB9_5slice4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtB7_23IndexedParallelIterator3lenB1p_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !noundef !3
  ret i64 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvXs1_NtNtCsgbNVBrIJ05E_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB9_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB7_8plumbing8Producer7max_lenB1H_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvXs1_NtNtCsgbNVBrIJ05E_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB9_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB7_8plumbing8Producer7min_lenB1H_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  ret i64 1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCsgbNVBrIJ05E_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB9_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB7_8plumbing8Producer8split_atB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !4, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  call void @_RNvXs7_NtCsgbNVBrIJ05E_5rayon5sliceINtB5_12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordENtNtNtB7_4iter8plumbing8Producer8split_atBZ_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, i64 noundef %2)
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !4, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %i.n = add i64 %i.m, %2
  store ptr %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.o, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.k, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.n, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldTciEcuNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1I_16NormalizedString15transform_rangeINtNtB9_5range9RangeFromjEINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EINtBT_3MapNtNtNtBb_3str4iter5CharsNCNvB1E_6append0EEEs_0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6r_6StringINtNtB5z_7collect6ExtendcE6extendIB4v_B3D_B1z_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1M_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  tail call fastcc void @_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTciEcuNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB19_16NormalizedString15transform_rangeINtNtNtBa_3ops5range9RangeFromjEINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceBU_EINtB4_3MapNtNtNtBa_3str4iter5CharsNCNvB15_6append0EEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB5X_6StringINtNtB55_7collect6ExtendcE6extendIB41_B3a_B10_EE0E0E0B1d_(ptr noalias noundef align 8 dereferenceable(40) %i.a, i32 noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.i.i = alloca i32, align 4            ; 14 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %.val = load ptr, ptr %i.c, align 8, !nonnull !3, !align !4, !noundef !3
  %.val.i = load ptr, ptr %.val, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  store i32 0, ptr %.sroa.0.i.i.i, align 4, !noalias !1915
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  %i.f = trunc i32 %1 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 3 uses
  %i.i = lshr i32 %1, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %1, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %1, 18
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = or disjoint i8 %i.r, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = trunc nuw nsw i32 %1 to i8
  store i8 %i.t, ptr %.sroa.0.i.i.i, align 4, !alias.scope !1916, !noalias !1915
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.u = or disjoint i8 %i.j, -64
  store i8 %i.u, ptr %.sroa.0.i.i.i, align 4, !alias.scope !1916, !noalias !1915
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx8 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  store i8 %i.h, ptr %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx8, align 1, !alias.scope !1916, !noalias !1915
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.n, -32
  store i8 %i.w, ptr %.sroa.0.i.i.i, align 4, !alias.scope !1916, !noalias !1915
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  store i8 %i.l, ptr %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx7, align 1, !alias.scope !1916, !noalias !1915
  %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx9 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 2
  store i8 %i.h, ptr %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx9, align 2, !alias.scope !1916, !noalias !1915
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  store i8 %i.s, ptr %.sroa.0.i.i.i, align 4, !alias.scope !1916, !noalias !1915
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  store i8 %i.p, ptr %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !1916, !noalias !1915
  %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 2
  store i8 %i.l, ptr %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !1916, !noalias !1915
  %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 3
  store i8 %i.h, ptr %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !1916, !noalias !1915
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sroa.0.05.i.i.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1915
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.05.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1915
  %i.x = load i64, ptr %i.b, align 8, !range !5, !noalias !1915, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !6, !noalias !1915, !noundef !3 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.y, label %bb.h, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2d_14UnigramTrainer14required_charss_0NCIBR_B1u_TB1u_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4c_7HashSetB1u_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBX_6traits7collect6ExtendB1u_E6extendINtBT_3MapINtNtBV_5chain5ChainINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1u_mEENtNtNtBb_3str4iter5CharsNCB28_0EINtNtBV_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB26_EE0NCINvNvNtNtB5U_8iterator8Iterator8for_each4callB3V_NCINvXs1i_NtB4e_3mapINtBaR_7HashMapB1u_uB4Z_EIB5Q_B3V_E6extendIB6y_B6x_B43_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2j_.exit, !prof !7

bb.h:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1915
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #30, !noalias !1915
  unreachable

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2d_14UnigramTrainer14required_charss_0NCIBR_B1u_TB1u_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4c_7HashSetB1u_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBX_6traits7collect6ExtendB1u_E6extendINtBT_3MapINtNtBV_5chain5ChainINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1u_mEENtNtNtBb_3str4iter5CharsNCB28_0EINtNtBV_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB26_EE0NCINvNvNtNtB5U_8iterator8Iterator8for_each4callB3V_NCINvXs1i_NtB4e_3mapINtBaR_7HashMapB1u_uB4Z_EIB5Q_B3V_E6extendIB6y_B6x_B43_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2j_.exit: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !1915, !nonnull !3, !noundef !3 ; 2 uses
  %i.ae = icmp samesign ule i64 %.sroa.0.05.i.i.i.i, %i.aa
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.i.i.i, i64 %.sroa.0.05.i.i.i.i, i1 false), !noalias !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1917
  store i64 %i.aa, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ad, ptr %.sroa.42.0..sroa_idx.i.i, align 8
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.05.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.af = call noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1917 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1917
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCsgbNVBrIJ05E_5rayon5slice6chunksINtB5_14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtB9_4iter8plumbing8Producer8split_atCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = mul i64 %i.b, %2
  %i.d = load ptr, ptr %1, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
