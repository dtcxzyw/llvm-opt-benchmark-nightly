Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.14?download=true
inline.NumInlined: 3784
inline.NumDeleted: 1574
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathNvYB14_NtNtBa_3cmp10PartialOrd2ltECslpwjCj2YNBy_9polars_io:bb.a
_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3NtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathNvYBZ_NtNtBa_3cmp10PartialOrd2ltECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ], !dbg !33204
  ret ptr %.sroa.0.0.i, !dbg !33205
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recNtNtCs8RKTHBS4OBx_12object_store4path4PathNvYB14_NtNtBa_3cmp10PartialOrd2ltECslpwjCj2YNBy_9polars_io(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #0 !dbg !33206 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944, !dbg !33250
  %.not = icmp eq i64 %i.a, 0, !dbg !33250
  br i1 %.not, label %bb.c, label %bb.b, !dbg !33250

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3, !dbg !33251              ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2, !dbg !33252     ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c, !dbg !33253
  %i.e = mul nuw i64 %i.b, 7, !dbg !33254         ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e, !dbg !33255
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recNtNtCs8RKTHBS4OBx_12object_store4path4PathNvYB14_NtNtBa_3cmp10PartialOrd2ltECslpwjCj2YNBy_9polars_io(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull %4), !dbg !33256
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c, !dbg !33257
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e, !dbg !33258
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recNtNtCs8RKTHBS4OBx_12object_store4path4PathNvYB14_NtNtBa_3cmp10PartialOrd2ltECslpwjCj2YNBy_9polars_io(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull %4), !dbg !33259
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c, !dbg !33260
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e, !dbg !33261
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recNtNtCs8RKTHBS4OBx_12object_store4path4PathNvYB14_NtNtBa_3cmp10PartialOrd2ltECslpwjCj2YNBy_9polars_io(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull %4), !dbg !33262
  br label %bb.c, !dbg !33263

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8, !dbg !33264 ; 2 uses
  %.sroa.0.0.val17 = load ptr, ptr %i.n, align 8, !dbg !33264, !nonnull !1513, !noundef !1513
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 16, !dbg !33264 ; 2 uses
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !dbg !33264, !noundef !1513
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 8, !dbg !33264 ; 2 uses
  %.sroa.04.0.val19 = load ptr, ptr %i.p, align 8, !dbg !33264, !nonnull !1513, !noundef !1513
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 16, !dbg !33264 ; 2 uses
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !dbg !33264, !noundef !1513
  %i.r = tail call noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCscgRAwXFJnXP_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val17, i64 noundef %.sroa.0.0.val18, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.val19, i64 noundef %.sroa.04.0.val20), !dbg !33265 ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %i.n, align 8, !dbg !33266, !nonnull !1513, !noundef !1513
  %.sroa.0.0.val14 = load i64, ptr %i.o, align 8, !dbg !33266, !noundef !1513
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8, !dbg !33266 ; 2 uses
  %.sroa.08.0.val15 = load ptr, ptr %i.s, align 8, !dbg !33266, !nonnull !1513, !noundef !1513
  %i.t = getelementptr i8, ptr %.sroa.08.0, i64 16, !dbg !33266 ; 2 uses
  %.sroa.08.0.val16 = load i64, ptr %i.t, align 8, !dbg !33266, !noundef !1513
  %i.u = tail call noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCscgRAwXFJnXP_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val14, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0.val15, i64 noundef %.sroa.08.0.val16), !dbg !33267
  %i.v = xor i8 %i.u, %i.r, !dbg !33268
  %i.w = icmp slt i8 %i.v, 0, !dbg !33268
  br i1 %i.w, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3NtNtCs8RKTHBS4OBx_12object_store4path4PathNvYBZ_NtNtBa_3cmp10PartialOrd2ltECslpwjCj2YNBy_9polars_io.exit, label %bb.d, !dbg !33268

bb.d:                                             ; preds = %bb.c
  %.sroa.04.0.val = load ptr, ptr %i.p, align 8, !dbg !33269, !nonnull !1513, !noundef !1513
  %.sroa.04.0.val12 = load i64, ptr %i.q, align 8, !dbg !33269, !noundef !1513
  %.sroa.08.0.val = load ptr, ptr %i.s, align 8, !dbg !33269, !nonnull !1513, !noundef !1513
  %.sroa.08.0.val13 = load i64, ptr %i.t, align 8, !dbg !33269, !noundef !1513
  %i.x = tail call noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCscgRAwXFJnXP_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.val, i64 noundef %.sroa.04.0.val12, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0.val, i64 noundef %.sroa.08.0.val13), !dbg !33270
  %i.y = xor i8 %i.x, %i.r, !dbg !33271
  %i.z = icmp slt i8 %i.y, 0, !dbg !33271
  %..i = select i1 %i.z, ptr %.sroa.08.0, ptr %.sroa.04.0, !dbg !33272
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3NtNtCs8RKTHBS4OBx_12object_store4path4PathNvYBZ_NtNtBa_3cmp10PartialOrd2ltECslpwjCj2YNBy_9polars_io.exit, !dbg !33272

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3NtNtCs8RKTHBS4OBx_12object_store4path4PathNvYBZ_NtNtBa_3cmp10PartialOrd2ltECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ], !dbg !33273
  ret ptr %.sroa.0.0.i, !dbg !33274
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_11sort_by_keyjNCNCNvB18_26count_rows_from_reader_par0s0_0E0EB1e_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 20587884010836554) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !33275 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7, !dbg !33289
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keyjNCNCNvB13_26count_rows_from_reader_par0s0_0E0EB19_.exit, !dbg !33289

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3, !dbg !33290              ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2, !dbg !33291     ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c, !dbg !33292
  %i.e = mul nuw nsw i64 %i.b, 7, !dbg !33293     ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e, !dbg !33294
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_11sort_by_keyjNCNCNvB18_26count_rows_from_reader_par0s0_0E0EB1e_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b), !dbg !33295
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c, !dbg !33296
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e, !dbg !33297
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_11sort_by_keyjNCNCNvB18_26count_rows_from_reader_par0s0_0E0EB1e_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b), !dbg !33298
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c, !dbg !33299
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e, !dbg !33300
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_11sort_by_keyjNCNCNvB18_26count_rows_from_reader_par0s0_0E0EB1e_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b), !dbg !33301
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keyjNCNCNvB13_26count_rows_from_reader_par0s0_0E0EB19_.exit, !dbg !33302

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keyjNCNCNvB13_26count_rows_from_reader_par0s0_0E0EB19_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 48, !dbg !33303
  %.sroa.0.0.val13 = load i64, ptr %i.n, align 8, !dbg !33303, !noundef !1513 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 48, !dbg !33303
  %.sroa.04.0.val14 = load i64, ptr %i.o, align 8, !dbg !33303, !noundef !1513 ; 2 uses
  %i.p = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14, !dbg !33304 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 48, !dbg !33305
  %.sroa.08.0.val12 = load i64, ptr %i.q, align 8, !dbg !33305, !noundef !1513 ; 2 uses
  %i.r = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12, !dbg !33306
  %i.s = xor i1 %i.p, %i.r, !dbg !33307
  %i.t = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12, !dbg !33307
  %i.u = xor i1 %i.p, %i.t, !dbg !33307
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0, !dbg !33307
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i, !dbg !33307
  ret ptr %.sroa.0.0.i, !dbg !33308
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTjINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read9read_implNtB3Q_10CoreReader9parse_csvs3_0E0EB3W_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !33309 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944, !dbg !33328
  %.not = icmp eq i64 %i.a, 0, !dbg !33328
  br i1 %.not, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TjINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENCINvMB8_SBZ_20sort_unstable_by_keyjNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read9read_implNtB3K_10CoreReader9parse_csvs3_0E0EB3Q_.exit, label %bb.b, !dbg !33328

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3, !dbg !33329              ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2, !dbg !33330     ; 3 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.c, !dbg !33331
  %i.e = mul nuw i64 %i.b, 7, !dbg !33332         ; 3 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.e, !dbg !33333
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTjINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read9read_implNtB3Q_10CoreReader9parse_csvs3_0E0EB3W_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4), !dbg !33334
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %i.c, !dbg !33335
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %i.e, !dbg !33336
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTjINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read9read_implNtB3Q_10CoreReader9parse_csvs3_0E0EB3W_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4), !dbg !33337
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.c, !dbg !33338
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.e, !dbg !33339
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTjINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read9read_implNtB3Q_10CoreReader9parse_csvs3_0E0EB3W_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4), !dbg !33340
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TjINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENCINvMB8_SBZ_20sort_unstable_by_keyjNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read9read_implNtB3K_10CoreReader9parse_csvs3_0E0EB3Q_.exit, !dbg !33341

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TjINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENCINvMB8_SBZ_20sort_unstable_by_keyjNCNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read9read_implNtB3K_10CoreReader9parse_csvs3_0E0EB3Q_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i64, ptr %.sroa.0.0, align 8, !dbg !33342, !noundef !1513 ; 2 uses
  %.sroa.04.0.val14 = load i64, ptr %.sroa.04.0, align 8, !dbg !33342, !noundef !1513 ; 2 uses
  %i.n = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14, !dbg !33343 ; 2 uses
  %.sroa.08.0.val12 = load i64, ptr %.sroa.08.0, align 8, !dbg !33344, !noundef !1513 ; 2 uses
  %i.o = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12, !dbg !33345
  %i.p = xor i1 %i.n, %i.o, !dbg !33346
  %i.q = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12, !dbg !33346
  %i.r = xor i1 %i.n, %i.q, !dbg !33346
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0, !dbg !33346
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i, !dbg !33346
  ret ptr %.sroa.0.0.i, !dbg !33347
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_11sort_by_keyjNCNCNvB10_26count_rows_from_reader_par0s0_0E0EB16_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33348 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !33614
  br i1 %i.c, label %bb.ae, label %bb.b, !dbg !33614

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !33615
  %i.e = urem i64 4611686018427387904, %1, !dbg !33616
  %.not = icmp ne i64 %i.e, 0, !dbg !33617
  %i.f = zext i1 %.not to i64, !dbg !33617
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !33617 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !33618
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !33618

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !33619
  br label %bb.e, !dbg !33619

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !33620
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !33621
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !33622
  br label %bb.e, !dbg !33623

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ], !dbg !33624 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33626
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i100 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !33627

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ], !dbg !33628 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dr, %bb.aa ], !dbg !33629 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dp, %bb.aa ], !dbg !33630 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !33631 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !33631

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_11sort_by_keyjNCNCNvB17_26count_rows_from_reader_par0s0_0E0EB1d_.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_11sort_by_keyjNCNCNvB17_26count_rows_from_reader_par0s0_0E0EB1d_.exit ], [ 0, %bb.f ], !dbg !33632 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_11sort_by_keyjNCNCNvB17_26count_rows_from_reader_par0s0_0E0EB1d_.exit ], [ 1, %bb.f ], !dbg !33632 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !33633
  br i1 %i.l, label %.lr.ph64, label %._crit_edge, !dbg !33633

.lr.ph64:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r, !dbg !33633

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !33634 ; 11 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0, !dbg !33635 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !33636
  br i1 %.not.i33, label %bb.i, label %bb.j, !dbg !33636

bb.i:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread98, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !33637

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !33638
  br i1 %i.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE7reverseBE_.exit, label %bb.k, !dbg !33638

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 104, !dbg !33639
  %.val10.i = load i64, ptr %i.q, align 8, !dbg !33639, !alias.scope !33576, !noalias !33577, !noundef !1513 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 48, !dbg !33639
  %.val11.i = load i64, ptr %i.r, align 8, !dbg !33639, !alias.scope !33576, !noalias !33577, !noundef !1513
  %i.s = icmp uge i64 %.val10.i, %.val11.i, !dbg !33640 ; 2 uses
  %.not71 = icmp eq i64 %i.n, 2, !dbg !33641      ; 2 uses
  br i1 %i.s, label %.preheader49, label %.preheader, !dbg !33642

.preheader49:                                     ; preds = %bb.k
  br i1 %.not71, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread, label %.lr.ph, !dbg !33643

.preheader:                                       ; preds = %bb.k
  br i1 %.not71, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread98, label %.lr.ph58, !dbg !33644

.lr.ph:                                           ; preds = %.preheader49, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader49 ], !dbg !33645
  %.sroa.01.0.i.i54 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader49 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.0.i.i54, !dbg !33646
  %i.u = getelementptr i8, ptr %i.t, i64 48, !dbg !33645
  %.val8.i = load i64, ptr %i.u, align 8, !dbg !33645, !alias.scope !33576, !noalias !33577, !noundef !1513 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i, !dbg !33647
  br i1 %i.v, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i, label %bb.l, !dbg !33645

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i54, 1, !dbg !33648 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n, !dbg !33643
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i, label %.lr.ph, !dbg !33643

.lr.ph58:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ], !dbg !33649
  %.sroa.01.1.i.i57 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.1.i.i57, !dbg !33650
  %i.y = getelementptr i8, ptr %i.x, i64 48, !dbg !33649
  %.val.i = load i64, ptr %i.y, align 8, !dbg !33649, !alias.scope !33576, !noalias !33577, !noundef !1513 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i, !dbg !33651
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i, !dbg !33649

bb.m:                                             ; preds = %.lr.ph58
  %i.aa = add nuw i64 %.sroa.01.1.i.i57, 1, !dbg !33652 ; 2 uses
  %exitcond78.not = icmp eq i64 %i.aa, %i.n, !dbg !33644
  br i1 %exitcond78.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i, label %.lr.ph58, !dbg !33644

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i: ; preds = %bb.m, %.lr.ph58, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i54, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i57, %.lr.ph58 ], [ %i.n, %bb.m ], !dbg !33653 ; 5 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !33654
  tail call void @llvm.assume(i1 %i.ab), !dbg !33655
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !33656
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !33656

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread98: ; preds = %.preheader
  br i1 %.not5.i100, label %bb.i, label %.lr.ph.preheader.i.i, !dbg !33656

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i95, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE7reverseBE_.exit, !dbg !33656

bb.n:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  %or.cond = or i1 %i.s, %.not.i.i, !dbg !33657
  br i1 %or.cond, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE7reverseBE_.exit, label %.lr.ph.preheader.i.i, !dbg !33657

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 %.sroa.01.0), !dbg !33658
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i39, 1, !dbg !33659
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_11sort_by_keyjNCNCNvB17_26count_rows_from_reader_par0s0_0E0EB1d_.exit, !dbg !33660

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 32), !dbg !33661 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNCNvB19_26count_rows_from_reader_par0s0_0E0EB1f_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #38, !dbg !33662, !inline_history !33403
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i38, 1, !dbg !33663
  %i.af = or disjoint i64 %i.ae, 1, !dbg !33663
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_11sort_by_keyjNCNCNvB17_26count_rows_from_reader_par0s0_0E0EB1d_.exit, !dbg !33660

_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE7reverseBE_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEB1a_.exit.i.i, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4447 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread ], [ %.sroa.0.0.i.i96103107, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEB1a_.exit.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i4447, 1, !dbg !33664
  %i.ah = or disjoint i64 %i.ag, 1, !dbg !33664
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_11sort_by_keyjNCNCNvB17_26count_rows_from_reader_par0s0_0E0EB1d_.exit, !dbg !33665

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread98
  %i.ai = phi i64 [ %i.ac, %bb.n ], [ 1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread98 ]
  %.sroa.0.0.i.i96103107 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_11sort_by_keyjNCNCNvB16_26count_rows_from_reader_par0s0_0E0EB1c_.exit.i.thread98 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.0.i.i96103107, !dbg !33666
  br label %.lr.ph.i.i37, !dbg !33667

.lr.ph.i.i37:                                     ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEB1a_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ao, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEB1a_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.017.i.i, -1, !dbg !33668
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.017.i.i, !dbg !33669
  %i.am = getelementptr [56 x i8], ptr %i.aj, i64 %i.ak, !dbg !33670
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 7)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEB1a_.exit.i.i unwind label %bb.q, !dbg !33667, !noalias !33577

bb.q:                                             ; preds = %.lr.ph.i.i37
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !33671, !noalias !33577
  unreachable, !dbg !33671

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEB1a_.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.ao = add nuw nsw i64 %.sroa.0.017.i.i, 1, !dbg !33672 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.ai, !dbg !33673
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE7reverseBE_.exit, label %.lr.ph.i.i37, !dbg !33673

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_11sort_by_keyjNCNCNvB17_26count_rows_from_reader_par0s0_0E0EB1d_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE7reverseBE_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ah, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE7reverseBE_.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ], !dbg !33674 ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1, !dbg !33675
  %i.aq = lshr i64 %.sroa.0.0.i34, 1, !dbg !33676
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !33677 ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap, !dbg !33677
  %i.as = add nuw nsw i64 %i.aq, %factor, !dbg !33678
  %i.at = mul i64 %i.ar, %.sroa.0.0, !dbg !33679
  %i.au = mul i64 %i.as, %.sroa.0.0, !dbg !33680
  %i.av = xor i64 %i.au, %i.at, !dbg !33681
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false), !dbg !33682
  %i.ax = trunc nuw nsw i64 %i.aw to i8, !dbg !33681
  br label %bb.g, !dbg !33683

bb.r:                                             ; preds = %.lr.ph64, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keyjNCNCNvB1a_26count_rows_from_reader_par0s0_0E0EB1g_.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.ay, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keyjNCNCNvB1a_26count_rows_from_reader_par0s0_0E0EB1g_.exit ] ; 2 uses
  %.sroa.023.162 = phi i64 [ %.sroa.023.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keyjNCNCNvB1a_26count_rows_from_reader_par0s0_0E0EB1g_.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.163, -1, !dbg !33684  ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay, !dbg !33685
  %i.ba = load i8, ptr %i.az, align 1, !dbg !33686, !noundef !1513
  %.not29 = icmp ult i8 %i.ba, %.sroa.021.0, !dbg !33686
  br i1 %.not29, label %._crit_edge, label %bb.s, !dbg !33686

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keyjNCNCNvB1a_26count_rows_from_reader_par0s0_0E0EB1g_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.162, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keyjNCNCNvB1a_26count_rows_from_reader_par0s0_0E0EB1g_.exit ], !dbg !33628 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.163, %bb.r ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keyjNCNCNvB1a_26count_rows_from_reader_par0s0_0E0EB1g_.exit ], !dbg !33630 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !33687
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8, !dbg !33688
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !33689
  store i8 %.sroa.021.0, ptr %i.bc, align 1, !dbg !33690
  br i1 %i.k, label %bb.aa, label %bb.ab, !dbg !33691

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay, !dbg !33692
  %i.be = load i64, ptr %i.bd, align 8, !dbg !33693, !noundef !1513 ; 3 uses
  %i.bf = lshr i64 %i.be, 1, !dbg !33694          ; 8 uses
  %i.bg = lshr i64 %.sroa.023.162, 1, !dbg !33695 ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg, !dbg !33696   ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh, !dbg !33697
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bi, !dbg !33698 ; 6 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3, !dbg !33699
  %i.bl = trunc i64 %.sroa.023.162 to i1
  %i.bm = or i64 %i.be, %.sroa.023.162, !dbg !33700
  %i.bn = trunc i64 %i.bm to i1, !dbg !33700
  %or.cond3.i = or i1 %i.bk, %i.bn, !dbg !33700
  br i1 %or.cond3.i, label %bb.t, label %bb.u, !dbg !33700

bb.t:                                             ; preds = %bb.s
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.v, label %bb.w, !dbg !33701

bb.u:                                             ; preds = %bb.s
  %i.bp = shl nuw nsw i64 %i.bh, 1, !dbg !33702
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keyjNCNCNvB1a_26count_rows_from_reader_par0s0_0E0EB1g_.exit, !dbg !33703

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bl, label %bb.x, label %bb.z, !dbg !33704

bb.w:                                             ; preds = %bb.t
  %i.bq = or i64 %i.bf, 1, !dbg !33705
  %i.br = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true), !dbg !33706
  %i.bs = trunc nuw nsw i64 %i.br to i32, !dbg !33706
  %i.bt = shl nuw nsw i32 %i.bs, 1, !dbg !33707
  %i.bu = xor i32 %i.bt, 126, !dbg !33707
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNCNvB19_26count_rows_from_reader_par0s0_0E0EB1f_(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 164703072086692426) %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #38, !dbg !33708, !inline_history !33468
  br label %bb.v, !dbg !33709

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33597), !dbg !33710
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33598), !dbg !33710
  %i.bv = icmp eq i64 %i.bf, 0, !dbg !33711
  %i.bw = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.bw, %i.bv, !dbg !33711
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keyjNCNCNvB11_26count_rows_from_reader_par0s0_0E0EB17_.exit, label %bb.y, !dbg !33711

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 range(i64 0, -9223372036854775808) %i.bf), !dbg !33712 ; 2 uses
  %i.bx = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !33713
  br i1 %i.bx, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keyjNCNCNvB11_26count_rows_from_reader_par0s0_0E0EB17_.exit, label %.critedge.i, !dbg !33713

.critedge.i:                                      ; preds = %bb.y
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bf, !dbg !33714 ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bf, %i.bg, !dbg !33715 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.by, ptr %i.bj, !dbg !33716
  %i.bz = mul nuw nsw i64 %.sroa.0.0.i.i35, 56, !dbg !33717 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.bz, i1 false), !dbg !33717, !alias.scope !33601
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz, !dbg !33718 ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i, !dbg !33719

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cb = phi ptr [ %i.cn, %.preheader.i ], [ %i.ca, %.critedge.i ], !dbg !33720 ; 2 uses
  %i.cc = phi ptr [ %i.cl, %.preheader.i ], [ %i.by, %.critedge.i ], !dbg !33721 ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cf, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -56, !dbg !33720 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -56, !dbg !33722 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -56, !dbg !33723 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cb, i64 -8, !dbg !33724
  %.val.i.i = load i64, ptr %i.cg, align 8, !dbg !33724, !alias.scope !33598, !noalias !33603, !noundef !1513
  %i.ch = getelementptr i8, ptr %i.cc, i64 -8, !dbg !33724
  %.val10.i.i = load i64, ptr %i.ch, align 8, !dbg !33724, !alias.scope !33597, !noalias !33604, !noundef !1513
  %i.ci = icmp ult i64 %.val.i.i, %.val10.i.i, !dbg !33725 ; 3 uses
  %..i.i = select i1 %i.ci, ptr %i.cd, ptr %i.ce, !dbg !33726
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %..i.i, i64 56, i1 false), !dbg !33727, !alias.scope !33601, !noalias !33605
  %i.cj = xor i1 %i.ci, true, !dbg !33728
  %i.ck = zext i1 %i.cj to i64, !dbg !33728
  %i.cl = getelementptr inbounds nuw [56 x i8], ptr %i.cd, i64 %i.ck, !dbg !33729 ; 3 uses
  %i.cm = zext i1 %i.ci to i64, !dbg !33730
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %i.cm, !dbg !33731 ; 3 uses
  %i.co = icmp eq ptr %i.cl, %i.bj, !dbg !33732
  %i.cp = icmp eq ptr %i.cn, %2
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp, !dbg !33732
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_.exit.i, label %.preheader.i, !dbg !33732

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cq = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.bj, %.critedge.i ], !dbg !33733 ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.by, %.critedge.i ] ; 3 uses
  %i.cr = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.cs = getelementptr i8, ptr %.sroa.0.02.i.i, i64 48, !dbg !33733
  %.sroa.0.0.val.i.i = load i64, ptr %i.cs, align 8, !dbg !33733, !alias.scope !33597, !noalias !33606, !noundef !1513
  %i.ct = getelementptr i8, ptr %i.cr, i64 48, !dbg !33733
  %.val.i19.i = load i64, ptr %i.ct, align 8, !dbg !33733, !alias.scope !33598, !noalias !33607, !noundef !1513
  %i.cu = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i, !dbg !33734 ; 3 uses
  %i.cv = xor i1 %i.cu, true, !dbg !33735
  %spec.select.i.i = select i1 %i.cu, ptr %.sroa.0.02.i.i, ptr %i.cr, !dbg !33736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i.i, i64 56, i1 false), !dbg !33737, !alias.scope !33601, !noalias !33608
  %i.cw = zext i1 %i.cv to i64, !dbg !33738
  %i.cx = getelementptr inbounds nuw [56 x i8], ptr %i.cr, i64 %i.cw, !dbg !33739 ; 3 uses
  %i.cy = zext i1 %i.cu to i64, !dbg !33740
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i.i, i64 %i.cy, !dbg !33741 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 56, !dbg !33742 ; 2 uses
  %i.db = icmp ne ptr %i.cx, %i.ca, !dbg !33743
  %i.dc = icmp ne ptr %i.cz, %i.m
  %or.cond.i20.i = select i1 %i.db, i1 %i.dc, i1 false, !dbg !33743
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_.exit.i, !dbg !33743

_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cl, %.preheader.i ], [ %i.da, %.lr.ph.i.i ], !dbg !33744
  %.sroa.7.0.i = phi ptr [ %i.cn, %.preheader.i ], [ %i.ca, %.lr.ph.i.i ], !dbg !33745
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cx, %.lr.ph.i.i ], !dbg !33745 ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.7.0.i to i64, !dbg !33746
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcShE9drop_slowCsbm5zPlkZccl_4pyo3(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCscgRAwXFJnXP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCscgRAwXFJnXP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCscgRAwXFJnXP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc3vec3VeclENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsF_NtNtCscgRAwXFJnXP_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsD_NtNtCscgRAwXFJnXP_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCscgRAwXFJnXP_4core3fmt3numnNtB6_7Display3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsN_NtNtCscgRAwXFJnXP_4core3fmt3numnNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsL_NtNtCscgRAwXFJnXP_4core3fmt3numnNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCscgRAwXFJnXP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCscgRAwXFJnXP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCscgRAwXFJnXP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCscgRAwXFJnXP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCscgRAwXFJnXP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsM_NtNtCscgRAwXFJnXP_4core3fmt3numoNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsK_NtNtCscgRAwXFJnXP_4core3fmt3numoNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9debug_map(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweERNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueINtNtCs1D4ELoo6g0G_9halfbrown4iter4IterB13_B1G_EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #32

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtCs4BcJZGCY6Ba_10rayon_core9ErrorKindNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarE16into_boxed_sliceCslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs1d9mkheQt2j_4http5errorNtB2_5ErrorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs1d9mkheQt2j_4http5errorNtB4_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtCs1d9mkheQt2j_4http5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core5error5Error6source(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs1d9mkheQt2j_4http5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error5causeCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCscgRAwXFJnXP_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtCsgjwxzEoLG5s_12polars_error9ErrStringNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsV_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionNtCsgjwxzEoLG5s_12polars_error9ErrStringENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCscgRAwXFJnXP_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB2_11OwnedObjectNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRReINtNtNtBa_5slice4iter4IterB14_EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRlINtNtNtBa_5slice4iter4IterlEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterjENCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13shuffle_addrs0ENtB4_13SpecAdvanceBy15spec_advance_byB2C_(ptr noalias noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #26

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nounwind }
attributes #30 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #31 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { cold noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { cold }
attributes #38 = { noinline }
attributes #39 = { noinline noreturn }
attributes #40 = { inlinehint }

!llvm.module.flags = !{!1502, !1503, !1504, !1505}
!llvm.ident = !{!1506}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1507, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<()>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleuEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!2 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<tokio::runtime::task::Notified<alloc::sync::Arc<tokio::runtime::scheduler::multi_thread::handle::Handle, alloc::alloc::Global>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskmDBXs7hs3c_5tokio7runtime4task8NotifiedINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!3 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::Task<alloc::sync::Arc<tokio::runtime::scheduler::multi_thread::handle::Handle, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCskmDBXs7hs3c_5tokio7runtime4task4TaskINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!4 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::Notified<alloc::sync::Arc<tokio::runtime::scheduler::multi_thread::handle::Handle, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCskmDBXs7hs3c_5tokio7runtime4task8NotifiedINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!5 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<!>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandlezEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!6 = distinct !DISubprogram(name: "hooks", linkageName: "_RNvMs1_NtNtCskmDBXs7hs3c_5tokio7runtime9schedulerNtB5_6Handle5hooks", scope: !1527, file: !1525, line: 219, type: !1514, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!7 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new", scope: !1548, file: !1546, line: 20, type: !1532, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!8 = distinct !DISubprogram(name: "clone<alloc::sync::Arc<(dyn core::ops::function::Fn<(&tokio::runtime::task_hooks::TaskMeta), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDG0_INtNtNtB7_3ops8function2FnTRL1_INtNtNtCskmDBXs7hs3c_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB7_6marker4SendNtB32_4SyncEL_EENtNtB7_5clone5Clone5cloneCslpwjCj2YNBy_9polars_io", scope: !1551, file: !1549, line: 2276, type: !1514, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!9 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<(dyn core::ops::function::Fn<(&tokio::runtime::task_hooks::TaskMeta), Output=()> + core::marker::Send + core::marker::Sync)>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerDG0_INtNtNtB9_3ops8function2FnTRL1_INtNtNtCskmDBXs7hs3c_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB9_6marker4SendNtB3g_4SyncEL_EE6as_refCslpwjCj2YNBy_9polars_io", scope: !1555, file: !1553, line: 440, type: !1514, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!10 = distinct !DISubprogram(name: "inner<(dyn core::ops::function::Fn<(&tokio::runtime::task_hooks::TaskMeta), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDG0_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTRL1_INtNtNtCskmDBXs7hs3c_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E5innerCslpwjCj2YNBy_9polars_io", scope: !1557, file: !1533, line: 2104, type: !1514, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!11 = distinct !DISubprogram(name: "clone<(dyn core::ops::function::Fn<(&tokio::runtime::task_hooks::TaskMeta), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDG0_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTRL1_INtNtNtCskmDBXs7hs3c_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_ENtNtBR_5clone5Clone5cloneCslpwjCj2YNBy_9polars_io", scope: !1536, file: !1533, line: 2382, type: !1514, scopeLine: 2382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!12 = distinct !DILexicalBlock(scope: !8, file: !1549, line: 2278, column: 13)
!13 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECslpwjCj2YNBy_9polars_io", scope: !1518, file: !1515, line: 3933, type: !1514, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!14 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !1523, file: !1515, line: 3160, type: !1514, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!15 = distinct !DILexicalBlock(scope: !11, file: !1533, line: 2394, column: 9)
!16 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<crossbeam_channel::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!17 = distinct !DISubprogram(name: "drop_in_place<core::cell::UnsafeCell<core::option::Option<crossbeam_channel::context::Context>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!18 = distinct !DISubprogram(name: "drop_in_place<core::cell::Cell<core::option::Option<crossbeam_channel::context::Context>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!19 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subjjECslpwjCj2YNBy_9polars_io", scope: !1518, file: !1515, line: 3950, type: !1514, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!20 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !1523, file: !1515, line: 3191, type: !1514, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!21 = distinct !DISubprogram(name: "drop<crossbeam_channel::context::Inner, alloc::alloc::Global>", linkageName: "_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io", scope: !1591, file: !1533, line: 2810, type: !1514, scopeLine: 2810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!22 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<crossbeam_channel::context::Inner, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!23 = distinct !DISubprogram(name: "drop_in_place<crossbeam_channel::context::Context>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!24 = distinct !DISubprogram(name: "fence", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4sync6atomic5fence", scope: !1518, file: !1515, line: 4383, type: !1514, scopeLine: 4383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!25 = distinct !DISubprogram(name: "drop_in_place<rayon_core::ErrorKind>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs4BcJZGCY6Ba_10rayon_core9ErrorKindECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!26 = distinct !DISubprogram(name: "drop_in_place<rayon_core::ThreadPoolBuildError>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs4BcJZGCY6Ba_10rayon_core20ThreadPoolBuildErrorECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!27 = distinct !DISubprogram(name: "drop_in_place<rayon_core::thread_pool::ThreadPool>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!28 = distinct !DISubprogram(name: "drop_in_place<core::cell::UnsafeCell<rayon_core::thread_pool::ThreadPool>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!29 = distinct !DISubprogram(name: "drop_in_place<core::cell::RefCell<rayon_core::thread_pool::ThreadPool>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!30 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<rayon_core::registry::Registry, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!31 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<rayon_core::registry::Registry>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEE6as_refCslpwjCj2YNBy_9polars_io", scope: !1555, file: !1553, line: 440, type: !1514, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!32 = distinct !DISubprogram(name: "inner<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE5innerCslpwjCj2YNBy_9polars_io", scope: !1557, file: !1533, line: 2104, type: !1514, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33 = distinct !DISubprogram(name: "drop<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io", scope: !1591, file: !1533, line: 2810, type: !1514, scopeLine: 2810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!34 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subjjECslpwjCj2YNBy_9polars_io", scope: !1518, file: !1515, line: 3950, type: !1514, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !1523, file: !1515, line: 3191, type: !1514, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!36 = distinct !DISubprogram(name: "get<usize>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCelljE3getCslpwjCj2YNBy_9polars_io", scope: !1570, file: !1568, line: 2443, type: !1514, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!37 = distinct !DISubprogram(name: "get<usize>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CelljE3getCslpwjCj2YNBy_9polars_io", scope: !1571, file: !1568, line: 552, type: !1514, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!38 = distinct !DISubprogram(name: "release_handle", linkageName: "_RNvMs6_NtCs7mBf7xsg8h_15crossbeam_epoch8internalNtB5_5Local14release_handle", scope: !1609, file: !1607, line: 503, type: !1514, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!39 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs7_NtCs7mBf7xsg8h_15crossbeam_epoch9collectorNtB5_11LocalHandleNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !1612, file: !1610, line: 99, type: !1532, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!40 = distinct !DISubprogram(name: "drop_in_place<crossbeam_epoch::collector::LocalHandle>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1532, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!41 = distinct !DILexicalBlock(scope: !38, file: !1607, line: 504, column: 9)
!42 = distinct !DILexicalBlock(scope: !41, file: !1607, line: 505, column: 9)
!43 = distinct !DISubprogram(name: "replace<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replacejECslpwjCj2YNBy_9polars_io", scope: !1575, file: !1574, line: 915, type: !1514, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!44 = distinct !DILexicalBlock(scope: !43, file: !1574, line: 929, column: 9)
!45 = distinct !DISubprogram(name: "replace<usize>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CelljE7replaceCslpwjCj2YNBy_9polars_io", scope: !1571, file: !1568, line: 510, type: !1514, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!46 = distinct !DISubprogram(name: "set<usize>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CelljE3setCslpwjCj2YNBy_9polars_io", scope: !1571, file: !1568, line: 433, type: !1514, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!47 = distinct !DISubprogram(name: "atomic_load<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadjECslpwjCj2YNBy_9polars_io", scope: !1518, file: !1515, line: 3900, type: !1514, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!48 = distinct !DISubprogram(name: "atomic_compare_exchange_weak<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic28atomic_compare_exchange_weakjECslpwjCj2YNBy_9polars_io", scope: !1518, file: !1515, line: 4034, type: !1514, scopeLine: 4034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!49 = distinct !DISubprogram(name: "snooze", linkageName: "_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff6snooze", scope: !1640, file: !1637, line: 206, type: !1514, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!50 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_add", scope: !1642, file: !1641, line: 2498, type: !1514, scopeLine: 2498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!51 = distinct !DISubprogram(name: "overflowing_add_unsigned", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl24overflowing_add_unsigned", scope: !1642, file: !1641, line: 2581, type: !1514, scopeLine: 2581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!52 = distinct !DILexicalBlock(scope: !51, file: !1641, line: 2582, column: 13)
!53 = distinct !DISubprogram(name: "checked_add_unsigned", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl20checked_add_unsigned", scope: !1642, file: !1641, line: 613, type: !1514, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!54 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsC_NtNtCscgRAwXFJnXP_4core4iter5rangelNtB5_4Step17forward_unchecked", scope: !1646, file: !1643, line: 196, type: !1514, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!55 = distinct !DISubprogram(name: "spec_next<i32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCslpwjCj2YNBy_9polars_io", scope: !1647, file: !1643, line: 780, type: !1514, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!56 = distinct !DILexicalBlock(scope: !55, file: !1643, line: 782, column: 13)
!57 = distinct !DISubprogram(name: "next<i32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io", scope: !1648, file: !1643, line: 865, type: !1514, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!58 = distinct !DILexicalBlock(scope: !49, file: !1637, line: 208, column: 13)
!59 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !1653, file: !1650, line: 22, type: !1514, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!60 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !1655, file: !1654, line: 270, type: !1514, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!61 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs1c_NtNtCscgRAwXFJnXP_4core3cmp5implslNtB8_10PartialOrd2lt", scope: !1659, file: !1656, line: 1917, type: !1514, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!62 = distinct !DISubprogram(name: "min<u32>", linkageName: "_RNvYmNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCslpwjCj2YNBy_9polars_io", scope: !1662, file: !1656, line: 1073, type: !1514, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!63 = distinct !DISubprogram(name: "spin", linkageName: "_RNvMNtCsi07hmUMJW4u_15crossbeam_utils7backoffNtB2_7Backoff4spin", scope: !1640, file: !1637, line: 146, type: !1514, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!64 = distinct !DISubprogram(name: "spec_next<i32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCslpwjCj2YNBy_9polars_io", scope: !1647, file: !1643, line: 780, type: !1514, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!65 = distinct !DISubprogram(name: "next<i32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io", scope: !1648, file: !1643, line: 865, type: !1514, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!66 = distinct !DILexicalBlock(scope: !63, file: !1637, line: 147, column: 9)
!67 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl15overflowing_add", scope: !1642, file: !1641, line: 2498, type: !1514, scopeLine: 2498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!68 = distinct !DISubprogram(name: "overflowing_add_unsigned", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl24overflowing_add_unsigned", scope: !1642, file: !1641, line: 2581, type: !1514, scopeLine: 2581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!69 = distinct !DILexicalBlock(scope: !68, file: !1641, line: 2582, column: 13)
!70 = distinct !DISubprogram(name: "checked_add_unsigned", linkageName: "_RNvMs0_NtCscgRAwXFJnXP_4core3numl20checked_add_unsigned", scope: !1642, file: !1641, line: 613, type: !1514, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!71 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsC_NtNtCscgRAwXFJnXP_4core4iter5rangelNtB5_4Step17forward_unchecked", scope: !1646, file: !1643, line: 196, type: !1514, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!72 = distinct !DILexicalBlock(scope: !64, file: !1643, line: 782, column: 13)
!73 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !1653, file: !1650, line: 22, type: !1514, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!74 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !1655, file: !1654, line: 270, type: !1514, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!75 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs1c_NtNtCscgRAwXFJnXP_4core3cmp5implslNtB8_10PartialOrd2lt", scope: !1659, file: !1656, line: 1917, type: !1514, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!76 = distinct !DISubprogram(name: "atomic_store<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storejECslpwjCj2YNBy_9polars_io", scope: !1518, file: !1515, line: 3885, type: !1514, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!77 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<(core::result::Result<(), polars_error::PolarsError>, &mut polars_io::file_cache::eviction::EvictionManager)>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleTINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEQNtNtNtCslpwjCj2YNBy_9polars_io10file_cache8eviction15EvictionManagerEEEB2Q_", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!78 = distinct !DISubprogram(name: "reserve_rehash_inner<allocator_api2::stable::alloc::global::Global>", linkageName: "_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io", scope: !1668, file: !1664, line: 2739, type: !1514, scopeLine: 2739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!79 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_add", scope: !1636, file: !1634, line: 815, type: !1514, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!80 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCscgRAwXFJnXP_4core10intrinsics8unlikely", scope: !1670, file: !1669, line: 456, type: !1514, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!81 = distinct !DILexicalBlock(scope: !78, file: !1664, line: 2752, column: 9)
!82 = distinct !DISubprogram(name: "bucket_mask_to_capacity", linkageName: "_RNvNtCs7tGzs63DEEy_9hashbrown3raw23bucket_mask_to_capacity", scope: !1666, file: !1664, line: 182, type: !1514, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!83 = distinct !DILexicalBlock(scope: !81, file: !1664, line: 2755, column: 9)
!84 = distinct !DISubprogram(name: "capacity_overflow", linkageName: "_RNvMNtCs7tGzs63DEEy_9hashbrown3rawNtB2_11Fallibility17capacity_overflow", scope: !1671, file: !1664, line: 33, type: !1514, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!85 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3maxCslpwjCj2YNBy_9polars_io", scope: !1662, file: !1656, line: 1034, type: !1514, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!86 = distinct !DISubprogram(name: "resize_inner<allocator_api2::stable::alloc::global::Global>", linkageName: "_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io", scope: !1668, file: !1664, line: 2885, type: !1514, scopeLine: 2885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!87 = distinct !DISubprogram(name: "prepare_resize<allocator_api2::stable::alloc::global::Global>", linkageName: "_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io", scope: !1668, file: !1664, line: 2682, type: !1514, scopeLine: 2682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!88 = distinct !DISubprogram(name: "branch<hashbrown::raw::RawTableInner, hashbrown::TryReserveError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerNtBO_15TryReserveErrorENtNtNtB7_3ops9try_trait3Try6branchCslpwjCj2YNBy_9polars_io", scope: !1660, file: !1601, line: 2172, type: !1514, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!89 = distinct !DILexicalBlock(scope: !86, file: !1664, line: 2898, column: 86)
!90 = distinct !DILexicalBlock(scope: !89, file: !1664, line: 2898, column: 29)
!91 = distinct !DISubprogram(name: "full_buckets_indices", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner20full_buckets_indices", scope: !1668, file: !1664, line: 2808, type: !1514, scopeLine: 2808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!92 = distinct !DILexicalBlock(scope: !91, file: !1664, line: 2829, column: 13)
!93 = distinct !DILexicalBlock(scope: !86, file: !1664, line: 2898, column: 9)
!94 = distinct !DISubprogram(name: "next", linkageName: "_RNvXsv_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_18FullBucketsIndicesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next", scope: !1672, file: !1664, line: 3990, type: !1514, scopeLine: 3990, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!95 = distinct !DILexicalBlock(scope: !93, file: !1664, line: 2904, column: 13)
!96 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !1668, file: !1664, line: 2621, type: !1514, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!97 = distinct !DISubprogram(name: "load_aligned", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group12load_aligned", scope: !1678, file: !1674, line: 55, type: !1514, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!98 = distinct !DISubprogram(name: "_mm_movemask_epi8", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse217__mm_movemask_epi8", scope: !1653, file: !1650, line: 1611, type: !1532, scopeLine: 1611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!99 = distinct !DILexicalBlock(scope: !98, file: !1650, line: 1613, column: 9)
!100 = distinct !DILexicalBlock(scope: !99, file: !1650, line: 1614, column: 9)
!101 = distinct !DISubprogram(name: "match_empty_or_deleted", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group22match_empty_or_deleted", scope: !1678, file: !1674, line: 98, type: !1514, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!102 = distinct !DILexicalBlock(scope: !101, file: !1674, line: 106, column: 9)
!103 = distinct !DISubprogram(name: "match_full", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group10match_full", scope: !1678, file: !1674, line: 114, type: !1514, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!104 = distinct !DISubprogram(name: "lowest_set_bit", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask14lowest_set_bit", scope: !1681, file: !1679, line: 39, type: !1514, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!105 = distinct !DILexicalBlock(scope: !104, file: !1679, line: 40, column: 64)
!106 = distinct !DISubprogram(name: "next", linkageName: "_RNvXs0_NtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB5_11BitMaskIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next", scope: !1682, file: !1679, line: 102, type: !1514, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!107 = distinct !DISubprogram(name: "next_impl", linkageName: "_RNvMsu_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl", scope: !1683, file: !1664, line: 3939, type: !1514, scopeLine: 3939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!108 = distinct !DILexicalBlock(scope: !107, file: !1664, line: 3941, column: 60)
!109 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCslpwjCj2YNBy_9polars_io", scope: !1582, file: !1580, line: 927, type: !1514, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!110 = distinct !DISubprogram(name: "load_aligned", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group12load_aligned", scope: !1678, file: !1674, line: 55, type: !1514, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!111 = distinct !DISubprogram(name: "match_empty_or_deleted", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group22match_empty_or_deleted", scope: !1678, file: !1674, line: 98, type: !1514, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!112 = distinct !DILexicalBlock(scope: !111, file: !1674, line: 106, column: 9)
!113 = distinct !DISubprogram(name: "match_full", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group10match_full", scope: !1678, file: !1674, line: 114, type: !1514, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!114 = distinct !DISubprogram(name: "swap_nonoverlapping_bytes", linkageName: "_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes", scope: !1541, file: !1540, line: 1445, type: !1514, scopeLine: 1445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!115 = distinct !DILexicalBlock(scope: !114, file: !1540, line: 1486, column: 5)
!116 = distinct !DILexicalBlock(scope: !115, file: !1540, line: 1488, column: 5)
!117 = distinct !DILexicalBlock(scope: !116, file: !1540, line: 1489, column: 5)
!118 = distinct !DILexicalBlock(scope: !117, file: !1540, line: 1490, column: 48)
!119 = distinct !DISubprogram(name: "runtime<hashbrown::raw::RawTableInner>", linkageName: "_RINvNvNtCscgRAwXFJnXP_4core3ptr19swap_nonoverlapping7runtimeNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io", scope: !1684, file: !1669, line: 2435, type: !1514, scopeLine: 2435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!120 = distinct !DILexicalBlock(scope: !119, file: !1540, line: 1395, column: 13)
!121 = distinct !DILexicalBlock(scope: !120, file: !1540, line: 1398, column: 13)
!122 = distinct !DILexicalBlock(scope: !121, file: !1540, line: 1399, column: 54)
!123 = distinct !DISubprogram(name: "swap_nonoverlapping<hashbrown::raw::RawTableInner>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 1368, type: !1532, scopeLine: 1368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!124 = distinct !DISubprogram(name: "typed_swap_nonoverlapping<hashbrown::raw::RawTableInner>", linkageName: "_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io", scope: !1670, file: !1669, line: 2567, type: !1514, scopeLine: 2567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!125 = distinct !DISubprogram(name: "swap<hashbrown::raw::RawTableInner>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4swapNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io", scope: !1575, file: !1574, line: 784, type: !1514, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!126 = distinct !DISubprogram(name: "drop_in_place<hashbrown::scopeguard::ScopeGuard<hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::prepare_resize::{closure_env#0}<allocator_api2::stable::alloc::global::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!127 = distinct !DISubprogram(name: "drop<hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::prepare_resize::{closure_env#0}<allocator_api2::stable::alloc::global::Global>>", linkageName: "_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io", scope: !1688, file: !1686, line: 69, type: !1514, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!128 = distinct !DISubprogram(name: "{closure#0}<allocator_api2::stable::alloc::global::Global>", linkageName: "_RNCINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0CslpwjCj2YNBy_9polars_io", scope: !1690, file: !1664, line: 2704, type: !1532, scopeLine: 2704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!129 = distinct !DISubprogram(name: "num_buckets", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner11num_buckets", scope: !1668, file: !1664, line: 2634, type: !1514, scopeLine: 2634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!130 = distinct !DISubprogram(name: "allocation_info", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15allocation_info", scope: !1668, file: !1664, line: 3138, type: !1514, scopeLine: 3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!131 = distinct !DISubprogram(name: "free_buckets<allocator_api2::stable::alloc::global::Global>", linkageName: "_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io", scope: !1668, file: !1664, line: 3106, type: !1514, scopeLine: 3106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!132 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj15overflowing_mul", scope: !1636, file: !1634, line: 3104, type: !1514, scopeLine: 3104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!133 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_mul", scope: !1636, file: !1634, line: 1214, type: !1514, scopeLine: 1214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!134 = distinct !DISubprogram(name: "calculate_layout_for", linkageName: "_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for", scope: !1691, file: !1664, line: 216, type: !1514, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!135 = distinct !DILexicalBlock(scope: !134, file: !1664, line: 219, column: 9)
!136 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_add", scope: !1636, file: !1634, line: 815, type: !1514, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!137 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCscgRAwXFJnXP_4core10intrinsics8unlikely", scope: !1670, file: !1669, line: 456, type: !1514, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!138 = distinct !DILexicalBlock(scope: !135, file: !1664, line: 221, column: 9)
!139 = distinct !DISubprogram(name: "unwrap_unchecked<(core::alloc::layout::Layout, usize)>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionTNtNtNtB4_5alloc6layout6LayoutjEE16unwrap_uncheckedCslpwjCj2YNBy_9polars_io", scope: !1573, file: !1549, line: 1128, type: !1514, scopeLine: 1128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!140 = distinct !DILexicalBlock(scope: !130, file: !1664, line: 3145, column: 13)
!141 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate", scope: !1698, file: !1693, line: 109, type: !1514, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!142 = distinct !DILexicalBlock(scope: !131, file: !1664, line: 3113, column: 13)
!143 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3subCslpwjCj2YNBy_9polars_io", scope: !1582, file: !1580, line: 1033, type: !1514, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!144 = distinct !DILexicalBlock(scope: !130, file: !1664, line: 3144, column: 9)
!145 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !1700, file: !1699, line: 127, type: !1514, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!146 = distinct !DISubprogram(name: "dealloc", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc7dealloc", scope: !1700, file: !1699, line: 120, type: !1514, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!147 = distinct !DISubprogram(name: "get<u16>", linkageName: "_RNvMse_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZerotE3getCslpwjCj2YNBy_9polars_io", scope: !1703, file: !1701, line: 481, type: !1514, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!148 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMs10_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB6_7NonZerotE14trailing_zeros", scope: !1703, file: !1701, line: 639, type: !1514, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!149 = distinct !DISubprogram(name: "nonzero_trailing_zeros", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask22nonzero_trailing_zeros", scope: !1681, file: !1679, line: 64, type: !1514, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!150 = distinct !DISubprogram(name: "remove_lowest_bit", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask17remove_lowest_bit", scope: !1681, file: !1679, line: 27, type: !1514, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!151 = distinct !DILexicalBlock(scope: !106, file: !1679, line: 103, column: 9)
end_hunk_1
begin_hunk_2_@llvm.umin.i8
!33444 = distinct !DILexicalBlock(scope: !33368, file: !1628, line: 99, column: 5)
!33445 = distinct !DILexicalBlock(scope: !33443, file: !33567, line: 92, column: 17)
!33446 = distinct !DISubprogram(name: "get_unchecked_mut<([polars_io::csv::read::parser::LineStats; 2], usize), core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE17get_unchecked_mutINtNtNtB5_3ops5range5RangejEEBF_", scope: !1633, file: !1632, line: 684, type: !1514, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33447 = distinct !DISubprogram(name: "get_unchecked_mut<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE17get_unchecked_mutB1z_", scope: !33596, file: !1628, line: 417, type: !1514, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33448 = distinct !DILexicalBlock(scope: !33447, file: !1628, line: 429, column: 13)
!33449 = distinct !DISubprogram(name: "logical_merge<([polars_io::csv::read::parser::LineStats; 2], usize), alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<([polars_io::csv::read::parser::LineStats; 2], usize), usize, polars_io::csv::read::parser::count_rows_from_reader_par::{closure#0}::{closure_env#2}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keyjNCNCNvB1a_26count_rows_from_reader_par0s0_0E0EB1g_", scope: !33568, file: !33567, line: 191, type: !1514, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33450 = distinct !DILexicalBlock(scope: !33449, file: !33567, line: 202, column: 5)
!33451 = distinct !DILexicalBlock(scope: !33445, file: !33567, line: 93, column: 17)
!33452 = distinct !DILocation(line: 94, column: 28, scope: !33451)
!33453 = distinct !DILexicalBlock(scope: !33450, file: !33567, line: 203, column: 5)
!33454 = distinct !DISubprogram(name: "new_unsorted", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5driftNtB2_12DriftsortRun12new_unsorted", scope: !33580, file: !33567, line: 285, type: !1514, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33455 = distinct !DILocation(line: 215, column: 9, scope: !33453, inlinedAt: !33452)
!33456 = distinct !DISubprogram(name: "stable_quicksort<([polars_io::csv::read::parser::LineStats; 2], usize), alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<([polars_io::csv::read::parser::LineStats; 2], usize), usize, polars_io::csv::read::parser::count_rows_from_reader_par::{closure#0}::{closure_env#2}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift16stable_quicksortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_11sort_by_keyjNCNCNvB1d_26count_rows_from_reader_par0s0_0E0EB1j_", scope: !33568, file: !33567, line: 262, type: !1514, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33457 = distinct !DILocation(line: 206, column: 13, scope: !33453, inlinedAt: !33452)
!33458 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs1s_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB6_7NonZerojE13leading_zeros", scope: !1703, file: !1701, line: 609, type: !1514, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33459 = distinct !DISubprogram(name: "ilog2", linkageName: "_RNvMs1s_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB6_7NonZerojE5ilog2", scope: !1703, file: !1701, line: 1791, type: !1514, scopeLine: 1791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33460 = distinct !DISubprogram(name: "checked_ilog2", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13checked_ilog2", scope: !1636, file: !1634, line: 1805, type: !1514, scopeLine: 1805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33461 = distinct !DILexicalBlock(scope: !33460, file: !1634, line: 1807, column: 17)
!33462 = distinct !DISubprogram(name: "ilog2", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj5ilog2", scope: !1636, file: !1634, line: 1693, type: !1514, scopeLine: 1693, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33463 = distinct !DILexicalBlock(scope: !33462, file: !1634, line: 1694, column: 53)
!33464 = distinct !DILocation(line: 269, column: 35, scope: !33456, inlinedAt: !33457)
!33465 = distinct !DILocation(line: 1694, column: 37, scope: !33463, inlinedAt: !33464)
!33466 = distinct !DILocation(line: 1807, column: 35, scope: !33461, inlinedAt: !33465)
!33467 = distinct !DILocation(line: 1792, column: 35, scope: !33459, inlinedAt: !33466)
!33468 = distinct !{null}
!33469 = distinct !DILexicalBlock(scope: !33456, file: !33567, line: 269, column: 5)
!33470 = distinct !{!33470, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keyjNCNCNvB11_26count_rows_from_reader_par0s0_0E0EB17_"}
!33471 = distinct !{!33471, !33470, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keyjNCNCNvB11_26count_rows_from_reader_par0s0_0E0EB17_: argument 0"}
!33472 = distinct !{!33472, !33470, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keyjNCNCNvB11_26count_rows_from_reader_par0s0_0E0EB17_: argument 1"}
!33473 = distinct !DISubprogram(name: "merge<([polars_io::csv::read::parser::LineStats; 2], usize), alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<([polars_io::csv::read::parser::LineStats; 2], usize), usize, polars_io::csv::read::parser::count_rows_from_reader_par::{closure#0}::{closure_env#2}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keyjNCNCNvB11_26count_rows_from_reader_par0s0_0E0EB17_", scope: !33600, file: !33599, line: 8, type: !1532, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33474 = distinct !DILexicalBlock(scope: !33473, file: !33599, line: 14, column: 5)
!33475 = distinct !DILocation(line: 211, column: 9, scope: !33453, inlinedAt: !33452)
!33476 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECslpwjCj2YNBy_9polars_io", scope: !1657, file: !1656, line: 1575, type: !1514, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33477 = distinct !DILocation(line: 16, column: 50, scope: !33474, inlinedAt: !33475)
!33478 = distinct !DILocation(line: 1576, column: 8, scope: !33476, inlinedAt: !33477)
!33479 = distinct !DISubprogram(name: "add<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3addBM_", scope: !1582, file: !1580, line: 927, type: !1514, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33480 = distinct !DILexicalBlock(scope: !33474, file: !33599, line: 38, column: 9)
!33481 = distinct !DILexicalBlock(scope: !33480, file: !33599, line: 40, column: 9)
!33482 = distinct !DILocation(line: 41, column: 28, scope: !33481, inlinedAt: !33475)
!33483 = distinct !DILexicalBlock(scope: !33481, file: !33599, line: 41, column: 9)
!33484 = distinct !DILexicalBlock(scope: !33483, file: !33599, line: 42, column: 9)
!33485 = distinct !DILexicalBlock(scope: !33484, file: !33599, line: 44, column: 9)
!33486 = distinct !DILexicalBlock(scope: !33485, file: !33599, line: 45, column: 9)
!33487 = distinct !DILexicalBlock(scope: !33486, file: !33599, line: 47, column: 9)
!33488 = distinct !DISubprogram(name: "copy_nonoverlapping<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEBW_", scope: !1541, file: !1540, line: 531, type: !1514, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33489 = distinct !DILexicalBlock(scope: !33487, file: !33599, line: 48, column: 9)
!33490 = distinct !DILexicalBlock(scope: !33489, file: !33599, line: 49, column: 9)
!33491 = distinct !DILocation(line: 51, column: 9, scope: !33490, inlinedAt: !33475)
!33492 = distinct !DILocation(line: 53, column: 65, scope: !33490, inlinedAt: !33475)
!33493 = distinct !DILexicalBlock(scope: !33490, file: !33599, line: 53, column: 9)
!33494 = distinct !DISubprogram(name: "sub<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3subBM_", scope: !1582, file: !1580, line: 1033, type: !1514, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33495 = distinct !DISubprogram(name: "merge_down<([polars_io::csv::read::parser::LineStats; 2], usize), alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<([polars_io::csv::read::parser::LineStats; 2], usize), usize, polars_io::csv::read::parser::count_rows_from_reader_par::{closure#0}::{closure_env#2}>>", linkageName: "_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_", scope: !33602, file: !33599, line: 108, type: !1532, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33496 = distinct !DILocation(line: 58, column: 25, scope: !33493, inlinedAt: !33475)
!33497 = distinct !DILocation(line: 118, column: 37, scope: !33495, inlinedAt: !33496)
!33498 = distinct !DILexicalBlock(scope: !33495, file: !33599, line: 118, column: 17)
!33499 = distinct !DILocation(line: 119, column: 38, scope: !33498, inlinedAt: !33496)
!33500 = distinct !DILexicalBlock(scope: !33498, file: !33599, line: 119, column: 17)
!33501 = distinct !DILocation(line: 120, column: 27, scope: !33500, inlinedAt: !33496)
!33502 = distinct !{!33502, !"_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_"}
!33503 = distinct !{!33503, !33502, !"_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_: argument 0"}
!33504 = distinct !DILocation(line: 122, column: 36, scope: !33500, inlinedAt: !33496)
!33505 = distinct !DILocation(line: 252, column: 39, scope: !922, inlinedAt: !33504)
!33506 = distinct !DILexicalBlock(scope: !33500, file: !33599, line: 122, column: 17)
!33507 = distinct !DISubprogram(name: "copy_nonoverlapping<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEBW_", scope: !1541, file: !1540, line: 531, type: !1514, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33508 = distinct !DILexicalBlock(scope: !33506, file: !33599, line: 124, column: 17)
!33509 = distinct !DILocation(line: 125, column: 17, scope: !33508, inlinedAt: !33496)
!33510 = distinct !DISubprogram(name: "add<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3addBM_", scope: !1582, file: !1580, line: 927, type: !1514, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33511 = distinct !DILocation(line: 127, column: 33, scope: !33508, inlinedAt: !33496)
!33512 = distinct !DILocation(line: 128, column: 34, scope: !33508, inlinedAt: !33496)
!33513 = distinct !DISubprogram(name: "merge_up<([polars_io::csv::read::parser::LineStats; 2], usize), alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<([polars_io::csv::read::parser::LineStats; 2], usize), usize, polars_io::csv::read::parser::count_rows_from_reader_par::{closure#0}::{closure_env#2}>>", linkageName: "_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE8merge_upNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_", scope: !33602, file: !33599, line: 78, type: !1532, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33514 = distinct !DILexicalBlock(scope: !33513, file: !33599, line: 86, column: 13)
!33515 = distinct !DILexicalBlock(scope: !33514, file: !33599, line: 87, column: 13)
!33516 = distinct !DILocation(line: 56, column: 25, scope: !33493, inlinedAt: !33475)
!33517 = distinct !{!33517, !"_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE8merge_upNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_"}
!33518 = distinct !{!33518, !33517, !"_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE8merge_upNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_: argument 0"}
!33519 = distinct !DILocation(line: 90, column: 37, scope: !33515, inlinedAt: !33516)
!33520 = distinct !DILocation(line: 252, column: 39, scope: !922, inlinedAt: !33519)
!33521 = distinct !DILexicalBlock(scope: !33515, file: !33599, line: 90, column: 17)
!33522 = distinct !DISubprogram(name: "copy_nonoverlapping<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEBW_", scope: !1541, file: !1540, line: 531, type: !1514, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33523 = distinct !DILexicalBlock(scope: !33521, file: !33599, line: 92, column: 17)
!33524 = distinct !DILocation(line: 93, column: 17, scope: !33523, inlinedAt: !33516)
!33525 = distinct !DISubprogram(name: "add<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3addBM_", scope: !1582, file: !1580, line: 927, type: !1514, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33526 = distinct !DILocation(line: 95, column: 30, scope: !33523, inlinedAt: !33516)
!33527 = distinct !DISubprogram(name: "add<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3addBO_", scope: !1769, file: !1767, line: 829, type: !1514, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33528 = distinct !DILocation(line: 96, column: 31, scope: !33523, inlinedAt: !33516)
!33529 = distinct !DILocation(line: 98, column: 28, scope: !33523, inlinedAt: !33516)
!33530 = distinct !DISubprogram(name: "offset_from_unsigned<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE20offset_from_unsignedBO_", scope: !1769, file: !1767, line: 701, type: !1514, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33531 = distinct !DILexicalBlock(scope: !33530, file: !1767, line: 726, column: 9)
!33532 = distinct !DISubprogram(name: "offset_from_unsigned<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE20offset_from_unsignedBM_", scope: !1582, file: !1580, line: 882, type: !1514, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33533 = distinct !DISubprogram(name: "drop<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvXs_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB4_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEENtNtNtBc_3ops4drop4Drop4dropB1l_", scope: !33609, file: !33599, line: 139, type: !1514, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33534 = distinct !DISubprogram(name: "drop_in_place<core::slice::sort::stable::merge::MergeState<([polars_io::csv::read::parser::LineStats; 2], usize)>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEEB1E_", scope: !1541, file: !1540, line: 810, type: !1514, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33535 = distinct !DILocation(line: 62, column: 5, scope: !33490, inlinedAt: !33475)
!33536 = distinct !DILocation(line: 810, column: 1, scope: !33534, inlinedAt: !33535)
!33537 = distinct !DILocation(line: 146, column: 32, scope: !33533, inlinedAt: !33536)
!33538 = distinct !DILocation(line: 887, column: 37, scope: !33532, inlinedAt: !33537)
!33539 = distinct !{!33539, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEEB1E_"}
!33540 = distinct !{!33540, !33539, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEEB1E_: argument 0"}
!33541 = distinct !{!33541, !"_RNvXs_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB4_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEENtNtNtBc_3ops4drop4Drop4dropB1l_"}
!33542 = distinct !{!33542, !33541, !"_RNvXs_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB4_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEENtNtNtBc_3ops4drop4Drop4dropB1l_: argument 0"}
!33543 = distinct !DISubprogram(name: "copy_nonoverlapping<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEBW_", scope: !1541, file: !1540, line: 531, type: !1514, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33544 = distinct !DILexicalBlock(scope: !33533, file: !33599, line: 146, column: 13)
!33545 = distinct !DILocation(line: 147, column: 13, scope: !33544, inlinedAt: !33536)
!33546 = distinct !DISubprogram(name: "new_sorted", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5driftNtB2_12DriftsortRun10new_sorted", scope: !33580, file: !33567, line: 280, type: !1514, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33547 = distinct !DILocation(line: 213, column: 9, scope: !33453, inlinedAt: !33452)
!33548 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEB1f_", scope: !1630, file: !1628, line: 94, type: !1514, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33549 = distinct !DILexicalBlock(scope: !33548, file: !1628, line: 99, column: 5)
!33550 = distinct !DISubprogram(name: "index_mut<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE9index_mutB1D_", scope: !1930, file: !1628, line: 579, type: !1514, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33551 = distinct !DILexicalBlock(scope: !33550, file: !1628, line: 585, column: 13)
!33552 = distinct !DISubprogram(name: "index_mut<([polars_io::csv::read::parser::LineStats; 2], usize), core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEINtNtNtB8_3ops5index8IndexMutINtNtB1M_5range9RangeFromjEE9index_mutBO_", scope: !1931, file: !1628, line: 30, type: !1514, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33553 = distinct !DILocation(line: 209, column: 36, scope: !33453, inlinedAt: !33452)
!33554 = distinct !DILocation(line: 31, column: 15, scope: !33611, inlinedAt: !33553)
!33555 = distinct !DILocation(line: 586, column: 19, scope: !33551, inlinedAt: !33554)
!33556 = distinct !DILocation(line: 209, column: 13, scope: !33453, inlinedAt: !33452)
!33557 = distinct !DILocation(line: 269, column: 35, scope: !33456, inlinedAt: !33556)
!33558 = distinct !DILocation(line: 1694, column: 37, scope: !33463, inlinedAt: !33557)
!33559 = distinct !DILocation(line: 1807, column: 35, scope: !33461, inlinedAt: !33558)
!33560 = distinct !DILocation(line: 1792, column: 35, scope: !33459, inlinedAt: !33559)
!33561 = distinct !DISubprogram(name: "sorted", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5driftNtB2_12DriftsortRun6sorted", scope: !33580, file: !33567, line: 290, type: !1514, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33562 = distinct !DILocation(line: 118, column: 9, scope: !33364)
!33563 = distinct !DILocation(line: 269, column: 35, scope: !33456, inlinedAt: !33562)
!33564 = distinct !DILocation(line: 1694, column: 37, scope: !33463, inlinedAt: !33563)
!33565 = distinct !DILocation(line: 1807, column: 35, scope: !33461, inlinedAt: !33564)
!33566 = distinct !DILocation(line: 1792, column: 35, scope: !33459, inlinedAt: !33565)
!33567 = !DIFile(filename: "library/core/src/slice/sort/stable/drift.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "45ada0f6d66a135183fb6260ca4f4329")
!33568 = !DINamespace(name: "drift", scope: !1928)
!33569 = !DILocation(line: 30, column: 24, scope: !33349)
!33570 = !DILocation(line: 161, column: 18, scope: !33351, inlinedAt: !33569)
!33571 = !DILocation(line: 40, column: 9, scope: !33354)
!33572 = !DILocation(line: 64, column: 34, scope: !33365)
!33573 = !DILocation(line: 31, column: 15, scope: !33367, inlinedAt: !33572)
!33574 = !DILocation(line: 586, column: 19, scope: !33370, inlinedAt: !33573)
!33575 = !DIFile(filename: "library/core/src/slice/sort/shared/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "694d50307d8b09e28f18230edf6cbedb")
!33576 = !{!33379}
!33577 = !{!33381, !33380}
!33578 = !DILexicalBlockFile(scope: !33386, file: !1632, discriminator: 8)
!33579 = !DILexicalBlockFile(scope: !33386, file: !1632, discriminator: 4)
!33580 = !DINamespace(name: "DriftsortRun", scope: !33568)
!33581 = !DILexicalBlockFile(scope: !33420, file: !1669, discriminator: 0)
!33582 = !DINamespace(name: "reverse", scope: !1633)
!33583 = !DILocation(line: 66, column: 37, scope: !33365)
!33584 = !DILocation(line: 68, column: 37, scope: !33365)
!33585 = !DILocation(line: 65, column: 29, scope: !33365)
!33586 = !DILocation(line: 170, column: 47, scope: !33438, inlinedAt: !33585)
!33587 = !DILocation(line: 87, column: 52, scope: !33365)
!33588 = !DILocation(line: 103, column: 19, scope: !33365)
!33589 = !DILocation(line: 104, column: 29, scope: !33365)
!33590 = !DILocation(line: 90, column: 34, scope: !33365)
!33591 = !DILocation(line: 91, column: 39, scope: !33442)
!33592 = !DILocation(line: 91, column: 56, scope: !33442)
!33593 = !DILocation(line: 93, column: 37, scope: !33445)
!33594 = !DILocation(line: 691, column: 30, scope: !33446, inlinedAt: !33593)
!33595 = !DILocation(line: 430, column: 13, scope: !33448, inlinedAt: !33594)
!33596 = !DINamespace(name: "{impl#4}", scope: !1630)
!33597 = !{!33471}
!33598 = !{!33472}
!33599 = !DIFile(filename: "library/core/src/slice/sort/stable/merge.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "90afbaa2075bc1e9689ef92c7df39f20")
!33600 = !DINamespace(name: "merge", scope: !1928)
!33601 = !{!33471, !33472}
!33602 = !DINamespace(name: "MergeState", scope: !33600)
!33603 = !{!33503, !33471}
!33604 = !{!33503, !33472}
!33605 = !{!33503}
!33606 = !{!33518, !33472}
!33607 = !{!33518, !33471}
!33608 = !{!33518}
!33609 = !DINamespace(name: "{impl#1}", scope: !33600)
!33610 = !{!33542, !33540}
!33611 = !DILexicalBlockFile(scope: !33552, file: !1628, discriminator: 2)
!33612 = !DILocation(line: 113, column: 30, scope: !33365)
!33613 = !DILocation(line: 117, column: 18, scope: !33364)
!33614 = !DILocation(line: 27, column: 8, scope: !33349)
!33615 = !DILocation(line: 3712, column: 21, scope: !33350, inlinedAt: !33570)
!33616 = !DILocation(line: 3713, column: 21, scope: !33352, inlinedAt: !33570)
!33617 = !DILocation(line: 3714, column: 16, scope: !33353, inlinedAt: !33570)
!33618 = !DILocation(line: 37, column: 31, scope: !33354)
!33619 = !DILocation(line: 42, column: 9, scope: !33354)
!33620 = !DILocation(line: 40, column: 24, scope: !33354)
!33621 = !DILocation(line: 40, column: 18, scope: !33354)
!33622 = !DILocation(line: 1077, column: 12, scope: !925, inlinedAt: !33356)
!33623 = !DILocation(line: 37, column: 28, scope: !33354)
!33624 = !DILocation(line: 0, scope: !33354)
!33625 = !DILocation(line: 50, column: 9, scope: !33358)
!33626 = !DILocation(line: 52, column: 9, scope: !33360)
!33627 = !DILocation(line: 57, column: 5, scope: !33364)
!33628 = !DILocation(line: 0, scope: !33363)
!33629 = !DILocation(line: 0, scope: !33362)
!33630 = !DILocation(line: 0, scope: !33357)
!33631 = !DILocation(line: 62, column: 12, scope: !33365)
!33632 = !DILocation(line: 0, scope: !33365)
!33633 = !DILocation(line: 87, column: 19, scope: !33365)
!33634 = !DILocation(line: 585, column: 27, scope: !33366, inlinedAt: !33573)
!33635 = !DILocation(line: 101, column: 24, scope: !33369, inlinedAt: !33574)
!33636 = !DILocation(line: 234, column: 8, scope: !33372, inlinedAt: !33373)
!33637 = !DILocation(line: 249, column: 8, scope: !33372, inlinedAt: !33373)
!33638 = !DILocation(line: 25, column: 8, scope: !33375, inlinedAt: !33376)
!33639 = !DILocation(line: 34, column: 35, scope: !33377, inlinedAt: !33376)
!33640 = !DILocation(line: 1917, column: 50, scope: !921, inlinedAt: !33383)
!33641 = !DILocation(line: 0, scope: !33384, inlinedAt: !33376)
!33642 = !DILocation(line: 35, column: 12, scope: !33384, inlinedAt: !33376)
!33643 = !DILocation(line: 40, column: 19, scope: !33384, inlinedAt: !33376)
!33644 = !DILocation(line: 36, column: 19, scope: !33384, inlinedAt: !33376)
!33645 = !DILocation(line: 40, column: 37, scope: !33384, inlinedAt: !33376)
!33646 = !DILocation(line: 253, column: 13, scope: !33385, inlinedAt: !33388)
!33647 = !DILocation(line: 1917, column: 50, scope: !921, inlinedAt: !33390)
!33648 = !DILocation(line: 42, column: 17, scope: !33384, inlinedAt: !33376)
!33649 = !DILocation(line: 36, column: 36, scope: !33384, inlinedAt: !33376)
!33650 = !DILocation(line: 253, column: 13, scope: !33385, inlinedAt: !33392)
!33651 = !DILocation(line: 1917, column: 50, scope: !921, inlinedAt: !33394)
!33652 = !DILocation(line: 37, column: 17, scope: !33384, inlinedAt: !33376)
!33653 = !DILocation(line: 0, scope: !33375, inlinedAt: !33376)
!33654 = !DILocation(line: 238, column: 37, scope: !33395, inlinedAt: !33373)
!33655 = !DILocation(line: 238, column: 18, scope: !33395, inlinedAt: !33373)
!33656 = !DILocation(line: 240, column: 12, scope: !33395, inlinedAt: !33373)
!33657 = !DILocation(line: 241, column: 16, scope: !33395, inlinedAt: !33373)
!33658 = !DILocation(line: 1077, column: 12, scope: !925, inlinedAt: !33398)
!33659 = !DILocation(line: 286, column: 14, scope: !33399, inlinedAt: !33400)
!33660 = !DILocation(line: 249, column: 5, scope: !33372, inlinedAt: !33373)
!33661 = !DILocation(line: 1077, column: 12, scope: !925, inlinedAt: !33402)
!33662 = !DILocation(line: 255, column: 9, scope: !33404, inlinedAt: !33373)
!33663 = !DILocation(line: 281, column: 14, scope: !33405, inlinedAt: !33406)
!33664 = !DILocation(line: 281, column: 14, scope: !33405, inlinedAt: !33407)
!33665 = !DILocation(line: 260, column: 2, scope: !33371, inlinedAt: !33373)
!33666 = !DILocation(line: 961, column: 18, scope: !33408, inlinedAt: !33415)
!33667 = !DILocation(line: 1493, column: 18, scope: !118, inlinedAt: !33434)
!33668 = !DILocation(line: 1015, column: 45, scope: !33426, inlinedAt: !33429)
!33669 = !DILocation(line: 1015, column: 27, scope: !33426, inlinedAt: !33429)
!33670 = !DILocation(line: 1015, column: 38, scope: !33426, inlinedAt: !33429)
!33671 = !DILocation(line: 2567, column: 1, scope: !33421, inlinedAt: !33431)
!33672 = !DILocation(line: 1016, column: 17, scope: !33426, inlinedAt: !33429)
!33673 = !DILocation(line: 1014, column: 19, scope: !33426, inlinedAt: !33429)
!33674 = !DILocation(line: 0, scope: !33372, inlinedAt: !33373)
!33675 = !DILocation(line: 296, column: 9, scope: !33435, inlinedAt: !33583)
!33676 = !DILocation(line: 296, column: 9, scope: !33435, inlinedAt: !33584)
!33677 = !DILocation(line: 168, column: 13, scope: !33436, inlinedAt: !33585)
!33678 = !DILocation(line: 169, column: 13, scope: !33437, inlinedAt: !33585)
!33679 = !DILocation(line: 170, column: 6, scope: !33438, inlinedAt: !33585)
!33680 = !DILocation(line: 170, column: 27, scope: !33438, inlinedAt: !33585)
!33681 = !DILocation(line: 170, column: 5, scope: !33438, inlinedAt: !33585)
!33682 = !DILocation(line: 154, column: 20, scope: !33439, inlinedAt: !33586)
!33683 = !DILocation(line: 62, column: 9, scope: !33365)
!33684 = !DILocation(line: 87, column: 56, scope: !33365)
!33685 = !DILocation(line: 961, column: 18, scope: !33440, inlinedAt: !33587)
!33686 = !DILocation(line: 87, column: 36, scope: !33365)
!33687 = !DILocation(line: 961, column: 18, scope: !33441, inlinedAt: !33588)
!33688 = !DILocation(line: 103, column: 13, scope: !33365)
!33689 = !DILocation(line: 961, column: 18, scope: !33440, inlinedAt: !33589)
!33690 = !DILocation(line: 104, column: 13, scope: !33365)
!33691 = !DILocation(line: 109, column: 12, scope: !33365)
!33692 = !DILocation(line: 961, column: 18, scope: !33441, inlinedAt: !33590)
!33693 = !DILocation(line: 90, column: 28, scope: !33365)
!33694 = !DILocation(line: 296, column: 9, scope: !33435, inlinedAt: !33591)
!33695 = !DILocation(line: 296, column: 9, scope: !33435, inlinedAt: !33592)
!33696 = !DILocation(line: 91, column: 34, scope: !33442)
!33697 = !DILocation(line: 92, column: 39, scope: !33443)
!33698 = !DILocation(line: 101, column: 24, scope: !33444, inlinedAt: !33595)
!33699 = !DILocation(line: 203, column: 30, scope: !33450, inlinedAt: !33452)
!33700 = !DILocation(line: 204, column: 9, scope: !33453, inlinedAt: !33452)
!33701 = !DILocation(line: 205, column: 13, scope: !33453, inlinedAt: !33452)
!33702 = !DILocation(line: 286, column: 14, scope: !33454, inlinedAt: !33455)
!33703 = !DILocation(line: 204, column: 5, scope: !33453, inlinedAt: !33452)
!33704 = !DILocation(line: 208, column: 13, scope: !33453, inlinedAt: !33452)
!33705 = !DILocation(line: 269, column: 21, scope: !33456, inlinedAt: !33457)
!33706 = !DILocation(line: 612, column: 21, scope: !33458, inlinedAt: !33467)
!33707 = !DILocation(line: 269, column: 17, scope: !33456, inlinedAt: !33457)
!33708 = !DILocation(line: 270, column: 5, scope: !33469, inlinedAt: !33457)
!33709 = !DILocation(line: 206, column: 13, scope: !33453, inlinedAt: !33452)
!33710 = !DILocation(line: 211, column: 9, scope: !33453, inlinedAt: !33452)
!33711 = !DILocation(line: 16, column: 8, scope: !33474, inlinedAt: !33475)
!33712 = !DILocation(line: 1077, column: 12, scope: !925, inlinedAt: !33478)
!33713 = !DILocation(line: 16, column: 34, scope: !33474, inlinedAt: !33475)
!33714 = !DILocation(line: 961, column: 18, scope: !33479, inlinedAt: !33482)
!33715 = !DILocation(line: 47, column: 31, scope: !33486, inlinedAt: !33475)
!33716 = !DILocation(line: 48, column: 28, scope: !33487, inlinedAt: !33475)
!33717 = !DILocation(line: 552, column: 14, scope: !33488, inlinedAt: !33491)
!33718 = !DILocation(line: 961, column: 18, scope: !33479, inlinedAt: !33492)
!33719 = !DILocation(line: 55, column: 12, scope: !33493, inlinedAt: !33475)
!33720 = !DILocation(line: 1072, column: 22, scope: !33494, inlinedAt: !33497)
!33721 = !DILocation(line: 118, column: 28, scope: !33495, inlinedAt: !33496)
!33722 = !DILocation(line: 1072, column: 22, scope: !33494, inlinedAt: !33499)
!33723 = !DILocation(line: 1072, column: 22, scope: !33494, inlinedAt: !33501)
!33724 = !DILocation(line: 122, column: 36, scope: !33500, inlinedAt: !33496)
!33725 = !DILocation(line: 1917, column: 50, scope: !921, inlinedAt: !33505)
!33726 = !DILocation(line: 124, column: 27, scope: !33506, inlinedAt: !33496)
!33727 = !DILocation(line: 552, column: 14, scope: !33507, inlinedAt: !33509)
!33728 = !DILocation(line: 127, column: 37, scope: !33508, inlinedAt: !33496)
!33729 = !DILocation(line: 961, column: 18, scope: !33510, inlinedAt: !33511)
!33730 = !DILocation(line: 128, column: 38, scope: !33508, inlinedAt: !33496)
!33731 = !DILocation(line: 961, column: 18, scope: !33510, inlinedAt: !33512)
!33732 = !DILocation(line: 130, column: 20, scope: !33508, inlinedAt: !33496)
!33733 = !DILocation(line: 90, column: 37, scope: !33515, inlinedAt: !33516)
!33734 = !DILocation(line: 1917, column: 50, scope: !921, inlinedAt: !33520)
!33735 = !DILocation(line: 90, column: 36, scope: !33515, inlinedAt: !33516)
!33736 = !DILocation(line: 92, column: 30, scope: !33521, inlinedAt: !33516)
!33737 = !DILocation(line: 552, column: 14, scope: !33522, inlinedAt: !33524)
!33738 = !DILocation(line: 95, column: 34, scope: !33523, inlinedAt: !33516)
!33739 = !DILocation(line: 961, column: 18, scope: !33525, inlinedAt: !33526)
!33740 = !DILocation(line: 96, column: 35, scope: !33523, inlinedAt: !33516)
!33741 = !DILocation(line: 863, column: 18, scope: !33527, inlinedAt: !33528)
!33742 = !DILocation(line: 961, column: 18, scope: !33525, inlinedAt: !33529)
!33743 = !DILocation(line: 89, column: 19, scope: !33515, inlinedAt: !33516)
!33744 = !DILocation(line: 0, scope: !33493, inlinedAt: !33475)
!33745 = !DILocation(line: 0, scope: !33490, inlinedAt: !33475)
!33746 = !DILocation(line: 729, column: 18, scope: !33531, inlinedAt: !33538)
!33747 = !DILocation(line: 552, column: 14, scope: !33543, inlinedAt: !33545)
!33748 = !DILocation(line: 63, column: 2, scope: !33473, inlinedAt: !33475)
!33749 = !DILocation(line: 281, column: 14, scope: !33546, inlinedAt: !33547)
!33750 = !DILocation(line: 101, column: 24, scope: !33549, inlinedAt: !33555)
!33751 = !DILocation(line: 269, column: 21, scope: !33456, inlinedAt: !33556)
!33752 = !DILocation(line: 612, column: 21, scope: !33458, inlinedAt: !33560)
!33753 = !DILocation(line: 269, column: 17, scope: !33456, inlinedAt: !33556)
!33754 = !DILocation(line: 270, column: 5, scope: !33469, inlinedAt: !33556)
!33755 = !DILocation(line: 209, column: 13, scope: !33453, inlinedAt: !33452)
!33756 = !DILocation(line: 0, scope: !33453, inlinedAt: !33452)
!33757 = !DILocation(line: 105, column: 13, scope: !33365)
!33758 = !DILocation(line: 296, column: 9, scope: !33435, inlinedAt: !33612)
!33759 = !DILocation(line: 113, column: 9, scope: !33365)
!33760 = !DILocation(line: 291, column: 9, scope: !33561, inlinedAt: !33613)
!33761 = !DILocation(line: 117, column: 9, scope: !33364)
!33762 = !DILocation(line: 269, column: 21, scope: !33456, inlinedAt: !33562)
!33763 = !DILocation(line: 612, column: 21, scope: !33458, inlinedAt: !33566)
!33764 = !DILocation(line: 269, column: 17, scope: !33456, inlinedAt: !33562)
!33765 = !DILocation(line: 270, column: 5, scope: !33469, inlinedAt: !33562)
!33766 = !DILocation(line: 118, column: 9, scope: !33364)
!33767 = !DILocation(line: 120, column: 1, scope: !33360)
!33768 = !DILocation(line: 120, column: 1, scope: !33358)
!33769 = !DILocation(line: 120, column: 2, scope: !33348)
!33770 = distinct !DISubprogram(name: "quicksort<([polars_io::csv::read::parser::LineStats; 2], usize), alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<([polars_io::csv::read::parser::LineStats; 2], usize), usize, polars_io::csv::read::parser::count_rows_from_reader_par::{closure#0}::{closure_env#2}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNCNvB19_26count_rows_from_reader_par0s0_0E0EB1f_", scope: !33944, file: !33943, line: 16, type: !1514, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33771 = distinct !DILexicalBlock(scope: !33770, file: !33943, line: 24, column: 9)
!33772 = distinct !DISubprogram(name: "small_sort<([polars_io::csv::read::parser::LineStats; 2], usize), alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<([polars_io::csv::read::parser::LineStats; 2], usize), usize, polars_io::csv::read::parser::count_rows_from_reader_par::{closure#0}::{closure_env#2}>>", linkageName: "_RINvXs_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENtB5_23StableSmallSortTypeImpl10small_sortNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBY_11sort_by_keyjNCNCNvB12_26count_rows_from_reader_par0s0_0E0EB18_", scope: !33947, file: !33945, line: 56, type: !1514, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33773 = distinct !DILocation(line: 27, column: 13, scope: !33771)
!33774 = distinct !DISubprogram(name: "choose_pivot<([polars_io::csv::read::parser::LineStats; 2], usize), alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<([polars_io::csv::read::parser::LineStats; 2], usize), usize, polars_io::csv::read::parser::count_rows_from_reader_par::{closure#0}::{closure_env#2}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNCNvB19_26count_rows_from_reader_par0s0_0E0EB1f_", scope: !1906, file: !1903, line: 13, type: !1532, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33775 = distinct !DILexicalBlock(scope: !33774, file: !1903, line: 18, column: 5)
!33776 = distinct !DILexicalBlock(scope: !33775, file: !1903, line: 27, column: 9)
!33777 = distinct !DILocation(line: 39, column: 25, scope: !33771)
!33778 = distinct !DISubprogram(name: "add<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3addBO_", scope: !1769, file: !1767, line: 829, type: !1514, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33779 = distinct !DILexicalBlock(scope: !33776, file: !1903, line: 28, column: 9)
!33780 = distinct !DILexicalBlock(scope: !33779, file: !1903, line: 30, column: 9)
!33781 = distinct !DILocation(line: 31, column: 24, scope: !33780, inlinedAt: !33777)
!33782 = distinct !DILexicalBlock(scope: !33780, file: !1903, line: 31, column: 9)
!33783 = distinct !DILocation(line: 32, column: 24, scope: !33782, inlinedAt: !33777)
!33784 = distinct !DILexicalBlock(scope: !33782, file: !1903, line: 32, column: 9)
!33785 = distinct !{!33785, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNCNvB19_26count_rows_from_reader_par0s0_0E0EB1f_"}
!33786 = distinct !{!33786, !33785, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNCNvB19_26count_rows_from_reader_par0s0_0E0EB1f_: argument 0"}
!33787 = distinct !DILocation(line: 35, column: 13, scope: !33784, inlinedAt: !33777)
!33788 = distinct !DILocation(line: 82, column: 13, scope: !920, inlinedAt: !33787)
!33789 = distinct !DILocation(line: 252, column: 39, scope: !922, inlinedAt: !33788)
!33790 = distinct !DILocation(line: 83, column: 13, scope: !923, inlinedAt: !33787)
!33791 = distinct !DILocation(line: 252, column: 39, scope: !922, inlinedAt: !33790)
!33792 = distinct !DISubprogram(name: "offset_from_unsigned<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE20offset_from_unsignedBO_", scope: !1769, file: !1767, line: 701, type: !1514, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33793 = distinct !DILocation(line: 0, scope: !33784, inlinedAt: !33777)
!33794 = distinct !DILexicalBlock(scope: !33775, file: !1903, line: 26, column: 5)
!33795 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1655, file: !1654, line: 202, type: !1514, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33796 = distinct !DILocation(line: 42, column: 9, scope: !33794, inlinedAt: !33777)
!33797 = distinct !DILexicalBlock(scope: !33771, file: !33943, line: 39, column: 9)
!33798 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<([polars_io::csv::read::parser::LineStats; 2], usize)>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtNtB4_3mem12maybe_uninit11MaybeUninitTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEEB1l_", scope: !1541, file: !1540, line: 1682, type: !1514, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33799 = distinct !DILexicalBlock(scope: !33797, file: !33943, line: 45, column: 9)
!33800 = distinct !DILexicalBlock(scope: !33799, file: !33943, line: 46, column: 9)
!33801 = distinct !DILexicalBlock(scope: !33800, file: !33943, line: 58, column: 9)
!33802 = distinct !DILexicalBlock(scope: !33801, file: !33943, line: 59, column: 53)
!33803 = distinct !DILocation(line: 60, column: 40, scope: !33802)
!33804 = distinct !DILocation(line: 252, column: 39, scope: !922, inlinedAt: !33803)
!33805 = distinct !DILexicalBlock(scope: !33801, file: !33943, line: 63, column: 9)
!33806 = distinct !{!33806, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0EB1n_"}
!33807 = distinct !{!33807, !33806, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0EB1n_: argument 1"}
!33808 = distinct !DISubprogram(name: "stable_partition<([polars_io::csv::read::parser::LineStats; 2], usize), alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<([polars_io::csv::read::parser::LineStats; 2], usize), usize, polars_io::csv::read::parser::count_rows_from_reader_par::{closure#0}::{closure_env#2}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0EB1n_", scope: !33944, file: !33943, line: 89, type: !1532, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33809 = distinct !DILexicalBlock(scope: !33808, file: !33943, line: 96, column: 5)
!33810 = distinct !DILocation(line: 65, column: 34, scope: !33805)
!33811 = distinct !DISubprogram(name: "add<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3addBM_", scope: !1582, file: !1580, line: 927, type: !1514, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33812 = distinct !DISubprogram(name: "new<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE3newB1r_", scope: !33952, file: !33943, line: 201, type: !1514, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33813 = distinct !DILexicalBlock(scope: !33809, file: !33943, line: 102, column: 5)
!33814 = distinct !DILexicalBlock(scope: !33813, file: !33943, line: 103, column: 5)
!33815 = distinct !DILexicalBlock(scope: !33814, file: !33943, line: 114, column: 9)
!33816 = distinct !DILocation(line: 115, column: 25, scope: !33815, inlinedAt: !33810)
!33817 = distinct !DILocation(line: 203, column: 88, scope: !33812, inlinedAt: !33816)
!33818 = distinct !DILexicalBlock(scope: !33815, file: !33943, line: 115, column: 9)
!33819 = distinct !DILexicalBlock(scope: !33818, file: !33943, line: 117, column: 9)
!33820 = distinct !DILexicalBlock(scope: !33819, file: !33943, line: 118, column: 9)
!33821 = distinct !DISubprogram(name: "add<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3addBO_", scope: !1769, file: !1767, line: 829, type: !1514, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33822 = distinct !DILocation(line: 139, column: 35, scope: !33820, inlinedAt: !33810)
!33823 = distinct !DILexicalBlock(scope: !33820, file: !33943, line: 139, column: 13)
!33824 = distinct !{!33824, !33806, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0EB1n_: argument 0"}
!33825 = distinct !DILocation(line: 141, column: 37, scope: !33823, inlinedAt: !33810)
!33826 = distinct !DILocation(line: 252, column: 39, scope: !922, inlinedAt: !33825)
!33827 = distinct !DISubprogram(name: "sub<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3subBM_", scope: !1582, file: !1580, line: 1033, type: !1514, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33828 = distinct !DISubprogram(name: "partition_one<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE13partition_oneB1r_", scope: !33952, file: !33943, line: 215, type: !1514, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33829 = distinct !DILocation(line: 141, column: 23, scope: !33823, inlinedAt: !33810)
!33830 = distinct !DILocation(line: 222, column: 49, scope: !33828, inlinedAt: !33829)
!33831 = distinct !DISubprogram(name: "add<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3addBM_", scope: !1582, file: !1580, line: 927, type: !1514, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33832 = distinct !DILexicalBlock(scope: !33828, file: !33943, line: 226, column: 13)
!33833 = distinct !DILocation(line: 227, column: 32, scope: !33832, inlinedAt: !33829)
!33834 = distinct !{!33834, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE13partition_oneB1r_"}
!33835 = distinct !{!33835, !33834, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE13partition_oneB1r_: argument 0"}
!33836 = distinct !DISubprogram(name: "copy_nonoverlapping<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEBW_", scope: !1541, file: !1540, line: 531, type: !1514, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33837 = distinct !DILexicalBlock(scope: !33832, file: !33943, line: 227, column: 13)
!33838 = distinct !DILocation(line: 228, column: 13, scope: !33837, inlinedAt: !33829)
!33839 = distinct !DISubprogram(name: "add<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE3addBO_", scope: !1769, file: !1767, line: 829, type: !1514, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33840 = distinct !DILocation(line: 231, column: 35, scope: !33837, inlinedAt: !33829)
!33841 = distinct !DILocation(line: 150, column: 38, scope: !33823, inlinedAt: !33810)
!33842 = distinct !DILocation(line: 222, column: 49, scope: !33828, inlinedAt: !33841)
!33843 = distinct !DILocation(line: 227, column: 32, scope: !33832, inlinedAt: !33841)
!33844 = distinct !{!33844, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE13partition_oneB1r_"}
!33845 = distinct !{!33845, !33844, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE13partition_oneB1r_: argument 0"}
!33846 = distinct !DILocation(line: 228, column: 13, scope: !33837, inlinedAt: !33841)
!33847 = distinct !DILocation(line: 231, column: 35, scope: !33837, inlinedAt: !33841)
!33848 = distinct !DISubprogram(name: "copy_nonoverlapping<([polars_io::csv::read::parser::LineStats; 2], usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEEBW_", scope: !1541, file: !1540, line: 531, type: !1514, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!33849 = distinct !DILexicalBlock(scope: !33820, file: !33943, line: 168, column: 9)
end_hunk_2
