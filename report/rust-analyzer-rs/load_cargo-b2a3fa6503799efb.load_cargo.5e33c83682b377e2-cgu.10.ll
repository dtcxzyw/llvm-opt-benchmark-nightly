Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/load_cargo-b2a3fa6503799efb.load_cargo.5e33c83682b377e2-cgu.10?download=true
inline.NumInlined: 105
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs85r3Sry2XhC_10load_cargo
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree nonnull readnone captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs85r3Sry2XhC_10load_cargo.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs85r3Sry2XhC_10load_cargo.exit
  %.sroa.0.06 = phi ptr [ %i.n, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs85r3Sry2XhC_10load_cargo.exit ], [ %i.d, %.lr.ph.preheader ] ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -24 ; 4 uses
  %i.f = call noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.06, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.g = icmp slt i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs85r3Sry2XhC_10load_cargo.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.h = icmp eq ptr %i.e, %0
  br i1 %i.h, label %._crit_edge17, label %.lr.ph16

bb.e:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i14, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.i = icmp eq ptr %i.j, %0
  br i1 %i.i, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i14 = phi ptr [ %i.j, %bb.e ], [ %i.e, %bb.d ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.i14, i64 -24 ; 4 uses
  %i.k = invoke noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph16
  %i.l = icmp slt i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i14, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs85r3Sry2XhC_10load_cargo.exit

bb.g:                                             ; preds = %.lr.ph16
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i14, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !45
  resume { ptr, i32 } %i.m

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs85r3Sry2XhC_10load_cargo.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB36_14ProjectFolders3news0_0E0EB36_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.sroa.7.i = alloca [32 x i8], align 8          ; 5 uses
  %.idx = mul nuw nsw i64 %1, 56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.04 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit
  %.sroa.0.07 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit ], [ %.sroa.0.04, %.lr.ph.preheader ] ; 4 uses
  %.pn6 = phi ptr [ %.sroa.0.07, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit ], [ %0, %.lr.ph.preheader ] ; 8 uses
  %i.b = getelementptr i8, ptr %.pn6, i64 64      ; 2 uses
  %.val11.i = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %.pn6, i64 72      ; 2 uses
  %.val12.i = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr i8, ptr %.pn6, i64 8
  %.val13.i = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr i8, ptr %.pn6, i64 16
  %.val14.i = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %..i.i.i.i.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %.val14.i, i64 range(i64 0, 384307168202282326) %.val12.i) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.a:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = add nuw nsw i64 %.sroa.01.017.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.f, %..i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.a, %.lr.ph
  %i.g = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.g, label %.loopexit8.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph, %bb.a
  %.sroa.01.017.i.i.i.i = phi i64 [ %i.f, %bb.a ], [ 0, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val11.i, i64 %.sroa.01.017.i.i.i.i
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val13.i, i64 %.sroa.01.017.i.i.i.i
  %i.j = tail call noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  switch i8 %i.j, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit [
    i8 0, label %bb.a
    i8 -1, label %.loopexit8.i
  ]

.loopexit8.i:                                     ; preds = %.lr.ph.i.i.i.i, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.026.0.copyload.i = load i64, ptr %.sroa.0.07, align 8 ; 2 uses
  %.sroa.427.0.copyload.i = load ptr, ptr %i.b, align 8 ; 4 uses
  %.sroa.528.0.copyload.i = load i64, ptr %i.c, align 8 ; 4 uses
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn6, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.629.0..sroa_idx.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(56) %.pn6, i64 56, i1 false)
  %i.k = icmp eq ptr %.pn6, %0
  br i1 %i.k, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit8.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.427.0.copyload.i) ]
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.012.i = phi ptr [ %.pn6, %.lr.ph.i ], [ %i.l, %.backedge.i ] ; 10 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.012.i, i64 -56 ; 3 uses
  %i.m = getelementptr i8, ptr %.sroa.0.012.i, i64 -48
  %.val9.i = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr i8, ptr %.sroa.0.012.i, i64 -40
  %.val10.i = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %..i.i.i.i15.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %.val10.i, i64 range(i64 0, 384307168202282326) %.sroa.528.0.copyload.i) ; 2 uses
  %.not.i.i.i16.i = icmp eq i64 %..i.i.i.i15.i, 0
  br i1 %.not.i.i.i16.i, label %._crit_edge.i.i.i22.i, label %.lr.ph.i.i.i17.i

bb.c:                                             ; preds = %.noexc.i
  %i.o = add nuw nsw i64 %.sroa.01.017.i.i.i18.i, 1 ; 2 uses
  %exitcond.not.i.i.i21.i = icmp eq i64 %i.o, %..i.i.i.i15.i
  br i1 %exitcond.not.i.i.i21.i, label %._crit_edge.i.i.i22.i, label %.lr.ph.i.i.i17.i

._crit_edge.i.i.i22.i:                            ; preds = %bb.c, %bb.b
  %i.p = icmp ult i64 %.sroa.528.0.copyload.i, %.val10.i
  br i1 %i.p, label %.backedge.i, label %.loopexit.i

.backedge.i:                                      ; preds = %.noexc.i, %._crit_edge.i.i.i22.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.012.i, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  %i.q = icmp eq ptr %i.l, %0
  br i1 %i.q, label %.loopexit.i, label %bb.b

.lr.ph.i.i.i17.i:                                 ; preds = %bb.b, %bb.c
  %.sroa.01.017.i.i.i18.i = phi i64 [ %i.o, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.427.0.copyload.i, i64 %.sroa.01.017.i.i.i18.i
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.val9.i, i64 %.sroa.01.017.i.i.i18.i
  %i.t = invoke noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %.lr.ph.i.i.i17.i
  switch i8 %i.t, label %.loopexit.i [
    i8 0, label %bb.c
    i8 -1, label %.backedge.i
  ]

.loopexit.i:                                      ; preds = %.backedge.i, %._crit_edge.i.i.i22.i, %.noexc.i, %.loopexit8.i
  %.sroa.0.011.i = phi ptr [ %.sroa.0.012.i, %.noexc.i ], [ %0, %.loopexit8.i ], [ %0, %.backedge.i ], [ %.sroa.0.012.i, %._crit_edge.i.i.i22.i ] ; 4 uses
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.011.i, align 8, !noalias !54
  %.sroa.5.0..sroa.0.011.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.011.sroa_idx.i, align 8, !noalias !54
  %.sroa.6.0..sroa.0.011.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.011.sroa_idx.i, align 8, !noalias !54
  %.sroa.7.0..sroa.0.011.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.011.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i17.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.012.i, align 8, !noalias !55
  %.sroa.5.0..sroa.0.012.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.012.lcssa.sroa_idx.i, align 8, !noalias !55
  %.sroa.6.0..sroa.0.012.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.012.lcssa.sroa_idx.i, align 8, !noalias !55
  %.sroa.7.0..sroa.0.012.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.012.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !55
  resume { ptr, i32 } %i.u

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit: ; preds = %.lr.ph.i.i.i.i, %._crit_edge.i.i.i.i, %.loopexit.i
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 56 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB3c_14ProjectFolders3news0_0E0EB3c_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i = alloca [32 x i8], align 8          ; 9 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB30_14ProjectFolders3news0_0E0EB30_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2T_14ProjectFolders3news0_0E0EB2T_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2T_14ProjectFolders3news0_0E0EB2T_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit47

.loopexit47:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [56 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit47.1

.lr.ph.1:                                         ; preds = %.loopexit47, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit.1
  %.sroa.05.061.1 = phi i64 [ %i.ai, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit.1 ], [ %.sroa.0.0, %.loopexit47 ] ; 4 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.sroa.05.061.1
  %.idx.1 = mul nuw nsw i64 %.sroa.05.061.1, 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.1 ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -56 ; 3 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  %.val11.i.1 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  %.val12.i.1 = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.n, i64 -48
  %.val13.i.1 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.n, i64 -40
  %.val14.i.1 = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %..i.i.i.i.i32.1 = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %.val14.i.1, i64 range(i64 0, 384307168202282326) %.val12.i.1) ; 2 uses
  %.not.i.i.i.i33.1 = icmp eq i64 %..i.i.i.i.i32.1, 0
  br i1 %.not.i.i.i.i33.1, label %._crit_edge.i.i.i.i38.1, label %.lr.ph.i.i.i.i34.1

.lr.ph.i.i.i.i34.1:                               ; preds = %.lr.ph.1, %bb.h
  %.sroa.01.017.i.i.i.i35.1 = phi i64 [ %i.w, %bb.h ], [ 0, %.lr.ph.1 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.val11.i.1, i64 %.sroa.01.017.i.i.i.i35.1
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val13.i.1, i64 %.sroa.01.017.i.i.i.i35.1
  %i.v = tail call noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
  switch i8 %i.v, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit.1 [
    i8 0, label %bb.h
    i8 -1, label %.loopexit8.i.1
  ]

bb.h:                                             ; preds = %.lr.ph.i.i.i.i34.1
  %i.w = add nuw nsw i64 %.sroa.01.017.i.i.i.i35.1, 1 ; 2 uses
  %exitcond.not.i.i.i.i37.1 = icmp eq i64 %i.w, %..i.i.i.i.i32.1
  br i1 %exitcond.not.i.i.i.i37.1, label %._crit_edge.i.i.i.i38.1, label %.lr.ph.i.i.i.i34.1

._crit_edge.i.i.i.i38.1:                          ; preds = %bb.h, %.lr.ph.1
  %i.x = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.x, label %.loopexit8.i.1, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit.1

.loopexit8.i.1:                                   ; preds = %.lr.ph.i.i.i.i34.1, %._crit_edge.i.i.i.i38.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.026.0.copyload.i.1 = load i64, ptr %i.n, align 8 ; 2 uses
  %.sroa.427.0.copyload.i.1 = load ptr, ptr %i.p, align 8 ; 4 uses
  %.sroa.528.0.copyload.i.1 = load i64, ptr %i.q, align 8 ; 4 uses
  %.sroa.629.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.629.0..sroa_idx.i.1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false)
  %i.y = icmp eq i64 %.sroa.05.061.1, 1
  br i1 %i.y, label %.loopexit.i.1, label %.lr.ph.i36.1

.lr.ph.i36.1:                                     ; preds = %.loopexit8.i.1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.427.0.copyload.i.1) ]
  br label %bb.i

bb.i:                                             ; preds = %.backedge.i.1, %.lr.ph.i36.1
  %.sroa.0.012.i.1 = phi ptr [ %i.o, %.lr.ph.i36.1 ], [ %i.z, %.backedge.i.1 ] ; 7 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.012.i.1, i64 -56 ; 3 uses
  %i.aa = getelementptr i8, ptr %.sroa.0.012.i.1, i64 -48
  %.val9.i.1 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %.sroa.0.012.i.1, i64 -40
  %.val10.i.1 = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %..i.i.i.i15.i.1 = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %.val10.i.1, i64 range(i64 0, 384307168202282326) %.sroa.528.0.copyload.i.1) ; 2 uses
  %.not.i.i.i16.i.1 = icmp eq i64 %..i.i.i.i15.i.1, 0
  br i1 %.not.i.i.i16.i.1, label %._crit_edge.i.i.i22.i.1, label %.lr.ph.i.i.i17.i.1

.lr.ph.i.i.i17.i.1:                               ; preds = %bb.i, %bb.j
  %.sroa.01.017.i.i.i18.i.1 = phi i64 [ %i.af, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.sroa.427.0.copyload.i.1, i64 %.sroa.01.017.i.i.i18.i.1
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.val9.i.1, i64 %.sroa.01.017.i.i.i18.i.1
  %i.ae = invoke noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %.noexc.i.1 unwind label %.loopexit.split-lp77

.noexc.i.1:                                       ; preds = %.lr.ph.i.i.i17.i.1
  switch i8 %i.ae, label %.loopexit.i.1 [
    i8 0, label %bb.j
    i8 -1, label %.backedge.i.1
  ]

bb.j:                                             ; preds = %.noexc.i.1
  %i.af = add nuw nsw i64 %.sroa.01.017.i.i.i18.i.1, 1 ; 2 uses
  %exitcond.not.i.i.i21.i.1 = icmp eq i64 %i.af, %..i.i.i.i15.i.1
  br i1 %exitcond.not.i.i.i21.i.1, label %._crit_edge.i.i.i22.i.1, label %.lr.ph.i.i.i17.i.1

._crit_edge.i.i.i22.i.1:                          ; preds = %bb.j, %bb.i
  %i.ag = icmp ult i64 %.sroa.528.0.copyload.i.1, %.val10.i.1
  br i1 %i.ag, label %.backedge.i.1, label %.loopexit.i.1

.backedge.i.1:                                    ; preds = %.noexc.i.1, %._crit_edge.i.i.i22.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.012.i.1, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false)
  %i.ah = icmp eq ptr %i.z, %i.k
  br i1 %i.ah, label %.loopexit.i.1, label %bb.i

.loopexit.i.1:                                    ; preds = %._crit_edge.i.i.i22.i.1, %.backedge.i.1, %.noexc.i.1, %.loopexit8.i.1
  %.sroa.0.011.i.1 = phi ptr [ %.sroa.0.012.i.1, %.noexc.i.1 ], [ %i.o, %.loopexit8.i.1 ], [ %i.k, %.backedge.i.1 ], [ %.sroa.0.012.i.1, %._crit_edge.i.i.i22.i.1 ] ; 4 uses
  store i64 %.sroa.026.0.copyload.i.1, ptr %.sroa.0.011.i.1, align 8, !noalias !76
  %.sroa.5.0..sroa.0.011.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.1, i64 8
  store ptr %.sroa.427.0.copyload.i.1, ptr %.sroa.5.0..sroa.0.011.sroa_idx.i.1, align 8, !noalias !76
  %.sroa.6.0..sroa.0.011.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.1, i64 16
  store i64 %.sroa.528.0.copyload.i.1, ptr %.sroa.6.0..sroa.0.011.sroa_idx.i.1, align 8, !noalias !76
  %.sroa.7.0..sroa.0.011.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.011.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit.1

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit.1: ; preds = %.lr.ph.i.i.i.i34.1, %.loopexit.i.1, %._crit_edge.i.i.i.i38.1
  %i.ai = add nuw nsw i64 %.sroa.05.061.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ai, %i.h
  br i1 %exitcond.1.not, label %.loopexit47.1, label %.lr.ph.1

.loopexit47.1:                                    ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit.1, %.loopexit47
  %i.aj = add nsw i64 %1, -1                      ; 2 uses
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.k, i64 -56
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i
  %i.an = getelementptr i8, ptr %i.bw, i64 56     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.bv, i64 56
  %i.ap = and i64 %1, 1
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %bb.m

.lr.ph.i:                                         ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i, %.loopexit47.1
  %.sroa.0.013.i = phi ptr [ %i.bi, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i ], [ %0, %.loopexit47.1 ] ; 2 uses
  %.sroa.04.012.i = phi i64 [ %i.ar, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i ], [ 0, %.loopexit47.1 ]
  %.sroa.06.011.i = phi ptr [ %i.bh, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i ], [ %2, %.loopexit47.1 ] ; 4 uses
  %.sroa.011.010.i = phi ptr [ %i.bf, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i ], [ %i.k, %.loopexit47.1 ] ; 4 uses
  %.sroa.015.09.i = phi ptr [ %i.bw, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i ], [ %i.am, %.loopexit47.1 ] ; 4 uses
  %.sroa.017.08.i = phi ptr [ %i.bv, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i ], [ %i.al, %.loopexit47.1 ] ; 4 uses
  %.sroa.019.07.i = phi ptr [ %i.bx, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i ], [ %i.ak, %.loopexit47.1 ] ; 2 uses
  %i.ar = add nuw nsw i64 %.sroa.04.012.i, 1      ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.011.010.i, i64 8
  %.sroa.011.0.val.i = load ptr, ptr %i.as, align 8, !alias.scope !77, !nonnull !4, !noundef !4
  %i.at = getelementptr i8, ptr %.sroa.011.010.i, i64 16
  %.sroa.011.0.val22.i = load i64, ptr %i.at, align 8, !alias.scope !77, !noundef !4 ; 2 uses
  %i.au = getelementptr i8, ptr %.sroa.06.011.i, i64 8
  %.sroa.06.0.val.i = load ptr, ptr %i.au, align 8, !alias.scope !77, !nonnull !4, !noundef !4
  %i.av = getelementptr i8, ptr %.sroa.06.011.i, i64 16
  %.sroa.06.0.val23.i = load i64, ptr %i.av, align 8, !alias.scope !77, !noundef !4 ; 2 uses
  %..i.i.i.i.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %.sroa.06.0.val23.i, i64 range(i64 0, 384307168202282326) %.sroa.011.0.val22.i) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.noexc
  %i.aw = add nuw nsw i64 %.sroa.01.017.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aw, %..i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.k, %.lr.ph.i
  %i.ax = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i, %bb.k
  %.sroa.01.017.i.i.i.i = phi i64 [ %i.aw, %bb.k ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.0.val.i, i64 %.sroa.01.017.i.i.i.i
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.0.val.i, i64 %.sroa.01.017.i.i.i.i
  %i.ba = invoke noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i.i
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_RNCNvMCs85r3Sry2XhC_10load_cargoNtB4_14ProjectFolders3news0_0B4_.exit.loopexit.i.i

_RNCNvMCs85r3Sry2XhC_10load_cargoNtB4_14ProjectFolders3news0_0B4_.exit.loopexit.i.i: ; preds = %.noexc
  %i.bc = icmp eq i8 %i.ba, -1
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit.i: ; preds = %_RNCNvMCs85r3Sry2XhC_10load_cargoNtB4_14ProjectFolders3news0_0B4_.exit.loopexit.i.i, %._crit_edge.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.ax, %._crit_edge.i.i.i.i ], [ %i.bc, %_RNCNvMCs85r3Sry2XhC_10load_cargoNtB4_14ProjectFolders3news0_0B4_.exit.loopexit.i.i ] ; 3 uses
  %..i21.i = select i1 %.sroa.0.0.i.i.i.i, ptr %.sroa.011.010.i, ptr %.sroa.06.011.i
  %i.bd = xor i1 %.sroa.0.0.i.i.i.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.013.i, ptr noundef nonnull align 8 dereferenceable(56) %..i21.i, i64 56, i1 false), !noalias !78
  %i.be = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.bf = getelementptr inbounds nuw [56 x i8], ptr %.sroa.011.010.i, i64 %i.be ; 4 uses
  %i.bg = zext i1 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %.sroa.06.011.i, i64 %i.bg ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 56 ; 2 uses
  %i.bj = getelementptr i8, ptr %.sroa.017.08.i, i64 8
  %.sroa.017.0.val.i = load ptr, ptr %i.bj, align 8, !alias.scope !77, !nonnull !4, !noundef !4
  %i.bk = getelementptr i8, ptr %.sroa.017.08.i, i64 16
  %.sroa.017.0.val24.i = load i64, ptr %i.bk, align 8, !alias.scope !77, !noundef !4 ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.015.09.i, i64 8
  %.sroa.015.0.val.i = load ptr, ptr %i.bl, align 8, !alias.scope !77, !nonnull !4, !noundef !4
  %i.bm = getelementptr i8, ptr %.sroa.015.09.i, i64 16
  %.sroa.015.0.val25.i = load i64, ptr %i.bm, align 8, !alias.scope !77, !noundef !4 ; 2 uses
  %..i.i.i.i26.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %.sroa.015.0.val25.i, i64 range(i64 0, 384307168202282326) %.sroa.017.0.val24.i) ; 2 uses
  %.not.i.i.i27.i = icmp eq i64 %..i.i.i.i26.i, 0
  br i1 %.not.i.i.i27.i, label %._crit_edge.i.i.i33.i, label %.lr.ph.i.i.i28.i

bb.l:                                             ; preds = %.noexc30
  %i.bn = add nuw nsw i64 %.sroa.01.017.i.i.i29.i, 1 ; 2 uses
  %exitcond.not.i.i.i32.i = icmp eq i64 %i.bn, %..i.i.i.i26.i
  br i1 %exitcond.not.i.i.i32.i, label %._crit_edge.i.i.i33.i, label %.lr.ph.i.i.i28.i

._crit_edge.i.i.i33.i:                            ; preds = %bb.l, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit.i
  %i.bo = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i

.lr.ph.i.i.i28.i:                                 ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit.i, %bb.l
  %.sroa.01.017.i.i.i29.i = phi i64 [ %i.bn, %bb.l ], [ 0, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.017.0.val.i, i64 %.sroa.01.017.i.i.i29.i
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.015.0.val.i, i64 %.sroa.01.017.i.i.i29.i
  %i.br = invoke noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq)
          to label %.noexc30 unwind label %.loopexit ; 2 uses

.noexc30:                                         ; preds = %.lr.ph.i.i.i28.i
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.l, label %_RNCNvMCs85r3Sry2XhC_10load_cargoNtB4_14ProjectFolders3news0_0B4_.exit.loopexit.i30.i

_RNCNvMCs85r3Sry2XhC_10load_cargoNtB4_14ProjectFolders3news0_0B4_.exit.loopexit.i30.i: ; preds = %.noexc30
  %i.bt = icmp eq i8 %i.br, -1
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRoot7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB1F_14ProjectFolders3news0_0E0B1F_.exit34.i: ; preds = %_RNCNvMCs85r3Sry2XhC_10load_cargoNtB4_14ProjectFolders3news0_0B4_.exit.loopexit.i30.i, %._crit_edge.i.i.i33.i
  %.sroa.0.0.i.i.i31.i = phi i1 [ %i.bo, %._crit_edge.i.i.i33.i ], [ %i.bt, %_RNCNvMCs85r3Sry2XhC_10load_cargoNtB4_14ProjectFolders3news0_0B4_.exit.loopexit.i30.i ] ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i31.i, ptr %.sroa.015.09.i, ptr %.sroa.017.08.i
  %i.bu = xor i1 %.sroa.0.0.i.i.i31.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.07.i, ptr noundef nonnull align 8 dereferenceable(56) %..i.i, i64 56, i1 false), !noalias !79
  %.neg.i.i = sext i1 %i.bu to i64
  %i.bv = getelementptr [56 x i8], ptr %.sroa.017.08.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %.sroa.0.0.i.i.i31.i to i64
  %i.bw = getelementptr [56 x i8], ptr %.sroa.015.09.i, i64 %.neg13.i.i ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.sroa.019.07.i, i64 -56
  %exitcond.not.i = icmp eq i64 %i.ar, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.by = icmp ult ptr %i.bh, %i.an               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.by, ptr %i.bh, ptr %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i, i64 56, i1 false)
  %i.bz = zext i1 %i.by to i64
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bz
  %i.cb = xor i1 %i.by, true
  %i.cc = zext i1 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %i.cc
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.bf, %._crit_edge.i ], [ %i.cd, %bb.m ]
  %.sroa.06.1.i = phi ptr [ %i.bh, %._crit_edge.i ], [ %i.ca, %bb.m ]
  %i.ce = icmp ne ptr %.sroa.06.1.i, %i.an
  %i.cf = icmp ne ptr %.sroa.011.1.i, %i.ao
  %or.cond.i = select i1 %i.ce, i1 true, i1 %i.cf, !prof !80
  br i1 %or.cond.i, label %bb.o, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB30_14ProjectFolders3news0_0E0EB30_.exit, !prof !80

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #15
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.o
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i.i28.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit43 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.o
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit43, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp44, %.loopexit.split-lp.loopexit.split-lp ]
  %i.cg = mul nuw nsw i64 %1, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.cg, i1 false), !noalias !81
  br label %.body

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB30_14ProjectFolders3news0_0E0EB30_.exit: ; preds = %bb.n, %bb.a
  ret void

.body:                                            ; preds = %bb.s, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi83, %bb.s ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit
  %.sroa.05.061 = phi i64 [ %i.dd, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.05.061
  %.idx = mul nuw nsw i64 %.sroa.05.061, 56
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %i.ch, i64 56, i1 false)
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -56 ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 8      ; 2 uses
  %.val11.i = load ptr, ptr %i.ck, align 8, !nonnull !4, !noundef !4
  %i.cl = getelementptr i8, ptr %i.ci, i64 16     ; 2 uses
  %.val12.i = load i64, ptr %i.cl, align 8, !noundef !4 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ci, i64 -48
  %.val13.i = load ptr, ptr %i.cm, align 8, !nonnull !4, !noundef !4
  %i.cn = getelementptr i8, ptr %i.ci, i64 -40
  %.val14.i = load i64, ptr %i.cn, align 8, !noundef !4 ; 2 uses
  %..i.i.i.i.i32 = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %.val14.i, i64 range(i64 0, 384307168202282326) %.val12.i) ; 2 uses
  %.not.i.i.i.i33 = icmp eq i64 %..i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i33, label %._crit_edge.i.i.i.i38, label %.lr.ph.i.i.i.i34

bb.p:                                             ; preds = %.lr.ph.i.i.i.i34
  %i.co = add nuw nsw i64 %.sroa.01.017.i.i.i.i35, 1 ; 2 uses
  %exitcond.not.i.i.i.i37 = icmp eq i64 %i.co, %..i.i.i.i.i32
  br i1 %exitcond.not.i.i.i.i37, label %._crit_edge.i.i.i.i38, label %.lr.ph.i.i.i.i34

._crit_edge.i.i.i.i38:                            ; preds = %bb.p, %.lr.ph
  %i.cp = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.cp, label %.loopexit8.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit

.lr.ph.i.i.i.i34:                                 ; preds = %.lr.ph, %bb.p
  %.sroa.01.017.i.i.i.i35 = phi i64 [ %i.co, %bb.p ], [ 0, %.lr.ph ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %.val11.i, i64 %.sroa.01.017.i.i.i.i35
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.val13.i, i64 %.sroa.01.017.i.i.i.i35
  %i.cs = tail call noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
  switch i8 %i.cs, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit [
    i8 0, label %bb.p
    i8 -1, label %.loopexit8.i
  ]

.loopexit8.i:                                     ; preds = %.lr.ph.i.i.i.i34, %._crit_edge.i.i.i.i38
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.026.0.copyload.i = load i64, ptr %i.ci, align 8 ; 2 uses
  %.sroa.427.0.copyload.i = load ptr, ptr %i.ck, align 8 ; 4 uses
  %.sroa.528.0.copyload.i = load i64, ptr %i.cl, align 8 ; 4 uses
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.629.0..sroa_idx.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i64 56, i1 false)
  %i.ct = icmp eq i64 %.sroa.05.061, 1
  br i1 %i.ct, label %.loopexit.i, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.loopexit8.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.427.0.copyload.i) ]
  br label %bb.q

bb.q:                                             ; preds = %.backedge.i, %.lr.ph.i36
  %.sroa.0.012.i = phi ptr [ %i.cj, %.lr.ph.i36 ], [ %i.cu, %.backedge.i ] ; 7 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.012.i, i64 -56 ; 3 uses
  %i.cv = getelementptr i8, ptr %.sroa.0.012.i, i64 -48
  %.val9.i = load ptr, ptr %i.cv, align 8, !nonnull !4, !noundef !4
  %i.cw = getelementptr i8, ptr %.sroa.0.012.i, i64 -40
  %.val10.i = load i64, ptr %i.cw, align 8, !noundef !4 ; 2 uses
  %..i.i.i.i15.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %.val10.i, i64 range(i64 0, 384307168202282326) %.sroa.528.0.copyload.i) ; 2 uses
  %.not.i.i.i16.i = icmp eq i64 %..i.i.i.i15.i, 0
  br i1 %.not.i.i.i16.i, label %._crit_edge.i.i.i22.i, label %.lr.ph.i.i.i17.i

bb.r:                                             ; preds = %.noexc.i
  %i.cx = add nuw nsw i64 %.sroa.01.017.i.i.i18.i, 1 ; 2 uses
  %exitcond.not.i.i.i21.i = icmp eq i64 %i.cx, %..i.i.i.i15.i
  br i1 %exitcond.not.i.i.i21.i, label %._crit_edge.i.i.i22.i, label %.lr.ph.i.i.i17.i

._crit_edge.i.i.i22.i:                            ; preds = %bb.r, %bb.q
  %i.cy = icmp ult i64 %.sroa.528.0.copyload.i, %.val10.i
  br i1 %i.cy, label %.backedge.i, label %.loopexit.i

.backedge.i:                                      ; preds = %.noexc.i, %._crit_edge.i.i.i22.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.012.i, ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i64 56, i1 false)
  %i.cz = icmp eq ptr %i.cu, %2
  br i1 %i.cz, label %.loopexit.i, label %bb.q

.lr.ph.i.i.i17.i:                                 ; preds = %bb.q, %bb.r
  %.sroa.01.017.i.i.i18.i = phi i64 [ %i.cx, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %.sroa.427.0.copyload.i, i64 %.sroa.01.017.i.i.i18.i
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %.val9.i, i64 %.sroa.01.017.i.i.i18.i
  %i.dc = invoke noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db)
          to label %.noexc.i unwind label %.loopexit76

.noexc.i:                                         ; preds = %.lr.ph.i.i.i17.i
  switch i8 %i.dc, label %.loopexit.i [
    i8 0, label %bb.r
    i8 -1, label %.backedge.i
  ]

.loopexit.i:                                      ; preds = %.backedge.i, %._crit_edge.i.i.i22.i, %.noexc.i, %.loopexit8.i
  %.sroa.0.011.i = phi ptr [ %.sroa.0.012.i, %.noexc.i ], [ %i.cj, %.loopexit8.i ], [ %2, %.backedge.i ], [ %.sroa.0.012.i, %._crit_edge.i.i.i22.i ] ; 4 uses
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.011.i, align 8, !noalias !76
  %.sroa.5.0..sroa.0.011.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.011.sroa_idx.i, align 8, !noalias !76
  %.sroa.6.0..sroa.0.011.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.011.sroa_idx.i, align 8, !noalias !76
  %.sroa.7.0..sroa.0.011.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.011.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit

.loopexit76:                                      ; preds = %.lr.ph.i.i.i17.i
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp77:                             ; preds = %.lr.ph.i.i.i17.i.1
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp77, %.loopexit76
  %.sroa.026.0.copyload.i.lcssa = phi i64 [ %.sroa.026.0.copyload.i, %.loopexit76 ], [ %.sroa.026.0.copyload.i.1, %.loopexit.split-lp77 ]
  %.sroa.427.0.copyload.i.lcssa = phi ptr [ %.sroa.427.0.copyload.i, %.loopexit76 ], [ %.sroa.427.0.copyload.i.1, %.loopexit.split-lp77 ]
  %.sroa.528.0.copyload.i.lcssa = phi i64 [ %.sroa.528.0.copyload.i, %.loopexit76 ], [ %.sroa.528.0.copyload.i.1, %.loopexit.split-lp77 ]
  %.sroa.0.012.i.lcssa = phi ptr [ %.sroa.0.012.i, %.loopexit76 ], [ %.sroa.0.012.i.1, %.loopexit.split-lp77 ] ; 4 uses
  %lpad.phi83 = phi { ptr, i32 } [ %lpad.loopexit82, %.loopexit76 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp77 ]
  store i64 %.sroa.026.0.copyload.i.lcssa, ptr %.sroa.0.012.i.lcssa, align 8, !noalias !82
  %.sroa.5.0..sroa.0.012.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.lcssa, i64 8
  store ptr %.sroa.427.0.copyload.i.lcssa, ptr %.sroa.5.0..sroa.0.012.lcssa.sroa_idx.i, align 8, !noalias !82
  %.sroa.6.0..sroa.0.012.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.lcssa, i64 16
  store i64 %.sroa.528.0.copyload.i.lcssa, ptr %.sroa.6.0..sroa.0.012.lcssa.sroa_idx.i, align 8, !noalias !82
  %.sroa.7.0..sroa.0.012.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.lcssa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.012.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !82
  br label %.body

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2S_14ProjectFolders3news0_0E0EB2S_.exit: ; preds = %.lr.ph.i.i.i.i34, %.loopexit.i, %._crit_edge.i.i.i.i38
  %i.dd = add nuw nsw i64 %.sroa.05.061, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %i.d
  br i1 %exitcond.not, label %.loopexit47, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCscFGNKo4Sl5v_9itertools8adaptors6UpdateINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtNtBV_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB2a_11PackageRootENCNvMCs85r3Sry2XhC_10load_cargoNtB44_14ProjectFolders3new0ENCB41_s_0ENtB8_9Itertools9sorted_byNCB41_s0_0EB44_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEINtB2_12SpecFromIterBU_INtNtCscFGNKo4Sl5v_9itertools8adaptors6UpdateINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtNtB34_5slice4iter4IterNtBW_16ProjectWorkspaceEBK_NCNvMCs85r3Sry2XhC_10load_cargoNtB4O_14ProjectFolders3new0ENCB4L_s_0EE9from_iterB4O_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !88
  store ptr %i.a, ptr %i.b, align 8, !noalias !89
  %i.h = icmp samesign ult i64 %i.g, 2
  br i1 %i.h, label %bb.f, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %i.g, 21
  br i1 %i.i, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB2I_14ProjectFolders3news0_0E0INtNtB21_3vec3VecBZ_EEB2I_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 164703072086692426) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #16
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvMCs85r3Sry2XhC_10load_cargoNtB36_14ProjectFolders3news0_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 164703072086692426) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEECs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #14
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !88
  %i.k = load i64, ptr %i.c, align 8, !range !90, !noundef !4
  %i.l = icmp ult i64 %i.g, 164703072086692426
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdE6fieldsCs85r3Sry2XhC_10load_cargo(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table3getINtNtB8_8interned5ValueNtCs33K2ylI4knu_10hir_expand11MacroCallIdEECs85r3Sry2XhC_10load_cargo(ptr noundef nonnull align 8 %i.a, i32 noundef %2, i32 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCscAsMj0W7j8b_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %bb.i
    i32 0, label %bb.f
  ], !prof !91

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCscAsMj0W7j8b_3std9backtrace14BacktraceFrameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCscAsMj0W7j8b_3std9backtrace14BacktraceFrameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.e, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCscAsMj0W7j8b_3std9backtrace14BacktraceFrameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCscAsMj0W7j8b_3std9backtrace14BacktraceFrameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13
  unreachable

.sink.split:                                      ; preds = %bb.f, %bb.c
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCscAsMj0W7j8b_3std9backtrace14BacktraceFrameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtB6_5Debug3fmtCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !92, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCscAsMj0W7j8b_3std4timeNtB5_10SystemTimeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCscFGNKo4Sl5v_9itertools8adaptorsINtB5_6UpdateINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtNtB10_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB2g_11PackageRootENCNvMCs85r3Sry2XhC_10load_cargoNtB4a_14ProjectFolders3new0ENCB47_s_0ENtNtNtBY_6traits8iterator8Iterator4nextB4a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.619.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.pre.i.i = load ptr, ptr %1, align 8, !alias.scope !135, !noalias !136
  %i.h = icmp eq ptr %.pre.i.i, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  br i1 %i.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEECs85r3Sry2XhC_10load_cargo.exit.i.peel.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !140, !noalias !141, !nonnull !4, !noundef !4
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !140, !noalias !141, !nonnull !4, !noundef !4 ; 4 uses
  %i.k = icmp eq ptr %i.j, %i.i
  br i1 %i.k, label %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1W_3ops8function6FnOnceTQB5_EE9call_onceCs85r3Sry2XhC_10load_cargo.exit.thread.i.i.peel.i, label %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1W_3ops8function6FnOnceTQB5_EE9call_onceCs85r3Sry2XhC_10load_cargo.exit.i.i.peel.i

_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1W_3ops8function6FnOnceTQB5_EE9call_onceCs85r3Sry2XhC_10load_cargo.exit.i.i.peel.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !140, !noalias !141
  %.sroa.024.0.copyload.i.peel.i = load i64, ptr %i.j, align 8, !noalias !142 ; 2 uses
  %.not6.i.i.peel.i = icmp eq i64 %.sroa.024.0.copyload.i.peel.i, -1
  br i1 %.not6.i.i.peel.i, label %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1W_3ops8function6FnOnceTQB5_EE9call_onceCs85r3Sry2XhC_10load_cargo.exit.thread.i.i.peel.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB1w_11PackageRootENCNvMCs85r3Sry2XhC_10load_cargoNtB3q_14ProjectFolders3new0ENtNtNtB9_6traits8iterator8Iterator4nextB3q_.exit.thread

_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1W_3ops8function6FnOnceTQB5_EE9call_onceCs85r3Sry2XhC_10load_cargo.exit.thread.i.i.peel.i: ; preds = %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1W_3ops8function6FnOnceTQB5_EE9call_onceCs85r3Sry2XhC_10load_cargo.exit.i.i.peel.i, %bb.b
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs85r3Sry2XhC_10load_cargo.exit.thread33.i.peel.i unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEECs85r3Sry2XhC_10load_cargo.exit.i.i.loopexit.split-lp.i, !noalias !136

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs85r3Sry2XhC_10load_cargo.exit.thread33.i.peel.i: ; preds = %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1W_3ops8function6FnOnceTQB5_EE9call_onceCs85r3Sry2XhC_10load_cargo.exit.thread.i.i.peel.i
  store ptr null, ptr %1, align 8, !alias.scope !143, !noalias !136
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEECs85r3Sry2XhC_10load_cargo.exit.i.peel.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEECs85r3Sry2XhC_10load_cargo.exit.i.peel.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs85r3Sry2XhC_10load_cargo.exit.thread33.i.peel.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !146, !noalias !147, !noundef !4 ; 4 uses
  %.not.i2.i.peel.i = icmp eq ptr %i.m, null
  br i1 %.not.i2.i.peel.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMCs85r3Sry2XhC_10load_cargoNtB2J_14ProjectFolders3new0EEINtB5_8FuseImplBY_E4nextB2J_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEECs85r3Sry2XhC_10load_cargo.exit.i.peel.i
end_hunk_0
