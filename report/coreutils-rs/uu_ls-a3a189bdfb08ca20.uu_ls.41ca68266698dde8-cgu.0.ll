inline.NumInlined: 3251
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB17_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB19_12sort_entries0E0EB19_:bb.a

bb.as:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 275
  %i.gc = load i8, ptr %i.gb, align 1, !range !1030, !noundef !4
  %i.gd = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.fx, i8 noundef %i.gc) #37 ; 2 uses
  %i.ge = extractvalue { i64, i32 } %i.gd, 1      ; 2 uses
  %.not8.i9.i.i.i.i = icmp eq i32 %i.ge, -1       ; 2 uses
  %i.gf = extractvalue { i64, i32 } %i.gd, 0
  %spec.select.i10.i.i.i.i = select i1 %.not8.i9.i.i.i.i, i32 0, i32 %i.ge
  %spec.select9.i11.i.i.i.i = select i1 %.not8.i9.i.i.i.i, i64 0, i64 %i.gf
  br label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit.i.i

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit.i.i: ; preds = %bb.as, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i.i.i
  %.sroa.5.0.i12.i.i.i.i = phi i32 [ %spec.select.i10.i.i.i.i, %bb.as ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i.i.i ]
  %.sroa.0.0.i13.i.i.i.i = phi i64 [ %spec.select9.i11.i.i.i.i, %bb.as ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i.i.i ] ; 2 uses
  %i.gg = icmp eq i64 %.sroa.0.0.i13.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %i.gh = icmp uge i32 %.sroa.5.0.i12.i.i.i.i, %.sroa.5.0.i.i.i.i.i
  %i.gi = icmp sge i64 %.sroa.0.0.i13.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %i.gj = select i1 %i.gg, i1 %i.gh, i1 %i.gi
  br i1 %i.gj, label %bb.at, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit._crit_edge.i.i

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit._crit_edge.i.i: ; preds = %bb.at, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit.i.i, %.outer.i.i47
  %.sroa.01.0.lcssa.i.i52 = phi ptr [ %.sroa.01.0.ph.i.i51, %.outer.i.i47 ], [ %.sroa.01.017.i.i63, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit.i.i ], [ %i.gk, %bb.at ] ; 7 uses
  br label %bb.au

bb.at:                                            ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.01.017.i.i63, i64 304 ; 3 uses
  %i.gl = icmp ult ptr %i.gk, %.sroa.011.0.ph.i.i50
  br i1 %i.gl, label %.lr.ph.i.i62, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit._crit_edge.i.i

bb.au:                                            ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit56.i.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit._crit_edge.i.i
  %.sroa.011.1.i.i53 = phi ptr [ %.sroa.011.0.ph.i.i50, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit._crit_edge.i.i ], [ %i.gm, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit56.i.i ] ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %.sroa.011.1.i.i53, i64 -304 ; 6 uses
  %.not.i.i54 = icmp ult ptr %.sroa.01.0.lcssa.i.i52, %i.gm
  br i1 %.not.i.i54, label %bb.av, label %.critedge.i.i55

bb.av:                                            ; preds = %bb.au
  %.val.i34.i.i = load ptr, ptr %4, align 8, !noalias !2181, !nonnull !4, !align !212, !noundef !4 ; 2 uses
  %.val1.i.i35.i.i = load ptr, ptr %.val.i34.i.i, align 8 ; 2 uses
  %i.gn = load i64, ptr %i.fn, align 8, !range !126, !alias.scope !2172, !noalias !2178, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i36.i.i = icmp eq i64 %i.gn, -1
  br i1 %.not.i.i.i.i.i36.i.i, label %bb.aw, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i.i37.i.i, !prof !127

bb.aw:                                            ; preds = %bb.av
  %i.go = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.fn, ptr noundef nonnull align 8 %.sroa.0.083137) #37 ; 0 uses
  %.pre.i.i.i.i55.i.i = load i64, ptr %i.fn, align 8, !range !128, !alias.scope !2172, !noalias !2178
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i.i37.i.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i.i37.i.i: ; preds = %bb.aw, %bb.av
  %i.gp = phi i64 [ %i.gn, %bb.av ], [ %.pre.i.i.i.i55.i.i, %bb.aw ]
  %.not.i.i.i.i38.i.i = icmp eq i64 %i.gp, 2
  br i1 %.not.i.i.i.i38.i.i, label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i.i42.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i.i37.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i35.i.i) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1.i.i35.i.i, i64 275
  %i.gr = load i8, ptr %i.gq, align 1, !range !1030, !noundef !4
  %i.gs = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.fn, i8 noundef %i.gr) #37 ; 2 uses
  %i.gt = extractvalue { i64, i32 } %i.gs, 1      ; 2 uses
  %.not8.i.i.i39.i.i = icmp eq i32 %i.gt, -1      ; 2 uses
  %i.gu = extractvalue { i64, i32 } %i.gs, 0
  %spec.select.i.i.i40.i.i = select i1 %.not8.i.i.i39.i.i, i32 0, i32 %i.gt
  %spec.select9.i.i.i41.i.i = select i1 %.not8.i.i.i39.i.i, i64 0, i64 %i.gu
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i.i42.i.i

_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i.i42.i.i: ; preds = %bb.ax, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i.i37.i.i
  %.sroa.5.0.i.i.i43.i.i = phi i32 [ %spec.select.i.i.i40.i.i, %bb.ax ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i.i37.i.i ]
  %.sroa.0.0.i.i.i44.i.i = phi i64 [ %spec.select9.i.i.i41.i.i, %bb.ax ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i.i37.i.i ] ; 2 uses
  %.val.i.i45.i.i = load ptr, ptr %.val.i34.i.i, align 8 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %.sroa.011.1.i.i53, i64 -256 ; 4 uses
  %i.gw = load i64, ptr %i.gv, align 8, !range !126, !alias.scope !2181, !noundef !4 ; 2 uses
  %.not.i.i.i6.i.i46.i.i = icmp eq i64 %i.gw, -1
  br i1 %.not.i.i.i6.i.i46.i.i, label %bb.ay, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i47.i.i, !prof !127

bb.ay:                                            ; preds = %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i.i42.i.i
  %i.gx = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.gv, ptr noundef nonnull align 8 %i.gm) #37 ; 0 uses
  %.pre.i.i14.i.i54.i.i = load i64, ptr %i.gv, align 8, !range !128, !alias.scope !2181
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i47.i.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i47.i.i: ; preds = %bb.ay, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i.i42.i.i
  %i.gy = phi i64 [ %i.gw, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i.i42.i.i ], [ %.pre.i.i14.i.i54.i.i, %bb.ay ]
  %.not.i.i8.i.i48.i.i = icmp eq i64 %i.gy, 2
  br i1 %.not.i.i8.i.i48.i.i, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit56.i.i, label %bb.az

bb.az:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i47.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i45.i.i) ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i.i45.i.i, i64 275
  %i.ha = load i8, ptr %i.gz, align 1, !range !1030, !noundef !4
  %i.hb = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.gv, i8 noundef %i.ha) #37 ; 2 uses
  %i.hc = extractvalue { i64, i32 } %i.hb, 1      ; 2 uses
  %.not8.i9.i.i49.i.i = icmp eq i32 %i.hc, -1     ; 2 uses
  %i.hd = extractvalue { i64, i32 } %i.hb, 0
  %spec.select.i10.i.i50.i.i = select i1 %.not8.i9.i.i49.i.i, i32 0, i32 %i.hc
  %spec.select9.i11.i.i51.i.i = select i1 %.not8.i9.i.i49.i.i, i64 0, i64 %i.hd
  br label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit56.i.i

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit56.i.i: ; preds = %bb.az, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i47.i.i
  %.sroa.5.0.i12.i.i52.i.i = phi i32 [ %spec.select.i10.i.i50.i.i, %bb.az ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i47.i.i ]
  %.sroa.0.0.i13.i.i53.i.i = phi i64 [ %spec.select9.i11.i.i51.i.i, %bb.az ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i.i47.i.i ] ; 2 uses
  %i.he = icmp eq i64 %.sroa.0.0.i13.i.i53.i.i, %.sroa.0.0.i.i.i44.i.i
  %i.hf = icmp uge i32 %.sroa.5.0.i12.i.i52.i.i, %.sroa.5.0.i.i.i43.i.i
  %i.hg = icmp sge i64 %.sroa.0.0.i13.i.i53.i.i, %.sroa.0.0.i.i.i44.i.i
  %i.hh = select i1 %i.he, i1 %i.hf, i1 %i.hg
  br i1 %i.hh, label %bb.ba, label %bb.au

bb.ba:                                            ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMBa_SB19_20sort_unstable_by_keyINtNtBc_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1b_12sort_entries0E0E0B1b_.exit56.i.i
  %.not32.i.i58 = icmp eq i64 %.sroa.0.015.ph.i.i49, -2
  br i1 %.not32.i.i58, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtNtB4_5slice4sort8unstable9quicksort8GapGuardNtCs5EcwQX7phGK_5uu_ls8PathDataEEEB1Q_.exit57.i.i, label %bb.bc

.critedge.i.i55:                                  ; preds = %bb.au
  %i.hi = ptrtoint ptr %.sroa.01.0.lcssa.i.i52 to i64
  %i.hj = ptrtoint ptr %i.fl to i64
  %i.hk = sub nuw i64 %i.hi, %i.hj                ; 2 uses
  %i.hl = udiv exact i64 %i.hk, 304               ; 2 uses
  %i.hm = icmp eq i64 %.sroa.0.015.ph.i.i49, -2
  br i1 %i.hm, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvB2_9quicksortB1t_NCINvMB8_SB1t_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1v_12sort_entries0E0E0EB1v_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %.critedge.i.i55
  store i64 %.sroa.0.015.ph.i.i49, ptr %.sroa.107.0.ph.i.i48, align 8, !alias.scope !2181
  %.sroa.10.0..sroa_idx.i.i56 = getelementptr inbounds nuw i8, ptr %.sroa.107.0.ph.i.i48, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.10.0..sroa_idx.i.i56, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.414.i.i45, i64 296, i1 false)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvB2_9quicksortB1t_NCINvMB8_SB1t_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1v_12sort_entries0E0E0EB1v_.exit.i

bb.bc:                                            ; preds = %bb.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.107.0.ph.i.i48, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.01.0.lcssa.i.i52, i64 304, i1 false), !alias.scope !2181
  br label %bb.bd

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtNtB4_5slice4sort8unstable9quicksort8GapGuardNtCs5EcwQX7phGK_5uu_ls8PathDataEEEB1Q_.exit57.i.i: ; preds = %bb.ba
  %.sroa.013.0.copyload.i.i60 = load i64, ptr %.sroa.01.0.lcssa.i.i52, align 8, !alias.scope !2181 ; 2 uses
  %.sroa.414.0..sroa.01.0.sroa_idx.i.i61 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i.i52, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.414.i.i45, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.414.0..sroa.01.0.sroa_idx.i.i61, i64 296, i1 false)
  %i.hn = icmp ne i64 %.sroa.013.0.copyload.i.i60, -2
  tail call void @llvm.assume(i1 %i.hn)
  br label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtNtB4_5slice4sort8unstable9quicksort8GapGuardNtCs5EcwQX7phGK_5uu_ls8PathDataEEEB1Q_.exit57.i.i, %bb.bc
  %.sroa.0.1.i.i59 = phi i64 [ %.sroa.013.0.copyload.i.i60, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtNtB4_5slice4sort8unstable9quicksort8GapGuardNtCs5EcwQX7phGK_5uu_ls8PathDataEEEB1Q_.exit57.i.i ], [ %.sroa.0.015.ph.i.i49, %bb.bc ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.01.0.lcssa.i.i52, ptr noundef nonnull align 8 dereferenceable(304) %i.gm, i64 304, i1 false), !alias.scope !2181
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i.i52, i64 304
  br label %.outer.i.i47

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvB2_9quicksortB1t_NCINvMB8_SB1t_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1v_12sort_entries0E0E0EB1v_.exit.i: ; preds = %bb.bb, %.critedge.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.i.i45)
  %.not7.i57 = icmp samesign ult i64 %i.hl, %.sroa.15.082138
  br i1 %.not7.i57, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvB2_9quicksortB1t_NCINvMB8_SB1t_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1v_12sort_entries0E0E0EB1v_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.bf:                                            ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort30partition_hoare_branchy_cyclicNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvB2_9quicksortB1t_NCINvMB8_SB1t_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1v_12sort_entries0E0E0EB1v_.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.083137, i64 %i.hk ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.a, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.083137, i64 304, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.083137, ptr noundef nonnull align 8 dereferenceable(304) %i.hp, i64 304, i1 false), !alias.scope !2182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.hp, ptr noundef nonnull align 8 dereferenceable(304) %i.a, i64 304, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hq = add nuw nsw i64 %i.hl, 1                ; 2 uses
  %i.hr = sub nuw i64 %.sroa.15.082138, %i.hq
  %i.hs = getelementptr inbounds nuw [304 x i8], ptr %.sroa.0.083137, i64 %i.hq
  br label %.backedge

.backedge:                                        ; preds = %bb.bf, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit
  %.sroa.023.0.be = phi ptr [ %i.ek, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit ], [ null, %bb.bf ]
  %.sroa.15.0.be = phi i64 [ %i.en, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit ], [ %i.hr, %bb.bf ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.el, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit ], [ %i.hs, %bb.bf ] ; 3 uses
  %i.ht = icmp ult i64 %.sroa.15.0.be, 17
  br i1 %i.ht, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 15170019797458513) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 15170019797458513) %3, i64 noundef range(i64 0, 15170019797458513) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp samesign ugt i64 %4, %1
  br i1 %.not.i, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit, !prof !127

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @190, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #38, !noalias !2185
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit: ; preds = %bb.a
  %.not.i7 = icmp samesign ugt i64 %4, %3
  br i1 %.not.i7, label %bb.c, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11.preheader.a, !prof !127

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11.preheader.a: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11.preheader.a
  %i.a = getelementptr [304 x i8], ptr %2, i64 %4
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11

bb.c:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @190, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #38, !noalias !2189
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11._crit_edge: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11.preheader.a
  ret void

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11: ; preds = %.lr.ph.preheader, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11
  %.sroa.0.016 = phi i64 [ %i.ca, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.b = xor i64 %.sroa.0.016, -1
  %i.c = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.0.016 ; 20 uses
  %i.d = getelementptr [304 x i8], ptr %i.a, i64 %i.b ; 20 uses
  %i.e = load <2 x i64>, ptr %i.d, align 8, !alias.scope !2193, !noalias !4
  %i.f = load <2 x i64>, ptr %i.c, align 8, !alias.scope !2197, !noalias !4
  store <2 x i64> %i.e, ptr %i.c, align 8, !alias.scope !2197, !noalias !4
  store <2 x i64> %i.f, ptr %i.d, align 8, !alias.scope !2193, !noalias !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.i = load <2 x i64>, ptr %i.h, align 8, !alias.scope !2200, !noalias !4
  %i.j = load <2 x i64>, ptr %i.g, align 8, !alias.scope !2203, !noalias !4
  store <2 x i64> %i.i, ptr %i.g, align 8, !alias.scope !2203, !noalias !4
  store <2 x i64> %i.j, ptr %i.h, align 8, !alias.scope !2200, !noalias !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.m = load <2 x i64>, ptr %i.l, align 8, !alias.scope !2206, !noalias !4
  %i.n = load <2 x i64>, ptr %i.k, align 8, !alias.scope !2209, !noalias !4
  store <2 x i64> %i.m, ptr %i.k, align 8, !alias.scope !2209, !noalias !4
  store <2 x i64> %i.n, ptr %i.l, align 8, !alias.scope !2206, !noalias !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.p, align 8, !alias.scope !2212, !noalias !4
  %i.r = load <2 x i64>, ptr %i.o, align 8, !alias.scope !2215, !noalias !4
  store <2 x i64> %i.q, ptr %i.o, align 8, !alias.scope !2215, !noalias !4
  store <2 x i64> %i.r, ptr %i.p, align 8, !alias.scope !2212, !noalias !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.u = load <2 x i64>, ptr %i.t, align 8, !alias.scope !2218, !noalias !4
  %i.v = load <2 x i64>, ptr %i.s, align 8, !alias.scope !2221, !noalias !4
  store <2 x i64> %i.u, ptr %i.s, align 8, !alias.scope !2221, !noalias !4
  store <2 x i64> %i.v, ptr %i.t, align 8, !alias.scope !2218, !noalias !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.y = load <2 x i64>, ptr %i.x, align 8, !alias.scope !2224, !noalias !4
  %i.z = load <2 x i64>, ptr %i.w, align 8, !alias.scope !2227, !noalias !4
  store <2 x i64> %i.y, ptr %i.w, align 8, !alias.scope !2227, !noalias !4
  store <2 x i64> %i.z, ptr %i.x, align 8, !alias.scope !2224, !noalias !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !2230, !noalias !4
  %i.ad = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !2233, !noalias !4
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !alias.scope !2233, !noalias !4
  store <2 x i64> %i.ad, ptr %i.ab, align 8, !alias.scope !2230, !noalias !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 8, !alias.scope !2236, !noalias !4
  %i.ah = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !2239, !noalias !4
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !alias.scope !2239, !noalias !4
  store <2 x i64> %i.ah, ptr %i.af, align 8, !alias.scope !2236, !noalias !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !2242, !noalias !4
  %i.al = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !2245, !noalias !4
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !alias.scope !2245, !noalias !4
  store <2 x i64> %i.al, ptr %i.aj, align 8, !alias.scope !2242, !noalias !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !alias.scope !2248, !noalias !4
  %i.ap = load <2 x i64>, ptr %i.am, align 8, !alias.scope !2251, !noalias !4
  store <2 x i64> %i.ao, ptr %i.am, align 8, !alias.scope !2251, !noalias !4
  store <2 x i64> %i.ap, ptr %i.an, align 8, !alias.scope !2248, !noalias !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !2254, !noalias !4
  %i.at = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2257, !noalias !4
  store <2 x i64> %i.as, ptr %i.aq, align 8, !alias.scope !2257, !noalias !4
  store <2 x i64> %i.at, ptr %i.ar, align 8, !alias.scope !2254, !noalias !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.av, align 8, !alias.scope !2260, !noalias !4
  %i.ax = load <2 x i64>, ptr %i.au, align 8, !alias.scope !2263, !noalias !4
  store <2 x i64> %i.aw, ptr %i.au, align 8, !alias.scope !2263, !noalias !4
  store <2 x i64> %i.ax, ptr %i.av, align 8, !alias.scope !2260, !noalias !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !alias.scope !2266, !noalias !4
  %i.bb = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !2269, !noalias !4
  store <2 x i64> %i.ba, ptr %i.ay, align 8, !alias.scope !2269, !noalias !4
  store <2 x i64> %i.bb, ptr %i.az, align 8, !alias.scope !2266, !noalias !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !2272, !noalias !4
  %i.bf = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !2275, !noalias !4
  store <2 x i64> %i.be, ptr %i.bc, align 8, !alias.scope !2275, !noalias !4
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !alias.scope !2272, !noalias !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 224 ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !2278, !noalias !4
  %i.bj = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !2281, !noalias !4
  store <2 x i64> %i.bi, ptr %i.bg, align 8, !alias.scope !2281, !noalias !4
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !alias.scope !2278, !noalias !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 240 ; 2 uses
  %i.bm = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !2284, !noalias !4
  %i.bn = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !2287, !noalias !4
  store <2 x i64> %i.bm, ptr %i.bk, align 8, !alias.scope !2287, !noalias !4
  store <2 x i64> %i.bn, ptr %i.bl, align 8, !alias.scope !2284, !noalias !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 256 ; 2 uses
  %i.bq = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !2290, !noalias !4
  %i.br = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !2293, !noalias !4
  store <2 x i64> %i.bq, ptr %i.bo, align 8, !alias.scope !2293, !noalias !4
  store <2 x i64> %i.br, ptr %i.bp, align 8, !alias.scope !2290, !noalias !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 272 ; 2 uses
  %i.bu = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !2296, !noalias !4
  %i.bv = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !2299, !noalias !4
  store <2 x i64> %i.bu, ptr %i.bs, align 8, !alias.scope !2299, !noalias !4
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !alias.scope !2296, !noalias !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 288 ; 2 uses
  %i.by = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !2302, !noalias !4
  %i.bz = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !2305, !noalias !4
  store <2 x i64> %i.by, ptr %i.bw, align 8, !alias.scope !2305, !noalias !4
  store <2 x i64> %i.bz, ptr %i.bx, align 8, !alias.scope !2302, !noalias !4
  %i.ca = add nuw nsw i64 %.sroa.0.016, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %4
  br i1 %exitcond.not, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11._crit_edge, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData12split_at_mutBw_.exit11
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !40, !alias.scope !2308, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2308
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !2308
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 305) %4) #37, !noalias !2308
  %i.h = load i64, ptr %i.a, align 8, !range !356, !noalias !2308, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !2311, !noalias !2308, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !2308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2308
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #39
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !2308, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2308
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !2308
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !2308
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !range !886, !noundef !4
  switch i64 %i.d, label %bb.c [
    i64 -2, label %bb.b
    i64 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.05.0.i.i = load ptr, ptr %.sroa.05.0.in.i.i, align 8, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !noundef !4
  %i.e = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.i.i, i64 noundef %.sroa.3.0.i.i) #37 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %.sroa.37.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !noundef !4
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.05.0.in.i.i, align 8, !nonnull !4, !noundef !4
  %.not10.i.i = icmp eq ptr %i.f, null            ; 2 uses
  %.sroa.5.0.i.i = select i1 %.not10.i.i, i64 %.sroa.37.0.i.i, i64 %i.g
  %.sroa.0.0.i.i = select i1 %.not10.i.i, ptr %.sroa.06.0.i.i, ptr %i.f
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_0
