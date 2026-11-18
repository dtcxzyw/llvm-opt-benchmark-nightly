Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RNvXsc_NtNtCs2vKOLqTMYjT_3std4sync4mpscINtB5_4IterTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBS_:bb.a
bb.cx:                                            ; preds = %bb.cw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB13_.exit
  %.sroa.4.0.copyload43.sink = phi i64 [ %.sroa.4.0.copyload43, %bb.cw ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB13_.exit ]
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload43.sink, ptr %.sroa.446.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser10parse_ref_Csgcf5BHVXlUt_7uu_sort(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RNvXsy_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_16TypedValueParser9parse_refCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #34 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !15642
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !15642 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37, !noalias !15642
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @713, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @486, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser15possible_valuesCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser7type_idCsgcf5BHVXlUt_7uu_sort(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @486, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser9clone_anyCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !alias.scope !15647
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 8, !alias.scope !15647
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !15648
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !15648 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #37, !noalias !15648
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store <2 x i64> %i.a, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x i64> %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @489, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser9parse_refCsgcf5BHVXlUt_7uu_sort(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RNvXsy_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_16TypedValueParser9parse_refCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #34 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !15651
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !15651 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37, !noalias !15651
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @713, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @486, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser10parse_ref_Csgcf5BHVXlUt_7uu_sort(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #34
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !align !13, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !15654
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !15654 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37, !noalias !15654
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @714, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser15possible_valuesCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #34
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser7type_idCsgcf5BHVXlUt_7uu_sort(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9clone_anyCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15676)
  %i.d = mul nuw nsw i64 %.val1, 72               ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !15677
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #34, !noalias !15677 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #37, !noalias !15678
  unreachable

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %1 = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.val1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %2

2:                                                ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.054.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.i, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 8 uses
  %.sroa.7.053.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 2 uses
  %.sroa.10.052.i.i.i = phi i64 [ %.val1, %.lr.ph.i.i.i ], [ %3, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ]
  %3 = add nsw i64 %.sroa.10.052.i.i.i, -1        ; 2 uses
  %4 = icmp eq ptr %.sroa.0.054.i.i.i, %1
  br i1 %4, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.d

bb.d:                                             ; preds = %2
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 72
  %i.j = add nuw nsw i64 %.sroa.7.053.i.i.i, 1
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.7.053.i.i.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15679)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15678
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !15680, !noalias !15681, !nonnull !11, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !15680, !noalias !15681, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !10, !alias.scope !15680, !noalias !15681, !noundef !11
  %.not.i.i.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #34, !noalias !15682
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !15683
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.e ], [ -1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !15680, !noalias !15681, !nonnull !11, !noundef !11 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !15680, !noalias !15681, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15684)
  %i.t = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.t, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !15685
  %i.v = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #34, !noalias !15685 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %.lr.ph.preheader.i.i.i.i.i.i.a

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #37, !noalias !15686
  unreachable

.lr.ph.preheader.i.i.i.i.i.i.a:                   ; preds = %bb.g
  %5 = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i, i64 %.val4.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i.a
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %8, %bb.i ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.a ] ; 4 uses
  %.sroa.7.021.i.i.i.i.i.i = phi i64 [ %7, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.a ] ; 2 uses
  %.sroa.10.020.i.i.i.i.i.i = phi i64 [ %6, %bb.i ], [ %.val4.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.a ]
  %i.x = icmp eq ptr %.sroa.0.022.i.i.i.i.i.i, %5
  br i1 %i.x, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %6 = add nsw i64 %.sroa.10.020.i.i.i.i.i.i, -1  ; 2 uses
  %7 = add nuw nsw i64 %.sroa.7.021.i.i.i.i.i.i, 1
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i.a = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !15684, !noalias !15687, !nonnull !11, !noundef !11
  %i.z = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i.a = load i64, ptr %i.z, align 8, !alias.scope !15684, !noalias !15687, !noundef !11
  store ptr %.val.i.i.i.i.i.i.a, ptr %i.y, align 8, !noalias !15686
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.val13.i.i.i.i.i.i.a, ptr %i.aa, align 8, !noalias !15686
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.10.0.i30.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ac = load i8, ptr %i.ab, align 8, !range !18, !alias.scope !15680, !noalias !15681, !noundef !11
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !15688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15678
  store i64 %.val4.i.i.i.i, ptr %i.k, align 8, !noalias !15688
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !15688
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !15688
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !15688
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.m, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !15688
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %i.o, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !15688
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i8 %i.ac, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !15688
  %i.ad = icmp eq i64 %3, 0
  br i1 %i.ad, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %2

_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %2, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i65.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ], [ %i.f, %2 ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !15689
  %i.ae = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !15689 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37, !noalias !15689
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.10.0.i65.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ag = insertvalue { ptr, ptr } poison, ptr %i.ae, 0
  %i.ah = insertvalue { ptr, ptr } %i.ag, ptr @490, 1
  ret { ptr, ptr } %i.ah
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9parse_refCsgcf5BHVXlUt_7uu_sort(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #34
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !align !13, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !15692
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !15692 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37, !noalias !15692
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @714, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs6JMX4GRUq9U_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @715, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @716, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @656) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXse_Csgcf5BHVXlUt_7uu_sortNtB5_9SortErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [20 x i8], align 1                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 16 uses
  %i.s = alloca [20 x i8], align 1                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 13 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 13 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 8 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [32 x i8], align 8               ; 7 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 10 uses
  %i.bk = alloca [24 x i8], align 8               ; 7 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [24 x i8], align 8               ; 8 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  %i.bp = alloca [32 x i8], align 8               ; 7 uses
  %i.bq = alloca [24 x i8], align 8               ; 10 uses
  %i.br = alloca [24 x i8], align 8               ; 7 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [24 x i8], align 8               ; 8 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [16 x i8], align 8               ; 6 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [16 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 13 uses
  %i.ca = alloca [24 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [24 x i8], align 8               ; 8 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [16 x i8], align 8               ; 6 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [24 x i8], align 8               ; 10 uses
  %i.ch = alloca [24 x i8], align 8               ; 7 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [24 x i8], align 8               ; 8 uses
  %i.ck = alloca [24 x i8], align 8               ; 6 uses
  %i.cl = alloca [16 x i8], align 8               ; 6 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [16 x i8], align 8               ; 6 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [32 x i8], align 8               ; 7 uses
  %i.cr = alloca [24 x i8], align 8               ; 6 uses
  %i.cs = alloca [24 x i8], align 8               ; 13 uses
  %i.ct = alloca [24 x i8], align 8               ; 7 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %i.cv = alloca [24 x i8], align 8               ; 8 uses
  %i.cw = alloca [24 x i8], align 8               ; 6 uses
  %i.cx = alloca [16 x i8], align 8               ; 6 uses
  %i.cy = alloca [24 x i8], align 8               ; 6 uses
  %i.cz = alloca [24 x i8], align 8               ; 6 uses
  %i.da = alloca [16 x i8], align 8               ; 6 uses
  %i.db = alloca [16 x i8], align 8               ; 5 uses
  %i.dc = alloca [32 x i8], align 8               ; 7 uses
  %i.dd = alloca [24 x i8], align 8               ; 6 uses
  %i.de = alloca [24 x i8], align 8               ; 13 uses
  %i.df = alloca [24 x i8], align 8               ; 7 uses
  %i.dg = alloca [16 x i8], align 8               ; 5 uses
  %i.dh = alloca [24 x i8], align 8               ; 10 uses
  %i.di = load i64, ptr %0, align 8, !range !40, !noundef !11 ; 2 uses
  %i.dj = icmp slt i64 %i.di, 0
  %i.dk = add i64 %i.di, -9223372036854775807
  %i.dl = select i1 %i.dj, i64 %i.dk, i64 0
  switch i64 %i.dl, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %.split
    i64 2, label %.split327
    i64 3, label %bb.bs
    i64 4, label %bb.bv
    i64 5, label %bb.by
    i64 6, label %.split331
    i64 7, label %.split335
    i64 8, label %bb.cr
    i64 9, label %bb.cs
    i64 10, label %bb.cu
end_hunk_0
begin_hunk_1_@_RNvXse_Csgcf5BHVXlUt_7uu_sortNtB5_9SortErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @727, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.awt = icmp eq i64 %i.aul, 0
  br i1 %i.awt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aws, i64 noundef %i.aul, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16034
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966

bb.nl:                                            ; preds = %.loopexit1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.aul, ptr %i.v, align 8
  %.sroa.51116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.ph1361, ptr %.sroa.51116.0..sroa_idx, align 8
  %.sroa.81117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.aul, ptr %.sroa.81117.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @712, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @727, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966

bb.nm:                                            ; preds = %.loopexit1474
  %i.awu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.awv = load double, ptr %i.awu, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @712, i64 noundef 8, double noundef %i.awv) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.nj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966: ; preds = %bb.nk, %bb.nj, %bb.nl
  %i.aww = icmp eq i64 %.sroa.01101.0.copyload1102, 0
  %or.cond1374 = select i1 %.sroa.05.0.not, i1 true, i1 %i.aww
  br i1 %or.cond1374, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit972, label %bb.no

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit972: ; preds = %bb.no, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ab, ptr %i.t, align 8
  %.sroa.4311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4311.0..sroa_idx, align 8
  %i.awx = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.awy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.awz = load ptr, ptr %i.awy, align 8, !nonnull !11, !align !13, !noundef !11
  %i.axa = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.awx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.awz, ptr noundef nonnull @55, ptr noundef nonnull %i.t) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !16035)
  call void @llvm.experimental.noalias.scope.decl(metadata !16036)
  %.val.i.i967 = load i64, ptr %i.ab, align 8, !range !22, !alias.scope !16037, !noundef !11 ; 2 uses
  %i.axb = icmp eq i64 %.val.i.i967, 0
  br i1 %i.axb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit969, label %bb.nn

bb.nn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit972
  %i.axc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i968 = load ptr, ptr %i.axc, align 8, !alias.scope !16037, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i968, i64 noundef %.val.i.i967, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16037
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit969

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit969: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit972, %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.dn

bb.no:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.51103.0.copyload1105, i64 noundef %.sroa.01101.0.copyload1102, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16038
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit972
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #34 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @729) #40
  unreachable

_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noundef !11
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit

bb.c:                                             ; preds = %_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgcf5BHVXlUt_7uu_sort.exit.i
  store atomic i64 0, ptr %i.a monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = atomicrmw xchg ptr %i.i, i32 0 release, align 4
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.d, label %_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.i) #34
  br label %_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit

_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit: ; preds = %_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgcf5BHVXlUt_7uu_sort.exit.i, %bb.c, %bb.d
  ret i1 true
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpscINtB5_9SendErrorNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtBV_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @730, i64 noundef 9) #34
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpscINtB5_9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtBX_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @730, i64 noundef 9) #34
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtBM_3fmt5Debug3fmtCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !13, !noundef !11
  %i.d = tail call noundef zeroext i1 @_RNvXs0_NtCs6JMX4GRUq9U_4core3anyDNtB5_3AnyNtNtB7_6marker4SendEL_NtNtB7_3fmt5Debug3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #34
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXso_Csgcf5BHVXlUt_7uu_sortNtB5_14GlobalSettingsNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.013.i.i = alloca [54 x i8], align 8      ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.5 = alloca [16 x i8], align 1            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 155
  %i.c = load i8, ptr %i.b, align 1, !range !20, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.e = load <8 x i8>, ptr %i.d, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 134
  %i.g = load i8, ptr %i.f, align 2, !range !18, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 135
  %i.i = load i8, ptr %i.h, align 1, !range !18, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = load i8, ptr %i.j, align 8, !range !18, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.m = load i8, ptr %i.l, align 1, !range !18, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 2 dereferenceable(16) %i.o, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !range !10, !noundef !11
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgcf5BHVXlUt_7uu_sort.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val19 = load i64, ptr %i.s, align 8, !noundef !11 ; 6 uses
  %i.t = icmp eq i64 %.val19, 0
  br i1 %i.t, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgcf5BHVXlUt_7uu_sort.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !16056
  %i.u = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val19, i64 noundef range(i64 1, 9) 1) #34, !noalias !16056 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val19) #37, !noalias !16057
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val19, i1 false), !noalias !16058
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgcf5BHVXlUt_7uu_sort.exit

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.g, %bb.d, %bb.c
  %.sroa.53.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %.val19, %bb.g ], [ 0, %bb.d ]
  %.sroa.53.sroa.0.0 = phi ptr [ undef, %bb.c ], [ %i.u, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.d ]
  %.sroa.01.0 = phi i64 [ -1, %bb.c ], [ %.val19, %bb.g ], [ 0, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.w, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val21 = load i64, ptr %i.x, align 8, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16059)
  %i.y = mul nuw nsw i64 %.val21, 56              ; 2 uses
  %i.z = icmp eq i64 %.val21, 0
  br i1 %i.z, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBH_.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgcf5BHVXlUt_7uu_sort.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !16060
  %i.aa = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.y, i64 noundef range(i64 1, 9) 8) #34, !noalias !16060 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.y) #37, !noalias !16061
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.h
  %2 = getelementptr inbounds nuw [56 x i8], ptr %.val20, i64 %.val21
  %.sroa.013.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.i.i, i64 24
  %.sroa.013.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.i.i, i64 48
  br label %3

3:                                                ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.0.031.i.i = phi ptr [ %.val20, %.lr.ph.i.i ], [ %i.ae, %bb.j ] ; 7 uses
  %.sroa.7.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ad, %bb.j ] ; 2 uses
  %.sroa.10.029.i.i = phi i64 [ %.val21, %.lr.ph.i.i ], [ %i.ac, %bb.j ]
  %4 = icmp eq ptr %.sroa.0.031.i.i, %2
  br i1 %4, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBH_.exit, label %bb.j

bb.j:                                             ; preds = %3
  %i.ac = add nsw i64 %.sroa.10.029.i.i, -1       ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.7.030.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i, i64 56
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %.sroa.7.030.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16062)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !alias.scope !16063, !noalias !16064
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.013.48..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(6) %i.ah, i64 6, i1 false), !alias.scope !16063, !noalias !16064
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i, i64 54
  %i.aj = load i8, ptr %i.ai, align 2, !range !18, !alias.scope !16065, !noalias !16066, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i, i64 55
  %i.al = load i8, ptr %i.ak, align 1, !range !18, !alias.scope !16065, !noalias !16066, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.031.i.i, i64 24, i1 false), !alias.scope !16063, !noalias !16064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(54) %i.af, ptr noundef nonnull align 8 dereferenceable(54) %.sroa.013.i.i, i64 54, i1 false), !noalias !16061
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 54
  store i8 %i.aj, ptr %.sroa.421.0..sroa_idx.i.i, align 2, !noalias !16061
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 55
  store i8 %i.al, ptr %.sroa.522.0..sroa_idx.i.i, align 1, !noalias !16061
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013.i.i)
  %i.am = icmp eq i64 %i.ac, 0
  br i1 %i.am, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBH_.exit, label %3

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBH_.exit: ; preds = %3, %bb.j, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgcf5BHVXlUt_7uu_sort.exit
  %.sroa.10.0.i39.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgcf5BHVXlUt_7uu_sort.exit ], [ %i.aa, %bb.j ], [ %i.aa, %3 ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ao = load i8, ptr %i.an, align 4, !range !18, !noundef !11 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.as = load i8, ptr %i.ar, align 4, !range !19, !noundef !11
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = load i64, ptr %i.at, align 8, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 154
  %i.aw = load i8, ptr %i.av, align 2, !range !18, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !10, !noundef !11
  %.not18 = icmp eq i64 %i.ay, -1
  br i1 %.not18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBH_.exit
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #34
  %.sroa.07.0.copyload = load i64, ptr %i.a, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBH_.exit, %bb.k
  %.sroa.07.0 = phi i64 [ %.sroa.07.0.copyload, %bb.k ], [ -1, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBH_.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = trunc nuw i8 %i.ao to i1
  %.sroa.56.0 = select i1 %i.ba, i8 %i.aq, i8 undef
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.011.0.copyload = load i32, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %i.c, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 126
  store <8 x i8> %i.e, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i8 %i.g, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 %i.i, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %i.k, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 %.sroa.0.0, ptr %i.bl, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.01.0, ptr %i.bm, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.53.sroa.0.0, ptr %.sroa.53.0..sroa_idx4, align 8
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.53.sroa.4.0, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx4.sroa_idx, align 8
  store i64 %.val21, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i39.i.i, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val21, ptr %.sroa.523.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 %i.ao, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 125
  store i8 %.sroa.56.0, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %i.as, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.au, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.aw, ptr %i.br, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.07.0, ptr %i.bs, align 8
  %.sroa.59.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bc, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %.sroa.011.0.copyload, ptr %i.bu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #34
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptiondEENtNtBK_3fmt5Debug3fmtCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16072
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #34, !noalias !16073
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtSINtNtB7_6option6OptiondENtB5_5Debug3fmtCsgcf5BHVXlUt_7uu_sort.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16074
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !16074, !captures !53
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16074
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtSINtNtB7_6option6OptiondENtB5_5Debug3fmtCsgcf5BHVXlUt_7uu_sort.exit, label %.lr.ph.i.i

_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtSINtNtB7_6option6OptiondENtB5_5Debug3fmtCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16072
  ret i1 %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEENtNtBM_3fmt5Debug3fmtCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16080
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #34, !noalias !16081
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtSINtNtNtB7_3ops5range5RangejENtB5_5Debug3fmtCsgcf5BHVXlUt_7uu_sort.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16082
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !16082, !captures !53
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16082
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtSINtNtNtB7_3ops5range5RangejENtB5_5Debug3fmtCsgcf5BHVXlUt_7uu_sort.exit, label %.lr.ph.i.i

_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtSINtNtNtB7_3ops5range5RangejENtB5_5Debug3fmtCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16080
  ret i1 %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16088
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #34, !noalias !16089
  %.idx.i = mul nuw nsw i64 %i.f, 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtSNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultNtB5_5Debug3fmtBx_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16090
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !16090, !captures !53
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16090
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtSNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultNtB5_5Debug3fmtBx_.exit, label %.lr.ph.i.i

_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtSNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultNtB5_5Debug3fmtBx_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16088
  ret i1 %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsgcf5BHVXlUt_7uu_sort4LineENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16096
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #34, !noalias !16097
  %.idx.i = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
end_hunk_1
