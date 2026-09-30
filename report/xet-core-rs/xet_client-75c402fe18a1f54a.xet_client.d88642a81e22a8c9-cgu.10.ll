Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.10?download=true
inline.NumInlined: 1148
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBb_4sync3ArcNtNtNtB1P_14metadata_shard12xorb_structs11MDBXorbInfoEE10take_frontCsiAynQAjgDuT_10xet_client:bb.a
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
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 456
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1612

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
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 456
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 456
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 456
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 456
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 456
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 456
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1P_14metadata_shard12file_structs11MDBFileInfoE10take_frontCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #8 {
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
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 2040
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1613

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
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 2040
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2040
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2040
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2040
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2040
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2040
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2040
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2040
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_14BranchAccessorNtNtNtB7_10page_store4base7PageMutE12total_lengthCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  %i.c = load i64, ptr %0, align 8, !range !11, !alias.scope !1616, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1616, !noundef !8
  %reass.add = add i64 %i.f, 24
  %reass.mul5 = mul i64 %reass.add, %i.b
  %i.g = add i64 %reass.mul5, 32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %reass.mul = mul i64 %i.b, 28
  %1 = add i64 %reass.mul, 28                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1616, !nonnull !8, !align !13, !noundef !8 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val14.i = load i64, ptr %i.j, align 8, !noalias !1616, !noundef !8
  %2 = or disjoint i64 %1, 3
  %or.cond.not.i = icmp ult i64 %2, %.val14.i
  br i1 %or.cond.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i, label %bb.e

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !noalias !1616, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %1
  %.sroa.07.0.copyload.i = load i32, ptr %i.m, align 1, !noalias !1616
  %i.n = zext i32 %.sroa.07.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i
  %.sroa.4.0.i.ph = phi i64 [ %i.n, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i ], [ %i.g, %bb.b ]
  ret i64 %.sroa.4.0.i.ph

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_14BranchAccessorNtNtNtB7_10page_store4base7PageMutE3newCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.b = icmp ugt i64 %.val5, 3
  br i1 %i.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 2, i64 noundef 4, i64 noundef %.val5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #37
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 18
  %.sroa.02.0.copyload = load i16, ptr %i.d, align 1
  %i.e = zext i16 %.sroa.02.0.copyload to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.g, align 8
  store i64 %2, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_14BranchAccessorNtNtNtB7_10page_store4base8PageImplE10child_pageCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %.not = icmp ult i64 %2, %i.c
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %i.c, 4
  %i.e = shl i64 %2, 3
  %i.f = add i64 %i.e, 8
  %i.g = add i64 %i.f, %i.d                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !13, !noundef !8 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val10 = load i64, ptr %i.j, align 8, !noundef !8 ; 2 uses
  %i.k = or disjoint i64 %i.g, 7
  %or.cond.not = icmp ult i64 %i.k, %.val10
  br i1 %or.cond.not, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %i.g, 8
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.l, i64 noundef %.val10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #37
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.b
  %.val = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  %.sroa.02.0.copyload = load i64, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_RNvMs1_NtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4baseNtB5_10PageNumber13from_le_bytes(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.o, i64 noundef %.sroa.02.0.copyload)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit
  %storemerge = phi i32 [ 1, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit ], [ 0, %bb.a ]
  store i32 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_14BranchAccessorNtNtNtB7_10page_store4base8PageImplE14child_checksumCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = add i64 %i.b, 1
  %.not = icmp ult i64 %2, %i.c
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %2, 4                            ; 3 uses
  %i.e = or disjoint i64 %i.d, 8                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !align !13, !noundef !8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val5 = load i64, ptr %i.h, align 8, !noundef !8 ; 2 uses
  %i.i = add i64 %i.d, 24                         ; 2 uses
  %.not3 = icmp ugt i64 %i.d, -25
  %.not4 = icmp ugt i64 %i.i, %.val5
  %or.cond = or i1 %.not3, %.not4
  br i1 %or.cond, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.i, i64 noundef %.val5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #37
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.b
  %.val = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  %.sroa.07.0.copyload = load i128, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.07.0.copyload, ptr %i.l, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit
  %storemerge = phi i128 [ 1, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit ], [ 0, %bb.a ]
  store i128 %storemerge, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_14BranchAccessorNtNtNtB7_10page_store4base8PageImplE3keyCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 7 uses
  %.not = icmp ult i64 %1, %i.b
  br i1 %.not, label %bb.b, label %_RNvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_14BranchAccessorNtNtNtB7_10page_store4base8PageImplE7key_endCsiAynQAjgDuT_10xet_client.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %0, align 8, !range !11, !alias.scope !1623, !noundef !8
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  %i.e = load i64, ptr %0, align 8, !range !11, !alias.scope !1625, !noundef !8
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1625, !noundef !8
  %i.i = mul i64 %i.b, 24
  %i.j = mul i64 %i.h, %1
  %i.k = add i64 %i.i, 32
  %i.l = add i64 %i.k, %i.j
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.m = mul i64 %i.b, 24
  %i.n = shl i64 %1, 2
  %i.o = add i64 %i.n, 28
  %i.p = add i64 %i.o, %i.m                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1625, !nonnull !8, !align !13, !noundef !8 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val14.i.i = load i64, ptr %i.s, align 8, !noalias !1625, !noundef !8
  %i.t = or disjoint i64 %i.p, 3
  %or.cond.not.i.i = icmp ult i64 %i.t, %.val14.i.i
  br i1 %or.cond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i, label %bb.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %bb.f
  %.val.i.i = load ptr, ptr %i.r, align 8, !noalias !1625, !nonnull !8, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p
  %.sroa.07.0.copyload.i.i = load i32, ptr %i.v, align 1, !noalias !1625
  %i.w = zext i32 %.sroa.07.0.copyload.i.i to i64
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.x = mul i64 %i.b, 24
  %i.y = add i64 %i.x, 32
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %reass.mul.i = mul i64 %i.b, 28
  %i.z = add i64 %reass.mul.i, 32
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #37, !noalias !1623
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.e
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ %i.y, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1626, !noundef !8
  %i.ac = mul i64 %i.b, 24
  %i.ad = add nuw i64 %1, 1
  %i.ae = mul i64 %i.ab, %i.ad
  %i.af = add i64 %i.ac, 32
end_hunk_0
