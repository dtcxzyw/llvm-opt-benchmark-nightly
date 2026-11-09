Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.11?download=true
inline.NumInlined: 6898
inline.NumDeleted: 3505
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortINtNtNtBa_3ops5range5RangejENCINvMB8_SB17_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2k_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.0.090153 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 22 uses
  %i.dq = add nsw i32 %.sroa.026.087156, -1, !dbg !45752 ; 3 uses
  %i.dr = lshr i64 %.sroa.15.089154, 3, !dbg !45753 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.dr, 6, !dbg !45754
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 %.idx.i, !dbg !45754 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.dr, 112, !dbg !45755
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 %.idx2.i, !dbg !45755 ; 3 uses
  %i.du = icmp samesign ult i64 %.sroa.15.089154, 64, !dbg !45756
  br i1 %i.du, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3INtNtNtBa_3ops5range5RangejENCINvMB8_SBZ_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2b_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.q, !dbg !45756

bb.q:                                             ; preds = %.lr.ph157
  %i.dv = tail call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recINtNtNtBa_3ops5range5RangejENCINvMB8_SB14_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2h_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull readonly align 8 %.sroa.0.090153, ptr noundef readonly %i.ds, ptr noundef readonly %i.dt, i64 noundef %i.dr), !dbg !45757
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotINtNtNtBa_3ops5range5RangejENCINvMB8_SB15_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2i_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !45758

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3INtNtNtBa_3ops5range5RangejENCINvMB8_SBZ_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2b_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.lr.ph157
  %.val6.i = load i64, ptr %.sroa.0.090153, align 8, !dbg !45759, !alias.scope !45569, !noundef !3925 ; 2 uses
  %.val7.i = load i64, ptr %i.ds, align 8, !dbg !45759, !alias.scope !45569, !noundef !3925 ; 2 uses
  %i.dw = icmp ult i64 %.val6.i, %.val7.i, !dbg !45760 ; 2 uses
  %.val5.i = load i64, ptr %i.dt, align 8, !dbg !45761, !alias.scope !45569, !noundef !3925 ; 2 uses
  %i.dx = icmp ult i64 %.val6.i, %.val5.i, !dbg !45762
  %i.dy = xor i1 %i.dw, %i.dx, !dbg !45763
  %i.dz = icmp ult i64 %.val7.i, %.val5.i, !dbg !45763
  %i.ea = xor i1 %i.dw, %i.dz, !dbg !45763
  %..i.i = select i1 %i.ea, ptr %i.dt, ptr %i.ds, !dbg !45763
  %.sroa.0.0.i.i34 = select i1 %i.dy, ptr %.sroa.0.090153, ptr %..i.i, !dbg !45763
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotINtNtNtBa_3ops5range5RangejENCINvMB8_SB15_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2i_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !45758

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotINtNtNtBa_3ops5range5RangejENCINvMB8_SB15_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2i_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.q, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3INtNtNtBa_3ops5range5RangejENCINvMB8_SBZ_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2b_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3INtNtNtBa_3ops5range5RangejENCINvMB8_SBZ_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2b_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i ], [ %i.dv, %bb.q ]
  %i.eb = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !45764
  %i.ec = ptrtoint ptr %.sroa.0.090153 to i64, !dbg !45764
  %i.ed = sub nuw i64 %i.eb, %i.ec, !dbg !45764   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.ed, 4, !dbg !45764 ; 3 uses
  %i.ee = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.089154, !dbg !45765
  tail call void @llvm.assume(i1 %i.ee), !dbg !45766
  %.not = icmp eq ptr %.sroa.023.088155, null, !dbg !45767
  br i1 %.not, label %bb.s, label %bb.u, !dbg !45768

bb.r:                                             ; preds = %._crit_edge158, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalINtNtNtBa_3ops5range5RangejENCINvMB8_SB1f_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2s_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit
  ret void, !dbg !45769

bb.s:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotINtNtNtBa_3ops5range5RangejENCINvMB8_SB15_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2i_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45570), !dbg !45770
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE14swap_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 %.sroa.0.090153, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089154, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !dbg !45771
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 16, !dbg !45772 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45571), !dbg !45773
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45572), !dbg !45773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !45774, !noalias !45573
  %i.eg = load <2 x i64>, ptr %i.ef, align 8, !dbg !45775, !alias.scope !45574
  store <2 x i64> %i.eg, ptr %i.b, align 16, !dbg !45776, !noalias !45573
  %i.eh = getelementptr [16 x i8], ptr %.sroa.0.090153, i64 %.sroa.15.089154, !dbg !45777 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -16, !dbg !45777 ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 32, !dbg !45778 ; 3 uses
  %i.ej = icmp ult ptr %.sroa.13.030.i.i, %i.ei, !dbg !45779
  %.val1.i.pre.i.i = load i64, ptr %.sroa.0.090153, align 8, !alias.scope !45575, !noalias !3925 ; 3 uses
  br i1 %i.ej, label %.lr.ph.i.i37, label %.preheader.i.i.preheader, !dbg !45779

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i37, %bb.s
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.s ], [ %i.ex, %.lr.ph.i.i37 ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.030.i.i, %bb.s ], [ %.sroa.13.0.i.i, %.lr.ph.i.i37 ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.ef, %bb.s ], [ %i.et, %.lr.ph.i.i37 ]
  br label %.preheader.i.i, !dbg !45780

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.eo, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ], !dbg !45778 ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ], !dbg !45778 ; 4 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ], !dbg !45778
  %i.ek = icmp eq ptr %.sroa.13.1.i.i, %i.eh, !dbg !45781 ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.ek, ptr %i.b, ptr %.sroa.13.1.i.i, !dbg !45782 ; 2 uses
  %.val.i.i.i36 = load i64, ptr %.sroa.01.0.i.i, align 8, !dbg !45783, !noalias !45576, !noundef !3925
  %i.el = icmp ult i64 %.val.i.i.i36, %.val1.i.pre.i.i, !dbg !45784
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.sroa.23.1.i.i, !dbg !45785 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !dbg !45786, !alias.scope !45574, !noalias !45577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !dbg !45787, !noalias !45576
  %i.en = zext i1 %i.el to i64, !dbg !45788
  %i.eo = add i64 %.sroa.23.1.i.i, %i.en, !dbg !45789 ; 6 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16, !dbg !45790
  br i1 %i.ek, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2K_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i, label %.preheader.i.i, !dbg !45780

.lr.ph.i.i37:                                     ; preds = %bb.s, %.lr.ph.i.i37
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i37 ], [ %.sroa.13.030.i.i, %bb.s ] ; 3 uses
  %.sroa.015.032.i.i = phi ptr [ %i.et, %.lr.ph.i.i37 ], [ %i.ef, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ex, %.lr.ph.i.i37 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i = load i64, ptr %.sroa.13.033.i.i, align 8, !dbg !45791, !alias.scope !45574, !noalias !45578, !noundef !3925
  %i.ep = icmp ult i64 %.val.i11.i.i, %.val1.i.pre.i.i, !dbg !45792
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.sroa.23.031.i.i, !dbg !45793 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.032.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !dbg !45794, !alias.scope !45574, !noalias !45578
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i, i64 16, i1 false), !dbg !45795, !alias.scope !45574, !noalias !45578
  %i.er = zext i1 %i.ep to i64, !dbg !45796
  %i.es = add i64 %.sroa.23.031.i.i, %i.er, !dbg !45797 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 32, !dbg !45798 ; 4 uses
  %.val.i13.i.i = load i64, ptr %i.et, align 8, !dbg !45799, !alias.scope !45574, !noalias !45579, !noundef !3925
  %i.eu = icmp ult i64 %.val.i13.i.i, %.val1.i.pre.i.i, !dbg !45800
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.es, !dbg !45801 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !dbg !45802, !alias.scope !45574, !noalias !45579
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 16, i1 false), !dbg !45803, !alias.scope !45574, !noalias !45579
  %i.ew = zext i1 %i.eu to i64, !dbg !45804
  %i.ex = add i64 %i.es, %i.ew, !dbg !45805       ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 48, !dbg !45778 ; 3 uses
  %i.ey = icmp ult ptr %.sroa.13.0.i.i, %i.ei, !dbg !45779
  br i1 %i.ey, label %.lr.ph.i.i37, label %.preheader.i.i.preheader, !dbg !45779

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2K_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !45806, !noalias !45573
  %.not7.i = icmp ult i64 %i.eo, %.sroa.15.089154, !dbg !45807
  br i1 %.not7.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit, label %bb.t, !dbg !45807

bb.t:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2K_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i
  tail call void @llvm.trap(), !dbg !45808
  unreachable, !dbg !45808

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2K_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE14swap_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 %.sroa.0.090153, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089154, i64 noundef 0, i64 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39), !dbg !45809
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.090153, i64 %i.eo, !dbg !45810 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16, !dbg !45811
  %i.fb = xor i64 %i.eo, -1, !dbg !45812
  %i.fc = add i64 %.sroa.15.089154, %i.fb, !dbg !45812
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortINtNtNtBa_3ops5range5RangejENCINvMB8_SB17_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2k_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 %.sroa.0.090153, i64 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.088155, i32 noundef %i.dq, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !45813
  br label %.backedge, !dbg !45814

bb.u:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotINtNtNtBa_3ops5range5RangejENCINvMB8_SB15_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2i_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 %i.ed, !dbg !45815
  %.sroa.023.0.val = load i64, ptr %.sroa.023.088155, align 8, !dbg !45816, !noundef !3925
  %.val = load i64, ptr %i.fd, align 8, !dbg !45816, !noundef !3925
  %i.fe = icmp ult i64 %.sroa.023.0.val, %.val, !dbg !45817
  br i1 %i.fe, label %bb.s, label %bb.v, !dbg !45816

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45580), !dbg !45818
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE14swap_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 %.sroa.0.090153, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089154, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !dbg !45819
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 16, !dbg !45820 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45581), !dbg !45821
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45582), !dbg !45821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !45822, !noalias !45583
  %i.fg = load <2 x i64>, ptr %i.ff, align 8, !dbg !45823, !alias.scope !45584
  store <2 x i64> %i.fg, ptr %i.a, align 16, !dbg !45824, !noalias !45583
  %i.fh = getelementptr [16 x i8], ptr %.sroa.0.090153, i64 %.sroa.15.089154, !dbg !45825 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 -16, !dbg !45825 ; 2 uses
  %.sroa.13.030.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 32, !dbg !45826 ; 3 uses
  %i.fj = icmp ult ptr %.sroa.13.030.i.i45, %i.fi, !dbg !45827
  %.val1.i.pre.i.i46 = load i64, ptr %.sroa.0.090153, align 8, !alias.scope !45585, !noalias !3925 ; 3 uses
  br i1 %i.fj, label %.lr.ph.i.i58, label %.preheader.i.i47.preheader, !dbg !45827

.preheader.i.i47.preheader:                       ; preds = %.lr.ph.i.i58, %bb.v
  %.sroa.23.1.i.i51.ph = phi i64 [ 0, %bb.v ], [ %i.fx, %.lr.ph.i.i58 ]
  %.sroa.13.1.i.i52.ph = phi ptr [ %.sroa.13.030.i.i45, %bb.v ], [ %.sroa.13.0.i.i64, %.lr.ph.i.i58 ]
  %.sroa.015.1.i.i53.ph = phi ptr [ %i.ff, %bb.v ], [ %i.ft, %.lr.ph.i.i58 ]
  br label %.preheader.i.i47, !dbg !45828

.preheader.i.i47:                                 ; preds = %.preheader.i.i47.preheader, %.preheader.i.i47
  %.sroa.23.1.i.i51 = phi i64 [ %i.fo, %.preheader.i.i47 ], [ %.sroa.23.1.i.i51.ph, %.preheader.i.i47.preheader ], !dbg !45826 ; 2 uses
  %.sroa.13.1.i.i52 = phi ptr [ %.sroa.13.1.sroa.gep.i.i56, %.preheader.i.i47 ], [ %.sroa.13.1.i.i52.ph, %.preheader.i.i47.preheader ], !dbg !45826 ; 4 uses
  %.sroa.015.1.i.i53 = phi ptr [ %.sroa.13.1.i.i52, %.preheader.i.i47 ], [ %.sroa.015.1.i.i53.ph, %.preheader.i.i47.preheader ], !dbg !45826
  %i.fk = icmp eq ptr %.sroa.13.1.i.i52, %i.fh, !dbg !45829 ; 2 uses
  %.sroa.01.0.i.i54 = select i1 %i.fk, ptr %i.a, ptr %.sroa.13.1.i.i52, !dbg !45830 ; 2 uses
  %.val.i.i.i55 = load i64, ptr %.sroa.01.0.i.i54, align 8, !dbg !45831, !noalias !45586, !noundef !3925
  %i.fl = icmp uge i64 %.val1.i.pre.i.i46, %.val.i.i.i55, !dbg !45832
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.sroa.23.1.i.i51, !dbg !45833 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !dbg !45834, !alias.scope !45584, !noalias !45587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i54, i64 16, i1 false), !dbg !45835, !noalias !45586
  %i.fn = zext i1 %i.fl to i64, !dbg !45836
  %i.fo = add i64 %.sroa.23.1.i.i51, %i.fn, !dbg !45837 ; 4 uses
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i52, i64 16, !dbg !45838
  br i1 %i.fk, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB36_5inner17PolarsObjectStore15get_ranges_sort00E0E0ECs2g09Ig8GZd6_13polars_stream.exit.i, label %.preheader.i.i47, !dbg !45828

.lr.ph.i.i58:                                     ; preds = %bb.v, %.lr.ph.i.i58
  %.sroa.13.033.i.i59 = phi ptr [ %.sroa.13.0.i.i64, %.lr.ph.i.i58 ], [ %.sroa.13.030.i.i45, %bb.v ] ; 3 uses
  %.sroa.015.032.i.i60 = phi ptr [ %i.ft, %.lr.ph.i.i58 ], [ %i.ff, %bb.v ] ; 3 uses
  %.sroa.23.031.i.i61 = phi i64 [ %i.fx, %.lr.ph.i.i58 ], [ 0, %bb.v ] ; 2 uses
  %.val.i11.i.i62 = load i64, ptr %.sroa.13.033.i.i59, align 8, !dbg !45839, !alias.scope !45584, !noalias !45588, !noundef !3925
  %i.fp = icmp uge i64 %.val1.i.pre.i.i46, %.val.i11.i.i62, !dbg !45840
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.sroa.23.031.i.i61, !dbg !45841 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.032.i.i60, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false), !dbg !45842, !alias.scope !45584, !noalias !45588
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i59, i64 16, i1 false), !dbg !45843, !alias.scope !45584, !noalias !45588
  %i.fr = zext i1 %i.fp to i64, !dbg !45844
  %i.fs = add i64 %.sroa.23.031.i.i61, %i.fr, !dbg !45845 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i60, i64 32, !dbg !45846 ; 4 uses
  %.val.i13.i.i63 = load i64, ptr %i.ft, align 8, !dbg !45847, !alias.scope !45584, !noalias !45589, !noundef !3925
  %i.fu = icmp uge i64 %.val1.i.pre.i.i46, %.val.i13.i.i63, !dbg !45848
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fs, !dbg !45849 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i59, ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i64 16, i1 false), !dbg !45850, !alias.scope !45584, !noalias !45589
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !dbg !45851, !alias.scope !45584, !noalias !45589
  %i.fw = zext i1 %i.fu to i64, !dbg !45852
  %i.fx = add i64 %i.fs, %i.fw, !dbg !45853       ; 2 uses
  %.sroa.13.0.i.i64 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i60, i64 48, !dbg !45826 ; 3 uses
  %i.fy = icmp ult ptr %.sroa.13.0.i.i64, %i.fi, !dbg !45827
  br i1 %i.fy, label %.lr.ph.i.i58, label %.preheader.i.i47.preheader, !dbg !45827

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB36_5inner17PolarsObjectStore15get_ranges_sort00E0E0ECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.preheader.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !45854, !noalias !45583
  %.not7.i57 = icmp ult i64 %i.fo, %.sroa.15.089154, !dbg !45855
  br i1 %.not7.i57, label %bb.x, label %bb.w, !dbg !45855

bb.w:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB36_5inner17PolarsObjectStore15get_ranges_sort00E0E0ECs2g09Ig8GZd6_13polars_stream.exit.i
  tail call void @llvm.trap(), !dbg !45856
  unreachable, !dbg !45856

bb.x:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB36_5inner17PolarsObjectStore15get_ranges_sort00E0E0ECs2g09Ig8GZd6_13polars_stream.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE14swap_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 %.sroa.0.090153, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089154, i64 noundef 0, i64 noundef %i.fo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39), !dbg !45857
  %i.fz = add nuw nsw i64 %i.fo, 1, !dbg !45858   ; 2 uses
  %i.ga = sub nuw i64 %.sroa.15.089154, %i.fz, !dbg !45859
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.090153, i64 %i.fz, !dbg !45860
  br label %.backedge, !dbg !45750

.backedge:                                        ; preds = %bb.x, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.023.0.be = phi ptr [ %i.ez, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ null, %bb.x ]
  %.sroa.15.0.be = phi i64 [ %i.fc, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.ga, %bb.x ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.fa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.gb, %bb.x ] ; 3 uses
  %i.gc = icmp ult i64 %.sroa.15.0.be, 33, !dbg !45593
  br i1 %i.gc, label %._crit_edge, label %bb.b, !dbg !45593
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB17_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2X_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !45861 !guid !46252 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [768 x i8], align 8               ; 15 uses
  %i.h = icmp samesign ult i64 %1, 33, !dbg !46297
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !46297

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = icmp eq i32 %3, 0, !dbg !46298
  br i1 %i.k, label %._crit_edge135, label %.lr.ph134, !dbg !46298

bb.b:                                             ; preds = %.backedge
  %i.l = icmp eq i32 %i.cb, 0, !dbg !46298
  br i1 %i.l, label %._crit_edge135, label %.lr.ph134, !dbg !46298

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !46299, !noalias !46253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46254), !dbg !46300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46255), !dbg !46300
  %i.m = icmp samesign ult i64 %.sroa.15.0.lcssa, 2, !dbg !46301
  br i1 %i.m, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1f_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB35_.exit, label %bb.c, !dbg !46301

bb.c:                                             ; preds = %._crit_edge
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1, !dbg !46302 ; 9 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15, !dbg !46303
  br i1 %i.o, label %bb.e, label %bb.d, !dbg !46303

bb.d:                                             ; preds = %bb.c
  %i.p = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7, !dbg !46304
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n, !dbg !46305 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n, !dbg !46305 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !46304

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.15.0.lcssa, !dbg !46306 ; 5 uses
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef nonnull readonly align 8 %.sroa.0.0.lcssa, ptr noundef nonnull %i.s), !dbg !46307
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 64, !dbg !46308
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64, !dbg !46309
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef readonly %i.t, ptr noundef %i.u), !dbg !46310
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1g_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB36_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef 8, ptr noundef nonnull align 8 %i.g), !dbg !46311, !noalias !46256
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n, !dbg !46312 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n, !dbg !46313
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 128, !dbg !46314 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef nonnull readonly %i.v, ptr noundef nonnull %i.x), !dbg !46315
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 64, !dbg !46316
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 192, !dbg !46317
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef readonly %i.y, ptr noundef %i.z), !dbg !46318
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1g_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB36_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.x, i64 noundef 8, ptr noundef nonnull %i.w), !dbg !46319, !noalias !46256
  br label %bb.h, !dbg !46320

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.g), !dbg !46321
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef %i.q, ptr noundef %i.r), !dbg !46322
  br label %bb.h, !dbg !46323

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !dbg !46324, !alias.scope !46257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !dbg !46325, !alias.scope !46257
  br label %bb.h, !dbg !46323

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ], !dbg !46326 ; 4 uses
  %i.aa = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.n ; 2 uses
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i.i, %i.n, !dbg !46327
  br i1 %i.ab, label %.lr.ph.i.i, label %.loopexit.i.i, !dbg !46328

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.i.i, %bb.h
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n, !dbg !46329
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n, !dbg !46330 ; 4 uses
  %i.ae = icmp samesign ult i64 %.sroa.0.0.i.i, %i.aa, !dbg !46327
  br i1 %i.ae, label %.lr.ph.1.i.i, label %.loopexit.1.i.i, !dbg !46328

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i
  %.sroa.05.04.1.i.i = phi i64 [ %i.bb, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.sroa.05.04.1.i.i, !dbg !46331
  %.idx147 = shl nuw nsw i64 %.sroa.05.04.1.i.i, 4, !dbg !46332
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx147, !dbg !46332 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !dbg !46333, !alias.scope !46257
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16, !dbg !46334 ; 3 uses
  %.val11.i.1.i.i = load ptr, ptr %i.ag, align 8, !dbg !46335, !alias.scope !46255, !noalias !46253, !nonnull !3925, !noundef !3925 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 8, !dbg !46335
  %.val12.i.1.i.i = load i64, ptr %i.ai, align 8, !dbg !46335, !alias.scope !46255, !noalias !46253, !noundef !3925 ; 5 uses
  %.val13.i.1.i.i = load ptr, ptr %i.ah, align 8, !dbg !46335, !alias.scope !46255, !noalias !46253, !nonnull !3925, !noundef !3925
  %i.aj = getelementptr i8, ptr %i.ag, i64 -8, !dbg !46335
  %.val14.i.1.i.i = load i64, ptr %i.aj, align 8, !dbg !46335, !alias.scope !46255, !noalias !46253, !noundef !3925 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val11.i.1.i.i, i64 16, !dbg !46336 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val13.i.1.i.i, i64 16, !dbg !46337
  %spec.store.select.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i.i, i64 %.val14.i.1.i.i), !dbg !46338
  %i.am = call i32 @memcmp(ptr nonnull readonly %i.ak, ptr nonnull readonly %i.al, i64 %spec.store.select.i.i.i.1.i.i), !dbg !46339, !noalias !46259 ; 2 uses
  %i.an = sext i32 %i.am to i64, !dbg !46339
  %i.ao = icmp eq i32 %i.am, 0, !dbg !46340
  %i.ap = sub i64 %.val12.i.1.i.i, %.val14.i.1.i.i
  %spec.select.i.i.i.1.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.an, !dbg !46340
  %i.aq = icmp slt i64 %spec.select.i.i.i.1.i.i, 0, !dbg !46341
  br i1 %i.aq, label %.preheader.1.i.i.preheader, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i, !dbg !46335

.preheader.1.i.i.preheader:                       ; preds = %.lr.ph.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !dbg !46342, !alias.scope !46255, !noalias !46253
  %i.ar = icmp eq i64 %.sroa.05.04.1.i.i, 1, !dbg !46343
  br i1 %i.ar, label %._crit_edge144, label %.lr.ph143, !dbg !46343

.preheader.1.i.i:                                 ; preds = %.lr.ph143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i30.1.i.i142, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !46342, !alias.scope !46255, !noalias !46253
  %i.as = icmp eq ptr %i.at, %i.ad, !dbg !46343
  br i1 %i.as, label %._crit_edge144, label %.lr.ph143, !dbg !46343

.lr.ph143:                                        ; preds = %.preheader.1.i.i.preheader, %.preheader.1.i.i
  %.sroa.0.0.i30.1.i.i142 = phi ptr [ %i.at, %.preheader.1.i.i ], [ %i.ah, %.preheader.1.i.i.preheader ] ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.0.i30.1.i.i142, i64 -16, !dbg !46344 ; 4 uses
  %.val9.i.1.i.i = load ptr, ptr %i.at, align 8, !dbg !46345, !alias.scope !46255, !noalias !46253, !nonnull !3925, !noundef !3925
  %i.au = getelementptr i8, ptr %.sroa.0.0.i30.1.i.i142, i64 -8, !dbg !46345
  %.val10.i.1.i.i = load i64, ptr %i.au, align 8, !dbg !46345, !alias.scope !46255, !noalias !46253, !noundef !3925 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val9.i.1.i.i, i64 16, !dbg !46346
  %spec.store.select.i.i15.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i.i, i64 %.val10.i.1.i.i), !dbg !46347
  %i.aw = call i32 @memcmp(ptr nonnull readonly %i.ak, ptr nonnull readonly %i.av, i64 %spec.store.select.i.i15.i.1.i.i), !dbg !46348, !noalias !46259 ; 2 uses
  %i.ax = sext i32 %i.aw to i64, !dbg !46348
  %i.ay = icmp eq i32 %i.aw, 0, !dbg !46349
  %i.az = sub i64 %.val12.i.1.i.i, %.val10.i.1.i.i
  %spec.select.i.i16.i.1.i.i = select i1 %i.ay, i64 %i.az, i64 %i.ax, !dbg !46349
  %i.ba = icmp slt i64 %spec.select.i.i16.i.1.i.i, 0, !dbg !46350
  br i1 %i.ba, label %.preheader.1.i.i, label %._crit_edge144, !dbg !46345

._crit_edge144:                                   ; preds = %.preheader.1.i.i, %.lr.ph143, %.preheader.1.i.i.preheader
  %.sroa.0.0.i30.lcssa.1.i.i = phi ptr [ %i.ad, %.preheader.1.i.i.preheader ], [ %i.ad, %.preheader.1.i.i ], [ %.sroa.0.0.i30.1.i.i142, %.lr.ph143 ], !dbg !46351 ; 2 uses
  store ptr %.val11.i.1.i.i, ptr %.sroa.0.0.i30.lcssa.1.i.i, align 8, !dbg !46352, !alias.scope !46255, !noalias !46260
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa.1.i.i, i64 8, !dbg !46352
  store i64 %.val12.i.1.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !dbg !46352, !alias.scope !46255, !noalias !46260
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i, !dbg !46353

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i: ; preds = %._crit_edge144, %.lr.ph.1.i.i
  %i.bb = add nuw nsw i64 %.sroa.05.04.1.i.i, 1, !dbg !46354 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.bb, %i.aa, !dbg !46327
  br i1 %exitcond.1.not.i.i, label %.loopexit.1.i.i, label %.lr.ph.1.i.i, !dbg !46328

.loopexit.1.i.i:                                  ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1g_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB36_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1f_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB35_.exit unwind label %bb.i, !dbg !46355

bb.i:                                             ; preds = %.loopexit.1.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = shl nuw nsw i64 %.sroa.15.0.lcssa, 4, !dbg !46356
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.g, i64 %i.bd, i1 false), !dbg !46356, !alias.scope !46257, !noalias !46261
  resume { ptr, i32 } %i.bc, !dbg !46357

.lr.ph.i.i:                                       ; preds = %bb.h, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.i.i
  %.sroa.05.04.i.i = phi i64 [ %i.ca, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 4 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.05.04.i.i, !dbg !46331
  %.idx = shl nuw nsw i64 %.sroa.05.04.i.i, 4, !dbg !46332
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx, !dbg !46332 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !dbg !46333, !alias.scope !46257
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16, !dbg !46334 ; 3 uses
  %.val11.i.i.i = load ptr, ptr %i.bf, align 8, !dbg !46335, !alias.scope !46255, !noalias !46253, !nonnull !3925, !noundef !3925 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8, !dbg !46335
  %.val12.i.i.i = load i64, ptr %i.bh, align 8, !dbg !46335, !alias.scope !46255, !noalias !46253, !noundef !3925 ; 5 uses
  %.val13.i.i.i = load ptr, ptr %i.bg, align 8, !dbg !46335, !alias.scope !46255, !noalias !46253, !nonnull !3925, !noundef !3925
  %i.bi = getelementptr i8, ptr %i.bf, i64 -8, !dbg !46335
  %.val14.i.i.i = load i64, ptr %i.bi, align 8, !dbg !46335, !alias.scope !46255, !noalias !46253, !noundef !3925 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val11.i.i.i, i64 16, !dbg !46336 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 16, !dbg !46337
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i.i, i64 %.val14.i.i.i), !dbg !46338
  %i.bl = call i32 @memcmp(ptr nonnull readonly %i.bj, ptr nonnull readonly %i.bk, i64 %spec.store.select.i.i.i.i.i), !dbg !46339, !noalias !46259 ; 2 uses
  %i.bm = sext i32 %i.bl to i64, !dbg !46339
  %i.bn = icmp eq i32 %i.bl, 0, !dbg !46340
  %i.bo = sub i64 %.val12.i.i.i, %.val14.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.bn, i64 %i.bo, i64 %i.bm, !dbg !46340
  %i.bp = icmp slt i64 %spec.select.i.i.i.i.i, 0, !dbg !46341
  br i1 %i.bp, label %.preheader.i.i.preheader, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.i.i, !dbg !46335

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !dbg !46342, !alias.scope !46255, !noalias !46253
  %i.bq = icmp eq i64 %.sroa.05.04.i.i, 1, !dbg !46343
  br i1 %i.bq, label %._crit_edge139, label %.lr.ph138, !dbg !46343

.preheader.i.i:                                   ; preds = %.lr.ph138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i30.i.i137, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !dbg !46342, !alias.scope !46255, !noalias !46253
  %i.br = icmp eq ptr %i.bs, %i.g, !dbg !46343
  br i1 %i.br, label %._crit_edge139, label %.lr.ph138, !dbg !46343

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB17_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2X_:bb.a
bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i39
  %.sroa.13.046.i.i = phi ptr [ %.sroa.13.043.i.i, %.lr.ph.i.i39 ], [ %.sroa.13.0.i.i, %bb.p ] ; 3 uses
  %.sroa.025.045.i.i = phi ptr [ %i.di, %.lr.ph.i.i39 ], [ %i.ei, %bb.p ] ; 5 uses
  %.sroa.23.044.i.i = phi i64 [ 0, %.lr.ph.i.i39 ], [ %i.eq, %bb.p ] ; 2 uses
  %.val.i11.i.i = load ptr, ptr %.sroa.13.046.i.i, align 8, !dbg !46421, !alias.scope !46269, !noalias !46274, !nonnull !3925, !noundef !3925
  %i.ea = getelementptr i8, ptr %.sroa.025.045.i.i, i64 24, !dbg !46421
  %.val1.i12.i.i = load i64, ptr %i.ea, align 8, !dbg !46421, !alias.scope !46269, !noalias !46274, !noundef !3925 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i11.i.i, i64 16, !dbg !46422
  %spec.store.select.i.i.i15.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i12.i.i, i64 %.val3.i14.i.i), !dbg !46423
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly %i.eb, ptr nonnull readonly %i.dq, i64 %spec.store.select.i.i.i15.i.i), !dbg !46424, !noalias !46275 ; 2 uses
  %i.ed = sext i32 %i.ec to i64, !dbg !46424
  %i.ee = icmp eq i32 %i.ec, 0, !dbg !46425
  %i.ef = sub i64 %.val1.i12.i.i, %.val3.i14.i.i
  %spec.select.i.i.i16.i.i = select i1 %i.ee, i64 %i.ef, i64 %i.ed, !dbg !46425
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %.sroa.23.044.i.i, !dbg !46426 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025.045.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i64 16, i1 false), !dbg !46427, !alias.scope !46269, !noalias !46274
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.046.i.i, i64 16, i1 false), !dbg !46428, !alias.scope !46269, !noalias !46274
  %spec.select.i.i.lobit.i17.i.i = lshr i64 %spec.select.i.i.i16.i.i, 63, !dbg !46429
  %i.eh = add i64 %spec.select.i.i.lobit.i17.i.i, %.sroa.23.044.i.i, !dbg !46430 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.025.045.i.i, i64 32, !dbg !46431 ; 4 uses
  %.val.i18.i.i = load ptr, ptr %i.ei, align 8, !dbg !46432, !alias.scope !46269, !noalias !46276, !nonnull !3925, !noundef !3925
  %i.ej = getelementptr i8, ptr %.sroa.025.045.i.i, i64 40, !dbg !46432
  %.val1.i19.i.i = load i64, ptr %i.ej, align 8, !dbg !46432, !alias.scope !46269, !noalias !46276, !noundef !3925 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i18.i.i, i64 16, !dbg !46433
  %spec.store.select.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i19.i.i, i64 %.val3.i14.i.i), !dbg !46434
  %i.el = tail call i32 @memcmp(ptr nonnull readonly %i.ek, ptr nonnull readonly %i.dq, i64 %spec.store.select.i.i.i22.i.i), !dbg !46435, !noalias !46277 ; 2 uses
  %i.em = sext i32 %i.el to i64, !dbg !46435
  %i.en = icmp eq i32 %i.el, 0, !dbg !46436
  %i.eo = sub i64 %.val1.i19.i.i, %.val3.i14.i.i
  %spec.select.i.i.i23.i.i = select i1 %i.en, i64 %i.eo, i64 %i.em, !dbg !46436
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.eh, !dbg !46437 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.046.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !dbg !46438, !alias.scope !46269, !noalias !46276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !dbg !46439, !alias.scope !46269, !noalias !46276
  %spec.select.i.i.lobit.i24.i.i = lshr i64 %spec.select.i.i.i23.i.i, 63, !dbg !46440
  %i.eq = add i64 %spec.select.i.i.lobit.i24.i.i, %i.eh, !dbg !46441 ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.045.i.i, i64 48, !dbg !46405 ; 3 uses
  %i.er = icmp ult ptr %.sroa.13.0.i.i, %i.dn, !dbg !46406
  br i1 %i.er, label %bb.p, label %.preheader.i.i36, !dbg !46406

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB3n_.exit.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !46442, !noalias !46268
  %.not7.i = icmp ult i64 %i.dz, %.sroa.15.082131, !dbg !46443
  br i1 %.not7.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit, label %bb.q, !dbg !46443

bb.q:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB3n_.exit.i
  tail call void @llvm.trap(), !dbg !46444
  unreachable, !dbg !46444

_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB3n_.exit.i
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.083130, i64 %i.dz, !dbg !46445 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !46446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, i64 16, i1 false), !dbg !46447
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, ptr noundef nonnull align 8 dereferenceable(16) %i.es, i64 16, i1 false), !dbg !46448, !alias.scope !46278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !46449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !46450
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16, !dbg !46451
  %i.eu = xor i64 %i.dz, -1, !dbg !46452
  %i.ev = add i64 %.sroa.15.082131, %i.eu, !dbg !46452
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB17_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2X_(ptr noalias noundef nonnull align 8 %.sroa.0.083130, i64 noundef %i.dz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.081132, i32 noundef %i.cb, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !46453
  br label %.backedge, !dbg !46454

bb.r:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2V_.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.083130, i64 %i.df, !dbg !46455 ; 4 uses
  %.sroa.023.0.val = load ptr, ptr %.sroa.023.081132, align 8, !dbg !46456, !nonnull !3925, !noundef !3925
  %i.ex = getelementptr i8, ptr %.sroa.023.081132, i64 8, !dbg !46456
  %.sroa.023.0.val34 = load i64, ptr %i.ex, align 8, !dbg !46456, !noundef !3925 ; 2 uses
  %.val = load ptr, ptr %i.ew, align 8, !dbg !46456, !nonnull !3925, !noundef !3925
  %i.ey = getelementptr i8, ptr %i.ew, i64 8, !dbg !46456
  %.val35 = load i64, ptr %i.ey, align 8, !dbg !46456, !noundef !3925 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.023.0.val, i64 16, !dbg !46457
  %i.fa = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !46458
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.023.0.val34, i64 %.val35), !dbg !46459
  %i.fb = tail call i32 @memcmp(ptr nonnull readonly %i.ez, ptr nonnull readonly %i.fa, i64 %spec.store.select.i.i), !dbg !46460 ; 2 uses
  %i.fc = sext i32 %i.fb to i64, !dbg !46460
  %i.fd = icmp eq i32 %i.fb, 0, !dbg !46461
  %i.fe = sub i64 %.sroa.023.0.val34, %.val35
  %spec.select.i.i = select i1 %i.fd, i64 %i.fe, i64 %i.fc, !dbg !46461
  %i.ff = icmp slt i64 %spec.select.i.i, 0, !dbg !46462
  br i1 %i.ff, label %bb.n, label %bb.s, !dbg !46456

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46279), !dbg !46463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !46464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, i64 16, i1 false), !dbg !46465
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i64 16, i1 false), !dbg !46466, !alias.scope !46280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !dbg !46467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !46468
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.083130, i64 16, !dbg !46469 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46281), !dbg !46470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46282), !dbg !46470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !46471, !noalias !46283
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !46472, !alias.scope !46284, !nonnull !3925, !noundef !3925
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.083130, i64 24, !dbg !46472
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !46472, !alias.scope !46284, !noundef !3925
  store ptr %i.fh, ptr %i.b, align 8, !dbg !46473, !noalias !46283
  store i64 %i.fj, ptr %i.i, align 8, !dbg !46473, !noalias !46283
  %i.fk = getelementptr [16 x i8], ptr %.sroa.0.083130, i64 %.sroa.15.082131, !dbg !46474 ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 -16, !dbg !46474 ; 2 uses
  %.sroa.13.041.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.083130, i64 32, !dbg !46475 ; 3 uses
  %i.fm = icmp ult ptr %.sroa.13.041.i.i, %i.fl, !dbg !46476
  %.val2.i.pre.i.i47 = load ptr, ptr %.sroa.0.083130, align 8, !alias.scope !46285, !noalias !3925 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.083130, i64 8
  %.val3.i14.i.i48 = load i64, ptr %i.fn, align 8, !alias.scope !46285, !noalias !3925 ; 6 uses
  br i1 %i.fm, label %.lr.ph.i.i60, label %.preheader.i.i49, !dbg !46476

.lr.ph.i.i60:                                     ; preds = %bb.s
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2.i.pre.i.i47, i64 16 ; 2 uses
  br label %bb.u, !dbg !46476

.preheader.i.i49:                                 ; preds = %bb.u, %bb.s
  %.sroa.23.0.lcssa.i.i50 = phi i64 [ 0, %bb.s ], [ %i.gu, %bb.u ], !dbg !46475
  %.sroa.023.0.lcssa.i.i = phi ptr [ %i.fg, %bb.s ], [ %i.gk, %bb.u ], !dbg !46475
  %.sroa.13.0.lcssa.i.i51 = phi ptr [ %.sroa.13.041.i.i, %bb.s ], [ %.sroa.13.0.i.i63, %bb.u ], !dbg !46475
  %i.fp = getelementptr inbounds nuw i8, ptr %.val2.i.pre.i.i47, i64 16
  br label %bb.t, !dbg !46477

bb.t:                                             ; preds = %bb.t, %.preheader.i.i49
  %.sroa.23.1.i.i52 = phi i64 [ %i.fz, %bb.t ], [ %.sroa.23.0.lcssa.i.i50, %.preheader.i.i49 ], !dbg !46475 ; 2 uses
  %.sroa.13.1.i.i53 = phi ptr [ %.sroa.13.1.sroa.gep34.i.i, %bb.t ], [ %.sroa.13.0.lcssa.i.i51, %.preheader.i.i49 ], !dbg !46475 ; 5 uses
  %.sroa.023.1.i.i = phi ptr [ %.sroa.13.1.i.i53, %bb.t ], [ %.sroa.023.0.lcssa.i.i, %.preheader.i.i49 ], !dbg !46475
  %i.fq = icmp eq ptr %.sroa.13.1.i.i53, %i.fk, !dbg !46478 ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.fq, ptr %i.b, ptr %.sroa.13.1.i.i53, !dbg !46479 ; 2 uses
  %.val.i.i.i55 = load ptr, ptr %.sroa.01.0.i.i54, align 8, !dbg !46480, !noalias !46286, !nonnull !3925, !noundef !3925
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr i8, ptr %.sroa.13.1.i.i53, i64 8, !dbg !46480
  %.sroa.01.0.sroa.sel.i.i57 = select i1 %i.fq, ptr %i.i, ptr %.sroa.13.1.sroa.gep.i.i56, !dbg !46480
  %.val1.i.i.i58 = load i64, ptr %.sroa.01.0.sroa.sel.i.i57, align 8, !dbg !46480, !noalias !46286, !noundef !3925 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i.i.i55, i64 16, !dbg !46481
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i14.i.i48, i64 %.val1.i.i.i58), !dbg !46482
  %i.fs = tail call i32 @memcmp(ptr nonnull readonly %i.fp, ptr nonnull readonly %i.fr, i64 %spec.store.select.i.i.i.i.i.i), !dbg !46483, !noalias !46287 ; 2 uses
  %i.ft = sext i32 %i.fs to i64, !dbg !46483
  %i.fu = icmp eq i32 %i.fs, 0, !dbg !46484
  %i.fv = sub i64 %.val3.i14.i.i48, %.val1.i.i.i58
  %spec.select.i.i.i.i.i.i = select i1 %i.fu, i64 %i.fv, i64 %i.ft, !dbg !46484
  %i.fw = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1, !dbg !46485
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %.sroa.23.1.i.i52, !dbg !46486 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.023.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !dbg !46487, !alias.scope !46284, !noalias !46288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i54, i64 16, i1 false), !dbg !46488, !noalias !46286
  %i.fy = zext i1 %i.fw to i64, !dbg !46489
  %i.fz = add i64 %.sroa.23.1.i.i52, %i.fy, !dbg !46490 ; 4 uses
  %.sroa.13.1.sroa.gep34.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i53, i64 16, !dbg !46491
  br i1 %i.fq, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0E0EB3J_.exit.i, label %bb.t, !dbg !46477

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i60
  %.sroa.13.044.i.i = phi ptr [ %.sroa.13.041.i.i, %.lr.ph.i.i60 ], [ %.sroa.13.0.i.i63, %bb.u ] ; 3 uses
  %.sroa.023.043.i.i = phi ptr [ %i.fg, %.lr.ph.i.i60 ], [ %i.gk, %bb.u ] ; 5 uses
  %.sroa.23.042.i.i = phi i64 [ 0, %.lr.ph.i.i60 ], [ %i.gu, %bb.u ] ; 2 uses
  %.val.i11.i.i61 = load ptr, ptr %.sroa.13.044.i.i, align 8, !dbg !46492, !alias.scope !46284, !noalias !46289, !nonnull !3925, !noundef !3925
  %i.ga = getelementptr i8, ptr %.sroa.023.043.i.i, i64 24, !dbg !46492
  %.val1.i12.i.i62 = load i64, ptr %i.ga, align 8, !dbg !46492, !alias.scope !46284, !noalias !46289, !noundef !3925 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i11.i.i61, i64 16, !dbg !46493
  %spec.store.select.i.i.i.i15.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i14.i.i48, i64 %.val1.i12.i.i62), !dbg !46494
  %i.gc = tail call i32 @memcmp(ptr nonnull readonly %i.fo, ptr nonnull readonly %i.gb, i64 %spec.store.select.i.i.i.i15.i.i), !dbg !46495, !noalias !46290 ; 2 uses
  %i.gd = sext i32 %i.gc to i64, !dbg !46495
  %i.ge = icmp eq i32 %i.gc, 0, !dbg !46496
  %i.gf = sub i64 %.val3.i14.i.i48, %.val1.i12.i.i62
  %spec.select.i.i.i.i16.i.i = select i1 %i.ge, i64 %i.gf, i64 %i.gd, !dbg !46496
  %i.gg = icmp sgt i64 %spec.select.i.i.i.i16.i.i, -1, !dbg !46497
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %.sroa.23.042.i.i, !dbg !46498 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.023.043.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false), !dbg !46499, !alias.scope !46284, !noalias !46289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i, i64 16, i1 false), !dbg !46500, !alias.scope !46284, !noalias !46289
  %i.gi = zext i1 %i.gg to i64, !dbg !46501
  %i.gj = add i64 %.sroa.23.042.i.i, %i.gi, !dbg !46502 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.023.043.i.i, i64 32, !dbg !46503 ; 4 uses
  %.val.i17.i.i = load ptr, ptr %i.gk, align 8, !dbg !46504, !alias.scope !46284, !noalias !46291, !nonnull !3925, !noundef !3925
  %i.gl = getelementptr i8, ptr %.sroa.023.043.i.i, i64 40, !dbg !46504
  %.val1.i18.i.i = load i64, ptr %i.gl, align 8, !dbg !46504, !alias.scope !46284, !noalias !46291, !noundef !3925 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.i17.i.i, i64 16, !dbg !46505
  %spec.store.select.i.i.i.i21.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i14.i.i48, i64 %.val1.i18.i.i), !dbg !46506
  %i.gn = tail call i32 @memcmp(ptr nonnull readonly %i.fo, ptr nonnull readonly %i.gm, i64 %spec.store.select.i.i.i.i21.i.i), !dbg !46507, !noalias !46292 ; 2 uses
  %i.go = sext i32 %i.gn to i64, !dbg !46507
  %i.gp = icmp eq i32 %i.gn, 0, !dbg !46508
  %i.gq = sub i64 %.val3.i14.i.i48, %.val1.i18.i.i
  %spec.select.i.i.i.i22.i.i = select i1 %i.gp, i64 %i.gq, i64 %i.go, !dbg !46508
  %i.gr = icmp sgt i64 %spec.select.i.i.i.i22.i.i, -1, !dbg !46509
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.gj, !dbg !46510 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !dbg !46511, !alias.scope !46284, !noalias !46291
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !dbg !46512, !alias.scope !46284, !noalias !46291
  %i.gt = zext i1 %i.gr to i64, !dbg !46513
  %i.gu = add i64 %i.gj, %i.gt, !dbg !46514       ; 2 uses
  %.sroa.13.0.i.i63 = getelementptr inbounds nuw i8, ptr %.sroa.023.043.i.i, i64 48, !dbg !46475 ; 3 uses
  %i.gv = icmp ult ptr %.sroa.13.0.i.i63, %i.fl, !dbg !46476
  br i1 %i.gv, label %bb.u, label %.preheader.i.i49, !dbg !46476

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0E0EB3J_.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !46515, !noalias !46283
  %.not7.i59 = icmp ult i64 %i.fz, %.sroa.15.082131, !dbg !46516
  br i1 %.not7.i59, label %bb.w, label %bb.v, !dbg !46516

bb.v:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0E0EB3J_.exit.i
  tail call void @llvm.trap(), !dbg !46517
  unreachable, !dbg !46517

bb.w:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0E0EB3J_.exit.i
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.083130, i64 %i.fz, !dbg !46518 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !46519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, i64 16, i1 false), !dbg !46520
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !dbg !46521, !alias.scope !46293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !46522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !46523
  %i.gx = add nuw nsw i64 %i.fz, 1, !dbg !46524   ; 2 uses
  %i.gy = sub nuw i64 %.sroa.15.082131, %i.gx, !dbg !46525
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.083130, i64 %i.gx, !dbg !46526
  br label %.backedge, !dbg !46359

.backedge:                                        ; preds = %bb.w, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.023.0.be = phi ptr [ %i.es, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ null, %bb.w ]
  %.sroa.15.0.be = phi i64 [ %i.ev, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.gy, %bb.w ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.et, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.gz, %bb.w ] ; 3 uses
  %i.ha = icmp ult i64 %.sroa.15.0.be, 33, !dbg !46297
  br i1 %i.ha, label %._crit_edge, label %bb.b, !dbg !46297
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array3map8read_mapINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(32) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %4, ptr noalias noundef align 8 dereferenceable(32) %5, ptr noalias noundef align 8 dereferenceable(24) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, i64 noundef %8, i1 noundef zeroext %9, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %10, i64 noundef range(i64 0, 2) %11, i64 %12, i16 noundef range(i16 0, 5) %13, ptr noalias noundef align 8 dereferenceable(24) %14, i1 noundef zeroext %15) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !46527 !guid !46629 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %.sroa.9 = alloca [40 x i8], align 8            ; 5 uses
  %.sroa.655 = alloca [24 x i8], align 8          ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [72 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %i.n = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.610 = alloca [32 x i8], align 8          ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 12 uses
  %i.p = alloca [72 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !46630
  invoke void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array18try_get_field_node(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
          to label %bb.c unwind label %bb.b, !dbg !46630

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit154: ; preds = %.thread, %bb.at, %bb.b
  %.sroa.063.0 = phi i8 [ %.sroa.063.1, %bb.b ], [ %.sroa.063.2159, %.thread ], [ %.sroa.063.2159, %bb.at ], !dbg !46674
  %.pn141 = phi { ptr, i32 } [ %i.r, %bb.b ], [ %.pn139160, %.thread ], [ %.pn139160, %bb.at ]
  %i.q = trunc nuw i8 %.sroa.063.0 to i1, !dbg !46675
  br i1 %i.q, label %bb.av, label %bb.au, !dbg !46675

bb.b:                                             ; preds = %bb.as, %bb.am, %bb.e, %bb.a
  %.sroa.063.1 = phi i8 [ 1, %bb.as ], [ %.sroa.063.5, %bb.am ], [ 1, %bb.e ], [ 1, %bb.a ], !dbg !46674
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit154

bb.c:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.p, align 8, !dbg !46676, !range !4254, !noundef !3925 ; 2 uses
  %.not = icmp eq i64 %i.s, 18, !dbg !46676
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !46677
  %i.u = load ptr, ptr %i.t, align 8, !dbg !46677 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !46677
  %i.w = load i64, ptr %i.v, align 8, !dbg !46677 ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d, !dbg !46678

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !46679
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !46680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.477.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !46679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !46681
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !46680
  store i64 %i.s, ptr %i.x, align 8, !dbg !46680
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !46680
  store ptr %i.u, ptr %.sroa.275.0..sroa_idx, align 8, !dbg !46680
  %.sroa.376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !46680
  store i64 %i.w, ptr %.sroa.376.0..sroa_idx, align 8, !dbg !46680
  store i8 42, ptr %0, align 8, !dbg !46680
  br label %bb.ap, !dbg !46682

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !46681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !46683
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610), !dbg !46634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !46634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !46634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !dbg !46634
  invoke void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic13read_validityINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %5, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8, i1 noundef zeroext %9, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, i64 noundef %11, i64 %12, ptr noalias noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.f unwind label %bb.b, !dbg !46634

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !46634
  %i.y = load i64, ptr %i.n, align 8, !dbg !46684, !range !4254, !noundef !3925 ; 2 uses
  %.not128 = icmp eq i64 %i.y, 18, !dbg !46684
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !46685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !dbg !46685
  br i1 %.not128, label %bb.h, label %bb.g, !dbg !46686

bb.g:                                             ; preds = %bb.f
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !46687
  %.sroa.386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !46688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.386.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.683.0..sroa_idx, i64 32, i1 false), !dbg !46687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !46689
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !46688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.285.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610, i64 32, i1 false), !dbg !46689
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !46688
  store i64 %i.y, ptr %i.aa, align 8, !dbg !46688
  store i8 42, ptr %0, align 8, !dbg !46688
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610), !dbg !46690
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit152, !dbg !46691

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !46689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610, i64 32, i1 false), !dbg !46634
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610), !dbg !46690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !46638
  invoke void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array20try_get_array_length(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef %i.w, i64 noundef %11, i64 %12)
          to label %bb.j unwind label %bb.i, !dbg !46638

bb.i:                                             ; preds = %bb.ab, %bb.q, %bb.k, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.m, align 8, !dbg !46692, !range !4254, !noundef !3925 ; 2 uses
  %.not129 = icmp eq i64 %i.ac, 18, !dbg !46692
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !46693
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !46693 ; 2 uses
  br i1 %.not129, label %bb.k, label %bb.ar, !dbg !46694

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !46695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !46696
  %i.af = add i64 %i.ae, 1, !dbg !46697
  invoke void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8, i1 noundef zeroext %9, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %10, ptr noalias noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.l unwind label %bb.i, !dbg !46644

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr %i.k, align 8, !dbg !46698, !range !4254, !noundef !3925
  %.not130 = icmp eq i64 %i.ag, 18, !dbg !46698
  br i1 %.not130, label %bb.s, label %bb.m, !dbg !46699

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !46700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !46701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !46702, !noalias !46640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !46703, !noalias !46640
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !dbg !46704, !noalias !46640
  %i.ah = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !dbg !46705, !noalias !46640 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null, !dbg !46706
  br i1 %i.ai, label %bb.n, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !46707, !prof !3962

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #55
          to label %.noexc.i unwind label %bb.o, !dbg !46708, !noalias !46640

.noexc.i:                                         ; preds = %bb.n
  unreachable, !dbg !46708

bb.o:                                             ; preds = %bb.p, %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #54
          to label %.thread unwind label %bb.r, !dbg !46709, !noalias !46641

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.m
  store i32 0, ptr %i.ah, align 4, !dbg !46703, !noalias !46640
  store i64 1, ptr %i.b, align 8, !dbg !46710, !noalias !46640
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !46710
  store ptr %i.ah, ptr %i.ak, align 8, !dbg !46710, !noalias !46640
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !46710
  store i64 1, ptr %i.al, align 8, !dbg !46710, !noalias !46640
  %i.am = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragelE8from_vecCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !dbg !46711, !noalias !46640

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE12from_storageCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.am)
          to label %bb.q unwind label %bb.o, !dbg !46712, !noalias !46640

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !46713, !noalias !46640
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !46714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !46714, !noalias !46643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !46709, !noalias !46640
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RNCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array3map8read_mapINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0Cs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.i, !dbg !46709

bb.r:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !46715, !noalias !46641
  unreachable, !dbg !46715

_RNCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array3map8read_mapINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !46716
  br label %bb.s, !dbg !46717

bb.s:                                             ; preds = %_RNCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array3map8read_mapINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0Cs2g09Ig8GZd6_13polars_stream.exit, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !46718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !dbg !46718
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow5array3mapNtB4_8MapArray9get_field(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
          to label %bb.u unwind label %bb.aq, !dbg !46719

bb.t:                                             ; preds = %bb.al
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11into_static:bb.a
  %.sroa.02.0.i = phi ptr [ %i.s, %bb.h ], [ %.0..0..0..0..0..sroa.02.0.copyload3.i, %bb.g ], !dbg !65330
  %.sroa.6.0.i = phi i64 [ %i.p, %bb.h ], [ %.8..8..8..8..8..sroa.6.0.copyload6.i, %bb.g ], !dbg !65330
  %.sroa.7.0.i = phi i64 [ %i.w, %bb.h ], [ %.16..16..16..16..16..sroa.7.0.copyload9.i, %bb.g ], !dbg !65331 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !65313
  %i.x = and i64 %.sroa.7.0.i, -72057594037927936, !dbg !65320
  %or.cond = icmp eq i64 %i.x, -2738188573441261568, !dbg !65320
  br i1 %or.cond, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread, label %bb.ba, !dbg !65320, !prof !65262

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65332
  br label %bb.az, !dbg !65333

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65334
  br label %bb.az, !dbg !65335

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65336
  br label %bb.az, !dbg !65337

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65338
  br label %bb.az, !dbg !65339

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65340
  br label %bb.az, !dbg !65341

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65342
  br label %bb.az, !dbg !65343

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65344
  br label %bb.az, !dbg !65345

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65346
  br label %bb.az, !dbg !65347

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65348
  br label %bb.az, !dbg !65349

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65350
  br label %bb.az, !dbg !65351

bb.s:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65352
  br label %bb.az, !dbg !65353

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65354
  br label %bb.az, !dbg !65355

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65356
  br label %bb.az, !dbg !65357

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65358
  br label %bb.az, !dbg !65359

bb.w:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !65360
  %i.z = load i64, ptr %i.y, align 8, !dbg !65360, !noundef !3925
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !65361
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !65361, !range !4343, !noundef !3925
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !65362
  %i.ad = load ptr, ptr %i.ac, align 16, !dbg !65362, !align !4192, !noundef !3925 ; 2 uses
  %.not9 = icmp eq ptr %i.ad, null, !dbg !65363
  br i1 %.not9, label %bb.bc, label %bb.bb, !dbg !65364

bb.x:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65365
  br label %bb.az, !dbg !65366

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65367
  br label %bb.az, !dbg !65368

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65369
  br label %bb.az, !dbg !65370

bb.aa:                                            ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !65371
  %i.af = load i32, ptr %i.ae, align 4, !dbg !65371, !noundef !3925
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !65372
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !65372, !nonnull !3925, !align !4192, !noundef !3925
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !65373, !nonnull !3925, !noundef !3925 ; 2 uses
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8, !dbg !65374
  %i.ak = icmp slt i64 %i.aj, 0, !dbg !65375
  br i1 %i.ak, label %bb.be, label %bb.bd, !dbg !65375

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65376
  br label %bb.az, !dbg !65377

bb.ac:                                            ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !65378
  %i.am = load i32, ptr %i.al, align 4, !dbg !65378, !noundef !3925
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !65379
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !65379, !nonnull !3925, !align !4192, !noundef !3925
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !65380, !nonnull !3925, !noundef !3925 ; 2 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !dbg !65381
  %i.ar = icmp slt i64 %i.aq, 0, !dbg !65382
  br i1 %i.ar, label %bb.bg, label %bb.bf, !dbg !65382

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65383
  br label %bb.az, !dbg !65384

bb.ae:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65385
  br label %bb.az, !dbg !65386

bb.af:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65387
  br label %bb.az, !dbg !65388

bb.ag:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !65389
  %i.at = load ptr, ptr %i.as, align 8, !dbg !65389, !nonnull !3925, !noundef !3925
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !65389
  %i.av = load ptr, ptr %i.au, align 16, !dbg !65389, !nonnull !3925, !align !4192, !noundef !3925
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80, !dbg !65390
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !65390, !invariant.load !3925, !nonnull !3925
  %i.ay = tail call { ptr, ptr } %i.ax(ptr noundef nonnull %i.at) #58, !dbg !65391 ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0, !dbg !65391
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1, !dbg !65391
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65392
  store ptr %i.az, ptr %i.bb, align 8, !dbg !65392
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !65392
  store ptr %i.ba, ptr %i.bc, align 16, !dbg !65392
  store i8 28, ptr %0, align 16, !dbg !65392
  br label %bb.az, !dbg !65393

bb.ah:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65394
  br label %bb.az, !dbg !65395

bb.ai:                                            ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !65396
  %i.be = load i64, ptr %i.bd, align 8, !dbg !65396, !noundef !3925
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !65397
  %i.bg = load ptr, ptr %i.bf, align 16, !dbg !65397, !nonnull !3925, !align !4192, !noundef !3925
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !65398
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !65398, !nonnull !3925, !align !4680, !noundef !3925 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !65398
  %i.bk = load i64, ptr %i.bj, align 16, !dbg !65398, !noundef !3925 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !65399
  call void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value20struct_to_avs_static(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, i64 noundef %i.be, ptr noundef nonnull align 8 %i.bg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.bi, i64 noundef %i.bk), !dbg !65400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !65401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !65402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !65402
  call void @llvm.experimental.noalias.scope.decl(metadata !65277), !dbg !65403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !65404, !noalias !65281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !65405, !noalias !65281
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 115292150460684698) %i.bk, i1 noundef zeroext false, i64 noundef 16, i64 noundef 80)
          to label %.noexc unwind label %bb.bh, !dbg !65405

.noexc:                                           ; preds = %bb.ai
  %i.bl = load i64, ptr %i.d, align 8, !dbg !65405, !range !4002, !noalias !65281, !noundef !3925
  %i.bm = trunc nuw i64 %i.bl to i1, !dbg !65406
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !65407
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !65407, !range !4165, !noalias !65281, !noundef !3925 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !65407 ; 2 uses
  br i1 %i.bm, label %bb.aj, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !65406, !prof !3962

bb.aj:                                            ; preds = %.noexc
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !65408, !noalias !65281
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bo, i64 %i.bq) #55
          to label %.noexc10 unwind label %bb.bh, !dbg !65409

.noexc10:                                         ; preds = %bb.aj
  unreachable, !dbg !65409

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.br = load ptr, ptr %i.bp, align 8, !dbg !65410, !noalias !65281, !nonnull !3925, !noundef !3925 ; 2 uses
  %i.bs = icmp samesign ule i64 %i.bk, %i.bo, !dbg !65411
  call void @llvm.assume(i1 %i.bs), !dbg !65412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65413, !noalias !65281
  store i64 %i.bo, ptr %i.f, align 8, !dbg !65414, !noalias !65281
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !65414
  store ptr %i.br, ptr %i.bt, align 8, !dbg !65414, !noalias !65281
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !65414 ; 2 uses
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bi, i64 %i.bk, !dbg !65415
  %i.bw = icmp eq i64 %i.bo, 0, !dbg !65416
  br i1 %i.bw, label %.loopexit, label %.lr.ph.i, !dbg !65416

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br label %bb.ak, !dbg !65416

bb.ak:                                            ; preds = %bb.ar, %.lr.ph.i
  %.sroa.012.025.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.ca, %bb.ar ] ; 5 uses
  %.sroa.7.024.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cb, %bb.ar ] ; 3 uses
  %.sroa.10.023.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.by, %bb.ar ]
  %i.by = add i64 %.sroa.10.023.i, -1, !dbg !65417 ; 2 uses
  %i.bz = icmp eq ptr %.sroa.012.025.i, %i.bv, !dbg !65418
  br i1 %i.bz, label %.loopexit, label %bb.al, !dbg !65419

.loopexit.i:                                      ; preds = %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 80, !dbg !65420
  %i.cb = add nuw nsw i64 %.sroa.7.024.i, 1, !dbg !65421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !65422
  call void @llvm.experimental.noalias.scope.decl(metadata !65284), !dbg !65423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !65424, !noalias !65281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !65424, !noalias !65286
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 48, !dbg !65425 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 71, !dbg !65426
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !65426, !range !4190, !alias.scope !65287, !noundef !3925
  %i.cf = icmp eq i8 %i.ce, -40, !dbg !65427
  br i1 %i.cf, label %bb.am, label %bb.an, !dbg !65427

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc) #59
          to label %.noexc.i unwind label %.loopexit.i, !dbg !65428, !noalias !65288

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.cc, i64 24, i1 false), !dbg !65429, !noalias !65289
  br label %.noexc.i, !dbg !65430

.noexc.i:                                         ; preds = %bb.an, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !65431, !noalias !65286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !65432, !noalias !65286
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.012.025.i)
          to label %bb.ar unwind label %bb.ao, !dbg !65432, !noalias !65289

bb.ao:                                            ; preds = %.noexc.i
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !65433
  %i.ci = load i8, ptr %i.ch, align 1, !dbg !65433, !range !4190, !alias.scope !65290, !noalias !65286, !noundef !3925
  %i.cj = icmp eq i8 %i.ci, -40, !dbg !65434
  br i1 %i.cj, label %bb.ap, label %bb.at, !dbg !65434, !prof !3962

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.at unwind label %bb.aq, !dbg !65435, !noalias !65289

bb.aq:                                            ; preds = %bb.ap
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !65436, !noalias !65289
  unreachable, !dbg !65436

bb.ar:                                            ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !65436, !noalias !65291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.e, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !65436, !noalias !65291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65437, !noalias !65286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !65437, !noalias !65286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !65438, !noalias !65281
  %i.cl = getelementptr inbounds nuw [80 x i8], ptr %i.br, i64 %.sroa.7.024.i, !dbg !65439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cl, ptr noundef nonnull align 16 dereferenceable(80) %i.e, i64 80, i1 false), !dbg !65440, !noalias !65288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !65441
  %i.cm = icmp eq i64 %i.by, 0, !dbg !65416
  br i1 %i.cm, label %.loopexit, label %bb.ak, !dbg !65416

bb.as:                                            ; preds = %bb.at
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !65442, !noalias !65288
  unreachable, !dbg !65442

bb.at:                                            ; preds = %bb.ap, %bb.ao, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cg, %bb.ao ], [ %i.cg, %bb.ap ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.024.i, ptr %i.bu, align 8, !dbg !65443, !noalias !65281
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #54
          to label %.body unwind label %bb.as, !dbg !65444, !noalias !65288

bb.au:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65445
  br label %bb.az, !dbg !65446

bb.av:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65447
  br label %bb.az, !dbg !65448

bb.aw:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !65449
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !65449, !nonnull !3925, !noundef !3925
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !65449
  %i.cr = load i64, ptr %i.cq, align 16, !dbg !65449, !noundef !3925 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !65450
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.cr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !65450
  %i.cs = load i64, ptr %i.h, align 8, !dbg !65450, !range !4002, !noundef !3925
  %i.ct = trunc nuw i64 %i.cs to i1, !dbg !65451
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !65452
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !65452, !range !4165, !noundef !3925 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !65452 ; 2 uses
  br i1 %i.ct, label %bb.bm, label %bb.bn, !dbg !65451, !prof !3962

bb.ax:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65453
  br label %bb.az, !dbg !65454

bb.ay:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !65455
  br label %bb.az, !dbg !65456

bb.az:                                            ; preds = %bb.bo, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCs2g09Ig8GZd6_13polars_stream.exit, %bb.bf, %bb.bd, %bb.bc, %bb.ba, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.c, %bb.b
  ret void, !dbg !65457

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i
  tail call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #57, !dbg !65458
  unreachable, !dbg !65458

bb.ba:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread24
  %.sroa.0.032 = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread24 ], [ %.sroa.02.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %.sroa.4.031 = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread24 ], [ %.sroa.6.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %.sroa.5.030 = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread24 ], [ %.sroa.7.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65459
  store ptr %.sroa.0.032, ptr %i.cx, align 8, !dbg !65459
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !65459
  store i64 %.sroa.4.031, ptr %.sroa.417.0..sroa_idx, align 16, !dbg !65459
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !65459
  store i64 %.sroa.5.030, ptr %.sroa.518.0..sroa_idx, align 8, !dbg !65459
  store i8 31, ptr %0, align 16, !dbg !65459
  br label %bb.az, !dbg !65460

bb.bb:                                            ; preds = %bb.w
  %i.cy = tail call fastcc noundef nonnull ptr @_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad) #58, !dbg !65461
  br label %bb.bc, !dbg !65462

bb.bc:                                            ; preds = %bb.w, %bb.bb
  %.sroa.02.0 = phi ptr [ %i.cy, %bb.bb ], [ null, %bb.w ], !dbg !65463
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65464
  store i64 %i.z, ptr %i.cz, align 8, !dbg !65464
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !65464
  store i8 %i.ab, ptr %i.da, align 1, !dbg !65464
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !65464
  store ptr %.sroa.02.0, ptr %i.db, align 16, !dbg !65464
  store i8 18, ptr %0, align 16, !dbg !65464
  br label %bb.az, !dbg !65465

bb.bd:                                            ; preds = %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !65466
  store i32 %i.af, ptr %i.dc, align 4, !dbg !65466
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65466
  store ptr %i.ai, ptr %i.dd, align 8, !dbg !65466
  store i8 22, ptr %0, align 16, !dbg !65466
  br label %bb.az, !dbg !65467

bb.be:                                            ; preds = %bb.aa
  tail call void @llvm.trap(), !dbg !65468
  unreachable, !dbg !65468

bb.bf:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !65469
  store i32 %i.am, ptr %i.de, align 4, !dbg !65469
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65469
  store ptr %i.ap, ptr %i.df, align 8, !dbg !65469
  store i8 24, ptr %0, align 16, !dbg !65469
  br label %bb.az, !dbg !65470

bb.bg:                                            ; preds = %bb.ac
  tail call void @llvm.trap(), !dbg !65471
  unreachable, !dbg !65471

bb.bh:                                            ; preds = %bb.aj, %bb.ai
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !65472

.body:                                            ; preds = %bb.at, %bb.bh
  %eh.lpad-body = phi { ptr, i32 } [ %i.dg, %bb.bh ], [ %eh.lpad-body.i, %bb.at ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.i) #54
          to label %common.resume unwind label %bb.bl, !dbg !65472

.loopexit:                                        ; preds = %bb.ar, %bb.ak, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i
  store i64 %i.bk, ptr %i.bu, align 8, !dbg !65473, !noalias !65281
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !65401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !65474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !65444, !noalias !65281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !65401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !65472
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !dbg !65475, !noalias !65301
  %i.di = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !dbg !65476, !noalias !65301 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null, !dbg !65477
  br i1 %i.dj, label %bb.bi, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCs2g09Ig8GZd6_13polars_stream.exit, !dbg !65478, !prof !3962

bb.bi:                                            ; preds = %.loopexit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #55
          to label %.noexc11 unwind label %bb.bj, !dbg !65479

.noexc11:                                         ; preds = %bb.bi
  unreachable, !dbg !65479

bb.bj:                                            ; preds = %bb.bi
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB1i_5field5FieldEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j) #54
          to label %common.resume unwind label %bb.bk, !dbg !65480
end_hunk_2
