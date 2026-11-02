Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE6insertCs5cbCQMMIObr_10typst_eval:bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !14772
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14775)
  %.val.i12.i = load i64, ptr %2, align 8, !alias.scope !14776 ; 2 uses
  %i.ae = icmp eq i64 %.val.i12.i, 0
  br i1 %i.ae, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i12.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14777
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit.thread

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit: ; preds = %._crit_edge, %bb.g
  %.sroa.21.0 = phi i64 [ undef, %bb.g ], [ %.sroa.4.0.i.ph.i.i, %._crit_edge ]
  %.sroa.17.0 = phi ptr [ null, %bb.g ], [ %.sroa.0.0.i.i, %._crit_edge ]
  %.sroa.11.0 = phi i64 [ %.sroa.6.0.copyload.i, %bb.g ], [ %.val11.i, %._crit_edge ]
  %.sroa.7.0 = phi ptr [ %.sroa.523.0.copyload.i, %bb.g ], [ %.val.i, %._crit_edge ] ; 2 uses
  %.sroa.0.08 = load i64, ptr %2, align 8, !alias.scope !14772 ; 2 uses
  %.sroa.14.0 = ptrtoint ptr %1 to i64            ; 2 uses
  %i.af = icmp eq i64 %.sroa.0.08, -1
  br i1 %i.af, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit.thread, label %bb.i

bb.i:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.08, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.21.0, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE12insert_entryCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit.thread, %bb.i
  ret void

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit.thread: ; preds = %bb.h, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit
  %.sroa.7.016 = phi ptr [ %.sroa.7.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit ], [ %.sroa.0.0.i.i, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 2 uses
  %.sroa.14.015 = phi i64 [ %.sroa.14.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE5entryCs5cbCQMMIObr_10typst_eval.exit ], [ %.sroa.8.0.i.i.i33, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_ECs5cbCQMMIObr_10typst_eval.exit.i ], [ %.sroa.8.0.i.i.i33, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.016) ]
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.016, i64 %.sroa.14.015 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !14778
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !noalias !14779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10dying_nextCs5cbCQMMIObr_10typst_eval(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !35 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14814)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !14815
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !14815 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14815 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14815 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !14815
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 632
  %i.g = load ptr, ptr %i.f, align 8, !noalias !14816, !nonnull !35, !noundef !35 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !14785

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 632
  %i.k = load ptr, ptr %i.j, align 8, !noalias !14816, !nonnull !35, !noundef !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 632
  %i.m = load ptr, ptr %i.l, align 8, !noalias !14816, !nonnull !35, !noundef !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 632
  %i.o = load ptr, ptr %i.n, align 8, !noalias !14816, !nonnull !35, !noundef !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 632
  %i.q = load ptr, ptr %i.p, align 8, !noalias !14816, !nonnull !35, !noundef !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 632
  %i.s = load ptr, ptr %i.r, align 8, !noalias !14816, !nonnull !35, !noundef !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 632
  %i.u = load ptr, ptr %i.t, align 8, !noalias !14816, !nonnull !35, !noundef !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 632
  %i.w = load ptr, ptr %i.v, align 8, !noalias !14816, !nonnull !35, !noundef !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 632
  %i.y = load ptr, ptr %i.x, align 8, !noalias !14816, !nonnull !35, !noundef !35 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !14817, !noundef !35 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ae = phi ptr [ %i.ah, %.lr.ph.i2.i ], [ %i.ad, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ae, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.af, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.af = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 632, i64 728
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #45, !noalias !14818
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 352
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !14817, !noundef !35 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.af, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 632, i64 728
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #45, !noalias !14818
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ai = add i64 %i.b, -1
  store i64 %i.ai, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14820)
  %i.aj = load i64, ptr %1, align 8, !range !36, !alias.scope !14821, !noundef !35
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !14821, !noundef !35 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i

._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.an, align 8, !alias.scope !14822
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !14822
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !14821, !noundef !35 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.an, align 8, !alias.scope !14821, !nonnull !35, !noundef !35 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i2.prol ], [ %i.ap, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 632
  %i.as = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ar, align 8, !noalias !14823, !nonnull !35, !noundef !35 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !14797

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i2.preheader ], [ %i.as, %.lr.ph.i.i2.prol ]
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store i64 1, ptr %1, align 8, !alias.scope !14821
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.bc, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 632
  %.sroa.013.0.i.i = load ptr, ptr %i.au, align 8, !noalias !14823, !nonnull !35, !noundef !35
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 632
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.av, align 8, !noalias !14823, !nonnull !35, !noundef !35
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 632
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.aw, align 8, !noalias !14823, !nonnull !35, !noundef !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 632
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.ax, align 8, !noalias !14823, !nonnull !35, !noundef !35
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 632
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.ay, align 8, !noalias !14823, !nonnull !35, !noundef !35
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 632
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.az, align 8, !noalias !14823, !nonnull !35, !noundef !35
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 632
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ba, align 8, !noalias !14823, !nonnull !35, !noundef !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 632
  %i.bc = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.bb, align 8, !noalias !14823, !nonnull !35, !noundef !35 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %._crit_edge.i.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.am, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i ], [ %.sroa.013.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14824)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 626
  %i.bf = load i16, ptr %i.be, align 2, !noalias !14825, !noundef !35
  %i.bg = zext i16 %i.bf to i64
  %i.bh = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.bg
  br i1 %i.bh, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bj, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.cb, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 352
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !14826, !noundef !35 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bk = zext i16 %i.cd to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.bk, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.cb, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.bj, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 640
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bq, %.prol.preheader ], [ %i.bp, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !14827, !nonnull !35, !noundef !35 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 632 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14812

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bp, %bb.i ], [ %i.bq, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.br = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.br, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.ca, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !14827, !nonnull !35, !noundef !35
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 632
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bs, align 8, !noalias !14827, !nonnull !35, !noundef !35
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 632
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bt, align 8, !noalias !14827, !nonnull !35, !noundef !35
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 632
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.bu, align 8, !noalias !14827, !nonnull !35, !noundef !35
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 632
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bv, align 8, !noalias !14827, !nonnull !35, !noundef !35
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 632
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bw, align 8, !noalias !14827, !nonnull !35, !noundef !35
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 632
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bx, align 8, !noalias !14827, !nonnull !35, !noundef !35
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 632
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.by, align 8, !noalias !14827, !nonnull !35, !noundef !35 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 632
  br i1 %i.bz, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 624
  %i.cd = load i16, ptr %i.cc, align 8, !noalias !14826 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 632, i64 728
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #45, !noalias !14828
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 626
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !14825, !noundef !35
  %i.cg = icmp ult i16 %i.cd, %i.cf
  br i1 %i.cg, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 632, i64 728
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #45, !noalias !14828
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #47
          to label %.noexc.i.i unwind label %bb.l, !noalias !14829

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #47, !noalias !14830
  unreachable

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bm, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.al, align 8, !alias.scope !14822
  store i64 0, ptr %i.an, align 8, !alias.scope !14822
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !14822
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB1Q_5value5ValueEE10dying_nextCs5cbCQMMIObr_10typst_eval(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !35 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14865)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !14866
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !14866 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14866 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14866 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !14866
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2t_5value5ValueEE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 456
  %i.g = load ptr, ptr %i.f, align 8, !noalias !14867, !nonnull !35, !noundef !35 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !14836

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 456
  %i.k = load ptr, ptr %i.j, align 8, !noalias !14867, !nonnull !35, !noundef !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 456
  %i.m = load ptr, ptr %i.l, align 8, !noalias !14867, !nonnull !35, !noundef !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 456
  %i.o = load ptr, ptr %i.n, align 8, !noalias !14867, !nonnull !35, !noundef !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 456
  %i.q = load ptr, ptr %i.p, align 8, !noalias !14867, !nonnull !35, !noundef !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  %i.s = load ptr, ptr %i.r, align 8, !noalias !14867, !nonnull !35, !noundef !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 456
  %i.u = load ptr, ptr %i.t, align 8, !noalias !14867, !nonnull !35, !noundef !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.w = load ptr, ptr %i.v, align 8, !noalias !14867, !nonnull !35, !noundef !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 456
  %i.y = load ptr, ptr %i.x, align 8, !noalias !14867, !nonnull !35, !noundef !35 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !14868, !noundef !35 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2B_5value5ValueENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ae = phi ptr [ %i.ah, %.lr.ph.i2.i ], [ %i.ad, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ae, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.af, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.af = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 456, i64 552
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #45, !noalias !14869
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !14868, !noundef !35 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2B_5value5ValueENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2B_5value5ValueENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.af, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 456, i64 552
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #45, !noalias !14869
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2t_5value5ValueEE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2t_5value5ValueEE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2B_5value5ValueENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ai = add i64 %i.b, -1
  store i64 %i.ai, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14871)
  %i.aj = load i64, ptr %1, align 8, !range !36, !alias.scope !14872, !noundef !35
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !14872, !noundef !35 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i

._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.an, align 8, !alias.scope !14873
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !14873
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !14872, !noundef !35 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.an, align 8, !alias.scope !14872, !nonnull !35, !noundef !35 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i2.prol ], [ %i.ap, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 456
  %i.as = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ar, align 8, !noalias !14874, !nonnull !35, !noundef !35 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !14848

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i2.preheader ], [ %i.as, %.lr.ph.i.i2.prol ]
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store i64 1, ptr %1, align 8, !alias.scope !14872
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.bc, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 456
  %.sroa.013.0.i.i = load ptr, ptr %i.au, align 8, !noalias !14874, !nonnull !35, !noundef !35
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 456
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.av, align 8, !noalias !14874, !nonnull !35, !noundef !35
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 456
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.aw, align 8, !noalias !14874, !nonnull !35, !noundef !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 456
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.ax, align 8, !noalias !14874, !nonnull !35, !noundef !35
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 456
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.ay, align 8, !noalias !14874, !nonnull !35, !noundef !35
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 456
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.az, align 8, !noalias !14874, !nonnull !35, !noundef !35
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 456
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ba, align 8, !noalias !14874, !nonnull !35, !noundef !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 456
  %i.bc = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.bb, align 8, !noalias !14874, !nonnull !35, !noundef !35 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %._crit_edge.i.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.am, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i ], [ %.sroa.013.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14875)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 450
  %i.bf = load i16, ptr %i.be, align 2, !noalias !14876, !noundef !35
  %i.bg = zext i16 %i.bf to i64
  %i.bh = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.bg
  br i1 %i.bh, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bj, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.cb, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 176
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !14877, !noundef !35 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bk = zext i16 %i.cd to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.bk, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.cb, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBb_6string6StringNtNtB2s_5value5ValueEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.bj, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2t_5value5ValueEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 464
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bq, %.prol.preheader ], [ %i.bp, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !14878, !nonnull !35, !noundef !35 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 456 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14863

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bp, %bb.i ], [ %i.bq, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.br = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.br, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2t_5value5ValueEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.ca, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !14878, !nonnull !35, !noundef !35
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 456
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bs, align 8, !noalias !14878, !nonnull !35, !noundef !35
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 456
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bt, align 8, !noalias !14878, !nonnull !35, !noundef !35
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 456
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.bu, align 8, !noalias !14878, !nonnull !35, !noundef !35
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 456
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bv, align 8, !noalias !14878, !nonnull !35, !noundef !35
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 456
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bw, align 8, !noalias !14878, !nonnull !35, !noundef !35
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 456
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bx, align 8, !noalias !14878, !nonnull !35, !noundef !35
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 456
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.by, align 8, !noalias !14878, !nonnull !35, !noundef !35 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 456
  br i1 %i.bz, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2t_5value5ValueEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 448
  %i.cd = load i16, ptr %i.cc, align 8, !noalias !14877 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 456, i64 552
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #45, !noalias !14879
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 450
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !14876, !noundef !35
  %i.cg = icmp ult i16 %i.cd, %i.cf
  br i1 %i.cg, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 456, i64 552
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #45, !noalias !14879
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #47
          to label %.noexc.i.i unwind label %bb.l, !noalias !14880

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #47, !noalias !14881
  unreachable

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2t_5value5ValueEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bm, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.al, align 8, !alias.scope !14873
  store i64 0, ptr %i.an, align 8, !alias.scope !14873
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !14873
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2t_5value5ValueEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs52A7LXK8cJh_4toml3map3MapNtNtBc_6string6StringNtNtB2t_5value5ValueEE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10dying_nextCs5cbCQMMIObr_10typst_eval(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !35 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14916)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !14917
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !14917 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14917 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14917 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !14917
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !noalias !14918, !nonnull !35, !noundef !35 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !14887

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !noalias !14918, !nonnull !35, !noundef !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !noalias !14918, !nonnull !35, !noundef !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !noalias !14918, !nonnull !35, !noundef !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !noalias !14918, !nonnull !35, !noundef !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !noalias !14918, !nonnull !35, !noundef !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !noalias !14918, !nonnull !35, !noundef !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  %i.w = load ptr, ptr %i.v, align 8, !noalias !14918, !nonnull !35, !noundef !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !noalias !14918, !nonnull !35, !noundef !35 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !14919, !noundef !35 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ae = phi ptr [ %i.ah, %.lr.ph.i2.i ], [ %i.ad, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ae, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.af, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.af = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 192, i64 288
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #45, !noalias !14920
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !14919, !noundef !35 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.af, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 192, i64 288
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #45, !noalias !14920
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ai = add i64 %i.b, -1
  store i64 %i.ai, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14922)
  %i.aj = load i64, ptr %1, align 8, !range !36, !alias.scope !14923, !noundef !35
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !14923, !noundef !35 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i

._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.an, align 8, !alias.scope !14924
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !14924
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !14923, !noundef !35 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.an, align 8, !alias.scope !14923, !nonnull !35, !noundef !35 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i2.prol ], [ %i.ap, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 192
  %i.as = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ar, align 8, !noalias !14925, !nonnull !35, !noundef !35 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !14899

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i2.preheader ], [ %i.as, %.lr.ph.i.i2.prol ]
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store i64 1, ptr %1, align 8, !alias.scope !14923
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.bc, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 192
  %.sroa.013.0.i.i = load ptr, ptr %i.au, align 8, !noalias !14925, !nonnull !35, !noundef !35
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 192
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.av, align 8, !noalias !14925, !nonnull !35, !noundef !35
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 192
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.aw, align 8, !noalias !14925, !nonnull !35, !noundef !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 192
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.ax, align 8, !noalias !14925, !nonnull !35, !noundef !35
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 192
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.ay, align 8, !noalias !14925, !nonnull !35, !noundef !35
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 192
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.az, align 8, !noalias !14925, !nonnull !35, !noundef !35
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 192
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ba, align 8, !noalias !14925, !nonnull !35, !noundef !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 192
  %i.bc = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.bb, align 8, !noalias !14925, !nonnull !35, !noundef !35 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %._crit_edge.i.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.am, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit_crit_edge.i ], [ %.sroa.013.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14926)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 186
  %i.bf = load i16, ptr %i.be, align 2, !noalias !14927, !noundef !35
  %i.bg = zext i16 %i.bf to i64
  %i.bh = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.bg
  br i1 %i.bh, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bj, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.cb, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 176
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !14928, !noundef !35 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bk = zext i16 %i.cd to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.bk, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.cb, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.bj, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 200
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bq, %.prol.preheader ], [ %i.bp, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !14929, !nonnull !35, !noundef !35 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 192 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14914

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bp, %bb.i ], [ %i.bq, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.br = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.br, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.ca, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !14929, !nonnull !35, !noundef !35
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 192
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bs, align 8, !noalias !14929, !nonnull !35, !noundef !35
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 192
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bt, align 8, !noalias !14929, !nonnull !35, !noundef !35
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 192
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.bu, align 8, !noalias !14929, !nonnull !35, !noundef !35
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 192
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bv, align 8, !noalias !14929, !nonnull !35, !noundef !35
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 192
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bw, align 8, !noalias !14929, !nonnull !35, !noundef !35
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 192
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bx, align 8, !noalias !14929, !nonnull !35, !noundef !35
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 192
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.by, align 8, !noalias !14929, !nonnull !35, !noundef !35 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 192
  br i1 %i.bz, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 184
  %i.cd = load i16, ptr %i.cc, align 8, !noalias !14928 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 192, i64 288
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #45, !noalias !14930
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 186
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !14927, !noundef !35
  %i.cg = icmp ult i16 %i.cd, %i.cf
  br i1 %i.cg, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 192, i64 288
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #45, !noalias !14930
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #47
          to label %.noexc.i.i unwind label %bb.l, !noalias !14931

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #47, !noalias !14932
  unreachable

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bm, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.al, align 8, !alias.scope !14924
  store i64 0, ptr %i.an, align 8, !alias.scope !14924
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !14924
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtNtCs7PiwjADO7TO_10serde_core2de11ignored_any10IgnoredAnyE16deallocating_endNtNtBc_5alloc6GlobalECs5cbCQMMIObr_10typst_eval.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs5cbCQMMIObr_10typst_eval2vm20hint_if_shadowed_std(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(384) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store i64 %3, ptr %i.g, align 8
  %i.h = load i64, ptr %1, align 8, !range !119, !noundef !35
  %i.i = icmp eq i64 %i.h, 30
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !35, !align !45, !noundef !35
  br label %bb.d

bb.c:                                             ; preds = %bb.k, %bb.a
  %i.l = phi i64 [ %i.ai, %bb.k ], [ %3, %bb.a ]
  %i.m = phi ptr [ %i.aj, %bb.k ], [ %2, %bb.a ]
  %i.n = insertvalue { ptr, i64 } poison, ptr %i.m, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %i.l, 1
  ret { ptr, i64 } %i.o

bb.d:                                             ; preds = %bb.g, %bb.b
  %.sroa.03.0 = phi ptr [ %i.k, %bb.b ], [ %i.w, %bb.g ] ; 4 uses
  %i.p = load i8, ptr %.sroa.03.0, align 8, !range !76, !noundef !35
  switch i8 %i.p, label %default.unreachable39 [
    i8 0, label %bb.e
    i8 1, label %.loopexit
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable39:                            ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !35, !noundef !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !35, !noundef !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.d

.body:                                            ; preds = %..body_crit_edge, %bb.h, %bb.l
  %.val30 = phi i64 [ %3, %bb.l ], [ %3, %bb.h ], [ %.val30.pre, %..body_crit_edge ]
  %.val = phi ptr [ %2, %bb.l ], [ %2, %bb.h ], [ %.val.pre, %..body_crit_edge ]
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %i.x, %bb.h ], [ %i.al, %..body_crit_edge ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag12HintedStringECs5cbCQMMIObr_10typst_eval(ptr nonnull %.val, i64 %.val30) #44
          to label %bb.t unwind label %bb.s

bb.h:                                             ; preds = %.loopexit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB4_11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error11description:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector11label_count(ptr noalias nofree nonnull readonly captures(none) %0, i64 range(i64 1, 0) %1) unnamed_addr #22 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector11query_first(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree readonly align 16 captures(none) %2) unnamed_addr #23 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector14page_numbering(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector14query_labelled(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 16 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector15page_supplement(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector18query_count_before(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 16 captures(none) %1, i128 %2) unnamed_addr #22 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector4page(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector4path(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector5pages(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector5query(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 16 captures(none) %1) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 16 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector6anchor(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector7locator(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2, i128 %3) unnamed_addr #23 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector8document(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2) unnamed_addr #23 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector8position(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2) unnamed_addr #23 {
bb.a:
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i128 @_RNvXs_NvCsdaEETE4DqmE_13typst_library1__DNtB6_5WorldEL_NtNtCsloFShupyl5J_6comemo5track5Track4call(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [72 x i8], align 8                ; 11 uses
  %i.f = alloca [2 x i8], align 2                 ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [2 x i8], align 2                 ; 4 uses
  %i.n = alloca [2 x i8], align 2                 ; 4 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 28 uses
  %i.r = alloca [72 x i8], align 8                ; 9 uses
  %i.s = alloca [72 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [12 x i8], align 4                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 7 uses
  %i.w = alloca [64 x i8], align 8                ; 8 uses
  %i.x = alloca [64 x i8], align 8                ; 10 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !range !107, !noundef !35 ; 3 uses
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = icmp sgt i32 %i.aa, 0
  %narrow = select i1 %i.ac, i32 %i.ab, i32 6
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 6, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !35, !nonnull !35
  %i.af = tail call noundef nonnull align 16 ptr %i.ae(ptr noundef nonnull %0) #48
  store ptr %i.af, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !19471
  store i64 8317987319222330741, ptr %i.s, align 8, !noalias !19471
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !19471
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !19471
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !19471
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, i8 0, i64 40, i1 false), !noalias !19471
  call fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtCsdaEETE4DqmE_13typst_library7LibraryENtB8_4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias nofree noundef align 8 dereferenceable(72) %i.s) #48
  %i.ag = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.s) #48, !noalias !19471 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %i.aj = zext i64 %i.ah to i128
  %i.ak = zext i64 %i.ai to i128
  %i.al = shl nuw i128 %i.ak, 64
  %i.am = or disjoint i128 %i.al, %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !19471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !35, !nonnull !35
  %i.ap = tail call noundef nonnull align 16 ptr %i.ao(ptr noundef nonnull %0) #48 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !19472
  store i64 8317987319222330741, ptr %i.r, align 8, !noalias !19472
  %.sroa.3.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i4, align 8, !noalias !19472
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i5, align 8, !noalias !19472
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i6, align 8, !noalias !19472
  %.sroa.6.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i7, i8 0, i64 40, i1 false), !noalias !19472
  %i.aq = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !19473, !nonnull !35, !noundef !35
  %i.ar = tail call noundef i128 %i.aq(ptr noundef nonnull align 16 %i.ap), !noalias !19473, !inline_history !19318 ; 2 uses
  %i.as = icmp eq i128 %i.ar, 0
  br i1 %i.as, label %bb.e, label %_RINvNtCsloFShupyl5J_6comemo4hash4hashRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookEECs5cbCQMMIObr_10typst_eval.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !19475
  store i64 8317987319222330741, ptr %i.q, align 8, !noalias !19475
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !19475
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !19475
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !19475
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19476)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19477)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !19475
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !19478, !noalias !19473, !noundef !35 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i64 noundef %i.av), !noalias !19479
  %i.aw = load ptr, ptr %i.at, align 8, !alias.scope !19478, !noalias !19473, !noundef !35 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne ptr %i.aw, null
  %3 = icmp ne i64 %i.av, 0
  %.not63.i.i.i.i.i.i.i.i = and i1 %3, %.not.i.i.i.i.i.i.i.i
  br i1 %.not63.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ay = load i64, ptr %i.ax, align 16, !alias.scope !19478, !noalias !19473
  %4 = ptrtoint ptr %i.aw to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.sroa.5.04055.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14.054.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.22.053.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.av, %.lr.ph.preheader.i.i.i.i.i.i.i.i ]
  %.sroa.9.052.i.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i.i.i.i.i.i.i ], [ %4, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.az = add i64 %.sroa.22.053.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.04055.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ba = inttoptr i64 %.sroa.9.052.i.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.bb = icmp eq i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 0
  br i1 %i.bb, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.g
  %xtraiter = and i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.14.054.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.prol, i64 544
  %i.bd = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.bc, align 8, !noalias !19480, !nonnull !35, !noundef !35 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !19329

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.14.054.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.be = icmp ult i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 8
  br i1 %i.be, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !noalias !19480, !nonnull !35, !noundef !35
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bg, align 8, !noalias !19480, !nonnull !35, !noundef !35
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bh, align 8, !noalias !19480, !nonnull !35, !noundef !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bi, align 8, !noalias !19480, !nonnull !35, !noundef !35
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bj, align 8, !noalias !19480, !nonnull !35, !noundef !35
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bk, align 8, !noalias !19480, !nonnull !35, !noundef !35
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bl, align 8, !noalias !19480, !nonnull !35, !noundef !35
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %i.bn = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bm, align 8, !noalias !19480, !nonnull !35, !noundef !35 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.g, %bb.f
  %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.14.054.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.9.052.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.04055.i.i.i.i.i.i.i.i, %bb.f ], [ %i.ba, %bb.g ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 538
  %i.bq = load i16, ptr %i.bp, align 2, !noalias !19481, !noundef !35
  %i.br = zext i16 %i.bq to i64
  %i.bs = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.br
  br i1 %i.bs, label %bb.j, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, %bb.h
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %bb.h ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %bb.h ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ]
  %i.bt = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !19482, !noundef !35 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.h
  %i.bu = zext i16 %i.bx to i64
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i, i64 536
  %i.bx = load i16, ptr %i.bw, align 8, !noalias !19482 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 538
  %i.bz = load i16, ptr %i.by, align 2, !noalias !19481, !noundef !35
  %i.ca = icmp ult i16 %i.bx, %i.bz
  br i1 %i.ca, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #47
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !19483

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.cb = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cd = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 552
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter67 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.l, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.cg, %.prol.preheader ], [ %i.cf, %bb.l ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %prol.iter69 = phi i64 [ %prol.iter69.next, %.prol.preheader ], [ 0, %bb.l ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !19484, !nonnull !35, !noundef !35 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter69.next = add i64 %prol.iter69, 1     ; 2 uses
  %prol.iter69.cmp.not = icmp eq i64 %prol.iter69.next, %xtraiter67
  br i1 %prol.iter69.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19343

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.l
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.l ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cf, %bb.l ], [ %i.cg, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ch = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ch, label %.loopexit.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !19484, !nonnull !35, !noundef !35
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ci, align 8, !noalias !19484, !nonnull !35, !noundef !35
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.cj, align 8, !noalias !19484, !nonnull !35, !noundef !35
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ck, align 8, !noalias !19484, !nonnull !35, !noundef !35
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cl, align 8, !noalias !19484, !nonnull !35, !noundef !35
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cm, align 8, !noalias !19484, !nonnull !35, !noundef !35
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.cn, align 8, !noalias !19484, !nonnull !35, !noundef !35
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.co, align 8, !noalias !19484, !nonnull !35, !noundef !35 ; 2 uses
  %i.cp = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.cp, label %.loopexit.i.i.i.i.i.i.i.i, label %.new

bb.m:                                             ; preds = %bb.i
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.prol.loopexit, %.new, %bb.k
  %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.k ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ct = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !noalias !19479, !nonnull !35, !noundef !35
  %i.cy = getelementptr i8, ptr %i.cu, i64 16
  %.val35.i.i.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !noalias !19479, !noundef !35
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i, i64 noundef %.val35.i.i.i.i.i.i.i.i), !noalias !19479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !19485
  store i8 -1, ptr %i.p, align 1, !noalias !19485
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 1), !noalias !19479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !19485
  %i.cz = getelementptr i8, ptr %i.cw, i64 8
  %.val36.i.i.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !noalias !19479, !nonnull !35, !noundef !35
  %i.da = getelementptr i8, ptr %i.cw, i64 16
  %.val37.i.i.i.i.i.i.i.i = load i64, ptr %i.da, align 8, !noalias !19479, !noundef !35 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i64 noundef %.val37.i.i.i.i.i.i.i.i), !noalias !19479
  %i.db = shl nuw nsw i64 %.val37.i.i.i.i.i.i.i.i, 3
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val36.i.i.i.i.i.i.i.i, i64 noundef %i.db), !noalias !19479
  %i.dc = icmp eq i64 %i.az, 0
  br i1 %i.dc, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %bb.f

_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.e
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !19486, !noalias !19473, !nonnull !35, !noundef !35 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.dg = load i64, ptr %i.df, align 16, !alias.scope !19486, !noalias !19473, !noundef !35 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i64 noundef %i.dg), !noalias !19487
  call void @llvm.experimental.noalias.scope.decl(metadata !19488)
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.dg, 88
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx.i.i.i.i.i.i.i.i
  %i.di = icmp eq i64 %i.dg, 0
  br i1 %i.di, label %_RNCNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB7_8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookE20load_or_compute_hash0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %.lr.ph.i1.i.i.i.i.i.i.i

.lr.ph.i1.i.i.i.i.i.i.i:                          ; preds = %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, %_RINvXs5_NtNtNtCsdaEETE4DqmE_13typst_library4text4font4infoNtB6_8FontInfoNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i
end_hunk_1
