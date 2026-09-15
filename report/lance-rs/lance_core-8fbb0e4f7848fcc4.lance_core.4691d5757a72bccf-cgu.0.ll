Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoItermNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE10dying_nextCs63DIHKhvmTb_10lance_core:bb.a
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE10init_frontCs63DIHKhvmTb_10lance_core.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE10init_frontCs63DIHKhvmTb_10lance_core.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE10init_frontCs63DIHKhvmTb_10lance_core.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE10init_frontCs63DIHKhvmTb_10lance_core.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs63DIHKhvmTb_10lance_core.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 328
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !21095, !nonnull !24, !noundef !24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !21077

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs63DIHKhvmTb_10lance_core.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !21095, !nonnull !24, !noundef !24
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 320
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !21095, !nonnull !24, !noundef !24
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 320
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !21095, !nonnull !24, !noundef !24
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 320
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !21095, !nonnull !24, !noundef !24
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 320
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !21095, !nonnull !24, !noundef !24
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 320
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !21095, !nonnull !24, !noundef !24
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 320
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !21095, !nonnull !24, !noundef !24
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 320
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !21095, !nonnull !24, !noundef !24 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 320
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs63DIHKhvmTb_10lance_core.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.041.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i, i64 316
  %i.ca = load i16, ptr %i.bz, align 4, !noalias !21094 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 320, i64 416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #65, !noalias !21096
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 318
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !21093, !noundef !24
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i36.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i37.i.i.i.i = select i1 %.not.i36.i.i.i.i, i64 320, i64 416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef %..i37.i.i.i.i, i64 noundef 8) #65, !noalias !21096
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #68
          to label %.noexc.i.i unwind label %bb.l, !noalias !21097

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #68, !noalias !21098
  unreachable

_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs63DIHKhvmTb_10lance_core.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !21089, !noalias !21090
  store i64 0, ptr %i.al, align 8, !alias.scope !21089, !noalias !21090
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !21089, !noalias !21090
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs63DIHKhvmTb_10lance_core.exit, %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE16deallocating_endNtNtBc_5alloc6GlobalECs63DIHKhvmTb_10lance_core.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 129) %0, i64 noundef range(i64 0, 1689) %1) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, label %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit

_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %bb.c

_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65
  %i.c = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #65 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #68
  unreachable

bb.c:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread ], [ %i.c, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit ]
  ret ptr %.sroa.0.0.i4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @14, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs4XDKJNDGLq7_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvNtCs63DIHKhvmTb_10lance_core11levenshtein20levenshtein_distance(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  call fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsE9from_iterCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %3
  invoke fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsE9from_iterCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %2, ptr noundef %i.d)
          to label %bb.d unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59: ; preds = %bb.k, %.body, %bb.c
  %.pn35 = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn.pn, %.body ], [ %.pn.pn, %bb.k ]
  %.val46 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.e = icmp eq i64 %.val46, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val47 = load ptr, ptr %i.f, align 8, !nonnull !24, !noundef !24
  %i.g = shl nuw i64 %.val46, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val47, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !24 ; 4 uses
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !24 ; 15 uses
  %i.n = icmp ult i64 %i.m, 2305843009213693952
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.j, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.f, label %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core.exit.thread.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0 = phi i64 [ %i.m, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %.val44 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.q = icmp eq i64 %.val44, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val45 = load ptr, ptr %i.r, align 8, !nonnull !24, !noundef !24
  %i.s = shl nuw i64 %.val44, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56

_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core.exit.thread.i: ; preds = %bb.e
  %i.t = add nuw nsw i64 %i.m, 1                  ; 6 uses
  %i.u = shl i64 %i.t, 3                          ; 5 uses
  %i.v = icmp eq i64 %i.m, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.u, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.v, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.h, !prof !25

bb.h:                                             ; preds = %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core.exit.thread.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !21137
  %i.w = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #65, !noalias !21137 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.y = ptrtoint ptr %i.w to i64
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.thread
  %n.vec = and i64 %i.m, 2305843009213693948      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x i64> %vec.ind, ptr %i.z, align 8, !noalias !21138
  store <2 x i64> %step.add, ptr %i.aa, align 8, !noalias !21138
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !21125

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %n.vec, -1
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.thread, %middle.block
  %.ph = phi i64 [ 0, %.thread ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core.exit.thread.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.h ], [ 0, %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core.exit.thread.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.u) #68
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ac
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !21138
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ad, %i.m
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !21126

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val42 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.af = icmp eq i64 %.val42, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66, label %bb.j

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val43 = load ptr, ptr %i.ag, align 8, !nonnull !24, !noundef !24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66.sink.split: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65, %bb.j
  %.val42.sink = phi i64 [ %.val42, %bb.j ], [ %.val, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65 ]
  %.val43.sink = phi ptr [ %.val43, %bb.j ], [ %i.ar, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65 ]
  %.sroa.0.1.ph = phi i64 [ %.sroa.0.0, %bb.j ], [ %i.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65 ]
  %i.ah = shl nuw i64 %.val42.sink, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43.sink, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56 ], [ %i.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65 ], [ %.sroa.0.1.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.1

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit62, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit62 ], [ %i.al, %bb.l ] ; 2 uses
  %.val40 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.ai = icmp eq i64 %.val40, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59, label %bb.k

bb.k:                                             ; preds = %.body
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val41 = load ptr, ptr %i.aj, align 8, !nonnull !24, !noundef !24
  %i.ak = shl nuw i64 %.val40, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59

bb.l:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa260 = phi i64 [ %ind.escape, %middle.block ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.m
  store i64 %i.m, ptr %i.am, align 8, !noalias !21139
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !21140
  %4 = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 9) 8) #65, !noalias !21140 ; 2 uses
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #68
          to label %.noexc61 unwind label %bb.n

.noexc61:                                         ; preds = %bb.m
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit62: ; preds = %bb.n, %bb.o
  %.sroa.7.0 = phi ptr [ %i.w, %bb.n ], [ %i.ba, %bb.o ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %i.ax, %bb.o ]
  %i.an = shl nuw i64 %i.t, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %.body

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit62

.lr.ph.preheader:                                 ; preds = %.loopexit
  %6 = add nuw nsw i64 %.lcssa260, 2
  %i.ap = ptrtoint ptr %4 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %.idx = shl nuw nsw i64 %i.j, 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %.idx178 = shl nuw nsw i64 %i.m, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx178
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.v
  %i.aw = icmp eq ptr %i.bb, %i.as
  br i1 %i.aw, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %.invoke, %bb.p
  %.sroa.783.0147 = phi i64 [ %.sroa.783.0160, %.invoke ], [ %.sroa.7.1163, %bb.p ]
  %.sroa.7.1130 = phi i64 [ %.sroa.7.1163, %.invoke ], [ %.sroa.783.0160, %bb.p ]
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = inttoptr i64 %.sroa.783.0147 to ptr     ; 2 uses
  %i.az = shl nuw i64 %i.t, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  %i.ba = inttoptr i64 %.sroa.7.1130 to ptr
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit62

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.sroa.7.1163 = phi i64 [ %.sroa.783.0160, %..loopexit_crit_edge ], [ %i.y, %.lr.ph.preheader ] ; 5 uses
  %.sroa.14.0162 = phi i64 [ %.sroa.15.0159, %..loopexit_crit_edge ], [ %6, %.lr.ph.preheader ] ; 3 uses
  %.sroa.783.0160 = phi i64 [ %.sroa.7.1163, %..loopexit_crit_edge ], [ %i.ap, %.lr.ph.preheader ] ; 5 uses
  %.sroa.15.0159 = phi i64 [ %.sroa.14.0162, %..loopexit_crit_edge ], [ %i.t, %.lr.ph.preheader ] ; 8 uses
  %.sroa.089.0158 = phi ptr [ %i.bb, %..loopexit_crit_edge ], [ %i.ar, %.lr.ph.preheader ] ; 2 uses
  %.sroa.791.0157 = phi i64 [ %i.bc, %..loopexit_crit_edge ], [ 0, %.lr.ph.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.089.0158, i64 4 ; 2 uses
  %i.bc = add nuw nsw i64 %.sroa.791.0157, 1      ; 3 uses
  %i.bd = inttoptr i64 %.sroa.783.0160 to ptr     ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = inttoptr i64 %.sroa.7.1163 to ptr       ; 2 uses
  %i.bf = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.0162, i64 1)
  %i.bg = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.15.0159, i64 1)
  br label %bb.s

._crit_edge:                                      ; preds = %..loopexit_crit_edge
  %i.bh = icmp ult i64 %i.m, %.sroa.15.0159
  br i1 %i.bh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit64, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %.sroa.15.0159, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @611) #68
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit64: ; preds = %._crit_edge
  %i.bi = inttoptr i64 %.sroa.783.0160 to ptr     ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.m
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !24 ; 2 uses
  %i.bl = inttoptr i64 %.sroa.7.1163 to ptr       ; 2 uses
  %i.bm = shl nuw i64 %i.t, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  %i.bn = shl nuw i64 %i.t, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  %.val38 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.bo = icmp eq i64 %.val38, 0
  br i1 %i.bo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65, label %bb.r

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val39 = load ptr, ptr %i.bp, align 8, !nonnull !24, !noundef !24
  %i.bq = shl nuw i64 %.val38, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val39, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65: ; preds = %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.br = icmp eq i64 %.val, 0
  br i1 %i.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66.sink.split

bb.s:                                             ; preds = %.lr.ph, %bb.v
  %i.bs = phi i64 [ %i.bc, %.lr.ph ], [ %.sroa.0.0.i71, %bb.v ]
  %.sroa.794.0156 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %bb.v ] ; 5 uses
  %.sroa.092.0155 = phi ptr [ %i.au, %.lr.ph ], [ %i.bt, %bb.v ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.092.0155, i64 4 ; 2 uses
  %i.bu = add nuw nsw i64 %.sroa.794.0156, 1      ; 5 uses
  %i.bv = load i32, ptr %.sroa.089.0158, align 4, !range !21141, !noundef !24
  %i.bw = load i32, ptr %.sroa.092.0155, align 4, !range !21141, !noundef !24
  %i.bx = icmp ne i32 %i.bv, %i.bw
  %. = zext i1 %i.bx to i64
  %exitcond.not = icmp eq i64 %.sroa.794.0156, %i.bf
  br i1 %exitcond.not, label %.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %exitcond219.not = icmp eq i64 %.sroa.794.0156, %.sroa.15.0159
  br i1 %exitcond219.not, label %.invoke, label %bb.u

.invoke:                                          ; preds = %bb.u, %bb.t, %bb.s
  %i.by = phi i64 [ %.sroa.15.0159, %bb.t ], [ %i.bu, %bb.s ], [ %i.bu, %bb.u ]
  %i.bz = phi i64 [ %.sroa.15.0159, %bb.t ], [ %.sroa.14.0162, %bb.s ], [ %.sroa.15.0159, %bb.u ]
  %i.ca = phi ptr [ @613, %bb.t ], [ @612, %bb.s ], [ @614, %bb.u ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.by, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #68
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.t
  %exitcond220.not = icmp eq i64 %.sroa.794.0156, %i.bg
  br i1 %exitcond220.not, label %.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.794.0156
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !24
  %i.cd = add i64 %i.cc, %.
  %i.ce = add i64 %i.bs, 1
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bu
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !24
  %i.ch = add i64 %i.cg, 1
  %.sroa.0.0.i70 = tail call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %i.ch)
  %.sroa.0.0.i71 = tail call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %.sroa.0.0.i70) ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bu
  store i64 %.sroa.0.0.i71, ptr %i.ci, align 8
  %i.cj = icmp eq ptr %i.bt, %i.av
  br i1 %i.cj, label %..loopexit_crit_edge, label %bb.s

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59
  resume { ptr, i32 } %.pn35
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCs63DIHKhvmTb_10lance_core5error25error_source_is_not_found(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24 ; 2 uses
  call void %i.e(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %0)
  %i.f = load i128, ptr %i.c, align 16, !noundef !24
  %i.g = icmp eq i128 %i.f, 162776053410651436834387305381202251793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void %i.e(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %0)
  %i.h = load i128, ptr %i.b, align 16, !noundef !24
  %i.i = icmp eq i128 %i.h, 12564179346671254936984059711004966300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.i, label %bb.i, label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !21146)
  %i.j = load i8, ptr %0, align 8, !range !84, !alias.scope !21146, !noundef !24
  switch i8 %i.j, label %_RNvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5Error12is_not_found.exit [
    i8 16, label %bb.d
    i8 17, label %bb.e
    i8 22, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  br label %_RNvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5Error12is_not_found.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %i.k, align 8, !alias.scope !21146
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !21146
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !21146, !nonnull !24, !noundef !24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !21146, !nonnull !24, !align !51, !noundef !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21146
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !24, !noalias !21146, !nonnull !24
  call void %i.q(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.m), !noalias !21146, !inline_history !114
  %i.r = load i128, ptr %i.a, align 16, !noalias !21146, !noundef !24
  %i.s = icmp eq i128 %i.r, 107172354237989828223068118132179898405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21146
  br i1 %i.s, label %_RNvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5Error12is_not_found.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %.pre17, %bb.e ], [ %i.o, %bb.f ]
  %i.u = phi ptr [ %.pre, %bb.e ], [ %i.m, %bb.f ]
  %i.v = call fastcc noundef zeroext i1 @_RNvNtCs63DIHKhvmTb_10lance_core5error25error_source_is_not_found(ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.t), !noalias !21146, !inline_history !114
  br label %_RNvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5Error12is_not_found.exit

bb.h:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !24, !nonnull !24
  %i.y = call { ptr, ptr } %i.x(ptr noundef nonnull %0) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %_RNvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5Error12is_not_found.exit, label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %0, align 8, !range !79, !noundef !24 ; 4 uses
  %i.ab = icmp ne i64 %i.aa, -9223372036854775800
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i64 %i.aa, -9223372036854775801
  br i1 %i.ac, label %_RNvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5Error12is_not_found.exit, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ad = extractvalue { ptr, ptr } %i.y, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = call fastcc noundef zeroext i1 @_RNvNtCs63DIHKhvmTb_10lance_core5error25error_source_is_not_found(ptr noundef nonnull %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ad)
  br label %_RNvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5Error12is_not_found.exit

_RNvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5Error12is_not_found.exit: ; preds = %bb.k, %bb.k, %bb.g, %bb.f, %bb.d, %bb.c, %bb.v, %bb.i, %bb.j, %bb.h
  %.sroa.0.1 = phi i1 [ false, %bb.f ], [ false, %bb.h ], [ %i.ae, %bb.j ], [ true, %bb.i ], [ %i.be, %bb.v ], [ false, %bb.c ], [ true, %bb.d ], [ %i.v, %bb.g ], [ false, %bb.k ], [ false, %bb.k ]
  ret i1 %.sroa.0.1

bb.k:                                             ; preds = %bb.i
  %i.af = add nsw i64 %i.aa, 9223372036854775802
  %i.ag = icmp ugt i64 %i.aa, -9223372036854775803
  %i.ah = select i1 %i.ag, i64 %i.af, i64 2
  %i.ai = insertelement <2 x ptr> <ptr poison, ptr @821>, ptr %0, i64 0
  switch i64 %i.ah, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.v
    i64 3, label %bb.o
    i64 4, label %bb.p
end_hunk_0
