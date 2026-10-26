Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.11?download=true
inline.NumInlined: 6898
inline.NumDeleted: 3505
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortINtNtNtBa_3ops5range5RangejENCINvMB8_SB17_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2k_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.0.090153 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 22 uses
  %i.dq = add nsw i32 %.sroa.026.087156, -1, !dbg !45268 ; 3 uses
  %i.dr = lshr i64 %.sroa.15.089154, 3, !dbg !45269 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.dr, 6, !dbg !45270
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 %.idx.i, !dbg !45270 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.dr, 112, !dbg !45271
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 %.idx2.i, !dbg !45271 ; 3 uses
  %i.du = icmp samesign ult i64 %.sroa.15.089154, 64, !dbg !45272
  br i1 %i.du, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3INtNtNtBa_3ops5range5RangejENCINvMB8_SBZ_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2b_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.q, !dbg !45272

bb.q:                                             ; preds = %.lr.ph157
  %i.dv = tail call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recINtNtNtBa_3ops5range5RangejENCINvMB8_SB14_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2h_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull readonly align 8 %.sroa.0.090153, ptr noundef readonly %i.ds, ptr noundef readonly %i.dt, i64 noundef %i.dr), !dbg !45273
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotINtNtNtBa_3ops5range5RangejENCINvMB8_SB15_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2i_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !45274

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3INtNtNtBa_3ops5range5RangejENCINvMB8_SBZ_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2b_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.lr.ph157
  %.val6.i = load i64, ptr %.sroa.0.090153, align 8, !dbg !45275, !alias.scope !45085, !noundef !3924 ; 2 uses
  %.val7.i = load i64, ptr %i.ds, align 8, !dbg !45275, !alias.scope !45085, !noundef !3924 ; 2 uses
  %i.dw = icmp ult i64 %.val6.i, %.val7.i, !dbg !45276 ; 2 uses
  %.val5.i = load i64, ptr %i.dt, align 8, !dbg !45277, !alias.scope !45085, !noundef !3924 ; 2 uses
  %i.dx = icmp ult i64 %.val6.i, %.val5.i, !dbg !45278
  %i.dy = xor i1 %i.dw, %i.dx, !dbg !45279
  %i.dz = icmp ult i64 %.val7.i, %.val5.i, !dbg !45279
  %i.ea = xor i1 %i.dw, %i.dz, !dbg !45279
  %..i.i = select i1 %i.ea, ptr %i.dt, ptr %i.ds, !dbg !45279
  %.sroa.0.0.i.i34 = select i1 %i.dy, ptr %.sroa.0.090153, ptr %..i.i, !dbg !45279
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotINtNtNtBa_3ops5range5RangejENCINvMB8_SB15_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2i_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !45274

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotINtNtNtBa_3ops5range5RangejENCINvMB8_SB15_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2i_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.q, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3INtNtNtBa_3ops5range5RangejENCINvMB8_SBZ_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2b_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3INtNtNtBa_3ops5range5RangejENCINvMB8_SBZ_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2b_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i ], [ %i.dv, %bb.q ]
  %i.eb = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !45280
  %i.ec = ptrtoint ptr %.sroa.0.090153 to i64, !dbg !45280
  %i.ed = sub nuw i64 %i.eb, %i.ec, !dbg !45280   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.ed, 4, !dbg !45280 ; 3 uses
  %i.ee = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.089154, !dbg !45281
  tail call void @llvm.assume(i1 %i.ee), !dbg !45282
  %.not = icmp eq ptr %.sroa.023.088155, null, !dbg !45283
  br i1 %.not, label %bb.s, label %bb.u, !dbg !45284

bb.r:                                             ; preds = %._crit_edge158, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalINtNtNtBa_3ops5range5RangejENCINvMB8_SB1f_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2s_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit
  ret void, !dbg !45285

bb.s:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotINtNtNtBa_3ops5range5RangejENCINvMB8_SB15_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2i_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45086), !dbg !45286
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE14swap_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 %.sroa.0.090153, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089154, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !dbg !45287
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 16, !dbg !45288 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45087), !dbg !45289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45088), !dbg !45289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !45290, !noalias !45089
  %i.eg = load <2 x i64>, ptr %i.ef, align 8, !dbg !45291, !alias.scope !45090
  store <2 x i64> %i.eg, ptr %i.b, align 16, !dbg !45292, !noalias !45089
  %i.eh = getelementptr [16 x i8], ptr %.sroa.0.090153, i64 %.sroa.15.089154, !dbg !45293 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -16, !dbg !45293 ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 32, !dbg !45294 ; 3 uses
  %i.ej = icmp ult ptr %.sroa.13.030.i.i, %i.ei, !dbg !45295
  %.val1.i.pre.i.i = load i64, ptr %.sroa.0.090153, align 8, !alias.scope !45091, !noalias !3924 ; 3 uses
  br i1 %i.ej, label %.lr.ph.i.i37, label %.preheader.i.i.preheader, !dbg !45295

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i37, %bb.s
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.s ], [ %i.ex, %.lr.ph.i.i37 ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.030.i.i, %bb.s ], [ %.sroa.13.0.i.i, %.lr.ph.i.i37 ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.ef, %bb.s ], [ %i.et, %.lr.ph.i.i37 ]
  br label %.preheader.i.i, !dbg !45296

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.eo, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ], !dbg !45294 ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ], !dbg !45294 ; 4 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ], !dbg !45294
  %i.ek = icmp eq ptr %.sroa.13.1.i.i, %i.eh, !dbg !45297 ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.ek, ptr %i.b, ptr %.sroa.13.1.i.i, !dbg !45298 ; 2 uses
  %.val.i.i.i36 = load i64, ptr %.sroa.01.0.i.i, align 8, !dbg !45299, !noalias !45092, !noundef !3924
  %i.el = icmp ult i64 %.val.i.i.i36, %.val1.i.pre.i.i, !dbg !45300
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.sroa.23.1.i.i, !dbg !45301 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !dbg !45302, !alias.scope !45090, !noalias !45093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !dbg !45303, !noalias !45092
  %i.en = zext i1 %i.el to i64, !dbg !45304
  %i.eo = add i64 %.sroa.23.1.i.i, %i.en, !dbg !45305 ; 6 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16, !dbg !45306
  br i1 %i.ek, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2K_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i, label %.preheader.i.i, !dbg !45296

.lr.ph.i.i37:                                     ; preds = %bb.s, %.lr.ph.i.i37
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i37 ], [ %.sroa.13.030.i.i, %bb.s ] ; 3 uses
  %.sroa.015.032.i.i = phi ptr [ %i.et, %.lr.ph.i.i37 ], [ %i.ef, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ex, %.lr.ph.i.i37 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i = load i64, ptr %.sroa.13.033.i.i, align 8, !dbg !45307, !alias.scope !45090, !noalias !45094, !noundef !3924
  %i.ep = icmp ult i64 %.val.i11.i.i, %.val1.i.pre.i.i, !dbg !45308
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.sroa.23.031.i.i, !dbg !45309 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.032.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !dbg !45310, !alias.scope !45090, !noalias !45094
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i, i64 16, i1 false), !dbg !45311, !alias.scope !45090, !noalias !45094
  %i.er = zext i1 %i.ep to i64, !dbg !45312
  %i.es = add i64 %.sroa.23.031.i.i, %i.er, !dbg !45313 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 32, !dbg !45314 ; 4 uses
  %.val.i13.i.i = load i64, ptr %i.et, align 8, !dbg !45315, !alias.scope !45090, !noalias !45095, !noundef !3924
  %i.eu = icmp ult i64 %.val.i13.i.i, %.val1.i.pre.i.i, !dbg !45316
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.es, !dbg !45317 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !dbg !45318, !alias.scope !45090, !noalias !45095
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 16, i1 false), !dbg !45319, !alias.scope !45090, !noalias !45095
  %i.ew = zext i1 %i.eu to i64, !dbg !45320
  %i.ex = add i64 %i.es, %i.ew, !dbg !45321       ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 48, !dbg !45294 ; 3 uses
  %i.ey = icmp ult ptr %.sroa.13.0.i.i, %i.ei, !dbg !45295
  br i1 %i.ey, label %.lr.ph.i.i37, label %.preheader.i.i.preheader, !dbg !45295

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2K_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !45322, !noalias !45089
  %.not7.i = icmp ult i64 %i.eo, %.sroa.15.089154, !dbg !45323
  br i1 %.not7.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit, label %bb.t, !dbg !45323

bb.t:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2K_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i
  tail call void @llvm.trap(), !dbg !45324
  unreachable, !dbg !45324

_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2K_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE14swap_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 %.sroa.0.090153, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089154, i64 noundef 0, i64 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39), !dbg !45325
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.090153, i64 %i.eo, !dbg !45326 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16, !dbg !45327
  %i.fb = xor i64 %i.eo, -1, !dbg !45328
  %i.fc = add i64 %.sroa.15.089154, %i.fb, !dbg !45328
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortINtNtNtBa_3ops5range5RangejENCINvMB8_SB17_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2k_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 %.sroa.0.090153, i64 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.088155, i32 noundef %i.dq, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !45329
  br label %.backedge, !dbg !45330

bb.u:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotINtNtNtBa_3ops5range5RangejENCINvMB8_SB15_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB2i_5inner17PolarsObjectStore15get_ranges_sort00E0ECs2g09Ig8GZd6_13polars_stream.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 %i.ed, !dbg !45331
  %.sroa.023.0.val = load i64, ptr %.sroa.023.088155, align 8, !dbg !45332, !noundef !3924
  %.val = load i64, ptr %i.fd, align 8, !dbg !45332, !noundef !3924
  %i.fe = icmp ult i64 %.sroa.023.0.val, %.val, !dbg !45333
  br i1 %i.fe, label %bb.s, label %bb.v, !dbg !45332

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45096), !dbg !45334
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE14swap_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 %.sroa.0.090153, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089154, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !dbg !45335
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 16, !dbg !45336 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45097), !dbg !45337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45098), !dbg !45337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !45338, !noalias !45099
  %i.fg = load <2 x i64>, ptr %i.ff, align 8, !dbg !45339, !alias.scope !45100
  store <2 x i64> %i.fg, ptr %i.a, align 16, !dbg !45340, !noalias !45099
  %i.fh = getelementptr [16 x i8], ptr %.sroa.0.090153, i64 %.sroa.15.089154, !dbg !45341 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 -16, !dbg !45341 ; 2 uses
  %.sroa.13.030.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.090153, i64 32, !dbg !45342 ; 3 uses
  %i.fj = icmp ult ptr %.sroa.13.030.i.i45, %i.fi, !dbg !45343
  %.val1.i.pre.i.i46 = load i64, ptr %.sroa.0.090153, align 8, !alias.scope !45101, !noalias !3924 ; 3 uses
  br i1 %i.fj, label %.lr.ph.i.i58, label %.preheader.i.i47.preheader, !dbg !45343

.preheader.i.i47.preheader:                       ; preds = %.lr.ph.i.i58, %bb.v
  %.sroa.23.1.i.i51.ph = phi i64 [ 0, %bb.v ], [ %i.fx, %.lr.ph.i.i58 ]
  %.sroa.13.1.i.i52.ph = phi ptr [ %.sroa.13.030.i.i45, %bb.v ], [ %.sroa.13.0.i.i64, %.lr.ph.i.i58 ]
  %.sroa.015.1.i.i53.ph = phi ptr [ %i.ff, %bb.v ], [ %i.ft, %.lr.ph.i.i58 ]
  br label %.preheader.i.i47, !dbg !45344

.preheader.i.i47:                                 ; preds = %.preheader.i.i47.preheader, %.preheader.i.i47
  %.sroa.23.1.i.i51 = phi i64 [ %i.fo, %.preheader.i.i47 ], [ %.sroa.23.1.i.i51.ph, %.preheader.i.i47.preheader ], !dbg !45342 ; 2 uses
  %.sroa.13.1.i.i52 = phi ptr [ %.sroa.13.1.sroa.gep.i.i56, %.preheader.i.i47 ], [ %.sroa.13.1.i.i52.ph, %.preheader.i.i47.preheader ], !dbg !45342 ; 4 uses
  %.sroa.015.1.i.i53 = phi ptr [ %.sroa.13.1.i.i52, %.preheader.i.i47 ], [ %.sroa.015.1.i.i53.ph, %.preheader.i.i47.preheader ], !dbg !45342
  %i.fk = icmp eq ptr %.sroa.13.1.i.i52, %i.fh, !dbg !45345 ; 2 uses
  %.sroa.01.0.i.i54 = select i1 %i.fk, ptr %i.a, ptr %.sroa.13.1.i.i52, !dbg !45346 ; 2 uses
  %.val.i.i.i55 = load i64, ptr %.sroa.01.0.i.i54, align 8, !dbg !45347, !noalias !45102, !noundef !3924
  %i.fl = icmp uge i64 %.val1.i.pre.i.i46, %.val.i.i.i55, !dbg !45348
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.sroa.23.1.i.i51, !dbg !45349 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !dbg !45350, !alias.scope !45100, !noalias !45103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i54, i64 16, i1 false), !dbg !45351, !noalias !45102
  %i.fn = zext i1 %i.fl to i64, !dbg !45352
  %i.fo = add i64 %.sroa.23.1.i.i51, %i.fn, !dbg !45353 ; 4 uses
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i52, i64 16, !dbg !45354
  br i1 %i.fk, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB36_5inner17PolarsObjectStore15get_ranges_sort00E0E0ECs2g09Ig8GZd6_13polars_stream.exit.i, label %.preheader.i.i47, !dbg !45344

.lr.ph.i.i58:                                     ; preds = %bb.v, %.lr.ph.i.i58
  %.sroa.13.033.i.i59 = phi ptr [ %.sroa.13.0.i.i64, %.lr.ph.i.i58 ], [ %.sroa.13.030.i.i45, %bb.v ] ; 3 uses
  %.sroa.015.032.i.i60 = phi ptr [ %i.ft, %.lr.ph.i.i58 ], [ %i.ff, %bb.v ] ; 3 uses
  %.sroa.23.031.i.i61 = phi i64 [ %i.fx, %.lr.ph.i.i58 ], [ 0, %bb.v ] ; 2 uses
  %.val.i11.i.i62 = load i64, ptr %.sroa.13.033.i.i59, align 8, !dbg !45355, !alias.scope !45100, !noalias !45104, !noundef !3924
  %i.fp = icmp uge i64 %.val1.i.pre.i.i46, %.val.i11.i.i62, !dbg !45356
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.sroa.23.031.i.i61, !dbg !45357 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.032.i.i60, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false), !dbg !45358, !alias.scope !45100, !noalias !45104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i59, i64 16, i1 false), !dbg !45359, !alias.scope !45100, !noalias !45104
  %i.fr = zext i1 %i.fp to i64, !dbg !45360
  %i.fs = add i64 %.sroa.23.031.i.i61, %i.fr, !dbg !45361 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i60, i64 32, !dbg !45362 ; 4 uses
  %.val.i13.i.i63 = load i64, ptr %i.ft, align 8, !dbg !45363, !alias.scope !45100, !noalias !45105, !noundef !3924
  %i.fu = icmp uge i64 %.val1.i.pre.i.i46, %.val.i13.i.i63, !dbg !45364
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fs, !dbg !45365 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i59, ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i64 16, i1 false), !dbg !45366, !alias.scope !45100, !noalias !45105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !dbg !45367, !alias.scope !45100, !noalias !45105
  %i.fw = zext i1 %i.fu to i64, !dbg !45368
  %i.fx = add i64 %i.fs, %i.fw, !dbg !45369       ; 2 uses
  %.sroa.13.0.i.i64 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i60, i64 48, !dbg !45342 ; 3 uses
  %i.fy = icmp ult ptr %.sroa.13.0.i.i64, %i.fi, !dbg !45343
  br i1 %i.fy, label %.lr.ph.i.i58, label %.preheader.i.i47.preheader, !dbg !45343

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB36_5inner17PolarsObjectStore15get_ranges_sort00E0E0ECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.preheader.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !45370, !noalias !45099
  %.not7.i57 = icmp ult i64 %i.fo, %.sroa.15.089154, !dbg !45371
  br i1 %.not7.i57, label %bb.x, label %bb.w, !dbg !45371

bb.w:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB36_5inner17PolarsObjectStore15get_ranges_sort00E0E0ECs2g09Ig8GZd6_13polars_stream.exit.i
  tail call void @llvm.trap(), !dbg !45372
  unreachable, !dbg !45372

bb.x:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtNtBa_3ops5range5RangejENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB36_5inner17PolarsObjectStore15get_ranges_sort00E0E0ECs2g09Ig8GZd6_13polars_stream.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE14swap_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 %.sroa.0.090153, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089154, i64 noundef 0, i64 noundef %i.fo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39), !dbg !45373
  %i.fz = add nuw nsw i64 %i.fo, 1, !dbg !45374   ; 2 uses
  %i.ga = sub nuw nsw i64 %.sroa.15.089154, %i.fz, !dbg !45375
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.090153, i64 %i.fz, !dbg !45376
  br label %.backedge, !dbg !45266

.backedge:                                        ; preds = %bb.x, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.023.0.be = phi ptr [ %i.ez, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ null, %bb.x ]
  %.sroa.15.0.be = phi i64 [ %i.fc, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.ga, %bb.x ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.fa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3ops5range5RangejE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.gb, %bb.x ] ; 3 uses
  %i.gc = icmp ult i64 %.sroa.15.0.be, 33, !dbg !45109
  br i1 %i.gc, label %._crit_edge, label %bb.b, !dbg !45109
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB17_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2X_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !45377 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [768 x i8], align 8               ; 15 uses
  %i.h = icmp samesign ult i64 %1, 33, !dbg !45812
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !45812

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = icmp eq i32 %3, 0, !dbg !45813
  br i1 %i.k, label %._crit_edge135, label %.lr.ph134, !dbg !45813

bb.b:                                             ; preds = %.backedge
  %i.l = icmp eq i32 %i.cb, 0, !dbg !45813
  br i1 %i.l, label %._crit_edge135, label %.lr.ph134, !dbg !45813

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !45814, !noalias !45768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45769), !dbg !45815
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45770), !dbg !45815
  %i.m = icmp samesign ult i64 %.sroa.15.0.lcssa, 2, !dbg !45816
  br i1 %i.m, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1f_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB35_.exit, label %bb.c, !dbg !45816

bb.c:                                             ; preds = %._crit_edge
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1, !dbg !45817 ; 9 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15, !dbg !45818
  br i1 %i.o, label %bb.e, label %bb.d, !dbg !45818

bb.d:                                             ; preds = %bb.c
  %i.p = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7, !dbg !45819
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n, !dbg !45820 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n, !dbg !45820 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !45819

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.15.0.lcssa, !dbg !45821 ; 5 uses
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef nonnull readonly align 8 %.sroa.0.0.lcssa, ptr noundef nonnull %i.s), !dbg !45822
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 64, !dbg !45823
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64, !dbg !45824
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef readonly %i.t, ptr noundef %i.u), !dbg !45825
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1g_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB36_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef 8, ptr noundef nonnull align 8 %i.g), !dbg !45826, !noalias !45771
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n, !dbg !45827 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n, !dbg !45828
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 128, !dbg !45829 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef nonnull readonly %i.v, ptr noundef nonnull %i.x), !dbg !45830
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 64, !dbg !45831
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 192, !dbg !45832
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef readonly %i.y, ptr noundef %i.z), !dbg !45833
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1g_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB36_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.x, i64 noundef 8, ptr noundef nonnull %i.w), !dbg !45834, !noalias !45771
  br label %bb.h, !dbg !45835

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.g), !dbg !45836
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB19_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Z_(ptr noundef %i.q, ptr noundef %i.r), !dbg !45837
  br label %bb.h, !dbg !45838

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !dbg !45839, !alias.scope !45772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !dbg !45840, !alias.scope !45772
  br label %bb.h, !dbg !45838

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ], !dbg !45841 ; 4 uses
  %i.aa = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.n ; 2 uses
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i.i, %i.n, !dbg !45842
  br i1 %i.ab, label %.lr.ph.i.i, label %.loopexit.i.i, !dbg !45843

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.i.i, %bb.h
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n, !dbg !45844
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n, !dbg !45845 ; 4 uses
  %i.ae = icmp samesign ult i64 %.sroa.0.0.i.i, %i.aa, !dbg !45842
  br i1 %i.ae, label %.lr.ph.1.i.i, label %.loopexit.1.i.i, !dbg !45843

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i
  %.sroa.05.04.1.i.i = phi i64 [ %i.bb, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.sroa.05.04.1.i.i, !dbg !45846
  %.idx147 = shl nuw nsw i64 %.sroa.05.04.1.i.i, 4, !dbg !45847
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx147, !dbg !45847 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !dbg !45848, !alias.scope !45772
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16, !dbg !45849 ; 3 uses
  %.val11.i.1.i.i = load ptr, ptr %i.ag, align 8, !dbg !45850, !alias.scope !45770, !noalias !45768, !nonnull !3924, !noundef !3924 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 8, !dbg !45850
  %.val12.i.1.i.i = load i64, ptr %i.ai, align 8, !dbg !45850, !alias.scope !45770, !noalias !45768, !noundef !3924 ; 5 uses
  %.val13.i.1.i.i = load ptr, ptr %i.ah, align 8, !dbg !45850, !alias.scope !45770, !noalias !45768, !nonnull !3924, !noundef !3924
  %i.aj = getelementptr i8, ptr %i.ag, i64 -8, !dbg !45850
  %.val14.i.1.i.i = load i64, ptr %i.aj, align 8, !dbg !45850, !alias.scope !45770, !noalias !45768, !noundef !3924 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val11.i.1.i.i, i64 16, !dbg !45851 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val13.i.1.i.i, i64 16, !dbg !45852
  %spec.store.select.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i.i, i64 %.val14.i.1.i.i), !dbg !45853
  %i.am = call i32 @memcmp(ptr nonnull readonly %i.ak, ptr nonnull readonly %i.al, i64 %spec.store.select.i.i.i.1.i.i), !dbg !45854, !noalias !45774 ; 2 uses
  %i.an = sext i32 %i.am to i64, !dbg !45854
  %i.ao = icmp eq i32 %i.am, 0, !dbg !45855
  %i.ap = sub i64 %.val12.i.1.i.i, %.val14.i.1.i.i
  %spec.select.i.i.i.1.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.an, !dbg !45855
  %i.aq = icmp slt i64 %spec.select.i.i.i.1.i.i, 0, !dbg !45856
  br i1 %i.aq, label %.preheader.1.i.i.preheader, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i, !dbg !45850

.preheader.1.i.i.preheader:                       ; preds = %.lr.ph.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !dbg !45857, !alias.scope !45770, !noalias !45768
  %i.ar = icmp eq i64 %.sroa.05.04.1.i.i, 1, !dbg !45858
  br i1 %i.ar, label %._crit_edge144, label %.lr.ph143, !dbg !45858

.preheader.1.i.i:                                 ; preds = %.lr.ph143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i30.1.i.i142, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !45857, !alias.scope !45770, !noalias !45768
  %i.as = icmp eq ptr %i.at, %i.ad, !dbg !45858
  br i1 %i.as, label %._crit_edge144, label %.lr.ph143, !dbg !45858

.lr.ph143:                                        ; preds = %.preheader.1.i.i.preheader, %.preheader.1.i.i
  %.sroa.0.0.i30.1.i.i142 = phi ptr [ %i.at, %.preheader.1.i.i ], [ %i.ah, %.preheader.1.i.i.preheader ] ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.0.i30.1.i.i142, i64 -16, !dbg !45859 ; 4 uses
  %.val9.i.1.i.i = load ptr, ptr %i.at, align 8, !dbg !45860, !alias.scope !45770, !noalias !45768, !nonnull !3924, !noundef !3924
  %i.au = getelementptr i8, ptr %.sroa.0.0.i30.1.i.i142, i64 -8, !dbg !45860
  %.val10.i.1.i.i = load i64, ptr %i.au, align 8, !dbg !45860, !alias.scope !45770, !noalias !45768, !noundef !3924 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val9.i.1.i.i, i64 16, !dbg !45861
  %spec.store.select.i.i15.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i.i, i64 %.val10.i.1.i.i), !dbg !45862
  %i.aw = call i32 @memcmp(ptr nonnull readonly %i.ak, ptr nonnull readonly %i.av, i64 %spec.store.select.i.i15.i.1.i.i), !dbg !45863, !noalias !45774 ; 2 uses
  %i.ax = sext i32 %i.aw to i64, !dbg !45863
  %i.ay = icmp eq i32 %i.aw, 0, !dbg !45864
  %i.az = sub i64 %.val12.i.1.i.i, %.val10.i.1.i.i
  %spec.select.i.i16.i.1.i.i = select i1 %i.ay, i64 %i.az, i64 %i.ax, !dbg !45864
  %i.ba = icmp slt i64 %spec.select.i.i16.i.1.i.i, 0, !dbg !45865
  br i1 %i.ba, label %.preheader.1.i.i, label %._crit_edge144, !dbg !45860

._crit_edge144:                                   ; preds = %.preheader.1.i.i, %.lr.ph143, %.preheader.1.i.i.preheader
  %.sroa.0.0.i30.lcssa.1.i.i = phi ptr [ %i.ad, %.preheader.1.i.i.preheader ], [ %i.ad, %.preheader.1.i.i ], [ %.sroa.0.0.i30.1.i.i142, %.lr.ph143 ], !dbg !45866 ; 2 uses
  store ptr %.val11.i.1.i.i, ptr %.sroa.0.0.i30.lcssa.1.i.i, align 8, !dbg !45867, !alias.scope !45770, !noalias !45775
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa.1.i.i, i64 8, !dbg !45867
  store i64 %.val12.i.1.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !dbg !45867, !alias.scope !45770, !noalias !45775
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i, !dbg !45868

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i: ; preds = %._crit_edge144, %.lr.ph.1.i.i
  %i.bb = add nuw nsw i64 %.sroa.05.04.1.i.i, 1, !dbg !45869 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.bb, %i.aa, !dbg !45842
  br i1 %exitcond.1.not.i.i, label %.loopexit.1.i.i, label %.lr.ph.1.i.i, !dbg !45843

.loopexit.1.i.i:                                  ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1g_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB36_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1f_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB35_.exit unwind label %bb.i, !dbg !45870

bb.i:                                             ; preds = %.loopexit.1.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = shl nuw nsw i64 %.sroa.15.0.lcssa, 4, !dbg !45871
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.g, i64 %i.bd, i1 false), !dbg !45871, !alias.scope !45772, !noalias !45776
  resume { ptr, i32 } %i.bc, !dbg !45872

.lr.ph.i.i:                                       ; preds = %bb.h, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.i.i
  %.sroa.05.04.i.i = phi i64 [ %i.ca, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 4 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.05.04.i.i, !dbg !45846
  %.idx = shl nuw nsw i64 %.sroa.05.04.i.i, 4, !dbg !45847
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx, !dbg !45847 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !dbg !45848, !alias.scope !45772
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16, !dbg !45849 ; 3 uses
  %.val11.i.i.i = load ptr, ptr %i.bf, align 8, !dbg !45850, !alias.scope !45770, !noalias !45768, !nonnull !3924, !noundef !3924 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8, !dbg !45850
  %.val12.i.i.i = load i64, ptr %i.bh, align 8, !dbg !45850, !alias.scope !45770, !noalias !45768, !noundef !3924 ; 5 uses
  %.val13.i.i.i = load ptr, ptr %i.bg, align 8, !dbg !45850, !alias.scope !45770, !noalias !45768, !nonnull !3924, !noundef !3924
  %i.bi = getelementptr i8, ptr %i.bf, i64 -8, !dbg !45850
  %.val14.i.i.i = load i64, ptr %i.bi, align 8, !dbg !45850, !alias.scope !45770, !noalias !45768, !noundef !3924 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val11.i.i.i, i64 16, !dbg !45851 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 16, !dbg !45852
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i.i, i64 %.val14.i.i.i), !dbg !45853
  %i.bl = call i32 @memcmp(ptr nonnull readonly %i.bj, ptr nonnull readonly %i.bk, i64 %spec.store.select.i.i.i.i.i), !dbg !45854, !noalias !45774 ; 2 uses
  %i.bm = sext i32 %i.bl to i64, !dbg !45854
  %i.bn = icmp eq i32 %i.bl, 0, !dbg !45855
  %i.bo = sub i64 %.val12.i.i.i, %.val14.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.bn, i64 %i.bo, i64 %i.bm, !dbg !45855
  %i.bp = icmp slt i64 %spec.select.i.i.i.i.i, 0, !dbg !45856
  br i1 %i.bp, label %.preheader.i.i.preheader, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB18_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2Y_.exit.i.i, !dbg !45850

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !dbg !45857, !alias.scope !45770, !noalias !45768
  %i.bq = icmp eq i64 %.sroa.05.04.i.i, 1, !dbg !45858
  br i1 %i.bq, label %._crit_edge139, label %.lr.ph138, !dbg !45858

.preheader.i.i:                                   ; preds = %.lr.ph138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i30.i.i137, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !dbg !45857, !alias.scope !45770, !noalias !45768
  %i.br = icmp eq ptr %i.bs, %i.g, !dbg !45858
  br i1 %i.br, label %._crit_edge139, label %.lr.ph138, !dbg !45858

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB17_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2X_:bb.a
bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i39
  %.sroa.13.046.i.i = phi ptr [ %.sroa.13.043.i.i, %.lr.ph.i.i39 ], [ %.sroa.13.0.i.i, %bb.p ] ; 3 uses
  %.sroa.025.045.i.i = phi ptr [ %i.di, %.lr.ph.i.i39 ], [ %i.ei, %bb.p ] ; 5 uses
  %.sroa.23.044.i.i = phi i64 [ 0, %.lr.ph.i.i39 ], [ %i.eq, %bb.p ] ; 2 uses
  %.val.i11.i.i = load ptr, ptr %.sroa.13.046.i.i, align 8, !dbg !45936, !alias.scope !45784, !noalias !45789, !nonnull !3924, !noundef !3924
  %i.ea = getelementptr i8, ptr %.sroa.025.045.i.i, i64 24, !dbg !45936
  %.val1.i12.i.i = load i64, ptr %i.ea, align 8, !dbg !45936, !alias.scope !45784, !noalias !45789, !noundef !3924 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i11.i.i, i64 16, !dbg !45937
  %spec.store.select.i.i.i15.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i12.i.i, i64 %.val3.i14.i.i), !dbg !45938
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly %i.eb, ptr nonnull readonly %i.dq, i64 %spec.store.select.i.i.i15.i.i), !dbg !45939, !noalias !45790 ; 2 uses
  %i.ed = sext i32 %i.ec to i64, !dbg !45939
  %i.ee = icmp eq i32 %i.ec, 0, !dbg !45940
  %i.ef = sub i64 %.val1.i12.i.i, %.val3.i14.i.i
  %spec.select.i.i.i16.i.i = select i1 %i.ee, i64 %i.ef, i64 %i.ed, !dbg !45940
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %.sroa.23.044.i.i, !dbg !45941 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025.045.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i64 16, i1 false), !dbg !45942, !alias.scope !45784, !noalias !45789
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.046.i.i, i64 16, i1 false), !dbg !45943, !alias.scope !45784, !noalias !45789
  %spec.select.i.i.lobit.i17.i.i = lshr i64 %spec.select.i.i.i16.i.i, 63, !dbg !45944
  %i.eh = add i64 %spec.select.i.i.lobit.i17.i.i, %.sroa.23.044.i.i, !dbg !45945 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.025.045.i.i, i64 32, !dbg !45946 ; 4 uses
  %.val.i18.i.i = load ptr, ptr %i.ei, align 8, !dbg !45947, !alias.scope !45784, !noalias !45791, !nonnull !3924, !noundef !3924
  %i.ej = getelementptr i8, ptr %.sroa.025.045.i.i, i64 40, !dbg !45947
  %.val1.i19.i.i = load i64, ptr %i.ej, align 8, !dbg !45947, !alias.scope !45784, !noalias !45791, !noundef !3924 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i18.i.i, i64 16, !dbg !45948
  %spec.store.select.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i19.i.i, i64 %.val3.i14.i.i), !dbg !45949
  %i.el = tail call i32 @memcmp(ptr nonnull readonly %i.ek, ptr nonnull readonly %i.dq, i64 %spec.store.select.i.i.i22.i.i), !dbg !45950, !noalias !45792 ; 2 uses
  %i.em = sext i32 %i.el to i64, !dbg !45950
  %i.en = icmp eq i32 %i.el, 0, !dbg !45951
  %i.eo = sub i64 %.val1.i19.i.i, %.val3.i14.i.i
  %spec.select.i.i.i23.i.i = select i1 %i.en, i64 %i.eo, i64 %i.em, !dbg !45951
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.eh, !dbg !45952 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.046.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !dbg !45953, !alias.scope !45784, !noalias !45791
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !dbg !45954, !alias.scope !45784, !noalias !45791
  %spec.select.i.i.lobit.i24.i.i = lshr i64 %spec.select.i.i.i23.i.i, 63, !dbg !45955
  %i.eq = add i64 %spec.select.i.i.lobit.i24.i.i, %i.eh, !dbg !45956 ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.045.i.i, i64 48, !dbg !45920 ; 3 uses
  %i.er = icmp ult ptr %.sroa.13.0.i.i, %i.dn, !dbg !45921
  br i1 %i.er, label %bb.p, label %.preheader.i.i36, !dbg !45921

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB3n_.exit.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !45957, !noalias !45783
  %.not7.i = icmp ult i64 %i.dz, %.sroa.15.082131, !dbg !45958
  br i1 %.not7.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit, label %bb.q, !dbg !45958

bb.q:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB3n_.exit.i
  tail call void @llvm.trap(), !dbg !45959
  unreachable, !dbg !45959

_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB3n_.exit.i
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.083130, i64 %i.dz, !dbg !45960 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !45961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, i64 16, i1 false), !dbg !45962
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, ptr noundef nonnull align 8 dereferenceable(16) %i.es, i64 16, i1 false), !dbg !45963, !alias.scope !45793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !45964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !45965
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16, !dbg !45966
  %i.eu = xor i64 %i.dz, -1, !dbg !45967
  %i.ev = add i64 %.sroa.15.082131, %i.eu, !dbg !45967
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB17_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2X_(ptr noalias noundef nonnull align 8 %.sroa.0.083130, i64 noundef %i.dz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.081132, i32 noundef %i.cb, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !45968
  br label %.backedge, !dbg !45969

bb.r:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0EB2V_.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.083130, i64 %i.df, !dbg !45970 ; 4 uses
  %.sroa.023.0.val = load ptr, ptr %.sroa.023.081132, align 8, !dbg !45971, !nonnull !3924, !noundef !3924
  %i.ex = getelementptr i8, ptr %.sroa.023.081132, i64 8, !dbg !45971
  %.sroa.023.0.val34 = load i64, ptr %i.ex, align 8, !dbg !45971, !noundef !3924 ; 2 uses
  %.val = load ptr, ptr %i.ew, align 8, !dbg !45971, !nonnull !3924, !noundef !3924
  %i.ey = getelementptr i8, ptr %i.ew, i64 8, !dbg !45971
  %.val35 = load i64, ptr %i.ey, align 8, !dbg !45971, !noundef !3924 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.023.0.val, i64 16, !dbg !45972
  %i.fa = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !45973
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.023.0.val34, i64 %.val35), !dbg !45974
  %i.fb = tail call i32 @memcmp(ptr nonnull readonly %i.ez, ptr nonnull readonly %i.fa, i64 %spec.store.select.i.i), !dbg !45975 ; 2 uses
  %i.fc = sext i32 %i.fb to i64, !dbg !45975
  %i.fd = icmp eq i32 %i.fb, 0, !dbg !45976
  %i.fe = sub i64 %.sroa.023.0.val34, %.val35
  %spec.select.i.i = select i1 %i.fd, i64 %i.fe, i64 %i.fc, !dbg !45976
  %i.ff = icmp slt i64 %spec.select.i.i, 0, !dbg !45977
  br i1 %i.ff, label %bb.n, label %bb.s, !dbg !45971

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45794), !dbg !45978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !45979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, i64 16, i1 false), !dbg !45980
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i64 16, i1 false), !dbg !45981, !alias.scope !45795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !dbg !45982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !45983
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.083130, i64 16, !dbg !45984 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45796), !dbg !45985
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45797), !dbg !45985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !45986, !noalias !45798
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !45987, !alias.scope !45799, !nonnull !3924, !noundef !3924
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.083130, i64 24, !dbg !45987
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !45987, !alias.scope !45799, !noundef !3924
  store ptr %i.fh, ptr %i.b, align 8, !dbg !45988, !noalias !45798
  store i64 %i.fj, ptr %i.i, align 8, !dbg !45988, !noalias !45798
  %i.fk = getelementptr [16 x i8], ptr %.sroa.0.083130, i64 %.sroa.15.082131, !dbg !45989 ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 -16, !dbg !45989 ; 2 uses
  %.sroa.13.041.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.083130, i64 32, !dbg !45990 ; 3 uses
  %i.fm = icmp ult ptr %.sroa.13.041.i.i, %i.fl, !dbg !45991
  %.val2.i.pre.i.i47 = load ptr, ptr %.sroa.0.083130, align 8, !alias.scope !45800, !noalias !3924 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.083130, i64 8
  %.val3.i14.i.i48 = load i64, ptr %i.fn, align 8, !alias.scope !45800, !noalias !3924 ; 6 uses
  br i1 %i.fm, label %.lr.ph.i.i60, label %.preheader.i.i49, !dbg !45991

.lr.ph.i.i60:                                     ; preds = %bb.s
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2.i.pre.i.i47, i64 16 ; 2 uses
  br label %bb.u, !dbg !45991

.preheader.i.i49:                                 ; preds = %bb.u, %bb.s
  %.sroa.23.0.lcssa.i.i50 = phi i64 [ 0, %bb.s ], [ %i.gu, %bb.u ], !dbg !45990
  %.sroa.023.0.lcssa.i.i = phi ptr [ %i.fg, %bb.s ], [ %i.gk, %bb.u ], !dbg !45990
  %.sroa.13.0.lcssa.i.i51 = phi ptr [ %.sroa.13.041.i.i, %bb.s ], [ %.sroa.13.0.i.i63, %bb.u ], !dbg !45990
  %i.fp = getelementptr inbounds nuw i8, ptr %.val2.i.pre.i.i47, i64 16
  br label %bb.t, !dbg !45992

bb.t:                                             ; preds = %bb.t, %.preheader.i.i49
  %.sroa.23.1.i.i52 = phi i64 [ %i.fz, %bb.t ], [ %.sroa.23.0.lcssa.i.i50, %.preheader.i.i49 ], !dbg !45990 ; 2 uses
  %.sroa.13.1.i.i53 = phi ptr [ %.sroa.13.1.sroa.gep34.i.i, %bb.t ], [ %.sroa.13.0.lcssa.i.i51, %.preheader.i.i49 ], !dbg !45990 ; 5 uses
  %.sroa.023.1.i.i = phi ptr [ %.sroa.13.1.i.i53, %bb.t ], [ %.sroa.023.0.lcssa.i.i, %.preheader.i.i49 ], !dbg !45990
  %i.fq = icmp eq ptr %.sroa.13.1.i.i53, %i.fk, !dbg !45993 ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.fq, ptr %i.b, ptr %.sroa.13.1.i.i53, !dbg !45994 ; 2 uses
  %.val.i.i.i55 = load ptr, ptr %.sroa.01.0.i.i54, align 8, !dbg !45995, !noalias !45801, !nonnull !3924, !noundef !3924
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr i8, ptr %.sroa.13.1.i.i53, i64 8, !dbg !45995
  %.sroa.01.0.sroa.sel.i.i57 = select i1 %i.fq, ptr %i.i, ptr %.sroa.13.1.sroa.gep.i.i56, !dbg !45995
  %.val1.i.i.i58 = load i64, ptr %.sroa.01.0.sroa.sel.i.i57, align 8, !dbg !45995, !noalias !45801, !noundef !3924 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i.i.i55, i64 16, !dbg !45996
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i14.i.i48, i64 %.val1.i.i.i58), !dbg !45997
  %i.fs = tail call i32 @memcmp(ptr nonnull readonly %i.fp, ptr nonnull readonly %i.fr, i64 %spec.store.select.i.i.i.i.i.i), !dbg !45998, !noalias !45802 ; 2 uses
  %i.ft = sext i32 %i.fs to i64, !dbg !45998
  %i.fu = icmp eq i32 %i.fs, 0, !dbg !45999
  %i.fv = sub i64 %.val3.i14.i.i48, %.val1.i.i.i58
  %spec.select.i.i.i.i.i.i = select i1 %i.fu, i64 %i.fv, i64 %i.ft, !dbg !45999
  %i.fw = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1, !dbg !46000
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %.sroa.23.1.i.i52, !dbg !46001 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.023.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !dbg !46002, !alias.scope !45799, !noalias !45803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i54, i64 16, i1 false), !dbg !46003, !noalias !45801
  %i.fy = zext i1 %i.fw to i64, !dbg !46004
  %i.fz = add i64 %.sroa.23.1.i.i52, %i.fy, !dbg !46005 ; 4 uses
  %.sroa.13.1.sroa.gep34.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i53, i64 16, !dbg !46006
  br i1 %i.fq, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0E0EB3J_.exit.i, label %bb.t, !dbg !45992

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i60
  %.sroa.13.044.i.i = phi ptr [ %.sroa.13.041.i.i, %.lr.ph.i.i60 ], [ %.sroa.13.0.i.i63, %bb.u ] ; 3 uses
  %.sroa.023.043.i.i = phi ptr [ %i.fg, %.lr.ph.i.i60 ], [ %i.gk, %bb.u ] ; 5 uses
  %.sroa.23.042.i.i = phi i64 [ 0, %.lr.ph.i.i60 ], [ %i.gu, %bb.u ] ; 2 uses
  %.val.i11.i.i61 = load ptr, ptr %.sroa.13.044.i.i, align 8, !dbg !46007, !alias.scope !45799, !noalias !45804, !nonnull !3924, !noundef !3924
  %i.ga = getelementptr i8, ptr %.sroa.023.043.i.i, i64 24, !dbg !46007
  %.val1.i12.i.i62 = load i64, ptr %i.ga, align 8, !dbg !46007, !alias.scope !45799, !noalias !45804, !noundef !3924 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i11.i.i61, i64 16, !dbg !46008
  %spec.store.select.i.i.i.i15.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i14.i.i48, i64 %.val1.i12.i.i62), !dbg !46009
  %i.gc = tail call i32 @memcmp(ptr nonnull readonly %i.fo, ptr nonnull readonly %i.gb, i64 %spec.store.select.i.i.i.i15.i.i), !dbg !46010, !noalias !45805 ; 2 uses
  %i.gd = sext i32 %i.gc to i64, !dbg !46010
  %i.ge = icmp eq i32 %i.gc, 0, !dbg !46011
  %i.gf = sub i64 %.val3.i14.i.i48, %.val1.i12.i.i62
  %spec.select.i.i.i.i16.i.i = select i1 %i.ge, i64 %i.gf, i64 %i.gd, !dbg !46011
  %i.gg = icmp sgt i64 %spec.select.i.i.i.i16.i.i, -1, !dbg !46012
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %.sroa.23.042.i.i, !dbg !46013 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.023.043.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false), !dbg !46014, !alias.scope !45799, !noalias !45804
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i, i64 16, i1 false), !dbg !46015, !alias.scope !45799, !noalias !45804
  %i.gi = zext i1 %i.gg to i64, !dbg !46016
  %i.gj = add i64 %.sroa.23.042.i.i, %i.gi, !dbg !46017 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.023.043.i.i, i64 32, !dbg !46018 ; 4 uses
  %.val.i17.i.i = load ptr, ptr %i.gk, align 8, !dbg !46019, !alias.scope !45799, !noalias !45806, !nonnull !3924, !noundef !3924
  %i.gl = getelementptr i8, ptr %.sroa.023.043.i.i, i64 40, !dbg !46019
  %.val1.i18.i.i = load i64, ptr %i.gl, align 8, !dbg !46019, !alias.scope !45799, !noalias !45806, !noundef !3924 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.i17.i.i, i64 16, !dbg !46020
  %spec.store.select.i.i.i.i21.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i14.i.i48, i64 %.val1.i18.i.i), !dbg !46021
  %i.gn = tail call i32 @memcmp(ptr nonnull readonly %i.fo, ptr nonnull readonly %i.gm, i64 %spec.store.select.i.i.i.i21.i.i), !dbg !46022, !noalias !45807 ; 2 uses
  %i.go = sext i32 %i.gn to i64, !dbg !46022
  %i.gp = icmp eq i32 %i.gn, 0, !dbg !46023
  %i.gq = sub i64 %.val3.i14.i.i48, %.val1.i18.i.i
  %spec.select.i.i.i.i22.i.i = select i1 %i.gp, i64 %i.gq, i64 %i.go, !dbg !46023
  %i.gr = icmp sgt i64 %spec.select.i.i.i.i22.i.i, -1, !dbg !46024
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.gj, !dbg !46025 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !dbg !46026, !alias.scope !45799, !noalias !45806
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !dbg !46027, !alias.scope !45799, !noalias !45806
  %i.gt = zext i1 %i.gr to i64, !dbg !46028
  %i.gu = add i64 %i.gj, %i.gt, !dbg !46029       ; 2 uses
  %.sroa.13.0.i.i63 = getelementptr inbounds nuw i8, ptr %.sroa.023.043.i.i, i64 48, !dbg !45990 ; 3 uses
  %i.gv = icmp ult ptr %.sroa.13.0.i.i63, %i.fl, !dbg !45991
  br i1 %i.gv, label %bb.u, label %.preheader.i.i49, !dbg !45991

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0E0EB3J_.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !46030, !noalias !45798
  %.not7.i59 = icmp ult i64 %i.fz, %.sroa.15.082131, !dbg !46031
  br i1 %.not7.i59, label %bb.w, label %bb.v, !dbg !46031

bb.v:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0E0EB3J_.exit.i
  tail call void @llvm.trap(), !dbg !46032
  unreachable, !dbg !46032

bb.w:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfoNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21sinked_path_info_list26call_sinked_paths_callback00E0E0EB3J_.exit.i
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.083130, i64 %i.fz, !dbg !46033 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !46034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, i64 16, i1 false), !dbg !46035
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.083130, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !dbg !46036, !alias.scope !45808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !46037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !46038
  %i.gx = add nuw nsw i64 %i.fz, 1, !dbg !46039   ; 2 uses
  %i.gy = sub nuw nsw i64 %.sroa.15.082131, %i.gx, !dbg !46040
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.083130, i64 %i.gx, !dbg !46041
  br label %.backedge, !dbg !45874

.backedge:                                        ; preds = %bb.w, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.023.0.be = phi ptr [ %i.es, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ null, %bb.w ]
  %.sroa.15.0.be = phi i64 [ %i.ev, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.gy, %bb.w ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.et, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink14SinkedPathInfo12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.gz, %bb.w ] ; 3 uses
  %i.ha = icmp ult i64 %.sroa.15.0.be, 33, !dbg !45812
  br i1 %i.ha, label %._crit_edge, label %bb.b, !dbg !45812
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array3map8read_mapINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(32) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %4, ptr noalias noundef align 8 dereferenceable(32) %5, ptr noalias noundef align 8 dereferenceable(24) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, i64 noundef %8, i1 noundef zeroext %9, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %10, i64 noundef range(i64 0, 2) %11, i64 %12, i16 noundef range(i16 0, 5) %13, ptr noalias noundef align 8 dereferenceable(24) %14, i1 noundef zeroext %15) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !46042 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !46144
  invoke void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array18try_get_field_node(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
          to label %bb.c unwind label %bb.b, !dbg !46144

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit154: ; preds = %.thread, %bb.at, %bb.b
  %.sroa.063.0 = phi i8 [ %.sroa.063.1, %bb.b ], [ %.sroa.063.2159, %.thread ], [ %.sroa.063.2159, %bb.at ], !dbg !46188
  %.pn141 = phi { ptr, i32 } [ %i.r, %bb.b ], [ %.pn139160, %.thread ], [ %.pn139160, %bb.at ]
  %i.q = trunc nuw i8 %.sroa.063.0 to i1, !dbg !46189
  br i1 %i.q, label %bb.av, label %bb.au, !dbg !46189

bb.b:                                             ; preds = %bb.as, %bb.am, %bb.e, %bb.a
  %.sroa.063.1 = phi i8 [ 1, %bb.as ], [ %.sroa.063.5, %bb.am ], [ 1, %bb.e ], [ 1, %bb.a ], !dbg !46188
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit154

bb.c:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.p, align 8, !dbg !46190, !range !4253, !noundef !3924 ; 2 uses
  %.not = icmp eq i64 %i.s, 18, !dbg !46190
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !46191
  %i.u = load ptr, ptr %i.t, align 8, !dbg !46191 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !46191
  %i.w = load i64, ptr %i.v, align 8, !dbg !46191 ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d, !dbg !46192

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !46193
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !46194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.477.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !46193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !46195
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !46194
  store i64 %i.s, ptr %i.x, align 8, !dbg !46194
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !46194
  store ptr %i.u, ptr %.sroa.275.0..sroa_idx, align 8, !dbg !46194
  %.sroa.376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !46194
  store i64 %i.w, ptr %.sroa.376.0..sroa_idx, align 8, !dbg !46194
  store i8 42, ptr %0, align 8, !dbg !46194
  br label %bb.ap, !dbg !46196

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !46195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !46197
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610), !dbg !46148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !46148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !46148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !dbg !46148
  invoke void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic13read_validityINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %5, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8, i1 noundef zeroext %9, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, i64 noundef %11, i64 %12, ptr noalias noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.f unwind label %bb.b, !dbg !46148

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !46148
  %i.y = load i64, ptr %i.n, align 8, !dbg !46198, !range !4253, !noundef !3924 ; 2 uses
  %.not128 = icmp eq i64 %i.y, 18, !dbg !46198
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !46199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !dbg !46199
  br i1 %.not128, label %bb.h, label %bb.g, !dbg !46200

bb.g:                                             ; preds = %bb.f
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !46201
  %.sroa.386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !46202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.386.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.683.0..sroa_idx, i64 32, i1 false), !dbg !46201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !46203
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !46202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.285.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610, i64 32, i1 false), !dbg !46203
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !46202
  store i64 %i.y, ptr %i.aa, align 8, !dbg !46202
  store i8 42, ptr %0, align 8, !dbg !46202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610), !dbg !46204
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit152, !dbg !46205

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !46203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610, i64 32, i1 false), !dbg !46148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610), !dbg !46204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !46152
  invoke void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array20try_get_array_length(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef %i.w, i64 noundef %11, i64 %12)
          to label %bb.j unwind label %bb.i, !dbg !46152

bb.i:                                             ; preds = %bb.ab, %bb.q, %bb.k, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.m, align 8, !dbg !46206, !range !4253, !noundef !3924 ; 2 uses
  %.not129 = icmp eq i64 %i.ac, 18, !dbg !46206
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !46207
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !46207 ; 2 uses
  br i1 %.not129, label %bb.k, label %bb.ar, !dbg !46208

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !46209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !46210
  %i.af = add i64 %i.ae, 1, !dbg !46211
  invoke void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8, i1 noundef zeroext %9, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %10, ptr noalias noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.l unwind label %bb.i, !dbg !46158

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr %i.k, align 8, !dbg !46212, !range !4253, !noundef !3924
  %.not130 = icmp eq i64 %i.ag, 18, !dbg !46212
  br i1 %.not130, label %bb.s, label %bb.m, !dbg !46213

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !46214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !46215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !46216, !noalias !46154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !46217, !noalias !46154
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !dbg !46218, !noalias !46154
  %i.ah = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !dbg !46219, !noalias !46154 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null, !dbg !46220
  br i1 %i.ai, label %bb.n, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !46221, !prof !3961

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #55
          to label %.noexc.i unwind label %bb.o, !dbg !46222, !noalias !46154

.noexc.i:                                         ; preds = %bb.n
  unreachable, !dbg !46222

bb.o:                                             ; preds = %bb.p, %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #54
          to label %.thread unwind label %bb.r, !dbg !46223, !noalias !46155

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.m
  store i32 0, ptr %i.ah, align 4, !dbg !46217, !noalias !46154
  store i64 1, ptr %i.b, align 8, !dbg !46224, !noalias !46154
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !46224
  store ptr %i.ah, ptr %i.ak, align 8, !dbg !46224, !noalias !46154
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !46224
  store i64 1, ptr %i.al, align 8, !dbg !46224, !noalias !46154
  %i.am = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragelE8from_vecCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !dbg !46225, !noalias !46154

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE12from_storageCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.am)
          to label %bb.q unwind label %bb.o, !dbg !46226, !noalias !46154

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !46227, !noalias !46154
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !46228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !46228, !noalias !46157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !46223, !noalias !46154
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RNCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array3map8read_mapINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0Cs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.i, !dbg !46223

bb.r:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !46229, !noalias !46155
  unreachable, !dbg !46229

_RNCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array3map8read_mapINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !46230
  br label %bb.s, !dbg !46231

bb.s:                                             ; preds = %_RNCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array3map8read_mapINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0Cs2g09Ig8GZd6_13polars_stream.exit, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !46232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !dbg !46232
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow5array3mapNtB4_8MapArray9get_field(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
          to label %bb.u unwind label %bb.aq, !dbg !46233

bb.t:                                             ; preds = %bb.al
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11into_static:bb.a
  %.sroa.02.0.i = phi ptr [ %i.s, %bb.h ], [ %.0..0..0..0..0..sroa.02.0.copyload3.i, %bb.g ], !dbg !64678
  %.sroa.6.0.i = phi i64 [ %i.p, %bb.h ], [ %.8..8..8..8..8..sroa.6.0.copyload6.i, %bb.g ], !dbg !64678
  %.sroa.7.0.i = phi i64 [ %i.w, %bb.h ], [ %.16..16..16..16..16..sroa.7.0.copyload9.i, %bb.g ], !dbg !64679 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !64661
  %i.x = and i64 %.sroa.7.0.i, -72057594037927936, !dbg !64668
  %or.cond = icmp eq i64 %i.x, -2738188573441261568, !dbg !64668
  br i1 %or.cond, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread, label %bb.ba, !dbg !64668, !prof !64610

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64680
  br label %bb.az, !dbg !64681

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64682
  br label %bb.az, !dbg !64683

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64684
  br label %bb.az, !dbg !64685

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64686
  br label %bb.az, !dbg !64687

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64688
  br label %bb.az, !dbg !64689

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64690
  br label %bb.az, !dbg !64691

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64692
  br label %bb.az, !dbg !64693

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64694
  br label %bb.az, !dbg !64695

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64696
  br label %bb.az, !dbg !64697

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64698
  br label %bb.az, !dbg !64699

bb.s:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64700
  br label %bb.az, !dbg !64701

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64702
  br label %bb.az, !dbg !64703

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64704
  br label %bb.az, !dbg !64705

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64706
  br label %bb.az, !dbg !64707

bb.w:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !64708
  %i.z = load i64, ptr %i.y, align 8, !dbg !64708, !noundef !3924
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !64709
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !64709, !range !4342, !noundef !3924
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !64710
  %i.ad = load ptr, ptr %i.ac, align 16, !dbg !64710, !align !4191, !noundef !3924 ; 2 uses
  %.not9 = icmp eq ptr %i.ad, null, !dbg !64711
  br i1 %.not9, label %bb.bc, label %bb.bb, !dbg !64712

bb.x:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64713
  br label %bb.az, !dbg !64714

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64715
  br label %bb.az, !dbg !64716

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64717
  br label %bb.az, !dbg !64718

bb.aa:                                            ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !64719
  %i.af = load i32, ptr %i.ae, align 4, !dbg !64719, !noundef !3924
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !64720
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !64720, !nonnull !3924, !align !4191, !noundef !3924
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !64721, !nonnull !3924, !noundef !3924 ; 2 uses
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8, !dbg !64722
  %i.ak = icmp slt i64 %i.aj, 0, !dbg !64723
  br i1 %i.ak, label %bb.be, label %bb.bd, !dbg !64723

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64724
  br label %bb.az, !dbg !64725

bb.ac:                                            ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !64726
  %i.am = load i32, ptr %i.al, align 4, !dbg !64726, !noundef !3924
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !64727
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !64727, !nonnull !3924, !align !4191, !noundef !3924
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !64728, !nonnull !3924, !noundef !3924 ; 2 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !dbg !64729
  %i.ar = icmp slt i64 %i.aq, 0, !dbg !64730
  br i1 %i.ar, label %bb.bg, label %bb.bf, !dbg !64730

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64731
  br label %bb.az, !dbg !64732

bb.ae:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64733
  br label %bb.az, !dbg !64734

bb.af:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64735
  br label %bb.az, !dbg !64736

bb.ag:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !64737
  %i.at = load ptr, ptr %i.as, align 8, !dbg !64737, !nonnull !3924, !noundef !3924
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !64737
  %i.av = load ptr, ptr %i.au, align 16, !dbg !64737, !nonnull !3924, !align !4191, !noundef !3924
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80, !dbg !64738
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !64738, !invariant.load !3924, !nonnull !3924
  %i.ay = tail call { ptr, ptr } %i.ax(ptr noundef nonnull %i.at) #58, !dbg !64739 ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0, !dbg !64739
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1, !dbg !64739
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64740
  store ptr %i.az, ptr %i.bb, align 8, !dbg !64740
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !64740
  store ptr %i.ba, ptr %i.bc, align 16, !dbg !64740
  store i8 28, ptr %0, align 16, !dbg !64740
  br label %bb.az, !dbg !64741

bb.ah:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64742
  br label %bb.az, !dbg !64743

bb.ai:                                            ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !64744
  %i.be = load i64, ptr %i.bd, align 8, !dbg !64744, !noundef !3924
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !64745
  %i.bg = load ptr, ptr %i.bf, align 16, !dbg !64745, !nonnull !3924, !align !4191, !noundef !3924
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !64746
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !64746, !nonnull !3924, !align !4679, !noundef !3924 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !64746
  %i.bk = load i64, ptr %i.bj, align 16, !dbg !64746, !noundef !3924 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !64747
  call void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value20struct_to_avs_static(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, i64 noundef %i.be, ptr noundef nonnull align 8 %i.bg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.bi, i64 noundef %i.bk), !dbg !64748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !64749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !64750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !64750
  call void @llvm.experimental.noalias.scope.decl(metadata !64625), !dbg !64751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !64752, !noalias !64629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !64753, !noalias !64629
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 115292150460684698) %i.bk, i1 noundef zeroext false, i64 noundef 16, i64 noundef 80)
          to label %.noexc unwind label %bb.bh, !dbg !64753

.noexc:                                           ; preds = %bb.ai
  %i.bl = load i64, ptr %i.d, align 8, !dbg !64753, !range !4001, !noalias !64629, !noundef !3924
  %i.bm = trunc nuw i64 %i.bl to i1, !dbg !64754
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !64755
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !64755, !range !4164, !noalias !64629, !noundef !3924 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !64755 ; 2 uses
  br i1 %i.bm, label %bb.aj, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !64754, !prof !3961

bb.aj:                                            ; preds = %.noexc
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !64756, !noalias !64629
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bo, i64 %i.bq) #55
          to label %.noexc10 unwind label %bb.bh, !dbg !64757

.noexc10:                                         ; preds = %bb.aj
  unreachable, !dbg !64757

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc
  %i.br = load ptr, ptr %i.bp, align 8, !dbg !64758, !noalias !64629, !nonnull !3924, !noundef !3924 ; 2 uses
  %i.bs = icmp samesign ule i64 %i.bk, %i.bo, !dbg !64759
  call void @llvm.assume(i1 %i.bs), !dbg !64760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !64761, !noalias !64629
  store i64 %i.bo, ptr %i.f, align 8, !dbg !64762, !noalias !64629
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !64762
  store ptr %i.br, ptr %i.bt, align 8, !dbg !64762, !noalias !64629
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !64762 ; 2 uses
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bi, i64 %i.bk, !dbg !64763
  %i.bw = icmp eq i64 %i.bo, 0, !dbg !64764
  br i1 %i.bw, label %.loopexit, label %.lr.ph.i, !dbg !64764

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br label %bb.ak, !dbg !64764

bb.ak:                                            ; preds = %bb.ar, %.lr.ph.i
  %.sroa.012.025.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.ca, %bb.ar ] ; 5 uses
  %.sroa.7.024.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cb, %bb.ar ] ; 3 uses
  %.sroa.10.023.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.by, %bb.ar ]
  %i.by = add nsw i64 %.sroa.10.023.i, -1, !dbg !64765 ; 2 uses
  %i.bz = icmp eq ptr %.sroa.012.025.i, %i.bv, !dbg !64766
  br i1 %i.bz, label %.loopexit, label %bb.al, !dbg !64767

.loopexit.i:                                      ; preds = %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 80, !dbg !64768
  %i.cb = add nuw nsw i64 %.sroa.7.024.i, 1, !dbg !64769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !64770
  call void @llvm.experimental.noalias.scope.decl(metadata !64632), !dbg !64771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !64772, !noalias !64629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !64772, !noalias !64634
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 48, !dbg !64773 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 71, !dbg !64774
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !64774, !range !4189, !alias.scope !64635, !noundef !3924
  %i.cf = icmp eq i8 %i.ce, -40, !dbg !64775
  br i1 %i.cf, label %bb.am, label %bb.an, !dbg !64775

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc) #59
          to label %.noexc.i unwind label %.loopexit.i, !dbg !64776, !noalias !64636

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.cc, i64 24, i1 false), !dbg !64777, !noalias !64637
  br label %.noexc.i, !dbg !64778

.noexc.i:                                         ; preds = %bb.an, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !64779, !noalias !64634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !64780, !noalias !64634
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.012.025.i)
          to label %bb.ar unwind label %bb.ao, !dbg !64780, !noalias !64637

bb.ao:                                            ; preds = %.noexc.i
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !64781
  %i.ci = load i8, ptr %i.ch, align 1, !dbg !64781, !range !4189, !alias.scope !64638, !noalias !64634, !noundef !3924
  %i.cj = icmp eq i8 %i.ci, -40, !dbg !64782
  br i1 %i.cj, label %bb.ap, label %bb.at, !dbg !64782, !prof !3961

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.at unwind label %bb.aq, !dbg !64783, !noalias !64637

bb.aq:                                            ; preds = %bb.ap
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !64784, !noalias !64637
  unreachable, !dbg !64784

bb.ar:                                            ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !64784, !noalias !64639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.e, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !64784, !noalias !64639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !64785, !noalias !64634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !64785, !noalias !64634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !64786, !noalias !64629
  %i.cl = getelementptr inbounds nuw [80 x i8], ptr %i.br, i64 %.sroa.7.024.i, !dbg !64787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cl, ptr noundef nonnull align 16 dereferenceable(80) %i.e, i64 80, i1 false), !dbg !64788, !noalias !64636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !64789
  %i.cm = icmp eq i64 %i.by, 0, !dbg !64764
  br i1 %i.cm, label %.loopexit, label %bb.ak, !dbg !64764

bb.as:                                            ; preds = %bb.at
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !64790, !noalias !64636
  unreachable, !dbg !64790

bb.at:                                            ; preds = %bb.ap, %bb.ao, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cg, %bb.ao ], [ %i.cg, %bb.ap ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.024.i, ptr %i.bu, align 8, !dbg !64791, !noalias !64629
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.f) #54
          to label %.body unwind label %bb.as, !dbg !64792, !noalias !64636

bb.au:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64793
  br label %bb.az, !dbg !64794

bb.av:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64795
  br label %bb.az, !dbg !64796

bb.aw:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !64797
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !64797, !nonnull !3924, !noundef !3924
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !64797
  %i.cr = load i64, ptr %i.cq, align 16, !dbg !64797, !noundef !3924 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !64798
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.cr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !64798
  %i.cs = load i64, ptr %i.h, align 8, !dbg !64798, !range !4001, !noundef !3924
  %i.ct = trunc nuw i64 %i.cs to i1, !dbg !64799
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !64800
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !64800, !range !4164, !noundef !3924 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !64800 ; 2 uses
  br i1 %i.ct, label %bb.bm, label %bb.bn, !dbg !64799, !prof !3961

bb.ax:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64801
  br label %bb.az, !dbg !64802

bb.ay:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !64803
  br label %bb.az, !dbg !64804

bb.az:                                            ; preds = %bb.bo, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCs2g09Ig8GZd6_13polars_stream.exit, %bb.bf, %bb.bd, %bb.bc, %bb.ba, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.c, %bb.b
  ret void, !dbg !64805

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i
  tail call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #57, !dbg !64806
  unreachable, !dbg !64806

bb.ba:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread24
  %.sroa.0.032 = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread24 ], [ %.sroa.02.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %.sroa.4.031 = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread24 ], [ %.sroa.6.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %.sroa.5.030 = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2g09Ig8GZd6_13polars_stream.exit.thread24 ], [ %.sroa.7.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64807
  store ptr %.sroa.0.032, ptr %i.cx, align 8, !dbg !64807
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !64807
  store i64 %.sroa.4.031, ptr %.sroa.417.0..sroa_idx, align 16, !dbg !64807
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !64807
  store i64 %.sroa.5.030, ptr %.sroa.518.0..sroa_idx, align 8, !dbg !64807
  store i8 31, ptr %0, align 16, !dbg !64807
  br label %bb.az, !dbg !64808

bb.bb:                                            ; preds = %bb.w
  %i.cy = tail call fastcc noundef nonnull ptr @_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad) #58, !dbg !64809
  br label %bb.bc, !dbg !64810

bb.bc:                                            ; preds = %bb.w, %bb.bb
  %.sroa.02.0 = phi ptr [ %i.cy, %bb.bb ], [ null, %bb.w ], !dbg !64811
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64812
  store i64 %i.z, ptr %i.cz, align 8, !dbg !64812
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !64812
  store i8 %i.ab, ptr %i.da, align 1, !dbg !64812
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !64812
  store ptr %.sroa.02.0, ptr %i.db, align 16, !dbg !64812
  store i8 18, ptr %0, align 16, !dbg !64812
  br label %bb.az, !dbg !64813

bb.bd:                                            ; preds = %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !64814
  store i32 %i.af, ptr %i.dc, align 4, !dbg !64814
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64814
  store ptr %i.ai, ptr %i.dd, align 8, !dbg !64814
  store i8 22, ptr %0, align 16, !dbg !64814
  br label %bb.az, !dbg !64815

bb.be:                                            ; preds = %bb.aa
  tail call void @llvm.trap(), !dbg !64816
  unreachable, !dbg !64816

bb.bf:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !64817
  store i32 %i.am, ptr %i.de, align 4, !dbg !64817
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64817
  store ptr %i.ap, ptr %i.df, align 8, !dbg !64817
  store i8 24, ptr %0, align 16, !dbg !64817
  br label %bb.az, !dbg !64818

bb.bg:                                            ; preds = %bb.ac
  tail call void @llvm.trap(), !dbg !64819
  unreachable, !dbg !64819

bb.bh:                                            ; preds = %bb.aj, %bb.ai
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !64820

.body:                                            ; preds = %bb.at, %bb.bh
  %eh.lpad-body = phi { ptr, i32 } [ %i.dg, %bb.bh ], [ %eh.lpad-body.i, %bb.at ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.i) #54
          to label %common.resume unwind label %bb.bl, !dbg !64820

.loopexit:                                        ; preds = %bb.ar, %bb.ak, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i
  store i64 %i.bk, ptr %i.bu, align 8, !dbg !64821, !noalias !64629
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !64749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !64822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !64792, !noalias !64629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !64749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !64820
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !dbg !64823, !noalias !64649
  %i.di = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !dbg !64824, !noalias !64649 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null, !dbg !64825
  br i1 %i.dj, label %bb.bi, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCs2g09Ig8GZd6_13polars_stream.exit, !dbg !64826, !prof !3961

bb.bi:                                            ; preds = %.loopexit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #55
          to label %.noexc11 unwind label %bb.bj, !dbg !64827

.noexc11:                                         ; preds = %bb.bi
  unreachable, !dbg !64827

bb.bj:                                            ; preds = %bb.bi
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB1i_5field5FieldEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j) #54
          to label %common.resume unwind label %bb.bk, !dbg !64828
end_hunk_2
