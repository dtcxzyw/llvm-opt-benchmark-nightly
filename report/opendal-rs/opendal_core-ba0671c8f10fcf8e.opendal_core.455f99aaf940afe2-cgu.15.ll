Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.15?download=true
inline.NumInlined: 678
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMsb_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE10take_frontCs5XgW7KoffLW_12opendal_core:bb.a
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
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 632
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1643

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
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 632
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 632
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 632
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 632
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 632
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 632
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 632
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 632
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE10take_frontB2b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #3 {
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
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 1160
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1644

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
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 1160
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1160
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1160
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1160
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1160
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1160
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1160
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1160
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE10init_frontCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !5
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
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
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1645

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 632
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 632
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 632
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 632
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 632
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 632
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 632
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 632
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE10init_frontB2b_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !5
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
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
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 1160
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1646

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 1160
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 1160
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 1160
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 1160
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 1160
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 1160
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 1160
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 1160
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE10init_frontB2b_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !5
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
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
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 1160
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1647

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 1160
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 1160
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 1160
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 1160
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 1160
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 1160
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 1160
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 1160
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs5XgW7KoffLW_12opendal_core6layers8complete14check_complete(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i64 noundef range(i64 0, 2) %1, i64 %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  %i.e = trunc nuw i64 %1 to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i8 @llvm.ucmp.i8.i64(i64 %3, i64 %2)
  switch i8 %i.f, label %bb.d [
    i8 -1, label %bb.e
    i8 0, label %bb.f
    i8 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 26)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 6, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 6, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 24)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 6, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 6, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtB2_13CompleteLayerNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 13)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorNtNtNtB9_6layers8complete15CompleteServiceNtB5_10ServiceDyn10delete_dynB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1654)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !1654, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1654, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !5, !noalias !1655
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !noalias !1655, !nonnull !5
  call void %i.m(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) #25, !noalias !1654, !inline_history !1656
  %i.n = load i64, ptr %i.b, align 8, !range !10, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.620.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %.sroa.519.0..sroa_idx, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.p, ptr %i.a, align 8, !noalias !1657
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.s, align 8, !noalias !1657
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.t = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 16, 257) 16, i64 noundef 8) #21 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxIBu_DNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3api9DeleteDynEL_EE3newBS_.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #20
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3api9DeleteDynEL_EEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #24
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.v

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxIBu_DNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3api9DeleteDynEL_EE3newBS_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.r, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @90, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxIBu_DNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3api9DeleteDynEL_EE3newBS_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs0_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorNtNtNtB9_6layers8complete15CompleteServiceNtB5_10ServiceDyn10rename_dynB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %0, ptr %i.b, align 8, !alias.scope !1662
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %1, ptr %i.c, align 8, !alias.scope !1662
  store ptr %2, ptr %i.a, align 8, !alias.scope !1662
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.d, align 8, !alias.scope !1662
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %4, ptr %i.e, align 8, !alias.scope !1662
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %5, ptr %i.f, align 8, !alias.scope !1662
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  %i.h = zext i1 %6 to i8
  store i8 %i.h, ptr %i.g, align 1, !alias.scope !1662
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
end_hunk_0
