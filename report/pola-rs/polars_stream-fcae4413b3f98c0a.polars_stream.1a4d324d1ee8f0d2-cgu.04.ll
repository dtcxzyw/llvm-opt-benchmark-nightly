Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.04?download=true
inline.NumInlined: 7428
inline.NumDeleted: 3031
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt:bb.a
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !123927

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123928
  br label %bb.f, !dbg !123928

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123929
  br label %bb.f, !dbg !123929

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123930
  br label %bb.f, !dbg !123930

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !123931
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounterNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !123932 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !123934
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123934
  store ptr %i.b, ptr %i.a, align 8, !dbg !123934
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @514, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @515, i64 noundef 13, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @513, ptr noalias noundef nonnull readonly captures(address, read_provenance) @516, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30), !dbg !123935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !123936
  ret i1 %i.c, !dbg !123937
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5linesNtB4_17LineReaderBuilderNtNtNtNtB6_10multi_scan16reader_interface7builder17FileReaderBuilder11reader_name(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 !dbg !123938 {
bb.a:
  ret { ptr, i64 } { ptr @517, i64 4 }, !dbg !123939
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i8 @_RNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources5linesNtB4_17LineReaderBuilderNtNtNtNtB6_10multi_scan16reader_interface7builder17FileReaderBuilder19reader_capabilities(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 !dbg !123940 {
bb.a:
  ret i8 7, !dbg !123941
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 !dbg !123942 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !123954, !nonnull !3164, !noundef !3164
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123954
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !123954, !nonnull !3164, !noundef !3164
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !123955
  %i.c = ptrtoint ptr %.val to i64, !dbg !123955
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !123955
  %i.e = lshr exact i64 %i.d, 3, !dbg !123955     ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !123956, !alias.scope !123953
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123956
  store i64 1, ptr %i.f, align 8, !dbg !123956, !alias.scope !123953
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123956
  store i64 %i.e, ptr %i.g, align 8, !dbg !123956, !alias.scope !123953
  ret void, !dbg !123957
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB1L_Kj1_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #28 !dbg !123958 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123981), !dbg !123983
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123982), !dbg !123983
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !123984
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123984, !alias.scope !123982, !noundef !3164 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !123984
  %i.c = load i64, ptr %1, align 8, !dbg !123984, !range !3390, !alias.scope !123982, !noundef !3164
  %i.d = trunc nuw i64 %i.c to i1, !dbg !123985   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !123985

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.e, label %bb.f, !dbg !123985

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB1p_Kj1_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream.exit, !dbg !123985

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123986
  %.val13.i = load i64, ptr %i.e, align 8, !dbg !123987, !alias.scope !123982, !noundef !3164
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !123987
  %.val14.i = load i64, ptr %i.f, align 8, !dbg !123987, !alias.scope !123982, !noundef !3164
  %i.g = sub nuw i64 %.val14.i, %.val13.i, !dbg !123988 ; 2 uses
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB1p_Kj1_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream.exit, !dbg !123987

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123989
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !123990
  %.val10.i = load ptr, ptr %i.i, align 8, !dbg !123990, !alias.scope !123982, !nonnull !3164, !noundef !3164
  %i.j = ptrtoint ptr %.val10.i to i64, !dbg !123991
  %i.k = ptrtoint ptr %i.b to i64, !dbg !123991
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !123991
  %i.m = udiv exact i64 %i.l, 24, !dbg !123991    ; 3 uses
  %.val11.i = load i64, ptr %i.h, align 8, !dbg !123992, !alias.scope !123982, !noundef !3164
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !123992
  %.val12.i = load i64, ptr %i.n, align 8, !dbg !123992, !alias.scope !123982, !noundef !3164
  %i.o = sub nuw i64 %.val12.i, %.val11.i, !dbg !123993 ; 2 uses
  %i.p = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.o), !dbg !123994
  %i.q = add i64 %i.m, %i.o, !dbg !123995         ; 2 uses
  %i.r = icmp uge i64 %i.q, %i.m, !dbg !123995
  %..i = zext i1 %i.r to i64, !dbg !123995
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB1p_Kj1_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream.exit, !dbg !123996

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !123997
  %.val8.i = load ptr, ptr %i.s, align 8, !dbg !123997, !alias.scope !123982, !nonnull !3164, !noundef !3164
  %i.t = ptrtoint ptr %.val8.i to i64, !dbg !123998
  %i.u = ptrtoint ptr %i.b to i64, !dbg !123998
  %i.v = sub nuw i64 %i.t, %i.u, !dbg !123998
  %i.w = udiv exact i64 %i.v, 24, !dbg !123998    ; 2 uses
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB1p_Kj1_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream.exit, !dbg !123997

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB1p_Kj1_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink20.i = phi i64 [ %i.p, %bb.e ], [ %i.w, %bb.f ], [ %i.g, %bb.d ], [ 0, %bb.c ]
  %..sink.i = phi i64 [ %..i, %bb.e ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.c ]
  %.sink.i = phi i64 [ %i.q, %bb.e ], [ %i.w, %bb.f ], [ %i.g, %bb.d ], [ 0, %bb.c ]
  store i64 %.sink20.i, ptr %0, align 8, !dbg !123999, !alias.scope !123981
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123999
  store i64 %..sink.i, ptr %i.x, align 8, !dbg !123999, !alias.scope !123981
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123999
  store i64 %.sink.i, ptr %i.y, align 8, !dbg !123999, !alias.scope !123981
  ret void, !dbg !124000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterbEINtNtNtBa_5array4iter8IntoIterRbKj1_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #28 !dbg !124001 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124035), !dbg !124037
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124036), !dbg !124037
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !124038
  %i.b = load ptr, ptr %i.a, align 8, !dbg !124038, !alias.scope !124036, !noundef !3164 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !124038
  %i.c = load i64, ptr %1, align 8, !dbg !124038, !range !3390, !alias.scope !124036, !noundef !3164
  %i.d = trunc nuw i64 %i.c to i1, !dbg !124039   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !124039

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.e, label %bb.f, !dbg !124039

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterbEINtNtNtBa_5array4iter8IntoIterRbKj1_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream.exit, !dbg !124039

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !124040
  %.val9.i = load i64, ptr %i.e, align 8, !dbg !124041, !alias.scope !124036, !noundef !3164
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !124041
  %.val10.i = load i64, ptr %i.f, align 8, !dbg !124041, !alias.scope !124036, !noundef !3164
  %i.g = sub nuw i64 %.val10.i, %.val9.i, !dbg !124042 ; 2 uses
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterbEINtNtNtBa_5array4iter8IntoIterRbKj1_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream.exit, !dbg !124041

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !124043
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !124044
  %.val14.i = load ptr, ptr %i.i, align 8, !dbg !124044, !alias.scope !124036, !nonnull !3164, !noundef !3164
  %i.j = ptrtoint ptr %.val14.i to i64, !dbg !124045
  %i.k = ptrtoint ptr %i.b to i64, !dbg !124045
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !124045     ; 3 uses
  %.val.i = load i64, ptr %i.h, align 8, !dbg !124046, !alias.scope !124036, !noundef !3164
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !124046
  %.val8.i = load i64, ptr %i.m, align 8, !dbg !124046, !alias.scope !124036, !noundef !3164
  %i.n = sub nuw i64 %.val8.i, %.val.i, !dbg !124047 ; 2 uses
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.l, i64 %i.n), !dbg !124048
  %i.p = add i64 %i.n, %i.l, !dbg !124049         ; 2 uses
  %i.q = icmp uge i64 %i.p, %i.l, !dbg !124049
  %..i = zext i1 %i.q to i64, !dbg !124049
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterbEINtNtNtBa_5array4iter8IntoIterRbKj1_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream.exit, !dbg !124050

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !124051
  %.val12.i = load ptr, ptr %i.r, align 8, !dbg !124051, !alias.scope !124036, !nonnull !3164, !noundef !3164
  %i.s = ptrtoint ptr %.val12.i to i64, !dbg !124052
  %i.t = ptrtoint ptr %i.b to i64, !dbg !124052
  %i.u = sub nuw i64 %i.s, %i.t, !dbg !124052     ; 2 uses
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterbEINtNtNtBa_5array4iter8IntoIterRbKj1_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream.exit, !dbg !124051

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterbEINtNtNtBa_5array4iter8IntoIterRbKj1_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink20.i = phi i64 [ %i.o, %bb.e ], [ %i.u, %bb.f ], [ %i.g, %bb.d ], [ 0, %bb.c ]
  %..sink.i = phi i64 [ %..i, %bb.e ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.c ]
  %.sink.i = phi i64 [ %i.p, %bb.e ], [ %i.u, %bb.f ], [ %i.g, %bb.d ], [ 0, %bb.c ]
  store i64 %.sink20.i, ptr %0, align 8, !dbg !124053, !alias.scope !124035
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !124053
  store i64 %..sink.i, ptr %i.v, align 8, !dbg !124053, !alias.scope !124035
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !124053
  store i64 %.sink.i, ptr %i.w, align 8, !dbg !124053, !alias.scope !124035
  ret void, !dbg !124054
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREINtNtB6_3map3MapIB12_NtNtB1T_8iterator9AExprIterINtNtBa_6option6OptionNtB1R_10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1T_5aexpr5AExprEEB3u_ENCNvNtB1V_5utils24aexpr_to_leaf_names_iter0ENCNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0s5_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB6c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #28 personality ptr @rust_eh_personality !dbg !124055 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124079), !dbg !124085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124080), !dbg !124085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124081), !dbg !124086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124082), !dbg !124086
  %i.a = load i64, ptr %1, align 8, !dbg !124087, !range !3522, !alias.scope !124083, !noundef !3164
  %.not.i.i = icmp eq i64 %i.a, 3, !dbg !124087
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !124088
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !dbg !124088, !alias.scope !124083
  %.val.i.i.i.fr = freeze ptr %.val.i.i.i, !dbg !124088
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.fr, null, !dbg !124088
  %narrow.i.i = or i1 %.not.i.i, %.not.i.i.i.i.i.i.i, !dbg !124088 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !124089
  %i.d = load i64, ptr %i.c, align 8, !dbg !124089, !range !3522, !alias.scope !124083, !noundef !3164
  %.not54.i.i = icmp eq i64 %i.d, 3, !dbg !124089
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !124090
  %.val.i63.i.i = load ptr, ptr %i.e, align 8, !dbg !124090, !alias.scope !124083
  %.not.i.i.i.i.i64.i.i = icmp eq ptr %.val.i63.i.i, null, !dbg !124090
  %narrow80.i.i = select i1 %.not54.i.i, i1 true, i1 %.not.i.i.i.i.i64.i.i, !dbg !124090 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !124091
  %i.g = load ptr, ptr %i.f, align 8, !dbg !124091, !alias.scope !124083, !noundef !3164 ; 2 uses
  %.not55.i.i = icmp eq ptr %i.g, null, !dbg !124091
  br i1 %.not55.i.i, label %bb.c, label %bb.b, !dbg !124092

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !124093
  %.val62.i.i = load ptr, ptr %i.h, align 8, !dbg !124093, !alias.scope !124083, !nonnull !3164, !noundef !3164
  %i.i = icmp eq ptr %.val62.i.i, %i.g, !dbg !124094
  %op.rdx = and i1 %i.i, %narrow.i.i, !dbg !124094
  %op.rdx1 = select i1 %op.rdx, i1 %narrow80.i.i, i1 false, !dbg !124094
  br i1 %op.rdx1, label %bb.e, label %bb.d, !dbg !124094

bb.c:                                             ; preds = %bb.a
  %or.cond56.i.i = select i1 %narrow.i.i, i1 %narrow80.i.i, i1 false, !dbg !124094
  br i1 %or.cond56.i.i, label %bb.e, label %bb.d, !dbg !124094

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !dbg !124095, !alias.scope !124084
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREINtNtB7_3map3MapIBR_NtNtB1y_8iterator9AExprIterINtNtBb_6option6OptionNtB1w_10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1y_5aexpr5AExprEEB38_ENCNvNtB1A_5utils24aexpr_to_leaf_names_iter0ENCNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0s5_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5Q_.exit, !dbg !124096

bb.e:                                             ; preds = %bb.c, %bb.b
  store i64 0, ptr %0, align 8, !dbg !124097, !alias.scope !124084
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !124097
  store i64 1, ptr %i.j, align 8, !dbg !124097, !alias.scope !124084
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !124097
  store i64 0, ptr %i.k, align 8, !dbg !124097, !alias.scope !124084
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREINtNtB7_3map3MapIBR_NtNtB1y_8iterator9AExprIterINtNtBb_6option6OptionNtB1w_10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1y_5aexpr5AExprEEB38_ENCNvNtB1A_5utils24aexpr_to_leaf_names_iter0ENCNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0s5_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5Q_.exit, !dbg !124098

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREINtNtB7_3map3MapIBR_NtNtB1y_8iterator9AExprIterINtNtBb_6option6OptionNtB1w_10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1y_5aexpr5AExprEEB38_ENCNvNtB1A_5utils24aexpr_to_leaf_names_iter0ENCNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0s5_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5Q_.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !124099
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterjEIB1q_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNCNvMs1_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB2W_11GroupByNode3news_00EENtNtNtB8_6traits8iterator8Iterator9size_hintB30_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #28 personality ptr @rust_eh_personality !dbg !124100 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124141), !dbg !124149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124142), !dbg !124149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124143), !dbg !124150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124144), !dbg !124150
  %i.a = load ptr, ptr %1, align 8, !dbg !124151, !alias.scope !124145, !noundef !3164 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null, !dbg !124151
  br i1 %.not.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit.i.i, label %bb.b, !dbg !124152

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !124153
  %.val4.i.i.i = load ptr, ptr %i.b, align 8, !dbg !124153, !alias.scope !124146, !nonnull !3164, !noundef !3164
  %i.c = ptrtoint ptr %.val4.i.i.i to i64, !dbg !124154
  %i.d = ptrtoint ptr %i.a to i64, !dbg !124154
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !124154
  %i.f = udiv exact i64 %i.e, 24, !dbg !124154
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !124153

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.b, %bb.a
  %.sroa.7.0.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ], !dbg !124155
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !124156
  %i.h = load ptr, ptr %i.g, align 8, !dbg !124156, !alias.scope !124145, !noundef !3164 ; 2 uses
  %.not54.i.i = icmp eq ptr %i.h, null, !dbg !124156
  br i1 %.not54.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit65.i.i, label %bb.c, !dbg !124157

bb.c:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !124158
  %.val4.i64.i.i = load ptr, ptr %i.i, align 8, !dbg !124158, !alias.scope !124147, !nonnull !3164, !noundef !3164
  %i.j = ptrtoint ptr %.val4.i64.i.i to i64, !dbg !124159
  %i.k = ptrtoint ptr %i.h to i64, !dbg !124159
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !124159
  %i.m = udiv exact i64 %i.l, 24, !dbg !124159
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit65.i.i, !dbg !124158

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit65.i.i: ; preds = %bb.c, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.m, %bb.c ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit.i.i ], !dbg !124160
  %i.n = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i, !dbg !124161 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !124162
  %i.p = load ptr, ptr %i.o, align 8, !dbg !124162, !alias.scope !124145, !noundef !3164 ; 2 uses
  %.not55.i.i = icmp eq ptr %i.p, null, !dbg !124162
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val62.i.i = load ptr, ptr %i.q, align 8, !alias.scope !124145, !nonnull !3164
  %i.r = icmp eq ptr %.val62.i.i, %i.p
  %or.cond.i.i = select i1 %.not55.i.i, i1 true, i1 %i.r, !dbg !124163
  br i1 %or.cond.i.i, label %bb.d, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterjEIB15_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNCNvMs1_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB2B_11GroupByNode3news_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB2F_.exit, !dbg !124163

bb.d:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit65.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !124164
  store i64 %i.n, ptr %i.s, align 8, !dbg !124164, !alias.scope !124148
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterjEIB15_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNCNvMs1_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB2B_11GroupByNode3news_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB2F_.exit, !dbg !124165

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterjEIB15_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNCNvMs1_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB2B_11GroupByNode3news_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB2F_.exit: ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit65.i.i, %bb.d
  %.sink.i.i = phi i64 [ 1, %bb.d ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2g09Ig8GZd6_13polars_stream.exit65.i.i ], !dbg !124166
  store i64 %i.n, ptr %0, align 8, !dbg !124166, !alias.scope !124148
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !124166
  store i64 %.sink.i.i, ptr %i.t, align 8, !dbg !124166, !alias.scope !124148
  ret void, !dbg !124167
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1Y_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 !dbg !124168 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !124184, !nonnull !3164, !noundef !3164
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !124184
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !124184, !nonnull !3164, !noundef !3164
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !124185
  %i.c = ptrtoint ptr %.val to i64, !dbg !124185
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !124185
  %i.e = udiv exact i64 %i.d, 56, !dbg !124185    ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !124186, !alias.scope !124183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !124186
  store i64 1, ptr %i.f, align 8, !dbg !124186, !alias.scope !124183
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !124186
  store i64 %i.e, ptr %i.g, align 8, !dbg !124186, !alias.scope !124183
  ret void, !dbg !124187
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 !dbg !124188 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !124197, !nonnull !3164, !noundef !3164
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !124197
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !124197, !nonnull !3164, !noundef !3164
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !124198
  %i.c = ptrtoint ptr %.val to i64, !dbg !124198
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !124198
  %i.e = udiv exact i64 %i.d, 80, !dbg !124198    ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !124199, !alias.scope !124196
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !124199
  store i64 1, ptr %i.f, align 8, !dbg !124199, !alias.scope !124196
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !124199
  store i64 %i.e, ptr %i.g, align 8, !dbg !124199, !alias.scope !124196
  ret void, !dbg !124200
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 !dbg !124201 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !124217, !nonnull !3164, !noundef !3164
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !124217
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !124217, !nonnull !3164, !noundef !3164
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !124218
  %i.c = ptrtoint ptr %.val to i64, !dbg !124218
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !124218
  %i.e = udiv exact i64 %i.d, 104, !dbg !124218   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !124219, !alias.scope !124216
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !124219
  store i64 1, ptr %i.f, align 8, !dbg !124219, !alias.scope !124216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !124219
  store i64 %i.e, ptr %i.g, align 8, !dbg !124219, !alias.scope !124216
  ret void, !dbg !124220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCse4dvU5uQ85g_8indexmap6BucketmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 !dbg !124221 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !124237, !nonnull !3164, !noundef !3164
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !124237
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !124237, !nonnull !3164, !noundef !3164
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !124238
  %i.c = ptrtoint ptr %.val to i64, !dbg !124238
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !124238
  %i.e = udiv exact i64 %i.d, 112, !dbg !124238   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !124239, !alias.scope !124236
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !124239
  store i64 1, ptr %i.f, align 8, !dbg !124239, !alias.scope !124236
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !124239
  store i64 %i.e, ptr %i.g, align 8, !dbg !124239, !alias.scope !124236
  ret void, !dbg !124240
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCse4dvU5uQ85g_8indexmap6BucketmuEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 !dbg !124241 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !124257, !nonnull !3164, !noundef !3164
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !124257
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !124257, !nonnull !3164, !noundef !3164
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !124258
  %i.c = ptrtoint ptr %.val to i64, !dbg !124258
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !124258
  %i.e = lshr exact i64 %i.d, 4, !dbg !124258     ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !124259, !alias.scope !124256
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !124259
  store i64 1, ptr %i.f, align 8, !dbg !124259, !alias.scope !124256
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !124259
  store i64 %i.e, ptr %i.g, align 8, !dbg !124259, !alias.scope !124256
  ret void, !dbg !124260
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef ptr @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 !dbg !124261 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !124283, !alias.scope !124279, !nonnull !3164, !noundef !3164 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !124284
  %i.c = load ptr, ptr %i.b, align 8, !dbg !124284, !alias.scope !124279, !nonnull !3164, !noundef !3164
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !124285
  br i1 %i.d, label %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !124286

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !124287
  store ptr %i.e, ptr %0, align 8, !dbg !124288, !alias.scope !124279
  %.val = load ptr, ptr %i.a, align 8, !dbg !124289, !nonnull !3164, !noundef !3164 ; 2 uses
  %i.f = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !dbg !124290
  %i.g = icmp slt i64 %i.f, 0, !dbg !124291
  br i1 %i.g, label %bb.c, label %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit, !dbg !124291

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !124292
  unreachable, !dbg !124292

_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %.val, %bb.b ], [ null, %bb.a ], !dbg !124293
  ret ptr %.sroa.0.0, !dbg !124294
}

end_hunk_0
