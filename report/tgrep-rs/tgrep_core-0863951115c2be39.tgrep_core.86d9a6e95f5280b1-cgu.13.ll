Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.13?download=true
inline.NumInlined: 911
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringbE10take_frontCsbzNSmZPCnTx_10tgrep_core:bb.a
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
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1072

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
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 288
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 288
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 288
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReRSB1J_E10take_frontCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #6 {
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
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 368
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1073

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
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 368
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 368
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 368
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE10init_frontCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
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
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1074

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
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 632
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 632
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 632
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 632
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 632
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 632
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 632
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringbE10init_frontCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
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
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 288
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1075

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
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 288
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 288
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 288
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 288
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 288
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 288
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 288
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 288
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReRSB1J_E10init_frontCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
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
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 368
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1076

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
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 368
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 368
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 368
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 368
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 368
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 368
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 368
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 368
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecB1J_EE10init_frontCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
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
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 544
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1077

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
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 544
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 544
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 544
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 544
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 544
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 544
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 544
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 544
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringbE10init_frontCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
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
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 288
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1078

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
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 288
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 288
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 288
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 288
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 288
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 288
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 288
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 288
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReRSB1J_E10init_frontCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
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
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 368
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1079

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
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 368
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 368
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 368
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 368
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 368
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 368
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 368
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 368
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram15check_adjacency(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %.loopexit, label %.preheader.preheader

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.h, %.preheader.preheader ]
  ret i1 %.sroa.0.0

.preheader.preheader:                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.0.0612 = phi ptr [ %i.i, %.preheader.preheader ], [ %0, %bb.a ] ; 3 uses
  %.sroa.6.011 = phi i64 [ %i.j, %.preheader.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0612, i64 4
  %i.c = load i8, ptr %i.b, align 4, !noundef !4  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0612, i64 12
  %i.e = load i8, ptr %i.d, align 4, !noundef !4
  %i.f = tail call noundef i8 @llvm.fshl.i8(i8 %i.c, i8 %i.c, i8 1)
  %i.g = and i8 %i.f, %i.e
  %i.h = icmp ne i8 %i.g, 0                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0612, i64 8
  %i.j = add nsw i64 %.sroa.6.011, -1
  %i.k = icmp ugt i64 %.sroa.6.011, 2
  %or.cond.not = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond.not, label %.preheader.preheader, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram18extract_with_masks(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp samesign ult i64 %2, 3
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.g, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre = load i8, ptr %1, align 1
  %i.h = add nsw i64 %2, -3
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !range !12, !noundef !4
  %i.m = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.m, 2305843009213693952
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  store ptr %i.k, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.p, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoItermENCNvB17_18extract_with_maskss_0EE9from_iterB19_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  ret void

bb.h:                                             ; preds = %bb.b, %bb.n
  %i.q = phi i8 [ %.pre, %bb.b ], [ %i.t, %bb.n ]
  %.sroa.0.044 = phi ptr [ %1, %bb.b ], [ %i.r, %bb.n ] ; 2 uses
  %.sroa.10.042 = phi i64 [ 0, %bb.b ], [ %i.s, %bb.n ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 1 ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.10.042, 1
  %i.t = load i8, ptr %i.r, align 1, !noundef !4  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 2
  %i.v = load i8, ptr %i.u, align 1, !noundef !4
  %i.w = zext i8 %i.q to i32
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = zext i8 %i.t to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.z, %i.x
  %i.ab = zext i8 %i.v to i32
  %i.ac = or disjoint i32 %i.aa, %i.ab            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB12_13TrigramHasherEE11rustc_entryB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %i.ac)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not12 = icmp eq ptr %i.ad, null
  br i1 %.not12, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.424.0.copyload = load i64, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0.copyload = load ptr, ptr %.sroa.525.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = ptrtoint ptr %.sroa.525.0.copyload to i64
  %i.af = load i64, ptr %i.g, align 8, !alias.scope !1084, !noalias !1085, !noundef !4 ; 3 uses
  %i.ag = load i64, ptr %i.c, align 8, !range !12, !alias.scope !1084, !noalias !1085, !noundef !4
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.k, label %_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs9GQRcUOyOHv_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i unwind label %bb.q

_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i: ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %i.f, align 8, !alias.scope !1084, !noalias !1085, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.af
  store i32 %i.ac, ptr %i.aj, align 4, !noalias !1085
  %i.ak = add i64 %i.af, 1
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !1084, !noalias !1085
  %.sroa.018.0.insert.ext.i = and i64 %i.ae, 4294967295
  %i.al = invoke noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEE14insert_no_growBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad, i64 noundef %.sroa.424.0.copyload, i64 %.sroa.018.0.insert.ext.i)
          to label %bb.m unwind label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i, %bb.l
  %.pn.i = phi ptr [ %i.am, %bb.l ], [ %i.al, %_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i ] ; 2 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 2 uses
  %i.an = trunc i64 %.sroa.10.042 to i8
  %i.ao = and i8 %i.an, 7
  %i.ap = shl nuw i8 1, %i.ao
  %i.aq = load i8, ptr %.sroa.0.0.i, align 1, !noundef !4
  %i.ar = or i8 %i.aq, %i.ap
  store i8 %i.ar, ptr %.sroa.0.0.i, align 1
  %i.as = add nuw nsw i64 %.sroa.10.042, 3        ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %2
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %exitcond = icmp eq i64 %.sroa.10.042, %i.h
  br i1 %exitcond, label %bb.e, label %bb.h

bb.o:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.av = load i8, ptr %i.au, align 1, !noundef !4
  %i.aw = mul i8 %i.av, -98
  %i.ax = lshr i8 %i.aw, 5
  %i.ay = shl nuw i8 1, %i.ax
end_hunk_0
