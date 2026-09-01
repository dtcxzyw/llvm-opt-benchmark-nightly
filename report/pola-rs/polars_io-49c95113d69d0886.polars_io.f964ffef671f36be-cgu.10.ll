Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.10?download=true
inline.NumInlined: 3835
inline.NumDeleted: 2170
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtCslpwjCj2YNBy_9polars_io6ndjson12infer_schemaINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0ENcNtINtNtBc_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0ENtNtNtBa_6traits8iterator8Iterator4foldB4q_NCINvNtNtB2Q_4json5infer19dtypes_to_supertypeBX_E0EB2Q_:bb.a
  store i64 1, ptr %i.g, align 16, !dbg !11373, !alias.scope !11381, !noalias !11382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11383, !noalias !11365
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.m)
          to label %bb.p unwind label %.body.thread7.i.i, !dbg !11384, !noalias !11307

bb.i:                                             ; preds = %_RNCINvNtCslpwjCj2YNBy_9polars_io6ndjson12infer_schemaINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0B6_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, ptr noundef nonnull align 16 dereferenceable(48) %i.n, i64 48, i1 false), !dbg !11386, !noalias !11295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11387, !noalias !11365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !11389, !noalias !11318
  invoke void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype17try_get_supertype(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.k unwind label %bb.j, !dbg !11390, !noalias !11392

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.a) #43
          to label %bb.l unwind label %bb.n, !dbg !11393, !noalias !11394

bb.k:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.a)
          to label %.noexc4.i.i.i.i unwind label %bb.m, !dbg !11393, !noalias !11394

bb.l:                                             ; preds = %bb.m, %bb.j
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.u, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.b) #43
          to label %.body.thread.i.i unwind label %bb.n, !dbg !11383, !noalias !11394

bb.m:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.noexc4.i.i.i.i:                                  ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11393, !noalias !11365
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.b)
          to label %.noexc2.i.i unwind label %.body.thread7.i.i, !dbg !11383, !noalias !11307

.noexc2.i.i:                                      ; preds = %.noexc4.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11383, !noalias !11365
  br label %bb.p, !dbg !11383

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !11395, !noalias !11394
  unreachable, !dbg !11395

.body.thread.i.i.i:                               ; preds = %.body.i.i.i, %bb.e
  %eh.lpad-body4.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %.body.i.i.i ], [ %i.q, %bb.e ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(80) %i.f) #43
          to label %.body.thread.i.i unwind label %bb.o, !dbg !11334, !noalias !11328

bb.o:                                             ; preds = %.body.thread.i.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !11396, !noalias !11328
  unreachable, !dbg !11396

bb.p:                                             ; preds = %.noexc2.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i), !dbg !11397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11397, !noalias !11343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11334, !noalias !11318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11334, !noalias !11318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.i, ptr noundef nonnull align 16 dereferenceable(80) %i.g, i64 80, i1 false), !dbg !11398, !noalias !11295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11399, !noalias !11295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11400, !noalias !11295
  br label %bb.b, !dbg !11302

bb.q:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(80) %i.i) #43
          to label %.body.thread.i.i unwind label %bb.r, !dbg !11308, !noalias !11307

bb.r:                                             ; preds = %.body.thread.i.i, %bb.q
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !11401, !noalias !11307
  unreachable, !dbg !11401

.body.thread.i.i:                                 ; preds = %bb.q, %.body.thread.i.i.i, %bb.l, %.body.thread7.i.i
  %eh.lpad-body6.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.q ], [ %lpad.thr_comm.i.i, %.body.thread7.i.i ], [ %eh.lpad-body4.i.i.i, %.body.thread.i.i.i ], [ %.pn.i.i.i.i.i, %bb.l ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.r, !dbg !11402, !noalias !11307

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %.body.thread.i.i
  resume { ptr, i32 } %eh.lpad-body6.i.i, !dbg !11401

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtCslpwjCj2YNBy_9polars_io6ndjson12infer_schemaINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvB6_8map_foldB5h_B4V_B4V_NcNtB4V_2Ok0NCINvNtNtB2M_4json5infer19dtypes_to_supertypeBN_E0E0EB2M_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11400, !noalias !11295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %i.i, i64 80, i1 false), !dbg !11407, !noalias !11408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11308, !noalias !11295
  call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j), !dbg !11409, !noalias !11307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11412, !noalias !11286
  ret void, !dbg !11413
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtB1N_4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs_0EIB1i_NtNtNtB1N_2io3ipc8IpcFieldEENCB2E_s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4Q_8try_folduNCINvNvB4Q_12try_for_each4callNtNtNtB1N_3ffi9generated10ArrowArrayINtNtNtBc_3ops12control_flow11ControlFlowB8i_ENcNtB8S_5Break0E0B8S_E0IB8T_B8S_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11414 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [80 x i8], align 8          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11415), !dbg !11418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11419), !dbg !11418
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !11421
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !11421 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !11421, !alias.scope !11434, !noalias !11415, !noundef !13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !11439
  %i.e = load i64, ptr %i.d, align 8, !dbg !11439, !alias.scope !11434, !noalias !11415, !noundef !13
  %i.f = icmp ult i64 %i.c, %i.e, !dbg !11421
  br i1 %i.f, label %bb.b, label %bb.h, !dbg !11421

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !11440
  %i.h = add nuw i64 %i.c, 1, !dbg !11441
  store i64 %i.h, ptr %i.b, align 8, !dbg !11441, !alias.scope !11434, !noalias !11415
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !11443, !alias.scope !11434, !noalias !11415, !nonnull !13, !noundef !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11444
  %.val2.i.i.i = load ptr, ptr %i.i, align 8, !dbg !11445, !alias.scope !11434, !noalias !11415, !nonnull !13, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11446
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11447), !dbg !11450
  %i.k = load ptr, ptr %i.g, align 8, !dbg !11453, !alias.scope !11447, !noalias !11461, !nonnull !13, !align !3010, !noundef !13
  %i.l = load ptr, ptr %i.k, align 8, !dbg !11469, !noalias !11477, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !dbg !11478, !noalias !11477
  %i.n = icmp slt i64 %i.m, 0, !dbg !11483
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs0_0CslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !11483

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !11485
  unreachable, !dbg !11485

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs0_0CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.val2.i.i.i, i64 %i.c, !dbg !11486
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i, i64 %i.c, !dbg !11491
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !11503
  %i.r = load ptr, ptr %i.q, align 8, !dbg !11503, !alias.scope !11447, !noalias !11461, !nonnull !13, !align !3010, !noundef !13
  %i.s = load i64, ptr %i.r, align 8, !dbg !11503, !noalias !11477, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !11504
  %i.u = load ptr, ptr %i.t, align 8, !dbg !11504, !alias.scope !11447, !noalias !11461, !nonnull !13, !align !3010, !noundef !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !11505
  %i.w = load ptr, ptr %i.v, align 8, !dbg !11505, !alias.scope !11447, !noalias !11461, !nonnull !13, !align !3010, !noundef !13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !11506
  %i.y = load ptr, ptr %i.x, align 8, !dbg !11506, !alias.scope !11447, !noalias !11461, !nonnull !13, !align !3010, !noundef !13
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !11507
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !11507, !alias.scope !11447, !noalias !11461, !nonnull !13, !align !3010, !noundef !13
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array9get_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noundef nonnull %i.l, i64 noundef %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa), !dbg !11508, !noalias !11509
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !11510, !noalias !11511
  %i.ab = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1, !dbg !11512
  br i1 %i.ab, label %bb.d, label %bb.f, !dbg !11512

bb.d:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs0_0CslpwjCj2YNBy_9polars_io.exit.i.i
  %i.ac = load i64, ptr %3, align 8, !dbg !11517, !range !10855, !alias.scope !11520, !noalias !11523, !noundef !13
  %i.ad = icmp eq i64 %i.ac, 18, !dbg !11517
  br i1 %i.ad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.e, !dbg !11517

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.g, !dbg !11527, !noalias !11529

bb.f:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs0_0CslpwjCj2YNBy_9polars_io.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !dbg !11530, !noalias !11446
  br label %bb.i, !dbg !11531

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !dbg !11532, !noalias !11511
  resume { ptr, i32 } %i.ae, !dbg !11533

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !dbg !11532, !noalias !11511
  br label %bb.i, !dbg !11534

bb.h:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8, !dbg !11535, !alias.scope !11538, !noalias !11419
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtB1D_4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs_0EIB18_NtNtNtB1D_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvBU_12map_try_foldTRNtB1B_13ArrowDataTypeRB43_EINtNtBc_6result6ResultNtNtNtB1D_3ffi9generated10ArrowArrayNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB7I_B6o_EENCB2u_s0_0NCINvXB8_INtB8_12GenericShuntIBS_B3_B8x_EIB63_NtNtBc_7convert10InfallibleB6Y_EEB4v_8try_folduNCINvNvB4v_12try_for_each4callB6o_B8m_NcNtB8m_5Break0E0B8m_E0E0B7H_ECslpwjCj2YNBy_9polars_io.exit, !dbg !11541

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.f
  %storemerge.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ], !dbg !11542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11543, !noalias !11446
  store i64 %storemerge.i.i.i, ptr %0, align 8, !dbg !11544, !alias.scope !11551, !noalias !11419
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.i, i64 80, i1 false), !dbg !11544, !noalias !11419
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtB1D_4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs_0EIB18_NtNtNtB1D_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvBU_12map_try_foldTRNtB1B_13ArrowDataTypeRB43_EINtNtBc_6result6ResultNtNtNtB1D_3ffi9generated10ArrowArrayNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB7I_B6o_EENCB2u_s0_0NCINvXB8_INtB8_12GenericShuntIBS_B3_B8x_EIB63_NtNtBc_7convert10InfallibleB6Y_EEB4v_8try_folduNCINvNvB4v_12try_for_each4callB6o_B8m_NcNtB8m_5Break0E0B8m_E0E0B7H_ECslpwjCj2YNBy_9polars_io.exit, !dbg !11555

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtB1D_4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs_0EIB18_NtNtNtB1D_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvBU_12map_try_foldTRNtB1B_13ArrowDataTypeRB43_EINtNtBc_6result6ResultNtNtNtB1D_3ffi9generated10ArrowArrayNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB7I_B6o_EENCB2u_s0_0NCINvXB8_INtB8_12GenericShuntIBS_B3_B8x_EIB63_NtNtBc_7convert10InfallibleB6Y_EEB4v_8try_folduNCINvNvB4v_12try_for_each4callB6o_B8m_NcNtB8m_5Break0E0B8m_E0E0B7H_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !11556
  ret void, !dbg !11557
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBY_IBY_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB1Q_3vec9into_iter8IntoIterINtB3d_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB39_NtNtNtNtNtB3Z_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB1m_NtNtB58_14parquet_bridge8EncodingEENCINvB3T_16array_to_columnsRB1L_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB7h_8try_folduNCINvNvB7h_12try_for_each4callINtNtNtB58_5write8dyn_iter7DynIterIB8w_NtNtB58_4page4PageB9i_EEINtNtNtBc_3ops12control_flow11ControlFlowBaJ_ENcNtBbK_5Break0E0BbK_E0IBbL_BbK_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11558 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [136 x i8], align 8               ; 13 uses
  %.sroa.49.i = alloca ptr, align 8               ; 5 uses
  %.sroa.710.i = alloca ptr, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !11559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11560), !dbg !11563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11564), !dbg !11563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11566), !dbg !11569
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11574), !dbg !11577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11580, !noalias !11584
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11587), !dbg !11590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11591), !dbg !11594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11597, !noalias !11600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11603), !dbg !11606
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11607), !dbg !11610
  %i.h = load ptr, ptr %1, align 8, !dbg !11613, !alias.scope !11618, !noalias !11621, !nonnull !13, !noundef !13 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11624
  %i.j = load ptr, ptr %i.i, align 8, !dbg !11624, !alias.scope !11618, !noalias !11621, !nonnull !13, !noundef !13
  %i.k = icmp eq ptr %i.h, %i.j, !dbg !11626
  br i1 %i.k, label %bb.g, label %bb.b, !dbg !11630

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !11631
  store ptr %i.l, ptr %1, align 8, !dbg !11634, !alias.scope !11618, !noalias !11621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11635), !dbg !11638
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !11640
  %i.n = load ptr, ptr %i.m, align 8, !dbg !11647, !alias.scope !11648, !noalias !11649, !nonnull !13, !noundef !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11651 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !11651, !alias.scope !11648, !noalias !11649, !nonnull !13, !noundef !13 ; 4 uses
  %i.q = icmp eq ptr %i.p, %i.n, !dbg !11651
  br i1 %i.q, label %bb.g, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i.i.i, !dbg !11654

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !11655
  store ptr %i.r, ptr %i.o, align 8, !dbg !11659, !alias.scope !11648, !noalias !11649
  %.sroa.0.0.copyload7.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !dbg !11660, !noalias !11666 ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload7.i.i.i.i.i.i.i, -9223372036854775808, !dbg !11667
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.g, label %bb.c, !dbg !11670

bb.c:                                             ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !11660
  %.sroa.512.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !11671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i.i.i.i.i.i, i64 16, i1 false), !dbg !11674, !noalias !11600
  store ptr %i.h, ptr %i.e, align 8, !dbg !11671, !noalias !11600
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !11671 ; 4 uses
  store i64 %.sroa.0.0.copyload7.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !dbg !11671, !noalias !11600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11675), !dbg !11678
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !11680
  %i.t = load ptr, ptr %i.s, align 8, !dbg !11684, !alias.scope !11685, !noalias !11686, !nonnull !13, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !11688 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !dbg !11688, !alias.scope !11685, !noalias !11686, !nonnull !13, !noundef !13 ; 4 uses
  %i.w = icmp eq ptr %i.v, %i.t, !dbg !11688
  br i1 %i.w, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i.i.i.i.i, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i, !dbg !11691

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 104, !dbg !11692
  store ptr %i.x, ptr %i.u, align 8, !dbg !11696, !alias.scope !11685, !noalias !11686
  %.sroa.02.0.copyload3.i.i.i.i.i = load i64, ptr %i.v, align 8, !dbg !11697, !noalias !11703 ; 3 uses
  %.not1.i.i.i.i.i = icmp eq i64 %.sroa.02.0.copyload3.i.i.i.i.i, 8, !dbg !11704
  br i1 %.not1.i.i.i.i.i, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i.i.i.i.i, label %bb.f, !dbg !11707

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i, %bb.c
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i unwind label %bb.d, !dbg !11708, !noalias !11600

bb.d:                                             ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i)
          to label %common.resume.i unwind label %bb.e, !dbg !11712, !noalias !11600

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !11708, !noalias !11600
  unreachable, !dbg !11708

common.resume.i:                                  ; preds = %bb.x, %bb.r, %bb.p, %bb.l, %.body.i.i.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.y, %bb.d ], [ %eh.lpad-body.i.i.i, %bb.l ], [ %i.bh, %bb.x ], [ %i.bc, %bb.r ], [ %i.bb, %bb.p ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !11714

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i.i.i.i.i
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i), !dbg !11715, !noalias !11600
  br label %bb.g, !dbg !11717

bb.f:                                             ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i
  %.sroa.74.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !11697 ; 2 uses
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !11718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.514.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.74.0..sroa_idx5.i.i.i.i.i, i64 96, i1 false), !dbg !11721, !noalias !11584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !11722, !noalias !11584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11717, !noalias !11600
  %.sroa.4.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !11718
  store i64 %.sroa.02.0.copyload3.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx13.i.i.i, align 8, !dbg !11718, !noalias !11584
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !11724 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !11726, !alias.scope !11729, !noalias !11732, !nonnull !13, !noundef !13 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !11733
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !11733, !alias.scope !11729, !noalias !11732, !nonnull !13, !noundef !13
  %i.ae = icmp eq ptr %i.ab, %i.ad, !dbg !11735
  br i1 %i.ae, label %bb.h, label %bb.o, !dbg !11739

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i.i.i, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11717, !noalias !11600
  br label %bb.y, !dbg !11740

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !11742 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i unwind label %bb.i, !dbg !11746, !noalias !11584

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body.i.i.i unwind label %bb.j, !dbg !11748, !noalias !11584

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !11746, !noalias !11584
  unreachable, !dbg !11746

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.k, !dbg !11750, !noalias !11584

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !11752

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %i.ag, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 103, !dbg !11753
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !11753, !range !141, !alias.scope !11764, !noalias !11584, !noundef !13
  %i.al = icmp eq i8 %i.ak, -40, !dbg !11779
  br i1 %i.al, label %bb.l, label %common.resume.i, !dbg !11779, !prof !302

bb.l:                                             ; preds = %.body.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 80, !dbg !11780
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %common.resume.i unwind label %bb.n, !dbg !11781, !noalias !11584

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 103, !dbg !11782
  %i.ao = load i8, ptr %i.an, align 1, !dbg !11782, !range !141, !alias.scope !11791, !noalias !11584, !noundef !13
  %i.ap = icmp eq i8 %i.ao, -40, !dbg !11804
  br i1 %i.ap, label %bb.m, label %bb.y, !dbg !11804, !prof !302

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 80, !dbg !11805
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq), !dbg !11806, !noalias !11584
  br label %bb.y, !dbg !11806

bb.n:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !11752, !noalias !11584
  unreachable, !dbg !11752

bb.o:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 1, !dbg !11807
  store ptr %i.as, ptr %i.aa, align 8, !dbg !11810, !alias.scope !11729, !noalias !11732
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !dbg !11811, !noalias !11813, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !11811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11814, !noalias !11825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, i64 24, i1 false), !dbg !11811, !noalias !11832
  %.sroa.714.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11834, !noalias !11835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.714.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.74.0..sroa_idx5.i.i.i.i.i, i64 96, i1 false), !dbg !11811, !noalias !11832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11836, !noalias !11584
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i), !dbg !11837
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.710.i), !dbg !11837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11838), !dbg !11837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11832
  store i64 %.sroa.02.0.copyload3.i.i.i.i.i, ptr %i.b, align 8, !dbg !11833, !noalias !11839
  %.val.i.i = load ptr, ptr %i.g, align 8, !dbg !11833, !noalias !11835, !nonnull !13, !align !3010, !noundef !13
  %i.at = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !dbg !11840, !noalias !11825, !nonnull !13, !noundef !13
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload.i, i64 8, !dbg !11840
  %i.av = load ptr, ptr %i.au, align 8, !dbg !11840, !noalias !11825, !nonnull !13, !align !3010, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11845
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !11845, !noalias !11825, !nonnull !13, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11858
  %i.az = load i64, ptr %i.ay, align 8, !dbg !11858, !noalias !11825, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11859, !noalias !11825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val.i.i, i64 56, i1 false), !dbg !11859, !noalias !11825
  %i.ba = load i8, ptr %i.ab, align 1, !dbg !11860, !range !11861, !noalias !11825, !noundef !13
  invoke void @_RNvNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write14array_to_pages(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noundef nonnull %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.av, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, ptr noundef nonnull align 8 %i.ax, i64 noundef %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, i8 noundef %i.ba)
          to label %bb.q unwind label %bb.p, !dbg !11862, !noalias !11835

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.c) #43
          to label %common.resume.i unwind label %bb.t, !dbg !11863, !noalias !11825

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11864, !noalias !11825
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages16array_to_columnsRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE0CslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.r, !dbg !11865, !noalias !11825

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.s, !dbg !11867, !noalias !11825

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !11865, !noalias !11825
  unreachable, !dbg !11865

bb.t:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !11869, !noalias !11825
  unreachable, !dbg !11869

_RNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages16array_to_columnsRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE0CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.q
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !11870, !noalias !11825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11863, !noalias !11825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11872, !noalias !11835
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !dbg !11873, !noalias !11835 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11873
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !11873, !noalias !11835 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !11873
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !11873, !noalias !11835 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !11873 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11874), !dbg !11873
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !11877
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.u, !dbg !11882

bb.u:                                             ; preds = %_RNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages16array_to_columnsRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE0CslpwjCj2YNBy_9polars_io.exit.i.i
  %i.bf = load i64, ptr %3, align 8, !dbg !11883, !range !10855, !alias.scope !11886, !noalias !11889, !noundef !13
  %i.bg = icmp eq i64 %i.bf, 18, !dbg !11883
  br i1 %i.bg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.v, !dbg !11883

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.x, !dbg !11891, !noalias !11889

bb.w:                                             ; preds = %_RNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages16array_to_columnsRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE0CslpwjCj2YNBy_9polars_io.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.49.i, align 8, !dbg !11893, !alias.scope !11899, !noalias !11900
  br label %bb.z, !dbg !11901

bb.x:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !11902, !noalias !11889
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11902
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !11902, !noalias !11889
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !11902
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !11902, !noalias !11889
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !11902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !11902, !noalias !11835
  br label %common.resume.i, !dbg !11903

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.v, %bb.u
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !11902, !noalias !11889
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11902
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !11902, !noalias !11889
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !11902
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !11902, !noalias !11889
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !11902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !11902, !noalias !11835
  br label %bb.z, !dbg !11904

bb.y:                                             ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11836, !noalias !11584
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_IB4_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB1u_3vec9into_iter8IntoIterINtB2R_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB2N_NtNtNtNtNtB3D_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB10_NtNtB4M_14parquet_bridge8EncodingEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTTRB1p_B3k_EB4E_ERB5N_EINtNtBc_6result6ResultINtNtNtB4M_5write8dyn_iter7DynIterIB7V_NtNtB4M_4page4PageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB9b_EuINtNtNtBc_3ops12control_flow11ControlFlowIBa1_B8g_EENCINvB3x_16array_to_columnsB7z_E0NCINvXB8_INtB8_12GenericShuntINtB79_3MapB3_BaQ_EIB7V_NtNtBc_7convert10InfallibleB9b_EEB6m_8try_folduNCINvNvB6m_12try_for_each4callB8g_BaF_NcNtBaF_5Break0E0BaF_E0E0Ba0_ECslpwjCj2YNBy_9polars_io.exit, !dbg !11905

bb.z:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.w
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.710.i, %bb.w ], [ %.sroa.49.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.w ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !11906, !alias.scope !11899, !noalias !11900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11907, !noalias !11832
  %.sroa.49.i.0..sroa.49.i.0..sroa.49.i.0..sroa.49.0..sroa.49.0..sroa.49.8..i = load ptr, ptr %.sroa.49.i, align 8, !dbg !11908, !alias.scope !11911, !noalias !11914, !noundef !13
  %.sroa.710.i.0..sroa.710.i.0..sroa.710.i.0..sroa.710.0..sroa.710.0..sroa.710.16..i = load ptr, ptr %.sroa.710.i, align 8, !dbg !11908, !alias.scope !11911, !noalias !11914
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i), !dbg !11916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710.i), !dbg !11916
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11917
  store ptr %.sroa.49.i.0..sroa.49.i.0..sroa.49.i.0..sroa.49.0..sroa.49.0..sroa.49.8..i, ptr %i.bi, align 8, !dbg !11917, !alias.scope !11923, !noalias !11564
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11917
  store ptr %.sroa.710.i.0..sroa.710.i.0..sroa.710.i.0..sroa.710.0..sroa.710.0..sroa.710.16..i, ptr %i.bj, align 8, !dbg !11917, !alias.scope !11923, !noalias !11564
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_IB4_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB1u_3vec9into_iter8IntoIterINtB2R_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB2N_NtNtNtNtNtB3D_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB10_NtNtB4M_14parquet_bridge8EncodingEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTTRB1p_B3k_EB4E_ERB5N_EINtNtBc_6result6ResultINtNtNtB4M_5write8dyn_iter7DynIterIB7V_NtNtB4M_4page4PageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB9b_EuINtNtNtBc_3ops12control_flow11ControlFlowIBa1_B8g_EENCINvB3x_16array_to_columnsB7z_E0NCINvXB8_INtB8_12GenericShuntINtB79_3MapB3_BaQ_EIB7V_NtNtBc_7convert10InfallibleB9b_EEB6m_8try_folduNCINvNvB6m_12try_for_each4callB8g_BaF_NcNtBaF_5Break0E0BaF_E0E0Ba0_ECslpwjCj2YNBy_9polars_io.exit, !dbg !11926

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_IB4_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB1u_3vec9into_iter8IntoIterINtB2R_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB2N_NtNtNtNtNtB3D_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB10_NtNtB4M_14parquet_bridge8EncodingEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTTRB1p_B3k_EB4E_ERB5N_EINtNtBc_6result6ResultINtNtNtB4M_5write8dyn_iter7DynIterIB7V_NtNtB4M_4page4PageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB9b_EuINtNtNtBc_3ops12control_flow11ControlFlowIBa1_B8g_EENCINvB3x_16array_to_columnsB7z_E0NCINvXB8_INtB8_12GenericShuntINtB79_3MapB3_BaQ_EIB7V_NtNtBc_7convert10InfallibleB9b_EEB6m_8try_folduNCINvNvB6m_12try_for_each4callB8g_BaF_NcNtBaF_5Break0E0BaF_E0E0Ba0_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.y, %bb.z
  %storemerge.i = phi i64 [ 1, %bb.z ], [ 0, %bb.y ], !dbg !11927
  store i64 %storemerge.i, ptr %0, align 8, !dbg !11927, !alias.scope !11560, !noalias !11564
  ret void, !dbg !11928
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtB8_6cloned6ClonedIBO_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3i_4mmap11mmap_recordNtNtB2r_4mmap13MMapSemaphoreEs2_0EEINtNtNtBc_5slice4iter4IterNtNtNtB3i_2io3ipc8IpcFieldEENCB49_s3_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB6c_8try_folduNCINvNvB6c_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB3i_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB9E_ENcNtBaC_5Break0E0BaC_E0IBaD_BaC_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11929 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.78.i = alloca ptr, align 8               ; 4 uses
  %.sroa.9.i = alloca [31 x i8], align 1          ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !11930
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11931), !dbg !11934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11935), !dbg !11934
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !dbg !11937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11942), !dbg !11945
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11946), !dbg !11949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11952, !noalias !11955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11958, !noalias !11955
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB2W_4mmap11mmap_recordNtNtB25_4mmap13MMapSemaphoreEs2_0EENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !dbg !11959, !noalias !11960
  %i.f = load i8, ptr %i.c, align 8, !dbg !11961, !range !11309, !noalias !11955, !noundef !13
  %.not.i.i.i = icmp eq i8 %i.f, 42, !dbg !11961
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !dbg !11964

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !11965, !noalias !11955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11966, !noalias !11955
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11967 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !11969, !alias.scope !11972, !noalias !11960, !nonnull !13, !noundef !13 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11975
  %i.j = load ptr, ptr %i.i, align 8, !dbg !11975, !alias.scope !11972, !noalias !11960, !nonnull !13, !noundef !13
  %i.k = icmp eq ptr %i.h, %i.j, !dbg !11977
  br i1 %i.k, label %bb.d, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i, !dbg !11981

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11966, !noalias !11955
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i, !dbg !11982

bb.d:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.d), !dbg !11984, !noalias !11960
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i, !dbg !11984

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11984, !noalias !11955
  br label %bb.k, !dbg !11985

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !11986
  store ptr %i.l, ptr %i.g, align 8, !dbg !11989, !alias.scope !11972, !noalias !11960
  %.sroa.0.0.copyload1.i = load i8, ptr %i.d, align 8, !dbg !11990, !noalias !11992 ; 2 uses
  %.sroa.9.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !11990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx2.i, i64 31, i1 false), !dbg !11990, !noalias !11992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11984, !noalias !11955
  %.not.i = icmp eq i8 %.sroa.0.0.copyload1.i, 42, !dbg !11937
  br i1 %.not.i, label %bb.k, label %bb.e, !dbg !11985

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !11993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11993, !noalias !12000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.i, i64 31, i1 false), !dbg !12004, !noalias !12005
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !12006
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.78.i), !dbg !12006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12007), !dbg !12006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12005
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12008), !dbg !12011
  store i8 %.sroa.0.0.copyload1.i, ptr %i.a, align 8, !dbg !11993, !noalias !12012
  %i.n = load ptr, ptr %i.e, align 8, !dbg !12014, !alias.scope !12008, !noalias !12016, !nonnull !13, !align !3010, !noundef !13
  %i.o = load ptr, ptr %i.n, align 8, !dbg !12018, !noalias !12025, !nonnull !13, !noundef !13 ; 2 uses
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !dbg !12026, !noalias !12025
  %i.q = icmp slt i64 %i.p, 0, !dbg !12031
  br i1 %i.q, label %bb.f, label %_RNCINvNtCs8774dFTUdNv_12polars_arrow4mmap11mmap_recordNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs3_0CslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !12031

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !12033
  unreachable, !dbg !12033

_RNCINvNtCs8774dFTUdNv_12polars_arrow4mmap11mmap_recordNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs3_0CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !12034
  %i.s = load ptr, ptr %i.r, align 8, !dbg !12034, !alias.scope !12008, !noalias !12016, !nonnull !13, !align !3010, !noundef !13
  %i.t = load i64, ptr %i.s, align 8, !dbg !12034, !noalias !12025, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !12035
  %i.v = load ptr, ptr %i.u, align 8, !dbg !12035, !alias.scope !12008, !noalias !12016, !nonnull !13, !align !3010, !noundef !13
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !12036
  %i.x = load ptr, ptr %i.w, align 8, !dbg !12036, !alias.scope !12008, !noalias !12016, !nonnull !13, !align !3010, !noundef !13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !12037
  %i.z = load ptr, ptr %i.y, align 8, !dbg !12037, !alias.scope !12008, !noalias !12016, !nonnull !13, !align !3010, !noundef !13
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !12038
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !12038, !alias.scope !12008, !noalias !12016, !nonnull !13, !align !3010, !noundef !13
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array4mmapNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull %i.o, i64 noundef %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab), !dbg !12039, !noalias !12040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12041, !noalias !12000
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !12042, !noalias !12000 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12042
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !12042, !noalias !12000 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12042
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !12042, !noalias !12000 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12043), !dbg !12042
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !12046
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.g, !dbg !12051

bb.g:                                             ; preds = %_RNCINvNtCs8774dFTUdNv_12polars_arrow4mmap11mmap_recordNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs3_0CslpwjCj2YNBy_9polars_io.exit.i.i
  %i.ac = load i64, ptr %3, align 8, !dbg !12052, !range !10855, !alias.scope !12055, !noalias !12058, !noundef !13
  %i.ad = icmp eq i64 %i.ac, 18, !dbg !12052
  br i1 %i.ad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.h, !dbg !12052

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.j, !dbg !12060, !noalias !12062

bb.i:                                             ; preds = %_RNCINvNtCs8774dFTUdNv_12polars_arrow4mmap11mmap_recordNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs3_0CslpwjCj2YNBy_9polars_io.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !12063, !alias.scope !12068, !noalias !12069
  br label %bb.l, !dbg !12070

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !12071, !noalias !12058
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !12071
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !12071, !noalias !12058
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !12071
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !12071, !noalias !12058
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !12071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !12071, !noalias !12000
  resume { ptr, i32 } %i.ae, !dbg !12072

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.h, %bb.g
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !12071, !noalias !12058
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !12071
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !12071, !noalias !12058
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !12071
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !12071, !noalias !12058
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !12071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !12071, !noalias !12000
  br label %bb.l, !dbg !12073

bb.k:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !12074
  store i64 0, ptr %0, align 8, !dbg !12075, !alias.scope !12078, !noalias !11935
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_6cloned6ClonedINtNtB8_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB38_4mmap11mmap_recordNtNtB2h_4mmap13MMapSemaphoreEs2_0EEINtNtNtBc_5slice4iter4IterNtNtNtB38_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB1g_12map_try_foldTNtB36_13ArrowDataTypeRB5p_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB38_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB9s_B7K_EENCB3Z_s3_0NCINvXB8_INtB8_12GenericShuntIB1e_B3_Bah_EIB7p_NtNtBc_7convert10InfallibleB8I_EEB5R_8try_folduNCINvNvB5R_12try_for_each4callB7K_Ba6_NcNtBa6_5Break0E0Ba6_E0E0B9r_ECslpwjCj2YNBy_9polars_io.exit, !dbg !12081

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.i
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.78.i, %bb.i ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.i ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !12082, !alias.scope !12068, !noalias !12069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12083, !noalias !12005
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !12084, !alias.scope !12087, !noalias !12090, !noundef !13
  %.sroa.78.i.0..sroa.78.i.0..sroa.78.i.0..sroa.78.0..sroa.78.0..sroa.78.16..i = load ptr, ptr %.sroa.78.i, align 8, !dbg !12084, !alias.scope !12087, !noalias !12090
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !12092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.78.i), !dbg !12092
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12093
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.af, align 8, !dbg !12093, !alias.scope !12099, !noalias !11935
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12093
  store ptr %.sroa.78.i.0..sroa.78.i.0..sroa.78.i.0..sroa.78.0..sroa.78.0..sroa.78.16..i, ptr %i.ag, align 8, !dbg !12093, !alias.scope !12099, !noalias !11935
  store i64 1, ptr %0, align 8, !dbg !12093, !alias.scope !12099, !noalias !11935
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !12074
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_6cloned6ClonedINtNtB8_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB38_4mmap11mmap_recordNtNtB2h_4mmap13MMapSemaphoreEs2_0EEINtNtNtBc_5slice4iter4IterNtNtNtB38_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB1g_12map_try_foldTNtB36_13ArrowDataTypeRB5p_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB38_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB9s_B7K_EENCB3Z_s3_0NCINvXB8_INtB8_12GenericShuntIB1e_B3_Bah_EIB7p_NtNtBc_7convert10InfallibleB8I_EEB5R_8try_folduNCINvNvB5R_12try_for_each4callB7K_Ba6_NcNtBa6_5Break0E0Ba6_E0E0B9r_ECslpwjCj2YNBy_9polars_io.exit, !dbg !12102

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_6cloned6ClonedINtNtB8_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB38_4mmap11mmap_recordNtNtB2h_4mmap13MMapSemaphoreEs2_0EEINtNtNtBc_5slice4iter4IterNtNtNtB38_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB1g_12map_try_foldTNtB36_13ArrowDataTypeRB5p_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB38_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB9s_B7K_EENCB3Z_s3_0NCINvXB8_INtB8_12GenericShuntIB1e_B3_Bah_EIB7p_NtNtBc_7convert10InfallibleB8I_EEB5R_8try_folduNCINvNvB5R_12try_for_each4callB7K_Ba6_NcNtBa6_5Break0E0Ba6_E0E0B9r_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.k, %bb.l
  ret void, !dbg !12103
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCB2y_s_0EB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12104 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 7 uses
  %i.b = alloca [48 x i8], align 16               ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 16               ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i = alloca [72 x i8], align 8      ; 6 uses
  %i.f = alloca [80 x i8], align 16               ; 4 uses
  %i.g = alloca [160 x i8], align 16              ; 7 uses
  %i.h = alloca [80 x i8], align 16               ; 7 uses
  %i.i = alloca [80 x i8], align 16               ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !12105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12106), !dbg !12109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12110), !dbg !12113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12119, !noalias !12123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.i, ptr noundef nonnull readonly align 16 dereferenceable(80) %2, i64 80, i1 false), !dbg !12128, !noalias !12129
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !12130
  %i.l = load i64, ptr %i.k, align 8, !dbg !12130, !alias.scope !12132, !noalias !12133, !noundef !13
  %i.m = invoke noundef i64 @_RNvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.b unwind label %bb.u, !dbg !12134, !noalias !12133

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.l), !dbg !12135 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0, !dbg !12137
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB5_4TakeINtNtNtBb_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvNtB7_3map8map_foldRB1o_B2S_B2S_NCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype0NCB5u_s_0E0EB5A_.exit, label %.lr.ph.i.i, !dbg !12149

.lr.ph.i.i:                                       ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !12132, !noalias !12133, !nonnull !13, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c, !dbg !12149

bb.c:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.sroa.0.016.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.t ] ; 2 uses
  %i.t = add nuw i64 %.sroa.0.016.i.i, 1, !dbg !12150 ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.016.i.i, !dbg !12156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12162, !noalias !12123
  call void @llvm.experimental.noalias.scope.decl(metadata !12164), !dbg !12162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12167, !noalias !12170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12173, !noalias !12170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.f, ptr noundef nonnull align 16 dereferenceable(80) %i.i, i64 80, i1 false), !dbg !12173, !noalias !12123
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !12174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12175, !noalias !12179
  invoke void @_RNvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5infer(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %.noexc.i.i.i unwind label %.body.i.i.i, !dbg !12175, !noalias !12183

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.v = load i64, ptr %i.e, align 8, !dbg !12184, !range !10855, !noalias !12179, !noundef !13
  %.not.i.i.i.i = icmp eq i64 %i.v, 18, !dbg !12184 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d, !dbg !12187

bb.d:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !dbg !12188, !noalias !12189
  br label %bb.h, !dbg !12190

bb.e:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12191, !noalias !12179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !12193, !noalias !12179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12191, !noalias !12179
  invoke void @_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5fieldNtNtB7_5dtype8DataType16from_arrow_dtype(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype00B9_.exit.i.i.i.i unwind label %bb.f, !dbg !12194, !noalias !12198

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #43
          to label %.body.thread.i.i.i unwind label %bb.g, !dbg !12199, !noalias !12200

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !12203, !noalias !12200
  unreachable, !dbg !12203

_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype00B9_.exit.i.i.i.i: ; preds = %bb.e
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc2.i.i.i unwind label %.body.i.i.i, !dbg !12199, !noalias !12183

.noexc2.i.i.i:                                    ; preds = %_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype00B9_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12204, !noalias !12179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.16..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !12205, !noalias !12189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12206, !noalias !12179
  br label %bb.h, !dbg !12207

.body.i.i.i:                                      ; preds = %_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype00B9_.exit.i.i.i.i, %bb.c
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i, !dbg !12208

bb.h:                                             ; preds = %.noexc2.i.i.i, %bb.d
  %.sroa.0.01.i.i.i = phi i64 [ 0, %.noexc2.i.i.i ], [ 1, %bb.d ], !dbg !12209 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12210, !noalias !12179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.g, ptr noundef nonnull align 16 dereferenceable(80) %i.i, i64 80, i1 false), !dbg !12167, !noalias !12123
  store i64 %.sroa.0.01.i.i.i, ptr %i.o, align 16, !dbg !12167, !noalias !12170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.i.i.i, i64 72, i1 false), !dbg !12167, !noalias !12170
  call void @llvm.experimental.noalias.scope.decl(metadata !12211), !dbg !12167
  call void @llvm.experimental.noalias.scope.decl(metadata !12214), !dbg !12167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12216, !noalias !12219
  %i.y = load i64, ptr %i.g, align 16, !dbg !12221, !range !1601, !alias.scope !12214, !noalias !12224, !noundef !13
  %i.z = trunc nuw i64 %i.y to i1, !dbg !12225
  br i1 %i.z, label %bb.i, label %bb.l, !dbg !12225

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !12226, !noalias !12123
  store i64 1, ptr %i.h, align 16, !dbg !12227, !alias.scope !12234, !noalias !12235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12236, !noalias !12219
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k, !dbg !12237

bb.j:                                             ; preds = %bb.i
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.q), !dbg !12237, !noalias !12133
  br label %bb.t, !dbg !12237

bb.k:                                             ; preds = %bb.i
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx.i.i.i), !dbg !12237, !noalias !12133
  br label %bb.t, !dbg !12237

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, ptr noundef nonnull align 16 dereferenceable(48) %i.r, i64 48, i1 false), !dbg !12239, !noalias !12123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12240, !noalias !12219
  %i.aa = trunc nuw i64 %.sroa.0.01.i.i.i to i1, !dbg !12242
  br i1 %i.aa, label %.noexc5.i.i.i, label %bb.m, !dbg !12242

.noexc5.i.i.i:                                    ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.i.i.i, i64 72, i1 false), !dbg !12244, !noalias !12245
  store i64 1, ptr %i.h, align 16, !dbg !12246, !alias.scope !12234, !noalias !12235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12252, !noalias !12219
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.b), !dbg !12236, !noalias !12133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12236, !noalias !12219
  br label %bb.t, !dbg !12236

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.16..sroa_idx.i.i.i, i64 48, i1 false), !dbg !12253, !noalias !12170
  invoke void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype17try_get_supertype(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.h, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.o unwind label %bb.n, !dbg !12254, !noalias !12256

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.a) #43
          to label %bb.p unwind label %bb.r, !dbg !12252, !noalias !12257

bb.o:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.a)
          to label %.noexc6.i.i.i unwind label %bb.q, !dbg !12252, !noalias !12257

bb.p:                                             ; preds = %bb.q, %bb.n
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.ab, %bb.n ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.b) #43
          to label %.body.thread.i.i unwind label %bb.r, !dbg !12236, !noalias !12257

bb.q:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.noexc6.i.i.i:                                    ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12252, !noalias !12219
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.b), !dbg !12236, !noalias !12133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12236, !noalias !12219
  br label %bb.t, !dbg !12236

bb.r:                                             ; preds = %bb.p, %bb.n
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !12258, !noalias !12257
  unreachable, !dbg !12258

.body.thread.i.i.i:                               ; preds = %.body.i.i.i, %bb.f
  %eh.lpad-body5.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %.body.i.i.i ], [ %i.w, %bb.f ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(80) %i.f) #43
          to label %.body.thread.i.i unwind label %bb.s, !dbg !12208, !noalias !12183

bb.s:                                             ; preds = %.body.thread.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !12259, !noalias !12183
  unreachable, !dbg !12259

bb.t:                                             ; preds = %.noexc6.i.i.i, %.noexc5.i.i.i, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !12208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12208, !noalias !12170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12208, !noalias !12170
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB6k_B52_EEB3U_E0E0ECslpwjCj2YNBy_9polars_io:bb.a
bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !13821
  unreachable, !dbg !13821

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.08.i, 1, !dbg !13822    ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !13825, !range !11176, !noalias !13813, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13826, !noalias !13828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !13831, !noalias !13796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13833, !noalias !13796
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !13826, !noalias !13796
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !13826, !noalias !13796
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !13834, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13837, !noalias !13828
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !13777
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %bb.b, !dbg !13785

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i, %bb.a
  ret void, !dbg !13838
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB69_B52_EEB3U_E0E0ECslpwjCj2YNBy_9polars_io(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13839 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1, !dbg !13840
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECslpwjCj2YNBy_9polars_io.exit, !dbg !13848

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b, !dbg !13848

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13849, !noalias !13853
  call fastcc void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b), !dbg !13849, !noalias !13856
  %i.e = load ptr, ptr %i.b, align 8, !dbg !13859, !noalias !13864, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !13865, !noalias !13856
  %i.g = icmp slt i64 %i.f, 0, !dbg !13868
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i, !dbg !13868

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !13869
  unreachable, !dbg !13869

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.08.i, 1, !dbg !13870    ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !13873, !range !11176, !noalias !13864, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13874, !noalias !13876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !13879, !noalias !13853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13880, !noalias !13853
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !13874, !noalias !13853
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !13874, !noalias !13853
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !13881, !noalias !13883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13884, !noalias !13876
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !13840
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %bb.b, !dbg !13848

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i, %bb.a
  ret void, !dbg !13885
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB1x_10IterBridgeINtNtB8_9enumerate9EnumerateINtNtNtBa_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB1z_16ParallelIterator15drive_unindexedINtNtB1z_3map11MapConsumerINtNtNtB1z_7collect8consumer15CollectConsumerTANtB3A_9LineStatsj2_jEENCB3w_s_0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7g_8for_each4callINtNtNtBc_4sync6atomic6AtomicbENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8X_3VecB8j_E14extend_trustedBN_E0E0EB3G_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !13886 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !13887 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !13887
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13887 ; 3 uses
  %i.a = icmp ult i64 %0, %1, !dbg !13890
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerINtNtNtB2L_7collect8consumer15CollectConsumerTANtB4N_9LineStatsj2_jEENCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB93_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit, !dbg !13898

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !13887
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !13887
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload, !dbg !13898
  %i.b = sub nuw i64 %1, %0, !dbg !13898          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.b, i1 false), !dbg !13899, !noalias !13908
  %i.c = add i64 %i.b, %.sroa.4.0.copyload, !dbg !13898
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerINtNtNtB2L_7collect8consumer15CollectConsumerTANtB4N_9LineStatsj2_jEENCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB93_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit, !dbg !13898

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerINtNtNtB2L_7collect8consumer15CollectConsumerTANtB4N_9LineStatsj2_jEENCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB93_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit: ; preds = %bb.a, %.lr.ph.i
  %.val5.i = phi i64 [ %i.c, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ], !dbg !13917
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !13918, !noalias !13927
  ret void, !dbg !13928
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB1x_10IterBridgeINtNtB8_9enumerate9EnumerateINtNtNtBa_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB1z_16ParallelIterator15drive_unindexedINtNtB1z_3map11MapConsumerNtNtB1z_6extend15ListVecConsumerNCB3w_s_0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6F_8for_each4callINtNtNtBc_4sync6atomic6AtomicbENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8m_3VecB7I_E14extend_trustedBN_E0E0EB3G_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !13929 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !13930 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !13930
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13930 ; 3 uses
  %i.a = icmp ult i64 %0, %1, !dbg !13933
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerNtNtB2L_6extend15ListVecConsumerNCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8s_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit, !dbg !13941

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !13930
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !13930
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload, !dbg !13941
  %i.b = sub nuw i64 %1, %0, !dbg !13941          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.b, i1 false), !dbg !13942, !noalias !13951
  %i.c = add i64 %i.b, %.sroa.4.0.copyload, !dbg !13941
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerNtNtB2L_6extend15ListVecConsumerNCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8s_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit, !dbg !13941

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerNtNtB2L_6extend15ListVecConsumerNCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8s_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit: ; preds = %bb.a, %.lr.ph.i
  %.val5.i = phi i64 [ %i.c, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ], !dbg !13960
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !13961, !noalias !13970
  ret void, !dbg !13971
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs2_NtCs4OpKpA9X0GC_15crossbeam_queue11array_queueINtB1x_10ArrayQueueNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency8IoSampleE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callINtB1x_4SlotB2A_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecB4G_E14extend_trustedBN_E0E0EB2G_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !13972 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !13973 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !13973
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13973 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !13973
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !13973 ; 5 uses
  %i.a = icmp ult i64 %0, %1, !dbg !13976
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency8IoSampleEuNCNvMs2_B28_INtB28_10ArrayQueueB2X_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecB25_E14extend_trustedINtB1B_3MapB3_B3V_EE0E0E0EB33_.exit, !dbg !13984

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0, !dbg !13984
  %xtraiter = and i64 %i.b, 3, !dbg !13984        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13984
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !13984

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.f, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], !dbg !13985 ; 2 uses
  %.sroa.0.011.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nuw i64 %.sroa.0.011.i.prol, 1, !dbg !13985 ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.sroa.6.0.copyload, i64 %i.c, !dbg !13988
  store i64 %.sroa.0.011.i.prol, ptr %i.e, align 8, !dbg !13997, !noalias !14000
  %i.f = add i64 %i.c, 1, !dbg !14009             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !13984 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !13984
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !13984, !llvm.loop !14012

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1, !dbg !13984
  %i.h = icmp ugt i64 %i.g, -4, !dbg !13984
  br i1 %i.h, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency8IoSampleEuNCNvMs2_B28_INtB28_10ArrayQueueB2X_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecB25_E14extend_trustedINtB1B_3MapB3_B3V_EE0E0E0EB33_.exit, label %.lr.ph.i, !dbg !13984

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !13985 ; 5 uses
  %.sroa.0.011.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.j = add nuw i64 %.sroa.0.011.i, 1, !dbg !13985
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !13988
  store i64 %.sroa.0.011.i, ptr %i.k, align 8, !dbg !13997, !noalias !14000
  %i.l = add nuw i64 %.sroa.0.011.i, 2, !dbg !13985
  %i.m = getelementptr [48 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !13988
  %i.n = getelementptr i8, ptr %i.m, i64 48, !dbg !13988
  store i64 %i.j, ptr %i.n, align 8, !dbg !13997, !noalias !14000
  %i.o = add nuw i64 %.sroa.0.011.i, 3, !dbg !13985
  %i.p = getelementptr [48 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !13988
  %i.q = getelementptr i8, ptr %i.p, i64 96, !dbg !13988
  store i64 %i.l, ptr %i.q, align 8, !dbg !13997, !noalias !14000
  %i.r = add nuw i64 %.sroa.0.011.i, 4, !dbg !13985 ; 2 uses
  %i.s = getelementptr [48 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !13988
  %i.t = getelementptr i8, ptr %i.s, i64 144, !dbg !13988
  store i64 %i.o, ptr %i.t, align 8, !dbg !13997, !noalias !14000
  %i.u = add i64 %i.i, 4, !dbg !14009             ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.r, %1, !dbg !13976
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency8IoSampleEuNCNvMs2_B28_INtB28_10ArrayQueueB2X_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecB25_E14extend_trustedINtB1B_3MapB3_B3V_EE0E0E0EB33_.exit, label %.lr.ph.i, !dbg !13984

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency8IoSampleEuNCNvMs2_B28_INtB28_10ArrayQueueB2X_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecB25_E14extend_trustedINtB1B_3MapB3_B3V_EE0E0E0EB33_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.u, %.lr.ph.i ], !dbg !14013
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !14014, !noalias !14023
  ret void, !dbg !14024
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB1w_6BufferNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !14025 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !14026, !nonnull !13, !noundef !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14026
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14026
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0), !dbg !14029
  %.val5.i = add i64 %.sroa.4.0.copyload, %i.a, !dbg !14029
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !14036, !noalias !14045
  ret void, !dbg !14048
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB1y_10UnionArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array15ArrowArrayChildE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3P_8try_folduNCINvNvB3P_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7h_ENcNtB87_5Break0E0B87_E0IB88_B87_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14049 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.6.i.i = alloca [48 x i8], align 8        ; 6 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.73.i = alloca ptr, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14050 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14051), !dbg !14054
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14055), !dbg !14054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14064), !dbg !14067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14068), !dbg !14067
  %i.g = load i64, ptr %i.d, align 8, !dbg !14070, !alias.scope !14072, !noalias !14077, !noundef !13 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !14078, !alias.scope !14079, !noalias !14080, !noundef !13
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !14070
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !14067

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !14081
  store i64 %i.j, ptr %i.d, align 8, !dbg !14084, !alias.scope !14085, !noalias !14051
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !14086
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !14086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14087), !dbg !14086
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !14090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14093, !noalias !14094
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !14093, !noalias !14094, !nonnull !13, !align !3010, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14095, !noalias !14094
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array15ArrowArrayChildNtB4_13ArrowArrayRef5childCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val.i.i, i64 noundef %i.g), !dbg !14103, !noalias !14104
  %i.k = load i64, ptr %i.b, align 8, !dbg !14105, !range !10855, !noalias !14104, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, 18, !dbg !14105
  br i1 %.not.i.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i, !dbg !14108

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i: ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !14109
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !14109, !noalias !14104
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14110 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14117, !noalias !14104
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !14110
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !14110, !alias.scope !14118, !noalias !14094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14121, !noalias !14094
  %.sroa.4.0.copyload3.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !dbg !14090, !noalias !14094
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14090
  %.sroa.5.0.copyload5.i.i = load ptr, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !dbg !14090, !noalias !14094
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !14090, !noalias !14094
  br label %bb.c, !dbg !14122

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14095, !noalias !14104
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !14126, !noalias !14094
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.c, align 8, !dbg !14090, !noalias !14094 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14121, !noalias !14094
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14090
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !14090, !noalias !14094 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14090
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !14090, !noalias !14094 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !14090, !noalias !14094
  call void @llvm.experimental.noalias.scope.decl(metadata !14128), !dbg !14090
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, 18, !dbg !14131
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !14122

bb.c:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i
  %.sroa.5.0.copyload10.i.i = phi ptr [ %.sroa.5.0.copyload5.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload9.i.i = phi ptr [ %.sroa.4.0.copyload3.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload8.i.i = phi i64 [ %i.k, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %i.l = load i64, ptr %3, align 8, !dbg !14132, !range !10855, !alias.scope !14135, !noalias !14138, !noundef !13
  %i.m = icmp eq i64 %i.l, 18, !dbg !14132
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.d, !dbg !14132

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.f, !dbg !14140, !noalias !14138

bb.e:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !14142, !alias.scope !14147, !noalias !14148
  br label %bb.g, !dbg !14149

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !14150, !noalias !14138
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !14150
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !14150, !noalias !14138
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !14150
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !14150, !noalias !14138
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !14150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !14150, !noalias !14151
  resume { ptr, i32 } %i.n, !dbg !14152

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !14150, !noalias !14138
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !14150
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !14150, !noalias !14138
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !14150
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !14150, !noalias !14138
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !14150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !14150, !noalias !14151
  br label %bb.g, !dbg !14153

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !14154, !alias.scope !14147, !noalias !14148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14155, !noalias !14094
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !14155
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !14156, !alias.scope !14158, !noalias !14161, !noundef !13
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !14156, !alias.scope !14158, !noalias !14161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !14163
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !14163
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14164
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.o, align 8, !dbg !14164, !alias.scope !14168, !noalias !14055
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14164
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.p, align 8, !dbg !14164, !alias.scope !14168, !noalias !14055
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !14171

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !14172
  store i64 %storemerge.i, ptr %0, align 8, !dbg !14172, !alias.scope !14051, !noalias !14055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14173
  ret void, !dbg !14174
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB1y_10UnionArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array18InternalArrowArrayE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3S_8try_folduNCINvNvB3S_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7k_ENcNtB8a_5Break0E0B8a_E0IB8b_B8a_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14175 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.6.i.i = alloca [48 x i8], align 8        ; 6 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.73.i = alloca ptr, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14176 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14177), !dbg !14180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14181), !dbg !14180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14190), !dbg !14193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14194), !dbg !14193
  %i.g = load i64, ptr %i.d, align 8, !dbg !14196, !alias.scope !14198, !noalias !14203, !noundef !13 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !14204, !alias.scope !14205, !noalias !14206, !noundef !13
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !14196
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !14193

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !14207
  store i64 %i.j, ptr %i.d, align 8, !dbg !14210, !alias.scope !14211, !noalias !14177
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !14212
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !14212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14213), !dbg !14212
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !14216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14219, !noalias !14220
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !14219, !noalias !14220, !nonnull !13, !align !3010, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14221, !noalias !14220
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayNtB4_13ArrowArrayRef5childCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i, i64 noundef %i.g), !dbg !14224, !noalias !14225
  %i.k = load i64, ptr %i.b, align 8, !dbg !14226, !range !10855, !noalias !14225, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, 18, !dbg !14226
  br i1 %.not.i.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i, !dbg !14229

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i: ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !14230
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !14230, !noalias !14225
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14231 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14238, !noalias !14225
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !14231
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !14231, !alias.scope !14239, !noalias !14220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14242, !noalias !14220
  %.sroa.4.0.copyload3.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !dbg !14216, !noalias !14220
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14216
  %.sroa.5.0.copyload5.i.i = load ptr, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !dbg !14216, !noalias !14220
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !14216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !14216, !noalias !14220
  br label %bb.c, !dbg !14243

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14221, !noalias !14225
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !14247, !noalias !14220
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.c, align 8, !dbg !14216, !noalias !14220 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14242, !noalias !14220
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14216
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !14216, !noalias !14220 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14216
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !14216, !noalias !14220 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !14216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !14216, !noalias !14220
  call void @llvm.experimental.noalias.scope.decl(metadata !14249), !dbg !14216
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, 18, !dbg !14252
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !14243

bb.c:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i
  %.sroa.5.0.copyload10.i.i = phi ptr [ %.sroa.5.0.copyload5.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload9.i.i = phi ptr [ %.sroa.4.0.copyload3.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload8.i.i = phi i64 [ %i.k, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %i.l = load i64, ptr %3, align 8, !dbg !14253, !range !10855, !alias.scope !14256, !noalias !14259, !noundef !13
  %i.m = icmp eq i64 %i.l, 18, !dbg !14253
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.d, !dbg !14253

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.f, !dbg !14261, !noalias !14259

bb.e:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !14263, !alias.scope !14268, !noalias !14269
  br label %bb.g, !dbg !14270

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !14271, !noalias !14259
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !14271
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !14271, !noalias !14259
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !14271
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !14271, !noalias !14259
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !14271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !14271, !noalias !14272
  resume { ptr, i32 } %i.n, !dbg !14273

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !14271, !noalias !14259
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !14271
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !14271, !noalias !14259
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !14271
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !14271, !noalias !14259
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !14271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !14271, !noalias !14272
  br label %bb.g, !dbg !14274

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !14275, !alias.scope !14268, !noalias !14269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14276, !noalias !14220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !14276
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !14277, !alias.scope !14279, !noalias !14282, !noundef !13
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !14277, !alias.scope !14279, !noalias !14282
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !14284
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !14284
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14285
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.o, align 8, !dbg !14285, !alias.scope !14289, !noalias !14181
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14285
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.p, align 8, !dbg !14285, !alias.scope !14289, !noalias !14181
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !14292

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !14293
  store i64 %storemerge.i, ptr %0, align 8, !dbg !14293, !alias.scope !14177, !noalias !14181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14294
  ret void, !dbg !14295
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_3ffiNtB1y_11StructArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array15ArrowArrayChildE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3S_8try_folduNCINvNvB3S_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7k_ENcNtB8a_5Break0E0B8a_E0IB8b_B8a_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14296 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.73.i = alloca ptr, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14297 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14298), !dbg !14301
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14302), !dbg !14301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !14304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14311), !dbg !14314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14315), !dbg !14314
  %i.g = load i64, ptr %i.d, align 8, !dbg !14317, !alias.scope !14319, !noalias !14324, !noundef !13 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !14325, !alias.scope !14326, !noalias !14327, !noundef !13
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !14317
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !14314

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !14328
  store i64 %i.j, ptr %i.d, align 8, !dbg !14331, !alias.scope !14332, !noalias !14298
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !14333
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !14333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14334), !dbg !14333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14337, !noalias !14340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14341), !dbg !14337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14344), !dbg !14337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14346, !noalias !14340
  %i.k = load ptr, ptr %1, align 8, !dbg !14346, !alias.scope !14344, !noalias !14354, !nonnull !13, !align !3010, !noundef !13
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array15ArrowArrayChildNtB4_13ArrowArrayRef5childCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, i64 noundef %i.g), !dbg !14355, !noalias !14356
  %i.l = load i64, ptr %i.b, align 8, !dbg !14357, !range !10855, !noalias !14356, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.l, 18, !dbg !14357
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !14360

bb.c:                                             ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !14361
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !14361, !noalias !14356
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14369, !noalias !14356
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !14362
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !14362, !alias.scope !14341, !noalias !14370
  br label %bb.p, !dbg !14371

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14346, !noalias !14356
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !14372, !noalias !14370
  %i.m = load i64, ptr %i.c, align 8, !dbg !14374, !noalias !14340 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.m, 18, !dbg !14374
  br i1 %.not13.i.i.i, label %bb.e, label %bb.p, !dbg !14377

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14378
  %i.o = load ptr, ptr %i.n, align 8, !dbg !14378, !alias.scope !14344, !noalias !14354, !nonnull !13, !align !3010, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14378
  %i.q = load ptr, ptr %i.p, align 8, !dbg !14378, !alias.scope !14344, !noalias !14354, !nonnull !13, !align !3010, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14379
  %i.s = load ptr, ptr %i.r, align 8, !dbg !14379, !alias.scope !14341, !noalias !14370, !nonnull !13, !noundef !13 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14379
  %i.u = load ptr, ptr %i.t, align 8, !dbg !14379, !alias.scope !14341, !noalias !14370, !nonnull !13, !align !3010, !noundef !13 ; 9 uses
  %.val.i.i.i = load i64, ptr %i.q, align 8, !dbg !14380, !noalias !14382 ; 2 uses
  %.val14.i.i.i = load i64, ptr %i.o, align 8, !dbg !14380, !noalias !14382 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14383), !dbg !14380
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !14386
  %i.w = load ptr, ptr %i.v, align 8, !dbg !14386, !invariant.load !13, !alias.scope !14383, !noalias !14382, !nonnull !13
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.f, !dbg !14390, !noalias !14391

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslpwjCj2YNBy_9polars_io(ptr nonnull %i.s, ptr nonnull readonly align 8 dereferenceable(192) %i.u) #43
          to label %common.resume.i.i unwind label %bb.o, !dbg !14392, !noalias !14382

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %.val14.i.i.i, %.val.i.i.i, !dbg !14393
  %.not.i.i.i.i = icmp ult i64 %i.x, %i.z, !dbg !14386
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.h, !dbg !14386

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !14394
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !14394, !invariant.load !13, !alias.scope !14383, !noalias !14382, !nonnull !13
  %i.ac = invoke { ptr, ptr } %i.ab(ptr noundef nonnull %i.s, i64 noundef %.val14.i.i.i, i64 noundef %.val.i.i.i)
          to label %bb.i unwind label %bb.f, !dbg !14395, !noalias !14391 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0, !dbg !14394 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1, !dbg !14394 ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !dbg !14396, !invariant.load !13, !alias.scope !14383, !noalias !14382 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null, !dbg !14396
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !14396

bb.j:                                             ; preds = %bb.i
  invoke void %i.af(ptr noundef nonnull %i.s)
          to label %bb.k unwind label %bb.m, !dbg !14396, !noalias !14391

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !14398
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !14398, !range !2211, !invariant.load !13, !alias.scope !14383, !noalias !14382 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0, !dbg !14402
  br i1 %i.ai, label %bb.r, label %bb.l, !dbg !14402

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !14398
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !14403, !range !2222, !invariant.load !13, !alias.scope !14383, !noalias !14382
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #38, !dbg !14406, !noalias !14391
  br label %bb.r, !dbg !14411

bb.m:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !14412
  %i.an = load i64, ptr %i.am, align 8, !dbg !14412, !range !2211, !invariant.load !13, !alias.scope !14383, !noalias !14382 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0, !dbg !14416
  br i1 %i.ao, label %common.resume.i.i, label %bb.n, !dbg !14416

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !14412
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !14417, !range !2222, !invariant.load !13, !alias.scope !14383, !noalias !14382
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #38, !dbg !14420, !noalias !14391
  br label %common.resume.i.i, !dbg !14425

common.resume.i.i:                                ; preds = %bb.s, %bb.n, %bb.m, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !14426

bb.o:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !14427, !noalias !14391
  unreachable, !dbg !14427

bb.p:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14371, !noalias !14340
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14428
  %i.as = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !dbg !14428, !noalias !14340 ; 3 uses
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !14428 ; 2 uses
  %i.at = load i64, ptr %3, align 8, !dbg !14429, !range !10855, !alias.scope !14434, !noalias !14437, !noundef !13
  %i.au = icmp eq i64 %i.at, 18, !dbg !14429
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.q, !dbg !14429

bb.q:                                             ; preds = %bb.p
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.s, !dbg !14441, !noalias !14437

bb.r:                                             ; preds = %bb.l, %bb.k, %bb.g
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], [ %i.u, %bb.g ], !dbg !14443 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ad, %bb.l ], [ %i.ad, %bb.k ], [ %i.s, %bb.g ], !dbg !14443 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14371, !noalias !14340
  call void @llvm.experimental.noalias.scope.decl(metadata !14444), !dbg !14428
  store ptr %.sroa.0.0.i.i.i.i, ptr %.sroa.4.i, align 8, !dbg !14445, !alias.scope !14450, !noalias !14451
  br label %bb.t, !dbg !14452

bb.s:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !14453, !noalias !14437
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !14453
  %i.aw = extractelement <2 x ptr> %i.as, i64 0, !dbg !14453
  store ptr %i.aw, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !14453, !noalias !14437
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !14453
  %i.ax = extractelement <2 x ptr> %i.as, i64 1, !dbg !14453
  store ptr %i.ax, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !14453, !noalias !14437
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !14453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !14453, !noalias !14340
  br label %common.resume.i.i, !dbg !14454

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.q, %bb.p
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !14453, !noalias !14437
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !14453
  store <2 x ptr> %i.as, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !14453, !noalias !14437
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !14453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !14453, !noalias !14340
  br label %bb.t, !dbg !14455

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.r
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.r ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %bb.r ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !14456, !alias.scope !14450, !noalias !14451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14457, !noalias !14340
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !14458, !alias.scope !14460, !noalias !14463, !noundef !13
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !14458, !alias.scope !14460, !noalias !14463
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !14465
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !14465
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14466
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.ay, align 8, !dbg !14466, !alias.scope !14470, !noalias !14302
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14466
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.az, align 8, !dbg !14466, !alias.scope !14470, !noalias !14302
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !14473

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %bb.t
  %storemerge.i = phi i64 [ 1, %bb.t ], [ 0, %bb.a ], !dbg !14474
  store i64 %storemerge.i, ptr %0, align 8, !dbg !14474, !alias.scope !14298, !noalias !14302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14475
  ret void, !dbg !14476
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_3ffiNtB1y_11StructArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array18InternalArrowArrayE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3V_8try_folduNCINvNvB3V_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7n_ENcNtB8d_5Break0E0B8d_E0IB8e_B8d_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14477 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.73.i = alloca ptr, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14478 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14479), !dbg !14482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14483), !dbg !14482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !14485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14492), !dbg !14495
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14496), !dbg !14495
  %i.g = load i64, ptr %i.d, align 8, !dbg !14498, !alias.scope !14500, !noalias !14505, !noundef !13 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !14506, !alias.scope !14507, !noalias !14508, !noundef !13
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !14498
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !14495

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !14509
  store i64 %i.j, ptr %i.d, align 8, !dbg !14512, !alias.scope !14513, !noalias !14479
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !14514
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !14514
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14515), !dbg !14514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14518, !noalias !14521
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14522), !dbg !14518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14525), !dbg !14518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14527, !noalias !14521
  %i.k = load ptr, ptr %1, align 8, !dbg !14527, !alias.scope !14525, !noalias !14530, !nonnull !13, !align !3010, !noundef !13
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayNtB4_13ArrowArrayRef5childCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, i64 noundef %i.g), !dbg !14531, !noalias !14532
  %i.l = load i64, ptr %i.b, align 8, !dbg !14533, !range !10855, !noalias !14532, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.l, 18, !dbg !14533
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !14536

bb.c:                                             ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !14537
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !14537, !noalias !14532
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14545, !noalias !14532
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !14538
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !14538, !alias.scope !14522, !noalias !14546
  br label %bb.p, !dbg !14547

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14527, !noalias !14532
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !14548, !noalias !14546
  %i.m = load i64, ptr %i.c, align 8, !dbg !14550, !noalias !14521 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.m, 18, !dbg !14550
  br i1 %.not13.i.i.i, label %bb.e, label %bb.p, !dbg !14553

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14554
  %i.o = load ptr, ptr %i.n, align 8, !dbg !14554, !alias.scope !14525, !noalias !14530, !nonnull !13, !align !3010, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14554
  %i.q = load ptr, ptr %i.p, align 8, !dbg !14554, !alias.scope !14525, !noalias !14530, !nonnull !13, !align !3010, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14555
  %i.s = load ptr, ptr %i.r, align 8, !dbg !14555, !alias.scope !14522, !noalias !14546, !nonnull !13, !noundef !13 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14555
  %i.u = load ptr, ptr %i.t, align 8, !dbg !14555, !alias.scope !14522, !noalias !14546, !nonnull !13, !align !3010, !noundef !13 ; 9 uses
  %.val.i.i.i = load i64, ptr %i.q, align 8, !dbg !14556, !noalias !14558 ; 2 uses
  %.val14.i.i.i = load i64, ptr %i.o, align 8, !dbg !14556, !noalias !14558 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14559), !dbg !14556
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !14562
  %i.w = load ptr, ptr %i.v, align 8, !dbg !14562, !invariant.load !13, !alias.scope !14559, !noalias !14558, !nonnull !13
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.f, !dbg !14565, !noalias !14566

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslpwjCj2YNBy_9polars_io(ptr nonnull %i.s, ptr nonnull readonly align 8 dereferenceable(192) %i.u) #43
          to label %common.resume.i.i unwind label %bb.o, !dbg !14567, !noalias !14558

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %.val14.i.i.i, %.val.i.i.i, !dbg !14568
  %.not.i.i.i.i = icmp ult i64 %i.x, %i.z, !dbg !14562
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.h, !dbg !14562

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !14569
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !14569, !invariant.load !13, !alias.scope !14559, !noalias !14558, !nonnull !13
  %i.ac = invoke { ptr, ptr } %i.ab(ptr noundef nonnull %i.s, i64 noundef %.val14.i.i.i, i64 noundef %.val.i.i.i)
          to label %bb.i unwind label %bb.f, !dbg !14570, !noalias !14566 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0, !dbg !14569 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1, !dbg !14569 ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !dbg !14571, !invariant.load !13, !alias.scope !14559, !noalias !14558 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null, !dbg !14571
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !14571

bb.j:                                             ; preds = %bb.i
  invoke void %i.af(ptr noundef nonnull %i.s)
          to label %bb.k unwind label %bb.m, !dbg !14571, !noalias !14566

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !14573
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !14573, !range !2211, !invariant.load !13, !alias.scope !14559, !noalias !14558 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0, !dbg !14577
  br i1 %i.ai, label %bb.r, label %bb.l, !dbg !14577

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !14573
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !14578, !range !2222, !invariant.load !13, !alias.scope !14559, !noalias !14558
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #38, !dbg !14581, !noalias !14566
  br label %bb.r, !dbg !14586

bb.m:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !14587
  %i.an = load i64, ptr %i.am, align 8, !dbg !14587, !range !2211, !invariant.load !13, !alias.scope !14559, !noalias !14558 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0, !dbg !14591
  br i1 %i.ao, label %common.resume.i.i, label %bb.n, !dbg !14591

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !14587
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !14592, !range !2222, !invariant.load !13, !alias.scope !14559, !noalias !14558
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #38, !dbg !14595, !noalias !14566
  br label %common.resume.i.i, !dbg !14600

common.resume.i.i:                                ; preds = %bb.s, %bb.n, %bb.m, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !14601

bb.o:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !14602, !noalias !14566
  unreachable, !dbg !14602

bb.p:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14547, !noalias !14521
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14603
  %i.as = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !dbg !14603, !noalias !14521 ; 3 uses
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !14603 ; 2 uses
  %i.at = load i64, ptr %3, align 8, !dbg !14604, !range !10855, !alias.scope !14609, !noalias !14612, !noundef !13
  %i.au = icmp eq i64 %i.at, 18, !dbg !14604
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.q, !dbg !14604

bb.q:                                             ; preds = %bb.p
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.s, !dbg !14616, !noalias !14612

bb.r:                                             ; preds = %bb.l, %bb.k, %bb.g
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], [ %i.u, %bb.g ], !dbg !14618 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ad, %bb.l ], [ %i.ad, %bb.k ], [ %i.s, %bb.g ], !dbg !14618 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14547, !noalias !14521
  call void @llvm.experimental.noalias.scope.decl(metadata !14619), !dbg !14603
  store ptr %.sroa.0.0.i.i.i.i, ptr %.sroa.4.i, align 8, !dbg !14620, !alias.scope !14625, !noalias !14626
  br label %bb.t, !dbg !14627

bb.s:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !14628, !noalias !14612
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !14628
  %i.aw = extractelement <2 x ptr> %i.as, i64 0, !dbg !14628
  store ptr %i.aw, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !14628, !noalias !14612
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !14628
  %i.ax = extractelement <2 x ptr> %i.as, i64 1, !dbg !14628
  store ptr %i.ax, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !14628, !noalias !14612
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !14628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !14628, !noalias !14521
  br label %common.resume.i.i, !dbg !14629

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.q, %bb.p
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !14628, !noalias !14612
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !14628
  store <2 x ptr> %i.as, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !14628, !noalias !14612
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !14628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !14628, !noalias !14521
  br label %bb.t, !dbg !14630

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.r
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.r ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %bb.r ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !14631, !alias.scope !14625, !noalias !14626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14632, !noalias !14521
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !14633, !alias.scope !14635, !noalias !14638, !noundef !13
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !14633, !alias.scope !14635, !noalias !14638
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !14640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !14640
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14641
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.ay, align 8, !dbg !14641, !alias.scope !14645, !noalias !14483
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14641
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.az, align 8, !dbg !14641, !alias.scope !14645, !noalias !14483
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !14648

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %bb.t
  %storemerge.i = phi i64 [ 1, %bb.t ], [ 0, %bb.a ], !dbg !14649
  store i64 %storemerge.i, ptr %0, align 8, !dbg !14649, !alias.scope !14479, !noalias !14483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14650
  ret void, !dbg !14651
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionPhEKj0_ENCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBX_IBY_NtNtB22_9generated10ArrowArrayKB1R_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4t_8for_each4callPNtNtBc_3ffi6c_voidNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Y_3VecB5w_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !14652 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14653), !dbg !14656
  %.sroa.6.16.copyload.i = load ptr, ptr %2, align 8, !dbg !14657, !alias.scope !14653, !nonnull !13, !noundef !13
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14657
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !dbg !14657, !alias.scope !14653
  store i64 %.sroa.8.16.copyload.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !14672, !noalias !14690
  ret void, !dbg !14694
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionPhEKj1_ENCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBX_IBY_NtNtB22_9generated10ArrowArrayKB1R_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4t_8for_each4callPNtNtBc_3ffi6c_voidNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Y_3VecB5w_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !14695 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !dbg !14696 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14696
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14696 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14696
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14696
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14696
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14696
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14697), !dbg !14700
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !dbg !14701, !alias.scope !14697, !noalias !14709 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14701
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !dbg !14701, !alias.scope !14697, !noalias !14709 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload, !dbg !14711
  tail call void @llvm.assume(i1 %i.a), !dbg !14717
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload, !dbg !14720
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKB1j_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6d_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.preheader.i, !dbg !14720

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14701
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !dbg !14701, !alias.scope !14697, !noalias !14709
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0, !dbg !14721
  tail call void @llvm.assume(i1 %i.b), !dbg !14731
  %i.c = trunc nuw i64 %.sroa.5.0.copyload to i1, !dbg !14732
  %..i.i.i.i.i.us.i = select i1 %i.c, ptr %.sroa.6.0.copyload, ptr null, !dbg !14744
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i, !dbg !14745
  store ptr %..i.i.i.i.i.us.i, ptr %i.d, align 8, !dbg !14752, !noalias !14755
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = add i64 %.sroa.8.16.copyload.i, 1, !dbg !14769
  br label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKB1j_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6d_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, !dbg !14720

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKB1j_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6d_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val3.i.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ], !dbg !14772
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !14773, !noalias !14786
  ret void, !dbg !14787
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionPhEKj1_ENCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBX_INtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtB22_9generated10ArrowArrayEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB58_8for_each4callPNtNtBc_3ffi6c_voidNCINvMsj_B3R_INtB3R_3VecB6b_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !14788 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !dbg !14789 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14789
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14789 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14789
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14789
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14789
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14789
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14790), !dbg !14793
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !dbg !14794, !alias.scope !14790, !noalias !14802 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14794
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !dbg !14794, !alias.scope !14790, !noalias !14802 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload, !dbg !14804
  tail call void @llvm.assume(i1 %i.a), !dbg !14809
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload, !dbg !14812
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_INtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtB3b_9generated10ArrowArrayEE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_B50_INtB50_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.preheader.i, !dbg !14812

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14794
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !dbg !14794, !alias.scope !14790, !noalias !14802
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0, !dbg !14813
  tail call void @llvm.assume(i1 %i.b), !dbg !14821
  %i.c = trunc nuw i64 %.sroa.5.0.copyload to i1, !dbg !14822
  %..i.i.i.i.i.us.i = select i1 %i.c, ptr %.sroa.6.0.copyload, ptr null, !dbg !14830
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i, !dbg !14831
  store ptr %..i.i.i.i.i.us.i, ptr %i.d, align 8, !dbg !14838, !noalias !14841
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = add i64 %.sroa.8.16.copyload.i, 1, !dbg !14855
  br label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_INtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtB3b_9generated10ArrowArrayEE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_B50_INtB50_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, !dbg !14812

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_INtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtB3b_9generated10ArrowArrayEE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_B50_INtB50_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val3.i.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ], !dbg !14858
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !14859, !noalias !14872
  ret void, !dbg !14873
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionPhEKj2_ENCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBX_IBY_NtNtB22_9generated10ArrowArrayKj0_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callPNtNtBc_3ffi6c_voidNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5X_3VecB5v_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !14874 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14875), !dbg !14878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14879), !dbg !14878
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14881 ; 3 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !dbg !14888, !alias.scope !14879, !noalias !14875 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14888
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !dbg !14888, !alias.scope !14879, !noalias !14875 ; 4 uses
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14888
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !dbg !14888, !alias.scope !14879, !noalias !14875 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14890), !dbg !14893
  %i.b = load i64, ptr %0, align 8, !dbg !14894, !alias.scope !14899, !noalias !14900, !noundef !13 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14902
  %i.d = load i64, ptr %i.c, align 8, !dbg !14902, !alias.scope !14899, !noalias !14900, !noundef !13 ; 4 uses
  %i.e = icmp ule i64 %i.b, %i.d, !dbg !14894
  tail call void @llvm.assume(i1 %i.e), !dbg !14903
  %.not6.i.i = icmp eq i64 %i.b, %i.d, !dbg !14906
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKj0_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6c_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.i.preheader, !dbg !14906

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.f = sub i64 %i.d, %i.b, !dbg !14906          ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 4, !dbg !14906
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader7, label %vector.ph, !dbg !14906

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.f, -4                       ; 4 uses
  %i.g = add i64 %.sroa.8.16.copyload.i, %n.vec   ; 2 uses
  %i.h = add i64 %i.b, %n.vec
  %i.i = getelementptr [8 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i
  br label %vector.body, !dbg !14906

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = add nuw i64 %i.b, %index                 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.j, !dbg !14907
  %i.l = getelementptr [16 x i8], ptr %i.a, i64 %i.j, !dbg !14907
  %i.m = getelementptr i8, ptr %i.l, i64 32, !dbg !14907
  %wide.vec = load <4 x i64>, ptr %i.k, align 8, !dbg !14915, !alias.scope !14875, !noalias !14922 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>, !dbg !14915
  %strided.vec2 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>, !dbg !14915
  %i.n = inttoptr <2 x i64> %strided.vec2 to <2 x ptr>, !dbg !14915
  %wide.vec3 = load <4 x i64>, ptr %i.m, align 8, !dbg !14915, !alias.scope !14875, !noalias !14922 ; 2 uses
  %strided.vec4 = shufflevector <4 x i64> %wide.vec3, <4 x i64> poison, <2 x i32> <i32 0, i32 2>, !dbg !14915
  %strided.vec5 = shufflevector <4 x i64> %wide.vec3, <4 x i64> poison, <2 x i32> <i32 1, i32 3>, !dbg !14915
  %i.o = inttoptr <2 x i64> %strided.vec5 to <2 x ptr>, !dbg !14915
  %i.p = trunc nuw <2 x i64> %strided.vec to <2 x i1>, !dbg !14925
  %i.q = trunc nuw <2 x i64> %strided.vec4 to <2 x i1>, !dbg !14925
  %i.r = select <2 x i1> %i.p, <2 x ptr> %i.n, <2 x ptr> splat (ptr null), !dbg !14933
  %i.s = select <2 x i1> %i.q, <2 x ptr> %i.o, <2 x ptr> splat (ptr null), !dbg !14933
  %i.t = getelementptr [8 x i8], ptr %i.i, i64 %index, !dbg !14934 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !14941
  store <2 x ptr> %i.r, ptr %i.t, align 8, !dbg !14941, !noalias !14944
  store <2 x ptr> %i.s, ptr %i.u, align 8, !dbg !14941, !noalias !14944
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !14906
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !14906, !llvm.loop !14953

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec, !dbg !14906
  br i1 %cmp.n, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKj0_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6c_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.i.preheader7, !dbg !14906

.lr.ph.i.i.preheader7:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.8.16.copyload.i, %.lr.ph.i.i.preheader ], [ %i.g, %middle.block ]
  %.ph8 = phi i64 [ %i.b, %.lr.ph.i.i.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph.i.i, !dbg !14906

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader7, %.lr.ph.i.i
  %i.w = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader7 ], !dbg !14956 ; 2 uses
  %i.x = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.ph8, %.lr.ph.i.i.preheader7 ] ; 3 uses
  %i.y = add nuw nsw i64 %i.x, 1, !dbg !14956     ; 2 uses
  %i.z = icmp ult i64 %i.x, 2, !dbg !14962
  tail call void @llvm.assume(i1 %i.z), !dbg !14963
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x, !dbg !14907 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !14915, !range !1601, !alias.scope !14875, !noalias !14922, !noundef !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !14915
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !14915, !alias.scope !14875, !noalias !14922
  %i.ae = trunc nuw i64 %i.ab to i1, !dbg !14925
  %..i.i.i.i.i.i = select i1 %i.ae, ptr %i.ad, ptr null, !dbg !14933
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.16.copyload.i, i64 %i.w, !dbg !14934
  store ptr %..i.i.i.i.i.i, ptr %i.af, align 8, !dbg !14941, !noalias !14944
  %i.ag = add i64 %i.w, 1, !dbg !14964            ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, %i.d, !dbg !14906
  br i1 %.not.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKj0_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6c_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.i, !dbg !14906, !llvm.loop !14967

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKj0_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6c_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.a
  %.val3.i.i = phi i64 [ %.sroa.8.16.copyload.i, %bb.a ], [ %i.g, %middle.block ], [ %i.ag, %.lr.ph.i.i ], !dbg !14968
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !14969, !noalias !14982
  ret void, !dbg !14983
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionPhEKj2_ENCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBX_IBY_NtNtB22_9generated10ArrowArrayKj1_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callPNtNtBc_3ffi6c_voidNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5X_3VecB5v_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !14984 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14985), !dbg !14988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14989), !dbg !14988
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14991 ; 3 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !dbg !14998, !alias.scope !14989, !noalias !14985 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14998
end_hunk_1
