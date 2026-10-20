Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoItermNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE10dying_nextCs63DIHKhvmTb_10lance_core:bb.a
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !20577, !nonnull !23, !noundef !23 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20562

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs63DIHKhvmTb_10lance_core.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !20577, !nonnull !23, !noundef !23
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 320
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !20577, !nonnull !23, !noundef !23
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 320
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !20577, !nonnull !23, !noundef !23
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 320
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !20577, !nonnull !23, !noundef !23
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 320
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !20577, !nonnull !23, !noundef !23
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 320
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !20577, !nonnull !23, !noundef !23
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 320
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !20577, !nonnull !23, !noundef !23
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 320
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !20577, !nonnull !23, !noundef !23 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 320
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs63DIHKhvmTb_10lance_core.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.041.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i, i64 316
  %i.ca = load i16, ptr %i.bz, align 4, !noalias !20576 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 320, i64 416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #65, !noalias !20578
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 318
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !20575, !noundef !23
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i36.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i37.i.i.i.i = select i1 %.not.i36.i.i.i.i, i64 320, i64 416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef %..i37.i.i.i.i, i64 noundef 8) #65, !noalias !20578
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #68
          to label %.noexc.i.i unwind label %bb.l, !noalias !20579

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #68, !noalias !20580
  unreachable

_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs63DIHKhvmTb_10lance_core.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !20572
  store i64 0, ptr %i.al, align 8, !alias.scope !20572
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !20572
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
  br i1 %i.d, label %bb.b, label %bb.c, !prof !39

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

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59: ; preds = %bb.j, %.body, %bb.c
  %.pn35 = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn.pn, %.body ], [ %.pn.pn, %bb.j ]
  %.val46 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.e = icmp eq i64 %.val46, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val47 = load ptr, ptr %i.f, align 8, !nonnull !23, !noundef !23
  %i.g = shl nuw i64 %.val46, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val47, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !23 ; 4 uses
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !23 ; 15 uses
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
  %.val45 = load ptr, ptr %i.r, align 8, !nonnull !23, !noundef !23
  %i.s = shl nuw i64 %.val44, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56

_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core.exit.thread.i: ; preds = %bb.e
  %i.t = add nuw nsw i64 %i.m, 1                  ; 6 uses
  %i.u = shl i64 %i.t, 3                          ; 6 uses
  %i.v = icmp eq i64 %i.m, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.u, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.v, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %5, label %bb.h, !prof !24

bb.h:                                             ; preds = %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core.exit.thread.i
  %4 = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %4)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !20619
  %i.w = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #65, !noalias !20619 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %5, label %.thread

5:                                                ; preds = %bb.h, %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core.exit.thread.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.h ], [ 0, %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core.exit.thread.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.u) #68
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %5
  unreachable

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
  store <2 x i64> %vec.ind, ptr %i.z, align 8, !noalias !20620
  store <2 x i64> %step.add, ptr %i.aa, align 8, !noalias !20620
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !20607

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %n.vec, -1
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.thread, %middle.block
  %.ph = phi i64 [ 0, %.thread ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ac
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !20620
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ad, %i.m
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !20608

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val42 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.af = icmp eq i64 %.val42, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val43 = load ptr, ptr %i.ag, align 8, !nonnull !23, !noundef !23
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66.sink.split: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65, %bb.i
  %.val42.sink = phi i64 [ %.val42, %bb.i ], [ %.val, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65 ]
  %.val43.sink = phi ptr [ %.val43, %bb.i ], [ %i.au, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65 ]
  %.sroa.0.1.ph = phi i64 [ %.sroa.0.0, %bb.i ], [ %i.bn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65 ]
  %i.ah = shl nuw i64 %.val42.sink, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43.sink, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit56 ], [ %i.bn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65 ], [ %.sroa.0.1.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.1

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit62, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit62 ], [ %i.al, %bb.k ] ; 2 uses
  %.val40 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.ai = icmp eq i64 %.val40, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59, label %bb.j

bb.j:                                             ; preds = %.body
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val41 = load ptr, ptr %i.aj, align 8, !nonnull !23, !noundef !23
  %i.ak = shl nuw i64 %.val40, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit59

bb.k:                                             ; preds = %5
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa260 = phi i64 [ %ind.escape, %middle.block ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.m
  store i64 %i.m, ptr %i.am, align 8, !noalias !20621
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !20622
  %i.an = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 9) 8) #65, !noalias !20622 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %.lr.ph.preheader

bb.l:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #68
          to label %.noexc61 unwind label %bb.m

.noexc61:                                         ; preds = %bb.l
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit62: ; preds = %bb.m, %bb.n
  %.sroa.7.0 = phi ptr [ %i.w, %bb.m ], [ %i.bd, %bb.n ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %i.ba, %bb.n ]
  %i.ap = shl nuw i64 %i.t, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %.body

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit62

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.ar = add nuw nsw i64 %.lcssa260, 2
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !23, !noundef !23 ; 3 uses
  %.idx = shl nuw nsw i64 %i.j, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %.idx178 = shl nuw nsw i64 %i.m, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx178
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.u
  %i.az = icmp eq ptr %i.be, %i.av
  br i1 %i.az, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.invoke, %bb.o
  %.sroa.783.0147 = phi i64 [ %.sroa.783.0160, %.invoke ], [ %.sroa.7.1163, %bb.o ]
  %.sroa.7.1130 = phi i64 [ %.sroa.7.1163, %.invoke ], [ %.sroa.783.0160, %bb.o ]
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = inttoptr i64 %.sroa.783.0147 to ptr     ; 2 uses
  %i.bc = shl nuw i64 %i.t, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  %i.bd = inttoptr i64 %.sroa.7.1130 to ptr
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit62

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.sroa.7.1163 = phi i64 [ %.sroa.783.0160, %..loopexit_crit_edge ], [ %i.y, %.lr.ph.preheader ] ; 5 uses
  %.sroa.14.0162 = phi i64 [ %.sroa.15.0159, %..loopexit_crit_edge ], [ %i.ar, %.lr.ph.preheader ] ; 3 uses
  %.sroa.783.0160 = phi i64 [ %.sroa.7.1163, %..loopexit_crit_edge ], [ %i.as, %.lr.ph.preheader ] ; 5 uses
  %.sroa.15.0159 = phi i64 [ %.sroa.14.0162, %..loopexit_crit_edge ], [ %i.t, %.lr.ph.preheader ] ; 8 uses
  %.sroa.089.0158 = phi ptr [ %i.be, %..loopexit_crit_edge ], [ %i.au, %.lr.ph.preheader ] ; 2 uses
  %.sroa.791.0157 = phi i64 [ %i.bf, %..loopexit_crit_edge ], [ 0, %.lr.ph.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.089.0158, i64 4 ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.791.0157, 1      ; 3 uses
  %i.bg = inttoptr i64 %.sroa.783.0160 to ptr     ; 2 uses
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = inttoptr i64 %.sroa.7.1163 to ptr       ; 2 uses
  %i.bi = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.0162, i64 1)
  %i.bj = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.15.0159, i64 1)
  br label %bb.r

._crit_edge:                                      ; preds = %..loopexit_crit_edge
  %i.bk = icmp ult i64 %i.m, %.sroa.15.0159
  br i1 %i.bk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit64, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %.sroa.15.0159, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @611) #68
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit64: ; preds = %._crit_edge
  %i.bl = inttoptr i64 %.sroa.783.0160 to ptr     ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.m
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !23 ; 2 uses
  %i.bo = inttoptr i64 %.sroa.7.1163 to ptr       ; 2 uses
  %i.bp = shl nuw i64 %i.t, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  %i.bq = shl nuw i64 %i.t, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  %.val38 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.br = icmp eq i64 %.val38, 0
  br i1 %i.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65, label %bb.q

bb.q:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val39 = load ptr, ptr %i.bs, align 8, !nonnull !23, !noundef !23
  %i.bt = shl nuw i64 %.val38, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val39, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit65: ; preds = %bb.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECs63DIHKhvmTb_10lance_core.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bu = icmp eq i64 %.val, 0
  br i1 %i.bu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit66.sink.split

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %i.bv = phi i64 [ %i.bf, %.lr.ph ], [ %.sroa.0.0.i71, %bb.u ]
  %.sroa.794.0156 = phi i64 [ 0, %.lr.ph ], [ %i.bx, %bb.u ] ; 5 uses
  %.sroa.092.0155 = phi ptr [ %i.ax, %.lr.ph ], [ %i.bw, %bb.u ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.092.0155, i64 4 ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.794.0156, 1      ; 5 uses
  %i.by = load i32, ptr %.sroa.089.0158, align 4, !range !20623, !noundef !23
  %i.bz = load i32, ptr %.sroa.092.0155, align 4, !range !20623, !noundef !23
  %i.ca = icmp ne i32 %i.by, %i.bz
  %. = zext i1 %i.ca to i64
  %exitcond.not = icmp eq i64 %.sroa.794.0156, %i.bi
  br i1 %exitcond.not, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %exitcond219.not.a = icmp eq i64 %.sroa.794.0156, %.sroa.15.0159
  br i1 %exitcond219.not.a, label %.invoke, label %bb.t

.invoke:                                          ; preds = %bb.t, %bb.s, %bb.r
  %i.cb = phi i64 [ %.sroa.15.0159, %bb.s ], [ %i.bx, %bb.r ], [ %i.bx, %bb.t ]
  %i.cc = phi i64 [ %.sroa.15.0159, %bb.s ], [ %.sroa.14.0162, %bb.r ], [ %.sroa.15.0159, %bb.t ]
  %i.cd = phi ptr [ @613, %bb.s ], [ @612, %bb.r ], [ @614, %bb.t ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd) #68
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %bb.s
  %exitcond220.not = icmp eq i64 %.sroa.794.0156, %i.bj
  br i1 %exitcond220.not, label %.invoke, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.sroa.794.0156
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !23
  %i.cg = add i64 %i.cf, %.
  %i.ch = add i64 %i.bv, 1
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bx
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !23
  %i.ck = add i64 %i.cj, 1
  %.sroa.0.0.i70 = tail call noundef i64 @llvm.umin.i64(i64 %i.ch, i64 %i.ck)
  %.sroa.0.0.i71 = tail call noundef i64 @llvm.umin.i64(i64 %i.cg, i64 %.sroa.0.0.i70) ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bx
  store i64 %.sroa.0.0.i71, ptr %i.cl, align 8
  %i.cm = icmp eq ptr %i.bw, %i.ay
  br i1 %i.cm, label %..loopexit_crit_edge, label %bb.r

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
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23 ; 2 uses
  call void %i.e(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %0)
  %i.f = load i128, ptr %i.c, align 16, !noundef !23
  %i.g = icmp eq i128 %i.f, 162776053410651436834387305381202251793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void %i.e(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %0)
  %i.h = load i128, ptr %i.b, align 16, !noundef !23
  %i.i = icmp eq i128 %i.h, 12564179346671254936984059711004966300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.i, label %bb.i, label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !20628)
  %i.j = load i8, ptr %0, align 8, !range !83, !alias.scope !20628, !noundef !23
  switch i8 %i.j, label %_RNvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5Error12is_not_found.exit [
    i8 16, label %bb.d
    i8 17, label %bb.e
    i8 22, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2x_5slice4iter4IterB11_ENCNvMB13_B11_15do_intersection0EE9from_iterB17_:bb.a
  %i.ay = load i64, ptr %i.l, align 8, !alias.scope !22482, !noalias !22483, !noundef !23
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.noexc10
  %.sroa.0.144 = phi ptr [ %i.ba, %.noexc10 ], [ %.sroa.0.058, %.lr.ph ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.144, i64 192 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22484)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.144, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !22484, !nonnull !23, !noundef !23
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.144, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !22484, !noundef !23 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22482)
  %i.bf = load ptr, ptr %i.k, align 8, !alias.scope !22482, !noalias !22483, !nonnull !23, !noundef !23 ; 2 uses
  %i.bg = load i64, ptr %i.l, align 8, !alias.scope !22482, !noalias !22483, !noundef !23 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.bg, 192
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %.noexc10, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split, %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field5child0B8_.exit.thread.i.i.i
  %i.bj = phi ptr [ %i.bk, %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field5child0B8_.exit.thread.i.i.i ], [ %i.bf, %.lr.ph.split ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !22485, !noundef !23
  %i.bn = icmp eq i64 %i.bm, %i.be
  br i1 %i.bn, label %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field5child0B8_.exit.i.i.i, label %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field5child0B8_.exit.thread.i.i.i

_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field5child0B8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !22485, !nonnull !23, !noundef !23
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bp, ptr nonnull readonly %i.bc, i64 %i.be), !noalias !22486, !inline_history !22466
  %i.bq = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bq, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field5child.exit.i, label %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field5child0B8_.exit.thread.i.i.i

_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field5child0B8_.exit.thread.i.i.i: ; preds = %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field5child0B8_.exit.i.i.i, %.lr.ph.i.i.i
  %i.br = icmp eq ptr %i.bk, %i.bh
  br i1 %i.br, label %.noexc10, label %.lr.ph.i.i.i

_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field5child.exit.i: ; preds = %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field5child0B8_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22483
  %i.bs = load i8, ptr %i.n, align 1, !range !29, !noalias !22483, !noundef !23
  %i.bt = trunc nuw i8 %i.bs to i1
  invoke fastcc void @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field15do_intersection(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.0.144, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bj, i1 noundef zeroext %i.bt)
          to label %.noexc14 unwind label %bb.n, !inline_history !22466

.noexc14:                                         ; preds = %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field5child.exit.i
  %i.bu = load i64, ptr %i.b, align 8, !range !40, !noalias !22483, !noundef !23 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.noexc14
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.av)
          to label %bb.i unwind label %bb.n, !inline_history !22466

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22483
  br label %.noexc10

.noexc10:                                         ; preds = %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field5child0B8_.exit.thread.i.i.i, %bb.i, %.lr.ph.split
  %i.bw = icmp eq ptr %i.ba, %i.g
  br i1 %i.bw, label %._crit_edge, label %.lr.ph.split, !llvm.loop !22467

bb.j:                                             ; preds = %.noexc14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %i.av, i64 184, i1 false), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22483
  store i64 %i.bu, ptr %i.c, align 8, !noalias !22487
  %i.bx = icmp samesign ult i64 %i.ax, 48038396025285291
  call void @llvm.assume(i1 %i.bx)
  %i.by = load i64, ptr %i.e, align 8, !range !38, !alias.scope !22481, !noundef !23
  %i.bz = icmp eq i64 %i.ax, %i.by
  br i1 %i.bz, label %bb.l, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveBK_.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveBK_.exit.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveBK_.exit.i_crit_edge, %bb.j
  %i.ca = phi ptr [ %.pre, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveBK_.exit.i_crit_edge ], [ %i.aw, %bb.j ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [192 x i8], ptr %i.ca, i64 %i.ax
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.cb, ptr noundef nonnull align 8 dereferenceable(192) %i.c, i64 192, i1 false)
  %i.cc = add nuw nsw i64 %i.ax, 1                ; 2 uses
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !22481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22487
  %i.cd = icmp eq ptr %i.ba, %i.g
  br i1 %i.cd, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEBH_(ptr noalias noundef align 8 dereferenceable(192) %i.c) #69
          to label %.body unwind label %bb.m, !noalias !22481, !inline_history !22469

bb.l:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ax, i64 noundef 1, i64 noundef 8, i64 noundef 192)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveBK_.exit.i_crit_edge unwind label %bb.k, !inline_history !22469

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveBK_.exit.i_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !22481
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveBK_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !22481, !inline_history !22469
  unreachable

bb.n:                                             ; preds = %bb.h, %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field5child.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.cg, %bb.n ], [ %i.ce, %bb.k ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEB1e_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #69
          to label %bb.p unwind label %bb.o

._crit_edge:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveBK_.exit.i, %.lr.ph, %.noexc10, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.c

bb.o:                                             ; preds = %.body, %bb.d
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.p:                                             ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ar, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsE9from_iterCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, %2
  br i1 %.not.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.c = load i8, ptr %1, align 1, !noalias !22502, !noundef !23 ; 5 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.c, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i: ; preds = %bb.b
  %i.e = and i8 %i.c, 31
  %i.f = zext nneg i8 %i.e to i32                 ; 3 uses
  %i.g = icmp ne ptr %i.b, %2
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.i = load i8, ptr %i.b, align 1, !noalias !22502, !noundef !23
  %i.j = shl nuw nsw i32 %i.f, 6
  %i.k = and i8 %i.i, 63
  %i.l = zext nneg i8 %i.k to i32                 ; 2 uses
  %i.m = or disjoint i32 %i.j, %i.l
  %i.n = icmp samesign ugt i8 %i.c, -33
  br i1 %i.n, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %i.c to i32
  br label %bb.d

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i
  %i.p = icmp ne ptr %i.h, %2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.r = load i8, ptr %i.h, align 1, !noalias !22502, !noundef !23
  %i.s = shl nuw nsw i32 %i.l, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.f, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.c, -17
  br i1 %i.y, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i
  %i.z = icmp ne ptr %i.q, %2
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.q, align 1, !noalias !22502, !noundef !23
  %i.ac = shl nuw nsw i32 %i.f, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i
  %.sroa.0.0.ph = phi ptr [ %i.h, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i ], [ %i.q, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i ], [ %i.aa, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i ], [ %i.b, %bb.c ] ; 3 uses
  %spec.select.i.ph = phi i32 [ %i.m, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i ], [ %i.x, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i ], [ %i.ai, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i ], [ %i.o, %bb.c ]
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.al = sub nuw i64 %i.aj, %i.ak                ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = and i64 %i.al, 3
  %.not.i10 = icmp ne i64 %i.an, 0
  %i.ao = zext i1 %.not.i10 to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.am, %i.ao     ; 2 uses
  %i.ap = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 3)
  %.sroa.0.0.i11 = add nuw nsw i64 %i.ap, 1       ; 3 uses
  %i.aq = shl i64 %.sroa.0.0.i11, 2               ; 4 uses
  %i.ar = icmp samesign ugt i64 %.sroa.0.0.i, 4611686018427387902
  %.not.i.i = icmp ugt i64 %i.aq, 9223372036854775804
  %or.cond.i.i = select i1 %i.ar, i1 true, i1 %.not.i.i, !prof !24
  br i1 %or.cond.i.i, label %bb.g, label %bb.e, !prof !24

bb.e:                                             ; preds = %bb.d
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !22503
  %i.at = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.aq, i64 noundef range(i64 1, 9) 4) #65, !noalias !22503 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.g, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.10.0.ph.i = phi i64 [ %i.aq, %bb.f ], [ undef, %bb.d ]
  %.sroa.4.0.ph.i = phi i64 [ 4, %bb.f ], [ 0, %bb.d ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #68
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.f, %bb.e
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.e ], [ %i.at, %bb.f ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.e ], [ %.sroa.0.0.i11, %bb.f ] ; 2 uses
  %3 = icmp samesign ule i64 %.sroa.0.0.i11, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %3)
  store i32 %spec.select.i.ph, ptr %.sroa.10.0.i, align 4
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22505)
  %.not.i14.i.i = icmp eq ptr %.sroa.0.0.ph, %2
  br i1 %.not.i14.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsE11spec_extendCs63DIHKhvmTb_10lance_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit, %.noexc
  %i.av = phi ptr [ %i.co, %.noexc ], [ %.sroa.10.0.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit ]
  %i.aw = phi i64 [ %i.cq, %.noexc ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit ] ; 5 uses
  %.sroa.0.015.i.i = phi ptr [ %.sroa.0.1.ph.i.i, %.noexc ], [ %.sroa.0.0.ph, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 1 ; 3 uses
  %i.ay = load i8, ptr %.sroa.0.015.i.i, align 1, !noalias !22506, !noundef !23 ; 5 uses
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.h, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ba = and i8 %i.ay, 31
  %i.bb = zext nneg i8 %i.ba to i32               ; 3 uses
  %i.bc = icmp ne ptr %i.ax, %2
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 2 ; 3 uses
  %i.be = load i8, ptr %i.ax, align 1, !noalias !22506, !noundef !23
  %i.bf = shl nuw nsw i32 %i.bb, 6
  %i.bg = and i8 %i.be, 63
  %i.bh = zext nneg i8 %i.bg to i32               ; 2 uses
  %i.bi = or disjoint i32 %i.bf, %i.bh
  %i.bj = icmp samesign ugt i8 %i.ay, -33
  br i1 %i.bj, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bk = zext nneg i8 %i.ay to i32
  br label %bb.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i
  %i.bl = icmp ne ptr %i.bd, %2
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 3 ; 3 uses
  %i.bn = load i8, ptr %i.bd, align 1, !noalias !22506, !noundef !23
  %i.bo = shl nuw nsw i32 %i.bh, 6
  %i.bp = and i8 %i.bn, 63
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bo, %i.bq            ; 2 uses
  %i.bs = shl nuw nsw i32 %i.bb, 12
  %i.bt = or disjoint i32 %i.br, %i.bs
  %i.bu = icmp samesign ugt i8 %i.ay, -17
  br i1 %i.bu, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i, label %bb.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i
  %i.bv = icmp ne ptr %i.bm, %2
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 4
  %i.bx = load i8, ptr %i.bm, align 1, !noalias !22506, !noundef !23
  %i.by = shl nuw nsw i32 %i.bb, 18
  %i.bz = and i32 %i.by, 1835008
  %i.ca = shl nuw nsw i32 %i.br, 6
  %i.cb = and i8 %i.bx, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.ca, %i.cc
  %i.ce = or disjoint i32 %i.cd, %i.bz
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i
  %.sroa.0.1.ph.i.i = phi ptr [ %i.bd, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i ], [ %i.bm, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i ], [ %i.bw, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i ], [ %i.ax, %bb.h ] ; 3 uses
  %spec.select.i.ph.i.i = phi i32 [ %i.bi, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i ], [ %i.bt, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i ], [ %i.ce, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i ], [ %i.bk, %bb.h ]
  %i.cf = icmp samesign ult i64 %i.aw, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = load i64, ptr %i.a, align 8, !range !38, !alias.scope !22507, !noundef !23
  %i.ch = icmp eq i64 %i.aw, %i.cg
  br i1 %i.ch, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeccE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i, label %.noexc

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeccE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i: ; preds = %bb.i
  %i.ci = ptrtoint ptr %.sroa.0.1.ph.i.i to i64
  %i.cj = sub nuw i64 %i.aj, %i.ci                ; 2 uses
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = and i64 %i.cj, 3
  %.not.i7.i.i = icmp ne i64 %i.cl, 0
  %i.cm = zext i1 %.not.i7.i.i to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.ck, 1
  %i.cn = add nuw nsw i64 %.sroa.0.0.i.i.i, %i.cm
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.aw, i64 noundef range(i64 1, 0) %i.cn, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeccE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge unwind label %bb.k

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeccE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeccE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !22507
  br label %.noexc

.noexc:                                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeccE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge, %bb.i
  %i.co = phi ptr [ %.pre, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeccE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge ], [ %i.av, %bb.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.aw
  store i32 %spec.select.i.ph.i.i, ptr %i.cp, align 4, !noalias !22507
  %i.cq = add nuw nsw i64 %i.aw, 1                ; 2 uses
  store i64 %i.cq, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !22507
  %.not.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i, %2
  br i1 %.not.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsE11spec_extendCs63DIHKhvmTb_10lance_core.exit, label %.lr.ph.i.i

_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cs, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsE11spec_extendCs63DIHKhvmTb_10lance_core.exit, %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeccE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %.val8 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.cu = icmp eq i64 %.val8, 0
  br i1 %i.cu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val9 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !23, !noundef !23
  %i.cv = shl nuw i64 %.val8, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.cv, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsE11spec_extendCs63DIHKhvmTb_10lance_core.exit: ; preds = %.noexc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeccEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.ct
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEE9from_iterCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22559)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !22560, !noundef !23 ; 4 uses
  %.not.i.not = icmp eq i64 %i.c, 0
  br i1 %.not.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22561)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !22562, !noundef !23 ; 2 uses
  %.not12.i.i.i = icmp eq i16 %i.f, 0
  %.promoted.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !22562 ; 2 uses
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge19.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted14.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !22562
  br label %bb.c

._crit_edge.i.i.i:                                ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !22562
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !22562
  br label %._crit_edge19.i.i.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.h = phi ptr [ %.promoted14.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.c ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !22562
  %i.j = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.j to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22567)
  %i.o = load i64, ptr %1, align 8, !range !68, !alias.scope !22568, !noundef !23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEECs63DIHKhvmTb_10lance_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !22568, !noundef !23 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEECs63DIHKhvmTb_10lance_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_1
