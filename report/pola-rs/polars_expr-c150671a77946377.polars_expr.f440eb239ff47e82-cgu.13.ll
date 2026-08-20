inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldaauNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss_0NCINvNvB1v_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5h_3VecaE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !60873, !noalias !60786
  resume { ptr, i32 } %i.ac, !dbg !60884

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.z, %bb.e ], !dbg !60885
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !60885, !noalias !60786
  ret void, !dbg !60892
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldaauQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3M_10UInt32TypeE0NCINvNvB1v_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5r_3VecaE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !60893 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !60894 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !60894
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !60894 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !60897
  %i.a = icmp eq ptr %0, %1, !dbg !60906
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5z_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.b, !dbg !60907

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !60894
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !60894
  %i.b = ptrtoint ptr %1 to i64, !dbg !60908
  %i.c = ptrtoint ptr %0 to i64, !dbg !60908
  %i.d = sub i64 %i.b, %i.c, !dbg !60908          ; 2 uses
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !60920
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 1, i64 %i.d, i1 false), !dbg !60921, !noalias !60934
  %i.e = add i64 %i.d, %.sroa.5.0.copyload, !dbg !60920
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5z_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, !dbg !60945

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaauQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5z_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %i.e, %bb.b ], [ %.sroa.5.0.copyload, %bb.a ], !dbg !60946
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !60946, !noalias !60956
  ret void, !dbg !60957
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, double noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !60958 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !60959
  %i.a = icmp eq ptr %0, %1, !dbg !60968
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !60969

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !60970
  %i.c = ptrtoint ptr %0 to i64, !dbg !60970
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !60970      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !60970      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !60982
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !60982

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !60982

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !60983 ; 2 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi2 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !60984 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !60988
  %wide.load = load <2 x double>, ptr %i.f, align 8, !dbg !60988
  %wide.load3 = load <2 x double>, ptr %i.g, align 8, !dbg !60988
  %i.h = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %vec.phi, <2 x double> %wide.load), !dbg !60989 ; 2 uses
  %i.i = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %vec.phi2, <2 x double> %wide.load3), !dbg !60989 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !60983 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !60999
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !60999, !llvm.loop !61000

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %i.h, <2 x double> %i.i), !dbg !60999
  %i.k = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax), !dbg !60999 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !60999
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !60999

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi double [ %2, %bb.b ], [ %i.k, %middle.block ]
  br label %scalar.ph, !dbg !60999

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !60983 ; 2 uses
  %.sroa.02.0.i = phi double [ %i.m, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !61001
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !60984
  %.val.i = load double, ptr %i.l, align 8, !dbg !60988, !noundef !14
  %i.m = tail call nsz noundef double @llvm.maximumnum.f64(double %.sroa.02.0.i, double %.val.i), !dbg !60989 ; 2 uses
  %i.n = add nuw i64 %.sroa.04.0.i, 1, !dbg !61002 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.e, !dbg !60999
  br i1 %i.o, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !60999, !llvm.loop !61005

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi double [ %2, %bb.a ], [ %i.k, %middle.block ], [ %i.m, %scalar.ph ], !dbg !61001
  ret double %.sroa.0.0.i, !dbg !61006
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, double noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !61007 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61008
  %i.a = icmp eq ptr %0, %1, !dbg !61017
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !61018

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61019
  %i.c = ptrtoint ptr %0 to i64, !dbg !61019
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61019      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61019      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !61031
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !61031

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !61031

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61032 ; 2 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi2 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !61033 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !61037
  %wide.load = load <2 x double>, ptr %i.f, align 8, !dbg !61037
  %wide.load3 = load <2 x double>, ptr %i.g, align 8, !dbg !61037
  %i.h = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %vec.phi, <2 x double> %wide.load), !dbg !61038 ; 2 uses
  %i.i = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %vec.phi2, <2 x double> %wide.load3), !dbg !61038 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !61032 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !61048
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !61048, !llvm.loop !61049

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %i.h, <2 x double> %i.i), !dbg !61048
  %i.k = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax), !dbg !61048 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !61048
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !61048

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi double [ %2, %bb.b ], [ %i.k, %middle.block ]
  br label %scalar.ph, !dbg !61048

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !61032 ; 2 uses
  %.sroa.02.0.i = phi double [ %i.m, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !61050
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !61033
  %.val.i = load double, ptr %i.l, align 8, !dbg !61037, !noundef !14
  %i.m = tail call nsz noundef double @llvm.minimumnum.f64(double %.sroa.02.0.i, double %.val.i), !dbg !61038 ; 2 uses
  %i.n = add nuw i64 %.sroa.04.0.i, 1, !dbg !61051 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.e, !dbg !61048
  br i1 %i.o, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !61048, !llvm.loop !61054

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi double [ %2, %bb.a ], [ %i.k, %middle.block ], [ %i.m, %scalar.ph ], !dbg !61050
  ret double %.sroa.0.0.i, !dbg !61055
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, double noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !61056 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61057
  %i.a = icmp eq ptr %0, %1, !dbg !61066
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !61067

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61068
  %i.c = ptrtoint ptr %0 to i64, !dbg !61068
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61068      ; 3 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61068      ; 2 uses
  %i.f = icmp eq i64 %i.d, 8, !dbg !61080
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !61080

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !61080
  br label %bb.c, !dbg !61080

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.p, %bb.c ], !dbg !61081 ; 3 uses
  %.sroa.02.0.i = phi double [ %2, %.new ], [ %..i.i.i.i.1, %bb.c ], !dbg !61082 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !61083
  %.val.i = load double, ptr %i.g, align 8, !dbg !61087, !noundef !14 ; 2 uses
  %i.h = fcmp ogt double %.sroa.02.0.i, %.val.i, !dbg !61088
  %i.i = fcmp uno double %.sroa.02.0.i, 0.000000e+00, !dbg !61095
  %i.j = or i1 %i.i, %i.h, !dbg !61088
  %..i.i.i.i = select i1 %i.j, double %.sroa.02.0.i, double %.val.i, !dbg !61097 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !61083
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !61083
  %.val.i.1 = load double, ptr %i.l, align 8, !dbg !61087, !noundef !14 ; 2 uses
  %i.m = fcmp ogt double %..i.i.i.i, %.val.i.1, !dbg !61088
  %i.n = fcmp uno double %..i.i.i.i, 0.000000e+00, !dbg !61095
  %i.o = or i1 %i.n, %i.m, !dbg !61088
  %..i.i.i.i.1 = select i1 %i.o, double %..i.i.i.i, double %.val.i.1, !dbg !61097 ; 3 uses
  %i.p = add nuw i64 %.sroa.04.0.i, 2, !dbg !61098 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !61101  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !61101
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !61101

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.q = and i64 %i.d, 8, !dbg !61101
  %lcmp.mod.not = icmp eq i64 %i.q, 0, !dbg !61101
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !61101

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.p, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi double [ %2, %bb.b ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !61101
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !61101
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init, !dbg !61083
  %.val.i.epil = load double, ptr %i.r, align 8, !dbg !61087, !noundef !14 ; 2 uses
  %i.s = fcmp ogt double %.sroa.02.0.i.epil.init, %.val.i.epil, !dbg !61088
  %i.t = fcmp uno double %.sroa.02.0.i.epil.init, 0.000000e+00, !dbg !61095
  %i.u = or i1 %i.t, %i.s, !dbg !61088
  %..i.i.i.i.epil = select i1 %i.u, double %.sroa.02.0.i.epil.init, double %.val.i.epil, !dbg !61097
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61102

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi double [ %2, %bb.a ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %.epil.preheader ], !dbg !61082
  ret double %.sroa.0.0.i, !dbg !61102
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, double noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !61103 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61104
  %i.a = icmp eq ptr %0, %1, !dbg !61113
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !61114

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61115
  %i.c = ptrtoint ptr %0 to i64, !dbg !61115
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61115      ; 3 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61115      ; 2 uses
  %i.f = icmp eq i64 %i.d, 8, !dbg !61127
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !61127

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !61127
  br label %bb.c, !dbg !61127

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.p, %bb.c ], !dbg !61128 ; 3 uses
  %.sroa.02.0.i = phi double [ %2, %.new ], [ %..i.i.i.i.1, %bb.c ], !dbg !61129 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !61130
  %.val.i = load double, ptr %i.g, align 8, !dbg !61134, !noundef !14 ; 2 uses
  %i.h = fcmp olt double %.sroa.02.0.i, %.val.i, !dbg !61135
  %i.i = fcmp uno double %.sroa.02.0.i, 0.000000e+00, !dbg !61142
  %i.j = or i1 %i.i, %i.h, !dbg !61135
  %..i.i.i.i = select i1 %i.j, double %.sroa.02.0.i, double %.val.i, !dbg !61144 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !61130
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !61130
  %.val.i.1 = load double, ptr %i.l, align 8, !dbg !61134, !noundef !14 ; 2 uses
  %i.m = fcmp olt double %..i.i.i.i, %.val.i.1, !dbg !61135
  %i.n = fcmp uno double %..i.i.i.i, 0.000000e+00, !dbg !61142
  %i.o = or i1 %i.n, %i.m, !dbg !61135
  %..i.i.i.i.1 = select i1 %i.o, double %..i.i.i.i, double %.val.i.1, !dbg !61144 ; 3 uses
  %i.p = add nuw i64 %.sroa.04.0.i, 2, !dbg !61145 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !61148  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !61148
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !61148

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.q = and i64 %i.d, 8, !dbg !61148
  %lcmp.mod.not = icmp eq i64 %i.q, 0, !dbg !61148
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !61148

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.p, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi double [ %2, %bb.b ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !61148
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !61148
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init, !dbg !61130
  %.val.i.epil = load double, ptr %i.r, align 8, !dbg !61134, !noundef !14 ; 2 uses
  %i.s = fcmp olt double %.sroa.02.0.i.epil.init, %.val.i.epil, !dbg !61135
  %i.t = fcmp uno double %.sroa.02.0.i.epil.init, 0.000000e+00, !dbg !61142
  %i.u = or i1 %i.t, %i.s, !dbg !61135
  %..i.i.i.i.epil = select i1 %i.u, double %.sroa.02.0.i.epil.init, double %.val.i.epil, !dbg !61144
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61149

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi double [ %2, %bb.a ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %.epil.preheader ], !dbg !61129
  ret double %.sroa.0.0.i, !dbg !61149
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61150 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61151 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61151
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61151 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61151
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61151 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !61154
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61154
  %i.a = icmp eq ptr %0, %1, !dbg !61163
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61164

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61165
  %i.c = ptrtoint ptr %0 to i64, !dbg !61165      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61165      ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !61165            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48, !dbg !61177
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !61177

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !61177
  %i.g = add i64 %i.f, %.sroa.7.0.copyload2, !dbg !61177
  %i.h = sub i64 %i.c, %i.g, !dbg !61177
  %diff.check = icmp ugt i64 %i.h, -16, !dbg !61177
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !61178

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693950      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !61178

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61178 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !61179
  %wide.load = load <2 x double>, ptr %i.k, align 8, !dbg !61183, !noalias !61184
  %i.l = tail call <2 x double> @llvm.cos.v2f64(<2 x double> %wide.load), !dbg !61187
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !61201
  store <2 x double> %i.l, ptr %i.m, align 8, !dbg !61208, !noalias !61211
  %index.next = add nuw i64 %index, 2, !dbg !61178 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !61220
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !61220, !llvm.loop !61221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !61220
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !61220

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %i.o = sub nsw i64 %i.e, %.sroa.01.0.i.ph, !dbg !61220
  %xtraiter = and i64 %i.o, 3, !dbg !61220        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61220
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !61220

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.t, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !61179 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.u, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !61178 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !61179
  %.val16.i.prol = load double, ptr %i.q, align 8, !dbg !61183, !noalias !61184, !noundef !14
  %i.r = tail call noundef double @llvm.cos.f64(double %.val16.i.prol), !dbg !61187
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !61201
  store double %i.r, ptr %i.s, align 8, !dbg !61208, !noalias !61211
  %i.t = add i64 %i.p, 1, !dbg !61222             ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !61225 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !61220 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !61220
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !61220, !llvm.loop !61228

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %i.v = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !61220
  %i.w = icmp ugt i64 %i.v, -4, !dbg !61220
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !61220

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !61179 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !61178 ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61179
  %.val16.i = load double, ptr %i.y, align 8, !dbg !61183, !noalias !61184, !noundef !14
  %i.z = tail call noundef double @llvm.cos.f64(double %.val16.i), !dbg !61187
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !61201
  store double %i.z, ptr %i.aa, align 8, !dbg !61208, !noalias !61211
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61179
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !61179
  %.val16.i.1 = load double, ptr %i.ac, align 8, !dbg !61183, !noalias !61184, !noundef !14
  %i.ad = tail call noundef double @llvm.cos.f64(double %.val16.i.1), !dbg !61187
  %i.ae = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !61201
  %i.af = getelementptr i8, ptr %i.ae, i64 8, !dbg !61201
  store double %i.ad, ptr %i.af, align 8, !dbg !61208, !noalias !61211
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61179
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !61179
  %.val16.i.2 = load double, ptr %i.ah, align 8, !dbg !61183, !noalias !61184, !noundef !14
  %i.ai = tail call noundef double @llvm.cos.f64(double %.val16.i.2), !dbg !61187
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !61201
  %i.ak = getelementptr i8, ptr %i.aj, i64 16, !dbg !61201
  store double %i.ai, ptr %i.ak, align 8, !dbg !61208, !noalias !61211
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61179
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !61179
  %.val16.i.3 = load double, ptr %i.am, align 8, !dbg !61183, !noalias !61184, !noundef !14
  %i.an = tail call noundef double @llvm.cos.f64(double %.val16.i.3), !dbg !61187
  %i.ao = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !61201
  %i.ap = getelementptr i8, ptr %i.ao, i64 24, !dbg !61201
  store double %i.an, ptr %i.ap, align 8, !dbg !61208, !noalias !61211
  %i.aq = add i64 %i.x, 4, !dbg !61222            ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 4, !dbg !61225 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.e, !dbg !61220
  br i1 %i.as, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !61220, !llvm.loop !61230

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aq, %scalar.ph ], !dbg !61231
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61231, !noalias !61184
  ret void, !dbg !61242
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61243 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61244 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61244
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61244 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61244
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61244 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61247
  %i.a = icmp eq ptr %0, %1, !dbg !61256
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61257

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61258
  %i.c = ptrtoint ptr %0 to i64, !dbg !61258
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61258      ; 3 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61258      ; 2 uses
  %i.f = icmp eq i64 %i.d, 8, !dbg !61270
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !61270

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !61270
  br label %bb.c, !dbg !61270

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.r, %bb.c ], !dbg !61271 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.s, %bb.c ], !dbg !61275 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61271
  %.val16.i = load double, ptr %i.h, align 8, !dbg !61276, !noalias !61277, !noundef !14
  %i.i = tail call noundef double @tan(double noundef %.val16.i) #56, !dbg !61280, !noalias !61292
  %i.j = fdiv double 1.000000e+00, %i.i, !dbg !61297
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61304
  store double %i.j, ptr %i.k, align 8, !dbg !61311, !noalias !61314
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61271
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !61271
  %.val16.i.1 = load double, ptr %i.m, align 8, !dbg !61276, !noalias !61277, !noundef !14
  %i.n = tail call noundef double @tan(double noundef %.val16.i.1) #56, !dbg !61280, !noalias !61292
  %i.o = fdiv double 1.000000e+00, %i.n, !dbg !61297
  %i.p = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61304
  %i.q = getelementptr i8, ptr %i.p, i64 8, !dbg !61304
  store double %i.o, ptr %i.q, align 8, !dbg !61311, !noalias !61314
  %i.r = add i64 %i.g, 2, !dbg !61319             ; 3 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 2, !dbg !61322 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !61325  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !61325
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !61325

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.t = and i64 %i.d, 8, !dbg !61325
  %lcmp.mod.not = icmp eq i64 %i.t, 0, !dbg !61325
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !61325

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !61325
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !61325
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !61271
  %.val16.i.epil = load double, ptr %i.u, align 8, !dbg !61276, !noalias !61277, !noundef !14
  %i.v = tail call noundef double @tan(double noundef %.val16.i.epil) #56, !dbg !61280, !noalias !61292
  %i.w = fdiv double 1.000000e+00, %i.v, !dbg !61297
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !61304
  store double %i.w, ptr %i.x, align 8, !dbg !61311, !noalias !61314
  %i.y = add i64 %.epil.init, 1, !dbg !61319
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ], !dbg !61326
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61326, !noalias !61277
  ret void, !dbg !61337
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61338 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61339 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61339
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61339 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61339
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61339 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !61342
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61342
  %i.a = icmp eq ptr %0, %1, !dbg !61351
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61352

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61353
  %i.c = ptrtoint ptr %0 to i64, !dbg !61353      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61353      ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !61353            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48, !dbg !61365
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !61365

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !61365
  %i.g = add i64 %i.f, %.sroa.7.0.copyload2, !dbg !61365
  %i.h = sub i64 %i.c, %i.g, !dbg !61365
  %diff.check = icmp ugt i64 %i.h, -16, !dbg !61365
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !61366

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693950      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !61366

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61366 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !61367
  %wide.load = load <2 x double>, ptr %i.k, align 8, !dbg !61371, !noalias !61372
  %i.l = tail call <2 x double> @llvm.sin.v2f64(<2 x double> %wide.load), !dbg !61375
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !61387
  store <2 x double> %i.l, ptr %i.m, align 8, !dbg !61394, !noalias !61397
  %index.next = add nuw i64 %index, 2, !dbg !61366 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !61406
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !61406, !llvm.loop !61407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !61406
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !61406

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %i.o = sub nsw i64 %i.e, %.sroa.01.0.i.ph, !dbg !61406
  %xtraiter = and i64 %i.o, 3, !dbg !61406        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61406
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !61406

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.t, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !61367 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.u, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !61366 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !61367
  %.val16.i.prol = load double, ptr %i.q, align 8, !dbg !61371, !noalias !61372, !noundef !14
  %i.r = tail call noundef double @llvm.sin.f64(double %.val16.i.prol), !dbg !61375
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !61387
  store double %i.r, ptr %i.s, align 8, !dbg !61394, !noalias !61397
  %i.t = add i64 %i.p, 1, !dbg !61408             ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !61411 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !61406 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !61406
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !61406, !llvm.loop !61414

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %i.v = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !61406
  %i.w = icmp ugt i64 %i.v, -4, !dbg !61406
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !61406

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !61367 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !61366 ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61367
  %.val16.i = load double, ptr %i.y, align 8, !dbg !61371, !noalias !61372, !noundef !14
  %i.z = tail call noundef double @llvm.sin.f64(double %.val16.i), !dbg !61375
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !61387
  store double %i.z, ptr %i.aa, align 8, !dbg !61394, !noalias !61397
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61367
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !61367
  %.val16.i.1 = load double, ptr %i.ac, align 8, !dbg !61371, !noalias !61372, !noundef !14
  %i.ad = tail call noundef double @llvm.sin.f64(double %.val16.i.1), !dbg !61375
  %i.ae = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !61387
  %i.af = getelementptr i8, ptr %i.ae, i64 8, !dbg !61387
  store double %i.ad, ptr %i.af, align 8, !dbg !61394, !noalias !61397
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61367
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !61367
  %.val16.i.2 = load double, ptr %i.ah, align 8, !dbg !61371, !noalias !61372, !noundef !14
  %i.ai = tail call noundef double @llvm.sin.f64(double %.val16.i.2), !dbg !61375
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !61387
  %i.ak = getelementptr i8, ptr %i.aj, i64 16, !dbg !61387
  store double %i.ai, ptr %i.ak, align 8, !dbg !61394, !noalias !61397
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61367
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !61367
  %.val16.i.3 = load double, ptr %i.am, align 8, !dbg !61371, !noalias !61372, !noundef !14
  %i.an = tail call noundef double @llvm.sin.f64(double %.val16.i.3), !dbg !61375
  %i.ao = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !61387
  %i.ap = getelementptr i8, ptr %i.ao, i64 24, !dbg !61387
  store double %i.an, ptr %i.ap, align 8, !dbg !61394, !noalias !61397
  %i.aq = add i64 %i.x, 4, !dbg !61408            ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 4, !dbg !61411 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.e, !dbg !61406
  br i1 %i.as, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !61406, !llvm.loop !61415

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aq, %scalar.ph ], !dbg !61416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61416, !noalias !61372
  ret void, !dbg !61427
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61428 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61429 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61429
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61429 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61429
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61429 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61432
  %i.a = icmp eq ptr %0, %1, !dbg !61441
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61442

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61443
  %i.c = ptrtoint ptr %0 to i64, !dbg !61443
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61443      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61443      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !61455        ; 3 uses
  %i.f = icmp ult i64 %i.d, 32, !dbg !61455
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !61455

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693948, !dbg !61455
  br label %bb.c, !dbg !61455

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !61456 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !61460 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61456
  %.val16.i = load double, ptr %i.h, align 8, !dbg !61461, !noalias !61462, !noundef !14
  %i.i = tail call noundef double @tan(double noundef %.val16.i) #56, !dbg !61465, !noalias !61475
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61480
  store double %i.i, ptr %i.j, align 8, !dbg !61487, !noalias !61490
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61456
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !61456
  %.val16.i.1 = load double, ptr %i.l, align 8, !dbg !61461, !noalias !61462, !noundef !14
  %i.m = tail call noundef double @tan(double noundef %.val16.i.1) #56, !dbg !61465, !noalias !61475
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61480
  %i.o = getelementptr i8, ptr %i.n, i64 8, !dbg !61480
  store double %i.m, ptr %i.o, align 8, !dbg !61487, !noalias !61490
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61456
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !61456
  %.val16.i.2 = load double, ptr %i.q, align 8, !dbg !61461, !noalias !61462, !noundef !14
  %i.r = tail call noundef double @tan(double noundef %.val16.i.2) #56, !dbg !61465, !noalias !61475
  %i.s = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61480
  %i.t = getelementptr i8, ptr %i.s, i64 16, !dbg !61480
  store double %i.r, ptr %i.t, align 8, !dbg !61487, !noalias !61490
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61456
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !61456
  %.val16.i.3 = load double, ptr %i.v, align 8, !dbg !61461, !noalias !61462, !noundef !14
  %i.w = tail call noundef double @tan(double noundef %.val16.i.3) #56, !dbg !61465, !noalias !61475
  %i.x = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61480
  %i.y = getelementptr i8, ptr %i.x, i64 24, !dbg !61480
  store double %i.w, ptr %i.y, align 8, !dbg !61487, !noalias !61490
  %i.z = add i64 %i.g, 4, !dbg !61495             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !61498 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !61501  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !61501
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !61501

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61501
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !61501

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !61501
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !61501
  br label %bb.d, !dbg !61501

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !61456 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !61460 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !61456
  %.val16.i.epil = load double, ptr %i.ac, align 8, !dbg !61461, !noalias !61462, !noundef !14
  %i.ad = tail call noundef double @tan(double noundef %.val16.i.epil) #56, !dbg !61465, !noalias !61475
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !61480
  store double %i.ad, ptr %i.ae, align 8, !dbg !61487, !noalias !61490
  %i.af = add i64 %i.ab, 1, !dbg !61495           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !61498
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !61501 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !61501
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !61501, !llvm.loop !61502

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !61503
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61503, !noalias !61462
  ret void, !dbg !61514
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61515 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61516 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61516
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61516 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61516
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61516 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61519
  %i.a = icmp eq ptr %0, %1, !dbg !61528
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61529

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61530
  %i.c = ptrtoint ptr %0 to i64, !dbg !61530
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61530      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61530      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !61542        ; 3 uses
  %i.f = icmp ult i64 %i.d, 32, !dbg !61542
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !61542

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693948, !dbg !61542
  br label %bb.c, !dbg !61542

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !61543 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !61547 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61543
  %.val16.i = load double, ptr %i.h, align 8, !dbg !61548, !noalias !61549, !noundef !14
  %i.i = tail call noundef double @cosh(double noundef %.val16.i) #56, !dbg !61552, !noalias !61564
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61569
  store double %i.i, ptr %i.j, align 8, !dbg !61576, !noalias !61579
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61543
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !61543
  %.val16.i.1 = load double, ptr %i.l, align 8, !dbg !61548, !noalias !61549, !noundef !14
  %i.m = tail call noundef double @cosh(double noundef %.val16.i.1) #56, !dbg !61552, !noalias !61564
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61569
  %i.o = getelementptr i8, ptr %i.n, i64 8, !dbg !61569
  store double %i.m, ptr %i.o, align 8, !dbg !61576, !noalias !61579
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61543
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !61543
  %.val16.i.2 = load double, ptr %i.q, align 8, !dbg !61548, !noalias !61549, !noundef !14
  %i.r = tail call noundef double @cosh(double noundef %.val16.i.2) #56, !dbg !61552, !noalias !61564
  %i.s = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61569
  %i.t = getelementptr i8, ptr %i.s, i64 16, !dbg !61569
  store double %i.r, ptr %i.t, align 8, !dbg !61576, !noalias !61579
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61543
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !61543
  %.val16.i.3 = load double, ptr %i.v, align 8, !dbg !61548, !noalias !61549, !noundef !14
  %i.w = tail call noundef double @cosh(double noundef %.val16.i.3) #56, !dbg !61552, !noalias !61564
  %i.x = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61569
  %i.y = getelementptr i8, ptr %i.x, i64 24, !dbg !61569
  store double %i.w, ptr %i.y, align 8, !dbg !61576, !noalias !61579
  %i.z = add i64 %i.g, 4, !dbg !61584             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !61587 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !61590  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !61590
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !61590

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61590
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !61590

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !61590
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !61590
  br label %bb.d, !dbg !61590

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !61543 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !61547 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !61543
  %.val16.i.epil = load double, ptr %i.ac, align 8, !dbg !61548, !noalias !61549, !noundef !14
  %i.ad = tail call noundef double @cosh(double noundef %.val16.i.epil) #56, !dbg !61552, !noalias !61564
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !61569
  store double %i.ad, ptr %i.ae, align 8, !dbg !61576, !noalias !61579
  %i.af = add i64 %i.ab, 1, !dbg !61584           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !61587
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !61590 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !61590
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !61590, !llvm.loop !61591

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !61592
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61592, !noalias !61549
  ret void, !dbg !61603
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61604 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61605 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61605
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61605 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61605
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61605 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61608
  %i.a = icmp eq ptr %0, %1, !dbg !61617
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61618

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61619
  %i.c = ptrtoint ptr %0 to i64, !dbg !61619
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61619      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61619      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !61631        ; 3 uses
  %i.f = icmp ult i64 %i.d, 32, !dbg !61631
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !61631

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693948, !dbg !61631
  br label %bb.c, !dbg !61631

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !61632 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !61636 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61632
  %.val16.i = load double, ptr %i.h, align 8, !dbg !61637, !noalias !61638, !noundef !14
  %i.i = tail call noundef double @sinh(double noundef %.val16.i) #56, !dbg !61641, !noalias !61653
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61658
  store double %i.i, ptr %i.j, align 8, !dbg !61665, !noalias !61668
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61632
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !61632
  %.val16.i.1 = load double, ptr %i.l, align 8, !dbg !61637, !noalias !61638, !noundef !14
  %i.m = tail call noundef double @sinh(double noundef %.val16.i.1) #56, !dbg !61641, !noalias !61653
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61658
  %i.o = getelementptr i8, ptr %i.n, i64 8, !dbg !61658
  store double %i.m, ptr %i.o, align 8, !dbg !61665, !noalias !61668
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61632
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !61632
  %.val16.i.2 = load double, ptr %i.q, align 8, !dbg !61637, !noalias !61638, !noundef !14
  %i.r = tail call noundef double @sinh(double noundef %.val16.i.2) #56, !dbg !61641, !noalias !61653
  %i.s = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61658
  %i.t = getelementptr i8, ptr %i.s, i64 16, !dbg !61658
  store double %i.r, ptr %i.t, align 8, !dbg !61665, !noalias !61668
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61632
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !61632
  %.val16.i.3 = load double, ptr %i.v, align 8, !dbg !61637, !noalias !61638, !noundef !14
  %i.w = tail call noundef double @sinh(double noundef %.val16.i.3) #56, !dbg !61641, !noalias !61653
  %i.x = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61658
  %i.y = getelementptr i8, ptr %i.x, i64 24, !dbg !61658
  store double %i.w, ptr %i.y, align 8, !dbg !61665, !noalias !61668
  %i.z = add i64 %i.g, 4, !dbg !61673             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !61676 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !61679  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !61679
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !61679

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61679
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !61679

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !61679
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !61679
  br label %bb.d, !dbg !61679

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !61632 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !61636 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !61632
  %.val16.i.epil = load double, ptr %i.ac, align 8, !dbg !61637, !noalias !61638, !noundef !14
  %i.ad = tail call noundef double @sinh(double noundef %.val16.i.epil) #56, !dbg !61641, !noalias !61653
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !61658
  store double %i.ad, ptr %i.ae, align 8, !dbg !61665, !noalias !61668
  %i.af = add i64 %i.ab, 1, !dbg !61673           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !61676
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !61679 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !61679
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !61679, !llvm.loop !61680

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !61681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61681, !noalias !61638
  ret void, !dbg !61692
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61693 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61694 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61694
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61694 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61694
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61694 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61697
  %i.a = icmp eq ptr %0, %1, !dbg !61706
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61707

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61708
  %i.c = ptrtoint ptr %0 to i64, !dbg !61708
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61708      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61708      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !61720        ; 3 uses
  %i.f = icmp ult i64 %i.d, 32, !dbg !61720
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !61720

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693948, !dbg !61720
  br label %bb.c, !dbg !61720

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !61721 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !61725 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61721
  %.val16.i = load double, ptr %i.h, align 8, !dbg !61726, !noalias !61727, !noundef !14
  %i.i = tail call noundef double @tanh(double noundef %.val16.i) #56, !dbg !61730, !noalias !61742
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61747
  store double %i.i, ptr %i.j, align 8, !dbg !61754, !noalias !61757
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61721
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !61721
  %.val16.i.1 = load double, ptr %i.l, align 8, !dbg !61726, !noalias !61727, !noundef !14
  %i.m = tail call noundef double @tanh(double noundef %.val16.i.1) #56, !dbg !61730, !noalias !61742
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61747
  %i.o = getelementptr i8, ptr %i.n, i64 8, !dbg !61747
  store double %i.m, ptr %i.o, align 8, !dbg !61754, !noalias !61757
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61721
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !61721
  %.val16.i.2 = load double, ptr %i.q, align 8, !dbg !61726, !noalias !61727, !noundef !14
  %i.r = tail call noundef double @tanh(double noundef %.val16.i.2) #56, !dbg !61730, !noalias !61742
  %i.s = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61747
  %i.t = getelementptr i8, ptr %i.s, i64 16, !dbg !61747
  store double %i.r, ptr %i.t, align 8, !dbg !61754, !noalias !61757
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61721
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !61721
  %.val16.i.3 = load double, ptr %i.v, align 8, !dbg !61726, !noalias !61727, !noundef !14
  %i.w = tail call noundef double @tanh(double noundef %.val16.i.3) #56, !dbg !61730, !noalias !61742
  %i.x = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61747
  %i.y = getelementptr i8, ptr %i.x, i64 24, !dbg !61747
  store double %i.w, ptr %i.y, align 8, !dbg !61754, !noalias !61757
  %i.z = add i64 %i.g, 4, !dbg !61762             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !61765 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !61768  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !61768
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !61768

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61768
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !61768

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !61768
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !61768
  br label %bb.d, !dbg !61768

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !61721 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !61725 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !61721
  %.val16.i.epil = load double, ptr %i.ac, align 8, !dbg !61726, !noalias !61727, !noundef !14
  %i.ad = tail call noundef double @tanh(double noundef %.val16.i.epil) #56, !dbg !61730, !noalias !61742
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !61747
  store double %i.ad, ptr %i.ae, align 8, !dbg !61754, !noalias !61757
  %i.af = add i64 %i.ab, 1, !dbg !61762           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !61765
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !61768 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !61768
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !61768, !llvm.loop !61769

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !61770
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61770, !noalias !61727
  ret void, !dbg !61781
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61782 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61783 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61783
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61783 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61783
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61783 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61786
  %i.a = icmp eq ptr %0, %1, !dbg !61795
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61796

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61797
  %i.c = ptrtoint ptr %0 to i64, !dbg !61797
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61797      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61797      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !61809        ; 3 uses
  %i.f = icmp ult i64 %i.d, 32, !dbg !61809
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !61809

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693948, !dbg !61809
  br label %bb.c, !dbg !61809

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !61810 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !61814 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61810
  %.val16.i = load double, ptr %i.h, align 8, !dbg !61815, !noalias !61816, !noundef !14
  %i.i = tail call noundef double @acos(double noundef %.val16.i) #56, !dbg !61819, !noalias !61831
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61836
  store double %i.i, ptr %i.j, align 8, !dbg !61843, !noalias !61846
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61810
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !61810
  %.val16.i.1 = load double, ptr %i.l, align 8, !dbg !61815, !noalias !61816, !noundef !14
  %i.m = tail call noundef double @acos(double noundef %.val16.i.1) #56, !dbg !61819, !noalias !61831
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61836
  %i.o = getelementptr i8, ptr %i.n, i64 8, !dbg !61836
  store double %i.m, ptr %i.o, align 8, !dbg !61843, !noalias !61846
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61810
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !61810
  %.val16.i.2 = load double, ptr %i.q, align 8, !dbg !61815, !noalias !61816, !noundef !14
  %i.r = tail call noundef double @acos(double noundef %.val16.i.2) #56, !dbg !61819, !noalias !61831
  %i.s = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61836
  %i.t = getelementptr i8, ptr %i.s, i64 16, !dbg !61836
  store double %i.r, ptr %i.t, align 8, !dbg !61843, !noalias !61846
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61810
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !61810
  %.val16.i.3 = load double, ptr %i.v, align 8, !dbg !61815, !noalias !61816, !noundef !14
  %i.w = tail call noundef double @acos(double noundef %.val16.i.3) #56, !dbg !61819, !noalias !61831
  %i.x = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61836
  %i.y = getelementptr i8, ptr %i.x, i64 24, !dbg !61836
  store double %i.w, ptr %i.y, align 8, !dbg !61843, !noalias !61846
  %i.z = add i64 %i.g, 4, !dbg !61851             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !61854 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !61857  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !61857
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !61857

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61857
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !61857

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !61857
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !61857
  br label %bb.d, !dbg !61857

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !61810 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !61814 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !61810
  %.val16.i.epil = load double, ptr %i.ac, align 8, !dbg !61815, !noalias !61816, !noundef !14
  %i.ad = tail call noundef double @acos(double noundef %.val16.i.epil) #56, !dbg !61819, !noalias !61831
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !61836
  store double %i.ad, ptr %i.ae, align 8, !dbg !61843, !noalias !61846
  %i.af = add i64 %i.ab, 1, !dbg !61851           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !61854
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !61857 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !61857
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !61857, !llvm.loop !61858

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !61859
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61859, !noalias !61816
  ret void, !dbg !61870
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61871 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61872 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61872
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61872 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61872
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61872 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61875
  %i.a = icmp eq ptr %0, %1, !dbg !61884
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61885

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61886
  %i.c = ptrtoint ptr %0 to i64, !dbg !61886
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61886      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61886      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !61898        ; 3 uses
  %i.f = icmp ult i64 %i.d, 32, !dbg !61898
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !61898

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693948, !dbg !61898
  br label %bb.c, !dbg !61898

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !61899 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !61903 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61899
  %.val16.i = load double, ptr %i.h, align 8, !dbg !61904, !noalias !61905, !noundef !14
  %i.i = tail call noundef double @asin(double noundef %.val16.i) #56, !dbg !61908, !noalias !61920
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61925
  store double %i.i, ptr %i.j, align 8, !dbg !61932, !noalias !61935
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61899
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !61899
  %.val16.i.1 = load double, ptr %i.l, align 8, !dbg !61904, !noalias !61905, !noundef !14
  %i.m = tail call noundef double @asin(double noundef %.val16.i.1) #56, !dbg !61908, !noalias !61920
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61925
  %i.o = getelementptr i8, ptr %i.n, i64 8, !dbg !61925
  store double %i.m, ptr %i.o, align 8, !dbg !61932, !noalias !61935
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61899
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !61899
  %.val16.i.2 = load double, ptr %i.q, align 8, !dbg !61904, !noalias !61905, !noundef !14
  %i.r = tail call noundef double @asin(double noundef %.val16.i.2) #56, !dbg !61908, !noalias !61920
  %i.s = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61925
  %i.t = getelementptr i8, ptr %i.s, i64 16, !dbg !61925
  store double %i.r, ptr %i.t, align 8, !dbg !61932, !noalias !61935
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61899
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !61899
  %.val16.i.3 = load double, ptr %i.v, align 8, !dbg !61904, !noalias !61905, !noundef !14
  %i.w = tail call noundef double @asin(double noundef %.val16.i.3) #56, !dbg !61908, !noalias !61920
  %i.x = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !61925
  %i.y = getelementptr i8, ptr %i.x, i64 24, !dbg !61925
  store double %i.w, ptr %i.y, align 8, !dbg !61932, !noalias !61935
  %i.z = add i64 %i.g, 4, !dbg !61940             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !61943 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !61946  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !61946
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !61946

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61946
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !61946

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !61946
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !61946
  br label %bb.d, !dbg !61946

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !61899 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !61903 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !61899
  %.val16.i.epil = load double, ptr %i.ac, align 8, !dbg !61904, !noalias !61905, !noundef !14
  %i.ad = tail call noundef double @asin(double noundef %.val16.i.epil) #56, !dbg !61908, !noalias !61920
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !61925
  store double %i.ad, ptr %i.ae, align 8, !dbg !61932, !noalias !61935
  %i.af = add i64 %i.ab, 1, !dbg !61940           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !61943
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !61946 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !61946
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !61946, !llvm.loop !61947

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !61948
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !61948, !noalias !61905
  ret void, !dbg !61959
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !61960 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !61961 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !61961
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !61961 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !61961
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !61961 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !61964
  %i.a = icmp eq ptr %0, %1, !dbg !61973
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !61974

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !61975
  %i.c = ptrtoint ptr %0 to i64, !dbg !61975
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !61975      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !61975      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !61987        ; 3 uses
  %i.f = icmp ult i64 %i.d, 32, !dbg !61987
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !61987

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693948, !dbg !61987
  br label %bb.c, !dbg !61987

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !61988 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !61992 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61988
  %.val16.i = load double, ptr %i.h, align 8, !dbg !61993, !noalias !61994, !noundef !14
  %i.i = tail call noundef double @atan(double noundef %.val16.i) #56, !dbg !61997, !noalias !62009
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !62014
  store double %i.i, ptr %i.j, align 8, !dbg !62021, !noalias !62024
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61988
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !61988
  %.val16.i.1 = load double, ptr %i.l, align 8, !dbg !61993, !noalias !61994, !noundef !14
  %i.m = tail call noundef double @atan(double noundef %.val16.i.1) #56, !dbg !61997, !noalias !62009
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !62014
  %i.o = getelementptr i8, ptr %i.n, i64 8, !dbg !62014
  store double %i.m, ptr %i.o, align 8, !dbg !62021, !noalias !62024
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61988
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !61988
  %.val16.i.2 = load double, ptr %i.q, align 8, !dbg !61993, !noalias !61994, !noundef !14
  %i.r = tail call noundef double @atan(double noundef %.val16.i.2) #56, !dbg !61997, !noalias !62009
  %i.s = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !62014
  %i.t = getelementptr i8, ptr %i.s, i64 16, !dbg !62014
  store double %i.r, ptr %i.t, align 8, !dbg !62021, !noalias !62024
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !61988
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !61988
  %.val16.i.3 = load double, ptr %i.v, align 8, !dbg !61993, !noalias !61994, !noundef !14
  %i.w = tail call noundef double @atan(double noundef %.val16.i.3) #56, !dbg !61997, !noalias !62009
  %i.x = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !62014
  %i.y = getelementptr i8, ptr %i.x, i64 24, !dbg !62014
  store double %i.w, ptr %i.y, align 8, !dbg !62021, !noalias !62024
  %i.z = add i64 %i.g, 4, !dbg !62029             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !62032 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !62035  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !62035
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !62035

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !62035
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !62035

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !62035
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !62035
  br label %bb.d, !dbg !62035

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !61988 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !61992 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !61988
  %.val16.i.epil = load double, ptr %i.ac, align 8, !dbg !61993, !noalias !61994, !noundef !14
  %i.ad = tail call noundef double @atan(double noundef %.val16.i.epil) #56, !dbg !61997, !noalias !62009
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !62014
  store double %i.ad, ptr %i.ae, align 8, !dbg !62021, !noalias !62024
  %i.af = add i64 %i.ab, 1, !dbg !62029           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !62032
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !62035 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !62035
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !62035, !llvm.loop !62036

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !62037
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !62037, !noalias !61994
  ret void, !dbg !62048
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arccoshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !62049 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !62050 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !62050
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !62050 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !62050
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !62050
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !62053
  %i.a = icmp eq ptr %0, %1, !dbg !62062
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arccoshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !62063

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !62064
  %i.c = ptrtoint ptr %0 to i64, !dbg !62064
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !62064
  %i.e = lshr exact i64 %i.d, 3, !dbg !62064
  br label %bb.c, !dbg !62076

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.e ], !dbg !62077 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !62078
  %.val16.i = load double, ptr %i.g, align 8, !dbg !62082, !noalias !62083, !noundef !14 ; 3 uses
  %i.h = fcmp olt double %.val16.i, 1.000000e+00, !dbg !62086
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !62086

bb.d:                                             ; preds = %bb.c
  %i.i = insertelement <2 x double> poison, double %.val16.i, i64 0, !dbg !62098
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !62098
  %i.k = fadd <2 x double> %i.j, <double -1.000000e+00, double 1.000000e+00>, !dbg !62098
  %i.l = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.k), !dbg !62099 ; 2 uses
  %shift = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 poison>, !dbg !62104
  %foldExtExtBinop = fmul <2 x double> %i.l, %shift, !dbg !62104
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 0, !dbg !62104
  %i.n = fadd double %.val16.i, %i.m, !dbg !62105
  %i.o = tail call double @llvm.log.f64(double %i.n), !dbg !62106
  br label %bb.e, !dbg !62109

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi double [ %i.o, %bb.d ], [ +qnan, %bb.c ], !dbg !62110
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !62111
  store double %.sroa.0.0.i.i.i.i.i.i, ptr %i.p, align 8, !dbg !62118, !noalias !62121
  %i.q = add i64 %i.f, 1, !dbg !62130             ; 2 uses
  %i.r = add nuw i64 %.sroa.01.0.i, 1, !dbg !62133 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !62136
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arccoshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !62136

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arccoshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %bb.e ], !dbg !62137
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !62137, !noalias !62083
  ret void, !dbg !62148
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arcsinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !62149 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !62150 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !62150
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !62150 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !62150
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !62150
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !62153
  %i.a = icmp eq ptr %0, %1, !dbg !62162
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arcsinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !62163

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !62164
  %i.c = ptrtoint ptr %0 to i64, !dbg !62164
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !62164
  %i.e = lshr exact i64 %i.d, 3, !dbg !62164
  br label %bb.c, !dbg !62176

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %bb.c ], !dbg !62177 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.c ], !dbg !62181 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !62177
  %.val16.i = load double, ptr %i.g, align 8, !dbg !62182, !noalias !62183, !noundef !14 ; 2 uses
  %i.h = tail call double @llvm.fabs.f64(double %.val16.i), !dbg !62186 ; 3 uses
  %i.i = fdiv double 1.000000e+00, %i.h, !dbg !62200 ; 2 uses
  %i.j = tail call noundef double @hypot(double noundef 1.000000e+00, double noundef %i.i) #56, !dbg !62202, !noalias !62206
  %i.k = fadd double %i.j, %i.i, !dbg !62211
  %i.l = fdiv double %i.h, %i.k, !dbg !62212
  %i.m = fadd double %i.h, %i.l, !dbg !62213
  %i.n = tail call noundef double @log1p(double noundef %i.m) #56, !dbg !62214, !noalias !62206
  %i.o = tail call noundef double @llvm.copysign.f64(double %i.n, double %.val16.i), !dbg !62217
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !62220
  store double %i.o, ptr %i.p, align 8, !dbg !62227, !noalias !62230
  %i.q = add i64 %i.f, 1, !dbg !62235             ; 2 uses
  %i.r = add nuw i64 %.sroa.01.0.i, 1, !dbg !62238 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !62241
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arcsinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !62241

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arcsinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %bb.c ], !dbg !62242
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !62242, !noalias !62183
  ret void, !dbg !62253
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arctanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !62254 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !62255 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !62255
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !62255 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !62255
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !62255
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !62258
  %i.a = icmp eq ptr %0, %1, !dbg !62267
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arctanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !62268

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !62269
  %i.c = ptrtoint ptr %0 to i64, !dbg !62269
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !62269
  %i.e = lshr exact i64 %i.d, 3, !dbg !62269
  br label %bb.c, !dbg !62281

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %bb.c ], !dbg !62282 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ], !dbg !62286 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !62282
  %.val16.i = load double, ptr %i.g, align 8, !dbg !62287, !noalias !62288, !noundef !14 ; 2 uses
  %i.h = fmul double %.val16.i, 2.000000e+00, !dbg !62291
  %i.i = fsub double 1.000000e+00, %.val16.i, !dbg !62303
  %i.j = fdiv double %i.h, %i.i, !dbg !62304
  %i.k = tail call noundef double @log1p(double noundef %i.j) #56, !dbg !62305, !noalias !62308
  %i.l = fmul double %i.k, 5.000000e-01, !dbg !62313
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !62314
  store double %i.l, ptr %i.m, align 8, !dbg !62321, !noalias !62324
  %i.n = add i64 %i.f, 1, !dbg !62329             ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !62332 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !62335
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arctanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !62335

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arctanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %bb.c ], !dbg !62336
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !62336, !noalias !62288
  ret void, !dbg !62347
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7degreesNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !62348 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !62349 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !62349
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !62349 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !62349
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !62349 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !62352
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !62352
  %i.a = icmp eq ptr %0, %1, !dbg !62361
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7degreesNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !62362

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !62363
  %i.c = ptrtoint ptr %0 to i64, !dbg !62363      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !62363      ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !62363            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 64, !dbg !62375
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !62375
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_:bb.a
  %i.h = tail call noundef double @cbrt(double noundef %.val16.i) #56, !dbg !62760
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !62774
  store double %i.h, ptr %i.i, align 8, !dbg !62781, !noalias !62784
  %i.j = add i64 %i.f, 1, !dbg !62793             ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1, !dbg !62796 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e, !dbg !62799
  br i1 %i.l, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !62799

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14cbrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.j, %bb.c ], !dbg !62800
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !62800, !noalias !62757
  ret void, !dbg !62811
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !62812 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !62813 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !62813
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !62813 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !62813
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !62813 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !62816
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !62816
  %i.a = icmp eq ptr %0, %1, !dbg !62825
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !62826

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !62827
  %i.c = ptrtoint ptr %0 to i64, !dbg !62827      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !62827      ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !62827            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48, !dbg !62839
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !62839

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !62839
  %i.g = add i64 %i.f, %.sroa.7.0.copyload2, !dbg !62839
  %i.h = sub i64 %i.c, %i.g, !dbg !62839
  %diff.check = icmp ugt i64 %i.h, -16, !dbg !62839
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !62840

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693950      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !62840

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !62840 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !62841
  %wide.load = load <2 x double>, ptr %i.k, align 8, !dbg !62845, !noalias !62846
  %i.l = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %wide.load), !dbg !62849
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !62860
  store <2 x double> %i.l, ptr %i.m, align 8, !dbg !62867, !noalias !62870
  %index.next = add nuw i64 %index, 2, !dbg !62840 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !62879
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !62879, !llvm.loop !62880

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !62879
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !62879

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %i.o = sub nsw i64 %i.e, %.sroa.01.0.i.ph, !dbg !62879
  %xtraiter = and i64 %i.o, 3, !dbg !62879        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !62879
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !62879

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.t, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !62841 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.u, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !62840 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !62841
  %.val16.i.prol = load double, ptr %i.q, align 8, !dbg !62845, !noalias !62846, !noundef !14
  %i.r = tail call noundef double @llvm.sqrt.f64(double %.val16.i.prol), !dbg !62849
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !62860
  store double %i.r, ptr %i.s, align 8, !dbg !62867, !noalias !62870
  %i.t = add i64 %i.p, 1, !dbg !62881             ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !62884 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !62879 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !62879
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !62879, !llvm.loop !62887

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %i.v = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !62879
  %i.w = icmp ugt i64 %i.v, -4, !dbg !62879
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !62879

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !62841 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !62840 ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !62841
  %.val16.i = load double, ptr %i.y, align 8, !dbg !62845, !noalias !62846, !noundef !14
  %i.z = tail call noundef double @llvm.sqrt.f64(double %.val16.i), !dbg !62849
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !62860
  store double %i.z, ptr %i.aa, align 8, !dbg !62867, !noalias !62870
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !62841
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !62841
  %.val16.i.1 = load double, ptr %i.ac, align 8, !dbg !62845, !noalias !62846, !noundef !14
  %i.ad = tail call noundef double @llvm.sqrt.f64(double %.val16.i.1), !dbg !62849
  %i.ae = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !62860
  %i.af = getelementptr i8, ptr %i.ae, i64 8, !dbg !62860
  store double %i.ad, ptr %i.af, align 8, !dbg !62867, !noalias !62870
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !62841
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !62841
  %.val16.i.2 = load double, ptr %i.ah, align 8, !dbg !62845, !noalias !62846, !noundef !14
  %i.ai = tail call noundef double @llvm.sqrt.f64(double %.val16.i.2), !dbg !62849
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !62860
  %i.ak = getelementptr i8, ptr %i.aj, i64 16, !dbg !62860
  store double %i.ai, ptr %i.ak, align 8, !dbg !62867, !noalias !62870
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !62841
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !62841
  %.val16.i.3 = load double, ptr %i.am, align 8, !dbg !62845, !noalias !62846, !noundef !14
  %i.an = tail call noundef double @llvm.sqrt.f64(double %.val16.i.3), !dbg !62849
  %i.ao = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !62860
  %i.ap = getelementptr i8, ptr %i.ao, i64 24, !dbg !62860
  store double %i.an, ptr %i.ap, align 8, !dbg !62867, !noalias !62870
  %i.aq = add i64 %i.x, 4, !dbg !62881            ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 4, !dbg !62884 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.e, !dbg !62879
  br i1 %i.as, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !62879, !llvm.loop !62888

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow14sqrt_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aq, %scalar.ph ], !dbg !62889
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !62889, !noalias !62846
  ret void, !dbg !62900
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !62901 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !62902 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !62902
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !62902 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !62902
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !62902 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !62905
  %i.a = icmp eq ptr %0, %1, !dbg !62914
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.b, !dbg !62915

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !62916
  %i.c = ptrtoint ptr %0 to i64, !dbg !62916
  %i.d = sub i64 %i.b, %i.c, !dbg !62916          ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !62916            ; 3 uses
  %i.f = icmp eq i64 %i.e, 1, !dbg !62928
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !62928

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !62928
  br label %bb.c, !dbg !62928

bb.c:                                             ; preds = %bb.i, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.r, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.s, %bb.i ], !dbg !62929 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !62930
  %.val16.i = load double, ptr %i.h, align 8, !dbg !62934, !noalias !62935, !noundef !14 ; 3 uses
  %i.i = fcmp olt double %.val16.i, 0.000000e+00, !dbg !62938
  br i1 %i.i, label %bb.f, label %bb.d, !dbg !62948

bb.d:                                             ; preds = %bb.c
  %i.j = fcmp ogt double %.val16.i, 0.000000e+00, !dbg !62949
  br i1 %i.j, label %bb.e, label %bb.f, !dbg !62952

bb.e:                                             ; preds = %bb.d
  br label %bb.f, !dbg !62953

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i = phi double [ -1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.e ], [ %.val16.i, %bb.d ], !dbg !62954
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !62955
  store double %.sroa.0.0.i.i.i.i, ptr %i.k, align 8, !dbg !62962, !noalias !62965
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !62930
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !62930
  %.val16.i.1 = load double, ptr %i.m, align 8, !dbg !62934, !noalias !62935, !noundef !14 ; 3 uses
  %i.n = fcmp olt double %.val16.i.1, 0.000000e+00, !dbg !62938
  br i1 %i.n, label %bb.i, label %bb.g, !dbg !62948

bb.g:                                             ; preds = %bb.f
  %i.o = fcmp ogt double %.val16.i.1, 0.000000e+00, !dbg !62949
  br i1 %i.o, label %bb.h, label %bb.i, !dbg !62952

bb.h:                                             ; preds = %bb.g
  br label %bb.i, !dbg !62953

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.1 = phi double [ -1.000000e+00, %bb.f ], [ 1.000000e+00, %bb.h ], [ %.val16.i.1, %bb.g ], !dbg !62954
  %i.p = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !62955
  %i.q = getelementptr i8, ptr %i.p, i64 8, !dbg !62955
  store double %.sroa.0.0.i.i.i.i.1, ptr %i.q, align 8, !dbg !62962, !noalias !62965
  %i.r = add i64 %i.g, 2, !dbg !62974             ; 3 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 2, !dbg !62977 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !62980  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !62980
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !62980

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %i.t = and i64 %i.d, 8, !dbg !62948
  %lcmp.mod.not = icmp eq i64 %i.t, 0, !dbg !62948
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %.epil.preheader, !dbg !62948

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.e to i1, !dbg !62948
  tail call void @llvm.assume(i1 %lcmp.mod4), !dbg !62948
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !62930
  %.val16.i.epil = load double, ptr %i.u, align 8, !dbg !62934, !noalias !62935, !noundef !14 ; 3 uses
  %i.v = fcmp olt double %.val16.i.epil, 0.000000e+00, !dbg !62938
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.epilog-lcssa, label %bb.j, !dbg !62948

bb.j:                                             ; preds = %.epil.preheader
  %i.w = fcmp ogt double %.val16.i.epil, 0.000000e+00, !dbg !62949
  br i1 %i.w, label %bb.k, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.epilog-lcssa, !dbg !62952

bb.k:                                             ; preds = %bb.j
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.epilog-lcssa, !dbg !62953

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.epilog-lcssa: ; preds = %bb.k, %bb.j, %.epil.preheader
  %.sroa.0.0.i.i.i.i.epil = phi double [ -1.000000e+00, %.epil.preheader ], [ 1.000000e+00, %bb.k ], [ %.val16.i.epil, %bb.j ], !dbg !62954
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !62955
  store double %.sroa.0.0.i.i.i.i.epil, ptr %i.x, align 8, !dbg !62962, !noalias !62965
  %i.y = add i64 %.epil.init, 1, !dbg !62974
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa ], [ %i.y, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.epilog-lcssa ], !dbg !62981
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !62981, !noalias !62935
  ret void, !dbg !62992
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3exps0_0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !62993 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !62994 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !62994
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !62994 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !62994
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !62994 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !62997
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !62997
  %i.a = icmp eq ptr %0, %1, !dbg !63006
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3exps0_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !63007

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63008
  %i.c = ptrtoint ptr %0 to i64, !dbg !63008      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63008      ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !63008            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48, !dbg !63020
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !63020

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !63020
  %i.g = add i64 %i.f, %.sroa.7.0.copyload2, !dbg !63020
  %i.h = sub i64 %i.c, %i.g, !dbg !63020
  %diff.check = icmp ugt i64 %i.h, -16, !dbg !63020
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !63021

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693950      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !63021

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63021 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !63022
  %wide.load = load <2 x double>, ptr %i.k, align 8, !dbg !63026, !noalias !63027
  %i.l = tail call <2 x double> @llvm.exp.v2f64(<2 x double> %wide.load), !dbg !63030
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !63040
  store <2 x double> %i.l, ptr %i.m, align 8, !dbg !63047, !noalias !63050
  %index.next = add nuw i64 %index, 2, !dbg !63021 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !63059
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !63059, !llvm.loop !63060

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !63059
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3exps0_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !63059

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %i.o = sub nsw i64 %i.e, %.sroa.01.0.i.ph, !dbg !63059
  %xtraiter = and i64 %i.o, 3, !dbg !63059        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63059
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63059

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.t, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !63022 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.u, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !63021 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !63022
  %.val16.i.prol = load double, ptr %i.q, align 8, !dbg !63026, !noalias !63027, !noundef !14
  %i.r = tail call noundef double @llvm.exp.f64(double %.val16.i.prol), !dbg !63030
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !63040
  store double %i.r, ptr %i.s, align 8, !dbg !63047, !noalias !63050
  %i.t = add i64 %i.p, 1, !dbg !63061             ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !63064 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63059 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63059
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63059, !llvm.loop !63067

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %i.v = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !63059
  %i.w = icmp ugt i64 %i.v, -4, !dbg !63059
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3exps0_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !63059

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !63022 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !63021 ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63022
  %.val16.i = load double, ptr %i.y, align 8, !dbg !63026, !noalias !63027, !noundef !14
  %i.z = tail call noundef double @llvm.exp.f64(double %.val16.i), !dbg !63030
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63040
  store double %i.z, ptr %i.aa, align 8, !dbg !63047, !noalias !63050
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63022
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !63022
  %.val16.i.1 = load double, ptr %i.ac, align 8, !dbg !63026, !noalias !63027, !noundef !14
  %i.ad = tail call noundef double @llvm.exp.f64(double %.val16.i.1), !dbg !63030
  %i.ae = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63040
  %i.af = getelementptr i8, ptr %i.ae, i64 8, !dbg !63040
  store double %i.ad, ptr %i.af, align 8, !dbg !63047, !noalias !63050
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63022
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !63022
  %.val16.i.2 = load double, ptr %i.ah, align 8, !dbg !63026, !noalias !63027, !noundef !14
  %i.ai = tail call noundef double @llvm.exp.f64(double %.val16.i.2), !dbg !63030
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63040
  %i.ak = getelementptr i8, ptr %i.aj, i64 16, !dbg !63040
  store double %i.ai, ptr %i.ak, align 8, !dbg !63047, !noalias !63050
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63022
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !63022
  %.val16.i.3 = load double, ptr %i.am, align 8, !dbg !63026, !noalias !63027, !noundef !14
  %i.an = tail call noundef double @llvm.exp.f64(double %.val16.i.3), !dbg !63030
  %i.ao = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63040
  %i.ap = getelementptr i8, ptr %i.ao, i64 24, !dbg !63040
  store double %i.an, ptr %i.ap, align 8, !dbg !63047, !noalias !63050
  %i.aq = add i64 %i.x, 4, !dbg !63061            ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 4, !dbg !63064 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.e, !dbg !63059
  br i1 %i.as, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3exps0_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !63059, !llvm.loop !63068

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3exps0_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aq, %scalar.ph ], !dbg !63069
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !63069, !noalias !63027
  ret void, !dbg !63080
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries5log1ps0_0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !63081 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !63082 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !63082
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !63082 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !63082
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !63082
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63085
  %i.a = icmp eq ptr %0, %1, !dbg !63094
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries5log1ps0_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !63095

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63096
  %i.c = ptrtoint ptr %0 to i64, !dbg !63096
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63096
  %i.e = lshr exact i64 %i.d, 3, !dbg !63096
  br label %bb.c, !dbg !63108

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.j, %bb.c ], !dbg !63109 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ], !dbg !63113 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63109
  %.val16.i = load double, ptr %i.g, align 8, !dbg !63114, !noalias !63115, !noundef !14
  %i.h = tail call noundef double @log1p(double noundef %.val16.i) #56, !dbg !63118, !noalias !63128
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !63133
  store double %i.h, ptr %i.i, align 8, !dbg !63140, !noalias !63143
  %i.j = add i64 %i.f, 1, !dbg !63148             ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1, !dbg !63151 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e, !dbg !63154
  br i1 %i.l, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries5log1ps0_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !63154

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries5log1ps0_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.j, %bb.c ], !dbg !63155
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !63155, !noalias !63115
  ret void, !dbg !63166
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5floors_0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !63419
  %wide.load = load <2 x double>, ptr %i.k, align 8, !dbg !63423, !noalias !63424
  %i.l = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %wide.load), !dbg !63427
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !63440
  store <2 x double> %i.l, ptr %i.m, align 8, !dbg !63447, !noalias !63450
  %index.next = add nuw i64 %index, 2, !dbg !63418 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !63459
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !63459, !llvm.loop !63460

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !63459
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5floors_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !63459

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %i.o = sub nsw i64 %i.e, %.sroa.01.0.i.ph, !dbg !63459
  %xtraiter = and i64 %i.o, 3, !dbg !63459        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63459
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63459

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.t, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !63419 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.u, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !63418 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !63419
  %.val16.i.prol = load double, ptr %i.q, align 8, !dbg !63423, !noalias !63424, !noundef !14
  %i.r = tail call noundef double @llvm.floor.f64(double %.val16.i.prol), !dbg !63427
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !63440
  store double %i.r, ptr %i.s, align 8, !dbg !63447, !noalias !63450
  %i.t = add i64 %i.p, 1, !dbg !63461             ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !63464 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63459 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63459
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63459, !llvm.loop !63467

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %i.v = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !63459
  %i.w = icmp ugt i64 %i.v, -4, !dbg !63459
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5floors_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !63459

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !63419 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !63418 ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63419
  %.val16.i = load double, ptr %i.y, align 8, !dbg !63423, !noalias !63424, !noundef !14
  %i.z = tail call noundef double @llvm.floor.f64(double %.val16.i), !dbg !63427
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63440
  store double %i.z, ptr %i.aa, align 8, !dbg !63447, !noalias !63450
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63419
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !63419
  %.val16.i.1 = load double, ptr %i.ac, align 8, !dbg !63423, !noalias !63424, !noundef !14
  %i.ad = tail call noundef double @llvm.floor.f64(double %.val16.i.1), !dbg !63427
  %i.ae = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63440
  %i.af = getelementptr i8, ptr %i.ae, i64 8, !dbg !63440
  store double %i.ad, ptr %i.af, align 8, !dbg !63447, !noalias !63450
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63419
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !63419
  %.val16.i.2 = load double, ptr %i.ah, align 8, !dbg !63423, !noalias !63424, !noundef !14
  %i.ai = tail call noundef double @llvm.floor.f64(double %.val16.i.2), !dbg !63427
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63440
  %i.ak = getelementptr i8, ptr %i.aj, i64 16, !dbg !63440
  store double %i.ai, ptr %i.ak, align 8, !dbg !63447, !noalias !63450
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63419
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !63419
  %.val16.i.3 = load double, ptr %i.am, align 8, !dbg !63423, !noalias !63424, !noundef !14
  %i.an = tail call noundef double @llvm.floor.f64(double %.val16.i.3), !dbg !63427
  %i.ao = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !63440
  %i.ap = getelementptr i8, ptr %i.ao, i64 24, !dbg !63440
  store double %i.an, ptr %i.ap, align 8, !dbg !63447, !noalias !63450
  %i.aq = add i64 %i.x, 4, !dbg !63461            ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 4, !dbg !63464 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.e, !dbg !63459
  br i1 %i.as, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5floors_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !63459, !llvm.loop !63468

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5floors_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aq, %scalar.ph ], !dbg !63469
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !63469, !noalias !63424
  ret void, !dbg !63480
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeB3K_E0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5h_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !63481 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !63482 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !63482
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !63482 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !63482
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !63482 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63485
  %i.a = icmp eq ptr %0, %1, !dbg !63494
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeB3T_E0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.b, !dbg !63495

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63496
  %i.c = ptrtoint ptr %0 to i64, !dbg !63496
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63496      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !63496      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !63508
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !63508

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !63508

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63509 ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %index, !dbg !63510 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !63523
  store <2 x double> splat (double 1.000000e+00), ptr %i.h, align 8, !dbg !63523, !noalias !63526
  store <2 x double> splat (double 1.000000e+00), ptr %i.i, align 8, !dbg !63523, !noalias !63526
  %index.next = add nuw i64 %index, 4, !dbg !63509 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !63537
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !63537, !llvm.loop !63538

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !63537
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeB3T_E0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %scalar.ph.preheader, !dbg !63537

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !63537

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.k = phi i64 [ %i.m, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !63539 ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !63509
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !63510
  store double 1.000000e+00, ptr %i.l, align 8, !dbg !63523, !noalias !63526
  %i.m = add i64 %i.k, 1, !dbg !63540             ; 2 uses
  %i.n = add nuw i64 %.sroa.01.0.i, 1, !dbg !63543 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.e, !dbg !63537
  br i1 %i.o, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeB3T_E0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %scalar.ph, !dbg !63537, !llvm.loop !63546

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeB3T_E0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %middle.block ], [ %i.m, %scalar.ph ], !dbg !63547
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !63547, !noalias !63558
  ret void, !dbg !63559
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2L_9datatypes11Float64TypeB4c_B4c_NCNvYNtNtB2L_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6X_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !63560 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !63561 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !63561
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !63561 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !63561
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !63561 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63564
  %i.a = icmp eq ptr %0, %1, !dbg !63573
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !63574

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !63561
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !63561, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %1 to i64, !dbg !63575
  %i.c = ptrtoint ptr %0 to i64, !dbg !63575
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63575      ; 3 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !63575      ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.8.0.copyload, i64 8 ; 3 uses
  %i.g = icmp eq i64 %i.d, 8, !dbg !63587
  br i1 %i.g, label %.epil.preheader, label %.new, !dbg !63587

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !63587
  br label %bb.c, !dbg !63587

bb.c:                                             ; preds = %bb.c, %.new
  %i.h = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.w, %bb.c ], !dbg !63588 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.x, %bb.c ], !dbg !63592 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63588
  %.val16.i = load double, ptr %i.i, align 8, !dbg !63593, !noalias !63594, !noundef !14
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !63597, !noalias !63605, !nonnull !14, !align !4162, !noundef !14
  %i.j = load double, ptr %.val.i.i.i.i, align 8, !dbg !63610, !alias.scope !63619, !noalias !63605, !noundef !14
  %i.k = tail call double @llvm.log.f64(double %i.j), !dbg !63622
  %i.l = tail call double @llvm.log.f64(double %.val16.i), !dbg !63630
  %i.m = fdiv double %i.k, %i.l, !dbg !63632
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !63633
  store double %i.m, ptr %i.n, align 8, !dbg !63640, !noalias !63643
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63588
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !63588
  %.val16.i.1 = load double, ptr %i.p, align 8, !dbg !63593, !noalias !63594, !noundef !14
  %.val.i.i.i.i.1 = load ptr, ptr %i.f, align 8, !dbg !63597, !noalias !63605, !nonnull !14, !align !4162, !noundef !14
  %i.q = load double, ptr %.val.i.i.i.i.1, align 8, !dbg !63610, !alias.scope !63619, !noalias !63605, !noundef !14
  %i.r = tail call double @llvm.log.f64(double %i.q), !dbg !63622
  %i.s = tail call double @llvm.log.f64(double %.val16.i.1), !dbg !63630
  %i.t = fdiv double %i.r, %i.s, !dbg !63632
  %i.u = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !63633
  %i.v = getelementptr i8, ptr %i.u, i64 8, !dbg !63633
  store double %i.t, ptr %i.v, align 8, !dbg !63640, !noalias !63643
  %i.w = add i64 %i.h, 2, !dbg !63648             ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 2, !dbg !63651 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !63654  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !63654
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !63654

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.y = and i64 %i.d, 8, !dbg !63654
  %lcmp.mod.not = icmp eq i64 %i.y, 0, !dbg !63654
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !63654

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !63654
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !63654
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !63588
  %.val16.i.epil = load double, ptr %i.z, align 8, !dbg !63593, !noalias !63594, !noundef !14
  %.val.i.i.i.i.epil = load ptr, ptr %i.f, align 8, !dbg !63597, !noalias !63605, !nonnull !14, !align !4162, !noundef !14
  %i.aa = load double, ptr %.val.i.i.i.i.epil, align 8, !dbg !63610, !alias.scope !63619, !noalias !63605, !noundef !14
  %i.ab = tail call double @llvm.log.f64(double %i.aa), !dbg !63622
  %i.ac = tail call double @llvm.log.f64(double %.val16.i.epil), !dbg !63630
  %i.ad = fdiv double %i.ab, %i.ac, !dbg !63632
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !63633
  store double %i.ad, ptr %i.ae, align 8, !dbg !63640, !noalias !63643
  %i.af = add i64 %.epil.init, 1, !dbg !63648
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB75_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.af, %.epil.preheader ], !dbg !63655
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !63655, !noalias !63594
  ret void, !dbg !63666
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2L_9datatypes11Float64TypeB4c_B4c_NCNvYNtNtB2L_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6Z_3VecdE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !63667 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !63668 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !63668
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !63668 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !63668
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !63668 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63671
  %i.a = icmp eq ptr %0, %1, !dbg !63680
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !63681

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !63668
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !63668, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %1 to i64, !dbg !63682
  %i.c = ptrtoint ptr %0 to i64, !dbg !63682
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63682      ; 3 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !63682      ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.8.0.copyload, i64 8 ; 3 uses
  %i.g = icmp eq i64 %i.d, 8, !dbg !63694
  br i1 %i.g, label %.epil.preheader, label %.new, !dbg !63694

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !63694
  br label %bb.c, !dbg !63694

bb.c:                                             ; preds = %bb.c, %.new
  %i.h = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.w, %bb.c ], !dbg !63695 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.x, %bb.c ], !dbg !63699 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63695
  %.val16.i = load double, ptr %i.i, align 8, !dbg !63700, !noalias !63701, !noundef !14
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !63704, !noalias !63712, !nonnull !14, !align !4162, !noundef !14
  %i.j = load double, ptr %.val.i.i.i.i, align 8, !dbg !63717, !alias.scope !63721, !noalias !63712, !noundef !14
  %i.k = tail call double @llvm.log.f64(double %.val16.i), !dbg !63724
  %i.l = tail call double @llvm.log.f64(double %i.j), !dbg !63728
  %i.m = fdiv double %i.k, %i.l, !dbg !63730
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !63731
  store double %i.m, ptr %i.n, align 8, !dbg !63738, !noalias !63741
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63695
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !63695
  %.val16.i.1 = load double, ptr %i.p, align 8, !dbg !63700, !noalias !63701, !noundef !14
  %.val.i.i.i.i.1 = load ptr, ptr %i.f, align 8, !dbg !63704, !noalias !63712, !nonnull !14, !align !4162, !noundef !14
  %i.q = load double, ptr %.val.i.i.i.i.1, align 8, !dbg !63717, !alias.scope !63721, !noalias !63712, !noundef !14
  %i.r = tail call double @llvm.log.f64(double %.val16.i.1), !dbg !63724
  %i.s = tail call double @llvm.log.f64(double %i.q), !dbg !63728
  %i.t = fdiv double %i.r, %i.s, !dbg !63730
  %i.u = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !63731
  %i.v = getelementptr i8, ptr %i.u, i64 8, !dbg !63731
  store double %i.t, ptr %i.v, align 8, !dbg !63738, !noalias !63741
  %i.w = add i64 %i.h, 2, !dbg !63746             ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 2, !dbg !63749 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !63752  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !63752
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !63752

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.y = and i64 %i.d, 8, !dbg !63752
  %lcmp.mod.not = icmp eq i64 %i.y, 0, !dbg !63752
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !63752

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !63752
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !63752
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !63695
  %.val16.i.epil = load double, ptr %i.z, align 8, !dbg !63700, !noalias !63701, !noundef !14
  %.val.i.i.i.i.epil = load ptr, ptr %i.f, align 8, !dbg !63704, !noalias !63712, !nonnull !14, !align !4162, !noundef !14
  %i.aa = load double, ptr %.val.i.i.i.i.epil, align 8, !dbg !63717, !alias.scope !63721, !noalias !63712, !noundef !14
  %i.ab = tail call double @llvm.log.f64(double %.val16.i.epil), !dbg !63724
  %i.ac = tail call double @llvm.log.f64(double %i.aa), !dbg !63728
  %i.ad = fdiv double %i.ab, %i.ac, !dbg !63730
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !63731
  store double %i.ad, ptr %i.ae, align 8, !dbg !63738, !noalias !63741
  %i.af = add i64 %.epil.init, 1, !dbg !63746
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddduQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float64TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs0_0dEs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB77_3VecdE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.af, %.epil.preheader ], !dbg !63753
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !63753, !noalias !63701
  ret void, !dbg !63764
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef float @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, float noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !63765 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63766
  %i.a = icmp eq ptr %0, %1, !dbg !63775
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !63776

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63777
  %i.c = ptrtoint ptr %0 to i64, !dbg !63777
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63777      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !63777      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !63789
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !63789

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 4611686018427387896      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !63789

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63790 ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi2 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !63791 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !63795
  %wide.load = load <4 x float>, ptr %i.f, align 4, !dbg !63795
  %wide.load3 = load <4 x float>, ptr %i.g, align 4, !dbg !63795
  %i.h = tail call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %vec.phi, <4 x float> %wide.load), !dbg !63796 ; 2 uses
  %i.i = tail call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %vec.phi2, <4 x float> %wide.load3), !dbg !63796 ; 2 uses
  %index.next = add nuw i64 %index, 8, !dbg !63790 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !63806
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !63806, !llvm.loop !63807

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %i.h, <4 x float> %i.i), !dbg !63806
  %i.k = tail call nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax), !dbg !63806 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !63806
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !63806

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi float [ %2, %bb.b ], [ %i.k, %middle.block ]
  br label %scalar.ph, !dbg !63806

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !63790 ; 2 uses
  %.sroa.02.0.i = phi float [ %i.m, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !63808
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !63791
  %.val.i = load float, ptr %i.l, align 4, !dbg !63795, !noundef !14
  %i.m = tail call nsz noundef float @llvm.maximumnum.f32(float %.sroa.02.0.i, float %.val.i), !dbg !63796 ; 2 uses
  %i.n = add nuw i64 %.sroa.04.0.i, 1, !dbg !63809 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.e, !dbg !63806
  br i1 %i.o, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !63806, !llvm.loop !63812

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi float [ %2, %bb.a ], [ %i.k, %middle.block ], [ %i.m, %scalar.ph ], !dbg !63808
  ret float %.sroa.0.0.i, !dbg !63813
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef float @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, float noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !63814 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63815
  %i.a = icmp eq ptr %0, %1, !dbg !63824
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !63825

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63826
  %i.c = ptrtoint ptr %0 to i64, !dbg !63826
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63826      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !63826      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !63838
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !63838

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 4611686018427387896      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !63838

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63839 ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi2 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !63840 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !63844
  %wide.load = load <4 x float>, ptr %i.f, align 4, !dbg !63844
  %wide.load3 = load <4 x float>, ptr %i.g, align 4, !dbg !63844
  %i.h = tail call nsz <4 x float> @llvm.minimumnum.v4f32(<4 x float> %vec.phi, <4 x float> %wide.load), !dbg !63845 ; 2 uses
  %i.i = tail call nsz <4 x float> @llvm.minimumnum.v4f32(<4 x float> %vec.phi2, <4 x float> %wide.load3), !dbg !63845 ; 2 uses
  %index.next = add nuw i64 %index, 8, !dbg !63839 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !63855
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !63855, !llvm.loop !63856

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call nsz <4 x float> @llvm.minimumnum.v4f32(<4 x float> %i.h, <4 x float> %i.i), !dbg !63855
  %i.k = tail call nsz float @llvm.vector.reduce.fmin.v4f32(<4 x float> %rdx.minmax), !dbg !63855 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !63855
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !63855

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi float [ %2, %bb.b ], [ %i.k, %middle.block ]
  br label %scalar.ph, !dbg !63855

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !63839 ; 2 uses
  %.sroa.02.0.i = phi float [ %i.m, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !63857
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !63840
  %.val.i = load float, ptr %i.l, align 4, !dbg !63844, !noundef !14
  %i.m = tail call nsz noundef float @llvm.minimumnum.f32(float %.sroa.02.0.i, float %.val.i), !dbg !63845 ; 2 uses
  %i.n = add nuw i64 %.sroa.04.0.i, 1, !dbg !63858 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.e, !dbg !63855
  br i1 %i.o, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !63855, !llvm.loop !63861

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi float [ %2, %bb.a ], [ %i.k, %middle.block ], [ %i.m, %scalar.ph ], !dbg !63857
  ret float %.sroa.0.0.i, !dbg !63862
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef float @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, float noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !63863 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63864
  %i.a = icmp eq ptr %0, %1, !dbg !63873
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !63874

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63875
  %i.c = ptrtoint ptr %0 to i64, !dbg !63875
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63875      ; 3 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !63875      ; 2 uses
  %i.f = icmp eq i64 %i.d, 4, !dbg !63887
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !63887

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387902, !dbg !63887
  br label %bb.c, !dbg !63887

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.p, %bb.c ], !dbg !63888 ; 3 uses
  %.sroa.02.0.i = phi float [ %2, %.new ], [ %..i.i.i.i.1, %bb.c ], !dbg !63889 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !63890
  %.val.i = load float, ptr %i.g, align 4, !dbg !63894, !noundef !14 ; 2 uses
  %i.h = fcmp ogt float %.sroa.02.0.i, %.val.i, !dbg !63895
  %i.i = fcmp uno float %.sroa.02.0.i, 0.000000e+00, !dbg !63902
  %i.j = or i1 %i.i, %i.h, !dbg !63895
  %..i.i.i.i = select i1 %i.j, float %.sroa.02.0.i, float %.val.i, !dbg !63904 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !63890
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !63890
  %.val.i.1 = load float, ptr %i.l, align 4, !dbg !63894, !noundef !14 ; 2 uses
  %i.m = fcmp ogt float %..i.i.i.i, %.val.i.1, !dbg !63895
  %i.n = fcmp uno float %..i.i.i.i, 0.000000e+00, !dbg !63902
  %i.o = or i1 %i.n, %i.m, !dbg !63895
  %..i.i.i.i.1 = select i1 %i.o, float %..i.i.i.i, float %.val.i.1, !dbg !63904 ; 3 uses
  %i.p = add nuw i64 %.sroa.04.0.i, 2, !dbg !63905 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !63908  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !63908
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !63908

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.q = and i64 %i.d, 4, !dbg !63908
  %lcmp.mod.not = icmp eq i64 %i.q, 0, !dbg !63908
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !63908

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.p, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ %2, %bb.b ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !63908
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !63908
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init, !dbg !63890
  %.val.i.epil = load float, ptr %i.r, align 4, !dbg !63894, !noundef !14 ; 2 uses
  %i.s = fcmp ogt float %.sroa.02.0.i.epil.init, %.val.i.epil, !dbg !63895
  %i.t = fcmp uno float %.sroa.02.0.i.epil.init, 0.000000e+00, !dbg !63902
  %i.u = or i1 %i.t, %i.s, !dbg !63895
  %..i.i.i.i.epil = select i1 %i.u, float %.sroa.02.0.i.epil.init, float %.val.i.epil, !dbg !63904
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !63909

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi float [ %2, %bb.a ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %.epil.preheader ], !dbg !63889
  ret float %.sroa.0.0.i, !dbg !63909
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef float @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, float noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !63910 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63911
  %i.a = icmp eq ptr %0, %1, !dbg !63920
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !63921

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63922
  %i.c = ptrtoint ptr %0 to i64, !dbg !63922
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63922      ; 3 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !63922      ; 2 uses
  %i.f = icmp eq i64 %i.d, 4, !dbg !63934
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !63934

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387902, !dbg !63934
  br label %bb.c, !dbg !63934

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.p, %bb.c ], !dbg !63935 ; 3 uses
  %.sroa.02.0.i = phi float [ %2, %.new ], [ %..i.i.i.i.1, %bb.c ], !dbg !63936 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !63937
  %.val.i = load float, ptr %i.g, align 4, !dbg !63941, !noundef !14 ; 2 uses
  %i.h = fcmp olt float %.sroa.02.0.i, %.val.i, !dbg !63942
  %i.i = fcmp uno float %.sroa.02.0.i, 0.000000e+00, !dbg !63949
  %i.j = or i1 %i.i, %i.h, !dbg !63942
  %..i.i.i.i = select i1 %i.j, float %.sroa.02.0.i, float %.val.i, !dbg !63951 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !63937
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !63937
  %.val.i.1 = load float, ptr %i.l, align 4, !dbg !63941, !noundef !14 ; 2 uses
  %i.m = fcmp olt float %..i.i.i.i, %.val.i.1, !dbg !63942
  %i.n = fcmp uno float %..i.i.i.i, 0.000000e+00, !dbg !63949
  %i.o = or i1 %i.n, %i.m, !dbg !63942
  %..i.i.i.i.1 = select i1 %i.o, float %..i.i.i.i, float %.val.i.1, !dbg !63951 ; 3 uses
  %i.p = add nuw i64 %.sroa.04.0.i, 2, !dbg !63952 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !63955  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !63955
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !63955

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.q = and i64 %i.d, 4, !dbg !63955
  %lcmp.mod.not = icmp eq i64 %i.q, 0, !dbg !63955
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !63955

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.p, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ %2, %bb.b ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !63955
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !63955
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init, !dbg !63937
  %.val.i.epil = load float, ptr %i.r, align 4, !dbg !63941, !noundef !14 ; 2 uses
  %i.s = fcmp olt float %.sroa.02.0.i.epil.init, %.val.i.epil, !dbg !63942
  %i.t = fcmp uno float %.sroa.02.0.i.epil.init, 0.000000e+00, !dbg !63949
  %i.u = or i1 %i.t, %i.s, !dbg !63942
  %..i.i.i.i.epil = select i1 %i.u, float %.sroa.02.0.i.epil.init, float %.val.i.epil, !dbg !63951
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !63956

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi float [ %2, %bb.a ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %.epil.preheader ], !dbg !63936
  ret float %.sroa.0.0.i, !dbg !63956
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !63957 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !63958 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !63958
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !63958 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !63958
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !63958 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !63961
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !63961
  %i.a = icmp eq ptr %0, %1, !dbg !63970
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !63971

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !63972
  %i.c = ptrtoint ptr %0 to i64, !dbg !63972      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !63972      ; 2 uses
  %i.e = lshr i64 %i.d, 2, !dbg !63972            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 16, !dbg !63984
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !63984

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2, !dbg !63984
  %i.g = add i64 %i.f, %.sroa.7.0.copyload2, !dbg !63984
  %i.h = sub i64 %i.c, %i.g, !dbg !63984
  %diff.check = icmp ugt i64 %i.h, -16, !dbg !63984
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !63985

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387900      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !63985

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63985 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !63986
  %wide.load = load <4 x float>, ptr %i.k, align 4, !dbg !63990, !noalias !63991
  %i.l = tail call <4 x float> @llvm.cos.v4f32(<4 x float> %wide.load), !dbg !63994
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index, !dbg !64007
  store <4 x float> %i.l, ptr %i.m, align 4, !dbg !64014, !noalias !64017
  %index.next = add nuw i64 %index, 4, !dbg !63985 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !64026
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !64026, !llvm.loop !64027

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !64026
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !64026

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !64026        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !64026
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !64026

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.o = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !63986 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !63985 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !63986
  %.val16.i.prol = load float, ptr %i.p, align 4, !dbg !63990, !noalias !63991, !noundef !14
  %i.q = tail call noundef float @llvm.cos.f32(float %.val16.i.prol), !dbg !63994
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.o, !dbg !64007
  store float %i.q, ptr %i.r, align 4, !dbg !64014, !noalias !64017
  %i.s = add i64 %i.o, 1, !dbg !64028             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !64031 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !64026 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !64026
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !64026, !llvm.loop !64034

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !64026
  %i.v = icmp ugt i64 %i.u, -4, !dbg !64026
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !64026

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.ap, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !63986 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !63985 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63986
  %.val16.i = load float, ptr %i.x, align 4, !dbg !63990, !noalias !63991, !noundef !14
  %i.y = tail call noundef float @llvm.cos.f32(float %.val16.i), !dbg !63994
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !64007
  store float %i.y, ptr %i.z, align 4, !dbg !64014, !noalias !64017
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63986
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4, !dbg !63986
  %.val16.i.1 = load float, ptr %i.ab, align 4, !dbg !63990, !noalias !63991, !noundef !14
  %i.ac = tail call noundef float @llvm.cos.f32(float %.val16.i.1), !dbg !63994
  %i.ad = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !64007
  %i.ae = getelementptr i8, ptr %i.ad, i64 4, !dbg !64007
  store float %i.ac, ptr %i.ae, align 4, !dbg !64014, !noalias !64017
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63986
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !63986
  %.val16.i.2 = load float, ptr %i.ag, align 4, !dbg !63990, !noalias !63991, !noundef !14
  %i.ah = tail call noundef float @llvm.cos.f32(float %.val16.i.2), !dbg !63994
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !64007
  %i.aj = getelementptr i8, ptr %i.ai, i64 8, !dbg !64007
  store float %i.ah, ptr %i.aj, align 4, !dbg !64014, !noalias !64017
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !63986
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12, !dbg !63986
  %.val16.i.3 = load float, ptr %i.al, align 4, !dbg !63990, !noalias !63991, !noundef !14
  %i.am = tail call noundef float @llvm.cos.f32(float %.val16.i.3), !dbg !63994
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !64007
  %i.ao = getelementptr i8, ptr %i.an, i64 12, !dbg !64007
  store float %i.am, ptr %i.ao, align 4, !dbg !64014, !noalias !64017
  %i.ap = add i64 %i.w, 4, !dbg !64028            ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i, 4, !dbg !64031 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.e, !dbg !64026
  br i1 %i.ar, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !64026, !llvm.loop !64035

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ap, %scalar.ph ], !dbg !64036
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64036, !noalias !63991
  ret void, !dbg !64047
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64048 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64049 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64049
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64049 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64049
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64049 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64052
  %i.a = icmp eq ptr %0, %1, !dbg !64061
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64062

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64063
  %i.c = ptrtoint ptr %0 to i64, !dbg !64063
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64063      ; 3 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !64063      ; 2 uses
  %i.f = icmp eq i64 %i.d, 4, !dbg !64075
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !64075

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387902, !dbg !64075
  br label %bb.c, !dbg !64075

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.r, %bb.c ], !dbg !64076 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.s, %bb.c ], !dbg !64080 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64076
  %.val16.i = load float, ptr %i.h, align 4, !dbg !64081, !noalias !64082, !noundef !14
  %i.i = tail call noundef float @tanf(float noundef %.val16.i) #56, !dbg !64085, !noalias !64097
  %i.j = fdiv float 1.000000e+00, %i.i, !dbg !64102
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64109
  store float %i.j, ptr %i.k, align 4, !dbg !64116, !noalias !64119
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64076
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4, !dbg !64076
  %.val16.i.1 = load float, ptr %i.m, align 4, !dbg !64081, !noalias !64082, !noundef !14
  %i.n = tail call noundef float @tanf(float noundef %.val16.i.1) #56, !dbg !64085, !noalias !64097
  %i.o = fdiv float 1.000000e+00, %i.n, !dbg !64102
  %i.p = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64109
  %i.q = getelementptr i8, ptr %i.p, i64 4, !dbg !64109
  store float %i.o, ptr %i.q, align 4, !dbg !64116, !noalias !64119
  %i.r = add i64 %i.g, 2, !dbg !64124             ; 3 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 2, !dbg !64127 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !64130  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !64130
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !64130

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.t = and i64 %i.d, 4, !dbg !64130
  %lcmp.mod.not = icmp eq i64 %i.t, 0, !dbg !64130
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !64130

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !64130
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !64130
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !64076
  %.val16.i.epil = load float, ptr %i.u, align 4, !dbg !64081, !noalias !64082, !noundef !14
  %i.v = tail call noundef float @tanf(float noundef %.val16.i.epil) #56, !dbg !64085, !noalias !64097
  %i.w = fdiv float 1.000000e+00, %i.v, !dbg !64102
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !64109
  store float %i.w, ptr %i.x, align 4, !dbg !64116, !noalias !64119
  %i.y = add i64 %.epil.init, 1, !dbg !64124
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3cotNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ], !dbg !64131
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64131, !noalias !64082
  ret void, !dbg !64142
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64143 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64144 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64144
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64144 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64144
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64144 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !64147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64147
  %i.a = icmp eq ptr %0, %1, !dbg !64156
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64157

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64158
  %i.c = ptrtoint ptr %0 to i64, !dbg !64158      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64158      ; 2 uses
  %i.e = lshr i64 %i.d, 2, !dbg !64158            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 16, !dbg !64170
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !64170

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2, !dbg !64170
  %i.g = add i64 %i.f, %.sroa.7.0.copyload2, !dbg !64170
  %i.h = sub i64 %i.c, %i.g, !dbg !64170
  %diff.check = icmp ugt i64 %i.h, -16, !dbg !64170
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !64171

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387900      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !64171

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !64171 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !64172
  %wide.load = load <4 x float>, ptr %i.k, align 4, !dbg !64176, !noalias !64177
  %i.l = tail call <4 x float> @llvm.sin.v4f32(<4 x float> %wide.load), !dbg !64180
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index, !dbg !64192
  store <4 x float> %i.l, ptr %i.m, align 4, !dbg !64199, !noalias !64202
  %index.next = add nuw i64 %index, 4, !dbg !64171 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !64211
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !64211, !llvm.loop !64212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !64211
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph.preheader, !dbg !64211

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !64211        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !64211
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !64211

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.o = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !64172 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !64171 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !64172
  %.val16.i.prol = load float, ptr %i.p, align 4, !dbg !64176, !noalias !64177, !noundef !14
  %i.q = tail call noundef float @llvm.sin.f32(float %.val16.i.prol), !dbg !64180
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.o, !dbg !64192
  store float %i.q, ptr %i.r, align 4, !dbg !64199, !noalias !64202
  %i.s = add i64 %i.o, 1, !dbg !64213             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !64216 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !64211 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !64211
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !64211, !llvm.loop !64219

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !64211
  %i.v = icmp ugt i64 %i.u, -4, !dbg !64211
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !64211

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.ap, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !64172 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !64171 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64172
  %.val16.i = load float, ptr %i.x, align 4, !dbg !64176, !noalias !64177, !noundef !14
  %i.y = tail call noundef float @llvm.sin.f32(float %.val16.i), !dbg !64180
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !64192
  store float %i.y, ptr %i.z, align 4, !dbg !64199, !noalias !64202
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64172
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4, !dbg !64172
  %.val16.i.1 = load float, ptr %i.ab, align 4, !dbg !64176, !noalias !64177, !noundef !14
  %i.ac = tail call noundef float @llvm.sin.f32(float %.val16.i.1), !dbg !64180
  %i.ad = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !64192
  %i.ae = getelementptr i8, ptr %i.ad, i64 4, !dbg !64192
  store float %i.ac, ptr %i.ae, align 4, !dbg !64199, !noalias !64202
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64172
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !64172
  %.val16.i.2 = load float, ptr %i.ag, align 4, !dbg !64176, !noalias !64177, !noundef !14
  %i.ah = tail call noundef float @llvm.sin.f32(float %.val16.i.2), !dbg !64180
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !64192
  %i.aj = getelementptr i8, ptr %i.ai, i64 8, !dbg !64192
  store float %i.ah, ptr %i.aj, align 4, !dbg !64199, !noalias !64202
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64172
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12, !dbg !64172
  %.val16.i.3 = load float, ptr %i.al, align 4, !dbg !64176, !noalias !64177, !noundef !14
  %i.am = tail call noundef float @llvm.sin.f32(float %.val16.i.3), !dbg !64180
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !64192
  %i.ao = getelementptr i8, ptr %i.an, i64 12, !dbg !64192
  store float %i.am, ptr %i.ao, align 4, !dbg !64199, !noalias !64202
  %i.ap = add i64 %i.w, 4, !dbg !64213            ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i, 4, !dbg !64216 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.e, !dbg !64211
  br i1 %i.ar, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %scalar.ph, !dbg !64211, !llvm.loop !64220

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3sinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ap, %scalar.ph ], !dbg !64221
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64221, !noalias !64177
  ret void, !dbg !64232
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64233 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64234 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64234
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64234 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64234
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64234 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64237
  %i.a = icmp eq ptr %0, %1, !dbg !64246
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64247

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64248
  %i.c = ptrtoint ptr %0 to i64, !dbg !64248
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64248      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !64248      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !64260        ; 3 uses
  %i.f = icmp ult i64 %i.d, 16, !dbg !64260
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !64260

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387900, !dbg !64260
  br label %bb.c, !dbg !64260

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !64261 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !64265 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64261
  %.val16.i = load float, ptr %i.h, align 4, !dbg !64266, !noalias !64267, !noundef !14
  %i.i = tail call noundef float @tanf(float noundef %.val16.i) #56, !dbg !64270, !noalias !64280
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64285
  store float %i.i, ptr %i.j, align 4, !dbg !64292, !noalias !64295
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64261
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !64261
  %.val16.i.1 = load float, ptr %i.l, align 4, !dbg !64266, !noalias !64267, !noundef !14
  %i.m = tail call noundef float @tanf(float noundef %.val16.i.1) #56, !dbg !64270, !noalias !64280
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64285
  %i.o = getelementptr i8, ptr %i.n, i64 4, !dbg !64285
  store float %i.m, ptr %i.o, align 4, !dbg !64292, !noalias !64295
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64261
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !64261
  %.val16.i.2 = load float, ptr %i.q, align 4, !dbg !64266, !noalias !64267, !noundef !14
  %i.r = tail call noundef float @tanf(float noundef %.val16.i.2) #56, !dbg !64270, !noalias !64280
  %i.s = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64285
  %i.t = getelementptr i8, ptr %i.s, i64 8, !dbg !64285
  store float %i.r, ptr %i.t, align 4, !dbg !64292, !noalias !64295
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64261
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12, !dbg !64261
  %.val16.i.3 = load float, ptr %i.v, align 4, !dbg !64266, !noalias !64267, !noundef !14
  %i.w = tail call noundef float @tanf(float noundef %.val16.i.3) #56, !dbg !64270, !noalias !64280
  %i.x = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64285
  %i.y = getelementptr i8, ptr %i.x, i64 12, !dbg !64285
  store float %i.w, ptr %i.y, align 4, !dbg !64292, !noalias !64295
  %i.z = add i64 %i.g, 4, !dbg !64300             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !64303 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !64306  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !64306
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !64306

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !64306
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !64306

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !64306
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !64306
  br label %bb.d, !dbg !64306

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !64261 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !64265 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !64261
  %.val16.i.epil = load float, ptr %i.ac, align 4, !dbg !64266, !noalias !64267, !noundef !14
  %i.ad = tail call noundef float @tanf(float noundef %.val16.i.epil) #56, !dbg !64270, !noalias !64280
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !64285
  store float %i.ad, ptr %i.ae, align 4, !dbg !64292, !noalias !64295
  %i.af = add i64 %i.ab, 1, !dbg !64300           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !64303
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !64306 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !64306
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !64306, !llvm.loop !64307

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry3tanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !64308
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64308, !noalias !64267
  ret void, !dbg !64319
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64320 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64321 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64321
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64321 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64321
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64321 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64324
  %i.a = icmp eq ptr %0, %1, !dbg !64333
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64334

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64335
  %i.c = ptrtoint ptr %0 to i64, !dbg !64335
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64335      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !64335      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !64347        ; 3 uses
  %i.f = icmp ult i64 %i.d, 16, !dbg !64347
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !64347

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387900, !dbg !64347
  br label %bb.c, !dbg !64347

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !64348 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !64352 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64348
  %.val16.i = load float, ptr %i.h, align 4, !dbg !64353, !noalias !64354, !noundef !14
  %i.i = tail call noundef float @coshf(float noundef %.val16.i) #56, !dbg !64357, !noalias !64369
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64374
  store float %i.i, ptr %i.j, align 4, !dbg !64381, !noalias !64384
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64348
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !64348
  %.val16.i.1 = load float, ptr %i.l, align 4, !dbg !64353, !noalias !64354, !noundef !14
  %i.m = tail call noundef float @coshf(float noundef %.val16.i.1) #56, !dbg !64357, !noalias !64369
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64374
  %i.o = getelementptr i8, ptr %i.n, i64 4, !dbg !64374
  store float %i.m, ptr %i.o, align 4, !dbg !64381, !noalias !64384
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64348
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !64348
  %.val16.i.2 = load float, ptr %i.q, align 4, !dbg !64353, !noalias !64354, !noundef !14
  %i.r = tail call noundef float @coshf(float noundef %.val16.i.2) #56, !dbg !64357, !noalias !64369
  %i.s = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64374
  %i.t = getelementptr i8, ptr %i.s, i64 8, !dbg !64374
  store float %i.r, ptr %i.t, align 4, !dbg !64381, !noalias !64384
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64348
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12, !dbg !64348
  %.val16.i.3 = load float, ptr %i.v, align 4, !dbg !64353, !noalias !64354, !noundef !14
  %i.w = tail call noundef float @coshf(float noundef %.val16.i.3) #56, !dbg !64357, !noalias !64369
  %i.x = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64374
  %i.y = getelementptr i8, ptr %i.x, i64 12, !dbg !64374
  store float %i.w, ptr %i.y, align 4, !dbg !64381, !noalias !64384
  %i.z = add i64 %i.g, 4, !dbg !64389             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !64392 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !64395  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !64395
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !64395

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !64395
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !64395

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !64395
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !64395
  br label %bb.d, !dbg !64395

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !64348 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !64352 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !64348
  %.val16.i.epil = load float, ptr %i.ac, align 4, !dbg !64353, !noalias !64354, !noundef !14
  %i.ad = tail call noundef float @coshf(float noundef %.val16.i.epil) #56, !dbg !64357, !noalias !64369
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !64374
  store float %i.ad, ptr %i.ae, align 4, !dbg !64381, !noalias !64384
  %i.af = add i64 %i.ab, 1, !dbg !64389           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !64392
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !64395 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !64395
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !64395, !llvm.loop !64396

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4coshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !64397
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64397, !noalias !64354
  ret void, !dbg !64408
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64409 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64410 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64410
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64410 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64410
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64410 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64413
  %i.a = icmp eq ptr %0, %1, !dbg !64422
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64423

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64424
  %i.c = ptrtoint ptr %0 to i64, !dbg !64424
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64424      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !64424      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !64436        ; 3 uses
  %i.f = icmp ult i64 %i.d, 16, !dbg !64436
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !64436

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387900, !dbg !64436
  br label %bb.c, !dbg !64436

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !64437 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !64441 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64437
  %.val16.i = load float, ptr %i.h, align 4, !dbg !64442, !noalias !64443, !noundef !14
  %i.i = tail call noundef float @sinhf(float noundef %.val16.i) #56, !dbg !64446, !noalias !64458
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64463
  store float %i.i, ptr %i.j, align 4, !dbg !64470, !noalias !64473
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64437
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !64437
  %.val16.i.1 = load float, ptr %i.l, align 4, !dbg !64442, !noalias !64443, !noundef !14
  %i.m = tail call noundef float @sinhf(float noundef %.val16.i.1) #56, !dbg !64446, !noalias !64458
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64463
  %i.o = getelementptr i8, ptr %i.n, i64 4, !dbg !64463
  store float %i.m, ptr %i.o, align 4, !dbg !64470, !noalias !64473
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64437
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !64437
  %.val16.i.2 = load float, ptr %i.q, align 4, !dbg !64442, !noalias !64443, !noundef !14
  %i.r = tail call noundef float @sinhf(float noundef %.val16.i.2) #56, !dbg !64446, !noalias !64458
  %i.s = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64463
  %i.t = getelementptr i8, ptr %i.s, i64 8, !dbg !64463
  store float %i.r, ptr %i.t, align 4, !dbg !64470, !noalias !64473
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64437
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12, !dbg !64437
  %.val16.i.3 = load float, ptr %i.v, align 4, !dbg !64442, !noalias !64443, !noundef !14
  %i.w = tail call noundef float @sinhf(float noundef %.val16.i.3) #56, !dbg !64446, !noalias !64458
  %i.x = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64463
  %i.y = getelementptr i8, ptr %i.x, i64 12, !dbg !64463
  store float %i.w, ptr %i.y, align 4, !dbg !64470, !noalias !64473
  %i.z = add i64 %i.g, 4, !dbg !64478             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !64481 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !64484  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !64484
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !64484

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !64484
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !64484

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !64484
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !64484
  br label %bb.d, !dbg !64484

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !64437 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !64441 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !64437
  %.val16.i.epil = load float, ptr %i.ac, align 4, !dbg !64442, !noalias !64443, !noundef !14
  %i.ad = tail call noundef float @sinhf(float noundef %.val16.i.epil) #56, !dbg !64446, !noalias !64458
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !64463
  store float %i.ad, ptr %i.ae, align 4, !dbg !64470, !noalias !64473
  %i.af = add i64 %i.ab, 1, !dbg !64478           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !64481
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !64484 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !64484
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !64484, !llvm.loop !64485

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4sinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !64486
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64486, !noalias !64443
  ret void, !dbg !64497
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64498 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64499 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64499
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64499 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64499
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64499 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64502
  %i.a = icmp eq ptr %0, %1, !dbg !64511
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64512

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64513
  %i.c = ptrtoint ptr %0 to i64, !dbg !64513
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64513      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !64513      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !64525        ; 3 uses
  %i.f = icmp ult i64 %i.d, 16, !dbg !64525
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !64525

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387900, !dbg !64525
  br label %bb.c, !dbg !64525

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !64526 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !64530 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64526
  %.val16.i = load float, ptr %i.h, align 4, !dbg !64531, !noalias !64532, !noundef !14
  %i.i = tail call noundef float @tanhf(float noundef %.val16.i) #56, !dbg !64535, !noalias !64547
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64552
  store float %i.i, ptr %i.j, align 4, !dbg !64559, !noalias !64562
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64526
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !64526
  %.val16.i.1 = load float, ptr %i.l, align 4, !dbg !64531, !noalias !64532, !noundef !14
  %i.m = tail call noundef float @tanhf(float noundef %.val16.i.1) #56, !dbg !64535, !noalias !64547
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64552
  %i.o = getelementptr i8, ptr %i.n, i64 4, !dbg !64552
  store float %i.m, ptr %i.o, align 4, !dbg !64559, !noalias !64562
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64526
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !64526
  %.val16.i.2 = load float, ptr %i.q, align 4, !dbg !64531, !noalias !64532, !noundef !14
  %i.r = tail call noundef float @tanhf(float noundef %.val16.i.2) #56, !dbg !64535, !noalias !64547
  %i.s = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64552
  %i.t = getelementptr i8, ptr %i.s, i64 8, !dbg !64552
  store float %i.r, ptr %i.t, align 4, !dbg !64559, !noalias !64562
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64526
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12, !dbg !64526
  %.val16.i.3 = load float, ptr %i.v, align 4, !dbg !64531, !noalias !64532, !noundef !14
  %i.w = tail call noundef float @tanhf(float noundef %.val16.i.3) #56, !dbg !64535, !noalias !64547
  %i.x = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64552
  %i.y = getelementptr i8, ptr %i.x, i64 12, !dbg !64552
  store float %i.w, ptr %i.y, align 4, !dbg !64559, !noalias !64562
  %i.z = add i64 %i.g, 4, !dbg !64567             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !64570 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !64573  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !64573
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !64573

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !64573
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !64573

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !64573
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !64573
  br label %bb.d, !dbg !64573

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !64526 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !64530 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !64526
  %.val16.i.epil = load float, ptr %i.ac, align 4, !dbg !64531, !noalias !64532, !noundef !14
  %i.ad = tail call noundef float @tanhf(float noundef %.val16.i.epil) #56, !dbg !64535, !noalias !64547
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !64552
  store float %i.ad, ptr %i.ae, align 4, !dbg !64559, !noalias !64562
  %i.af = add i64 %i.ab, 1, !dbg !64567           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !64570
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !64573 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !64573
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !64573, !llvm.loop !64574

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry4tanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5c_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !64575
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64575, !noalias !64532
  ret void, !dbg !64586
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64587 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64588 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64588
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64588 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64588
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64588 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64591
  %i.a = icmp eq ptr %0, %1, !dbg !64600
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64601

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64602
  %i.c = ptrtoint ptr %0 to i64, !dbg !64602
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64602      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !64602      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !64614        ; 3 uses
  %i.f = icmp ult i64 %i.d, 16, !dbg !64614
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !64614

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387900, !dbg !64614
  br label %bb.c, !dbg !64614

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !64615 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !64619 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64615
  %.val16.i = load float, ptr %i.h, align 4, !dbg !64620, !noalias !64621, !noundef !14
  %i.i = tail call noundef float @acosf(float noundef %.val16.i) #56, !dbg !64624, !noalias !64636
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64641
  store float %i.i, ptr %i.j, align 4, !dbg !64648, !noalias !64651
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64615
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !64615
  %.val16.i.1 = load float, ptr %i.l, align 4, !dbg !64620, !noalias !64621, !noundef !14
  %i.m = tail call noundef float @acosf(float noundef %.val16.i.1) #56, !dbg !64624, !noalias !64636
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64641
  %i.o = getelementptr i8, ptr %i.n, i64 4, !dbg !64641
  store float %i.m, ptr %i.o, align 4, !dbg !64648, !noalias !64651
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64615
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !64615
  %.val16.i.2 = load float, ptr %i.q, align 4, !dbg !64620, !noalias !64621, !noundef !14
  %i.r = tail call noundef float @acosf(float noundef %.val16.i.2) #56, !dbg !64624, !noalias !64636
  %i.s = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64641
  %i.t = getelementptr i8, ptr %i.s, i64 8, !dbg !64641
  store float %i.r, ptr %i.t, align 4, !dbg !64648, !noalias !64651
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64615
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12, !dbg !64615
  %.val16.i.3 = load float, ptr %i.v, align 4, !dbg !64620, !noalias !64621, !noundef !14
  %i.w = tail call noundef float @acosf(float noundef %.val16.i.3) #56, !dbg !64624, !noalias !64636
  %i.x = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64641
  %i.y = getelementptr i8, ptr %i.x, i64 12, !dbg !64641
  store float %i.w, ptr %i.y, align 4, !dbg !64648, !noalias !64651
  %i.z = add i64 %i.g, 4, !dbg !64656             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !64659 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !64662  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !64662
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !64662

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !64662
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !64662

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !64662
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !64662
  br label %bb.d, !dbg !64662

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !64615 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !64619 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !64615
  %.val16.i.epil = load float, ptr %i.ac, align 4, !dbg !64620, !noalias !64621, !noundef !14
  %i.ad = tail call noundef float @acosf(float noundef %.val16.i.epil) #56, !dbg !64624, !noalias !64636
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !64641
  store float %i.ad, ptr %i.ae, align 4, !dbg !64648, !noalias !64651
  %i.af = add i64 %i.ab, 1, !dbg !64656           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !64659
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !64662 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !64662
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !64662, !llvm.loop !64663

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arccosNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !64664
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64664, !noalias !64621
  ret void, !dbg !64675
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64676 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64677 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64677
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64677 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64677
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64677 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64680
  %i.a = icmp eq ptr %0, %1, !dbg !64689
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64690

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64691
  %i.c = ptrtoint ptr %0 to i64, !dbg !64691
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64691      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !64691      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !64703        ; 3 uses
  %i.f = icmp ult i64 %i.d, 16, !dbg !64703
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !64703

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387900, !dbg !64703
  br label %bb.c, !dbg !64703

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !64704 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !64708 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64704
  %.val16.i = load float, ptr %i.h, align 4, !dbg !64709, !noalias !64710, !noundef !14
  %i.i = tail call noundef float @asinf(float noundef %.val16.i) #56, !dbg !64713, !noalias !64725
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64730
  store float %i.i, ptr %i.j, align 4, !dbg !64737, !noalias !64740
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64704
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !64704
  %.val16.i.1 = load float, ptr %i.l, align 4, !dbg !64709, !noalias !64710, !noundef !14
  %i.m = tail call noundef float @asinf(float noundef %.val16.i.1) #56, !dbg !64713, !noalias !64725
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64730
  %i.o = getelementptr i8, ptr %i.n, i64 4, !dbg !64730
  store float %i.m, ptr %i.o, align 4, !dbg !64737, !noalias !64740
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64704
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !64704
  %.val16.i.2 = load float, ptr %i.q, align 4, !dbg !64709, !noalias !64710, !noundef !14
  %i.r = tail call noundef float @asinf(float noundef %.val16.i.2) #56, !dbg !64713, !noalias !64725
  %i.s = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64730
  %i.t = getelementptr i8, ptr %i.s, i64 8, !dbg !64730
  store float %i.r, ptr %i.t, align 4, !dbg !64737, !noalias !64740
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64704
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12, !dbg !64704
  %.val16.i.3 = load float, ptr %i.v, align 4, !dbg !64709, !noalias !64710, !noundef !14
  %i.w = tail call noundef float @asinf(float noundef %.val16.i.3) #56, !dbg !64713, !noalias !64725
  %i.x = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64730
  %i.y = getelementptr i8, ptr %i.x, i64 12, !dbg !64730
  store float %i.w, ptr %i.y, align 4, !dbg !64737, !noalias !64740
  %i.z = add i64 %i.g, 4, !dbg !64745             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !64748 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !64751  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !64751
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !64751

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !64751
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !64751

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !64751
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !64751
  br label %bb.d, !dbg !64751

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !64704 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !64708 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !64704
  %.val16.i.epil = load float, ptr %i.ac, align 4, !dbg !64709, !noalias !64710, !noundef !14
  %i.ad = tail call noundef float @asinf(float noundef %.val16.i.epil) #56, !dbg !64713, !noalias !64725
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !64730
  store float %i.ad, ptr %i.ae, align 4, !dbg !64737, !noalias !64740
  %i.af = add i64 %i.ab, 1, !dbg !64745           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !64748
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !64751 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !64751
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !64751, !llvm.loop !64752

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arcsinNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !64753
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64753, !noalias !64710
  ret void, !dbg !64764
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64765 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64766 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64766
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64766 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64766
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64766 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64769
  %i.a = icmp eq ptr %0, %1, !dbg !64778
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64779

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64780
  %i.c = ptrtoint ptr %0 to i64, !dbg !64780
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64780      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !64780      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !64792        ; 3 uses
  %i.f = icmp ult i64 %i.d, 16, !dbg !64792
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !64792

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387900, !dbg !64792
  br label %bb.c, !dbg !64792

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.c ], !dbg !64793 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.c ], !dbg !64797 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64793
  %.val16.i = load float, ptr %i.h, align 4, !dbg !64798, !noalias !64799, !noundef !14
  %i.i = tail call noundef float @atanf(float noundef %.val16.i) #56, !dbg !64802, !noalias !64814
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64819
  store float %i.i, ptr %i.j, align 4, !dbg !64826, !noalias !64829
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64793
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !64793
  %.val16.i.1 = load float, ptr %i.l, align 4, !dbg !64798, !noalias !64799, !noundef !14
  %i.m = tail call noundef float @atanf(float noundef %.val16.i.1) #56, !dbg !64802, !noalias !64814
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64819
  %i.o = getelementptr i8, ptr %i.n, i64 4, !dbg !64819
  store float %i.m, ptr %i.o, align 4, !dbg !64826, !noalias !64829
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64793
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !64793
  %.val16.i.2 = load float, ptr %i.q, align 4, !dbg !64798, !noalias !64799, !noundef !14
  %i.r = tail call noundef float @atanf(float noundef %.val16.i.2) #56, !dbg !64802, !noalias !64814
  %i.s = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64819
  %i.t = getelementptr i8, ptr %i.s, i64 8, !dbg !64819
  store float %i.r, ptr %i.t, align 4, !dbg !64826, !noalias !64829
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64793
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12, !dbg !64793
  %.val16.i.3 = load float, ptr %i.v, align 4, !dbg !64798, !noalias !64799, !noundef !14
  %i.w = tail call noundef float @atanf(float noundef %.val16.i.3) #56, !dbg !64802, !noalias !64814
  %i.x = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !64819
  %i.y = getelementptr i8, ptr %i.x, i64 12, !dbg !64819
  store float %i.w, ptr %i.y, align 4, !dbg !64826, !noalias !64829
  %i.z = add i64 %i.g, 4, !dbg !64834             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 4, !dbg !64837 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !64840  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !64840
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !64840

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !64840
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %.epil.preheader, !dbg !64840

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !64840
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !64840
  br label %bb.d, !dbg !64840

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ab = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.d ], !dbg !64793 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ], !dbg !64797 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil, !dbg !64793
  %.val16.i.epil = load float, ptr %i.ac, align 4, !dbg !64798, !noalias !64799, !noundef !14
  %i.ad = tail call noundef float @atanf(float noundef %.val16.i.epil) #56, !dbg !64802, !noalias !64814
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !64819
  store float %i.ad, ptr %i.ae, align 4, !dbg !64826, !noalias !64829
  %i.af = add i64 %i.ab, 1, !dbg !64834           ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !64837
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !64840 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !64840
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.d, !dbg !64840, !llvm.loop !64841

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry6arctanNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit.loopexit.unr-lcssa ], [ %i.af, %bb.d ], !dbg !64842
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64842, !noalias !64799
  ret void, !dbg !64853
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arccoshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64854 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64855 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64855
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64855 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64855
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64855
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64858
  %i.a = icmp eq ptr %0, %1, !dbg !64867
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arccoshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64868

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64869
  %i.c = ptrtoint ptr %0 to i64, !dbg !64869
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64869
  %i.e = lshr exact i64 %i.d, 2, !dbg !64869
  br label %bb.c, !dbg !64881

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.e ], !dbg !64882 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64883
  %.val16.i = load float, ptr %i.g, align 4, !dbg !64887, !noalias !64888, !noundef !14 ; 4 uses
  %i.h = fcmp olt float %.val16.i, 1.000000e+00, !dbg !64891
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !64891

bb.d:                                             ; preds = %bb.c
  %i.i = fadd float %.val16.i, -1.000000e+00, !dbg !64903
  %i.j = tail call float @llvm.sqrt.f32(float %i.i), !dbg !64904
  %i.k = fadd float %.val16.i, 1.000000e+00, !dbg !64909
  %i.l = tail call float @llvm.sqrt.f32(float %i.k), !dbg !64910
  %i.m = fmul float %i.j, %i.l, !dbg !64914
  %i.n = fadd float %.val16.i, %i.m, !dbg !64915
  %i.o = tail call float @llvm.log.f32(float %i.n), !dbg !64916
  br label %bb.e, !dbg !64919

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi float [ %i.o, %bb.d ], [ +qnan, %bb.c ], !dbg !64920
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !64921
  store float %.sroa.0.0.i.i.i.i.i.i, ptr %i.p, align 4, !dbg !64928, !noalias !64931
  %i.q = add i64 %i.f, 1, !dbg !64940             ; 2 uses
  %i.r = add nuw i64 %.sroa.01.0.i, 1, !dbg !64943 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !64946
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arccoshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !64946

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arccoshNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %bb.e ], !dbg !64947
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !64947, !noalias !64888
  ret void, !dbg !64958
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arcsinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !64959 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !64960 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !64960
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !64960 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !64960
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64960
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !64963
  %i.a = icmp eq ptr %0, %1, !dbg !64972
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arcsinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !64973

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !64974
  %i.c = ptrtoint ptr %0 to i64, !dbg !64974
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !64974
  %i.e = lshr exact i64 %i.d, 2, !dbg !64974
  br label %bb.c, !dbg !64986

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %bb.c ], !dbg !64987 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.c ], !dbg !64991 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !64987
  %.val16.i = load float, ptr %i.g, align 4, !dbg !64992, !noalias !64993, !noundef !14 ; 2 uses
  %i.h = tail call float @llvm.fabs.f32(float %.val16.i), !dbg !64996 ; 3 uses
  %i.i = fdiv float 1.000000e+00, %i.h, !dbg !65010 ; 2 uses
  %i.j = tail call noundef float @hypotf(float noundef 1.000000e+00, float noundef %i.i) #56, !dbg !65012, !noalias !65016
  %i.k = fadd float %i.j, %i.i, !dbg !65021
  %i.l = fdiv float %i.h, %i.k, !dbg !65022
  %i.m = fadd float %i.h, %i.l, !dbg !65023
  %i.n = tail call noundef float @log1pf(float noundef %i.m) #56, !dbg !65024, !noalias !65016
  %i.o = tail call noundef float @llvm.copysign.f32(float %i.n, float %.val16.i), !dbg !65027
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !65030
  store float %i.o, ptr %i.p, align 4, !dbg !65037, !noalias !65040
  %i.q = add i64 %i.f, 1, !dbg !65045             ; 2 uses
  %i.r = add nuw i64 %.sroa.01.0.i, 1, !dbg !65048 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !65051
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arcsinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !65051

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arcsinhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %bb.c ], !dbg !65052
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !65052, !noalias !64993
  ret void, !dbg !65063
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arctanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !65064 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !65065 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !65065
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !65065 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !65065
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !65065
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !65068
  %i.a = icmp eq ptr %0, %1, !dbg !65077
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arctanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !65078

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !65079
  %i.c = ptrtoint ptr %0 to i64, !dbg !65079
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !65079
  %i.e = lshr exact i64 %i.d, 2, !dbg !65079
  br label %bb.c, !dbg !65091

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %bb.c ], !dbg !65092 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ], !dbg !65096 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !65092
  %.val16.i = load float, ptr %i.g, align 4, !dbg !65097, !noalias !65098, !noundef !14 ; 2 uses
  %i.h = fmul float %.val16.i, 2.000000e+00, !dbg !65101
  %i.i = fsub float 1.000000e+00, %.val16.i, !dbg !65113
  %i.j = fdiv float %i.h, %i.i, !dbg !65114
  %i.k = tail call noundef float @log1pf(float noundef %i.j) #56, !dbg !65115, !noalias !65118
  %i.l = fmul float %i.k, 5.000000e-01, !dbg !65123
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !65124
  store float %i.l, ptr %i.m, align 4, !dbg !65131, !noalias !65134
  %i.n = add i64 %i.f, 1, !dbg !65139             ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !65142 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !65145
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arctanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !65145

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7arctanhNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %bb.c ], !dbg !65146
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !65146, !noalias !65098
  ret void, !dbg !65157
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7degreesNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !65158 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !65159 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !65159
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !65159 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !65159
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !65159 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !65162
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !65162
  %i.a = icmp eq ptr %0, %1, !dbg !65171
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry7degreesNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !65172

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !65173
  %i.c = ptrtoint ptr %0 to i64, !dbg !65173      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !65173      ; 2 uses
  %i.e = lshr i64 %i.d, 2, !dbg !65173            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !65185
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !65185

vector.memcheck:                                  ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5floor0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66236 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !66237
  %wide.load = load <4 x float>, ptr %i.k, align 4, !dbg !66241, !noalias !66242
  %i.l = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %wide.load), !dbg !66245
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index, !dbg !66257
  store <4 x float> %i.l, ptr %i.m, align 4, !dbg !66264, !noalias !66267
  %index.next = add nuw i64 %index, 4, !dbg !66236 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !66276
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !66276, !llvm.loop !66277

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !66276
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5floor0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !66276

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !66276        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66276
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66276

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.o = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !66237 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !66236 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !66237
  %.val16.i.prol = load float, ptr %i.p, align 4, !dbg !66241, !noalias !66242, !noundef !14
  %i.q = tail call noundef float @llvm.floor.f32(float %.val16.i.prol), !dbg !66245
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.o, !dbg !66257
  store float %i.q, ptr %i.r, align 4, !dbg !66264, !noalias !66267
  %i.s = add i64 %i.o, 1, !dbg !66278             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !66281 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66276 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66276
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66276, !llvm.loop !66284

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !66276
  %i.v = icmp ugt i64 %i.u, -4, !dbg !66276
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5floor0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !66276

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.ap, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !66237 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !66236 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66237
  %.val16.i = load float, ptr %i.x, align 4, !dbg !66241, !noalias !66242, !noundef !14
  %i.y = tail call noundef float @llvm.floor.f32(float %.val16.i), !dbg !66245
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !66257
  store float %i.y, ptr %i.z, align 4, !dbg !66264, !noalias !66267
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66237
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4, !dbg !66237
  %.val16.i.1 = load float, ptr %i.ab, align 4, !dbg !66241, !noalias !66242, !noundef !14
  %i.ac = tail call noundef float @llvm.floor.f32(float %.val16.i.1), !dbg !66245
  %i.ad = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !66257
  %i.ae = getelementptr i8, ptr %i.ad, i64 4, !dbg !66257
  store float %i.ac, ptr %i.ae, align 4, !dbg !66264, !noalias !66267
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66237
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !66237
  %.val16.i.2 = load float, ptr %i.ag, align 4, !dbg !66241, !noalias !66242, !noundef !14
  %i.ah = tail call noundef float @llvm.floor.f32(float %.val16.i.2), !dbg !66245
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !66257
  %i.aj = getelementptr i8, ptr %i.ai, i64 8, !dbg !66257
  store float %i.ah, ptr %i.aj, align 4, !dbg !66264, !noalias !66267
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66237
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12, !dbg !66237
  %.val16.i.3 = load float, ptr %i.al, align 4, !dbg !66241, !noalias !66242, !noundef !14
  %i.am = tail call noundef float @llvm.floor.f32(float %.val16.i.3), !dbg !66245
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !66257
  %i.ao = getelementptr i8, ptr %i.an, i64 12, !dbg !66257
  store float %i.am, ptr %i.ao, align 4, !dbg !66264, !noalias !66267
  %i.ap = add i64 %i.w, 4, !dbg !66278            ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i, 4, !dbg !66281 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.e, !dbg !66276
  br i1 %i.ar, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5floor0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !66276, !llvm.loop !66285

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5floor0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ap, %scalar.ph ], !dbg !66286
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !66286, !noalias !66242
  ret void, !dbg !66297
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeB3K_E0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5h_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !66298 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !66299 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !66299
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !66299 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !66299
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !66299 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !66302
  %i.a = icmp eq ptr %0, %1, !dbg !66311
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeB3T_E0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.b, !dbg !66312

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !66313
  %i.c = ptrtoint ptr %0 to i64, !dbg !66313
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !66313      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !66313      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !66325
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !66325

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !66325

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66326 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %index, !dbg !66327 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !66340
  store <4 x float> splat (float 1.000000e+00), ptr %i.h, align 4, !dbg !66340, !noalias !66343
  store <4 x float> splat (float 1.000000e+00), ptr %i.i, align 4, !dbg !66340, !noalias !66343
  %index.next = add nuw i64 %index, 8, !dbg !66326 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !66354
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !66354, !llvm.loop !66355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !66354
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeB3T_E0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %scalar.ph.preheader, !dbg !66354

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !66354

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.k = phi i64 [ %i.m, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !66356 ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !66326
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !66327
  store float 1.000000e+00, ptr %i.l, align 4, !dbg !66340, !noalias !66343
  %i.m = add i64 %i.k, 1, !dbg !66357             ; 2 uses
  %i.n = add nuw i64 %.sroa.01.0.i, 1, !dbg !66360 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.e, !dbg !66354
  br i1 %i.o, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeB3T_E0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %scalar.ph, !dbg !66354, !llvm.loop !66363

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeB3T_E0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %middle.block ], [ %i.m, %scalar.ph ], !dbg !66364
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !66364, !noalias !66375
  ret void, !dbg !66376
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2L_9datatypes11Float32TypeB4c_B4c_NCNvYNtNtB2L_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6W_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !66377 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !66378 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !66378
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !66378 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !66378
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !66378 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !66381
  %i.a = icmp eq ptr %0, %1, !dbg !66390
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !66391

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !66378
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !66378, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %1 to i64, !dbg !66392
  %i.c = ptrtoint ptr %0 to i64, !dbg !66392
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !66392      ; 3 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !66392      ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.8.0.copyload, i64 8 ; 3 uses
  %i.g = icmp eq i64 %i.d, 4, !dbg !66404
  br i1 %i.g, label %.epil.preheader, label %.new, !dbg !66404

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387902, !dbg !66404
  br label %bb.c, !dbg !66404

bb.c:                                             ; preds = %bb.c, %.new
  %i.h = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.w, %bb.c ], !dbg !66405 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.x, %bb.c ], !dbg !66409 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66405
  %.val16.i = load float, ptr %i.i, align 4, !dbg !66410, !noalias !66411, !noundef !14
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !66414, !noalias !66422, !nonnull !14, !align !66427, !noundef !14
  %i.j = load float, ptr %.val.i.i.i.i, align 4, !dbg !66428, !alias.scope !66434, !noalias !66422, !noundef !14
  %i.k = tail call float @llvm.log.f32(float %i.j), !dbg !66437
  %i.l = tail call float @llvm.log.f32(float %.val16.i), !dbg !66444
  %i.m = fdiv float %i.k, %i.l, !dbg !66446
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !66447
  store float %i.m, ptr %i.n, align 4, !dbg !66454, !noalias !66457
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66405
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !66405
  %.val16.i.1 = load float, ptr %i.p, align 4, !dbg !66410, !noalias !66411, !noundef !14
  %.val.i.i.i.i.1 = load ptr, ptr %i.f, align 8, !dbg !66414, !noalias !66422, !nonnull !14, !align !66427, !noundef !14
  %i.q = load float, ptr %.val.i.i.i.i.1, align 4, !dbg !66428, !alias.scope !66434, !noalias !66422, !noundef !14
  %i.r = tail call float @llvm.log.f32(float %i.q), !dbg !66437
  %i.s = tail call float @llvm.log.f32(float %.val16.i.1), !dbg !66444
  %i.t = fdiv float %i.r, %i.s, !dbg !66446
  %i.u = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !66447
  %i.v = getelementptr i8, ptr %i.u, i64 4, !dbg !66447
  store float %i.t, ptr %i.v, align 4, !dbg !66454, !noalias !66457
  %i.w = add i64 %i.h, 2, !dbg !66462             ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 2, !dbg !66465 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !66468  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !66468
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !66468

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.y = and i64 %i.d, 4, !dbg !66468
  %lcmp.mod.not = icmp eq i64 %i.y, 0, !dbg !66468
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !66468

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !66468
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !66468
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !66405
  %.val16.i.epil = load float, ptr %i.z, align 4, !dbg !66410, !noalias !66411, !noundef !14
  %.val.i.i.i.i.epil = load ptr, ptr %i.f, align 8, !dbg !66414, !noalias !66422, !nonnull !14, !align !66427, !noundef !14
  %i.aa = load float, ptr %.val.i.i.i.i.epil, align 4, !dbg !66428, !alias.scope !66434, !noalias !66422, !noundef !14
  %i.ab = tail call float @llvm.log.f32(float %i.aa), !dbg !66437
  %i.ac = tail call float @llvm.log.f32(float %.val16.i.epil), !dbg !66444
  %i.ad = fdiv float %i.ab, %i.ac, !dbg !66446
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !66447
  store float %i.ad, ptr %i.ae, align 4, !dbg !66454, !noalias !66457
  %i.af = add i64 %.epil.init, 1, !dbg !66462
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB74_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.af, %.epil.preheader ], !dbg !66469
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !66469, !noalias !66411
  ret void, !dbg !66480
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2L_9datatypes11Float32TypeB4c_B4c_NCNvYNtNtB2L_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6Y_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !66481 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !66482 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !66482
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !66482 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !66482
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !66482 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !66485
  %i.a = icmp eq ptr %0, %1, !dbg !66494
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !66495

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !66482
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !66482, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %1 to i64, !dbg !66496
  %i.c = ptrtoint ptr %0 to i64, !dbg !66496
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !66496      ; 3 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !66496      ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.8.0.copyload, i64 8 ; 3 uses
  %i.g = icmp eq i64 %i.d, 4, !dbg !66508
  br i1 %i.g, label %.epil.preheader, label %.new, !dbg !66508

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387902, !dbg !66508
  br label %bb.c, !dbg !66508

bb.c:                                             ; preds = %bb.c, %.new
  %i.h = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.w, %bb.c ], !dbg !66509 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.x, %bb.c ], !dbg !66513 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66509
  %.val16.i = load float, ptr %i.i, align 4, !dbg !66514, !noalias !66515, !noundef !14
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !66518, !noalias !66526, !nonnull !14, !align !66427, !noundef !14
  %i.j = load float, ptr %.val.i.i.i.i, align 4, !dbg !66531, !alias.scope !66535, !noalias !66526, !noundef !14
  %i.k = tail call float @llvm.log.f32(float %.val16.i), !dbg !66538
  %i.l = tail call float @llvm.log.f32(float %i.j), !dbg !66542
  %i.m = fdiv float %i.k, %i.l, !dbg !66544
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !66545
  store float %i.m, ptr %i.n, align 4, !dbg !66552, !noalias !66555
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !66509
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !66509
  %.val16.i.1 = load float, ptr %i.p, align 4, !dbg !66514, !noalias !66515, !noundef !14
  %.val.i.i.i.i.1 = load ptr, ptr %i.f, align 8, !dbg !66518, !noalias !66526, !nonnull !14, !align !66427, !noundef !14
  %i.q = load float, ptr %.val.i.i.i.i.1, align 4, !dbg !66531, !alias.scope !66535, !noalias !66526, !noundef !14
  %i.r = tail call float @llvm.log.f32(float %.val16.i.1), !dbg !66538
  %i.s = tail call float @llvm.log.f32(float %i.q), !dbg !66542
  %i.t = fdiv float %i.r, %i.s, !dbg !66544
  %i.u = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !66545
  %i.v = getelementptr i8, ptr %i.u, i64 4, !dbg !66545
  store float %i.t, ptr %i.v, align 4, !dbg !66552, !noalias !66555
  %i.w = add i64 %i.h, 2, !dbg !66560             ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 2, !dbg !66563 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !66566  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !66566
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !66566

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.y = and i64 %i.d, 4, !dbg !66566
  %lcmp.mod.not = icmp eq i64 %i.y, 0, !dbg !66566
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !66566

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !66566
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !66566
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !66509
  %.val16.i.epil = load float, ptr %i.z, align 4, !dbg !66514, !noalias !66515, !noundef !14
  %.val.i.i.i.i.epil = load ptr, ptr %i.f, align 8, !dbg !66518, !noalias !66526, !nonnull !14, !align !66427, !noundef !14
  %i.aa = load float, ptr %.val.i.i.i.i.epil, align 4, !dbg !66531, !alias.scope !66535, !noalias !66526, !noundef !14
  %i.ab = tail call float @llvm.log.f32(float %.val16.i.epil), !dbg !66538
  %i.ac = tail call float @llvm.log.f32(float %i.aa), !dbg !66542
  %i.ad = fdiv float %i.ab, %i.ac, !dbg !66544
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !66545
  store float %i.ad, ptr %i.ae, align 4, !dbg !66552, !noalias !66555
  %i.af = add i64 %.epil.init, 1, !dbg !66560
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldffuQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity35broadcast_binary_elementwise_valuesNtNtB2U_9datatypes11Float32TypeB4l_B4l_NCNvYNtNtB2U_6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log9LogSeries3logs_0fEs_0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB76_3VecfE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.af, %.epil.preheader ], !dbg !66567
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !66567, !noalias !66515
  ret void, !dbg !66578
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !66579 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !66580
  %i.a = icmp eq ptr %0, %1, !dbg !66589
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !66590

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !66591
  %i.c = ptrtoint ptr %0 to i64, !dbg !66591
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !66591      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !66603
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !66603

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !66603
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !66603

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !66603

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66604 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !66605 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !66609
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !66609
  %wide.load4 = load <16 x i8>, ptr %i.g, align 1, !dbg !66609
  %i.h = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !66610 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi3, <16 x i8> %wide.load4), !dbg !66610 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !66604 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !66618
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !66618, !llvm.loop !66619

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !66618
  %i.k = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax), !dbg !66618 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !66618
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !66618

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66620

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !66604
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !66621
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i8> %broadcast.splatinsert6, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !66604 ; 2 uses
  %vec.phi9 = phi <4 x i8> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index8, !dbg !66605
  %wide.load10 = load <4 x i8>, ptr %i.l, align 1, !dbg !66609
  %i.m = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi9, <4 x i8> %wide.load10), !dbg !66610 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !66604 ; 2 uses
  %i.n = icmp eq i64 %index.next11, %n.vec5, !dbg !66618
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !66618, !llvm.loop !66622

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.m), !dbg !66618 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.d, %n.vec5, !dbg !66618
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !66618

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !66618

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.q, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !66604 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !66621
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !66605
  %.val.i = load i8, ptr %i.p, align 1, !dbg !66609, !noundef !14
  %.sroa.0.0.i.i.i.i = tail call noundef i8 @llvm.umax.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !66610 ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1, !dbg !66623 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d, !dbg !66618
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !66618, !llvm.loop !66626

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !66621
  ret i8 %.sroa.0.0.i, !dbg !66627
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !66628 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !66629
  %i.a = icmp eq ptr %0, %1, !dbg !66638
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !66639

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !66640
  %i.c = ptrtoint ptr %0 to i64, !dbg !66640
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !66640      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !66652
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !66652

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !66652
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !66652

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !66652

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66653 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !66654 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !66658
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !66658
  %wide.load4 = load <16 x i8>, ptr %i.g, align 1, !dbg !66658
  %i.h = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !66659 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi3, <16 x i8> %wide.load4), !dbg !66659 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !66653 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !66667
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !66667, !llvm.loop !66668

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !66667
  %i.k = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax), !dbg !66667 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !66667
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !66667

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66620

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !66653
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !66669
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i8> %broadcast.splatinsert6, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !66653 ; 2 uses
  %vec.phi9 = phi <4 x i8> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index8, !dbg !66654
  %wide.load10 = load <4 x i8>, ptr %i.l, align 1, !dbg !66658
  %i.m = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi9, <4 x i8> %wide.load10), !dbg !66659 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !66653 ; 2 uses
  %i.n = icmp eq i64 %index.next11, %n.vec5, !dbg !66667
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !66667, !llvm.loop !66670

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.m), !dbg !66667 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.d, %n.vec5, !dbg !66667
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !66667

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !66667
end_hunk_3
begin_hunk_4_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeB3K_E0NCINvNvB1v_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5g_3VecmE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !68276, !noalias !68287
  ret void, !dbg !68288
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecmE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !68289 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !68290 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !68290
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !68290 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !68290
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !68290 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !68293
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !68293
  %i.a = icmp eq ptr %0, %1, !dbg !68302
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !68303

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !68304
  %i.c = ptrtoint ptr %0 to i64, !dbg !68304      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !68304      ; 2 uses
  %i.e = lshr i64 %i.d, 2, !dbg !68304            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48, !dbg !68316
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !68316

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2, !dbg !68316
  %i.g = add i64 %i.f, %.sroa.7.0.copyload2, !dbg !68316
  %i.h = sub i64 %i.c, %i.g, !dbg !68316
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !68316
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !68317

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !68317

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !68317 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !68318 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !68322
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !dbg !68322, !noalias !68323
  %wide.load3 = load <4 x i32>, ptr %i.l, align 4, !dbg !68322, !noalias !68323
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index, !dbg !68326 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !68336
  store <4 x i32> %wide.load, ptr %i.m, align 4, !dbg !68336, !noalias !68339
  store <4 x i32> %wide.load3, ptr %i.n, align 4, !dbg !68336, !noalias !68339
  %index.next = add nuw i64 %index, 8, !dbg !68317 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !68346
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !68346, !llvm.loop !68347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !68346
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !68346

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !68346        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !68346
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !68346

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !68318 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !68317 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !68318
  %.val16.i.prol = load i32, ptr %i.q, align 4, !dbg !68322, !noalias !68323, !noundef !14
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !68326
  store i32 %.val16.i.prol, ptr %i.r, align 4, !dbg !68336, !noalias !68339
  %i.s = add i64 %i.p, 1, !dbg !68348             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !68351 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !68346 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !68346
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !68346, !llvm.loop !68354

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !68346
  %i.v = icmp ugt i64 %i.u, -4, !dbg !68346
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !68346

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !68318 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !68317 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !68318
  %.val16.i = load i32, ptr %i.x, align 4, !dbg !68322, !noalias !68323, !noundef !14
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !68326
  store i32 %.val16.i, ptr %i.y, align 4, !dbg !68336, !noalias !68339
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !68318
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !68318
  %.val16.i.1 = load i32, ptr %i.aa, align 4, !dbg !68322, !noalias !68323, !noundef !14
  %i.ab = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !68326
  %i.ac = getelementptr i8, ptr %i.ab, i64 4, !dbg !68326
  store i32 %.val16.i.1, ptr %i.ac, align 4, !dbg !68336, !noalias !68339
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !68318
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !68318
  %.val16.i.2 = load i32, ptr %i.ae, align 4, !dbg !68322, !noalias !68323, !noundef !14
  %i.af = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !68326
  %i.ag = getelementptr i8, ptr %i.af, i64 8, !dbg !68326
  store i32 %.val16.i.2, ptr %i.ag, align 4, !dbg !68336, !noalias !68339
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !68318
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12, !dbg !68318
  %.val16.i.3 = load i32, ptr %i.ai, align 4, !dbg !68322, !noalias !68323, !noundef !14
  %i.aj = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !68326
  %i.ak = getelementptr i8, ptr %i.aj, i64 12, !dbg !68326
  store i32 %.val16.i.3, ptr %i.ak, align 4, !dbg !68336, !noalias !68339
  %i.al = add i64 %i.w, 4, !dbg !68348            ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4, !dbg !68351 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e, !dbg !68346
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !68346, !llvm.loop !68355

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ], !dbg !68356
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !68356, !noalias !68323
  ret void, !dbg !68365
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i32, i32 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkmQNCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_000E0INtNtNtBb_3ops12control_flow11ControlFlowmEEB2N_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !68366 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68367), !dbg !68370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68371), !dbg !68370
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !68373, !noalias !68371, !nonnull !14, !noundef !14
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !68373, !noalias !68371
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !68371, !noalias !68367, !nonnull !14, !align !4162 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  br label %bb.b, !dbg !68376

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = phi ptr [ %i.g, %bb.c ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.b, !dbg !68380
  br i1 %i.f, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowmENCINvNvBL_4find5checkmQNCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_000E0E0B2j_EB3z_.exit, label %bb.c, !dbg !68388

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !68389 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !dbg !68392, !alias.scope !68373, !noalias !68371
  %.val7.i = load i32, ptr %i.e, align 4, !dbg !68393, !noalias !68394, !noundef !14 ; 2 uses
  %i.h = zext i32 %.val7.i to i64, !dbg !68395
  %i.i = load i64, ptr %i.c, align 8, !dbg !68413, !noalias !68394, !noundef !14
  %i.j = add i64 %i.i, %i.h, !dbg !68419          ; 2 uses
  %i.k = lshr i64 %i.j, 3, !dbg !68419            ; 2 uses
  %i.l = load ptr, ptr %.val.i.i.i.i, align 8, !dbg !68420, !noalias !68394, !nonnull !14, !noundef !14
  %i.m = load i64, ptr %i.d, align 8, !dbg !68420, !noalias !68394, !noundef !14
  %i.n = icmp ult i64 %i.k, %i.m, !dbg !68423
  tail call void @llvm.assume(i1 %i.n), !dbg !68428
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k, !dbg !68429
  %i.p = load i8, ptr %i.o, align 1, !dbg !68430, !noalias !68394, !noundef !14
  %i.q = trunc i64 %i.j to i8, !dbg !68431
  %i.r = and i8 %i.q, 7, !dbg !68431
  %i.s = lshr i8 %i.p, %i.r, !dbg !68431
  %i.t = trunc i8 %i.s to i1, !dbg !68433
  br i1 %i.t, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowmENCINvNvBL_4find5checkmQNCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_000E0E0B2j_EB3z_.exit, label %bb.b, !dbg !68393

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowmENCINvNvBL_4find5checkmQNCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_000E0E0B2j_EB3z_.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi i32 [ undef, %bb.b ], [ %.val7.i, %bb.c ], !dbg !68439
  %.sroa.0.0.i = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], !dbg !68439
  %i.u = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0, !dbg !68440
  %i.v = insertvalue { i32, i32 } %i.u, i32 %.sroa.3.0.i, 1, !dbg !68440
  ret { i32, i32 } %i.v, !dbg !68441
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i128 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4foldnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i128 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !68442 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !68443
  %i.a = icmp eq ptr %0, %1, !dbg !68452
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !68453

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !68454
  %i.c = ptrtoint ptr %0 to i64, !dbg !68454
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !68454      ; 3 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !68454      ; 2 uses
  %i.f = icmp eq i64 %i.d, 16, !dbg !68466
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !68466

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974, !dbg !68466
  br label %bb.c, !dbg !68466

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.j, %bb.c ], !dbg !68467 ; 3 uses
  %.sroa.02.0.i = phi i128 [ %2, %.new ], [ %.sroa.0.0.i.i.i.i.1, %bb.c ], !dbg !68468
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !68469
  %.val.i = load i128, ptr %i.g, align 16, !dbg !68473, !noundef !14
  %.sroa.0.0.i.i.i.i = tail call noundef i128 @llvm.smax.i128(i128 %.sroa.02.0.i, i128 %.val.i), !dbg !68474
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !68469
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !68469
  %.val.i.1 = load i128, ptr %i.i, align 16, !dbg !68473, !noundef !14
  %.sroa.0.0.i.i.i.i.1 = tail call noundef i128 @llvm.smax.i128(i128 %.sroa.0.0.i.i.i.i, i128 %.val.i.1), !dbg !68474 ; 3 uses
  %i.j = add nuw i64 %.sroa.04.0.i, 2, !dbg !68482 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !68485  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !68485
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !68485

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.k = and i64 %i.d, 16, !dbg !68485
  %lcmp.mod.not = icmp eq i64 %i.k, 0, !dbg !68485
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !68485

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.j, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i128 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !68485
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !68485
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init, !dbg !68469
  %.val.i.epil = load i128, ptr %i.l, align 16, !dbg !68473, !noundef !14
  %.sroa.0.0.i.i.i.i.epil = tail call noundef i128 @llvm.smax.i128(i128 %.sroa.02.0.i.epil.init, i128 %.val.i.epil), !dbg !68474
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !68486

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi i128 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %.epil.preheader ], !dbg !68468
  ret i128 %.sroa.0.0.i, !dbg !68486
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i128 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4foldnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i128 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !68487 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !68488
  %i.a = icmp eq ptr %0, %1, !dbg !68497
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !68498

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !68499
  %i.c = ptrtoint ptr %0 to i64, !dbg !68499
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !68499      ; 3 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !68499      ; 2 uses
  %i.f = icmp eq i64 %i.d, 16, !dbg !68511
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !68511

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974, !dbg !68511
  br label %bb.c, !dbg !68511

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.j, %bb.c ], !dbg !68512 ; 3 uses
  %.sroa.02.0.i = phi i128 [ %2, %.new ], [ %.sroa.0.0.i.i.i.i.1, %bb.c ], !dbg !68513
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !68514
  %.val.i = load i128, ptr %i.g, align 16, !dbg !68518, !noundef !14
  %.sroa.0.0.i.i.i.i = tail call noundef i128 @llvm.smin.i128(i128 %.sroa.02.0.i, i128 %.val.i), !dbg !68519
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !68514
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !68514
  %.val.i.1 = load i128, ptr %i.i, align 16, !dbg !68518, !noundef !14
  %.sroa.0.0.i.i.i.i.1 = tail call noundef i128 @llvm.smin.i128(i128 %.sroa.0.0.i.i.i.i, i128 %.val.i.1), !dbg !68519 ; 3 uses
  %i.j = add nuw i64 %.sroa.04.0.i, 2, !dbg !68527 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !68530  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !68530
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !68530

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.k = and i64 %i.d, 16, !dbg !68530
  %lcmp.mod.not = icmp eq i64 %i.k, 0, !dbg !68530
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !68530

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.j, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i128 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !68530
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !68530
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init, !dbg !68514
  %.val.i.epil = load i128, ptr %i.l, align 16, !dbg !68518, !noundef !14
  %.sroa.0.0.i.i.i.i.epil = tail call noundef i128 @llvm.smin.i128(i128 %.sroa.02.0.i.epil.init, i128 %.val.i.epil), !dbg !68519
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !68531

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi i128 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4foldnNCINvNtNtBY_8adapters6copied9copy_foldnnNvYnNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %.epil.preheader ], !dbg !68513
  ret i128 %.sroa.0.0.i, !dbg !68531
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldnnuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3H_10UInt32TypeE0NCINvNvB1v_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5p_3VecnE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !68532 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !68533 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !68533
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !68533 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !68533
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !68533
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !68533
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !68533 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !68536
  %i.a = icmp eq ptr %0, %1, !dbg !68545
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !68546

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !68547
  %i.c = ptrtoint ptr %0 to i64, !dbg !68547
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !68547
  %i.e = lshr exact i64 %i.d, 4, !dbg !68547
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  br label %bb.c, !dbg !68559

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %.loopexit.i ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %.loopexit.i ], !dbg !68560 ; 2 uses
  %i.g = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !68561, !noalias !68570, !noundef !14 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !68577
  br i1 %i.h, label %.loopexit.i, label %bb.d, !dbg !68577

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !68584
  %.val16.i = load i128, ptr %i.i, align 16, !dbg !68587, !noalias !68588, !noundef !14
  br label %.preheader21.i.i.i.i.i.i, !dbg !68589

.preheader21.i.i.i.i.i.i:                         ; preds = %bb.d, %bb.f
  %.sroa.015.1.i.i.i.i.i.i = phi i128 [ %.sroa.015.2.i.i.i.i.i.i, %bb.f ], [ 1, %bb.d ], !dbg !68592 ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.g, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i128 [ %i.n, %bb.f ], [ %.val16.i, %bb.d ] ; 3 uses
  %i.j = and i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !68593
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0, !dbg !68593
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !68593

bb.e:                                             ; preds = %.preheader21.i.i.i.i.i.i
  %i.k = mul i128 %.sroa.0.0.i.i.i.i.i.i, %.sroa.015.1.i.i.i.i.i.i, !dbg !68594 ; 2 uses
  %i.l = icmp eq i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !68595
  br i1 %i.l, label %.loopexit.i, label %bb.f, !dbg !68595

bb.f:                                             ; preds = %bb.e, %.preheader21.i.i.i.i.i.i
  %.sroa.015.2.i.i.i.i.i.i = phi i128 [ %i.k, %bb.e ], [ %.sroa.015.1.i.i.i.i.i.i, %.preheader21.i.i.i.i.i.i ], !dbg !68592
  %i.m = lshr i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !68596
  %i.n = mul i128 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !68597
  br label %.preheader21.i.i.i.i.i.i, !dbg !68598

.loopexit.i:                                      ; preds = %bb.e, %bb.c
  %.sroa.015.0.i.i.i.i.i.i = phi i128 [ 1, %bb.c ], [ %i.k, %bb.e ], !dbg !68599
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !68600
  store i128 %.sroa.015.0.i.i.i.i.i.i, ptr %i.o, align 16, !dbg !68607, !noalias !68610
  %i.p = add i64 %i.f, 1, !dbg !68615             ; 2 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 1, !dbg !68618 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e, !dbg !68621
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !68621

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %.loopexit.i, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %.loopexit.i ], !dbg !68622
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !68622, !noalias !68588
  ret void, !dbg !68633
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldnnuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeE0NCINvNvB1v_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecnE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !68634 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !68635 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !68635
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !68635 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !68635
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !68635
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !68638
  %i.a = icmp eq ptr %0, %1, !dbg !68647
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.b, !dbg !68648

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !68649
  %i.c = ptrtoint ptr %0 to i64, !dbg !68649
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !68649
  %i.e = lshr exact i64 %i.d, 4, !dbg !68649
  br label %bb.c, !dbg !68661

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %bb.c ], !dbg !68662 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ], !dbg !68666 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !68662
  %.val16.i = load i128, ptr %i.g, align 16, !dbg !68667, !noalias !68668, !noundef !14
  %.sroa.0.0.i.i.i.i = tail call noundef range(i128 -1, 2) i128 @llvm.scmp.i128.i128(i128 %.val16.i, i128 0), !dbg !68671
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !68679
  store i128 %.sroa.0.0.i.i.i.i, ptr %i.h, align 16, !dbg !68686, !noalias !68689
  %i.i = add i64 %i.f, 1, !dbg !68698             ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1, !dbg !68701 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e, !dbg !68704
  br i1 %i.k, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.c, !dbg !68704

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %bb.c ], !dbg !68705
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !68705, !noalias !68668
  ret void, !dbg !68716
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldnnuNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign0NCINvNvB1v_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB41_3VecnE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2H_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !68717 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !68718 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !68718
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !68718 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !68718
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !68718
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !68718
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !68718 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !68721
  %i.a = icmp eq ptr %0, %1, !dbg !68730
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB49_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2Q_.exit, label %bb.b, !dbg !68731

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !68732
  %i.c = ptrtoint ptr %0 to i64, !dbg !68732
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !68732
  %i.e = lshr exact i64 %i.d, 4, !dbg !68732
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c, !dbg !68744

bb.c:                                             ; preds = %bb.i, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.r, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.i ], !dbg !68745 ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !68746
  %.val16.i = load i128, ptr %i.f, align 16, !dbg !68750, !noalias !68751, !noundef !14 ; 2 uses
  %i.g = load i64, ptr %.sroa.9.0.copyload, align 8, !dbg !68754, !noalias !68762, !noundef !14 ; 5 uses
  %i.h = icmp slt i128 %.val16.i, 0, !dbg !68767
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !68767

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i128 %.val16.i, 0, !dbg !68770
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.f, !dbg !68770

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ult i64 %i.g, 39, !dbg !68771
  br i1 %i.i, label %bb.h, label %.invoke, !dbg !68771

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ult i64 %i.g, 39, !dbg !68772
  br i1 %i.j, label %bb.g, label %.invoke, !dbg !68772

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @232, i64 %i.g, !dbg !68772
  %i.l = load i128, ptr %i.k, align 16, !dbg !68772, !noalias !68762, !noundef !14
  br label %bb.i, !dbg !68773

bb.h:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @232, i64 %i.g, !dbg !68771
  %i.n = load i128, ptr %i.m, align 16, !dbg !68771, !noalias !68762, !noundef !14
  %i.o = sub i128 0, %i.n, !dbg !68774
  br label %bb.i, !dbg !68775

.invoke:                                          ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ @233, %bb.f ], [ @234, %bb.e ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #54
          to label %.cont unwind label %bb.j, !dbg !68776, !noalias !68751

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi i128 [ %i.o, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.d ], !dbg !68776
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !68777
  store i128 %.sroa.0.0.i.i.i.i.i, ptr %i.q, align 16, !dbg !68784, !noalias !68787
  %i.r = add i64 %.val15.i, 1, !dbg !68792        ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !68795 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.e, !dbg !68798
end_hunk_4
begin_hunk_5_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldnnuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5rounds0_0NCINvNvB1v_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecnE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !69494
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !69494
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !69494 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !69497
  %i.a = icmp eq ptr %0, %1, !dbg !69506
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5rounds0_0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5g_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !69507

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !69508
  %i.c = ptrtoint ptr %0 to i64, !dbg !69508
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !69508
  %i.e = lshr exact i64 %i.d, 4, !dbg !69508
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c, !dbg !69520

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.o, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.p, %bb.g ], !dbg !69521 ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !69522
  %.val16.i = load i128, ptr %i.f, align 16, !dbg !69526, !noalias !69527, !noundef !14 ; 3 uses
  %i.g = load i128, ptr %.sroa.9.0.copyload, align 16, !dbg !69530, !noalias !69538, !noundef !14 ; 3 uses
  %i.h = icmp eq i128 %i.g, 0, !dbg !69543
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !69543

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i128 %i.g, -1, !dbg !69543
  %i.j = icmp eq i128 %.val16.i, -170141183460469231731687303715884105728, !dbg !69543
  %i.k = and i1 %i.j, %i.i, !dbg !69543
  br i1 %i.k, label %bb.f, label %bb.g, !dbg !69543

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #54
          to label %.noexc.i unwind label %bb.h, !dbg !69543, !noalias !69527

.noexc.i:                                         ; preds = %bb.e
  unreachable, !dbg !69543

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const24panic_const_rem_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #54
          to label %.noexc17.i unwind label %bb.h, !dbg !69543, !noalias !69527

.noexc17.i:                                       ; preds = %bb.f
  unreachable, !dbg !69543

bb.g:                                             ; preds = %bb.d
  %i.l = srem i128 %.val16.i, %i.g, !dbg !69543
  %i.m = sub nsw i128 %.val16.i, %i.l, !dbg !69544
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !69545
  store i128 %i.m, ptr %i.n, align 16, !dbg !69552, !noalias !69555
  %i.o = add i64 %.val15.i, 1, !dbg !69560        ; 2 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 1, !dbg !69563 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e, !dbg !69566
  br i1 %i.q, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5rounds0_0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5g_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !69566

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !69567, !noalias !69527
  resume { ptr, i32 } %i.r, !dbg !69578

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5rounds0_0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5g_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.o, %bb.g ], !dbg !69579
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !69579, !noalias !69527
  ret void, !dbg !69586
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldnnuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5rounds_0NCINvNvB1v_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecnE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69587 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !69588 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !69588
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !69588 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !69588
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !69588
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !69588
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !69588 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !69588
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !69588 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !69591
  %i.a = icmp eq ptr %0, %1, !dbg !69600
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5rounds_0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !69601

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !69602
  %i.c = ptrtoint ptr %0 to i64, !dbg !69602
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !69602
  %i.e = lshr exact i64 %i.d, 4, !dbg !69602
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c, !dbg !69614

bb.c:                                             ; preds = %bb.i, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.i ], !dbg !69615 ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !69616
  %.val16.i = load i128, ptr %i.f, align 16, !dbg !69620, !noalias !69621, !noundef !14 ; 4 uses
  %i.g = load i128, ptr %.sroa.9.0.copyload, align 16, !dbg !69624, !noalias !69632, !noundef !14 ; 5 uses
  %i.h = icmp eq i128 %i.g, 0, !dbg !69637
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !69637

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i128 %i.g, -1, !dbg !69637
  %i.j = icmp eq i128 %.val16.i, -170141183460469231731687303715884105728, !dbg !69637
  %i.k = and i1 %i.j, %i.i, !dbg !69637
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !69637

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #54
          to label %.noexc.i unwind label %bb.j, !dbg !69637, !noalias !69621

.noexc.i:                                         ; preds = %bb.e
  unreachable, !dbg !69637

bb.f:                                             ; preds = %bb.d
  %i.l = srem i128 %.val16.i, %i.g, !dbg !69637   ; 2 uses
  %.sroa.01.0.i.i.i.i = tail call i128 @llvm.abs.i128(i128 %i.l, i1 true), !dbg !69638
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload) ]
  %i.m = load i128, ptr %.sroa.10.0.copyload, align 16, !dbg !69642, !noalias !69632, !noundef !14
  %.not.i.i.i.i = icmp slt i128 %.sroa.01.0.i.i.i.i, %i.m, !dbg !69643
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h, !dbg !69643

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const24panic_const_rem_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #54
          to label %.noexc17.i unwind label %bb.j, !dbg !69637, !noalias !69621

.noexc17.i:                                       ; preds = %bb.g
  unreachable, !dbg !69637

bb.h:                                             ; preds = %bb.f
  %i.n = icmp slt i128 %.val16.i, 0, !dbg !69644
  %i.o = sub i128 0, %i.g
  %spec.select.i.i.i.i = select i1 %i.n, i128 %i.o, i128 %i.g, !dbg !69644
  br label %bb.i, !dbg !69644

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.0.0.i.i.i.i = phi i128 [ %spec.select.i.i.i.i, %bb.h ], [ 0, %bb.f ], !dbg !69645
  %i.p = sub nsw i128 %.val16.i, %i.l, !dbg !69646
  %i.q = add i128 %i.p, %.sroa.0.0.i.i.i.i, !dbg !69646
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !69648
  store i128 %i.q, ptr %i.r, align 16, !dbg !69655, !noalias !69658
  %i.s = add i64 %.val15.i, 1, !dbg !69663        ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1, !dbg !69666 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.e, !dbg !69669
  br i1 %i.u, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5rounds_0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !69669

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !69670, !noalias !69621
  resume { ptr, i32 } %i.v, !dbg !69681

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries5rounds_0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.i, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.i ], !dbg !69682
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !69682, !noalias !69621
  ret void, !dbg !69689
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3M_10UInt32TypeE0NCINvNvB1v_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5u_3VecnE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !69690 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !69691 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !69691
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !69691 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !69691
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !69691 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !69694
  %i.a = icmp eq ptr %0, %1, !dbg !69703
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.b, !dbg !69704

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !69705
  %i.c = ptrtoint ptr %0 to i64, !dbg !69705
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !69705      ; 2 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !69705      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !69717        ; 3 uses
  %i.f = icmp ult i64 %i.d, 64, !dbg !69717
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !69717

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846972, !dbg !69717
  br label %bb.c, !dbg !69717

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.o, %bb.c ], !dbg !69718 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !69720
  store i128 1, ptr %i.h, align 16, !dbg !69732, !noalias !69735
  %i.i = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !69720
  %i.j = getelementptr i8, ptr %i.i, i64 16, !dbg !69720
  store i128 1, ptr %i.j, align 16, !dbg !69732, !noalias !69735
  %i.k = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !69720
  %i.l = getelementptr i8, ptr %i.k, i64 32, !dbg !69720
  store i128 1, ptr %i.l, align 16, !dbg !69732, !noalias !69735
  %i.m = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !69720
  %i.n = getelementptr i8, ptr %i.m, i64 48, !dbg !69720
  store i128 1, ptr %i.n, align 16, !dbg !69732, !noalias !69735
  %i.o = add i64 %i.g, 4, !dbg !69746             ; 3 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !69749  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !69749
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !69749

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !69749
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %.epil.preheader, !dbg !69749

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !69749
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !69749
  br label %bb.d, !dbg !69749

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.p = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.r, %bb.d ], !dbg !69718 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !69720
  store i128 1, ptr %i.q, align 16, !dbg !69732, !noalias !69735
  %i.r = add i64 %i.p, 1, !dbg !69746             ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !69749 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !69749
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.d, !dbg !69749, !llvm.loop !69750

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNtB1K_3map8map_foldnnuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecnE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa ], [ %i.r, %bb.d ], !dbg !69751
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !69751, !noalias !69762
  ret void, !dbg !69763
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i128 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4foldoNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i128 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !69764 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !69765
  %i.a = icmp eq ptr %0, %1, !dbg !69774
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !69775

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !69776
  %i.c = ptrtoint ptr %0 to i64, !dbg !69776
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !69776      ; 3 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !69776      ; 2 uses
  %i.f = icmp eq i64 %i.d, 16, !dbg !69788
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !69788

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974, !dbg !69788
  br label %bb.c, !dbg !69788

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.j, %bb.c ], !dbg !69789 ; 3 uses
  %.sroa.02.0.i = phi i128 [ %2, %.new ], [ %.sroa.0.0.i.i.i.i.1, %bb.c ], !dbg !69790
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !69791
  %.val.i = load i128, ptr %i.g, align 16, !dbg !69795, !noundef !14
  %.sroa.0.0.i.i.i.i = tail call noundef i128 @llvm.umax.i128(i128 %.sroa.02.0.i, i128 %.val.i), !dbg !69796
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !69791
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !69791
  %.val.i.1 = load i128, ptr %i.i, align 16, !dbg !69795, !noundef !14
  %.sroa.0.0.i.i.i.i.1 = tail call noundef i128 @llvm.umax.i128(i128 %.sroa.0.0.i.i.i.i, i128 %.val.i.1), !dbg !69796 ; 3 uses
  %i.j = add nuw i64 %.sroa.04.0.i, 2, !dbg !69804 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !69807  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !69807
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !69807

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.k = and i64 %i.d, 16, !dbg !69807
  %lcmp.mod.not = icmp eq i64 %i.k, 0, !dbg !69807
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !69807

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.j, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i128 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !69807
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !69807
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init, !dbg !69791
  %.val.i.epil = load i128, ptr %i.l, align 16, !dbg !69795, !noundef !14
  %.sroa.0.0.i.i.i.i.epil = tail call noundef i128 @llvm.umax.i128(i128 %.sroa.02.0.i.epil.init, i128 %.val.i.epil), !dbg !69796
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !69808

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi i128 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %.epil.preheader ], !dbg !69790
  ret i128 %.sroa.0.0.i, !dbg !69808
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i128 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4foldoNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i128 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !69809 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !69810
  %i.a = icmp eq ptr %0, %1, !dbg !69819
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !69820

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !69821
  %i.c = ptrtoint ptr %0 to i64, !dbg !69821
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !69821      ; 3 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !69821      ; 2 uses
  %i.f = icmp eq i64 %i.d, 16, !dbg !69833
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !69833

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974, !dbg !69833
  br label %bb.c, !dbg !69833

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.j, %bb.c ], !dbg !69834 ; 3 uses
  %.sroa.02.0.i = phi i128 [ %2, %.new ], [ %.sroa.0.0.i.i.i.i.1, %bb.c ], !dbg !69835
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !69836
  %.val.i = load i128, ptr %i.g, align 16, !dbg !69840, !noundef !14
  %.sroa.0.0.i.i.i.i = tail call noundef i128 @llvm.umin.i128(i128 %.sroa.02.0.i, i128 %.val.i), !dbg !69841
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !69836
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !69836
  %.val.i.1 = load i128, ptr %i.i, align 16, !dbg !69840, !noundef !14
  %.sroa.0.0.i.i.i.i.1 = tail call noundef i128 @llvm.umin.i128(i128 %.sroa.0.0.i.i.i.i, i128 %.val.i.1), !dbg !69841 ; 3 uses
  %i.j = add nuw i64 %.sroa.04.0.i, 2, !dbg !69849 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !69852  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !69852
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !69852

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.k = and i64 %i.d, 16, !dbg !69852
  %lcmp.mod.not = icmp eq i64 %i.k, 0, !dbg !69852
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !69852

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.j, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i128 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !69852
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !69852
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init, !dbg !69836
  %.val.i.epil = load i128, ptr %i.l, align 16, !dbg !69840, !noundef !14
  %.sroa.0.0.i.i.i.i.epil = tail call noundef i128 @llvm.umin.i128(i128 %.sroa.02.0.i.epil.init, i128 %.val.i.epil), !dbg !69841
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !69853

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi i128 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %.epil.preheader ], !dbg !69835
  ret i128 %.sroa.0.0.i, !dbg !69853
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldoouNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3H_10UInt32TypeE0NCINvNvB1v_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecoE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !69854 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !69855 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !69855
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !69855 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !69855
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !69855
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !69855
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !69855 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !69858
  %i.a = icmp eq ptr %0, %1, !dbg !69867
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5y_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !69868

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !69869
  %i.c = ptrtoint ptr %0 to i64, !dbg !69869
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !69869
  %i.e = lshr exact i64 %i.d, 4, !dbg !69869
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  br label %bb.c, !dbg !69881

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %.loopexit.i ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %.loopexit.i ], !dbg !69882 ; 2 uses
  %i.g = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !69883, !noalias !69892, !noundef !14 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !69899
  br i1 %i.h, label %.loopexit.i, label %bb.d, !dbg !69899

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !69905
  %.val16.i = load i128, ptr %i.i, align 16, !dbg !69908, !noalias !69909, !noundef !14
  br label %.preheader21.i.i.i.i.i.i, !dbg !69910

.preheader21.i.i.i.i.i.i:                         ; preds = %bb.d, %bb.f
  %.sroa.015.1.i.i.i.i.i.i = phi i128 [ %.sroa.015.2.i.i.i.i.i.i, %bb.f ], [ 1, %bb.d ], !dbg !69913 ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.g, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i128 [ %i.n, %bb.f ], [ %.val16.i, %bb.d ] ; 3 uses
  %i.j = and i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !69914
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0, !dbg !69914
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !69914

bb.e:                                             ; preds = %.preheader21.i.i.i.i.i.i
  %i.k = mul i128 %.sroa.0.0.i.i.i.i.i.i, %.sroa.015.1.i.i.i.i.i.i, !dbg !69915 ; 2 uses
  %i.l = icmp eq i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !69916
  br i1 %i.l, label %.loopexit.i, label %bb.f, !dbg !69916

bb.f:                                             ; preds = %bb.e, %.preheader21.i.i.i.i.i.i
  %.sroa.015.2.i.i.i.i.i.i = phi i128 [ %i.k, %bb.e ], [ %.sroa.015.1.i.i.i.i.i.i, %.preheader21.i.i.i.i.i.i ], !dbg !69913
  %i.m = lshr i32 %.sroa.07.0.i.i.i.i.i.i, 1, !dbg !69917
  %i.n = mul i128 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !69918
  br label %.preheader21.i.i.i.i.i.i, !dbg !69919

.loopexit.i:                                      ; preds = %bb.e, %bb.c
  %.sroa.015.0.i.i.i.i.i.i = phi i128 [ 1, %bb.c ], [ %i.k, %bb.e ], !dbg !69920
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !69921
  store i128 %.sroa.015.0.i.i.i.i.i.i, ptr %i.o, align 16, !dbg !69928, !noalias !69931
  %i.p = add i64 %i.f, 1, !dbg !69936             ; 2 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 1, !dbg !69939 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e, !dbg !69942
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5y_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.c, !dbg !69942

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5y_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit: ; preds = %.loopexit.i, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %.loopexit.i ], !dbg !69943
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !69943, !noalias !69909
  ret void, !dbg !69954
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvB1v_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecoE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !69955 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !69956 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !69956
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !69956 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !69956
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !69956 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !69959
  %i.a = icmp eq ptr %0, %1, !dbg !69968
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.b, !dbg !69969

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !69970
  %i.c = ptrtoint ptr %0 to i64, !dbg !69970
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !69970      ; 3 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !69970      ; 2 uses
  %i.f = icmp eq i64 %i.d, 16, !dbg !69982
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !69982

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974, !dbg !69982
  br label %bb.c, !dbg !69982

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.n, %bb.c ], !dbg !69983 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ], !dbg !69987 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !69983
  %.val16.i = load i128, ptr %i.h, align 16, !dbg !69988, !noalias !69989, !noundef !14
  %.not.i.i.i.i = icmp ne i128 %.val16.i, 0, !dbg !69992
  %spec.select.i.i.i.i = zext i1 %.not.i.i.i.i to i128, !dbg !70002
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !70003
  store i128 %spec.select.i.i.i.i, ptr %i.i, align 16, !dbg !70010, !noalias !70013
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !69983
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !69983
  %.val16.i.1 = load i128, ptr %i.k, align 16, !dbg !69988, !noalias !69989, !noundef !14
  %.not.i.i.i.i.1 = icmp ne i128 %.val16.i.1, 0, !dbg !69992
  %spec.select.i.i.i.i.1 = zext i1 %.not.i.i.i.i.1 to i128, !dbg !70002
  %i.l = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !70003
  %i.m = getelementptr i8, ptr %i.l, i64 16, !dbg !70003
  store i128 %spec.select.i.i.i.i.1, ptr %i.m, align 16, !dbg !70010, !noalias !70013
  %i.n = add i64 %i.g, 2, !dbg !70022             ; 3 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 2, !dbg !70025 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !70028  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !70028
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !70028

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.p = and i64 %i.d, 16, !dbg !70028
  %lcmp.mod.not = icmp eq i64 %i.p, 0, !dbg !70028
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %.epil.preheader, !dbg !70028

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !70028
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !70028
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !69983
  %.val16.i.epil = load i128, ptr %i.q, align 16, !dbg !69988, !noalias !69989, !noundef !14
  %.not.i.i.i.i.epil = icmp ne i128 %.val16.i.epil, 0, !dbg !69992
  %spec.select.i.i.i.i.epil = zext i1 %.not.i.i.i.i.epil to i128, !dbg !70002
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !70003
  store i128 %spec.select.i.i.i.i.epil, ptr %i.r, align 16, !dbg !70010, !noalias !70013
  %i.s = add i64 %.epil.init, 1, !dbg !70022
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCINvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4sign9sign_implNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ], !dbg !70029
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !70029, !noalias !69989
  ret void, !dbg !70040
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldoouNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss8_0NCINvNvB1v_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5i_3VecoE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70041 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !70042 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !70042
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !70042 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !70042
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !70042
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !70042
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !70042
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !70045
  %i.a = icmp eq ptr %0, %1, !dbg !70054
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss8_0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !70055

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !70056
  %i.c = ptrtoint ptr %0 to i64, !dbg !70056
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !70056
  %i.e = lshr exact i64 %i.d, 4, !dbg !70056
  br label %bb.c, !dbg !70068

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.z, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.e ], !dbg !70069 ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !70070
  %.val16.i = load i128, ptr %i.f, align 16, !dbg !70074, !noalias !70075, !noundef !14 ; 2 uses
  %i.g = uitofp i128 %.val16.i to double, !dbg !70078 ; 4 uses
  %i.h = icmp eq i128 %.val16.i, 0, !dbg !70089
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !70089

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.sroa.9.0.copyload, align 4, !dbg !70091, !noalias !70092, !noundef !14
  %i.j = tail call double @llvm.log10.f64(double %i.g), !dbg !70097
  %i.k = tail call double @llvm.floor.f64(double %i.j), !dbg !70100
  %i.l = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.k), !dbg !70105
  %i.m = xor i32 %i.l, -1, !dbg !70091
  %i.n = add i32 %i.i, %i.m, !dbg !70091          ; 3 uses
  %i.o = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.g, i32 noundef %i.n)
          to label %.noexc.i unwind label %bb.f, !dbg !70106, !noalias !70075

.noexc.i:                                         ; preds = %bb.d
  %i.p = tail call double @llvm.powi.f64.i32(double 5.000000e+00, i32 %i.n), !dbg !70109 ; 2 uses
  %i.q = fmul double %i.o, %i.p, !dbg !70106
  %i.r = tail call double @llvm.round.f64(double %i.q), !dbg !70114
  %i.s = fdiv double %i.r, %i.p, !dbg !70120
  %i.t = sub i32 0, %i.n, !dbg !70121
  %i.u = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.s, i32 noundef %i.t)
          to label %.noexc17.i unwind label %bb.f, !dbg !70122, !noalias !70075 ; 2 uses

.noexc17.i:                                       ; preds = %.noexc.i
  %i.v = tail call double @llvm.fabs.f64(double %i.u), !dbg !70123
  %i.w = fcmp ueq double %i.v, +inf, !dbg !70129
  %.sroa.01.0.i.i.i.i = select i1 %i.w, double %i.g, double %i.u, !dbg !70130
  br label %bb.e, !dbg !70131

bb.e:                                             ; preds = %.noexc17.i, %bb.c
  %.sroa.01.0.sink.i.i.i.i = phi double [ %.sroa.01.0.i.i.i.i, %.noexc17.i ], [ %i.g, %bb.c ]
  %i.x = tail call noundef i128 @llvm.fptoui.sat.i128.f64(double %.sroa.01.0.sink.i.i.i.i), !dbg !70132
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !70136
  store i128 %i.x, ptr %i.y, align 16, !dbg !70143, !noalias !70146
  %i.z = add i64 %.val15.i, 1, !dbg !70151        ; 2 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 1, !dbg !70154 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.e, !dbg !70157
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss8_0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !70157

bb.f:                                             ; preds = %.noexc.i, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !70158, !noalias !70075
  resume { ptr, i32 } %i.ac, !dbg !70169

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss8_0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.z, %bb.e ], !dbg !70170
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !70170, !noalias !70075
  ret void, !dbg !70177
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3M_10UInt32TypeE0NCINvNvB1v_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5v_3VecoE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !70178 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !70179 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !70179
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !70179 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !70179
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !70179 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !70182
  %i.a = icmp eq ptr %0, %1, !dbg !70191
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.b, !dbg !70192

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !70193
  %i.c = ptrtoint ptr %0 to i64, !dbg !70193
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !70193      ; 2 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !70193      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !70205        ; 3 uses
  %i.f = icmp ult i64 %i.d, 64, !dbg !70205
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !70205

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846972, !dbg !70205
  br label %bb.c, !dbg !70205

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.o, %bb.c ], !dbg !70206 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !70208
  store i128 1, ptr %i.h, align 16, !dbg !70220, !noalias !70223
  %i.i = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !70208
  %i.j = getelementptr i8, ptr %i.i, i64 16, !dbg !70208
  store i128 1, ptr %i.j, align 16, !dbg !70220, !noalias !70223
  %i.k = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !70208
  %i.l = getelementptr i8, ptr %i.k, i64 32, !dbg !70208
  store i128 1, ptr %i.l, align 16, !dbg !70220, !noalias !70223
  %i.m = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !70208
  %i.n = getelementptr i8, ptr %i.m, i64 48, !dbg !70208
  store i128 1, ptr %i.n, align 16, !dbg !70220, !noalias !70223
  %i.o = add i64 %i.g, 4, !dbg !70234             ; 3 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !70237  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !70237
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !70237

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70237
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %.epil.preheader, !dbg !70237

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !70237
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !70237
  br label %bb.d, !dbg !70237

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.p = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.r, %bb.d ], !dbg !70206 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !70208
  store i128 1, ptr %i.q, align 16, !dbg !70220, !noalias !70223
  %i.r = add i64 %i.p, 1, !dbg !70234             ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !70237 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !70237
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %bb.d, !dbg !70237, !llvm.loop !70238

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoouQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecoE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit.loopexit.unr-lcssa ], [ %i.r, %bb.d ], !dbg !70239
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !70239, !noalias !70250
  ret void, !dbg !70251
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !70252 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !70253
  %i.a = icmp eq ptr %0, %1, !dbg !70262
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !70263

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !70264
  %i.c = ptrtoint ptr %0 to i64, !dbg !70264
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !70264      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !70264      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !70276
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !70276

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !70276
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !70276

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !70276

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !70277 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !70278 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !70282
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !70282
  %wide.load4 = load <8 x i16>, ptr %i.g, align 2, !dbg !70282
  %i.h = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !70283 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi3, <8 x i16> %wide.load4), !dbg !70283 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !70277 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !70291
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !70291, !llvm.loop !70292

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !70291
  %i.k = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax), !dbg !70291 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !70291
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !70291

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.l = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !60245

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !70277
  %bc.merge.rdx = phi i16 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !70293
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !70277 ; 2 uses
  %vec.phi9 = phi <4 x i16> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index8, !dbg !70278
  %wide.load10 = load <4 x i16>, ptr %i.m, align 2, !dbg !70282
  %i.n = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi9, <4 x i16> %wide.load10), !dbg !70283 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !70277 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec5, !dbg !70291
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !70291, !llvm.loop !70294

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.n), !dbg !70291 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.e, %n.vec5, !dbg !70291
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !70291

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !70291

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !70277 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !70293
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !70278
  %.val.i = load i16, ptr %i.q, align 2, !dbg !70282, !noundef !14
  %.sroa.0.0.i.i.i.i = tail call noundef i16 @llvm.smax.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !70283 ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 1, !dbg !70295 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !70291
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !70291, !llvm.loop !70298

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !70293
  ret i16 %.sroa.0.0.i, !dbg !70299
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !70300 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !70301
  %i.a = icmp eq ptr %0, %1, !dbg !70310
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !70311

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !70312
  %i.c = ptrtoint ptr %0 to i64, !dbg !70312
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !70312      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !70312      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !70324
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !70324

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !70324
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !70324

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !70324

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !70325 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !70326 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !70330
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !70330
  %wide.load4 = load <8 x i16>, ptr %i.g, align 2, !dbg !70330
  %i.h = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !70331 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi3, <8 x i16> %wide.load4), !dbg !70331 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !70325 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !70339
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !70339, !llvm.loop !70340

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !70339
  %i.k = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax), !dbg !70339 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !70339
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !70339

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.l = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !60245

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !70325
  %bc.merge.rdx = phi i16 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !70341
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !70325 ; 2 uses
  %vec.phi9 = phi <4 x i16> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index8, !dbg !70326
  %wide.load10 = load <4 x i16>, ptr %i.m, align 2, !dbg !70330
  %i.n = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %vec.phi9, <4 x i16> %wide.load10), !dbg !70331 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !70325 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec5, !dbg !70339
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !70339, !llvm.loop !70342

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.n), !dbg !70339 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.e, %n.vec5, !dbg !70339
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !70339

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !70339
end_hunk_5
begin_hunk_6_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldttuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss5_0NCINvNvB1v_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5i_3VectE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.z, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.e ], !dbg !71071 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71072
  %.val16.i = load i16, ptr %i.f, align 2, !dbg !71076, !noalias !71077, !noundef !14 ; 2 uses
  %i.g = icmp eq i16 %.val16.i, 0, !dbg !71080
  br i1 %i.g, label %bb.e, label %bb.d, !dbg !71080

bb.d:                                             ; preds = %bb.c
  %i.h = uitofp i16 %.val16.i to double, !dbg !71089 ; 3 uses
  %i.i = load i32, ptr %.sroa.9.0.copyload, align 4, !dbg !71093, !noalias !71094, !noundef !14
  %i.j = tail call double @llvm.log10.f64(double %i.h), !dbg !71099
  %i.k = tail call double @llvm.floor.f64(double %i.j), !dbg !71102
  %i.l = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.k), !dbg !71107
  %i.m = xor i32 %i.l, -1, !dbg !71093
  %i.n = add i32 %i.i, %i.m, !dbg !71093          ; 3 uses
  %i.o = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.h, i32 noundef %i.n)
          to label %.noexc.i unwind label %bb.f, !dbg !71108, !noalias !71077

.noexc.i:                                         ; preds = %bb.d
  %i.p = tail call double @llvm.powi.f64.i32(double 5.000000e+00, i32 %i.n), !dbg !71111 ; 2 uses
  %i.q = fmul double %i.o, %i.p, !dbg !71108
  %i.r = tail call double @llvm.round.f64(double %i.q), !dbg !71116
  %i.s = fdiv double %i.r, %i.p, !dbg !71122
  %i.t = sub i32 0, %i.n, !dbg !71123
  %i.u = invoke noundef double @_RNvNtNtCslLP515EPe0c_4libm4math6scalbn6scalbn(double noundef %i.s, i32 noundef %i.t)
          to label %.noexc17.i unwind label %bb.f, !dbg !71124, !noalias !71077 ; 2 uses

.noexc17.i:                                       ; preds = %.noexc.i
  %i.v = tail call double @llvm.fabs.f64(double %i.u), !dbg !71125
  %i.w = fcmp ueq double %i.v, +inf, !dbg !71131
  %.sroa.01.0.i.i.i.i = select i1 %i.w, double %i.h, double %i.u, !dbg !71132
  %i.x = tail call i16 @llvm.fptoui.sat.i16.f64(double %.sroa.01.0.i.i.i.i), !dbg !71133
  br label %bb.e, !dbg !71137

bb.e:                                             ; preds = %.noexc17.i, %bb.c
  %.sroa.0.0.i.i.i.i = phi i16 [ %i.x, %.noexc17.i ], [ 0, %bb.c ], !dbg !71138
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !71140
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.y, align 2, !dbg !71147, !noalias !71150
  %i.z = add i64 %.val15.i, 1, !dbg !71155        ; 2 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 1, !dbg !71158 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.e, !dbg !71161
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss5_0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !71161

bb.f:                                             ; preds = %.noexc.i, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !71162, !noalias !71077
  resume { ptr, i32 } %i.ac, !dbg !71173

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops5round11RoundSeries14round_sig_figss5_0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5q_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.z, %bb.e ], !dbg !71174
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !71174, !noalias !71077
  ret void, !dbg !71181
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3M_10UInt32TypeE0NCINvNvB1v_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5u_3VectE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !71182 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !71183 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !71183
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !71183 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !71183
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !71183 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71186
  %i.a = icmp eq ptr %0, %1, !dbg !71195
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %iter.check, !dbg !71196

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71197
  %i.c = ptrtoint ptr %0 to i64, !dbg !71197
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71197      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !71197      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !71209
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !71209

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !71209
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !71209

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !71209

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71210 ; 2 uses
  %i.h = getelementptr [2 x i8], ptr %i.g, i64 %index, !dbg !71211 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !71224
  store <8 x i16> splat (i16 1), ptr %i.h, align 2, !dbg !71224, !noalias !71227
  store <8 x i16> splat (i16 1), ptr %i.i, align 2, !dbg !71224, !noalias !71227
  %index.next = add nuw i64 %index, 16, !dbg !71210 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !71238
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !71238, !llvm.loop !71239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !71238
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %vec.epilog.iter.check, !dbg !71238

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.k = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !60245

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !71210
  %n.vec3 = and i64 %i.e, 9223372036854775804     ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec3     ; 2 uses
  %i.m = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5, %vec.epilog.vector.body ], !dbg !71210 ; 2 uses
  %i.n = getelementptr [2 x i8], ptr %i.m, i64 %index4, !dbg !71211
  store <4 x i16> splat (i16 1), ptr %i.n, align 2, !dbg !71224, !noalias !71227
  %index.next5 = add nuw i64 %index4, 4, !dbg !71210 ; 2 uses
  %i.o = icmp eq i64 %index.next5, %n.vec3, !dbg !71238
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71238, !llvm.loop !71240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n6 = icmp eq i64 %i.e, %n.vec3, !dbg !71238
  br i1 %cmp.n6, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !71238

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec3, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !71238

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.p = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71241 ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !71210
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !71211
  store i16 1, ptr %i.q, align 2, !dbg !71224, !noalias !71227
  %i.r = add i64 %i.p, 1, !dbg !71242             ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !71245 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.e, !dbg !71238
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit, label %vec.epilog.scalar.ph, !dbg !71238, !llvm.loop !71248

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldttuQNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeNtB3V_10UInt32TypeE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VectE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2S_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %vec.epilog.middle.block ], [ %i.f, %middle.block ], [ %i.r, %vec.epilog.scalar.ph ], !dbg !71249
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !71249, !noalias !71260
  ret void, !dbg !71261
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2e_3MapIB47_IB13_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2L_8downcastINtB2N_12ChunkedArrayNtNtB2P_9datatypes9Int64TypeE13downcast_iter0ENCINvB2J_16arg_sort_numericB6v_E0EBP_xEs_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtB4w_3vecINtB8x_3VecB2x_E14extend_trustedIB47_BP_B2C_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !71262 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !71263 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !71263
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !71263 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !71263
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !71263 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !71263
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !71263 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71266
  %i.a = icmp eq ptr %0, %1, !dbg !71275
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !71276

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71277
  %i.c = ptrtoint ptr %0 to i64, !dbg !71277
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71277      ; 3 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !71277      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.f = icmp eq i64 %i.d, 8, !dbg !71289
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !71289

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !71289
  br label %bb.c, !dbg !71289

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.t, %bb.c ], !dbg !71290 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ], !dbg !71294 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71290
  %.val16.i = load i64, ptr %i.h, align 8, !dbg !71295, !noalias !71296, !noundef !14
  %i.i = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !71299, !noalias !71311, !noundef !14 ; 2 uses
  %i.j = add i32 %i.i, 1, !dbg !71316
  store i32 %i.j, ptr %.sroa.8.0.copyload, align 4, !dbg !71316, !noalias !71311
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !71318 ; 2 uses
  store i32 %i.i, ptr %i.k, align 8, !dbg !71325, !noalias !71328
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !71325
  store i64 %.val16.i, ptr %i.l, align 8, !dbg !71325, !noalias !71328
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71290
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !71290
  %.val16.i.1 = load i64, ptr %i.n, align 8, !dbg !71295, !noalias !71296, !noundef !14
  %i.o = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !71299, !noalias !71311, !noundef !14 ; 2 uses
  %i.p = add i32 %i.o, 1, !dbg !71316
  store i32 %i.p, ptr %.sroa.8.0.copyload, align 4, !dbg !71316, !noalias !71311
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !71318 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !71318
  store i32 %i.o, ptr %i.r, align 8, !dbg !71325, !noalias !71328
  %i.s = getelementptr i8, ptr %i.q, i64 24, !dbg !71325
  store i64 %.val16.i.1, ptr %i.s, align 8, !dbg !71325, !noalias !71328
  %i.t = add i64 %i.g, 2, !dbg !71333             ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 2, !dbg !71336 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !71339  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !71339
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !71339

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.v = and i64 %i.d, 8, !dbg !71339
  %lcmp.mod.not = icmp eq i64 %i.v, 0, !dbg !71339
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !71339

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !71339
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !71339
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !71290
  %.val16.i.epil = load i64, ptr %i.w, align 8, !dbg !71295, !noalias !71296, !noundef !14
  %i.x = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !71299, !noalias !71311, !noundef !14 ; 2 uses
  %i.y = add i32 %i.x, 1, !dbg !71316
  store i32 %i.y, ptr %.sroa.8.0.copyload, align 4, !dbg !71316, !noalias !71311
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !71318 ; 2 uses
  store i32 %i.x, ptr %i.z, align 8, !dbg !71325, !noalias !71328
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !71325
  store i64 %.val16.i.epil, ptr %i.aa, align 8, !dbg !71325, !noalias !71328
  %i.ab = add i64 %.epil.init, 1, !dbg !71333
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.ab, %.epil.preheader ], !dbg !71340
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !71340, !noalias !71296
  ret void, !dbg !71351
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldxauQNCNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0NCINvNvB1v_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecaE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71352 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !71353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !71354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71356), !dbg !71359
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71360
  %i.b = icmp eq ptr %0, %1, !dbg !71369
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !71370

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64, !dbg !71371
  %i.d = ptrtoint ptr %0 to i64, !dbg !71371
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !71371
  %i.f = lshr exact i64 %i.e, 3, !dbg !71371
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.d, !dbg !71383

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !71384, !alias.scope !71356, !nonnull !14, !align !4162, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !71384
  %.val11.i = load i64, ptr %i.j, align 8, !dbg !71384, !alias.scope !71356, !noundef !14
  store i64 %.val11.i, ptr %.val.i, align 8, !dbg !71385, !noalias !71356
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxauQNCNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71384

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.e ], !dbg !71396 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71397
  %.val16.i = load i64, ptr %i.k, align 8, !dbg !71401, !noalias !71356, !noundef !14
  %i.l = invoke noundef i8 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0INtB7_5FnMutTxEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %.val16.i)
          to label %bb.e unwind label %bb.g, !dbg !71402

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !71408), !dbg !71411
  call void @llvm.experimental.noalias.scope.decl(metadata !71412), !dbg !71415
  %i.m = load ptr, ptr %i.h, align 8, !dbg !71418, !alias.scope !71421, !noundef !14
  %i.n = load i64, ptr %i.i, align 8, !dbg !71426, !alias.scope !71421, !noundef !14 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n, !dbg !71429
  store i8 %i.l, ptr %i.o, align 1, !dbg !71432, !noalias !71435
  %i.p = add i64 %i.n, 1, !dbg !71436             ; 2 uses
  store i64 %i.p, ptr %i.i, align 8, !dbg !71436, !alias.scope !71421
  %i.q = add nuw i64 %.sroa.01.0.i, 1, !dbg !71439 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.f, !dbg !71442
  br i1 %i.r, label %bb.f, label %bb.d, !dbg !71442

bb.f:                                             ; preds = %bb.e
  %.val12.i = load ptr, ptr %i.a, align 8, !dbg !71384, !alias.scope !71356, !nonnull !14, !align !4162, !noundef !14
  store i64 %i.p, ptr %.val12.i, align 8, !dbg !71443
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxauQNCNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71384

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val14.i = load ptr, ptr %i.a, align 8, !dbg !71384, !alias.scope !71356, !nonnull !14, !align !4162, !noundef !14
  %.val15.i = load i64, ptr %i.i, align 8, !dbg !71384, !alias.scope !71356, !noundef !14
  store i64 %.val15.i, ptr %.val14.i, align 8, !dbg !71450
  resume { ptr, i32 } %i.s, !dbg !71457

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxauQNCNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5e_3VecaE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !71458
  ret void, !dbg !71459
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldxmuQNCNCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions6gatherNtB2H_10GatherExprNtB2J_12PhysicalExpr23evaluate_on_groups_impls1_00NCINvNvB1v_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecmE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2L_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71460 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !71461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !71462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71464), !dbg !71467
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71468
  %i.b = icmp eq ptr %0, %1, !dbg !71477
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !71478

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64, !dbg !71479
  %i.d = ptrtoint ptr %0 to i64, !dbg !71479
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !71479
  %i.f = lshr exact i64 %i.e, 3, !dbg !71479
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.d, !dbg !71491

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !71492, !alias.scope !71464, !nonnull !14, !align !4162, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !71492
  %.val11.i = load i64, ptr %i.j, align 8, !dbg !71492, !alias.scope !71464, !noundef !14
  store i64 %.val11.i, ptr %.val.i, align 8, !dbg !71493, !noalias !71464
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxmuQNCNCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions6gatherNtB2Q_10GatherExprNtB2S_12PhysicalExpr23evaluate_on_groups_impls1_00NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2U_.exit, !dbg !71492

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.e ], !dbg !71504 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71505
  %.val16.i = load i64, ptr %i.k, align 8, !dbg !71509, !noalias !71464, !noundef !14
  %i.l = invoke noundef i32 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions6gatherNtBV_10GatherExprNtBX_12PhysicalExpr23evaluate_on_groups_impls1_00INtB7_5FnMutTxEE8call_mutBZ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %.val16.i)
          to label %bb.e unwind label %bb.g, !dbg !71510

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !71516), !dbg !71519
  call void @llvm.experimental.noalias.scope.decl(metadata !71520), !dbg !71523
  %i.m = load ptr, ptr %i.h, align 8, !dbg !71526, !alias.scope !71529, !noundef !14
  %i.n = load i64, ptr %i.i, align 8, !dbg !71534, !alias.scope !71529, !noundef !14 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n, !dbg !71537
  store i32 %i.l, ptr %i.o, align 4, !dbg !71540, !noalias !71543
  %i.p = add i64 %i.n, 1, !dbg !71544             ; 2 uses
  store i64 %i.p, ptr %i.i, align 8, !dbg !71544, !alias.scope !71529
  %i.q = add nuw i64 %.sroa.01.0.i, 1, !dbg !71547 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.f, !dbg !71550
  br i1 %i.r, label %bb.f, label %bb.d, !dbg !71550

bb.f:                                             ; preds = %bb.e
  %.val12.i = load ptr, ptr %i.a, align 8, !dbg !71492, !alias.scope !71464, !nonnull !14, !align !4162, !noundef !14
  store i64 %i.p, ptr %.val12.i, align 8, !dbg !71551
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxmuQNCNCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions6gatherNtB2Q_10GatherExprNtB2S_12PhysicalExpr23evaluate_on_groups_impls1_00NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2U_.exit, !dbg !71492

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val14.i = load ptr, ptr %i.a, align 8, !dbg !71492, !alias.scope !71464, !nonnull !14, !align !4162, !noundef !14
  %.val15.i = load i64, ptr %i.i, align 8, !dbg !71492, !alias.scope !71464, !noundef !14
  store i64 %.val15.i, ptr %.val14.i, align 8, !dbg !71558
  resume { ptr, i32 } %i.s, !dbg !71565

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxmuQNCNCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions6gatherNtB2Q_10GatherExprNtB2S_12PhysicalExpr23evaluate_on_groups_impls1_00NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2U_.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !71566
  ret void, !dbg !71567
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldxxuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeNtB3H_10UInt32TypeE0NCINvNvB1v_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecxE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !71568 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !71569 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !71569
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !71569 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !71569
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !71569
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !71569
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !71569 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !71572
  %i.a = icmp eq ptr %0, %1, !dbg !71581
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxxuNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow17pow_to_uint_dtypeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeNtB3Q_10UInt32TypeE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5v_3VecxE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2R_.exit, label %bb.b, !dbg !71582

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !71583
  %i.c = ptrtoint ptr %0 to i64, !dbg !71583
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !71583
  %i.e = lshr exact i64 %i.d, 3, !dbg !71583
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  br label %bb.c, !dbg !71595

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %.loopexit.i ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %.loopexit.i ], !dbg !71596 ; 2 uses
  %i.g = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !71597, !noalias !71606, !noundef !14 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !71613
  br i1 %i.h, label %.loopexit.i, label %bb.d, !dbg !71613

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !71620
  %.val16.i = load i64, ptr %i.i, align 8, !dbg !71623, !noalias !71624, !noundef !14
  br label %.preheader21.i.i.i.i.i.i, !dbg !71625

.preheader21.i.i.i.i.i.i:                         ; preds = %bb.d, %bb.f
  %.sroa.015.1.i.i.i.i.i.i = phi i64 [ %.sroa.015.2.i.i.i.i.i.i, %bb.f ], [ 1, %bb.d ], !dbg !71628 ; 2 uses
end_hunk_6
begin_hunk_7_@_RNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions11aggregationNtB6_15AggregationExprNtB8_12PhysicalExpr13evaluate_impls_0Ba_:bb.a

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !85055 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85057), !dbg !85055
  call void @llvm.experimental.noalias.scope.decl(metadata !85060), !dbg !85063
  call void @llvm.experimental.noalias.scope.decl(metadata !85065), !dbg !85068
  call void @llvm.experimental.noalias.scope.decl(metadata !85070), !dbg !85073
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !85075, !alias.scope !85079, !nonnull !14, !noundef !14
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !dbg !85080, !noalias !85079
  %i.ah = icmp eq i64 %i.ag, 1, !dbg !85083
  br i1 %i.ah, label %bb.p, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit, !dbg !85083

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !85084
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #51, !dbg !85086
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit, !dbg !85086

bb.q:                                             ; preds = %bb.n
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 dereferenceable(160) %1), !dbg !85055
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit, !dbg !85055

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.o, %bb.p, %bb.q
  ret void, !dbg !85087

bb.r:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !85088
  unreachable, !dbg !85088

bb.s:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !85088
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions11aggregationNtB6_15AggregationExprNtB8_12PhysicalExpr13evaluate_implsa_0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 16 captures(address, read_provenance) %1, ptr noalias noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85089 {
bb.a:
  %.sroa.03 = alloca [120 x i8], align 16         ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !85090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 96, i1 false), !dbg !85090
  %i.c = load i8, ptr %1, align 16, !dbg !85091, !range !12945, !noundef !14
  %.not = icmp eq i8 %i.c, 31, !dbg !85091
  br i1 %.not, label %bb.c, label %bb.b, !dbg !85094

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !85095
  br label %bb.e, !dbg !85099

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !85100
  %i.f = load ptr, ptr %i.e, align 8, !dbg !85100, !nonnull !14, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !85100
  %i.h = load ptr, ptr %i.g, align 16, !dbg !85100, !nonnull !14, !align !4162, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !85113
  %i.j = load i64, ptr %i.i, align 8, !dbg !85113, !range !14371, !invariant.load !14
  %i.k = add nsw i64 %i.j, -1, !dbg !85113
  %i.l = and i64 %i.k, -16, !dbg !85113
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l, !dbg !85113
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !85113
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 288, !dbg !85114
  %i.p = load ptr, ptr %i.o, align 8, !dbg !85114, !invariant.load !14, !nonnull !14
  %i.q = invoke noundef nonnull align 8 ptr %i.p(ptr noundef nonnull %i.n)
          to label %bb.e unwind label %bb.d, !dbg !85115

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(96) %i.b) #52
          to label %bb.j unwind label %bb.i, !dbg !85116

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.q, %bb.c ], !dbg !85117 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85118
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 23, !dbg !85123
  %i.t = load i8, ptr %i.s, align 1, !dbg !85123, !range !341, !noundef !14
  %i.u = icmp eq i8 %i.t, -40, !dbg !85130
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !85130

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0)
          to label %bb.h unwind label %bb.d, !dbg !85131

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0, i64 24, i1 false), !dbg !85132
  br label %bb.h, !dbg !85135

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.03.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 96, !dbg !85136
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03), !dbg !85138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.03.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !85143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.03, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 96, i1 false), !dbg !85136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %0, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.03, i64 120, i1 false), !dbg !85145
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !85145
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !85145
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !85145
  store i32 3, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 16, !dbg !85145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03), !dbg !85146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85116
  ret void, !dbg !85147

bb.i:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !85148
  unreachable, !dbg !85148

bb.j:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.r, !dbg !85148
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10BinaryTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array6binary9namespace19BinaryNameSpaceImpl16contains_chunked0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85149 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [288 x i8], align 32              ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85151), !dbg !85154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85155), !dbg !85154
  %i.d = icmp samesign ult i64 %1, 64, !dbg !85157
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !85157

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !85163, !noalias !85164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !85165, !noalias !85164
  store i8 1, ptr %i.b, align 1, !dbg !85169, !noalias !85164
  call void @_RINvMs4_NtCslnrARR2vGZ9_6memchr6memmemNtB6_13FinderBuilder25build_forward_with_rankerNtNtNtNtB8_4arch3all10packedpair20DefaultFrequencyRankShECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([288 x i8]) align 32 captures(none) dereferenceable(288) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !85176, !noalias !85151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85179, !noalias !85164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85180, !noalias !85164
  store i32 1, ptr %i.a, align 4, !dbg !85183, !noalias !85164
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !85183
  store i32 0, ptr %i.e, align 4, !dbg !85183, !noalias !85164
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 256, !dbg !85189
  %i.g = load i64, ptr %i.f, align 32, !dbg !85189, !range !3262, !noalias !85164, !noundef !14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 264, !dbg !85199
  %i.i = load ptr, ptr %i.h, align 8, !dbg !85199, !noalias !85164, !nonnull !14 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 272, !dbg !85199
  %i.k = load i64, ptr %i.j, align 16, !dbg !85199, !noalias !85164 ; 6 uses
  %i.l = icmp ult i64 %1, %i.k, !dbg !85200
  br i1 %i.l, label %bb.n, label %bb.j, !dbg !85200

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %3, 0, !dbg !85205
  br i1 %.not.i.i, label %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i, label %bb.d, !dbg !85205

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %2, align 1, !dbg !85217, !alias.scope !85218, !noalias !85151, !noundef !14
  %i.n = zext i8 %i.m to i32, !dbg !85221         ; 2 uses
  %.not.i.not.peel.not.i.i = icmp eq i64 %3, 1, !dbg !85229
  br i1 %.not.i.not.peel.not.i.i, label %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i, label %.peel.next.i.i, !dbg !85241

.peel.next.i.i:                                   ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1, !dbg !85229
  %.sroa.5.0.peel.i.i = load i8, ptr %i.o, align 1, !dbg !85244, !alias.scope !85218, !noalias !85151, !noundef !14
  %i.p = shl nuw nsw i32 %i.n, 1, !dbg !85245
  %i.q = zext i8 %.sroa.5.0.peel.i.i to i32, !dbg !85254
  %i.r = add nuw nsw i32 %i.p, %i.q, !dbg !85256  ; 3 uses
  %i.s = icmp samesign eq i64 %3, 2, !dbg !85259
  br i1 %i.s, label %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i, label %.lr.ph.preheader.i, !dbg !85268

.lr.ph.preheader.i:                               ; preds = %.peel.next.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2, !dbg !85229 ; 2 uses
  %i.u = add nsw i64 %3, -2, !dbg !85268          ; 2 uses
  %i.v = add nsw i64 %3, -3, !dbg !85268
  %xtraiter = and i64 %i.u, 3, !dbg !85268        ; 3 uses
  %i.w = icmp ult i64 %i.v, 3, !dbg !85268
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new, !dbg !85268

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.u, -4, !dbg !85268
  br label %.lr.ph.i, !dbg !85268

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.sroa.0.1.i17.i = phi i32 [ %i.r, %.lr.ph.preheader.i.new ], [ %i.an, %.lr.ph.i ]
  %.sroa.6.1.i16.i = phi i32 [ 2, %.lr.ph.preheader.i.new ], [ %i.z, %.lr.ph.i ]
  %.sroa.0.016.i15.i = phi ptr [ %i.t, %.lr.ph.preheader.i.new ], [ %i.ai, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i15.i, i64 1, !dbg !85269
  %.sroa.5.0.i.i = load i8, ptr %.sroa.0.016.i15.i, align 1, !dbg !85244, !alias.scope !85218, !noalias !85151, !noundef !14
  %i.y = zext i8 %.sroa.5.0.i.i to i32, !dbg !85254
  %i.z = shl i32 %.sroa.6.1.i16.i, 4, !dbg !85272 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i15.i, i64 2, !dbg !85269
  %.sroa.5.0.i.i.1 = load i8, ptr %i.x, align 1, !dbg !85244, !alias.scope !85218, !noalias !85151, !noundef !14
  %i.ab = shl i32 %.sroa.0.1.i17.i, 2, !dbg !85245
  %i.ac = shl nuw nsw i32 %i.y, 1, !dbg !85245
  %i.ad = add i32 %i.ab, %i.ac, !dbg !85245
  %i.ae = zext i8 %.sroa.5.0.i.i.1 to i32, !dbg !85254
  %i.af = add i32 %i.ad, %i.ae, !dbg !85256
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i15.i, i64 3, !dbg !85269
  %.sroa.5.0.i.i.2 = load i8, ptr %i.aa, align 1, !dbg !85244, !alias.scope !85218, !noalias !85151, !noundef !14
  %i.ah = zext i8 %.sroa.5.0.i.i.2 to i32, !dbg !85254
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i15.i, i64 4, !dbg !85269 ; 2 uses
  %.sroa.5.0.i.i.3 = load i8, ptr %i.ag, align 1, !dbg !85244, !alias.scope !85218, !noalias !85151, !noundef !14
  %i.aj = shl i32 %i.af, 2, !dbg !85245
  %i.ak = shl nuw nsw i32 %i.ah, 1, !dbg !85245
  %i.al = add i32 %i.aj, %i.ak, !dbg !85245
  %i.am = zext i8 %.sroa.5.0.i.i.3 to i32, !dbg !85254
  %i.an = add i32 %i.al, %i.am, !dbg !85256       ; 3 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !85268  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !85268
  br i1 %niter.ncmp.3, label %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.loopexit.unr-lcssa, label %.lr.ph.i, !dbg !85268, !llvm.loop !85276

_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !85268
  br i1 %lcmp.mod.not, label %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i, label %.lr.ph.i.epil.preheader, !dbg !85268

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.0.1.i17.i.epil.init = phi i32 [ %i.r, %.lr.ph.preheader.i ], [ %i.an, %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.loopexit.unr-lcssa ]
  %.sroa.6.1.i16.i.epil.init = phi i32 [ 2, %.lr.ph.preheader.i ], [ %i.z, %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.loopexit.unr-lcssa ]
  %.sroa.0.016.i15.i.epil.init = phi ptr [ %i.t, %.lr.ph.preheader.i ], [ %i.ai, %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod22 = icmp ne i64 %xtraiter, 0, !dbg !85268
  tail call void @llvm.assume(i1 %lcmp.mod22), !dbg !85268
  br label %.lr.ph.i.epil, !dbg !85268

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.1.i17.i.epil = phi i32 [ %i.ar, %.lr.ph.i.epil ], [ %.sroa.0.1.i17.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.6.1.i16.i.epil = phi i32 [ %i.as, %.lr.ph.i.epil ], [ %.sroa.6.1.i16.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.0.016.i15.i.epil = phi ptr [ %i.ao, %.lr.ph.i.epil ], [ %.sroa.0.016.i15.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i15.i.epil, i64 1, !dbg !85269
  %.sroa.5.0.i.i.epil = load i8, ptr %.sroa.0.016.i15.i.epil, align 1, !dbg !85244, !alias.scope !85218, !noalias !85151, !noundef !14
  %i.ap = shl i32 %.sroa.0.1.i17.i.epil, 1, !dbg !85245
  %i.aq = zext i8 %.sroa.5.0.i.i.epil to i32, !dbg !85254
  %i.ar = add i32 %i.ap, %i.aq, !dbg !85256       ; 2 uses
  %i.as = shl i32 %.sroa.6.1.i16.i.epil, 1, !dbg !85272 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !85268 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !85268
  br i1 %epil.iter.cmp.not, label %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i, label %.lr.ph.i.epil, !dbg !85268, !llvm.loop !85278

_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i: ; preds = %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.peel.next.i.i, %bb.d, %bb.c
  %.sroa.6.0.i.i = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ 2, %.peel.next.i.i ], [ %i.z, %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph.i.epil ], !dbg !85279
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.c ], [ %i.n, %bb.d ], [ %i.r, %.peel.next.i.i ], [ %i.an, %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil ], !dbg !85280
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %1, !dbg !85281 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %3, !dbg !85287
  %i.av = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly %i.at, ptr noundef nonnull readonly %0), !dbg !85291, !noalias !85295
  %i.aw = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly %i.au, ptr noundef nonnull readonly %2), !dbg !85298 ; 6 uses
  %i.ax = icmp ugt i64 %i.aw, %i.av, !dbg !85300
  br i1 %i.ax, label %_RNvNtCslnrARR2vGZ9_6memchr6memmem4find.exit, label %bb.e, !dbg !85300

bb.e:                                             ; preds = %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i
  %i.ay = sub nsw i64 0, %i.aw, !dbg !85302
  %i.az = getelementptr inbounds i8, ptr %i.at, i64 %i.ay, !dbg !85306
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !85307
  %.not3.i.i.i = icmp eq i64 %i.aw, 0, !dbg !85311
  br i1 %.not3.i.i.i, label %.preheader.i.i.i.preheader, label %.lr.ph.i.i.i, !dbg !85311

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.010.02.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %0, %bb.e ] ; 2 uses
  %.sroa.013.01.i.i.i = phi i32 [ %i.be, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.bb = load i8, ptr %.sroa.010.02.i.i.i, align 1, !dbg !85315, !alias.scope !85320, !noalias !85295, !noundef !14
  %i.bc = shl i32 %.sroa.013.01.i.i.i, 1, !dbg !85322
  %i.bd = zext i8 %i.bb to i32, !dbg !85329
  %i.be = add i32 %i.bc, %i.bd, !dbg !85332       ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.010.02.i.i.i, i64 1, !dbg !85335 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.ba, !dbg !85311
  br i1 %i.bg, label %.lr.ph.i.i.i, label %.preheader.i.i.i.preheader, !dbg !85311

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.013.1.i.i.i.ph = phi i32 [ 0, %bb.e ], [ %i.be, %.lr.ph.i.i.i ]
  br label %.preheader.i.i.i, !dbg !85337

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %bb.h
  %.sroa.013.1.i.i.i = phi i32 [ %i.br, %bb.h ], [ %.sroa.013.1.i.i.i.ph, %.preheader.i.i.i.preheader ], !dbg !85339 ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.bs, %bb.h ], [ %0, %.preheader.i.i.i.preheader ] ; 6 uses
  %i.bh = icmp eq i32 %.sroa.0.0.i.i, %.sroa.013.1.i.i.i, !dbg !85340
  br i1 %i.bh, label %bb.g, label %bb.f, !dbg !85337, !prof !204

bb.f:                                             ; preds = %bb.g, %.preheader.i.i.i
  %.not.i.i.i = icmp ult ptr %.sroa.0.0.i.i.i, %i.az, !dbg !85344
  br i1 %.not.i.i.i, label %bb.h, label %_RNvNtCslnrARR2vGZ9_6memchr6memmem4find.exit, !dbg !85344

bb.g:                                             ; preds = %.preheader.i.i.i
  %i.bi = tail call noundef zeroext i1 @_RNvNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarp12is_equal_raw(ptr noundef nonnull %.sroa.0.0.i.i.i, ptr noundef nonnull readonly %2, i64 noundef %i.aw) #51, !dbg !85345
  br i1 %i.bi, label %bb.i, label %bb.f, !dbg !85345

bb.h:                                             ; preds = %bb.f
  %i.bj = load i8, ptr %.sroa.0.0.i.i.i, align 1, !dbg !85346, !alias.scope !85320, !noalias !85295, !noundef !14
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.aw, !dbg !85350
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !85352, !alias.scope !85320, !noalias !85295, !noundef !14
  %i.bm = zext i8 %i.bj to i32, !dbg !85356
  %i.bn = mul i32 %.sroa.6.0.i.i, %i.bm, !dbg !85363
  %i.bo = sub i32 %.sroa.013.1.i.i.i, %i.bn, !dbg !85366
  %i.bp = shl i32 %i.bo, 1, !dbg !85369
  %i.bq = zext i8 %i.bl to i32, !dbg !85375
  %i.br = add i32 %i.bp, %i.bq, !dbg !85377
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1, !dbg !85379
  br label %.preheader.i.i.i, !dbg !85381

bb.i:                                             ; preds = %bb.g
  %i.bt = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %.sroa.0.0.i.i.i, ptr noundef nonnull readonly %0), !dbg !85382 ; 0 uses
  br label %_RNvNtCslnrARR2vGZ9_6memchr6memmem4find.exit, !dbg !85384

bb.j:                                             ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 232, !dbg !85385
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !85385, !noalias !85164, !nonnull !14, !noundef !14
  %i.bw = invoke { i64, i64 } %i.bv(ptr noalias noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(256) %i.c, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
          to label %bb.m unwind label %bb.k, !dbg !85385

bb.k:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = icmp eq i64 %i.g, 0, !dbg !85386
  %i.bz = icmp eq i64 %i.k, 0
  %or.cond.i = or i1 %i.by, %i.bz, !dbg !85386
  br i1 %or.cond.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit.i, label %bb.l, !dbg !85386

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef 1) #56, !dbg !85393, !noalias !85404
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !85411

bb.m:                                             ; preds = %bb.j
  %i.ca = extractvalue { i64, i64 } %i.bw, 0, !dbg !85385
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !85412
  br label %bb.n, !dbg !85416

bb.n:                                             ; preds = %bb.m, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.cb, %bb.m ], [ false, %bb.b ], !dbg !85417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85418, !noalias !85164
  %i.cc = icmp eq i64 %i.g, 0, !dbg !85419
  %i.cd = icmp eq i64 %i.k, 0
  %or.cond12.i = or i1 %i.cc, %i.cd, !dbg !85419
  br i1 %or.cond12.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit11.i, label %bb.o, !dbg !85419

bb.o:                                             ; preds = %bb.n
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef 1) #56, !dbg !85423, !noalias !85430
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit11.i, !dbg !85437

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit11.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85438, !noalias !85164
  br label %_RNvNtCslnrARR2vGZ9_6memchr6memmem4find.exit, !dbg !85439

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.bx, !dbg !85440

_RNvNtCslnrARR2vGZ9_6memchr6memmem4find.exit:     ; preds = %bb.f, %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i, %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit11.i
  %.sroa.0.0.i8.pn.i = phi i1 [ %.sroa.0.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslnrARR2vGZ9_6memchr6memmem6FinderECskY9G75ZWc4U_11polars_expr.exit11.i ], [ true, %bb.i ], [ false, %_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.i8.pn.i, !dbg !85441
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_0CskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2, ptr noalias noundef readonly captures(address, read_provenance) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85442 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %.not = icmp eq ptr %1, null, !dbg !85447
  %.not15 = icmp eq ptr %3, null
  %or.cond = or i1 %.not, %.not15, !dbg !85448
  br i1 %or.cond, label %bb.b, label %bb.c, !dbg !85448

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85449
  store i64 -9223372036854775808, ptr %i.h, align 8, !dbg !85449
  store i64 18, ptr %0, align 8, !dbg !85449
  br label %bb.m, !dbg !85450

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !85451
  call void @_RNvMs0_CsdnXzjeJpNm1_12jsonpath_libNtB5_12PathCompiled7compile(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !dbg !85451
  %i.i = load i64, ptr %i.g, align 8, !dbg !85453, !range !85456, !noundef !14
  %.not16 = icmp eq i64 %i.i, 4, !dbg !85453
  br i1 %.not16, label %bb.g, label %bb.d, !dbg !85457

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !85458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !85460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !85461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !85461, !noalias !85465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !85469, !noalias !85465
  store ptr %i.f, ptr %i.b, align 8, !dbg !85469, !noalias !85465
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !85469
  store ptr @_RNvXs0_NtCsdnXzjeJpNm1_12jsonpath_lib6selectNtB5_13JsonPathErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !85469, !noalias !85465
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @114, ptr noundef nonnull %i.b)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.e, !dbg !85472, !noalias !85478

bb.e:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit.i, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsdnXzjeJpNm1_12jsonpath_lib6select13JsonPathErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #52
          to label %common.resume unwind label %bb.f, !dbg !85461, !noalias !85478

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85461, !noalias !85465
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116)
          to label %_RNCNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBb_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9json_path16Utf8JsonPathImpl15json_path_matchs0_00CskY9G75ZWc4U_11polars_expr.exit unwind label %bb.e, !dbg !85479, !noalias !85478

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !85483, !noalias !85478
  unreachable, !dbg !85483

common.resume:                                    ; preds = %bb.h, %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.n, %bb.i ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !85484
end_hunk_7
begin_hunk_8_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvBU_17forward_fill_null0NCB28_s_0E00INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_:bb.a
  %i.m = load ptr, ptr %3, align 8, !dbg !143845, !alias.scope !143825, !noalias !143822
  %.sroa.03.0.i = select i1 %i.l, ptr %3, ptr %i.m, !dbg !143845 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !143846
  %i.o = load i32, ptr %i.n, align 8, !dbg !143846, !alias.scope !143825, !noalias !143822, !noundef !14 ; 2 uses
  %i.p = zext i32 %i.o to i64, !dbg !143846       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i) ], !dbg !143847
  %.idx.i = shl nuw nsw i64 %i.p, 2, !dbg !143856
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 %.idx.i, !dbg !143856 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !143827 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val1, i64 32, i1 false), !dbg !143859, !noalias !143833
  store ptr %.sroa.03.0.i, ptr %i.g, align 8, !dbg !143827, !noalias !143833
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !143827
  store ptr %i.q, ptr %i.s, align 8, !dbg !143827, !noalias !143833
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !143827
  store i64 %i.p, ptr %i.t, align 8, !dbg !143827, !noalias !143833
  %.val.i = load ptr, ptr %.val, align 8, !dbg !143827, !noalias !143833 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143860), !dbg !143827
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143863), !dbg !143866
  %i.u = icmp eq i32 %i.o, 0, !dbg !143875
  br i1 %i.u, label %.loopexit.i.i, label %.lr.ph.i.i.i, !dbg !143882

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !143883, !noalias !143884, !noundef !14
  %i.x = load ptr, ptr %i.r, align 8, !alias.scope !143883, !noalias !143884, !nonnull !14, !noundef !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !143883, !noalias !143884, !noundef !14
  br label %bb.b, !dbg !143882

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null00E0E0B2R_.exit.i.i.i, %.lr.ph.i.i.i
  %i.aa = phi ptr [ %.sroa.03.0.i, %.lr.ph.i.i.i ], [ %i.am, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null00E0E0B2R_.exit.i.i.i ] ; 2 uses
  %i.ab = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.an, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null00E0E0B2R_.exit.i.i.i ] ; 2 uses
  %.val8.i.i.i = load i32, ptr %i.aa, align 4, !dbg !143888, !noalias !143889, !noundef !14
  %i.ac = zext i32 %.val8.i.i.i to i64, !dbg !143890
  %i.ad = add i64 %i.w, %i.ac, !dbg !143901       ; 2 uses
  %i.ae = lshr i64 %i.ad, 3, !dbg !143901         ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.z, !dbg !143904
  tail call void @llvm.assume(i1 %i.af), !dbg !143911
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ae, !dbg !143912
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !143913, !noalias !143889, !noundef !14
  %i.ai = trunc i64 %i.ad to i8, !dbg !143914
  %i.aj = and i8 %i.ai, 7, !dbg !143914
  %i.ak = lshr i8 %i.ah, %i.aj, !dbg !143914
  %i.al = trunc i8 %i.ak to i1, !dbg !143914
  br i1 %i.al, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null00E0E0B2R_.exit.i.i.i, !dbg !143916

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null00E0E0B2R_.exit.i.i.i: ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 4, !dbg !143917 ; 2 uses
  %i.an = add nuw nsw i64 %i.ab, 1, !dbg !143919
  %i.ao = icmp eq ptr %i.am, %i.q, !dbg !143875
  br i1 %i.ao, label %.loopexit.i.i, label %bb.b, !dbg !143882

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !143920, !noalias !143922
  call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, i64 noundef range(i64 0, 4294967296) %i.p), !dbg !143923, !noalias !143924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !143925, !noalias !143922
  store ptr %.sroa.03.0.i, ptr %i.d, align 16, !dbg !143927, !noalias !143922
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !143927 ; 2 uses
  store ptr %i.q, ptr %i.ap, align 8, !dbg !143927, !noalias !143922
  invoke void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendmE6extendINtNtNtB15_8adapters4take4TakeQINtNtB25_6copied6CopiedINtNtNtB17_5slice4iter4ItermEEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.ab)
          to label %bb.e unwind label %bb.d, !dbg !143928, !noalias !143924

.loopexit.i.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null00E0E0B2R_.exit.i.i.i, %bb.a
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItermEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull %.sroa.03.0.i, ptr noundef nonnull %i.q), !dbg !143930, !noalias !143822
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null0B7_.exit.i, !dbg !143930

bb.d:                                             ; preds = %bb.h, %.noexc.i.i, %bb.g, %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.k, !dbg !143933, !noalias !143935

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !143936, !noalias !143922
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ar = load i32, ptr %.val.i, align 4, !dbg !143937, !noalias !143924, !noundef !14
  store i32 %i.ar, ptr %i.c, align 4, !dbg !143937, !noalias !143922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !143938, !noalias !143922
  %i.as = load ptr, ptr %i.d, align 16, !dbg !143940, !noalias !143922, !nonnull !14, !noundef !14 ; 3 uses
  %i.at = load ptr, ptr %i.ap, align 8, !dbg !143945, !noalias !143922, !nonnull !14, !noundef !14
  %i.au = icmp eq ptr %i.as, %i.at, !dbg !143947
  br i1 %i.au, label %bb.h, label %bb.f, !dbg !143951, !prof !204

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4, !dbg !143952
  store ptr %i.av, ptr %i.d, align 16, !dbg !143955, !noalias !143922
  %i.aw = load i32, ptr %i.as, align 4, !dbg !143956, !noalias !143924, !noundef !14 ; 2 uses
  store i32 %i.aw, ptr %i.b, align 4, !dbg !143959, !noalias !143922
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !143962 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !dbg !143962, !alias.scope !143966, !noalias !143922, !noundef !14 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !143969 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !dbg !143969, !range !111419, !alias.scope !143966, !noalias !143922, !noundef !14 ; 2 uses
  %i.bb = icmp eq i32 %i.ay, %i.ba, !dbg !143962
  br i1 %i.bb, label %bb.g, label %.noexc.i.i, !dbg !143962, !prof !204

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef 1)
          to label %.noexcthread-pre-split.i.i unwind label %bb.d, !dbg !143970, !noalias !143924

.noexcthread-pre-split.i.i:                       ; preds = %bb.g
  %.pr.i.i = load i32, ptr %i.az, align 4, !dbg !143971, !alias.scope !143966, !noalias !143922
  %.pre.i.i = load i32, ptr %i.ax, align 8, !dbg !143978, !alias.scope !143966, !noalias !143922
  br label %.noexc.i.i, !dbg !143971

.noexc.i.i:                                       ; preds = %.noexcthread-pre-split.i.i, %bb.f
  %i.bc = phi i32 [ %.pre.i.i, %.noexcthread-pre-split.i.i ], [ %i.ay, %bb.f ], !dbg !143978
  %i.bd = phi i32 [ %.pr.i.i, %.noexcthread-pre-split.i.i ], [ %i.ba, %bb.f ], !dbg !143971
  %i.be = icmp eq i32 %i.bd, 1, !dbg !143979
  %i.bf = load ptr, ptr %i.e, align 8, !noalias !143922
  %spec.select.i.i = select i1 %i.be, ptr %i.e, ptr %i.bf, !dbg !143979
  %i.bg = zext i32 %i.bc to i64, !dbg !143978
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.i, i64 %i.bg, !dbg !143980
  store i32 %i.aw, ptr %i.bh, align 4, !dbg !143983, !noalias !143924
  %i.bi = load i32, ptr %i.ax, align 8, !dbg !143988, !alias.scope !143966, !noalias !143922, !noundef !14
  %i.bj = add i32 %i.bi, 1, !dbg !143988
  store i32 %i.bj, ptr %i.ax, align 8, !dbg !143988, !alias.scope !143966, !noalias !143922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !143989, !noalias !143922
  %i.bk = load <2 x ptr>, ptr %i.d, align 16, !dbg !143989, !noalias !143922
  store <2 x ptr> %i.bk, ptr %i.a, align 16, !dbg !143990, !noalias !143922
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !143990
  store ptr %i.r, ptr %i.bl, align 16, !dbg !143990, !noalias !143922
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !143990
  store ptr %i.c, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !dbg !143990, !noalias !143922
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !143990
  store ptr %.val.i, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !dbg !143990, !noalias !143922
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !143990
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !143990, !noalias !143922
  invoke void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendmE6extendINtNtNtB15_8adapters3map3MapINtNtB25_6copied6CopiedINtNtNtB17_5slice4iter4ItermEENCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null0s_0EEB3t_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.i unwind label %bb.d, !dbg !143995, !noalias !143935

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #55
          to label %bb.j unwind label %bb.d, !dbg !143996, !noalias !143924

bb.i:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !143997, !noalias !143922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !143998, !noalias !143833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !143999, !noalias !143922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !144000, !noalias !143922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !144001, !noalias !143922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !144002, !noalias !143922
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null0B7_.exit.i, !dbg !144003

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !144004, !noalias !143935
  unreachable, !dbg !144004

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.aq, !dbg !144004

_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null0B7_.exit.i: ; preds = %bb.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !144005, !noalias !143833
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !144006
  %i.bo = load i32, ptr %i.bn, align 8, !dbg !144006, !noalias !143833, !noundef !14
  %.not.i = icmp eq i32 %i.bo, 0, !dbg !144013
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_17forward_fill_null0NCB1k_s_0E00Ba_.exit, label %bb.l, !dbg !144013

bb.l:                                             ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null0B7_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 12, !dbg !144017
  %i.bq = load i32, ptr %i.bp, align 4, !dbg !144017, !range !111419, !noalias !143833, !noundef !14
  %i.br = icmp eq i32 %i.bq, 1, !dbg !144022
  %i.bs = load ptr, ptr %i.f, align 8, !dbg !144022, !noalias !143833
  %.sroa.04.0.i = select i1 %i.br, ptr %i.f, ptr %i.bs, !dbg !144022
  %i.bt = load i32, ptr %.sroa.04.0.i, align 4, !dbg !144023, !noalias !143822, !noundef !14
  br label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_17forward_fill_null0NCB1k_s_0E00Ba_.exit, !dbg !144026

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_17forward_fill_null0NCB1k_s_0E00Ba_.exit: ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null0B7_.exit.i, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.bt, %bb.l ], [ %2, %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_null0B7_.exit.i ], !dbg !144029
  store i32 %.sroa.0.0.i, ptr %0, align 8, !dbg !144030, !alias.scope !143822, !noalias !143825
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !dbg !144030, !noalias !143825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !144031
  ret void, !dbg !144032
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvBU_17forward_fill_null0NCB28_s_0E0s_0INtB6_5FnMutTRAmj2_EE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !144033 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 12 uses
  %i.f = alloca [16 x i8], align 8                ; 9 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = load ptr, ptr %1, align 8, !dbg !144034, !nonnull !14, !align !4162, !noundef !14 ; 2 uses
  %.val = load ptr, ptr %i.h, align 8, !dbg !144035, !nonnull !14, !align !4162, !noundef !14
  %i.i = getelementptr i8, ptr %i.h, i64 8, !dbg !144035
  %.val1 = load ptr, ptr %i.i, align 8, !dbg !144035, !nonnull !14, !align !4162, !noundef !14
  %.val2 = load i32, ptr %2, align 4, !dbg !144035, !noundef !14 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !144035
  %.val3 = load i32, ptr %i.j, align 4, !dbg !144035, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144036), !dbg !144035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !144039, !noalias !144036
  %i.k = add i32 %.val3, %.val2, !dbg !144043     ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val1, i64 32, i1 false), !dbg !144044, !noalias !144036
  %i.l = zext i32 %.val3 to i64, !dbg !144045     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !144039
  store i32 %.val2, ptr %i.m, align 8, !dbg !144039, !noalias !144036
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 36, !dbg !144039
  store i32 %i.k, ptr %i.n, align 4, !dbg !144039, !noalias !144036
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !144039
  store i64 %i.l, ptr %i.o, align 8, !dbg !144039, !noalias !144036
  %.val.i = load ptr, ptr %.val, align 8, !dbg !144039, !noalias !144036 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144046), !dbg !144039
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144049), !dbg !144052
  %i.p = icmp ult i32 %.val2, %i.k, !dbg !144058
  br i1 %i.p, label %.lr.ph.i.i.i, label %.loopexit.i.i, !dbg !144069

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !144070, !noalias !144071, !noundef !14
  %i.s = load ptr, ptr %i.g, align 8, !alias.scope !144070, !noalias !144071, !nonnull !14, !noundef !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !144070, !noalias !144071, !noundef !14
  %i.v = zext i32 %.val2 to i64, !dbg !144069
  br label %bb.b, !dbg !144069

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_00E0B1r_.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_00E0B1r_.exit.i.i.i ] ; 2 uses
  %i.w = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ag, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_00E0B1r_.exit.i.i.i ] ; 2 uses
  %i.x = add i64 %indvars.iv.i.i.i, %i.r, !dbg !144075 ; 2 uses
  %i.y = lshr i64 %i.x, 3, !dbg !144075           ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.u, !dbg !144083
  tail call void @llvm.assume(i1 %i.z), !dbg !144090
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y, !dbg !144091
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !144092, !noalias !144093, !noundef !14
  %i.ac = trunc i64 %i.x to i8, !dbg !144094
  %i.ad = and i8 %i.ac, 7, !dbg !144094
  %i.ae = lshr i8 %i.ab, %i.ad, !dbg !144094
  %i.af = trunc i8 %i.ae to i1, !dbg !144094
  br i1 %i.af, label %bb.c, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_00E0B1r_.exit.i.i.i, !dbg !144096

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_00E0B1r_.exit.i.i.i: ; preds = %bb.b
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1, !dbg !144097
  %i.ag = add nuw nsw i64 %i.w, 1, !dbg !144104   ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.ag, %i.l, !dbg !144058
  br i1 %exitcond.i.i, label %.loopexit.i.i, label %bb.b, !dbg !144069

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !144105, !noalias !144107
  call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, i64 noundef range(i64 0, 4294967296) %i.l), !dbg !144108, !noalias !144107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !144109, !noalias !144107
  store i32 %.val2, ptr %i.d, align 8, !dbg !144111, !noalias !144107
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !144111 ; 2 uses
  store i32 %i.k, ptr %i.ah, align 4, !dbg !144111, !noalias !144107
  invoke void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendmE6extendINtNtNtB15_8adapters4take4TakeQINtNtNtB17_3ops5range5RangemEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.d, i64 noundef %i.w)
          to label %bb.e unwind label %bb.d, !dbg !144112, !noalias !144107

.loopexit.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_00E0B1r_.exit.i.i.i, %bb.a
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB17_3ops5range5RangemEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, i32 noundef %.val2, i32 noundef %i.k), !dbg !144114, !noalias !144036
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_0B7_.exit.i, !dbg !144114

bb.d:                                             ; preds = %.noexc.i.i, %bb.h, %bb.f, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.k, !dbg !144117, !noalias !144119

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !144120, !noalias !144107
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.aj = load i32, ptr %.val.i, align 4, !dbg !144121, !noalias !144107, !noundef !14
  store i32 %i.aj, ptr %i.c, align 4, !dbg !144121, !noalias !144107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !144122, !noalias !144107
  %i.ak = load i32, ptr %i.d, align 8, !dbg !144124, !noalias !144107, !noundef !14 ; 4 uses
  %i.al = load i32, ptr %i.ah, align 4, !dbg !144131, !noalias !144107, !noundef !14
  %i.am = icmp ult i32 %i.ak, %i.al, !dbg !144124
  br i1 %i.am, label %bb.g, label %bb.f, !dbg !144132, !prof !3142

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #55
          to label %bb.i unwind label %bb.d, !dbg !144133, !noalias !144107

bb.g:                                             ; preds = %bb.e
  %i.an = add nuw i32 %i.ak, 1, !dbg !144136
  store i32 %i.an, ptr %i.d, align 8, !dbg !144142, !noalias !144107
  store i32 %i.ak, ptr %i.b, align 4, !dbg !144143, !noalias !144107
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !144144 ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 8, !dbg !144144, !alias.scope !144147, !noalias !144107, !noundef !14 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !144150 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !dbg !144150, !range !111419, !alias.scope !144147, !noalias !144107, !noundef !14 ; 2 uses
  %i.as = icmp eq i32 %i.ap, %i.ar, !dbg !144144
  br i1 %i.as, label %bb.h, label %.noexc.i.i, !dbg !144144, !prof !204

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef 1)
          to label %.noexcthread-pre-split.i.i unwind label %bb.d, !dbg !144151, !noalias !144107

.noexcthread-pre-split.i.i:                       ; preds = %bb.h
  %.pr.i.i = load i32, ptr %i.aq, align 4, !dbg !144152, !alias.scope !144147, !noalias !144107
  %.pre.i.i = load i32, ptr %i.ao, align 8, !dbg !144156, !alias.scope !144147, !noalias !144107
  br label %.noexc.i.i, !dbg !144152

.noexc.i.i:                                       ; preds = %.noexcthread-pre-split.i.i, %bb.g
  %i.at = phi i32 [ %.pre.i.i, %.noexcthread-pre-split.i.i ], [ %i.ap, %bb.g ], !dbg !144156
  %i.au = phi i32 [ %.pr.i.i, %.noexcthread-pre-split.i.i ], [ %i.ar, %bb.g ], !dbg !144152
  %i.av = icmp eq i32 %i.au, 1, !dbg !144157
  %i.aw = load ptr, ptr %i.e, align 8, !noalias !144107
  %spec.select.i.i = select i1 %i.av, ptr %i.e, ptr %i.aw, !dbg !144157
  %i.ax = zext i32 %i.at to i64, !dbg !144156
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.i, i64 %i.ax, !dbg !144158
  store i32 %i.ak, ptr %i.ay, align 4, !dbg !144160, !noalias !144107
  %i.az = load i32, ptr %i.ao, align 8, !dbg !144163, !alias.scope !144147, !noalias !144107, !noundef !14
  %i.ba = add i32 %i.az, 1, !dbg !144163
  store i32 %i.ba, ptr %i.ao, align 8, !dbg !144163, !alias.scope !144147, !noalias !144107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144164, !noalias !144107
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !144165
  %i.bc = load <2 x i32>, ptr %i.d, align 8, !dbg !144164, !noalias !144107
  store <2 x i32> %i.bc, ptr %i.bb, align 8, !dbg !144165, !noalias !144107
  store ptr %i.g, ptr %i.a, align 8, !dbg !144165, !noalias !144107
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !144165
  store ptr %i.c, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !dbg !144165, !noalias !144107
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !144165
  store ptr %.val.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !144165, !noalias !144107
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !144165
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !144165, !noalias !144107
  invoke void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendmE6extendINtNtNtB15_8adapters3map3MapINtNtNtB17_3ops5range5RangemENCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_0s_0EEB35_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.j unwind label %bb.d, !dbg !144170, !noalias !144119

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144171, !noalias !144107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !144172, !noalias !144036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !144173, !noalias !144107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !144174, !noalias !144107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !144175, !noalias !144107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !144176, !noalias !144107
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_0B7_.exit.i, !dbg !144177

bb.k:                                             ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !144178, !noalias !144119
  unreachable, !dbg !144178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.ai, !dbg !144178

_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_0B7_.exit.i: ; preds = %bb.j, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !144179, !noalias !144036
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !144180
  %i.bf = load i32, ptr %i.be, align 8, !dbg !144180, !noalias !144036, !noundef !14
  %.not.i = icmp eq i32 %i.bf, 0, !dbg !144188
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_17forward_fill_null0NCB1k_s_0E0s_0Ba_.exit, label %bb.l, !dbg !144188

bb.l:                                             ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_0B7_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 12, !dbg !144192
  %i.bh = load i32, ptr %i.bg, align 4, !dbg !144192, !range !111419, !noalias !144036, !noundef !14
  %i.bi = icmp eq i32 %i.bh, 1, !dbg !144197
  %i.bj = load ptr, ptr %i.f, align 8, !dbg !144197, !noalias !144036
  %.sroa.05.0.i = select i1 %i.bi, ptr %i.f, ptr %i.bj, !dbg !144197
  %i.bk = load i32, ptr %.sroa.05.0.i, align 4, !dbg !144198, !noalias !144036, !noundef !14
  br label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_17forward_fill_null0NCB1k_s_0E0s_0Ba_.exit, !dbg !144201

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_17forward_fill_null0NCB1k_s_0E0s_0Ba_.exit: ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_0B7_.exit.i, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.bk, %bb.l ], [ %.val2, %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch17forward_fill_nulls_0B7_.exit.i ], !dbg !144204
  store i32 %.sroa.0.0.i, ptr %0, align 8, !dbg !144205, !alias.scope !144036
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !dbg !144205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !144206
  ret void, !dbg !144207
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvBU_18backward_fill_null0NCB28_s_0E00INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !144208 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !144209, !nonnull !14, !align !4162, !noundef !14 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !dbg !144210, !nonnull !14, !align !4162, !noundef !14
  %i.d = getelementptr i8, ptr %i.c, i64 8, !dbg !144210
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !144210, !nonnull !14, !align !4162, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144211), !dbg !144210
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144214), !dbg !144210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12, !dbg !144216
  %i.f = load i32, ptr %i.e, align 4, !dbg !144216, !range !111419, !alias.scope !144214, !noalias !144211, !noundef !14
  %i.g = icmp eq i32 %i.f, 1, !dbg !144230
  %i.h = load ptr, ptr %3, align 8, !dbg !144230, !alias.scope !144214, !noalias !144211
  %.sroa.03.0.i = select i1 %i.g, ptr %3, ptr %i.h, !dbg !144230 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !144231
  %i.j = load i32, ptr %i.i, align 8, !dbg !144231, !alias.scope !144214, !noalias !144211, !noundef !14 ; 2 uses
  %i.k = zext i32 %i.j to i64, !dbg !144231       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i) ], !dbg !144232
  %.idx.i = shl nuw nsw i64 %i.k, 2, !dbg !144241
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 %.idx.i, !dbg !144241 ; 3 uses
  %.sroa.02.0.copyload.i = load ptr, ptr %.val1, align 8, !dbg !144244, !noalias !144245 ; 3 uses
  %.sroa.43.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !144244
  %.sroa.43.0.copyload.i = load i64, ptr %.sroa.43.0..8.val.sroa_idx.i, align 8, !dbg !144244, !noalias !144245 ; 2 uses
  %.sroa.5.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !144244
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..8.val.sroa_idx.i, align 8, !dbg !144244, !noalias !144245 ; 2 uses
  %.val.i = load ptr, ptr %.val, align 8, !dbg !144246, !noalias !144245 ; 3 uses
  %i.m = icmp eq i32 %i.j, 0, !dbg !144247
  br i1 %i.m, label %.loopexit.i.i, label %.lr.ph.i.i.i, !dbg !144264

.lr.ph.i.i.i:                                     ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload.i) ]
  br label %bb.b, !dbg !144264

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null00E0E0B2R_.exit.i.i.i, %.lr.ph.i.i.i
  %i.n = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.p, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null00E0E0B2R_.exit.i.i.i ]
  %i.o = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.aa, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null00E0E0B2R_.exit.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4, !dbg !144265 ; 3 uses
  %.val8.i.i.i = load i32, ptr %i.p, align 4, !dbg !144270, !noalias !144271, !noundef !14
  %i.q = zext i32 %.val8.i.i.i to i64, !dbg !144279
  %i.r = add i64 %.sroa.5.0.copyload.i, %i.q, !dbg !144288 ; 2 uses
  %i.s = lshr i64 %i.r, 3, !dbg !144288           ; 2 uses
  %i.t = icmp ult i64 %i.s, %.sroa.43.0.copyload.i, !dbg !144291
  tail call void @llvm.assume(i1 %i.t), !dbg !144298
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 %i.s, !dbg !144299
  %i.v = load i8, ptr %i.u, align 1, !dbg !144300, !noalias !144301, !noundef !14
  %i.w = trunc i64 %i.r to i8, !dbg !144302
  %i.x = and i8 %i.w, 7, !dbg !144302
  %i.y = lshr i8 %i.v, %i.x, !dbg !144302
  %i.z = trunc i8 %i.y to i1, !dbg !144302
  br i1 %i.z, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null00E0E0B2R_.exit.i.i.i, !dbg !144304

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null00E0E0B2R_.exit.i.i.i: ; preds = %bb.b
  %i.aa = add nuw nsw i64 %i.o, 1, !dbg !144305
  %i.ab = icmp eq ptr %.sroa.03.0.i, %i.p, !dbg !144247
  br i1 %i.ab, label %.loopexit.i.i, label %bb.b, !dbg !144264

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144306, !noalias !144308
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItermEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %.sroa.03.0.i, ptr noundef nonnull %i.l), !dbg !144309, !noalias !144310
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ac = load i32, ptr %.val.i, align 4, !dbg !144311, !noalias !144310, !noundef !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !144313
  %i.ae = load i32, ptr %i.ad, align 4, !dbg !144313, !range !111419, !noalias !144308, !noundef !14
  %i.af = icmp eq i32 %i.ae, 1, !dbg !144325
  %i.ag = load ptr, ptr %i.a, align 8, !dbg !144325, !noalias !144308
  %.sroa.011.0.i.i = select i1 %i.af, ptr %i.a, ptr %i.ag, !dbg !144325 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !144326
  %i.ai = load i32, ptr %i.ah, align 8, !dbg !144326, !noalias !144308, !noundef !14
  %i.aj = zext i32 %i.ai to i64, !dbg !144326     ; 4 uses
  %i.ak = sub nsw i64 %i.k, %i.o, !dbg !144327    ; 4 uses
  %i.al = add nsw i64 %i.ak, -1, !dbg !144327     ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.aj, !dbg !144328
  br i1 %i.am, label %bb.d, label %bb.e, !dbg !144328

.loopexit.i.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null00E0E0B2R_.exit.i.i.i, %bb.a
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItermEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %.sroa.03.0.i, ptr noundef nonnull %i.l), !dbg !144329, !noalias !144211
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i, !dbg !144329

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp samesign ugt i64 %i.ak, %i.aj
  br i1 %.not.i.i, label %bb.h, label %bb.i, !dbg !144332, !prof !83654

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #55
          to label %bb.g unwind label %bb.f, !dbg !144328, !noalias !144310

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.o, !dbg !144343, !noalias !144310

bb.g:                                             ; preds = %bb.h, %bb.e
  unreachable

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ak, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #55
          to label %bb.g unwind label %bb.f, !dbg !144345, !noalias !144310

bb.i:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.0.i.i) ], !dbg !144346
  %i.ao = icmp eq i64 %i.o, %i.k, !dbg !144355
  br i1 %i.ao, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !144367

.lr.ph.i.i:                                       ; preds = %bb.i
  %.idx.i.i = shl nuw nsw i64 %i.ak, 2, !dbg !144368
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 %.idx.i.i, !dbg !144368
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.0.i.i, i64 %i.al, !dbg !144328
  %i.ar = load i32, ptr %i.aq, align 4, !dbg !144328, !noalias !144310, !noundef !14
  br label %bb.j, !dbg !144367

bb.j:                                             ; preds = %bb.m, %.lr.ph.i.i
  %.sroa.42.07.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.as, %bb.m ]
  %.sroa.06.06.i.i = phi i32 [ %i.ac, %.lr.ph.i.i ], [ %.sroa.06.1.i.i, %bb.m ] ; 2 uses
  %.sroa.08.05.i.i = phi i32 [ %i.ar, %.lr.ph.i.i ], [ %.sroa.08.1.i.i, %bb.m ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.42.07.i.i, i64 -4, !dbg !144371 ; 4 uses
  %i.at = load i32, ptr %i.as, align 4, !dbg !144382, !noalias !144310, !noundef !14 ; 2 uses
  %i.au = zext i32 %i.at to i64, !dbg !144382
  %i.av = add i64 %.sroa.5.0.copyload.i, %i.au, !dbg !144384 ; 2 uses
  %i.aw = lshr i64 %i.av, 3, !dbg !144384         ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.sroa.43.0.copyload.i, !dbg !144387
  call void @llvm.assume(i1 %i.ax), !dbg !144394
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 %i.aw, !dbg !144395
  %i.az = load i8, ptr %i.ay, align 1, !dbg !144396, !noalias !144310, !noundef !14
  %i.ba = trunc i64 %i.av to i8, !dbg !144397
  %i.bb = and i8 %i.ba, 7, !dbg !144397
  %i.bc = shl nuw i8 1, %i.bb, !dbg !144399
  %i.bd = and i8 %i.bc, %i.az, !dbg !144399
  %.not21.i.i = icmp eq i8 %i.bd, 0, !dbg !144399
  br i1 %.not21.i.i, label %bb.l, label %bb.k, !dbg !144399

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !144400, !noalias !144245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144401, !noalias !144308
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i, !dbg !144402

bb.k:                                             ; preds = %bb.j
  %i.be = load i32, ptr %.val.i, align 4, !dbg !144403, !noalias !144310, !noundef !14
  br label %bb.m, !dbg !144404

bb.l:                                             ; preds = %bb.j
  %i.bf = icmp eq i32 %.sroa.06.06.i.i, 0, !dbg !144405
  br i1 %i.bf, label %bb.m, label %bb.n, !dbg !144405

bb.m:                                             ; preds = %bb.n, %bb.l, %bb.k
  %.sroa.08.1.i.i = phi i32 [ %i.at, %bb.k ], [ %.sroa.08.05.i.i, %bb.l ], [ %.sroa.08.05.i.i, %bb.n ], !dbg !144406
  %.sroa.06.1.i.i = phi i32 [ %i.be, %bb.k ], [ 0, %bb.l ], [ %i.bh, %bb.n ], !dbg !144407
  %i.bg = icmp eq ptr %.sroa.011.0.i.i, %i.as, !dbg !144355
  br i1 %i.bg, label %._crit_edge.i.i, label %bb.j, !dbg !144367

bb.n:                                             ; preds = %bb.l
  %i.bh = add i32 %.sroa.06.06.i.i, -1, !dbg !144408
  store i32 %.sroa.08.05.i.i, ptr %i.as, align 4, !dbg !144409, !noalias !144310
  br label %bb.m, !dbg !144410

bb.o:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !144411, !noalias !144310
  unreachable, !dbg !144411

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.an, !dbg !144411

_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i: ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !144412
  %i.bk = load i32, ptr %i.bj, align 8, !dbg !144412, !noalias !144245, !noundef !14
  %.not.i = icmp eq i32 %i.bk, 0, !dbg !144419
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E00Ba_.exit, label %bb.p, !dbg !144419

bb.p:                                             ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !144423
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !144423, !range !111419, !noalias !144245, !noundef !14
  %i.bn = icmp eq i32 %i.bm, 1, !dbg !144428
  %i.bo = load ptr, ptr %i.b, align 8, !dbg !144428, !noalias !144245
  %.sroa.04.0.i = select i1 %i.bn, ptr %i.b, ptr %i.bo, !dbg !144428
  %i.bp = load i32, ptr %.sroa.04.0.i, align 4, !dbg !144429, !noalias !144211, !noundef !14
  br label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E00Ba_.exit, !dbg !144432

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E00Ba_.exit: ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i, %bb.p
  %.sroa.0.0.i = phi i32 [ %i.bp, %bb.p ], [ %2, %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_null0B7_.exit.i ], !dbg !144435
  store i32 %.sroa.0.0.i, ptr %0, align 8, !dbg !144436, !alias.scope !144211, !noalias !144214
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !144436, !noalias !144214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !144437
  ret void, !dbg !144438
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvBU_18backward_fill_null0NCB28_s_0E0s_0INtB6_5FnMutTRAmj2_EE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !144439 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !144440, !nonnull !14, !align !4162, !noundef !14 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !dbg !144441, !nonnull !14, !align !4162, !noundef !14
  %i.d = getelementptr i8, ptr %i.c, i64 8, !dbg !144441
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !144441, !nonnull !14, !align !4162, !noundef !14 ; 3 uses
  %.val2 = load i32, ptr %2, align 4, !dbg !144441, !noundef !14 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !144441
  %.val3 = load i32, ptr %i.e, align 4, !dbg !144441, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144442), !dbg !144441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i32 %.val3, %.val2, !dbg !144445     ; 4 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %.val1, align 8, !dbg !144449, !noalias !144442 ; 3 uses
  %.sroa.45.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !144449
  %.sroa.45.0.copyload.i = load i64, ptr %.sroa.45.0..8.val.sroa_idx.i, align 8, !dbg !144449, !noalias !144442 ; 2 uses
  %.sroa.56.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !144449
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..8.val.sroa_idx.i, align 8, !dbg !144449, !noalias !144442 ; 2 uses
  %i.g = zext i32 %.val3 to i64, !dbg !144450     ; 3 uses
  %.val.i = load ptr, ptr %.val, align 8, !dbg !144451, !noalias !144442 ; 3 uses
  %i.h = icmp ult i32 %.val2, %i.f, !dbg !144452
  br i1 %i.h, label %.lr.ph.i.i.i, label %.loopexit.i.i, !dbg !144469

.lr.ph.i.i.i:                                     ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload.i) ]
  %i.i = zext i32 %i.f to i64, !dbg !144469
  br label %bb.b, !dbg !144469

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i ], [ %i.k, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i ]
  %i.j = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.u, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i ] ; 3 uses
  %i.k = add nsw i64 %indvars.iv.i.i.i, -1, !dbg !144470 ; 2 uses
  %i.l = add i64 %i.k, %.sroa.56.0.copyload.i, !dbg !144475 ; 2 uses
  %i.m = lshr i64 %i.l, 3, !dbg !144475           ; 2 uses
  %i.n = icmp ult i64 %i.m, %.sroa.45.0.copyload.i, !dbg !144483
  tail call void @llvm.assume(i1 %i.n), !dbg !144490
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 %i.m, !dbg !144491
  %i.p = load i8, ptr %i.o, align 1, !dbg !144492, !noalias !144493, !noundef !14
  %i.q = trunc i64 %i.l to i8, !dbg !144501
  %i.r = and i8 %i.q, 7, !dbg !144501
  %i.s = lshr i8 %i.p, %i.r, !dbg !144501
  %i.t = trunc i8 %i.s to i1, !dbg !144501
  br i1 %i.t, label %bb.c, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i, !dbg !144503

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i: ; preds = %bb.b
  %i.u = add i64 %i.j, 1, !dbg !144504            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.g, !dbg !144452
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.b, !dbg !144469

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144505, !noalias !144507
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB17_3ops5range5RangemEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, i32 noundef %.val2, i32 noundef %i.f), !dbg !144508, !noalias !144507
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.v = load i32, ptr %.val.i, align 4, !dbg !144509, !noalias !144507, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !144511
  %i.x = load i32, ptr %i.w, align 4, !dbg !144511, !range !111419, !noalias !144507, !noundef !14
  %i.y = icmp eq i32 %i.x, 1, !dbg !144523
  %i.z = load ptr, ptr %i.a, align 8, !dbg !144523, !noalias !144507
  %.sroa.011.0.i.i = select i1 %i.y, ptr %i.a, ptr %i.z, !dbg !144523 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !144524
  %i.ab = load i32, ptr %i.aa, align 8, !dbg !144524, !noalias !144507, !noundef !14
  %i.ac = zext i32 %i.ab to i64, !dbg !144524     ; 4 uses
  %i.ad = sub i64 %i.g, %i.j, !dbg !144525        ; 4 uses
  %i.ae = add i64 %i.ad, -1, !dbg !144525         ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.ac, !dbg !144526
  br i1 %i.af, label %bb.d, label %bb.e, !dbg !144526

.loopexit.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8position5checkmNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_00E0B1r_.exit.i.i.i, %bb.a
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB17_3ops5range5RangemEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i32 noundef %.val2, i32 noundef %i.f), !dbg !144527, !noalias !144442
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i, !dbg !144527

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp samesign ugt i64 %i.ad, %i.ac
  br i1 %.not.i.i, label %bb.h, label %bb.i, !dbg !144530, !prof !83654

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #55
          to label %bb.g unwind label %bb.f, !dbg !144526, !noalias !144507

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.o, !dbg !144540, !noalias !144507

bb.g:                                             ; preds = %bb.h, %bb.e
  unreachable

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #55
          to label %bb.g unwind label %bb.f, !dbg !144542, !noalias !144507

bb.i:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.0.i.i) ], !dbg !144543
  %i.ah = icmp eq i64 %i.j, %i.g, !dbg !144552
  br i1 %i.ah, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !144563

.lr.ph.i.i:                                       ; preds = %bb.i
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2, !dbg !144564
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 %.idx.i.i, !dbg !144564
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.0.i.i, i64 %i.ae, !dbg !144526
  %i.ak = load i32, ptr %i.aj, align 4, !dbg !144526, !noalias !144507, !noundef !14
  br label %bb.j, !dbg !144563

bb.j:                                             ; preds = %bb.m, %.lr.ph.i.i
  %.sroa.42.08.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.al, %bb.m ]
  %.sroa.06.07.i.i = phi i32 [ %i.v, %.lr.ph.i.i ], [ %.sroa.06.1.i.i, %bb.m ] ; 2 uses
  %.sroa.08.06.i.i = phi i32 [ %i.ak, %.lr.ph.i.i ], [ %.sroa.08.1.i.i, %bb.m ] ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.42.08.i.i, i64 -4, !dbg !144567 ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !dbg !144578, !noalias !144507, !noundef !14 ; 2 uses
  %i.an = zext i32 %i.am to i64, !dbg !144578
  %i.ao = add i64 %.sroa.56.0.copyload.i, %i.an, !dbg !144580 ; 2 uses
  %i.ap = lshr i64 %i.ao, 3, !dbg !144580         ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.45.0.copyload.i, !dbg !144583
  call void @llvm.assume(i1 %i.aq), !dbg !144590
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 %i.ap, !dbg !144591
  %i.as = load i8, ptr %i.ar, align 1, !dbg !144592, !noalias !144507, !noundef !14
  %i.at = trunc i64 %i.ao to i8, !dbg !144593
  %i.au = and i8 %i.at, 7, !dbg !144593
  %i.av = shl nuw i8 1, %i.au, !dbg !144595
  %i.aw = and i8 %i.av, %i.as, !dbg !144595
  %.not21.i.i = icmp eq i8 %i.aw, 0, !dbg !144595
  br i1 %.not21.i.i, label %bb.l, label %bb.k, !dbg !144595

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !144596, !noalias !144442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144597, !noalias !144507
  br label %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i, !dbg !144598

bb.k:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %.val.i, align 4, !dbg !144599, !noalias !144507, !noundef !14
  br label %bb.m, !dbg !144600

bb.l:                                             ; preds = %bb.j
  %i.ay = icmp eq i32 %.sroa.06.07.i.i, 0, !dbg !144601
  br i1 %i.ay, label %bb.m, label %bb.n, !dbg !144601

bb.m:                                             ; preds = %bb.n, %bb.l, %bb.k
  %.sroa.08.1.i.i = phi i32 [ %i.am, %bb.k ], [ %.sroa.08.06.i.i, %bb.l ], [ %.sroa.08.06.i.i, %bb.n ], !dbg !144602
  %.sroa.06.1.i.i = phi i32 [ %i.ax, %bb.k ], [ 0, %bb.l ], [ %i.ba, %bb.n ], !dbg !144603
  %i.az = icmp eq ptr %.sroa.011.0.i.i, %i.al, !dbg !144552
  br i1 %i.az, label %._crit_edge.i.i, label %bb.j, !dbg !144563

bb.n:                                             ; preds = %bb.l
  %i.ba = add i32 %.sroa.06.07.i.i, -1, !dbg !144604
  store i32 %.sroa.08.06.i.i, ptr %i.al, align 4, !dbg !144605, !noalias !144507
  br label %bb.m, !dbg !144606

bb.o:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !144607, !noalias !144507
  unreachable, !dbg !144607

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.ag, !dbg !144607

_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i: ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !144608
  %i.bd = load i32, ptr %i.bc, align 8, !dbg !144608, !noalias !144442, !noundef !14
  %.not.i = icmp eq i32 %i.bd, 0, !dbg !144616
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E0s_0Ba_.exit, label %bb.p, !dbg !144616

bb.p:                                             ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !144620
  %i.bf = load i32, ptr %i.be, align 4, !dbg !144620, !range !111419, !noalias !144442, !noundef !14
  %i.bg = icmp eq i32 %i.bf, 1, !dbg !144625
  %i.bh = load ptr, ptr %i.b, align 8, !dbg !144625, !noalias !144442
  %.sroa.05.0.i = select i1 %i.bg, ptr %i.b, ptr %i.bh, !dbg !144625
  %i.bi = load i32, ptr %.sroa.05.0.i, align 4, !dbg !144626, !noalias !144442, !noundef !14
  br label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E0s_0Ba_.exit, !dbg !144629

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch15fw_bw_fill_nullNCNvB6_18backward_fill_null0NCB1k_s_0E0s_0Ba_.exit: ; preds = %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i, %bb.p
  %.sroa.0.0.i = phi i32 [ %i.bi, %bb.p ], [ %.val2, %_RNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch18backward_fill_nulls_0B7_.exit.i ], !dbg !144632
  store i32 %.sroa.0.0.i, ptr %0, align 8, !dbg !144633, !alias.scope !144442
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !144633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !144634
  ret void, !dbg !144635
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_00INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4), (8, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #2 !dbg !144636 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !144637, !nonnull !14, !align !4162, !noundef !14
  %.val = load ptr, ptr %i.c, align 8, !dbg !144638, !nonnull !14, !align !4162, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144639), !dbg !144638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144642), !dbg !144638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !144644, !noalias !144648
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12, !dbg !144649
  %i.e = load i32, ptr %i.d, align 4, !dbg !144649, !range !111419, !alias.scope !144642, !noalias !144639, !noundef !14
  %i.f = icmp eq i32 %i.e, 1, !dbg !144660
  %i.g = load ptr, ptr %3, align 8, !dbg !144660, !alias.scope !144642, !noalias !144639
  %.sroa.03.0.i = select i1 %i.f, ptr %3, ptr %i.g, !dbg !144660 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !144661
  %i.i = load i32, ptr %i.h, align 8, !dbg !144661, !alias.scope !144642, !noalias !144639, !noundef !14
  %i.j = zext i32 %i.i to i64, !dbg !144661
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i) ], !dbg !144662
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i, i64 %i.j, !dbg !144671
  store ptr %.sroa.03.0.i, ptr %i.b, align 8, !dbg !144674, !noalias !144648
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !144674
  store ptr %i.k, ptr %i.l, align 8, !dbg !144674, !noalias !144648
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !144674
  store ptr %.val, ptr %i.m, align 8, !dbg !144674, !noalias !144648
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters6filter6FilterINtNtB2f_6copied6CopiedINtNtNtB17_5slice4iter4ItermEENCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_000EEB3L_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !144682, !noalias !144639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !144685, !noalias !144648
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !144686
  %i.o = load i32, ptr %i.n, align 8, !dbg !144686, !noalias !144648, !noundef !14
  %.not.i = icmp eq i32 %i.o, 0, !dbg !144693
  br i1 %.not.i, label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_00B9_.exit, label %bb.b, !dbg !144693

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !144697
  %i.q = load i32, ptr %i.p, align 4, !dbg !144697, !range !111419, !noalias !144648, !noundef !14
  %i.r = icmp eq i32 %i.q, 1, !dbg !144702
  %i.s = load ptr, ptr %i.a, align 8, !dbg !144702, !noalias !144648
  %.sroa.04.0.i = select i1 %i.r, ptr %i.a, ptr %i.s, !dbg !144702
  %i.t = load i32, ptr %.sroa.04.0.i, align 4, !dbg !144703, !noalias !144639, !noundef !14
  br label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_00B9_.exit, !dbg !144706

_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_00B9_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ %i.t, %bb.b ], [ %2, %bb.a ], !dbg !144709
  store i32 %.sroa.0.0.i, ptr %0, align 8, !dbg !144710, !alias.scope !144639, !noalias !144642
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !144710, !noalias !144642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144711
  ret void, !dbg !144712
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_0INtB6_5FnMutTRAmj2_EE8call_mutBX_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !144713 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = load ptr, ptr %1, align 8, !dbg !144714, !nonnull !14, !align !4162, !noundef !14
  %.val = load ptr, ptr %i.f, align 8, !dbg !144715, !nonnull !14, !align !4162, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144716), !dbg !144715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144719), !dbg !144715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
end_hunk_8
begin_hunk_9_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_0INtB6_5FnMutTRAmj2_EE8call_mutBX_:bb.a
bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %0, align 8, !dbg !144736, !alias.scope !144716, !noalias !144719
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144736
  store i64 0, ptr %i.v, align 8, !dbg !144736, !alias.scope !144716, !noalias !144719
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !144736
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !144736, !alias.scope !144716, !noalias !144719
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !144736
  store i32 1, ptr %.sroa.5.0..sroa_idx.i, align 4, !dbg !144736, !alias.scope !144716, !noalias !144719
  br label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_0B9_.exit, !dbg !144737

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144738, !noalias !144729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !144738, !noalias !144729
  %i.w = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask13leading_zeros(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !dbg !144739, !noalias !144729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144739, !noalias !144729
  %i.x = trunc i64 %i.w to i32, !dbg !144738
  %i.y = add i32 %i.g, %i.x, !dbg !144740         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !144741, !noalias !144729
  call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, i64 noundef 1), !dbg !144743, !noalias !144729
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !144744 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !dbg !144744, !alias.scope !144747, !noalias !144729, !noundef !14 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 12, !dbg !144750 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !dbg !144750, !range !111419, !alias.scope !144747, !noalias !144729, !noundef !14 ; 2 uses
  %i.ad = icmp eq i32 %i.aa, %i.ac, !dbg !144744
  br i1 %i.ad, label %bb.d, label %.noexc.i, !dbg !144744, !prof !204

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef 1)
          to label %.noexcthread-pre-split.i unwind label %bb.f, !dbg !144751, !noalias !144729

.noexcthread-pre-split.i:                         ; preds = %bb.d
  %.pr.i = load i32, ptr %i.ab, align 4, !dbg !144752, !alias.scope !144747, !noalias !144729
  %.pre.i = load i32, ptr %i.z, align 8, !dbg !144756, !alias.scope !144747, !noalias !144729
  br label %.noexc.i, !dbg !144752

.noexc.i:                                         ; preds = %.noexcthread-pre-split.i, %bb.c
  %i.ae = phi i32 [ %.pre.i, %.noexcthread-pre-split.i ], [ %i.aa, %bb.c ], !dbg !144756
  %i.af = phi i32 [ %.pr.i, %.noexcthread-pre-split.i ], [ %i.ac, %bb.c ], !dbg !144752
  %i.ag = icmp eq i32 %i.af, 1, !dbg !144757
  %i.ah = load ptr, ptr %i.d, align 8, !noalias !144729
  %spec.select.i = select i1 %i.ag, ptr %i.d, ptr %i.ah, !dbg !144757
  %i.ai = zext i32 %i.ae to i64, !dbg !144756
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i, i64 %i.ai, !dbg !144758
  store i32 %i.y, ptr %i.aj, align 4, !dbg !144760, !noalias !144729
  %i.ak = load i32, ptr %i.z, align 8, !dbg !144763, !alias.scope !144747, !noalias !144729, !noundef !14
  %i.al = add i32 %i.ak, 1, !dbg !144763
  store i32 %i.al, ptr %i.z, align 8, !dbg !144763, !alias.scope !144747, !noalias !144729
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !144765, !noalias !144719
  store i32 %i.y, ptr %0, align 8, !dbg !144764, !alias.scope !144716, !noalias !144719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !144766, !noalias !144729
  br label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_0B9_.exit, !dbg !144767

bb.e:                                             ; preds = %bb.a
  %i.an = icmp eq i64 %i.u, %i.k, !dbg !144768
  br i1 %i.an, label %bb.i, label %bb.h, !dbg !144768

bb.f:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.g, !dbg !144769, !noalias !144729

bb.g:                                             ; preds = %bb.l, %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !144771, !noalias !144716
  unreachable, !dbg !144771

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.l, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %i.bb, %bb.l ]
  resume { ptr, i32 } %.pn.i, !dbg !144771

bb.h:                                             ; preds = %bb.e
  store ptr %i.e, ptr %i.c, align 8, !dbg !144772, !noalias !144729
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !144772
  store i32 0, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !dbg !144772, !noalias !144729
  %.sroa.02.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12, !dbg !144772
  store i32 %i.j, ptr %.sroa.02.sroa.5.0..sroa_idx.i, align 4, !dbg !144772, !noalias !144729
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !144772
  store ptr %2, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !144772, !noalias !144729
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !144772
  store i64 %i.u, ptr %i.aq, align 8, !dbg !144772, !noalias !144729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !144776, !noalias !144729
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtNtB15_8adapters3map3MapINtNtB3e_6filter6FilterINtNtNtB17_3ops5range5RangemENCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_00ENCB4t_s_0EmEEB4D_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !dbg !144778, !noalias !144716
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !144781
  %i.as = load i32, ptr %i.ar, align 8, !dbg !144781, !noalias !144729, !noundef !14
  %.not.i = icmp eq i32 %i.as, 0, !dbg !144789
  br i1 %.not.i, label %bb.j, label %bb.k, !dbg !144789, !prof !204

bb.i:                                             ; preds = %bb.e
  %i.at = add i32 %i.j, %i.g, !dbg !144793
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144794
  call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB17_3ops5range5RangemEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.au, i32 noundef %i.g, i32 noundef %i.at), !dbg !144795, !noalias !144719
  store i32 %i.g, ptr %0, align 8, !dbg !144794, !alias.scope !144716, !noalias !144719
  br label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_0B9_.exit, !dbg !144798

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #55
          to label %bb.m unwind label %bb.l, !dbg !144799, !noalias !144716

bb.k:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !144802
  %i.aw = load i32, ptr %i.av, align 4, !dbg !144802, !range !111419, !noalias !144729, !noundef !14
  %i.ax = icmp eq i32 %i.aw, 1, !dbg !144807
  %i.ay = load ptr, ptr %i.b, align 8, !dbg !144807, !noalias !144729
  %.sroa.010.0.i = select i1 %i.ax, ptr %i.b, ptr %i.ay, !dbg !144807
  %i.az = load i32, ptr %.sroa.010.0.i, align 4, !dbg !144808, !noalias !144716, !noundef !14
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !144812, !noalias !144719
  store i32 %i.az, ptr %0, align 8, !dbg !144811, !alias.scope !144716, !noalias !144719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !144813, !noalias !144729
  br label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_0B9_.exit, !dbg !144798

bb.l:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.g, !dbg !144814, !noalias !144716

bb.m:                                             ; preds = %bb.j
  unreachable

_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_0B9_.exit: ; preds = %bb.b, %.noexc.i, %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !144816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !144816
  ret void, !dbg !144817
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef i32 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #26 personality ptr @rust_eh_personality !dbg !144818 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !144819, !nonnull !14, !align !4162, !noundef !14
  %.val = load ptr, ptr %i.a, align 8, !dbg !144820, !nonnull !14, !align !4162, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144821), !dbg !144820
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !144824
  %i.c = load i32, ptr %i.b, align 4, !dbg !144824, !range !111419, !alias.scope !144821, !noundef !14
  %i.d = icmp eq i32 %i.c, 1, !dbg !144840
  %i.e = load ptr, ptr %2, align 8, !dbg !144840, !alias.scope !144821
  %.sroa.0.0.i = select i1 %i.d, ptr %2, ptr %i.e, !dbg !144840 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !144841
  %i.g = load i32, ptr %i.f, align 8, !dbg !144841, !alias.scope !144821, !noundef !14 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ], !dbg !144842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144851), !dbg !144854
  %i.h = icmp eq i32 %i.g, 0, !dbg !144864
  br i1 %i.h, label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit, label %bb.b, !dbg !144871

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %i.g to i64, !dbg !144841       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !144851, !noalias !144821, !noundef !14 ; 3 uses
  %i.l = load ptr, ptr %.val, align 8, !alias.scope !144851, !noalias !144821, !nonnull !14, !noundef !14 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !144851, !noalias !144821, !noundef !14 ; 3 uses
  %xtraiter = and i64 %i.i, 1, !dbg !144872
  %i.o = icmp eq i32 %i.g, 1, !dbg !144872
  br i1 %i.o, label %.epil.preheader, label %.new, !dbg !144872

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.i, 4294967294, !dbg !144872
  br label %bb.c, !dbg !144872

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.as, %bb.c ], !dbg !144876 ; 3 uses
  %.sroa.02.0.i.i = phi i32 [ 0, %.new ], [ %i.ar, %bb.c ], !dbg !144877
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %.sroa.04.0.i.i, !dbg !144878
  %.val13.i.i = load i32, ptr %i.p, align 4, !dbg !144882, !noalias !144851, !noundef !14
  %i.q = zext i32 %.val13.i.i to i64, !dbg !144883
  %i.r = add i64 %i.k, %i.q, !dbg !144889         ; 2 uses
  %i.s = lshr i64 %i.r, 3, !dbg !144889           ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.n, !dbg !144892
  tail call void @llvm.assume(i1 %i.t), !dbg !144899
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s, !dbg !144900
  %i.v = load i8, ptr %i.u, align 1, !dbg !144901, !noalias !144902, !noundef !14
  %i.w = trunc i64 %i.r to i8, !dbg !144903
  %i.x = and i8 %i.w, 7, !dbg !144903
  %i.y = xor i8 %i.v, -1, !dbg !144905
  %i.z = lshr i8 %i.y, %i.x, !dbg !144905
  %i.aa = and i8 %i.z, 1, !dbg !144905
  %i.ab = zext nneg i8 %i.aa to i32, !dbg !144905
  %i.ac = add i32 %.sroa.02.0.i.i, %i.ab, !dbg !144909
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %.sroa.04.0.i.i, !dbg !144878
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4, !dbg !144878
  %.val13.i.i.1 = load i32, ptr %i.ae, align 4, !dbg !144882, !noalias !144851, !noundef !14
  %i.af = zext i32 %.val13.i.i.1 to i64, !dbg !144883
  %i.ag = add i64 %i.k, %i.af, !dbg !144889       ; 2 uses
  %i.ah = lshr i64 %i.ag, 3, !dbg !144889         ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.n, !dbg !144892
  tail call void @llvm.assume(i1 %i.ai), !dbg !144899
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah, !dbg !144900
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !144901, !noalias !144902, !noundef !14
  %i.al = trunc i64 %i.ag to i8, !dbg !144903
  %i.am = and i8 %i.al, 7, !dbg !144903
  %i.an = xor i8 %i.ak, -1, !dbg !144905
  %i.ao = lshr i8 %i.an, %i.am, !dbg !144905
  %i.ap = and i8 %i.ao, 1, !dbg !144905
  %i.aq = zext nneg i8 %i.ap to i32, !dbg !144905
  %i.ar = add i32 %i.ac, %i.aq, !dbg !144909      ; 3 uses
  %i.as = add nuw nsw i64 %.sroa.04.0.i.i, 2, !dbg !144913 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !144916 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !144916
  br i1 %niter.ncmp.1, label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !144916

_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !144916
  br i1 %lcmp.mod.not, label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit, label %.epil.preheader, !dbg !144916

.epil.preheader:                                  ; preds = %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.as, %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ar, %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = trunc i32 %i.g to i1, !dbg !144916
  tail call void @llvm.assume(i1 %lcmp.mod2), !dbg !144916
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %.sroa.04.0.i.i.epil.init, !dbg !144878
  %.val13.i.i.epil = load i32, ptr %i.at, align 4, !dbg !144882, !noalias !144851, !noundef !14
  %i.au = zext i32 %.val13.i.i.epil to i64, !dbg !144883
  %i.av = add i64 %i.k, %i.au, !dbg !144889       ; 2 uses
  %i.aw = lshr i64 %i.av, 3, !dbg !144889         ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.n, !dbg !144892
  tail call void @llvm.assume(i1 %i.ax), !dbg !144899
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aw, !dbg !144900
  %i.az = load i8, ptr %i.ay, align 1, !dbg !144901, !noalias !144902, !noundef !14
  %i.ba = trunc i64 %i.av to i8, !dbg !144903
  %i.bb = and i8 %i.ba, 7, !dbg !144903
  %i.bc = xor i8 %i.az, -1, !dbg !144905
  %i.bd = lshr i8 %i.bc, %i.bb, !dbg !144905
  %i.be = and i8 %i.bd, 1, !dbg !144905
  %i.bf = zext nneg i8 %i.be to i32, !dbg !144905
  %i.bg = add i32 %.sroa.02.0.i.i.epil.init, %i.bf, !dbg !144909
  br label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit, !dbg !144917

_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit: ; preds = %.epil.preheader, %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.a ], [ %i.ar, %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count00B9_.exit.loopexit.unr-lcssa ], [ %i.bg, %.epil.preheader ], !dbg !144877
  ret i32 %.sroa.0.0.i.i, !dbg !144917
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10null_count0s_0INtB6_5FnMutTRAmj2_EE8call_mutBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 !dbg !144918 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !144919, !nonnull !14, !align !4162, !noundef !14
  %.val = load ptr, ptr %i.b, align 8, !dbg !144920, !nonnull !14, !align !4162, !noundef !14 ; 3 uses
  %.val1 = load i32, ptr %1, align 4, !dbg !144920, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !144920
  %.val2 = load i32, ptr %i.c, align 4, !dbg !144920, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144921
  %i.d = zext i32 %.val1 to i64, !dbg !144925
  %i.e = zext i32 %.val2 to i64, !dbg !144926
  %i.f = load ptr, ptr %.val, align 8, !dbg !144927, !nonnull !14, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !144927
  %i.h = load i64, ptr %i.g, align 8, !dbg !144927, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !144930
  %i.j = load i64, ptr %i.i, align 8, !dbg !144930, !noundef !14
  %i.k = add i64 %i.j, %i.d, !dbg !144930
  store ptr %i.f, ptr %i.a, align 8, !dbg !144931
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !144931
  store i64 %i.h, ptr %i.l, align 8, !dbg !144931
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !144931
  store i64 %i.k, ptr %i.m, align 8, !dbg !144931
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !144931
  store i64 %i.e, ptr %i.n, align 8, !dbg !144931
  %i.o = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !dbg !144932
  %i.p = trunc i64 %i.o to i32, !dbg !144921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144933
  ret i32 %i.p, !dbg !144934
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch7reverse00INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBX_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #2 !dbg !144935 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144936), !dbg !144939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144940), !dbg !144939
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12, !dbg !144942
  %i.b = load i32, ptr %i.a, align 4, !dbg !144942, !range !111419, !alias.scope !144940, !noalias !144936, !noundef !14
  %i.c = icmp eq i32 %i.b, 1, !dbg !144958
  %i.d = load ptr, ptr %3, align 8, !dbg !144958, !alias.scope !144940, !noalias !144936
  %.sroa.03.0.i = select i1 %i.c, ptr %3, ptr %i.d, !dbg !144958 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !144959
  %i.f = load i32, ptr %i.e, align 8, !dbg !144959, !alias.scope !144940, !noalias !144936, !noundef !14 ; 2 uses
  %i.g = zext i32 %i.f to i64, !dbg !144959       ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0, !dbg !144960
  br i1 %.not.i, label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch7reverse00B9_.exit, label %bb.b, !dbg !144960

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr [4 x i8], ptr %.sroa.03.0.i, i64 %i.g, !dbg !144964
  %i.i = getelementptr i8, ptr %i.h, i64 -4, !dbg !144964
  %i.j = load i32, ptr %i.i, align 4, !dbg !144965, !noalias !144936, !noundef !14
  br label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch7reverse00B9_.exit, !dbg !144968

_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch7reverse00B9_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.b ], [ %2, %bb.a ], !dbg !144971
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i) ], !dbg !144972
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i, i64 %i.g, !dbg !144983
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144986
  tail call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters3rev3RevINtNtB2f_6copied6CopiedINtNtNtB17_5slice4iter4ItermEEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull %.sroa.03.0.i, ptr noundef nonnull %i.k), !dbg !144987
  store i32 %.sroa.0.0.i, ptr %0, align 8, !dbg !144986, !alias.scope !144936, !noalias !144940
  ret void, !dbg !144990
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch7reverse0s_0INtB6_5FnMutTRAmj2_EE8call_mutBX_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #2 !dbg !144991 {
bb.a:
  %.val = load i32, ptr %2, align 4, !dbg !144992, !noundef !14 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !144992
  %.val1 = load i32, ptr %i.a, align 4, !dbg !144992, !noundef !14 ; 2 uses
  %i.b = tail call i32 @llvm.usub.sat.i32(i32 %.val1, i32 1), !dbg !144993
  %i.c = add i32 %i.b, %.val, !dbg !144999
  %i.d = add i32 %.val1, %.val, !dbg !145007
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145008
  tail call void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters3rev3RevINtNtNtB17_3ops5range5RangemEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, i32 noundef %.val, i32 noundef %i.d), !dbg !145009
  store i32 %i.c, ptr %0, align 8, !dbg !145008, !alias.scope !145012
  ret void, !dbg !145015
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch9has_nulls00INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %2) unnamed_addr #26 personality ptr @rust_eh_personality !dbg !145016 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !145017, !nonnull !14, !align !4162, !noundef !14
  %.val = load ptr, ptr %i.a, align 8, !dbg !145018, !nonnull !14, !align !4162, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145019), !dbg !145018
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !145022
  %i.c = load i32, ptr %i.b, align 4, !dbg !145022, !range !111419, !alias.scope !145019, !noundef !14
  %i.d = icmp eq i32 %i.c, 1, !dbg !145038
  %i.e = load ptr, ptr %2, align 8, !dbg !145038, !alias.scope !145019
  %.sroa.0.0.i = select i1 %i.d, ptr %2, ptr %i.e, !dbg !145038 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !145039
  %i.g = load i32, ptr %i.f, align 8, !dbg !145039, !alias.scope !145019, !noundef !14 ; 2 uses
  %i.h = zext i32 %i.g to i64, !dbg !145039
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ], !dbg !145040
  %.idx = shl nuw nsw i64 %i.h, 2, !dbg !145049
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx, !dbg !145049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145052), !dbg !145055
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !145052, !noalias !145056
  %i.l = load ptr, ptr %.val, align 8, !alias.scope !145052, !noalias !145056, !nonnull !14
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !145052, !noalias !145056
  %.not.not.not.i.not.not.not.i.not.not.not1.not = icmp eq i32 %i.g, 0, !dbg !145058
  br i1 %.not.not.not.i.not.not.not.i.not.not.not1.not, label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch9has_nulls00B9_.exit, label %.lr.ph, !dbg !145068

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.o = phi ptr [ %i.z, %.lr.ph ], [ %.sroa.0.0.i, %bb.a ] ; 2 uses
  %.val3.i.i = load i32, ptr %i.o, align 4, !dbg !145069, !noalias !145070, !noundef !14
  %i.p = zext i32 %.val3.i.i to i64, !dbg !145071
  %i.q = add i64 %i.k, %i.p, !dbg !145075         ; 2 uses
  %i.r = lshr i64 %i.q, 3, !dbg !145075           ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.n, !dbg !145078
  tail call void @llvm.assume(i1 %i.s), !dbg !145085
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r, !dbg !145086
  %i.u = load i8, ptr %i.t, align 1, !dbg !145087, !noalias !145088, !noundef !14
  %i.v = trunc i64 %i.q to i8, !dbg !145089
  %i.w = and i8 %i.v, 7, !dbg !145089
  %i.x = shl nuw i8 1, %i.w, !dbg !145089
  %i.y = and i8 %i.x, %i.u, !dbg !145089
  %.not.i.i.i = icmp eq i8 %i.y, 0, !dbg !145089  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.not.not = icmp eq ptr %i.z, %i.i
  %or.cond = select i1 %.not.i.i.i, i1 true, i1 %.not.not.not.i.not.not.not.i.not.not.not.not, !dbg !145069
  br i1 %or.cond, label %_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch9has_nulls00B9_.exit, label %.lr.ph, !dbg !145069

_RNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch9has_nulls00B9_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %.not.i.i.i, %.lr.ph ], !dbg !145058
  ret i1 %.not.not.not.i.not.not.not.i.not.not.not.lcssa, !dbg !145091
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch9has_nulls0s_0INtB6_5FnMutTRAmj2_EE8call_mutBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 !dbg !145092 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !145093, !nonnull !14, !align !4162, !noundef !14
  %.val = load ptr, ptr %i.b, align 8, !dbg !145094, !nonnull !14, !align !4162, !noundef !14 ; 3 uses
  %.val1 = load i32, ptr %1, align 4, !dbg !145094, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !145094
  %.val2 = load i32, ptr %i.c, align 4, !dbg !145094, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !145095
  %i.d = zext i32 %.val1 to i64, !dbg !145099
  %i.e = zext i32 %.val2 to i64, !dbg !145100
  %i.f = load ptr, ptr %.val, align 8, !dbg !145101, !nonnull !14, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !145101
  %i.h = load i64, ptr %i.g, align 8, !dbg !145101, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !145104
  %i.j = load i64, ptr %i.i, align 8, !dbg !145104, !noundef !14
  %i.k = add i64 %i.j, %i.d, !dbg !145104
  store ptr %i.f, ptr %i.a, align 8, !dbg !145105
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !145105
  store i64 %i.h, ptr %i.l, align 8, !dbg !145105
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !145105
  store i64 %i.k, ptr %i.m, align 8, !dbg !145105
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !145105
  store i64 %i.e, ptr %i.n, align 8, !dbg !145105
  %i.o = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !dbg !145106
  %i.p = icmp ne i64 %i.o, 0, !dbg !145095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !145107
  ret i1 %i.p, !dbg !145108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTmxEENCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsIB12_IB12_IB1i_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1V_8downcastINtB1X_12ChunkedArrayNtNtB1Z_9datatypes9Int64TypeE13downcast_iter0ENCINvB1T_16arg_sort_numericB5z_E0EIBP_IB1i_xEExEs2_0EENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #20 !dbg !145109 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !145110, !alias.scope !145115, !nonnull !14, !noundef !14 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145120
end_hunk_9
