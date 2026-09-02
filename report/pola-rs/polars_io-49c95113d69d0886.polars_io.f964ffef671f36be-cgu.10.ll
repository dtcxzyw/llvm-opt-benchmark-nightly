Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.10?download=true
inline.NumInlined: 3835
inline.NumDeleted: 2170
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtCslpwjCj2YNBy_9polars_io6ndjson12infer_schemaINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0ENcNtINtNtBc_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0ENtNtNtBa_6traits8iterator8Iterator4foldB4q_NCINvNtNtB2Q_4json5infer19dtypes_to_supertypeBX_E0EB2Q_:bb.a
  store i64 1, ptr %i.g, align 16, !dbg !12549, !alias.scope !12519, !noalias !12520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12550, !noalias !12516
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.m)
          to label %bb.p unwind label %.body.thread7.i.i, !dbg !12551, !noalias !12504

bb.i:                                             ; preds = %_RNCINvNtCslpwjCj2YNBy_9polars_io6ndjson12infer_schemaINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0B6_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, ptr noundef nonnull align 16 dereferenceable(48) %i.n, i64 48, i1 false), !dbg !12552, !noalias !12502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12553, !noalias !12516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !12554, !noalias !12506
  invoke void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype17try_get_supertype(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.k unwind label %bb.j, !dbg !12555, !noalias !12522

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.a) #43
          to label %bb.l unwind label %bb.n, !dbg !12556, !noalias !12523

bb.k:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.a)
          to label %.noexc4.i.i.i.i unwind label %bb.m, !dbg !12556, !noalias !12523

bb.l:                                             ; preds = %bb.m, %bb.j
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.u, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.b) #43
          to label %.body.thread.i.i unwind label %bb.n, !dbg !12550, !noalias !12523

bb.m:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.noexc4.i.i.i.i:                                  ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12556, !noalias !12516
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.b)
          to label %.noexc2.i.i unwind label %.body.thread7.i.i, !dbg !12550, !noalias !12504

.noexc2.i.i:                                      ; preds = %.noexc4.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12550, !noalias !12516
  br label %bb.p, !dbg !12550

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !12557, !noalias !12523
  unreachable, !dbg !12557

.body.thread.i.i.i:                               ; preds = %.body.i.i.i, %bb.e
  %eh.lpad-body4.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %.body.i.i.i ], [ %i.q, %bb.e ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(80) %i.f) #43
          to label %.body.thread.i.i unwind label %bb.o, !dbg !12539, !noalias !12507

bb.o:                                             ; preds = %.body.thread.i.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !12558, !noalias !12507
  unreachable, !dbg !12558

bb.p:                                             ; preds = %.noexc2.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i), !dbg !12559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12559, !noalias !12512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12539, !noalias !12506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12539, !noalias !12506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.i, ptr noundef nonnull align 16 dereferenceable(80) %i.g, i64 80, i1 false), !dbg !12560, !noalias !12502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12561, !noalias !12502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12562, !noalias !12502
  br label %bb.b, !dbg !12528

bb.q:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(80) %i.i) #43
          to label %.body.thread.i.i unwind label %bb.r, !dbg !12531, !noalias !12504

bb.r:                                             ; preds = %.body.thread.i.i, %bb.q
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !12563, !noalias !12504
  unreachable, !dbg !12563

.body.thread.i.i:                                 ; preds = %bb.q, %.body.thread.i.i.i, %bb.l, %.body.thread7.i.i
  %eh.lpad-body6.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.q ], [ %lpad.thr_comm.i.i, %.body.thread7.i.i ], [ %eh.lpad-body4.i.i.i, %.body.thread.i.i.i ], [ %.pn.i.i.i.i.i, %bb.l ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.r, !dbg !12564, !noalias !12504

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %.body.thread.i.i
  resume { ptr, i32 } %eh.lpad-body6.i.i, !dbg !12563

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtCslpwjCj2YNBy_9polars_io6ndjson12infer_schemaINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEE0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvB6_8map_foldB5h_B4V_B4V_NcNtB4V_2Ok0NCINvNtNtB2M_4json5infer19dtypes_to_supertypeBN_E0E0EB2M_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12562, !noalias !12502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %i.i, i64 80, i1 false), !dbg !12565, !noalias !12524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12531, !noalias !12502
  call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j), !dbg !12566, !noalias !12504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12567, !noalias !12500
  ret void, !dbg !12568
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtB1N_4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs_0EIB1i_NtNtNtB1N_2io3ipc8IpcFieldEENCB2E_s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4Q_8try_folduNCINvNvB4Q_12try_for_each4callNtNtNtB1N_3ffi9generated10ArrowArrayINtNtNtBc_3ops12control_flow11ControlFlowB8i_ENcNtB8S_5Break0E0B8S_E0IB8T_B8S_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12569 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [80 x i8], align 8          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12649), !dbg !12667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12650), !dbg !12667
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !12668
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !12668 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !12668, !alias.scope !12651, !noalias !12649, !noundef !1359 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !12669
  %i.e = load i64, ptr %i.d, align 8, !dbg !12669, !alias.scope !12651, !noalias !12649, !noundef !1359
  %i.f = icmp ult i64 %i.c, %i.e, !dbg !12668
  br i1 %i.f, label %bb.b, label %bb.h, !dbg !12668

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !12670
  %i.h = add nuw i64 %i.c, 1, !dbg !12671
  store i64 %i.h, ptr %i.b, align 8, !dbg !12671, !alias.scope !12651, !noalias !12649
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !12672, !alias.scope !12651, !noalias !12649, !nonnull !1359, !noundef !1359
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12673
  %.val2.i.i.i = load ptr, ptr %i.i, align 8, !dbg !12674, !alias.scope !12651, !noalias !12649, !nonnull !1359, !noundef !1359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12652
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12653), !dbg !12675
  %i.k = load ptr, ptr %i.g, align 8, !dbg !12676, !alias.scope !12653, !noalias !12654, !nonnull !1359, !align !1595, !noundef !1359
  %i.l = load ptr, ptr %i.k, align 8, !dbg !12677, !noalias !12658, !nonnull !1359, !noundef !1359 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !dbg !12678, !noalias !12658
  %i.n = icmp slt i64 %i.m, 0, !dbg !12679
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs0_0CslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !12679

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !12680
  unreachable, !dbg !12680

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs0_0CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.val2.i.i.i, i64 %i.c, !dbg !12681
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i, i64 %i.c, !dbg !12682
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !12683
  %i.r = load ptr, ptr %i.q, align 8, !dbg !12683, !alias.scope !12653, !noalias !12654, !nonnull !1359, !align !1595, !noundef !1359
  %i.s = load i64, ptr %i.r, align 8, !dbg !12683, !noalias !12658, !noundef !1359
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !12684
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12684, !alias.scope !12653, !noalias !12654, !nonnull !1359, !align !1595, !noundef !1359
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !12685
  %i.w = load ptr, ptr %i.v, align 8, !dbg !12685, !alias.scope !12653, !noalias !12654, !nonnull !1359, !align !1595, !noundef !1359
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !12686
  %i.y = load ptr, ptr %i.x, align 8, !dbg !12686, !alias.scope !12653, !noalias !12654, !nonnull !1359, !align !1595, !noundef !1359
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !12687
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !12687, !alias.scope !12653, !noalias !12654, !nonnull !1359, !align !1595, !noundef !1359
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array9get_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noundef nonnull %i.l, i64 noundef %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa), !dbg !12688, !noalias !12660
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !12689, !noalias !12661
  %i.ab = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1, !dbg !12690
  br i1 %i.ab, label %bb.d, label %bb.f, !dbg !12690

bb.d:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs0_0CslpwjCj2YNBy_9polars_io.exit.i.i
  %i.ac = load i64, ptr %3, align 8, !dbg !12691, !range !1769, !alias.scope !12662, !noalias !12663, !noundef !1359
  %i.ad = icmp eq i64 %i.ac, 18, !dbg !12691
  br i1 %i.ad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.e, !dbg !12691

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.g, !dbg !12692, !noalias !12664

bb.f:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs0_0CslpwjCj2YNBy_9polars_io.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !dbg !12693, !noalias !12652
  br label %bb.i, !dbg !12694

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !dbg !12695, !noalias !12661
  resume { ptr, i32 } %i.ae, !dbg !12696

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !dbg !12695, !noalias !12661
  br label %bb.i, !dbg !12697

bb.h:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8, !dbg !12698, !alias.scope !12665, !noalias !12650
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtB1D_4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs_0EIB18_NtNtNtB1D_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvBU_12map_try_foldTRNtB1B_13ArrowDataTypeRB43_EINtNtBc_6result6ResultNtNtNtB1D_3ffi9generated10ArrowArrayNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB7I_B6o_EENCB2u_s0_0NCINvXB8_INtB8_12GenericShuntIBS_B3_B8x_EIB63_NtNtBc_7convert10InfallibleB6Y_EEB4v_8try_folduNCINvNvB4v_12try_for_each4callB6o_B8m_NcNtB8m_5Break0E0B8m_E0E0B7H_ECslpwjCj2YNBy_9polars_io.exit, !dbg !12699

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.f
  %storemerge.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ], !dbg !12700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12701, !noalias !12652
  store i64 %storemerge.i.i.i, ptr %0, align 8, !dbg !12702, !alias.scope !12666, !noalias !12650
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.i, i64 80, i1 false), !dbg !12702, !noalias !12650
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtB1D_4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs_0EIB18_NtNtNtB1D_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvBU_12map_try_foldTRNtB1B_13ArrowDataTypeRB43_EINtNtBc_6result6ResultNtNtNtB1D_3ffi9generated10ArrowArrayNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB7I_B6o_EENCB2u_s0_0NCINvXB8_INtB8_12GenericShuntIBS_B3_B8x_EIB63_NtNtBc_7convert10InfallibleB6Y_EEB4v_8try_folduNCINvNvB4v_12try_for_each4callB6o_B8m_NcNtB8m_5Break0E0B8m_E0E0B7H_ECslpwjCj2YNBy_9polars_io.exit, !dbg !12703

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtB1D_4mmap5array11mmap_structNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs_0EIB18_NtNtNtB1D_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvBU_12map_try_foldTRNtB1B_13ArrowDataTypeRB43_EINtNtBc_6result6ResultNtNtNtB1D_3ffi9generated10ArrowArrayNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB7I_B6o_EENCB2u_s0_0NCINvXB8_INtB8_12GenericShuntIBS_B3_B8x_EIB63_NtNtBc_7convert10InfallibleB6Y_EEB4v_8try_folduNCINvNvB4v_12try_for_each4callB6o_B8m_NcNtB8m_5Break0E0B8m_E0E0B7H_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !12704
  ret void, !dbg !12705
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBY_IBY_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB1Q_3vec9into_iter8IntoIterINtB3d_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB39_NtNtNtNtNtB3Z_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB1m_NtNtB58_14parquet_bridge8EncodingEENCINvB3T_16array_to_columnsRB1L_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB7h_8try_folduNCINvNvB7h_12try_for_each4callINtNtNtB58_5write8dyn_iter7DynIterIB8w_NtNtB58_4page4PageB9i_EEINtNtNtBc_3ops12control_flow11ControlFlowBaJ_ENcNtBbK_5Break0E0BbK_E0IBbL_BbK_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12706 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [136 x i8], align 8               ; 13 uses
  %.sroa.49.i = alloca i64, align 8               ; 5 uses
  %.sroa.710.i = alloca i64, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !12964
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12918), !dbg !12965
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12919), !dbg !12965
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12920), !dbg !12966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12921), !dbg !12967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12968, !noalias !12922
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12923), !dbg !12969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12924), !dbg !12970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12971, !noalias !12925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12926), !dbg !12972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12927), !dbg !12973
  %i.h = load ptr, ptr %1, align 8, !dbg !12974, !alias.scope !12928, !noalias !12929, !nonnull !1359, !noundef !1359 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12975
  %i.j = load ptr, ptr %i.i, align 8, !dbg !12975, !alias.scope !12928, !noalias !12929, !nonnull !1359, !noundef !1359
  %i.k = icmp eq ptr %i.h, %i.j, !dbg !12976
  br i1 %i.k, label %bb.g, label %bb.b, !dbg !12977

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !12978
  store ptr %i.l, ptr %1, align 8, !dbg !12979, !alias.scope !12928, !noalias !12929
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12930), !dbg !12980
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !12981
  %i.n = load ptr, ptr %i.m, align 8, !dbg !12982, !alias.scope !12931, !noalias !12932, !nonnull !1359, !noundef !1359
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12983 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !12983, !alias.scope !12931, !noalias !12932, !nonnull !1359, !noundef !1359 ; 4 uses
  %i.q = icmp eq ptr %i.p, %i.n, !dbg !12983
  br i1 %i.q, label %bb.g, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i.i.i, !dbg !12984

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !12985
  store ptr %i.r, ptr %i.o, align 8, !dbg !12986, !alias.scope !12931, !noalias !12932
  %.sroa.0.0.copyload7.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !dbg !12987, !noalias !12933 ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload7.i.i.i.i.i.i.i, -9223372036854775808, !dbg !12988
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.g, label %bb.c, !dbg !12989

bb.c:                                             ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !12987
  %.sroa.512.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !12990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i.i.i.i.i.i, i64 16, i1 false), !dbg !12991, !noalias !12925
  store ptr %i.h, ptr %i.e, align 8, !dbg !12990, !noalias !12925
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !12990 ; 4 uses
  store i64 %.sroa.0.0.copyload7.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !dbg !12990, !noalias !12925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12934), !dbg !12992
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !12993
  %i.t = load ptr, ptr %i.s, align 8, !dbg !12994, !alias.scope !12935, !noalias !12936, !nonnull !1359, !noundef !1359
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !12995 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !dbg !12995, !alias.scope !12935, !noalias !12936, !nonnull !1359, !noundef !1359 ; 4 uses
  %i.w = icmp eq ptr %i.v, %i.t, !dbg !12995
  br i1 %i.w, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i.i.i.i.i, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i, !dbg !12996

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 104, !dbg !12997
  store ptr %i.x, ptr %i.u, align 8, !dbg !12998, !alias.scope !12935, !noalias !12936
  %.sroa.02.0.copyload3.i.i.i.i.i = load i64, ptr %i.v, align 8, !dbg !12999, !noalias !12937 ; 3 uses
  %.not1.i.i.i.i.i = icmp eq i64 %.sroa.02.0.copyload3.i.i.i.i.i, 8, !dbg !13000
  br i1 %.not1.i.i.i.i.i, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i.i.i.i.i, label %bb.f, !dbg !13001

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i, %bb.c
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i unwind label %bb.d, !dbg !13002, !noalias !12925

bb.d:                                             ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i)
          to label %common.resume.i unwind label %bb.e, !dbg !13003, !noalias !12925

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !13002, !noalias !12925
  unreachable, !dbg !13002

common.resume.i:                                  ; preds = %bb.x, %bb.r, %bb.p, %bb.l, %.body.i.i.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.y, %bb.d ], [ %eh.lpad-body.i.i.i, %bb.l ], [ %i.bh, %bb.x ], [ %i.bc, %bb.r ], [ %i.bb, %bb.p ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !13004

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i.i.i.i.i
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i), !dbg !13005, !noalias !12925
  br label %bb.g, !dbg !13006

bb.f:                                             ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i
  %.sroa.74.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !12999 ; 2 uses
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !13007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.514.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.74.0..sroa_idx5.i.i.i.i.i, i64 96, i1 false), !dbg !13008, !noalias !12922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !13009, !noalias !12922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13006, !noalias !12925
  %.sroa.4.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !13007
  store i64 %.sroa.02.0.copyload3.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx13.i.i.i, align 8, !dbg !13007, !noalias !12922
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !13010 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !13011, !alias.scope !12938, !noalias !12939, !nonnull !1359, !noundef !1359 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !13012
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !13012, !alias.scope !12938, !noalias !12939, !nonnull !1359, !noundef !1359
  %i.ae = icmp eq ptr %i.ab, %i.ad, !dbg !13013
  br i1 %i.ae, label %bb.h, label %bb.o, !dbg !13014

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i.i.i, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13006, !noalias !12925
  br label %bb.y, !dbg !13015

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !13016 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i unwind label %bb.i, !dbg !13017, !noalias !12922

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body.i.i.i unwind label %bb.j, !dbg !13018, !noalias !12922

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !13017, !noalias !12922
  unreachable, !dbg !13017

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.k, !dbg !13019, !noalias !12922

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !13020

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %i.ag, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 103, !dbg !13021
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !13021, !range !1401, !alias.scope !12941, !noalias !12922, !noundef !1359
  %i.al = icmp eq i8 %i.ak, -40, !dbg !13022
  br i1 %i.al, label %bb.l, label %common.resume.i, !dbg !13022, !prof !1432

bb.l:                                             ; preds = %.body.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 80, !dbg !13023
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %common.resume.i unwind label %bb.n, !dbg !13024, !noalias !12922

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEECslpwjCj2YNBy_9polars_io.exit.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 103, !dbg !13025
  %i.ao = load i8, ptr %i.an, align 1, !dbg !13025, !range !1401, !alias.scope !12942, !noalias !12922, !noundef !1359
  %i.ap = icmp eq i8 %i.ao, -40, !dbg !13026
  br i1 %i.ap, label %bb.m, label %bb.y, !dbg !13026, !prof !1432

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 80, !dbg !13027
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq), !dbg !13028, !noalias !12922
  br label %bb.y, !dbg !13028

bb.n:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !13020, !noalias !12922
  unreachable, !dbg !13020

bb.o:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 1, !dbg !13029
  store ptr %i.as, ptr %i.aa, align 8, !dbg !13030, !alias.scope !12938, !noalias !12939
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !dbg !13031, !noalias !12943, !nonnull !1359, !noundef !1359 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !13031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13032, !noalias !12944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, i64 24, i1 false), !dbg !13031, !noalias !12950
  %.sroa.714.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13034, !noalias !12951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.714.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.74.0..sroa_idx5.i.i.i.i.i, i64 96, i1 false), !dbg !13031, !noalias !12950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13035, !noalias !12922
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i), !dbg !13036
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.710.i), !dbg !13036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12952), !dbg !13036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12950
  store i64 %.sroa.02.0.copyload3.i.i.i.i.i, ptr %i.b, align 8, !dbg !13033, !noalias !12953
  %.val.i.i = load ptr, ptr %i.g, align 8, !dbg !13033, !noalias !12951, !nonnull !1359, !align !1595, !noundef !1359
  %i.at = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !dbg !13037, !noalias !12944, !nonnull !1359, !noundef !1359
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload.i, i64 8, !dbg !13037
  %i.av = load ptr, ptr %i.au, align 8, !dbg !13037, !noalias !12944, !nonnull !1359, !align !1595, !noundef !1359
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13038
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !13038, !noalias !12944, !nonnull !1359, !noundef !1359
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !13039
  %i.az = load i64, ptr %i.ay, align 8, !dbg !13039, !noalias !12944, !noundef !1359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13040, !noalias !12944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val.i.i, i64 56, i1 false), !dbg !13040, !noalias !12944
  %i.ba = load i8, ptr %i.ab, align 1, !dbg !13041, !range !12955, !noalias !12944, !noundef !1359
  invoke void @_RNvNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write14array_to_pages(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noundef nonnull %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.av, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, ptr noundef nonnull align 8 %i.ax, i64 noundef %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, i8 noundef %i.ba)
          to label %bb.q unwind label %bb.p, !dbg !13042, !noalias !12951

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.c) #43
          to label %common.resume.i unwind label %bb.t, !dbg !13043, !noalias !12944

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13044, !noalias !12944
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages16array_to_columnsRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE0CslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.r, !dbg !13045, !noalias !12944

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.s, !dbg !13046, !noalias !12944

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !13045, !noalias !12944
  unreachable, !dbg !13045

bb.t:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !13047, !noalias !12944
  unreachable, !dbg !13047

_RNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages16array_to_columnsRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE0CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.q
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !13048, !noalias !12944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13043, !noalias !12944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13049, !noalias !12951
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !dbg !13050, !noalias !12951 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !13050
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13050, !noalias !12951 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !13050
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13050, !noalias !12951 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !13050 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12956), !dbg !13050
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !13051
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.u, !dbg !13052

bb.u:                                             ; preds = %_RNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages16array_to_columnsRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE0CslpwjCj2YNBy_9polars_io.exit.i.i
  %i.bf = load i64, ptr %3, align 8, !dbg !13053, !range !1769, !alias.scope !12957, !noalias !12958, !noundef !1359
  %i.bg = icmp eq i64 %i.bf, 18, !dbg !13053
  br i1 %i.bg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.v, !dbg !13053

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.x, !dbg !13054, !noalias !12958

bb.w:                                             ; preds = %_RNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages16array_to_columnsRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE0CslpwjCj2YNBy_9polars_io.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !13055
  store i64 %4, ptr %.sroa.49.i, align 8, !dbg !13055, !alias.scope !12959, !noalias !12960
  br label %bb.z, !dbg !13056

bb.x:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !13057, !noalias !12958
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !13057
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !13057, !noalias !12958
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !13057
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !13057, !noalias !12958
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !13057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !13057, !noalias !12951
  br label %common.resume.i, !dbg !13058

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.v, %bb.u
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !13057, !noalias !12958
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !13057
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !13057, !noalias !12958
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !13057
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !13057, !noalias !12958
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !13057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !13057, !noalias !12951
  br label %bb.z, !dbg !13059

bb.y:                                             ; preds = %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtNtBN_3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13035, !noalias !12922
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_IB4_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB1u_3vec9into_iter8IntoIterINtB2R_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB2N_NtNtNtNtNtB3D_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB10_NtNtB4M_14parquet_bridge8EncodingEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTTRB1p_B3k_EB4E_ERB5N_EINtNtBc_6result6ResultINtNtNtB4M_5write8dyn_iter7DynIterIB7V_NtNtB4M_4page4PageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB9b_EuINtNtNtBc_3ops12control_flow11ControlFlowIBa1_B8g_EENCINvB3x_16array_to_columnsB7z_E0NCINvXB8_INtB8_12GenericShuntINtB79_3MapB3_BaQ_EIB7V_NtNtBc_7convert10InfallibleB9b_EEB6m_8try_folduNCINvNvB6m_12try_for_each4callB8g_BaF_NcNtBaF_5Break0E0BaF_E0E0Ba0_ECslpwjCj2YNBy_9polars_io.exit, !dbg !13060

bb.z:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.w
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.710.i, %bb.w ], [ %.sroa.49.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.w ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !13061, !alias.scope !12959, !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13062, !noalias !12950
  %.sroa.49.i.0..sroa.49.i.0..sroa.49.i.0..sroa.49.0..sroa.49.0..sroa.49.8..i = load i64, ptr %.sroa.49.i, align 8, !dbg !13063, !alias.scope !12961, !noalias !12962, !noundef !1359
  %5 = inttoptr i64 %.sroa.49.i.0..sroa.49.i.0..sroa.49.i.0..sroa.49.0..sroa.49.0..sroa.49.8..i to ptr, !dbg !13063
  %.sroa.710.i.0..sroa.710.i.0..sroa.710.i.0..sroa.710.0..sroa.710.0..sroa.710.16..i = load i64, ptr %.sroa.710.i, align 8, !dbg !13063, !alias.scope !12961, !noalias !12962
  %6 = inttoptr i64 %.sroa.710.i.0..sroa.710.i.0..sroa.710.i.0..sroa.710.0..sroa.710.0..sroa.710.16..i to ptr, !dbg !13063
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i), !dbg !13064
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710.i), !dbg !13064
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13065
  store ptr %5, ptr %i.bi, align 8, !dbg !13065, !alias.scope !12963, !noalias !12919
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13065
  store ptr %6, ptr %i.bj, align 8, !dbg !13065, !alias.scope !12963, !noalias !12919
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_IB4_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB1u_3vec9into_iter8IntoIterINtB2R_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB2N_NtNtNtNtNtB3D_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB10_NtNtB4M_14parquet_bridge8EncodingEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTTRB1p_B3k_EB4E_ERB5N_EINtNtBc_6result6ResultINtNtNtB4M_5write8dyn_iter7DynIterIB7V_NtNtB4M_4page4PageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB9b_EuINtNtNtBc_3ops12control_flow11ControlFlowIBa1_B8g_EENCINvB3x_16array_to_columnsB7z_E0NCINvXB8_INtB8_12GenericShuntINtB79_3MapB3_BaQ_EIB7V_NtNtBc_7convert10InfallibleB9b_EEB6m_8try_folduNCINvNvB6m_12try_for_each4callB8g_BaF_NcNtBaF_5Break0E0BaF_E0E0Ba0_ECslpwjCj2YNBy_9polars_io.exit, !dbg !13066

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_IB4_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB1u_3vec9into_iter8IntoIterINtB2R_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB2N_NtNtNtNtNtB3D_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB10_NtNtB4M_14parquet_bridge8EncodingEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTTRB1p_B3k_EB4E_ERB5N_EINtNtBc_6result6ResultINtNtNtB4M_5write8dyn_iter7DynIterIB7V_NtNtB4M_4page4PageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB9b_EuINtNtNtBc_3ops12control_flow11ControlFlowIBa1_B8g_EENCINvB3x_16array_to_columnsB7z_E0NCINvXB8_INtB8_12GenericShuntINtB79_3MapB3_BaQ_EIB7V_NtNtBc_7convert10InfallibleB9b_EEB6m_8try_folduNCINvNvB6m_12try_for_each4callB8g_BaF_NcNtBaF_5Break0E0BaF_E0E0Ba0_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.y, %bb.z
  %storemerge.i = phi i64 [ 1, %bb.z ], [ 0, %bb.y ], !dbg !13067
  store i64 %storemerge.i, ptr %0, align 8, !dbg !13067, !alias.scope !12918, !noalias !12919
  ret void, !dbg !13068
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtB8_6cloned6ClonedIBO_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3i_4mmap11mmap_recordNtNtB2r_4mmap13MMapSemaphoreEs2_0EEINtNtNtBc_5slice4iter4IterNtNtNtB3i_2io3ipc8IpcFieldEENCB49_s3_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB6c_8try_folduNCINvNvB6c_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB3i_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB9E_ENcNtBaC_5Break0E0BaC_E0IBaD_BaC_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13069 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.78.i = alloca i64, align 8               ; 4 uses
  %.sroa.9.i = alloca [31 x i8], align 1          ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !13181
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13152), !dbg !13182
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13153), !dbg !13182
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !dbg !13183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13154), !dbg !13184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13155), !dbg !13185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13186, !noalias !13156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13187, !noalias !13156
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB2W_4mmap11mmap_recordNtNtB25_4mmap13MMapSemaphoreEs2_0EENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !dbg !13188, !noalias !13157
  %i.f = load i8, ptr %i.c, align 8, !dbg !13189, !range !1779, !noalias !13156, !noundef !1359
  %.not.i.i.i = icmp eq i8 %i.f, 42, !dbg !13189
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !dbg !13190

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !13191, !noalias !13156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13192, !noalias !13156
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13193 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !13194, !alias.scope !13158, !noalias !13157, !nonnull !1359, !noundef !1359 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !13195
  %i.j = load ptr, ptr %i.i, align 8, !dbg !13195, !alias.scope !13158, !noalias !13157, !nonnull !1359, !noundef !1359
  %i.k = icmp eq ptr %i.h, %i.j, !dbg !13196
  br i1 %i.k, label %bb.d, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i, !dbg !13197

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13192, !noalias !13156
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i, !dbg !13198

bb.d:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.d), !dbg !13199, !noalias !13157
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i, !dbg !13199

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13199, !noalias !13156
  br label %bb.k, !dbg !13200

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !13201
  store ptr %i.l, ptr %i.g, align 8, !dbg !13202, !alias.scope !13158, !noalias !13157
  %.sroa.0.0.copyload1.i = load i8, ptr %i.d, align 8, !dbg !13203, !noalias !13160 ; 2 uses
  %.sroa.9.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !13203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx2.i, i64 31, i1 false), !dbg !13203, !noalias !13160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13199, !noalias !13156
  %.not.i = icmp eq i8 %.sroa.0.0.copyload1.i, 42, !dbg !13183
  br i1 %.not.i, label %bb.k, label %bb.e, !dbg !13200

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !13204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13204, !noalias !13163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.i, i64 31, i1 false), !dbg !13205, !noalias !13164
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !13206
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.78.i), !dbg !13206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13165), !dbg !13206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13164
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13166), !dbg !13207
  store i8 %.sroa.0.0.copyload1.i, ptr %i.a, align 8, !dbg !13204, !noalias !13167
  %i.n = load ptr, ptr %i.e, align 8, !dbg !13208, !alias.scope !13166, !noalias !13168, !nonnull !1359, !align !1595, !noundef !1359
  %i.o = load ptr, ptr %i.n, align 8, !dbg !13209, !noalias !13169, !nonnull !1359, !noundef !1359 ; 2 uses
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !dbg !13210, !noalias !13169
  %i.q = icmp slt i64 %i.p, 0, !dbg !13211
  br i1 %i.q, label %bb.f, label %_RNCINvNtCs8774dFTUdNv_12polars_arrow4mmap11mmap_recordNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs3_0CslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !13211

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !13212
  unreachable, !dbg !13212

_RNCINvNtCs8774dFTUdNv_12polars_arrow4mmap11mmap_recordNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs3_0CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !13213
  %i.s = load ptr, ptr %i.r, align 8, !dbg !13213, !alias.scope !13166, !noalias !13168, !nonnull !1359, !align !1595, !noundef !1359
  %i.t = load i64, ptr %i.s, align 8, !dbg !13213, !noalias !13169, !noundef !1359
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !13214
  %i.v = load ptr, ptr %i.u, align 8, !dbg !13214, !alias.scope !13166, !noalias !13168, !nonnull !1359, !align !1595, !noundef !1359
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !13215
  %i.x = load ptr, ptr %i.w, align 8, !dbg !13215, !alias.scope !13166, !noalias !13168, !nonnull !1359, !align !1595, !noundef !1359
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !13216
  %i.z = load ptr, ptr %i.y, align 8, !dbg !13216, !alias.scope !13166, !noalias !13168, !nonnull !1359, !align !1595, !noundef !1359
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !13217
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !13217, !alias.scope !13166, !noalias !13168, !nonnull !1359, !align !1595, !noundef !1359
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow4mmap5array4mmapNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull %i.o, i64 noundef %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab), !dbg !13218, !noalias !13170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13219, !noalias !13163
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !13220, !noalias !13163 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13220
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13220, !noalias !13163 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13220
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13220, !noalias !13163 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13171), !dbg !13220
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !13221
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.g, !dbg !13222

bb.g:                                             ; preds = %_RNCINvNtCs8774dFTUdNv_12polars_arrow4mmap11mmap_recordNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs3_0CslpwjCj2YNBy_9polars_io.exit.i.i
  %i.ac = load i64, ptr %3, align 8, !dbg !13223, !range !1769, !alias.scope !13172, !noalias !13173, !noundef !1359
  %i.ad = icmp eq i64 %i.ac, 18, !dbg !13223
  br i1 %i.ad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.h, !dbg !13223

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.j, !dbg !13224, !noalias !13174

bb.i:                                             ; preds = %_RNCINvNtCs8774dFTUdNv_12polars_arrow4mmap11mmap_recordNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreEs3_0CslpwjCj2YNBy_9polars_io.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !13225
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !13225, !alias.scope !13175, !noalias !13176
  br label %bb.l, !dbg !13226

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !13227, !noalias !13173
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !13227
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !13227, !noalias !13173
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !13227
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !13227, !noalias !13173
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !13227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !13227, !noalias !13163
  resume { ptr, i32 } %i.ae, !dbg !13228

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.h, %bb.g
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !13227, !noalias !13173
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !13227
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !13227, !noalias !13173
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !13227
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !13227, !noalias !13173
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !13227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !13227, !noalias !13163
  br label %bb.l, !dbg !13229

bb.k:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6cloned6ClonedINtNtB6_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB3c_4mmap11mmap_recordNtNtB2l_4mmap13MMapSemaphoreEs2_0EEINtNtNtBa_5slice4iter4IterNtNtNtB3c_2io3ipc8IpcFieldEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !13230
  store i64 0, ptr %0, align 8, !dbg !13231, !alias.scope !13177, !noalias !13153
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_6cloned6ClonedINtNtB8_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB38_4mmap11mmap_recordNtNtB2h_4mmap13MMapSemaphoreEs2_0EEINtNtNtBc_5slice4iter4IterNtNtNtB38_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB1g_12map_try_foldTNtB36_13ArrowDataTypeRB5p_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB38_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB9s_B7K_EENCB3Z_s3_0NCINvXB8_INtB8_12GenericShuntIB1e_B3_Bah_EIB7p_NtNtBc_7convert10InfallibleB8I_EEB5R_8try_folduNCINvNvB5R_12try_for_each4callB7K_Ba6_NcNtBa6_5Break0E0Ba6_E0E0B9r_ECslpwjCj2YNBy_9polars_io.exit, !dbg !13232

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.i
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.78.i, %bb.i ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.i ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !13233, !alias.scope !13175, !noalias !13176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13234, !noalias !13164
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !13235, !alias.scope !13178, !noalias !13179, !noundef !1359
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !13235
  %.sroa.78.i.0..sroa.78.i.0..sroa.78.i.0..sroa.78.0..sroa.78.0..sroa.78.16..i = load i64, ptr %.sroa.78.i, align 8, !dbg !13235, !alias.scope !13178, !noalias !13179
  %6 = inttoptr i64 %.sroa.78.i.0..sroa.78.i.0..sroa.78.i.0..sroa.78.0..sroa.78.0..sroa.78.16..i to ptr, !dbg !13235
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !13236
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.78.i), !dbg !13236
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13237
  store ptr %5, ptr %i.af, align 8, !dbg !13237, !alias.scope !13180, !noalias !13153
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13237
  store ptr %6, ptr %i.ag, align 8, !dbg !13237, !alias.scope !13180, !noalias !13153
  store i64 1, ptr %0, align 8, !dbg !13237, !alias.scope !13180, !noalias !13153
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !13230
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_6cloned6ClonedINtNtB8_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB38_4mmap11mmap_recordNtNtB2h_4mmap13MMapSemaphoreEs2_0EEINtNtNtBc_5slice4iter4IterNtNtNtB38_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB1g_12map_try_foldTNtB36_13ArrowDataTypeRB5p_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB38_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB9s_B7K_EENCB3Z_s3_0NCINvXB8_INtB8_12GenericShuntIB1e_B3_Bah_EIB7p_NtNtBc_7convert10InfallibleB8I_EEB5R_8try_folduNCINvNvB5R_12try_for_each4callB7K_Ba6_NcNtBa6_5Break0E0Ba6_E0E0B9r_ECslpwjCj2YNBy_9polars_io.exit, !dbg !13238

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_6cloned6ClonedINtNtB8_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtB38_4mmap11mmap_recordNtNtB2h_4mmap13MMapSemaphoreEs2_0EEINtNtNtBc_5slice4iter4IterNtNtNtB38_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB1g_12map_try_foldTNtB36_13ArrowDataTypeRB5p_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB38_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB9s_B7K_EENCB3Z_s3_0NCINvXB8_INtB8_12GenericShuntIB1e_B3_Bah_EIB7p_NtNtBc_7convert10InfallibleB8I_EEB5R_8try_folduNCINvNvB5R_12try_for_each4callB7K_Ba6_NcNtBa6_5Break0E0Ba6_E0E0B9r_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.k, %bb.l
  ret void, !dbg !13239
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCB2y_s_0EB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13240 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !13342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13313), !dbg !13343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13314), !dbg !13344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13345, !noalias !13315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.i, ptr noundef nonnull readonly align 16 dereferenceable(80) %2, i64 80, i1 false), !dbg !13346, !noalias !13317
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !13347
  %i.l = load i64, ptr %i.k, align 8, !dbg !13347, !alias.scope !13318, !noalias !13319, !noundef !1359
  %i.m = invoke noundef i64 @_RNvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.b unwind label %bb.u, !dbg !13348, !noalias !13319

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.l), !dbg !13349 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0, !dbg !13350
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB5_4TakeINtNtNtBb_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvNtB7_3map8map_foldRB1o_B2S_B2S_NCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype0NCB5u_s_0E0EB5A_.exit, label %.lr.ph.i.i, !dbg !13351

.lr.ph.i.i:                                       ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !13318, !noalias !13319, !nonnull !1359, !noundef !1359
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c, !dbg !13351

bb.c:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.sroa.0.016.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.t ] ; 2 uses
  %i.t = add nuw i64 %.sroa.0.016.i.i, 1, !dbg !13352 ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.016.i.i, !dbg !13353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13354, !noalias !13315
  call void @llvm.experimental.noalias.scope.decl(metadata !13321), !dbg !13354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13355, !noalias !13322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13356, !noalias !13322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.f, ptr noundef nonnull align 16 dereferenceable(80) %i.i, i64 80, i1 false), !dbg !13356, !noalias !13315
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !13357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13358, !noalias !13323
  invoke void @_RNvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5infer(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %.noexc.i.i.i unwind label %.body.i.i.i, !dbg !13358, !noalias !13325

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.v = load i64, ptr %i.e, align 8, !dbg !13359, !range !1769, !noalias !13323, !noundef !1359
  %.not.i.i.i.i = icmp eq i64 %i.v, 18, !dbg !13359 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d, !dbg !13360

bb.d:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !dbg !13361, !noalias !13326
  br label %bb.h, !dbg !13362

bb.e:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13363, !noalias !13323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !13364, !noalias !13323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13363, !noalias !13323
  invoke void @_RNvMs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5fieldNtNtB7_5dtype8DataType16from_arrow_dtype(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype00B9_.exit.i.i.i.i unwind label %bb.f, !dbg !13365, !noalias !13327

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #43
          to label %.body.thread.i.i.i unwind label %bb.g, !dbg !13366, !noalias !13329

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !13367, !noalias !13329
  unreachable, !dbg !13367

_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype00B9_.exit.i.i.i.i: ; preds = %bb.e
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc2.i.i.i unwind label %.body.i.i.i, !dbg !13366, !noalias !13325

.noexc2.i.i.i:                                    ; preds = %_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype00B9_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13368, !noalias !13323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.16..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !13369, !noalias !13326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13370, !noalias !13323
  br label %bb.h, !dbg !13371

.body.i.i.i:                                      ; preds = %_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io4json5infer24json_values_to_supertype00B9_.exit.i.i.i.i, %bb.c
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i, !dbg !13372

bb.h:                                             ; preds = %.noexc2.i.i.i, %bb.d
  %.sroa.0.01.i.i.i = phi i64 [ 0, %.noexc2.i.i.i ], [ 1, %bb.d ], !dbg !13373 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13374, !noalias !13323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.g, ptr noundef nonnull align 16 dereferenceable(80) %i.i, i64 80, i1 false), !dbg !13355, !noalias !13315
  store i64 %.sroa.0.01.i.i.i, ptr %i.o, align 16, !dbg !13355, !noalias !13322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.i.i.i, i64 72, i1 false), !dbg !13355, !noalias !13322
  call void @llvm.experimental.noalias.scope.decl(metadata !13330), !dbg !13355
  call void @llvm.experimental.noalias.scope.decl(metadata !13331), !dbg !13355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13375, !noalias !13332
  %i.y = load i64, ptr %i.g, align 16, !dbg !13376, !range !1534, !alias.scope !13331, !noalias !13333, !noundef !1359
  %i.z = trunc nuw i64 %i.y to i1, !dbg !13377
  br i1 %i.z, label %bb.i, label %bb.l, !dbg !13377

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !13378, !noalias !13315
  store i64 1, ptr %i.h, align 16, !dbg !13379, !alias.scope !13334, !noalias !13335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13380, !noalias !13332
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k, !dbg !13381

bb.j:                                             ; preds = %bb.i
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.q), !dbg !13381, !noalias !13319
  br label %bb.t, !dbg !13381

bb.k:                                             ; preds = %bb.i
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx.i.i.i), !dbg !13381, !noalias !13319
  br label %bb.t, !dbg !13381

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, ptr noundef nonnull align 16 dereferenceable(48) %i.r, i64 48, i1 false), !dbg !13382, !noalias !13315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13383, !noalias !13332
  %i.aa = trunc nuw i64 %.sroa.0.01.i.i.i to i1, !dbg !13384
  br i1 %i.aa, label %.noexc5.i.i.i, label %bb.m, !dbg !13384

.noexc5.i.i.i:                                    ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.i.i.i, i64 72, i1 false), !dbg !13385, !noalias !13337
  store i64 1, ptr %i.h, align 16, !dbg !13386, !alias.scope !13334, !noalias !13335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13387, !noalias !13332
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.b), !dbg !13380, !noalias !13319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13380, !noalias !13332
  br label %bb.t, !dbg !13380

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.16..sroa_idx.i.i.i, i64 48, i1 false), !dbg !13388, !noalias !13322
  invoke void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype17try_get_supertype(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.h, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.o unwind label %bb.n, !dbg !13389, !noalias !13339

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.a) #43
          to label %bb.p unwind label %bb.r, !dbg !13387, !noalias !13340

bb.o:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.a)
          to label %.noexc6.i.i.i unwind label %bb.q, !dbg !13387, !noalias !13340

bb.p:                                             ; preds = %bb.q, %bb.n
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.ab, %bb.n ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.b) #43
          to label %.body.thread.i.i unwind label %bb.r, !dbg !13380, !noalias !13340

bb.q:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.noexc6.i.i.i:                                    ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13387, !noalias !13332
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.b), !dbg !13380, !noalias !13319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13380, !noalias !13332
  br label %bb.t, !dbg !13380

bb.r:                                             ; preds = %bb.p, %bb.n
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !13390, !noalias !13340
  unreachable, !dbg !13390

.body.thread.i.i.i:                               ; preds = %.body.i.i.i, %bb.f
  %eh.lpad-body5.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %.body.i.i.i ], [ %i.w, %bb.f ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(80) %i.f) #43
          to label %.body.thread.i.i unwind label %bb.s, !dbg !13372, !noalias !13325

bb.s:                                             ; preds = %.body.thread.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !13391, !noalias !13325
  unreachable, !dbg !13391

bb.t:                                             ; preds = %.noexc6.i.i.i, %.noexc5.i.i.i, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !13372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13372, !noalias !13322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13372, !noalias !13322
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB6k_B52_EEB3U_E0E0ECslpwjCj2YNBy_9polars_io:bb.a
bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !14759
  unreachable, !dbg !14759

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.08.i, 1, !dbg !14760    ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !14761, !range !1777, !noalias !14750, !noundef !1359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14762, !noalias !14751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !14763, !noalias !14748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14764, !noalias !14748
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !14762, !noalias !14748
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !14762, !noalias !14748
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !14765, !noalias !14752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14766, !noalias !14751
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !14753
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %bb.b, !dbg !14754

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i, %bb.a
  ret void, !dbg !14767
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB69_B52_EEB3U_E0E0ECslpwjCj2YNBy_9polars_io(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14768 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1, !dbg !14800
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECslpwjCj2YNBy_9polars_io.exit, !dbg !14801

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b, !dbg !14801

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14802, !noalias !14795
  call fastcc void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b), !dbg !14802, !noalias !14796
  %i.e = load ptr, ptr %i.b, align 8, !dbg !14803, !noalias !14797, !nonnull !1359, !noundef !1359 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !14804, !noalias !14796
  %i.g = icmp slt i64 %i.f, 0, !dbg !14805
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i, !dbg !14805

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !14806
  unreachable, !dbg !14806

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.08.i, 1, !dbg !14807    ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !14808, !range !1777, !noalias !14797, !noundef !1359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14809, !noalias !14798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !14810, !noalias !14795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14811, !noalias !14795
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !14809, !noalias !14795
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !14809, !noalias !14795
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !14812, !noalias !14799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14813, !noalias !14798
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !14800
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %bb.b, !dbg !14801

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CslpwjCj2YNBy_9polars_io.exit.i, %bb.a
  ret void, !dbg !14814
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB1x_10IterBridgeINtNtB8_9enumerate9EnumerateINtNtNtBa_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB1z_16ParallelIterator15drive_unindexedINtNtB1z_3map11MapConsumerINtNtNtB1z_7collect8consumer15CollectConsumerTANtB3A_9LineStatsj2_jEENCB3w_s_0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7g_8for_each4callINtNtNtBc_4sync6atomic6AtomicbENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8X_3VecB8j_E14extend_trustedBN_E0E0EB3G_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !14815 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !14851 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14851
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14851 ; 3 uses
  %i.a = icmp ult i64 %0, %1, !dbg !14852
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerINtNtNtB2L_7collect8consumer15CollectConsumerTANtB4N_9LineStatsj2_jEENCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB93_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit, !dbg !14853

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !14851
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14851
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload, !dbg !14853
  %i.b = sub nuw i64 %1, %0, !dbg !14853          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.b, i1 false), !dbg !14854, !noalias !14849
  %i.c = add i64 %i.b, %.sroa.4.0.copyload, !dbg !14853
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerINtNtNtB2L_7collect8consumer15CollectConsumerTANtB4N_9LineStatsj2_jEENCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB93_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit, !dbg !14853

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerINtNtNtB2L_7collect8consumer15CollectConsumerTANtB4N_9LineStatsj2_jEENCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB93_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit: ; preds = %bb.a, %.lr.ph.i
  %.val5.i = phi i64 [ %i.c, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ], !dbg !14855
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !14856, !noalias !14850
  ret void, !dbg !14857
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB1x_10IterBridgeINtNtB8_9enumerate9EnumerateINtNtNtBa_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB1z_16ParallelIterator15drive_unindexedINtNtB1z_3map11MapConsumerNtNtB1z_6extend15ListVecConsumerNCB3w_s_0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6F_8for_each4callINtNtNtBc_4sync6atomic6AtomicbENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8m_3VecB7I_E14extend_trustedBN_E0E0EB3G_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !14858 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !14894 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14894
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14894 ; 3 uses
  %i.a = icmp ult i64 %0, %1, !dbg !14895
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerNtNtB2L_6extend15ListVecConsumerNCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8s_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit, !dbg !14896

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !14894
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14894
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload, !dbg !14896
  %i.b = sub nuw i64 %1, %0, !dbg !14896          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.b, i1 false), !dbg !14897, !noalias !14892
  %i.c = add i64 %i.b, %.sroa.4.0.copyload, !dbg !14896
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerNtNtB2L_6extend15ListVecConsumerNCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8s_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit, !dbg !14896

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtBa_4sync6atomic6AtomicbEuNCINvXs_NtNtCse67t6KqNqGQ_5rayon4iter10par_bridgeINtB2J_10IterBridgeINtNtB1D_9enumerate9EnumerateINtNtNtBR_7sources7from_fn6FromFnNCNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par00EEENtB2L_16ParallelIterator15drive_unindexedINtNtB2L_3map11MapConsumerNtNtB2L_6extend15ListVecConsumerNCB4J_s_0EE0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8s_3VecB25_E14extend_trustedINtB1B_3MapB3_B2B_EE0E0E0EB4T_.exit: ; preds = %bb.a, %.lr.ph.i
  %.val5.i = phi i64 [ %i.c, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ], !dbg !14898
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !14899, !noalias !14893
  ret void, !dbg !14900
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs2_NtCs4OpKpA9X0GC_15crossbeam_queue11array_queueINtB1x_10ArrayQueueNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency8IoSampleE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callINtB1x_4SlotB2A_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecB4G_E14extend_trustedBN_E0E0EB2G_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !14901 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !14944 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14944
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14944 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !14944
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14944 ; 5 uses
  %i.a = icmp ult i64 %0, %1, !dbg !14945
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency8IoSampleEuNCNvMs2_B28_INtB28_10ArrayQueueB2X_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecB25_E14extend_trustedINtB1B_3MapB3_B3V_EE0E0E0EB33_.exit, !dbg !14946

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0, !dbg !14946
  %xtraiter = and i64 %i.b, 3, !dbg !14946        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !14946
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !14946

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.f, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], !dbg !14947 ; 2 uses
  %.sroa.0.011.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nuw i64 %.sroa.0.011.i.prol, 1, !dbg !14947 ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.sroa.6.0.copyload, i64 %i.c, !dbg !14948
  store i64 %.sroa.0.011.i.prol, ptr %i.e, align 8, !dbg !14949, !noalias !14942
  %i.f = add i64 %i.c, 1, !dbg !14950             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !14946 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !14946
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !14946, !llvm.loop !14932

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1, !dbg !14946
  %i.h = icmp ugt i64 %i.g, -4, !dbg !14946
  br i1 %i.h, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency8IoSampleEuNCNvMs2_B28_INtB28_10ArrayQueueB2X_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecB25_E14extend_trustedINtB1B_3MapB3_B3V_EE0E0E0EB33_.exit, label %.lr.ph.i, !dbg !14946

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !14947 ; 5 uses
  %.sroa.0.011.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.j = add nuw i64 %.sroa.0.011.i, 1, !dbg !14947
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !14948
  store i64 %.sroa.0.011.i, ptr %i.k, align 8, !dbg !14949, !noalias !14942
  %i.l = add nuw i64 %.sroa.0.011.i, 2, !dbg !14947
  %i.m = getelementptr [48 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !14948
  %i.n = getelementptr i8, ptr %i.m, i64 48, !dbg !14948
  store i64 %i.j, ptr %i.n, align 8, !dbg !14949, !noalias !14942
  %i.o = add nuw i64 %.sroa.0.011.i, 3, !dbg !14947
  %i.p = getelementptr [48 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !14948
  %i.q = getelementptr i8, ptr %i.p, i64 96, !dbg !14948
  store i64 %i.l, ptr %i.q, align 8, !dbg !14949, !noalias !14942
  %i.r = add nuw i64 %.sroa.0.011.i, 4, !dbg !14947 ; 2 uses
  %i.s = getelementptr [48 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !14948
  %i.t = getelementptr i8, ptr %i.s, i64 144, !dbg !14948
  store i64 %i.o, ptr %i.t, align 8, !dbg !14949, !noalias !14942
  %i.u = add i64 %i.i, 4, !dbg !14950             ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.r, %1, !dbg !14945
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency8IoSampleEuNCNvMs2_B28_INtB28_10ArrayQueueB2X_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecB25_E14extend_trustedINtB1B_3MapB3_B3V_EE0E0E0EB33_.exit, label %.lr.ph.i, !dbg !14946

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs4OpKpA9X0GC_15crossbeam_queue11array_queue4SlotNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency8IoSampleEuNCNvMs2_B28_INtB28_10ArrayQueueB2X_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5b_3VecB25_E14extend_trustedINtB1B_3MapB3_B3V_EE0E0E0EB33_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.u, %.lr.ph.i ], !dbg !14951
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !14952, !noalias !14943
  ret void, !dbg !14953
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB1w_6BufferNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !14954 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !14974, !nonnull !1359, !noundef !1359
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14974
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14974
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0), !dbg !14975
  %.val5.i = add i64 %.sroa.4.0.copyload, %i.a, !dbg !14975
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !14976, !noalias !14973
  ret void, !dbg !14977
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB1y_10UnionArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array15ArrowArrayChildE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3P_8try_folduNCINvNvB3P_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7h_ENcNtB87_5Break0E0B87_E0IB88_B87_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14978 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.6.i.i = alloca [48 x i8], align 8        ; 6 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15061 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15038), !dbg !15062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15039), !dbg !15062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15063
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15040), !dbg !15064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15041), !dbg !15064
  %i.g = load i64, ptr %i.d, align 8, !dbg !15065, !alias.scope !15042, !noalias !15043, !noundef !1359 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !15066, !alias.scope !15044, !noalias !15045, !noundef !1359
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !15065
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !15064

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !15067
  store i64 %i.j, ptr %i.d, align 8, !dbg !15068, !alias.scope !15046, !noalias !15038
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !15069
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !15069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15047), !dbg !15069
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !15070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15071, !noalias !15048
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !15071, !noalias !15048, !nonnull !1359, !align !1595, !noundef !1359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15072, !noalias !15048
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array15ArrowArrayChildNtB4_13ArrowArrayRef5childCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val.i.i, i64 noundef %i.g), !dbg !15073, !noalias !15049
  %i.k = load i64, ptr %i.b, align 8, !dbg !15074, !range !1769, !noalias !15049, !noundef !1359 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, 18, !dbg !15074
  br i1 %.not.i.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i, !dbg !15075

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i: ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !15076
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !15076, !noalias !15049
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15077 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !15078, !noalias !15049
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !15077
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !15077, !alias.scope !15051, !noalias !15048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15079, !noalias !15048
  %.sroa.4.0.copyload3.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !dbg !15070, !noalias !15048
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15070
  %.sroa.5.0.copyload5.i.i = load ptr, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !dbg !15070, !noalias !15048
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !15070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !15070, !noalias !15048
  br label %bb.c, !dbg !15080

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !15072, !noalias !15049
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !15081, !noalias !15048
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.c, align 8, !dbg !15070, !noalias !15048 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15079, !noalias !15048
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15070
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !15070, !noalias !15048 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15070
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !15070, !noalias !15048 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !15070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !15070, !noalias !15048
  call void @llvm.experimental.noalias.scope.decl(metadata !15052), !dbg !15070
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, 18, !dbg !15082
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !15080

bb.c:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i
  %.sroa.5.0.copyload10.i.i = phi ptr [ %.sroa.5.0.copyload5.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload9.i.i = phi ptr [ %.sroa.4.0.copyload3.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload8.i.i = phi i64 [ %i.k, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %i.l = load i64, ptr %3, align 8, !dbg !15083, !range !1769, !alias.scope !15053, !noalias !15054, !noundef !1359
  %i.m = icmp eq i64 %i.l, 18, !dbg !15083
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.d, !dbg !15083

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.f, !dbg !15084, !noalias !15054

bb.e:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !15085
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !15085, !alias.scope !15055, !noalias !15056
  br label %bb.g, !dbg !15086

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !15087, !noalias !15054
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !15087
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !15087, !noalias !15054
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !15087
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !15087, !noalias !15054
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !15087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !15087, !noalias !15057
  resume { ptr, i32 } %i.n, !dbg !15088

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !15087, !noalias !15054
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !15087
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !15087, !noalias !15054
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !15087
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !15087, !noalias !15054
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !15087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !15087, !noalias !15057
  br label %bb.g, !dbg !15089

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !15090, !alias.scope !15055, !noalias !15056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15091, !noalias !15048
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !15091
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !15092, !alias.scope !15058, !noalias !15059, !noundef !1359
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !15092
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !15092, !alias.scope !15058, !noalias !15059
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !15092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !15093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !15093
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15094
  store ptr %5, ptr %i.o, align 8, !dbg !15094, !alias.scope !15060, !noalias !15039
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15094
  store ptr %6, ptr %i.p, align 8, !dbg !15094, !alias.scope !15060, !noalias !15039
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !15095

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !15096
  store i64 %storemerge.i, ptr %0, align 8, !dbg !15096, !alias.scope !15038, !noalias !15039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15097
  ret void, !dbg !15098
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB1y_10UnionArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array18InternalArrowArrayE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3S_8try_folduNCINvNvB3S_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7k_ENcNtB8a_5Break0E0B8a_E0IB8b_B8a_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !15099 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.6.i.i = alloca [48 x i8], align 8        ; 6 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15182 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15159), !dbg !15183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15160), !dbg !15183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15161), !dbg !15185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15162), !dbg !15185
  %i.g = load i64, ptr %i.d, align 8, !dbg !15186, !alias.scope !15163, !noalias !15164, !noundef !1359 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !15187, !alias.scope !15165, !noalias !15166, !noundef !1359
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !15186
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !15185

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !15188
  store i64 %i.j, ptr %i.d, align 8, !dbg !15189, !alias.scope !15167, !noalias !15159
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !15190
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !15190
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15168), !dbg !15190
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !15191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15192, !noalias !15169
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !15192, !noalias !15169, !nonnull !1359, !align !1595, !noundef !1359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15193, !noalias !15169
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayNtB4_13ArrowArrayRef5childCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i, i64 noundef %i.g), !dbg !15194, !noalias !15170
  %i.k = load i64, ptr %i.b, align 8, !dbg !15195, !range !1769, !noalias !15170, !noundef !1359 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, 18, !dbg !15195
  br i1 %.not.i.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i, !dbg !15196

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i: ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !15197
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !15197, !noalias !15170
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15198 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !15199, !noalias !15170
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !15198
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !15198, !alias.scope !15172, !noalias !15169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15200, !noalias !15169
  %.sroa.4.0.copyload3.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !dbg !15191, !noalias !15169
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15191
  %.sroa.5.0.copyload5.i.i = load ptr, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !dbg !15191, !noalias !15169
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !15191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !15191, !noalias !15169
  br label %bb.c, !dbg !15201

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !15193, !noalias !15170
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !15202, !noalias !15169
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.c, align 8, !dbg !15191, !noalias !15169 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15200, !noalias !15169
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15191
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !15191, !noalias !15169 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15191
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !15191, !noalias !15169 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !15191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !15191, !noalias !15169
  call void @llvm.experimental.noalias.scope.decl(metadata !15173), !dbg !15191
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, 18, !dbg !15203
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !15201

bb.c:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i
  %.sroa.5.0.copyload10.i.i = phi ptr [ %.sroa.5.0.copyload5.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload9.i.i = phi ptr [ %.sroa.4.0.copyload3.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload8.i.i = phi i64 [ %i.k, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.thread.i.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i ] ; 2 uses
  %i.l = load i64, ptr %3, align 8, !dbg !15204, !range !1769, !alias.scope !15174, !noalias !15175, !noundef !1359
  %i.m = icmp eq i64 %i.l, 18, !dbg !15204
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.d, !dbg !15204

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.f, !dbg !15205, !noalias !15175

bb.e:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0CslpwjCj2YNBy_9polars_io.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !15206
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !15206, !alias.scope !15176, !noalias !15177
  br label %bb.g, !dbg !15207

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !15208, !noalias !15175
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !15208
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !15208, !noalias !15175
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !15208
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !15208, !noalias !15175
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !15208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !15208, !noalias !15178
  resume { ptr, i32 } %i.n, !dbg !15209

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !15208, !noalias !15175
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !15208
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !15208, !noalias !15175
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !15208
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !15208, !noalias !15175
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !15208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !15208, !noalias !15178
  br label %bb.g, !dbg !15210

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !15211, !alias.scope !15176, !noalias !15177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15212, !noalias !15169
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !15212
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !15213, !alias.scope !15179, !noalias !15180, !noundef !1359
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !15213
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !15213, !alias.scope !15179, !noalias !15180
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !15213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !15214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !15214
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15215
  store ptr %5, ptr %i.o, align 8, !dbg !15215, !alias.scope !15181, !noalias !15160
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15215
  store ptr %6, ptr %i.p, align 8, !dbg !15215, !alias.scope !15181, !noalias !15160
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !15216

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !15217
  store i64 %storemerge.i, ptr %0, align 8, !dbg !15217, !alias.scope !15159, !noalias !15160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15218
  ret void, !dbg !15219
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_3ffiNtB1y_11StructArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array15ArrowArrayChildE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3S_8try_folduNCINvNvB3S_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7k_ENcNtB8a_5Break0E0B8a_E0IB8b_B8a_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !15220 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !15334 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15306), !dbg !15335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15307), !dbg !15335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !15336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15308), !dbg !15337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15309), !dbg !15337
  %i.g = load i64, ptr %i.d, align 8, !dbg !15338, !alias.scope !15310, !noalias !15311, !noundef !1359 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !15339, !alias.scope !15312, !noalias !15313, !noundef !1359
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !15338
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !15337

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !15340
  store i64 %i.j, ptr %i.d, align 8, !dbg !15341, !alias.scope !15314, !noalias !15306
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !15342
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !15342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15315), !dbg !15342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15343, !noalias !15316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15317), !dbg !15343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15318), !dbg !15343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15344, !noalias !15316
  %i.k = load ptr, ptr %1, align 8, !dbg !15344, !alias.scope !15318, !noalias !15319, !nonnull !1359, !align !1595, !noundef !1359
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array15ArrowArrayChildNtB4_13ArrowArrayRef5childCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, i64 noundef %i.g), !dbg !15345, !noalias !15320
  %i.l = load i64, ptr %i.b, align 8, !dbg !15346, !range !1769, !noalias !15320, !noundef !1359 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.l, 18, !dbg !15346
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !15347

bb.c:                                             ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !15348
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !15348, !noalias !15320
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !15350, !noalias !15320
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !15349
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !15349, !alias.scope !15317, !noalias !15322
  br label %bb.p, !dbg !15351

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !15344, !noalias !15320
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !15352, !noalias !15322
  %i.m = load i64, ptr %i.c, align 8, !dbg !15353, !noalias !15316 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.m, 18, !dbg !15353
  br i1 %.not13.i.i.i, label %bb.e, label %bb.p, !dbg !15354

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15355
  %i.o = load ptr, ptr %i.n, align 8, !dbg !15355, !alias.scope !15318, !noalias !15319, !nonnull !1359, !align !1595, !noundef !1359
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15355
  %i.q = load ptr, ptr %i.p, align 8, !dbg !15355, !alias.scope !15318, !noalias !15319, !nonnull !1359, !align !1595, !noundef !1359
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15356
  %i.s = load ptr, ptr %i.r, align 8, !dbg !15356, !alias.scope !15317, !noalias !15322, !nonnull !1359, !noundef !1359 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15356
  %i.u = load ptr, ptr %i.t, align 8, !dbg !15356, !alias.scope !15317, !noalias !15322, !nonnull !1359, !align !1595, !noundef !1359 ; 9 uses
  %.val.i.i.i = load i64, ptr %i.q, align 8, !dbg !15357, !noalias !15323 ; 2 uses
  %.val14.i.i.i = load i64, ptr %i.o, align 8, !dbg !15357, !noalias !15323 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15324), !dbg !15357
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !15358
  %i.w = load ptr, ptr %i.v, align 8, !dbg !15358, !invariant.load !1359, !alias.scope !15324, !noalias !15323, !nonnull !1359
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.f, !dbg !15359, !noalias !15325

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslpwjCj2YNBy_9polars_io(ptr nonnull %i.s, ptr nonnull readonly align 8 dereferenceable(192) %i.u) #43
          to label %common.resume.i.i unwind label %bb.o, !dbg !15360, !noalias !15323

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %.val14.i.i.i, %.val.i.i.i, !dbg !15361
  %.not.i.i.i.i = icmp ult i64 %i.x, %i.z, !dbg !15358
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.h, !dbg !15358

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !15362
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !15362, !invariant.load !1359, !alias.scope !15324, !noalias !15323, !nonnull !1359
  %i.ac = invoke { ptr, ptr } %i.ab(ptr noundef nonnull %i.s, i64 noundef %.val14.i.i.i, i64 noundef %.val.i.i.i)
          to label %bb.i unwind label %bb.f, !dbg !15363, !noalias !15325 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0, !dbg !15362 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1, !dbg !15362 ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !dbg !15364, !invariant.load !1359, !alias.scope !15324, !noalias !15323 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null, !dbg !15364
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !15364

bb.j:                                             ; preds = %bb.i
  invoke void %i.af(ptr noundef nonnull %i.s)
          to label %bb.k unwind label %bb.m, !dbg !15364, !noalias !15325

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !15365
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !15365, !range !1575, !invariant.load !1359, !alias.scope !15324, !noalias !15323 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0, !dbg !15366
  br i1 %i.ai, label %bb.r, label %bb.l, !dbg !15366

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !15365
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !15367, !range !1576, !invariant.load !1359, !alias.scope !15324, !noalias !15323
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #38, !dbg !15368, !noalias !15325
  br label %bb.r, !dbg !15369

bb.m:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !15370
  %i.an = load i64, ptr %i.am, align 8, !dbg !15370, !range !1575, !invariant.load !1359, !alias.scope !15324, !noalias !15323 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0, !dbg !15371
  br i1 %i.ao, label %common.resume.i.i, label %bb.n, !dbg !15371

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !15370
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !15372, !range !1576, !invariant.load !1359, !alias.scope !15324, !noalias !15323
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #38, !dbg !15373, !noalias !15325
  br label %common.resume.i.i, !dbg !15374

common.resume.i.i:                                ; preds = %bb.s, %bb.n, %bb.m, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !15375

bb.o:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !15376, !noalias !15325
  unreachable, !dbg !15376

bb.p:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15351, !noalias !15316
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15377
  %i.as = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !dbg !15377, !noalias !15316 ; 3 uses
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !15377 ; 2 uses
  %i.at = load i64, ptr %3, align 8, !dbg !15378, !range !1769, !alias.scope !15326, !noalias !15327, !noundef !1359
  %i.au = icmp eq i64 %i.at, 18, !dbg !15378
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.q, !dbg !15378

bb.q:                                             ; preds = %bb.p
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.s, !dbg !15379, !noalias !15327

bb.r:                                             ; preds = %bb.l, %bb.k, %bb.g
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], [ %i.u, %bb.g ], !dbg !15380 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ad, %bb.l ], [ %i.ad, %bb.k ], [ %i.s, %bb.g ], !dbg !15380 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15351, !noalias !15316
  call void @llvm.experimental.noalias.scope.decl(metadata !15328), !dbg !15377
  %4 = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64, !dbg !15381
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !15381, !alias.scope !15329, !noalias !15330
  br label %bb.t, !dbg !15382

bb.s:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !15383, !noalias !15327
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !15383
  %i.aw = extractelement <2 x ptr> %i.as, i64 0, !dbg !15383
  store ptr %i.aw, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !15383, !noalias !15327
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !15383
  %i.ax = extractelement <2 x ptr> %i.as, i64 1, !dbg !15383
  store ptr %i.ax, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !15383, !noalias !15327
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !15383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !15383, !noalias !15316
  br label %common.resume.i.i, !dbg !15384

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.q, %bb.p
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !15383, !noalias !15327
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !15383
  store <2 x ptr> %i.as, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !15383, !noalias !15327
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !15383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !15383, !noalias !15316
  br label %bb.t, !dbg !15385

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.r
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.r ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %bb.r ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !15386, !alias.scope !15329, !noalias !15330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15387, !noalias !15316
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !15388, !alias.scope !15331, !noalias !15332, !noundef !1359
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !15388
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !15388, !alias.scope !15331, !noalias !15332
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !15388
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !15389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !15389
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15390
  store ptr %5, ptr %i.ay, align 8, !dbg !15390, !alias.scope !15333, !noalias !15307
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15390
  store ptr %6, ptr %i.az, align 8, !dbg !15390, !alias.scope !15333, !noalias !15307
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !15391

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %bb.t
  %storemerge.i = phi i64 [ 1, %bb.t ], [ 0, %bb.a ], !dbg !15392
  store i64 %storemerge.i, ptr %0, align 8, !dbg !15392, !alias.scope !15306, !noalias !15307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15393
  ret void, !dbg !15394
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_3ffiNtB1y_11StructArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array18InternalArrowArrayE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3V_8try_folduNCINvNvB3V_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7n_ENcNtB8d_5Break0E0B8d_E0IB8e_B8d_EECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !15395 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !15509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15481), !dbg !15510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15482), !dbg !15510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !15511
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15483), !dbg !15512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15484), !dbg !15512
  %i.g = load i64, ptr %i.d, align 8, !dbg !15513, !alias.scope !15485, !noalias !15486, !noundef !1359 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !15514, !alias.scope !15487, !noalias !15488, !noundef !1359
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !15513
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !15512

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !15515
  store i64 %i.j, ptr %i.d, align 8, !dbg !15516, !alias.scope !15489, !noalias !15481
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !15517
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !15517
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15490), !dbg !15517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15518, !noalias !15491
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15492), !dbg !15518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15493), !dbg !15518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15519, !noalias !15491
  %i.k = load ptr, ptr %1, align 8, !dbg !15519, !alias.scope !15493, !noalias !15494, !nonnull !1359, !align !1595, !noundef !1359
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayNtB4_13ArrowArrayRef5childCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, i64 noundef %i.g), !dbg !15520, !noalias !15495
  %i.l = load i64, ptr %i.b, align 8, !dbg !15521, !range !1769, !noalias !15495, !noundef !1359 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.l, 18, !dbg !15521
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !15522

bb.c:                                             ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !15523
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !15523, !noalias !15495
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !15525, !noalias !15495
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !15524
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !15524, !alias.scope !15492, !noalias !15497
  br label %bb.p, !dbg !15526

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !15519, !noalias !15495
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !15527, !noalias !15497
  %i.m = load i64, ptr %i.c, align 8, !dbg !15528, !noalias !15491 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.m, 18, !dbg !15528
  br i1 %.not13.i.i.i, label %bb.e, label %bb.p, !dbg !15529

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15530
  %i.o = load ptr, ptr %i.n, align 8, !dbg !15530, !alias.scope !15493, !noalias !15494, !nonnull !1359, !align !1595, !noundef !1359
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15530
  %i.q = load ptr, ptr %i.p, align 8, !dbg !15530, !alias.scope !15493, !noalias !15494, !nonnull !1359, !align !1595, !noundef !1359
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15531
  %i.s = load ptr, ptr %i.r, align 8, !dbg !15531, !alias.scope !15492, !noalias !15497, !nonnull !1359, !noundef !1359 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15531
  %i.u = load ptr, ptr %i.t, align 8, !dbg !15531, !alias.scope !15492, !noalias !15497, !nonnull !1359, !align !1595, !noundef !1359 ; 9 uses
  %.val.i.i.i = load i64, ptr %i.q, align 8, !dbg !15532, !noalias !15498 ; 2 uses
  %.val14.i.i.i = load i64, ptr %i.o, align 8, !dbg !15532, !noalias !15498 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15499), !dbg !15532
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !15533
  %i.w = load ptr, ptr %i.v, align 8, !dbg !15533, !invariant.load !1359, !alias.scope !15499, !noalias !15498, !nonnull !1359
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.f, !dbg !15534, !noalias !15500

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslpwjCj2YNBy_9polars_io(ptr nonnull %i.s, ptr nonnull readonly align 8 dereferenceable(192) %i.u) #43
          to label %common.resume.i.i unwind label %bb.o, !dbg !15535, !noalias !15498

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %.val14.i.i.i, %.val.i.i.i, !dbg !15536
  %.not.i.i.i.i = icmp ult i64 %i.x, %i.z, !dbg !15533
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.h, !dbg !15533

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !15537
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !15537, !invariant.load !1359, !alias.scope !15499, !noalias !15498, !nonnull !1359
  %i.ac = invoke { ptr, ptr } %i.ab(ptr noundef nonnull %i.s, i64 noundef %.val14.i.i.i, i64 noundef %.val.i.i.i)
          to label %bb.i unwind label %bb.f, !dbg !15538, !noalias !15500 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0, !dbg !15537 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1, !dbg !15537 ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !dbg !15539, !invariant.load !1359, !alias.scope !15499, !noalias !15498 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null, !dbg !15539
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !15539

bb.j:                                             ; preds = %bb.i
  invoke void %i.af(ptr noundef nonnull %i.s)
          to label %bb.k unwind label %bb.m, !dbg !15539, !noalias !15500

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !15540
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !15540, !range !1575, !invariant.load !1359, !alias.scope !15499, !noalias !15498 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0, !dbg !15541
  br i1 %i.ai, label %bb.r, label %bb.l, !dbg !15541

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !15540
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !15542, !range !1576, !invariant.load !1359, !alias.scope !15499, !noalias !15498
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #38, !dbg !15543, !noalias !15500
  br label %bb.r, !dbg !15544

bb.m:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !15545
  %i.an = load i64, ptr %i.am, align 8, !dbg !15545, !range !1575, !invariant.load !1359, !alias.scope !15499, !noalias !15498 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0, !dbg !15546
  br i1 %i.ao, label %common.resume.i.i, label %bb.n, !dbg !15546

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !15545
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !15547, !range !1576, !invariant.load !1359, !alias.scope !15499, !noalias !15498
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #38, !dbg !15548, !noalias !15500
  br label %common.resume.i.i, !dbg !15549

common.resume.i.i:                                ; preds = %bb.s, %bb.n, %bb.m, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !15550

bb.o:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #44, !dbg !15551, !noalias !15500
  unreachable, !dbg !15551

bb.p:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15526, !noalias !15491
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15552
  %i.as = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !dbg !15552, !noalias !15491 ; 3 uses
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !15552 ; 2 uses
  %i.at = load i64, ptr %3, align 8, !dbg !15553, !range !1769, !alias.scope !15501, !noalias !15502, !noundef !1359
  %i.au = icmp eq i64 %i.at, 18, !dbg !15553
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, label %bb.q, !dbg !15553

bb.q:                                             ; preds = %bb.p
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.s, !dbg !15554, !noalias !15502

bb.r:                                             ; preds = %bb.l, %bb.k, %bb.g
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], [ %i.u, %bb.g ], !dbg !15555 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ad, %bb.l ], [ %i.ad, %bb.k ], [ %i.s, %bb.g ], !dbg !15555 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15526, !noalias !15491
  call void @llvm.experimental.noalias.scope.decl(metadata !15503), !dbg !15552
  %4 = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64, !dbg !15556
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !15556, !alias.scope !15504, !noalias !15505
  br label %bb.t, !dbg !15557

bb.s:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !15558, !noalias !15502
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !15558
  %i.aw = extractelement <2 x ptr> %i.as, i64 0, !dbg !15558
  store ptr %i.aw, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !15558, !noalias !15502
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !15558
  %i.ax = extractelement <2 x ptr> %i.as, i64 1, !dbg !15558
  store ptr %i.ax, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !15558, !noalias !15502
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !15558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !15558, !noalias !15491
  br label %common.resume.i.i, !dbg !15559

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.q, %bb.p
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !15558, !noalias !15502
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !15558
  store <2 x ptr> %i.as, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !15558, !noalias !15502
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !15558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !15558, !noalias !15491
  br label %bb.t, !dbg !15560

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.r
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.r ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %bb.r ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !15561, !alias.scope !15504, !noalias !15505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15562, !noalias !15491
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !15563, !alias.scope !15506, !noalias !15507, !noundef !1359
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !15563
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !15563, !alias.scope !15506, !noalias !15507
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !15563
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !15564
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !15564
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15565
  store ptr %5, ptr %i.ay, align 8, !dbg !15565, !alias.scope !15508, !noalias !15482
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15565
  store ptr %6, ptr %i.az, align 8, !dbg !15565, !alias.scope !15508, !noalias !15482
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit, !dbg !15566

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %bb.t
  %storemerge.i = phi i64 [ 1, %bb.t ], [ 0, %bb.a ], !dbg !15567
  store i64 %storemerge.i, ptr %0, align 8, !dbg !15567, !alias.scope !15481, !noalias !15482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15568
  ret void, !dbg !15569
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionPhEKj0_ENCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBX_IBY_NtNtB22_9generated10ArrowArrayKB1R_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4t_8for_each4callPNtNtBc_3ffi6c_voidNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Y_3VecB5w_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !15570 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15597), !dbg !15599
  %.sroa.6.16.copyload.i = load ptr, ptr %2, align 8, !dbg !15600, !alias.scope !15597, !nonnull !1359, !noundef !1359
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !15600
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !dbg !15600, !alias.scope !15597
  store i64 %.sroa.8.16.copyload.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !15601, !noalias !15598
  ret void, !dbg !15602
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionPhEKj1_ENCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBX_IBY_NtNtB22_9generated10ArrowArrayKB1R_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4t_8for_each4callPNtNtBc_3ffi6c_voidNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Y_3VecB5w_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !15603 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !dbg !15673 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15673
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15673 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15673
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15673
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15673
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15673
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15669), !dbg !15674
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !dbg !15675, !alias.scope !15669, !noalias !15670 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15675
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !dbg !15675, !alias.scope !15669, !noalias !15670 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload, !dbg !15676
  tail call void @llvm.assume(i1 %i.a), !dbg !15677
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload, !dbg !15678
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKB1j_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6d_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.preheader.i, !dbg !15678

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15675
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !dbg !15675, !alias.scope !15669, !noalias !15670
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0, !dbg !15679
  tail call void @llvm.assume(i1 %i.b), !dbg !15680
  %i.c = trunc nuw i64 %.sroa.5.0.copyload to i1, !dbg !15681
  %..i.i.i.i.i.us.i = select i1 %i.c, ptr %.sroa.6.0.copyload, ptr null, !dbg !15682
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i, !dbg !15683
  store ptr %..i.i.i.i.i.us.i, ptr %i.d, align 8, !dbg !15684, !noalias !15671
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = add i64 %.sroa.8.16.copyload.i, 1, !dbg !15685
  br label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKB1j_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6d_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, !dbg !15678

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKB1j_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6d_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val3.i.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ], !dbg !15686
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !15687, !noalias !15672
  ret void, !dbg !15688
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionPhEKj1_ENCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBX_INtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtB22_9generated10ArrowArrayEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB58_8for_each4callPNtNtBc_3ffi6c_voidNCINvMsj_B3R_INtB3R_3VecB6b_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !15689 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !dbg !15759 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15759
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15759 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15759
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15759
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15759
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15759
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15755), !dbg !15760
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !dbg !15761, !alias.scope !15755, !noalias !15756 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15761
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !dbg !15761, !alias.scope !15755, !noalias !15756 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload, !dbg !15762
  tail call void @llvm.assume(i1 %i.a), !dbg !15763
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload, !dbg !15764
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_INtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtB3b_9generated10ArrowArrayEE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_B50_INtB50_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.preheader.i, !dbg !15764

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15761
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !dbg !15761, !alias.scope !15755, !noalias !15756
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0, !dbg !15765
  tail call void @llvm.assume(i1 %i.b), !dbg !15766
  %i.c = trunc nuw i64 %.sroa.5.0.copyload to i1, !dbg !15767
  %..i.i.i.i.i.us.i = select i1 %i.c, ptr %.sroa.6.0.copyload, ptr null, !dbg !15768
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i, !dbg !15769
  store ptr %..i.i.i.i.i.us.i, ptr %i.d, align 8, !dbg !15770, !noalias !15757
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = add i64 %.sroa.8.16.copyload.i, 1, !dbg !15771
  br label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_INtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtB3b_9generated10ArrowArrayEE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_B50_INtB50_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, !dbg !15764

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_INtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtB3b_9generated10ArrowArrayEE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_B50_INtB50_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val3.i.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ], !dbg !15772
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !15773, !noalias !15758
  ret void, !dbg !15774
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionPhEKj2_ENCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBX_IBY_NtNtB22_9generated10ArrowArrayKj0_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callPNtNtBc_3ffi6c_voidNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5X_3VecB5v_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !15775 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15854), !dbg !15862
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15855), !dbg !15862
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15863 ; 3 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !dbg !15864, !alias.scope !15855, !noalias !15854 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15864
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !dbg !15864, !alias.scope !15855, !noalias !15854 ; 4 uses
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15864
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !dbg !15864, !alias.scope !15855, !noalias !15854 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15856), !dbg !15865
  %i.b = load i64, ptr %0, align 8, !dbg !15866, !alias.scope !15857, !noalias !15858, !noundef !1359 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15867
  %i.d = load i64, ptr %i.c, align 8, !dbg !15867, !alias.scope !15857, !noalias !15858, !noundef !1359 ; 4 uses
  %i.e = icmp ule i64 %i.b, %i.d, !dbg !15866
  tail call void @llvm.assume(i1 %i.e), !dbg !15868
  %.not6.i.i = icmp eq i64 %i.b, %i.d, !dbg !15869
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKj0_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6c_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.i.preheader, !dbg !15869

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.f = sub i64 %i.d, %i.b, !dbg !15869          ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 4, !dbg !15869
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader7, label %vector.ph, !dbg !15869

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.f, -4                       ; 4 uses
  %i.g = add i64 %.sroa.8.16.copyload.i, %n.vec   ; 2 uses
  %i.h = add i64 %i.b, %n.vec
  %i.i = getelementptr [8 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i
  br label %vector.body, !dbg !15869

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = add nuw i64 %i.b, %index                 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.j, !dbg !15870
  %i.l = getelementptr [16 x i8], ptr %i.a, i64 %i.j, !dbg !15870
  %i.m = getelementptr i8, ptr %i.l, i64 32, !dbg !15870
  %wide.vec = load <4 x i64>, ptr %i.k, align 8, !dbg !15871, !alias.scope !15854, !noalias !15859 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>, !dbg !15871
  %strided.vec2 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>, !dbg !15871
  %i.n = inttoptr <2 x i64> %strided.vec2 to <2 x ptr>, !dbg !15871
  %wide.vec3 = load <4 x i64>, ptr %i.m, align 8, !dbg !15871, !alias.scope !15854, !noalias !15859 ; 2 uses
  %strided.vec4 = shufflevector <4 x i64> %wide.vec3, <4 x i64> poison, <2 x i32> <i32 0, i32 2>, !dbg !15871
  %strided.vec5 = shufflevector <4 x i64> %wide.vec3, <4 x i64> poison, <2 x i32> <i32 1, i32 3>, !dbg !15871
  %i.o = inttoptr <2 x i64> %strided.vec5 to <2 x ptr>, !dbg !15871
  %i.p = trunc nuw <2 x i64> %strided.vec to <2 x i1>, !dbg !15872
  %i.q = trunc nuw <2 x i64> %strided.vec4 to <2 x i1>, !dbg !15872
  %i.r = select <2 x i1> %i.p, <2 x ptr> %i.n, <2 x ptr> splat (ptr null), !dbg !15873
  %i.s = select <2 x i1> %i.q, <2 x ptr> %i.o, <2 x ptr> splat (ptr null), !dbg !15873
  %i.t = getelementptr [8 x i8], ptr %i.i, i64 %index, !dbg !15874 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !15875
  store <2 x ptr> %i.r, ptr %i.t, align 8, !dbg !15875, !noalias !15860
  store <2 x ptr> %i.s, ptr %i.u, align 8, !dbg !15875, !noalias !15860
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !15869
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !15869, !llvm.loop !15833

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec, !dbg !15869
  br i1 %cmp.n, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKj0_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6c_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.i.preheader7, !dbg !15869

.lr.ph.i.i.preheader7:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.8.16.copyload.i, %.lr.ph.i.i.preheader ], [ %i.g, %middle.block ]
  %.ph8 = phi i64 [ %i.b, %.lr.ph.i.i.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph.i.i, !dbg !15869

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader7, %.lr.ph.i.i
  %i.w = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader7 ], !dbg !15876 ; 2 uses
  %i.x = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.ph8, %.lr.ph.i.i.preheader7 ] ; 3 uses
  %i.y = add nuw nsw i64 %i.x, 1, !dbg !15876     ; 2 uses
  %i.z = icmp ult i64 %i.x, 2, !dbg !15877
  tail call void @llvm.assume(i1 %i.z), !dbg !15878
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x, !dbg !15870 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !15871, !range !1534, !alias.scope !15854, !noalias !15859, !noundef !1359
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !15871
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !15871, !alias.scope !15854, !noalias !15859
  %i.ae = trunc nuw i64 %i.ab to i1, !dbg !15872
  %..i.i.i.i.i.i = select i1 %i.ae, ptr %i.ad, ptr null, !dbg !15873
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.16.copyload.i, i64 %i.w, !dbg !15874
  store ptr %..i.i.i.i.i.i, ptr %i.af, align 8, !dbg !15875, !noalias !15860
  %i.ag = add i64 %i.w, 1, !dbg !15879            ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, %i.d, !dbg !15869
  br i1 %.not.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKj0_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6c_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.i, !dbg !15869, !llvm.loop !15841

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionPhEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1t_8adapters3map8map_foldBT_PNtNtBa_3ffi6c_voiduNCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBE_IBF_NtNtB3b_9generated10ArrowArrayKj0_EE0NCINvNvB1n_8for_each4callB2K_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6c_3VecB2K_E14extend_trustedINtB2d_3MapBE_B34_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.a
  %.val3.i.i = phi i64 [ %.sroa.8.16.copyload.i, %bb.a ], [ %i.g, %middle.block ], [ %i.ag, %.lr.ph.i.i ], !dbg !15880
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !15881, !noalias !15861
  ret void, !dbg !15882
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionPhEKj2_ENCINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreBX_IBY_NtNtB22_9generated10ArrowArrayKj1_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callPNtNtBc_3ffi6c_voidNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5X_3VecB5v_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !15883 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15962), !dbg !15970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15963), !dbg !15970
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15971 ; 3 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !dbg !15972, !alias.scope !15963, !noalias !15962 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15972
end_hunk_1
