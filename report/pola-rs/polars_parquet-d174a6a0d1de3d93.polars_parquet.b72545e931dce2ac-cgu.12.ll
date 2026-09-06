Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.12?download=true
inline.NumInlined: 3702
inline.NumDeleted: 1158
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayyE15slice_uncheckedCsfISxE4fmY1Y_14polars_parquet:bb.a

bb.o:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !42621, !noalias !42574
  unreachable, !dbg !42621

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit.sink.split: ; preds = %bb.n, %bb.m
  %.sroa.0.0.ph = phi ptr [ null, %bb.m ], [ %.sroa.0.0.copyload7, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42622, !noalias !42574
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit.sink.split ], !dbg !42623
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !42624
  store ptr %.sroa.0.0, ptr %i.c, align 8, !dbg !42625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !dbg !42625
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !42626
  %i.aj = add i64 %2, %1, !dbg !42627
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !42624
  %i.al = call { i64, i64 } @_RINvNtCs2mZqlW55729_12polars_utils5range22decode_range_uncheckedINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECsfISxE4fmY1Y_14polars_parquet(i64 noundef %1, i64 noundef %i.aj, i64 noundef %.pre), !dbg !42628 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !42628 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1, !dbg !42628
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !42629 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !42629, !noundef !1205
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am, !dbg !42630
  store ptr %i.aq, ptr %i.ao, align 8, !dbg !42631
  %i.ar = sub i64 %i.an, %i.am, !dbg !42632
  store i64 %i.ar, ptr %i.ak, align 8, !dbg !42632
  ret void, !dbg !42633
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 !dbg !42634 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0, !dbg !42635
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1, !dbg !42635
  ret { ptr, i64 } %i.b, !dbg !42635
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E5sliceBc_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !42636 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !42647, !nonnull !1205, !noundef !1205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42647
  %i.c = load i64, ptr %i.b, align 8, !dbg !42647, !noundef !1205 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c, !dbg !42648
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42648, !prof !1215

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !dbg !42649
  unreachable, !dbg !42649

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, %1, !dbg !42650
  %.not2 = icmp ugt i64 %i.d, %i.c, !dbg !42650
  br i1 %.not2, label %bb.d, label %bb.e, !dbg !42650, !prof !1215

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #28, !dbg !42651
  unreachable, !dbg !42651

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [1 x i8], ptr %i.a, i64 %1, !dbg !42652
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !42653
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1, !dbg !42653
  ret { ptr, i64 } %i.g, !dbg !42653
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 !dbg !42654 {
bb.a:
  %i.a = and i64 %1, 1, !dbg !42657
  %i.b = icmp eq i64 %i.a, 0, !dbg !42657         ; 2 uses
  %i.c = lshr exact i64 %1, 1
  %spec.select = select i1 %i.b, i64 %i.c, i64 undef, !dbg !42658
  %spec.select3 = select i1 %i.b, ptr %0, ptr null, !dbg !42658
  %i.d = insertvalue { ptr, i64 } poison, ptr %spec.select3, 0, !dbg !42659
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %spec.select, 1, !dbg !42659
  ret { ptr, i64 } %i.e, !dbg !42659
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2E5sliceBc_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !42660 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !42671, !nonnull !1205, !noundef !1205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42671
  %i.c = load i64, ptr %i.b, align 8, !dbg !42671, !noundef !1205 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c, !dbg !42672
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42672, !prof !1215

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !dbg !42673
  unreachable, !dbg !42673

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, %1, !dbg !42674
  %.not2 = icmp ugt i64 %i.d, %i.c, !dbg !42674
  br i1 %.not2, label %bb.d, label %bb.e, !dbg !42674, !prof !1215

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #28, !dbg !42675
  unreachable, !dbg !42675

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %1, !dbg !42676
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !42677
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1, !dbg !42677
  ret { ptr, i64 } %i.g, !dbg !42677
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 !dbg !42678 {
bb.a:
  %i.a = and i64 %1, 3, !dbg !42681
  %i.b = icmp eq i64 %i.a, 0, !dbg !42681         ; 2 uses
  %i.c = lshr exact i64 %1, 2
  %spec.select = select i1 %i.b, i64 %i.c, i64 undef, !dbg !42682
  %spec.select3 = select i1 %i.b, ptr %0, ptr null, !dbg !42682
  %i.d = insertvalue { ptr, i64 } poison, ptr %spec.select3, 0, !dbg !42683
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %spec.select, 1, !dbg !42683
  ret { ptr, i64 } %i.e, !dbg !42683
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4E5sliceBc_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !42684 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !42695, !nonnull !1205, !noundef !1205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42695
  %i.c = load i64, ptr %i.b, align 8, !dbg !42695, !noundef !1205 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c, !dbg !42696
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42696, !prof !1215

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !dbg !42697
  unreachable, !dbg !42697

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, %1, !dbg !42698
  %.not2 = icmp ugt i64 %i.d, %i.c, !dbg !42698
  br i1 %.not2, label %bb.d, label %bb.e, !dbg !42698, !prof !1215

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #28, !dbg !42699
  unreachable, !dbg !42699

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %1, !dbg !42700
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !42701
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1, !dbg !42701
  ret { ptr, i64 } %i.g, !dbg !42701
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 !dbg !42702 {
bb.a:
  %i.a = and i64 %1, 7, !dbg !42705
  %i.b = icmp eq i64 %i.a, 0, !dbg !42705         ; 2 uses
  %i.c = lshr exact i64 %1, 3
  %spec.select = select i1 %i.b, i64 %i.c, i64 undef, !dbg !42706
  %spec.select3 = select i1 %i.b, ptr %0, ptr null, !dbg !42706
  %i.d = insertvalue { ptr, i64 } poison, ptr %spec.select3, 0, !dbg !42707
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %spec.select, 1, !dbg !42707
  ret { ptr, i64 } %i.e, !dbg !42707
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8E5sliceBc_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !42708 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !42719, !nonnull !1205, !noundef !1205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42719
  %i.c = load i64, ptr %i.b, align 8, !dbg !42719, !noundef !1205 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c, !dbg !42720
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42720, !prof !1215

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !dbg !42721
  unreachable, !dbg !42721

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, %1, !dbg !42722
  %.not2 = icmp ugt i64 %i.d, %i.c, !dbg !42722
  br i1 %.not2, label %bb.d, label %bb.e, !dbg !42722, !prof !1215

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #28, !dbg !42723
  unreachable, !dbg !42723

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1, !dbg !42724
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !42725
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1, !dbg !42725
  ret { ptr, i64 } %i.g, !dbg !42725
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 !dbg !42726 {
bb.a:
  %i.a = urem i64 %1, 12, !dbg !42729
  %i.b = icmp eq i64 %i.a, 0, !dbg !42729         ; 2 uses
  %i.c = udiv exact i64 %1, 12, !dbg !42730
  %.sroa.3.0 = select i1 %i.b, i64 %i.c, i64 undef, !dbg !42730
  %.sroa.0.0 = select i1 %i.b, ptr %0, ptr null, !dbg !42730
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !42731
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.3.0, 1, !dbg !42731
  ret { ptr, i64 } %i.e, !dbg !42731
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4E5sliceBc_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !42732 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !42743, !nonnull !1205, !noundef !1205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42743
  %i.c = load i64, ptr %i.b, align 8, !dbg !42743, !noundef !1205 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c, !dbg !42744
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42744, !prof !1215

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !dbg !42745
  unreachable, !dbg !42745

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, %1, !dbg !42746
  %.not2 = icmp ugt i64 %i.d, %i.c, !dbg !42746
  br i1 %.not2, label %bb.d, label %bb.e, !dbg !42746, !prof !1215

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #28, !dbg !42747
  unreachable, !dbg !42747

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %1, !dbg !42748
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !42749
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1, !dbg !42749
  ret { ptr, i64 } %i.g, !dbg !42749
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 !dbg !42750 {
bb.a:
  %i.a = and i64 %1, 15, !dbg !42753
  %i.b = icmp eq i64 %i.a, 0, !dbg !42753         ; 2 uses
  %i.c = lshr exact i64 %1, 4
  %spec.select = select i1 %i.b, i64 %i.c, i64 undef, !dbg !42754
  %spec.select3 = select i1 %i.b, ptr %0, ptr null, !dbg !42754
  %i.d = insertvalue { ptr, i64 } poison, ptr %spec.select3, 0, !dbg !42755
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %spec.select, 1, !dbg !42755
  ret { ptr, i64 } %i.e, !dbg !42755
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16E5sliceBc_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !42756 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !42767, !nonnull !1205, !noundef !1205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42767
  %i.c = load i64, ptr %i.b, align 8, !dbg !42767, !noundef !1205 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c, !dbg !42768
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42768, !prof !1215

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !dbg !42769
  unreachable, !dbg !42769

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, %1, !dbg !42770
  %.not2 = icmp ugt i64 %i.d, %i.c, !dbg !42770
  br i1 %.not2, label %bb.d, label %bb.e, !dbg !42770, !prof !1215

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #28, !dbg !42771
  unreachable, !dbg !42771

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %1, !dbg !42772
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !42773
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1, !dbg !42773
  ret { ptr, i64 } %i.g, !dbg !42773
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 !dbg !42774 {
bb.a:
  %i.a = and i64 %1, 31, !dbg !42777
  %i.b = icmp eq i64 %i.a, 0, !dbg !42777         ; 2 uses
  %i.c = lshr exact i64 %1, 5
  %spec.select = select i1 %i.b, i64 %i.c, i64 undef, !dbg !42778
  %spec.select3 = select i1 %i.b, ptr %0, ptr null, !dbg !42778
  %i.d = insertvalue { ptr, i64 } poison, ptr %spec.select3, 0, !dbg !42779
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %spec.select, 1, !dbg !42779
  ret { ptr, i64 } %i.e, !dbg !42779
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16E5sliceBc_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !42780 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !42791, !nonnull !1205, !noundef !1205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42791
  %i.c = load i64, ptr %i.b, align 8, !dbg !42791, !noundef !1205 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c, !dbg !42792
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42792, !prof !1215

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !dbg !42793
  unreachable, !dbg !42793

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, %1, !dbg !42794
  %.not2 = icmp ugt i64 %i.d, %i.c, !dbg !42794
  br i1 %.not2, label %bb.d, label %bb.e, !dbg !42794, !prof !1215

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #28, !dbg !42795
  unreachable, !dbg !42795

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %1, !dbg !42796
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !42797
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1, !dbg !42797
  ret { ptr, i64 } %i.g, !dbg !42797
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17schema_descriptorNtB5_16SchemaDescriptor11into_thrift(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !42798 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !42833
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !42834
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !42833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !42834
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !42833
  store i32 0, ptr %i.c, align 8, !dbg !42833
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !42833
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !42833
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !42833
  store i8 2, ptr %i.d, align 8, !dbg !42833
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 73, !dbg !42833
  store i8 3, ptr %i.e, align 1, !dbg !42833
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !42833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !42833
  store i64 8, ptr %i.a, align 8, !dbg !42833
  invoke void @_RNvMNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema9io_thrift9to_thriftNtNtNtB6_5types12parquet_type11ParquetType9to_thrift(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !42835

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEBQ_(ptr noalias noundef align 8 dereferenceable(104) %i.a) #30
          to label %bb.d unwind label %bb.i, !dbg !42836

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEBQ_(ptr noalias noundef align 8 dereferenceable(104) %i.a)
          to label %bb.g unwind label %bb.f, !dbg !42836

bb.d:                                             ; preds = %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.g, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !42837 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42827), !dbg !42837
  call void @llvm.experimental.noalias.scope.decl(metadata !42828), !dbg !42838
  %i.i = load ptr, ptr %i.h, align 8, !dbg !42839, !alias.scope !42829, !nonnull !1205, !noundef !1205
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !dbg !42840, !noalias !42829
  %i.k = icmp eq i64 %i.j, 1, !dbg !42841
  br i1 %i.k, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor16ColumnDescriptorEEEB1C_.exit, !dbg !42841

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !42842
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor16ColumnDescriptorEE9drop_slowB14_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor16ColumnDescriptorEEEB1C_.exit unwind label %bb.i, !dbg !42843

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42836
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !42837 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42830), !dbg !42837
  call void @llvm.experimental.noalias.scope.decl(metadata !42831), !dbg !42844
  %i.n = load ptr, ptr %i.m, align 8, !dbg !42845, !alias.scope !42832, !nonnull !1205, !noundef !1205
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !dbg !42846, !noalias !42832
  %i.p = icmp eq i64 %i.o, 1, !dbg !42847
  br i1 %i.p, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor16ColumnDescriptorEEEB1C_.exit4, !dbg !42847

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !42848
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor16ColumnDescriptorEE9drop_slowB14_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.m) #32, !dbg !42849
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor16ColumnDescriptorEEEB1C_.exit4, !dbg !42849

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor16ColumnDescriptorEEEB1C_.exit4: ; preds = %bb.g, %bb.h
  ret void, !dbg !42850

bb.i:                                             ; preds = %bb.e, %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !42851
  unreachable, !dbg !42851

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17column_descriptor16ColumnDescriptorEEEB1C_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn, !dbg !42851
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata17schema_descriptorNtB5_16SchemaDescriptor13try_from_type(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !42852 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
end_hunk_0
