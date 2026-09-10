Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.12?download=true
inline.NumInlined: 7821
inline.NumDeleted: 2854
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18iceberg_sink_state12__python_implNtB4_16IcebergSinkState19into_sink_state_obj:bb.a
bb.i:                                             ; preds = %bb.h
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !89074
  %.sroa.29.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !89075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.29.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.0..sroa_idx.i.i, i64 56, i1 false), !dbg !89074, !noalias !89056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89076, !noalias !89052
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !89075
  store ptr %.sroa.06.0.copyload.i.i, ptr %i.m, align 8, !dbg !89075, !alias.scope !89057, !noalias !89056
  store i64 1, ptr %0, align 8, !dbg !89075, !alias.scope !89057, !noalias !89056
  br label %bb.m, !dbg !89065

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !89076, !noalias !89052
  store ptr %.sroa.06.0.copyload.i.i, ptr %i.b, align 8, !dbg !89077, !noalias !89052
  invoke void @_RINvMsq_NtCsbm5zPlkZccl_4pyo38instanceINtB6_2PyNtNtNtB8_5types3any5PyAnyE4calluECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b)
          to label %bb.l unwind label %bb.k, !dbg !89078, !noalias !89056

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.06.0.copyload.i.i) #46, !dbg !89079, !noalias !89052
  br label %bb.e, !dbg !89080

bb.l:                                             ; preds = %bb.j
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.06.0.copyload.i.i) #46, !dbg !89081, !noalias !89052
  br label %bb.m, !dbg !89065

bb.m:                                             ; preds = %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !89068, !noalias !89052
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils23python_convert_registry21PythonConvertRegistryECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(144) %i.c)
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18iceberg_sink_state12__python_implNtBX_16IcebergSinkState19into_sink_state_obj0INtNtCscgRAwXFJnXP_4core6result6ResultINtNtB7_8instance2PyNtNtNtB7_5types3any5PyAnyENtNtB7_3err5PyErrEEB13_.exit unwind label %bb.p, !dbg !89068, !noalias !89050

bb.n:                                             ; preds = %bb.o, %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !89082, !noalias !89058
  unreachable, !dbg !89082

bb.o:                                             ; preds = %.split.i.i, %bb.c
  %.pn1216.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %.split.i.i ], [ %.pn.i.i, %bb.c ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18iceberg_sink_state16IcebergSinkStateEBO_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.d) #49
          to label %.body.i unwind label %bb.n, !dbg !89065, !noalias !89058

bb.p:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !89083

.body.i:                                          ; preds = %bb.p, %bb.o, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.p ], [ %.pn.i.i, %bb.c ], [ %.pn1216.i.i, %bb.o ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %.thread.i unwind label %bb.q, !dbg !89084, !noalias !89050

bb.q:                                             ; preds = %bb.r, %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !89085, !noalias !89049
  unreachable, !dbg !89085

.thread.i:                                        ; preds = %bb.r, %.body.i
  %.pn3.i = phi { ptr, i32 } [ %i.r, %bb.r ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn3.i, !dbg !89085

bb.r:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18iceberg_sink_state16IcebergSinkStateEBO_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.f)
          to label %.thread.i unwind label %bb.q, !dbg !89086, !noalias !89049

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18iceberg_sink_state12__python_implNtBX_16IcebergSinkState19into_sink_state_obj0INtNtCscgRAwXFJnXP_4core6result6ResultINtNtB7_8instance2PyNtNtNtB7_5types3any5PyAnyENtNtB7_3err5PyErrEEB13_.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !89068, !noalias !89052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !89087, !noalias !89050
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.e), !dbg !89088, !noalias !89050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !89083, !noalias !89050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !89089
  ret void, !dbg !89090
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_irNtB2_15ExprToIRContext15new_with_fields(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89091 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !89170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !89171
  call void @_RNvNtCsfcROwRM8ZtH_11polars_plan9constants24get_pl_structfields_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b), !dbg !89171
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 23, !dbg !89172 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !dbg !89172, !range !2840, !alias.scope !89156, !noundef !2568 ; 3 uses
  %i.f = icmp ugt i8 %i.e, -41, !dbg !89173
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !89173

bb.b:                                             ; preds = %bb.a
  %i.g = add i8 %i.e, 64, !dbg !89174
  %i.h = tail call i8 @llvm.umin.i8(i8 %i.g, i8 24), !dbg !89175
  %.sroa.0.0.i.i = zext nneg i8 %i.h to i64, !dbg !89175
  br label %bb.f, !dbg !89176

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !dbg !89177, !alias.scope !89156, !noundef !2568
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !89178
  %i.k = load i64, ptr %i.j, align 8, !dbg !89178, !alias.scope !89156, !noundef !2568
  br label %bb.f, !dbg !89179

bb.d:                                             ; preds = %bb.k, %bb.j, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load i8, ptr %i.d, align 1, !dbg !89180, !range !2840, !alias.scope !89157, !noundef !2568
  %i.n = icmp eq i8 %i.m, -40, !dbg !89181
  br i1 %i.n, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit, !dbg !89181, !prof !2604

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.r, !dbg !89182

bb.f:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.k, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !89183
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.c ], [ %i.b, %bb.b ], !dbg !89184
  %i.o = invoke noundef align 16 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i)
          to label %bb.g unwind label %bb.d, !dbg !89185 ; 4 uses

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq ptr %i.o, null, !dbg !89186
  br i1 %.not, label %bb.i, label %bb.h, !dbg !89187

bb.h:                                             ; preds = %bb.g
  %i.p = load i8, ptr %i.o, align 16, !dbg !89188, !range !2904, !noundef !2568
  %i.q = icmp eq i8 %i.p, 28, !dbg !89189
  br i1 %i.q, label %bb.j, label %bb.k, !dbg !89189, !prof !2644

bb.i:                                             ; preds = %bb.g
  store i64 -9223372036854775808, ptr %i.c, align 8, !dbg !89190
  br label %bb.m, !dbg !89190

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !89191
  %i.s = load ptr, ptr %i.r, align 16, !dbg !89191, !nonnull !2568, !noundef !2568 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !89192
  %i.u = load i64, ptr %i.t, align 8, !dbg !89192, !noundef !2568
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.s, i64 %i.u, !dbg !89193
  invoke void @_RINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB6_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorNtNtBZ_5field5FieldE9from_iterINtNtNtB20_8adapters6cloned6ClonedINtNtNtB22_5slice4iter4IterB2T_EEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noundef nonnull %i.s, ptr noundef nonnull %i.v)
          to label %bb.l unwind label %bb.d, !dbg !89194

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @414, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @557) #51
          to label %bb.o unwind label %bb.d, !dbg !89195

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !89196
  %.pre = load i8, ptr %i.d, align 1, !dbg !89197, !range !2840, !alias.scope !89168
  br label %bb.m, !dbg !89198

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.w = phi i8 [ %.pre, %bb.l ], [ %i.e, %bb.i ], !dbg !89197
  %i.x = icmp eq i8 %i.w, -40, !dbg !89199
  br i1 %i.x, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit5, !dbg !89199, !prof !2604

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit5 unwind label %bb.p, !dbg !89200

bb.o:                                             ; preds = %bb.k
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load i64, ptr %i.c, align 8, !dbg !89201, !range !2846, !alias.scope !89169, !noundef !2568
  %i.aa = icmp eq i64 %i.z, -9223372036854775808, !dbg !89201
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit, label %bb.q, !dbg !89201

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.r, !dbg !89202

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit5: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !89203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !89204
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !89205
  store ptr %1, ptr %i.ab, align 8, !dbg !89205
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !89205
  store ptr %2, ptr %i.ac, align 8, !dbg !89205
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !89205
  store i8 0, ptr %i.ad, align 8, !dbg !89205
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !89205
  store i8 1, ptr %i.ae, align 1, !dbg !89205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !89206
  ret void, !dbg !89207

bb.r:                                             ; preds = %bb.q, %bb.e
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !89208
  unreachable, !dbg !89208

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.p, %bb.q, %bb.d, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.y, %bb.q ], [ %i.y, %bb.p ]
  resume { ptr, i32 } %.pn, !dbg !89208
}

; Function Attrs: nonlazybind uwtable
define range(i48 4295491584, 4307877888) i48 @_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7stringsNtB2_16IRStringFunction16function_options(ptr noalias noundef readonly align 16 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89209 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !89219, !range !2928, !noundef !2568
  switch i8 %i.a, label %default.unreachable244 [
    i8 0, label %bb.i
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.i
    i8 5, label %bb.e
    i8 6, label %bb.e
    i8 7, label %bb.i
    i8 8, label %bb.i
    i8 9, label %bb.f
    i8 10, label %bb.i
    i8 11, label %bb.i
    i8 12, label %bb.i
    i8 13, label %bb.i
    i8 14, label %bb.i
    i8 15, label %bb.i
    i8 16, label %bb.g
    i8 17, label %bb.i
    i8 18, label %bb.i
    i8 19, label %bb.i
    i8 20, label %bb.i
    i8 21, label %bb.i
    i8 22, label %bb.i
    i8 23, label %bb.i
    i8 24, label %bb.i
    i8 25, label %bb.i
    i8 26, label %bb.i
    i8 27, label %bb.i
    i8 28, label %bb.e
    i8 29, label %bb.i
    i8 30, label %bb.i
    i8 31, label %bb.i
    i8 32, label %bb.i
    i8 33, label %bb.i
    i8 34, label %bb.i
    i8 35, label %bb.i
    i8 36, label %bb.h
    i8 37, label %bb.i
    i8 38, label %bb.i
    i8 39, label %bb.i
    i8 40, label %bb.i
    i8 41, label %bb.i
    i8 42, label %bb.i
    i8 43, label %bb.i
    i8 44, label %bb.i
    i8 45, label %bb.i
    i8 46, label %bb.i
    i8 47, label %bb.i
  ], !dbg !89220

default.unreachable244:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.i, !dbg !89221

bb.c:                                             ; preds = %bb.a
  br label %bb.i, !dbg !89222

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef i8 @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertypeNtB2_14SuperTypeFlagsNtNtCscgRAwXFJnXP_4core7default7Default7default(), !dbg !89223
  br label %bb.i, !dbg !89224

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = tail call noundef i8 @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertypeNtB2_14SuperTypeFlagsNtNtCscgRAwXFJnXP_4core7default7Default7default(), !dbg !89225
  br label %bb.i, !dbg !89226

bb.f:                                             ; preds = %bb.a
  %i.d = tail call noundef i8 @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertypeNtB2_14SuperTypeFlagsNtNtCscgRAwXFJnXP_4core7default7Default7default(), !dbg !89227
  br label %bb.i, !dbg !89228

bb.g:                                             ; preds = %bb.a
  %i.e = tail call noundef i8 @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertypeNtB2_14SuperTypeFlagsNtNtCscgRAwXFJnXP_4core7default7Default7default(), !dbg !89229
  br label %bb.i, !dbg !89230

bb.h:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 87, !dbg !89231
  %i.g = load i8, ptr %i.f, align 1, !dbg !89231, !range !2902, !noundef !2568
  %.not = icmp eq i8 %i.g, -38, !dbg !89231
  %spec.select = select i1 %.not, i32 65664, i32 65728, !dbg !89232
  br label %bb.i, !dbg !89232

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.44.0 = phi i32 [ 65728, %bb.a ], [ 65732, %bb.b ], [ 65544, %bb.c ], [ 65728, %bb.d ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.f ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.g ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.e ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ %spec.select, %bb.h ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], [ 65728, %bb.a ], !dbg !89233
  %.sroa.40.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.b, %bb.d ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ %i.d, %bb.f ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ %i.e, %bb.g ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ %i.c, %bb.e ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], !dbg !89233
  %.sroa.0.0 = phi i8 [ 2, %bb.a ], [ 2, %bb.b ], [ 2, %bb.c ], [ 1, %bb.d ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 1, %bb.f ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 1, %bb.g ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 1, %bb.e ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.h ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], !dbg !89233
  %.sroa.44.0.insert.ext = zext nneg i32 %.sroa.44.0 to i48, !dbg !89234
  %.sroa.44.0.insert.shift = shl nuw nsw i48 %.sroa.44.0.insert.ext, 16, !dbg !89234
  %.sroa.40.0.insert.ext = zext i8 %.sroa.40.0 to i48, !dbg !89234
  %.sroa.40.0.insert.shift = shl nuw nsw i48 %.sroa.40.0.insert.ext, 8, !dbg !89234
  %.sroa.40.0.insert.insert = or disjoint i48 %.sroa.40.0.insert.shift, %.sroa.44.0.insert.shift, !dbg !89234
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i48, !dbg !89234
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.40.0.insert.insert, %.sroa.0.0.insert.ext, !dbg !89234
  ret i48 %.sroa.0.0.insert.insert, !dbg !89234
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7stringsNtB2_16IRStringFunction9get_field(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(address) dereferenceable(80) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !89235 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [48 x i8], align 16               ; 5 uses
  %i.c = alloca [48 x i8], align 16               ; 5 uses
  %i.d = alloca [48 x i8], align 16               ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 5 uses
  %i.f = alloca [48 x i8], align 16               ; 4 uses
  %i.g = alloca [48 x i8], align 16               ; 5 uses
  %i.h = alloca [48 x i8], align 16               ; 5 uses
  %i.i = alloca [48 x i8], align 16               ; 4 uses
  %i.j = alloca [48 x i8], align 16               ; 4 uses
  %i.k = alloca [48 x i8], align 16               ; 6 uses
  %i.l = alloca [48 x i8], align 16               ; 5 uses
  %i.m = alloca [48 x i8], align 16               ; 5 uses
  %i.n = alloca [48 x i8], align 16               ; 5 uses
  %i.o = alloca [48 x i8], align 16               ; 5 uses
  %i.p = alloca [48 x i8], align 16               ; 4 uses
  %i.q = alloca [48 x i8], align 16               ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [48 x i8], align 16               ; 4 uses
  %i.t = alloca [48 x i8], align 16               ; 4 uses
  %i.u = alloca [48 x i8], align 16               ; 4 uses
  %i.v = alloca [48 x i8], align 16               ; 4 uses
  %i.w = alloca [48 x i8], align 16               ; 4 uses
  %i.x = alloca [48 x i8], align 16               ; 7 uses
  %i.y = alloca [48 x i8], align 16               ; 5 uses
  %i.z = alloca [48 x i8], align 16               ; 4 uses
  %i.aa = alloca [48 x i8], align 16              ; 5 uses
  %i.ab = alloca [48 x i8], align 16              ; 5 uses
  %i.ac = alloca [48 x i8], align 16              ; 4 uses
  %i.ad = alloca [48 x i8], align 16              ; 4 uses
  %i.ae = alloca [48 x i8], align 16              ; 4 uses
  %i.af = alloca [48 x i8], align 16              ; 4 uses
  %i.ag = alloca [48 x i8], align 16              ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 38 uses
  store ptr %2, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %3, ptr %i.ai, align 8
  %i.aj = load i8, ptr %1, align 16, !dbg !89360, !range !2928, !noundef !2568
  switch i8 %i.aj, label %default.unreachable38 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.p
    i8 13, label %bb.q
    i8 14, label %bb.r
    i8 15, label %bb.s
    i8 16, label %bb.t
    i8 17, label %bb.u
    i8 18, label %bb.v
    i8 19, label %bb.w
    i8 20, label %bb.w
    i8 21, label %bb.q
    i8 22, label %bb.q
    i8 23, label %bb.q
    i8 24, label %bb.x
    i8 25, label %bb.y
    i8 26, label %bb.z
    i8 27, label %bb.aa
    i8 28, label %bb.f
    i8 29, label %bb.q
    i8 30, label %bb.q
    i8 31, label %bb.q
    i8 32, label %bb.q
    i8 33, label %bb.q
    i8 34, label %bb.ab
    i8 35, label %bb.ac
    i8 36, label %bb.ad
    i8 37, label %bb.ae
    i8 38, label %bb.ai
    i8 39, label %bb.am
    i8 40, label %bb.an
    i8 41, label %bb.q
    i8 42, label %bb.w
    i8 43, label %bb.ao
    i8 44, label %bb.ap
    i8 45, label %bb.aq
    i8 46, label %bb.au
    i8 47, label %bb.ay
  ], !dbg !89361

default.unreachable38:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !89362
  store i8 15, ptr %i.ag, align 16, !dbg !89362
  call void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper10with_dtype(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(48) %i.ag), !dbg !89363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !89364
  br label %bb.az, !dbg !89364
end_hunk_0
