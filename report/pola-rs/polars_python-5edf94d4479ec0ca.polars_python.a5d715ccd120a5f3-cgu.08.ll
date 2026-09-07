Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.08?download=true
inline.NumInlined: 15281
inline.NumDeleted: 4910
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvNtCs39HECPMKlmJ_7ndarray9dimension28can_index_slice_with_stridesxINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python:bb.a
  %..i = select i1 %i.au, i8 4, i8 0, !dbg !26803
  br label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_slicexINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, !dbg !26803

_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_slicexINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.k, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i, %_RINvNtCs39HECPMKlmJ_7ndarray9dimension18dim_stride_overlapINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.thread.i.i, %bb.h, %_RNvXsh_NtNtCs39HECPMKlmJ_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit8.1.i.i.i, %bb.g, %bb.f, %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.thread.i.i, %bb.e, %bb.d, %._crit_edge.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i.i
  %.sroa.0.0 = phi i8 [ 0, %bb.f ], [ 6, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i.i ], [ 5, %bb.g ], [ 6, %bb.d ], [ 6, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i.i ], [ 6, %._crit_edge.i.i ], [ 5, %bb.h ], [ %spec.select1.i.i, %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.thread.i.i ], [ %.mux.i.i, %bb.e ], [ 0, %_RNvXsh_NtNtCs39HECPMKlmJ_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit8.1.i.i.i ], [ 0, %_RINvNtCs39HECPMKlmJ_7ndarray9dimension18dim_stride_overlapINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.thread.i.i ], [ %..i, %bb.k ], [ 6, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i ], [ 6, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i ], !dbg !26804
  ret i8 %.sroa.0.0, !dbg !26805
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 7) i8 @_RINvNtCs39HECPMKlmJ_7ndarray9dimension28can_index_slice_with_stridesyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26806 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = load i64, ptr %3, align 8, !dbg !26915, !range !5010, !noundef !4872
  %i.c = icmp eq i64 %i.b, 2, !dbg !26916
  br i1 %i.c, label %bb.b, label %bb.j, !dbg !26916

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !26917 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26899), !dbg !26918
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26900), !dbg !26918
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26901), !dbg !26919
  %i.e = load i64, ptr %2, align 8, !dbg !26920, !alias.scope !26902, !noalias !26903, !noundef !4872 ; 2 uses
  %spec.select.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1), !dbg !26921 ; 2 uses
  %.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !26922
  %i.f = load i64, ptr %.ptr.1.i.i.i, align 8, !dbg !26920, !alias.scope !26902, !noalias !26903, !noundef !4872 ; 2 uses
  %.not.i.i.1.i.i.i = icmp eq i64 %i.f, 0, !dbg !26923 ; 2 uses
  br i1 %.not.i.i.1.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i.i, !dbg !26921

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i.i: ; preds = %bb.b
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %spec.select.i.i.i, i64 %i.f), !dbg !26924 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1, !dbg !26924
  %i.i = extractvalue { i64, i1 } %i.g, 0, !dbg !26924
  br i1 %i.h, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i.i, !dbg !26925

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i.i, %bb.b
  %.3.i16.i.1.i.i.i = phi i64 [ %i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i.i ], [ %spec.select.i.i.i, %bb.b ]
  %i.j = icmp slt i64 %.3.i16.i.1.i.i.i, 0, !dbg !26926
  br i1 %i.j, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i.i, !dbg !26926

_RINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26927, !noalias !26904
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !26928
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !26929
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterjEBW_EINtB5_7ZipImplBW_BW_E3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, ptr noundef nonnull readonly %i.k, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.d, ptr noundef nonnull readonly %i.l), !dbg !26930, !noalias !26905
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26906), !dbg !26931
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !26907, !noalias !26904, !noundef !4872 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !26907, !noalias !26904 ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !26906, !noalias !26904, !nonnull !4872
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !26906, !noalias !26904, !nonnull !4872
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 %i.o), !dbg !26932
  %exitcond.not.i27.not.i.i = icmp ult i64 %.promoted.i.i.i, %i.o, !dbg !26933
  br i1 %exitcond.not.i27.not.i.i, label %.lr.ph.i.i, label %.thread.i, !dbg !26933

.thread.i:                                        ; preds = %_RINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26934, !noalias !26904
  br label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension34max_abs_offset_check_overflow_implINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i, !dbg !26935

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = add i64 %i.r, 1, !dbg !26936             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %umax.i.i.i, !dbg !26933
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !26933

.lr.ph.i.i:                                       ; preds = %_RINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i.i, %bb.c
  %.sroa.01.0.i28.i.i = phi i64 [ %i.y, %bb.c ], [ 0, %_RINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i.i ] ; 2 uses
  %i.r = phi i64 [ %i.q, %bb.c ], [ %.promoted.i.i.i, %_RINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i.i.i, i64 %i.r, !dbg !26937
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.r, !dbg !26938
  %.val.i.i.i = load i64, ptr %i.s, align 8, !dbg !26939, !noalias !26908, !noundef !4872
  %.val13.i.i.i = load i64, ptr %i.t, align 8, !dbg !26939, !noalias !26908, !noundef !4872
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %.val.i.i.i, i64 1), !dbg !26940
  %.sroa.05.0.i.i.i.i = tail call i64 @llvm.abs.i64(i64 %.val13.i.i.i, i1 false), !dbg !26941
  %i.v = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %.sroa.05.0.i.i.i.i), !dbg !26942 ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1, !dbg !26942
  %i.x = extractvalue { i64, i1 } %i.v, 0, !dbg !26943
  %i.y = add i64 %i.x, %.sroa.01.0.i28.i.i, !dbg !26943 ; 4 uses
  %i.z = icmp ult i64 %i.y, %.sroa.01.0.i28.i.i, !dbg !26943
  %i.aa = or i1 %i.w, %i.z, !dbg !26944
  br i1 %i.aa, label %bb.d, label %bb.c, !dbg !26939

._crit_edge.i.i:                                  ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26934, !noalias !26904
  %or.cond.i = icmp ult i64 %i.y, 1152921504606846976, !dbg !26945
  br i1 %or.cond.i, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension34max_abs_offset_check_overflow_implINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, !dbg !26945, !prof !5293

bb.d:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26934, !noalias !26904
  br label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, !dbg !26946

_RINvNtCs39HECPMKlmJ_7ndarray9dimension34max_abs_offset_check_overflow_implINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i: ; preds = %._crit_edge.i.i, %.thread.i
  %.sroa.01.0.i.lcssa38.i12.i = phi i64 [ 0, %.thread.i ], [ %i.y, %._crit_edge.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26909), !dbg !26947
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26910), !dbg !26947
  %i.ab = icmp eq i64 %i.e, 0, !dbg !26948
  %or.cond.i.i = or i1 %i.ab, %.not.i.i.1.i.i.i, !dbg !26949
  br i1 %or.cond.i.i, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.thread.i.i, label %bb.e, !dbg !26949

bb.e:                                             ; preds = %_RINvNtCs39HECPMKlmJ_7ndarray9dimension34max_abs_offset_check_overflow_implINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i
  %.not.i.i = icmp samesign uge i64 %.sroa.01.0.i.lcssa38.i12.i, %1, !dbg !26950 ; 2 uses
  %brmerge.i.i = or i1 %4, %.not.i.i, !dbg !26950
  %.mux.i.i = select i1 %.not.i.i, i8 4, i8 0, !dbg !26950
  br i1 %brmerge.i.i, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, label %bb.f, !dbg !26950

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.thread.i.i: ; preds = %_RINvNtCs39HECPMKlmJ_7ndarray9dimension34max_abs_offset_check_overflow_implINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.i
  %i.ac = icmp samesign ugt i64 %.sroa.01.0.i.lcssa38.i12.i, %1, !dbg !26951
  %spec.select1.i.i = select i1 %i.ac, i8 4, i8 0, !dbg !26951
  br label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, !dbg !26951

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26911), !dbg !26952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26912), !dbg !26952
  %.val.i.i4.i = load i64, ptr %i.d, align 8, !dbg !26953, !alias.scope !26913, !noalias !26914, !noundef !4872
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !26953
  %.val9.i.i.i = load i64, ptr %i.ad, align 8, !dbg !26953, !alias.scope !26913, !noalias !26914, !noundef !4872
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.abs.i64(i64 %.val.i.i4.i, i1 false), !dbg !26954
  %.sroa.01.0.i.i.i.i = tail call i64 @llvm.abs.i64(i64 %.val9.i.i.i, i1 false), !dbg !26955
  %.not.i.i.i.i = icmp sgt i64 %.sroa.0.0.i.i.i.i, %.sroa.01.0.i.i.i.i, !dbg !26956 ; 2 uses
  %not..not.i.i.i.i = xor i1 %.not.i.i.i.i, true, !dbg !26956
  %spec.select2.i.i.i.i = zext i1 %not..not.i.i.i.i to i64, !dbg !26956 ; 2 uses
  %spec.select.i.i.i.i = zext i1 %.not.i.i.i.i to i64, !dbg !26956 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %spec.select.i.i.i.i, !dbg !26957
  %i.af = load i64, ptr %i.ae, align 8, !dbg !26958, !alias.scope !26914, !noalias !26913, !noundef !4872 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %spec.select.i.i.i.i, !dbg !26959
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !26960, !alias.scope !26913, !noalias !26914, !noundef !4872
  %.sroa.05.0.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.ah, i1 false), !dbg !26961 ; 2 uses
  switch i64 %i.af, label %bb.g [
    i64 0, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit
    i64 1, label %_RNvXsh_NtNtCs39HECPMKlmJ_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit8.1.i.i.i
  ], !dbg !26962

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i, 0, !dbg !26963
  br i1 %.not.i.i.i, label %bb.i, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, !dbg !26963

_RNvXsh_NtNtCs39HECPMKlmJ_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit8.1.i.i.i: ; preds = %bb.i, %bb.f
  %.sroa.01.1.i.i.i = phi i64 [ %i.an, %bb.i ], [ 0, %bb.f ], !dbg !26964
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %spec.select2.i.i.i.i, !dbg !26957
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !26958, !alias.scope !26914, !noalias !26913, !noundef !4872
  switch i64 %i.aj, label %bb.h [
    i64 0, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit
    i64 1, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension18dim_stride_overlapINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.thread.i.i
  ], !dbg !26962

bb.h:                                             ; preds = %_RNvXsh_NtNtCs39HECPMKlmJ_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit8.1.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %spec.select2.i.i.i.i, !dbg !26959
  %i.al = load i64, ptr %i.ak, align 8, !dbg !26960, !alias.scope !26913, !noalias !26914, !noundef !4872
  %.sroa.05.0.1.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.al, i1 false), !dbg !26961
  %.not.1.i.i.i = icmp sgt i64 %.sroa.05.0.1.i.i.i, %.sroa.01.1.i.i.i, !dbg !26963
  br i1 %.not.1.i.i.i, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension18dim_stride_overlapINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, !dbg !26963

bb.i:                                             ; preds = %bb.g
  %i.am = add i64 %i.af, -1, !dbg !26965
  %i.an = mul i64 %.sroa.05.0.i.i.i, %i.am, !dbg !26965
  br label %_RNvXsh_NtNtCs39HECPMKlmJ_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit8.1.i.i.i, !dbg !26966

_RINvNtCs39HECPMKlmJ_7ndarray9dimension18dim_stride_overlapINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %bb.h, %_RNvXsh_NtNtCs39HECPMKlmJ_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit8.1.i.i.i
  br label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, !dbg !26952

bb.j:                                             ; preds = %bb.a
  %.val = load i64, ptr %2, align 8, !dbg !26967, !alias.scope !5303, !noalias !5304, !noundef !4872 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !26967
  %.val1 = load i64, ptr %i.ao, align 8, !dbg !26967, !alias.scope !5303, !noalias !5304, !noundef !4872 ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %.val, i64 1), !dbg !26968 ; 2 uses
  %.not.i.i.1.i.i = icmp eq i64 %.val1, 0, !dbg !26969
  br i1 %.not.i.i.1.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i, !dbg !26968

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i: ; preds = %bb.j
  %i.ap = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %spec.select.i.i, i64 %.val1), !dbg !26970 ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1, !dbg !26970
  %i.ar = extractvalue { i64, i1 } %i.ap, 0, !dbg !26970
  br i1 %i.aq, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i, !dbg !26971

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i, %bb.j
  %.3.i16.i.1.i.i = phi i64 [ %i.ar, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i ], [ %spec.select.i.i, %bb.j ]
  %i.as = icmp slt i64 %.3.i16.i.1.i.i, 0, !dbg !26972
  br i1 %i.as, label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, label %bb.k, !dbg !26972

bb.k:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i
  %i.at = mul i64 %.val1, %.val, !dbg !26973
  %i.au = icmp ugt i64 %i.at, %1, !dbg !26974
  %..i = select i1 %i.au, i8 4, i8 0, !dbg !26975
  br label %_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit, !dbg !26975

_RINvNtCs39HECPMKlmJ_7ndarray9dimension15can_index_sliceyINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.k, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i, %_RINvNtCs39HECPMKlmJ_7ndarray9dimension18dim_stride_overlapINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.thread.i.i, %bb.h, %_RNvXsh_NtNtCs39HECPMKlmJ_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit8.1.i.i.i, %bb.g, %bb.f, %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.thread.i.i, %bb.e, %bb.d, %._crit_edge.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i.i
  %.sroa.0.0 = phi i8 [ 0, %bb.f ], [ 6, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i.i ], [ 5, %bb.g ], [ 6, %bb.d ], [ 6, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i.i ], [ 6, %._crit_edge.i.i ], [ 5, %bb.h ], [ %spec.select1.i.i, %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.thread.i.i ], [ %.mux.i.i, %bb.e ], [ 0, %_RNvXsh_NtNtCs39HECPMKlmJ_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5index.exit8.1.i.i.i ], [ 0, %_RINvNtCs39HECPMKlmJ_7ndarray9dimension18dim_stride_overlapINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python.exit.thread.i.i ], [ %..i, %bb.k ], [ 6, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.i.1.i.i ], [ 6, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCs39HECPMKlmJ_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CseeLknQCOKOd_13polars_python.exit.thread.i.1.i.i ], !dbg !26976
  ret i8 %.sroa.0.0, !dbg !26977
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB2_3dim3DimAjj2_EECseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26978 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27037
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27038
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27039
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterjEBW_EINtB5_7ZipImplBW_BW_E3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull readonly align 8 %1, ptr noundef nonnull readonly %i.c), !dbg !27040
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27031), !dbg !27041
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !27042
  %.val.i = load i64, ptr %i.d, align 8, !dbg !27042, !alias.scope !27031, !noundef !4872 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !27042
  %.val13.i = load i64, ptr %i.e, align 8, !dbg !27042, !alias.scope !27031, !noundef !4872 ; 3 uses
  %i.f = sub i64 %.val13.i, %.val.i, !dbg !27043  ; 3 uses
  %.not.i = icmp eq i64 %.val13.i, %.val.i, !dbg !27044
  br i1 %.not.i, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit, label %.lr.ph.i, !dbg !27045

.lr.ph.i:                                         ; preds = %bb.a
  %.val1.i.i = load ptr, ptr %i.a, align 8, !alias.scope !27035, !nonnull !4872, !noundef !4872 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !27035, !nonnull !4872, !noundef !4872 ; 3 uses
  %.neg = add i64 %.val.i, 1, !dbg !27045
  %xtraiter = and i64 %i.f, 1, !dbg !27045
  %i.h = icmp eq i64 %.val13.i, %.neg, !dbg !27045
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new, !dbg !27045

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.f, -2, !dbg !27045
  br label %bb.b, !dbg !27045

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.017.i = phi i64 [ 0, %.lr.ph.i.new ], [ %.sroa.0.0.i.i.1, %bb.b ]
  %.sroa.02.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.i = or disjoint i64 %.sroa.02.016.i, 1, !dbg !27046
  %i.j = add i64 %.sroa.02.016.i, %.val.i, !dbg !27047 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.j, !dbg !27048
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.j, !dbg !27049
  %.val14.i = load i64, ptr %i.k, align 8, !dbg !27050, !noalias !27031, !noundef !4872 ; 2 uses
  %.val15.i = load i64, ptr %i.l, align 8, !dbg !27050, !noalias !27031, !noundef !4872 ; 2 uses
  %i.m = icmp slt i64 %.val15.i, 0, !dbg !27051
  %i.n = icmp ugt i64 %.val14.i, 1
  %or.cond.i.i = and i1 %i.n, %i.m, !dbg !27051
  %i.o = add i64 %.val14.i, -1, !dbg !27051
  %i.p = mul i64 %.val15.i, %i.o, !dbg !27051
  %i.q = select i1 %or.cond.i.i, i64 %i.p, i64 0, !dbg !27051
  %i.r = add nuw i64 %.sroa.02.016.i, 2, !dbg !27046 ; 2 uses
  %i.s = add i64 %i.i, %.val.i, !dbg !27047       ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.s, !dbg !27048
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.s, !dbg !27049
  %.val14.i.1 = load i64, ptr %i.t, align 8, !dbg !27050, !noalias !27031, !noundef !4872 ; 2 uses
  %.val15.i.1 = load i64, ptr %i.u, align 8, !dbg !27050, !noalias !27031, !noundef !4872 ; 2 uses
  %i.v = icmp slt i64 %.val15.i.1, 0, !dbg !27051
  %i.w = icmp ugt i64 %.val14.i.1, 1
  %or.cond.i.i.1 = and i1 %i.w, %i.v, !dbg !27051
  %i.x = add i64 %.val14.i.1, -1, !dbg !27051
  %i.y = mul i64 %.val15.i.1, %i.x, !dbg !27051
  %i.z = select i1 %or.cond.i.i.1, i64 %i.y, i64 0, !dbg !27051
  %i.aa = add i64 %i.q, %i.z, !dbg !27051
  %.sroa.0.0.i.i.1 = sub i64 %.sroa.0.017.i, %i.aa, !dbg !27051 ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !27045  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !27045
  br i1 %niter.ncmp.1, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa, label %bb.b, !dbg !27045

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !27045
  br i1 %lcmp.mod.not, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit, label %.epil.preheader, !dbg !27045

.epil.preheader:                                  ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.017.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0.0.i.i.1, %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa ]
  %.sroa.02.016.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = trunc i64 %i.f to i1, !dbg !27045
  tail call void @llvm.assume(i1 %lcmp.mod2), !dbg !27045
  %i.ab = add i64 %.sroa.02.016.i.epil.init, %.val.i, !dbg !27047 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.ab, !dbg !27048
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ab, !dbg !27049
  %.val14.i.epil = load i64, ptr %i.ac, align 8, !dbg !27050, !noalias !27031, !noundef !4872 ; 2 uses
  %.val15.i.epil = load i64, ptr %i.ad, align 8, !dbg !27050, !noalias !27031, !noundef !4872 ; 2 uses
  %i.ae = icmp slt i64 %.val15.i.epil, 0, !dbg !27051
  %i.af = icmp ugt i64 %.val14.i.epil, 1
  %or.cond.i.i.epil = and i1 %i.af, %i.ae, !dbg !27051
  %i.ag = add i64 %.val14.i.epil, -1, !dbg !27051
  %i.ah = mul i64 %.val15.i.epil, %i.ag, !dbg !27051
  %i.ai = select i1 %or.cond.i.i.epil, i64 %i.ah, i64 0, !dbg !27051
  %.sroa.0.0.i.i.epil = sub i64 %.sroa.0.017.i.epil.init, %i.ai, !dbg !27051
  br label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit, !dbg !27052

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit: ; preds = %.epil.preheader, %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.i.i.1, %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterjEBX_EINtB6_7ZipImplBX_BX_E4foldiNCINvNtCs39HECPMKlmJ_7ndarray9dimension39offset_from_low_addr_ptr_to_logical_ptrINtNtB1Z_3dim3DimAjj2_EE0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.epil, %.epil.preheader ], !dbg !27053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27052
  ret i64 %.sroa.0.0.lcssa.i, !dbg !27054
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtCs7mBf7xsg8h_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECseeLknQCOKOd_13polars_python() unnamed_addr #3 personality ptr @rust_eh_personality !dbg !27055 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE0023___RUST_STD_INTERNAL_VAL), !dbg !27239 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !27240
  %i.e = load i8, ptr %i.d, align 8, !dbg !27241, !range !5323, !noalias !27220, !noundef !4872
  %i.f = icmp eq i8 %i.e, 1, !dbg !27242
  br i1 %i.f, label %_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i, label %_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i, !dbg !27242, !prof !5231

_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.a
  %i.g = tail call noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8 %i.c, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !dbg !27243 ; 2 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !27244
  br i1 %i.h, label %bb.i, label %_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i, !dbg !27244

_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i: ; preds = %_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i, %bb.a
  %.sroa.0.0.i.i.i2.i = phi ptr [ %i.g, %_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i ], [ %i.c, %bb.a ]
  %.val.i = load ptr, ptr %.sroa.0.0.i.i.i2.i, align 8, !dbg !27245, !noundef !4872 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !27246
  store ptr %.val.i, ptr %i.b, align 8, !dbg !27247
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 2072, !dbg !27248 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !27249, !noundef !4872 ; 3 uses
  %i.k = icmp eq i64 %i.j, -1, !dbg !27250
  br i1 %i.k, label %bb.c, label %bb.b, !dbg !27251, !prof !4934

bb.b:                                             ; preds = %_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i
  %i.l = add nuw i64 %i.j, 1, !dbg !27250
  store i64 %i.l, ptr %i.i, align 8, !dbg !27252
  %i.m = icmp eq i64 %i.j, 0, !dbg !27253
  br i1 %i.m, label %bb.e, label %bb.u, !dbg !27253

bb.c:                                             ; preds = %_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @735) #54
          to label %bb.g unwind label %bb.d, !dbg !27254

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECseeLknQCOKOd_13polars_python(ptr nonnull align 128 %.val.i) #56
          to label %common.resume unwind label %bb.h, !dbg !27255

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 8, !dbg !27256 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !27257, !nonnull !4872, !noundef !4872
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 384, !dbg !27258
  %i.r = load atomic i64, ptr %i.q monotonic, align 8, !dbg !27259
  %i.s = or i64 %i.r, 1, !dbg !27260
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 2176, !dbg !27261
  %i.u = cmpxchg ptr %i.t, i64 0, i64 %i.s seq_cst seq_cst, align 8, !dbg !27262 ; 0 uses
  fence syncscope("singlethread") seq_cst, !dbg !27263
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 2088, !dbg !27264 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !27265, !noundef !4872 ; 2 uses
  %i.x = add i64 %i.w, 1, !dbg !27266
  store i64 %i.x, ptr %i.v, align 8, !dbg !27267
  %i.y = and i64 %i.w, 127, !dbg !27268
  %i.z = icmp eq i64 %i.y, 0, !dbg !27268
  br i1 %i.z, label %bb.f, label %bb.u, !dbg !27268, !prof !4934

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.o, align 8, !dbg !27269, !nonnull !4872, !noundef !4872
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128, !dbg !27270
  invoke void @_RNvMs5_NtCs7mBf7xsg8h_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.u unwind label %bb.d, !dbg !27271

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !27272
  unreachable, !dbg !27272

common.resume:                                    ; preds = %.body.i, %bb.q, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.ak, %bb.q ], [ %i.ak, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !27273

bb.i:                                             ; preds = %_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i
  %i.ad = tail call noundef nonnull align 8 ptr @_RNvNtCs7mBf7xsg8h_15crossbeam_epoch7default9collector(), !dbg !27274
  %i.ae = tail call noundef ptr @_RNvMs1_NtCs7mBf7xsg8h_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad), !dbg !27275 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27276
  store ptr %i.ae, ptr %i.a, align 8, !dbg !27277
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2072, !dbg !27278 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !27279, !noundef !4872 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, -1, !dbg !27280
  br i1 %i.ah, label %bb.k, label %bb.j, !dbg !27281, !prof !4934

bb.j:                                             ; preds = %bb.i
  %i.ai = add nuw i64 %i.ag, 1, !dbg !27280
  store i64 %i.ai, ptr %i.af, align 8, !dbg !27282
  %i.aj = icmp eq i64 %i.ag, 0, !dbg !27283
  br i1 %i.aj, label %bb.m, label %bb.r, !dbg !27283

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @735) #54
          to label %bb.o unwind label %bb.l, !dbg !27284

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch5guard5GuardECseeLknQCOKOd_13polars_python(ptr nonnull align 128 %i.ae) #56
          to label %.body.i unwind label %bb.p, !dbg !27285

bb.m:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !27286 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !dbg !27287, !nonnull !4872, !noundef !4872
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 384, !dbg !27288
  %i.ao = load atomic i64, ptr %i.an monotonic, align 8, !dbg !27289
  %i.ap = or i64 %i.ao, 1, !dbg !27290
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 2176, !dbg !27291
  %i.ar = cmpxchg ptr %i.aq, i64 0, i64 %i.ap seq_cst seq_cst, align 8, !dbg !27292 ; 0 uses
  fence syncscope("singlethread") seq_cst, !dbg !27293
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 2088, !dbg !27294 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !dbg !27295, !noundef !4872 ; 2 uses
  %i.au = add i64 %i.at, 1, !dbg !27296
  store i64 %i.au, ptr %i.as, align 8, !dbg !27297
  %i.av = and i64 %i.at, 127, !dbg !27298
  %i.aw = icmp eq i64 %i.av, 0, !dbg !27298
  br i1 %i.aw, label %bb.n, label %bb.r, !dbg !27298, !prof !4934

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.al, align 8, !dbg !27299, !nonnull !4872, !noundef !4872
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128, !dbg !27300
  invoke void @_RNvMs5_NtCs7mBf7xsg8h_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.r unwind label %bb.l, !dbg !27301

bb.o:                                             ; preds = %bb.k
  unreachable

bb.p:                                             ; preds = %bb.l
end_hunk_0
