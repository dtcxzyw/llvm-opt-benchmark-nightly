Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.12?download=true
inline.NumInlined: 7821
inline.NumDeleted: 2854
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNSNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE10initializeNCINvB1f_11get_or_initNCNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl10python_dsl10python_udfNtB3l_19PythonUdfExpressionNtNtNtNtB3p_4expr9anonymous4expr19AnonymousColumnsUdf9get_fields_0E0zE0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3r_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 71, !dbg !84255
  %i.h = load i8, ptr %i.g, align 1, !dbg !84255, !range !2840, !alias.scope !84241, !noalias !84242, !noundef !2568
  %i.i = icmp eq i8 %i.h, -40, !dbg !84256
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !84256

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #52, !dbg !84257, !noalias !84242
  br label %bb.e, !dbg !84257

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !84258, !noalias !84242
  br label %bb.e, !dbg !84259

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !84260, !noalias !84240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !84261, !noalias !84240
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.0.0.copyload.i.i)
          to label %_RNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE10initializeNCINvB1d_11get_or_initNCNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl10python_dsl10python_udfNtB3j_19PythonUdfExpressionNtNtNtNtB3n_4expr9anonymous4expr19AnonymousColumnsUdf9get_fields_0E0zE0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3p_.exit unwind label %bb.f, !dbg !84261, !noalias !84242

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !84262
  %i.l = load i8, ptr %i.k, align 1, !dbg !84262, !range !2840, !alias.scope !84243, !noalias !84240, !noundef !2568
  %i.m = icmp eq i8 %i.l, -40, !dbg !84263
  br i1 %i.m, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i, !dbg !84263, !prof !2604

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i unwind label %bb.h, !dbg !84264, !noalias !84242

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !84265, !noalias !84242
  unreachable, !dbg !84265

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j, !dbg !84265

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #54, !dbg !84266, !noalias !84244
  unreachable, !dbg !84266

_RNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE10initializeNCINvB1d_11get_or_initNCNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl10python_dsl10python_udfNtB3j_19PythonUdfExpressionNtNtNtNtB3n_4expr9anonymous4expr19AnonymousColumnsUdf9get_fields_0E0zE0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3p_.exit: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !84265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !84265, !noalias !84244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !84265, !noalias !84244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !84267, !noalias !84240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !84267, !noalias !84240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !84268, !noalias !84239
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.5.sroa.0.0.copyload.i.i, ptr noundef nonnull align 16 dereferenceable(80) %i.d, i64 80, i1 false), !dbg !84269, !noalias !84244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !84270
  ret void, !dbg !84245
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsfcROwRM8ZtH_11polars_plan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !84271 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !84292, !nonnull !2568, !align !2783, !noundef !2568 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84289), !dbg !84292
  %i.c = load ptr, ptr %i.b, align 8, !dbg !84293, !alias.scope !84289, !noalias !84290, !align !2783, !noundef !2568 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !84294, !alias.scope !84289, !noalias !84290
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !84295
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !84296, !prof !2604

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !84297
  %.val.i.i = load i8, ptr %i.d, align 4, !dbg !84297, !range !2723, !noalias !84291, !noundef !2568
  %i.e = trunc nuw i8 %.val.i.i to i1, !dbg !84298
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit, !dbg !84299, !prof !2604

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std4sync9lazy_lock14panic_poisoned() #54, !dbg !84300, !noalias !84291
  unreachable, !dbg !84300

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #54, !dbg !84301, !noalias !84291
  unreachable, !dbg !84301

_RNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !84302, !noalias !84291, !nonnull !2568, !noundef !2568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !84303, !noalias !84291
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !dbg !84304, !noalias !84291, !inline_history !84287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !84305, !noalias !84291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !84306, !noalias !84291
  ret void, !dbg !84292
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs_NtCsbm5zPlkZccl_4pyo33errNtBc_5PyErr3newNtNtBe_10exceptions12PyValueErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringE0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableCsfcROwRM8ZtH_11polars_plan(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !84307 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !dbg !84335, !noalias !84326, !nonnull !2568, !noundef !2568 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.b) #46, !dbg !84336, !noalias !84326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !84337, !noalias !84326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !84337
  %i.c = invoke noundef nonnull ptr @_RNvXNtCsbm5zPlkZccl_4pyo33errNtNtCsgZ49sUHp3tW_5alloc6string6StringNtB2_14PyErrArguments9argumentsCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs_NtCsbm5zPlkZccl_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringE0CsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.b, !dbg !84338, !noalias !84326

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.b) #49
          to label %bb.d unwind label %bb.c, !dbg !84339, !noalias !84326

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !84340, !noalias !84326
  unreachable, !dbg !84340

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d, !dbg !84340

_RNCINvMs_NtCsbm5zPlkZccl_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringE0CsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !84341, !noalias !84326
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0, !dbg !84342
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.c, 1, !dbg !84342
  ret { ptr, ptr } %i.g, !dbg !84343
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl10python_dsl10python_udfNtBc_19PythonUdfExpressionNtNtNtNtBg_4expr9anonymous4expr19AnonymousColumnsUdf9get_field0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE9call_once6vtableBi_(ptr dead_on_unwind noalias noundef writable sret([160 x i8]) align 16 captures(address) dereferenceable(160) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 16 %2, i64 noundef range(i64 0, 57646075230342349) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !84344 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !dbg !84359, !nonnull !2568, !align !2783, !noundef !2568
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !84359
  %i.d = load ptr, ptr %i.c, align 8, !dbg !84359, !nonnull !2568, !align !3005, !noundef !2568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84355), !dbg !84359
  %i.e = load ptr, ptr %i.b, align 8, !dbg !84360, !alias.scope !84355, !noalias !84356, !nonnull !2568, !noundef !2568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !84361, !noalias !84357
  store i8 31, ptr %i.a, align 16, !dbg !84361, !noalias !84357
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 144, !dbg !84362
  call void %i.e(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %0, ptr noundef nonnull align 16 %2, i64 noundef range(i64 0, 57646075230342349) %3, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f), !dbg !84360, !noalias !84358, !inline_history !84354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !84363, !noalias !84357
  ret void, !dbg !84359
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE11rotate_leftCsfcROwRM8ZtH_11polars_plan(ptr noalias nofree noundef nonnull align 16 captures(none) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2) unnamed_addr #0 !dbg !84364 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [80 x i8], align 16               ; 4 uses
  %i.c = alloca [80 x i8], align 16               ; 10 uses
  %i.d = alloca [80 x i8], align 16               ; 4 uses
  %.not = icmp ugt i64 %2, %1, !dbg !84398
  br i1 %.not, label %bb.b, label %bb.c, !dbg !84398, !prof !2604

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @503, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @504) #54, !dbg !84399
  unreachable, !dbg !84399

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i64 %1, %2, !dbg !84400      ; 11 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2, !dbg !84401 ; 2 uses
  %i.g = icmp eq i64 %2, 0, !dbg !84402
  %i.h = icmp eq i64 %i.e, 0
  %or.cond.i = or i1 %i.g, %i.h, !dbg !84402
  br i1 %or.cond.i, label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate10ptr_rotateINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.d, !dbg !84402

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -115292150460684697, 115292150460684698) %i.e, i64 range(i64 -115292150460684697, 115292150460684698) %2), !dbg !84403
  %i.i = icmp samesign ult i64 %..i, 4, !dbg !84404
  br i1 %i.i, label %bb.o, label %bb.e, !dbg !84404

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !84405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %0, i64 80, i1 false), !dbg !84406
  br label %.outer, !dbg !84407

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %i.e, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %i.e, %bb.e ]
  br label %bb.f, !dbg !84408

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ], !dbg !84409 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !84410
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.06.0.i.i, !dbg !84411 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, ptr noundef nonnull align 16 dereferenceable(80) %i.j, i64 80, i1 false), !dbg !84412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.j, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !84413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %i.d, i64 80, i1 false), !dbg !84414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !84415
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %2, !dbg !84408
  br i1 %.not.i.i, label %bb.g, label %bb.h, !dbg !84408

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %i.e, !dbg !84416
  br label %bb.f, !dbg !84417

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %2, !dbg !84418 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !84419
  br i1 %i.m, label %bb.i, label %bb.j, !dbg !84419

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !84420
  %i.n = icmp ugt i64 %.sroa.018.0.i.i.ph, 1, !dbg !84421
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !84421

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph), !dbg !84422
  br label %.outer, !dbg !84422

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.020.029.i.i, !dbg !84423 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %i.o, i64 80, i1 false), !dbg !84424
  %i.p = add i64 %.sroa.020.029.i.i, %i.e, !dbg !84425
  br label %bb.k, !dbg !84426

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ], !dbg !84427 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !84428
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.06.2.i.i, !dbg !84429 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, ptr noundef nonnull align 16 dereferenceable(80) %i.q, i64 80, i1 false), !dbg !84430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.q, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !84431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !84432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !84433
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %2, !dbg !84434
  br i1 %.not28.i.i, label %bb.l, label %bb.m, !dbg !84434

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %i.e, !dbg !84435
  br label %.backedge, !dbg !84436

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %2, !dbg !84437 ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i, !dbg !84438
  br i1 %i.t, label %bb.n, label %.backedge, !dbg !84438

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k, !dbg !84428

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.o, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !84439
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1, !dbg !84440 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph, !dbg !84421
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i, label %.lr.ph.i.i, !dbg !84421

_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !84441
  br label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate10ptr_rotateINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !84442

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %i.e, %2, !dbg !84443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !84444
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.e, !dbg !84445 ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p, !dbg !84446

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %2, 80, !dbg !84447      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %0, i64 %i.x, i1 false), !dbg !84447
  %i.y = mul nuw nsw i64 %i.e, 80, !dbg !84448
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %0, ptr nonnull align 16 %i.f, i64 %i.y, i1 false), !dbg !84448
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.w, ptr nonnull align 16 %i.a, i64 %i.x, i1 false), !dbg !84449
  br label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate18ptr_rotate_memmoveINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !84450

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %i.e, 80, !dbg !84451    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.f, i64 %i.z, i1 false), !dbg !84451
  %i.aa = mul nuw nsw i64 %2, 80, !dbg !84452
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.w, ptr nonnull align 16 %0, i64 %i.aa, i1 false), !dbg !84452
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %0, ptr nonnull align 16 %i.a, i64 %i.z, i1 false), !dbg !84453
  br label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate18ptr_rotate_memmoveINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !84450

_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate18ptr_rotate_memmoveINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !84454
  br label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate10ptr_rotateINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !84455

_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate10ptr_rotateINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.c, %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i, %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate18ptr_rotate_memmoveINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i
  ret void, !dbg !84456
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE12rotate_rightCsfcROwRM8ZtH_11polars_plan(ptr noalias nofree noundef nonnull align 16 captures(none) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2) unnamed_addr #0 !dbg !84457 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [80 x i8], align 16               ; 4 uses
  %i.c = alloca [80 x i8], align 16               ; 10 uses
  %i.d = alloca [80 x i8], align 16               ; 4 uses
  %.not = icmp ugt i64 %2, %1, !dbg !84491
  br i1 %.not, label %bb.b, label %bb.c, !dbg !84491, !prof !2604

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @505, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @506) #54, !dbg !84492
  unreachable, !dbg !84492

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i64 %1, %2, !dbg !84493      ; 9 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.e, !dbg !84494 ; 2 uses
  %i.g = icmp eq i64 %1, %2, !dbg !84495
  %i.h = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.g, %i.h, !dbg !84495
  br i1 %or.cond.i, label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate10ptr_rotateINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.d, !dbg !84495

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -115292150460684697, 115292150460684698) %2, i64 range(i64 -115292150460684697, 115292150460684698) %i.e), !dbg !84496
  %i.i = icmp samesign ult i64 %..i, 4, !dbg !84497
  br i1 %i.i, label %bb.o, label %bb.e, !dbg !84497

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !84498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %0, i64 80, i1 false), !dbg !84499
  br label %.outer, !dbg !84500

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %2, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %2, %bb.e ]
  br label %bb.f, !dbg !84501

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ], !dbg !84502 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !84503
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.06.0.i.i, !dbg !84504 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, ptr noundef nonnull align 16 dereferenceable(80) %i.j, i64 80, i1 false), !dbg !84505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.j, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !84506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %i.d, i64 80, i1 false), !dbg !84507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !84508
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %i.e, !dbg !84501
  br i1 %.not.i.i, label %bb.g, label %bb.h, !dbg !84501

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %2, !dbg !84509
  br label %bb.f, !dbg !84510

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %i.e, !dbg !84511 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !84512
  br i1 %i.m, label %bb.i, label %bb.j, !dbg !84512

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !84513
  %i.n = icmp ugt i64 %.sroa.018.0.i.i.ph, 1, !dbg !84514
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !84514

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph), !dbg !84515
  br label %.outer, !dbg !84515

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.020.029.i.i, !dbg !84516 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %i.o, i64 80, i1 false), !dbg !84517
  %i.p = add i64 %.sroa.020.029.i.i, %2, !dbg !84518
  br label %bb.k, !dbg !84519

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ], !dbg !84520 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !84521
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.06.2.i.i, !dbg !84522 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, ptr noundef nonnull align 16 dereferenceable(80) %i.q, i64 80, i1 false), !dbg !84523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.q, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !84524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !84525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !84526
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %i.e, !dbg !84527
  br i1 %.not28.i.i, label %bb.l, label %bb.m, !dbg !84527

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %2, !dbg !84528
  br label %.backedge, !dbg !84529

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %i.e, !dbg !84530 ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i, !dbg !84531
  br i1 %i.t, label %bb.n, label %.backedge, !dbg !84531

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k, !dbg !84521

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.o, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !84532
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1, !dbg !84533 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph, !dbg !84514
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i, label %.lr.ph.i.i, !dbg !84514

_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !84534
  br label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate10ptr_rotateINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !84535

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %2, %i.e, !dbg !84536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !84537
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2, !dbg !84538 ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p, !dbg !84539

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %i.e, 80, !dbg !84540    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %0, i64 %i.x, i1 false), !dbg !84540
  %i.y = mul nuw nsw i64 %2, 80, !dbg !84541
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %0, ptr nonnull align 16 %i.f, i64 %i.y, i1 false), !dbg !84541
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.w, ptr nonnull align 16 %i.a, i64 %i.x, i1 false), !dbg !84542
  br label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate18ptr_rotate_memmoveINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !84543

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %2, 80, !dbg !84544      ; 2 uses
end_hunk_0
