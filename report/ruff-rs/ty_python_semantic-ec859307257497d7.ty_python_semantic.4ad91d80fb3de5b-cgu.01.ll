Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.01?download=true
inline.NumInlined: 12775
inline.NumDeleted: 7325
loop-unroll.NumRuntimeUnrolled: 149
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB2q_5slice4iter4IterB10_EBQ_NCNvNtB12_14type_expansion11expand_types1_0EE9from_iterB14_:bb.a
  %i.bo = ptrtoint ptr %.val4.i65.i.i.i.i to i64
  %.val.i64.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !23016, !nonnull !14
  %i.bp = ptrtoint ptr %.val.i64.i.i.i.i to i64
  %i.bq = sub nuw i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 4
  %i.bs = load ptr, ptr %i.c, align 8, !alias.scope !23016, !noundef !14
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  %.val4.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !23016, !nonnull !14
  %i.bt = ptrtoint ptr %.val4.i.i.i.i.i to i64
  %.val.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !23016, !nonnull !14
  %i.bu = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.bv = sub nuw i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 4
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.bw
  %i.bx = add nuw nsw i64 %i.br, 1
  %i.by = select i1 %.not55.i.i.i.i, i64 1, i64 %i.bx
  %i.bz = add nuw nsw i64 %.sroa.7.0.i.i.i.i, %i.by
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ax, i64 noundef %i.bz, i64 noundef 4, i64 noundef 16)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7reserveBH_.exit.i.i unwind label %bb.u

bb.v:                                             ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.r, %bb.u, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %i.bd, %bb.q ], [ %i.bd, %bb.r ], [ %i.bm, %bb.u ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.y

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1O_.exit.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtCscdodAO9FK5_5alloc3vec3VecB1H_ENCNvNtB1J_14type_expansion11expand_types1_0EEB1L_.exit

bb.y:                                             ; preds = %.body, %bb.z
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.z:                                             ; preds = %bb.j, %bb.c, %bb.a
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtCscdodAO9FK5_5alloc3vec3VecB1H_ENCNvNtB1J_14type_expansion11expand_types1_0EEB1L_(ptr noalias noundef align 8 dereferenceable(104) %1) #33
          to label %common.resume unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtB2M_6option8IntoIterINtNtB2I_6copied6CopiedINtNtNtB2M_5slice4iter4IterB10_EEEEE9from_iterCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [16 x i8], align 4                ; 10 uses
  %.sroa.5.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.78.i.i = alloca i64, align 8             ; 3 uses
  %.sroa.7.i.i = alloca [12 x i8], align 4        ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 4                ; 6 uses
  %i.i = alloca [16 x i8], align 4                ; 10 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.715 = alloca i64, align 8                ; 3 uses
  %.sroa.7 = alloca [12 x i8], align 4            ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23079)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %.pre.i.i = load ptr, ptr %i.l, align 8, !alias.scope !23080
  %i.n = icmp eq ptr %.pre.i.i, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23081)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23082
  br i1 %i.n, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.peel.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !23083
  %i.o = load i32, ptr %i.i, align 4, !range !21, !noalias !23082, !noundef !14
  %.not2.i.i.peel.i = icmp eq i32 %i.o, 0
  br i1 %.not2.i.i.peel.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i: ; preds = %bb.b
  store ptr null, ptr %i.l, align 8, !alias.scope !23084
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.peel.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.peel.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23082
  %i.p = load i64, ptr %1, align 8, !range !28, !alias.scope !23085, !noundef !14
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.peel.i
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !alias.scope !23086
  %i.s = load ptr, ptr %i.m, align 8, !alias.scope !23086, !noundef !14
  store ptr null, ptr %i.m, align 8, !alias.scope !23086
  %.not.i.peel.i = icmp eq ptr %i.s, null
  br i1 %.not.i.peel.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.t = phi <2 x ptr> [ %i.w, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %i.r, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i ]
  store <2 x ptr> %i.t, ptr %i.l, align 8, !alias.scope !23087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23088)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23089
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !23083
  %i.u = load i32, ptr %i.i, align 4, !range !21, !noalias !23089, !noundef !14
  %.not2.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not2.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread: ; preds = %.peel.next.i, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx7.i.i, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23089
  br label %bb.d

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i: ; preds = %.peel.next.i
  store ptr null, ptr %i.l, align 8, !alias.scope !23080
  %.pre.i = load i64, ptr %1, align 8, !range !28, !alias.scope !23085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23089
  %i.v = trunc nuw i64 %.pre.i to i1
  br i1 %i.v, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i
  %i.w = load <2 x ptr>, ptr %i.m, align 8, !alias.scope !23086
  %i.x = load ptr, ptr %i.m, align 8, !alias.scope !23086, !noundef !14
  store ptr null, ptr %i.m, align 8, !alias.scope !23086
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i, label %.peel.next.i, !llvm.loop !23032

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.peel.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23090)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23091
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !23092, !noundef !14
  %.not.i3.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i3.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread17, label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y), !noalias !23093
  %i.aa = load i32, ptr %i.h, align 4, !range !21, !noalias !23091, !noundef !14
  %.not2.i4.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not2.i4.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread17, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread19

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread19: ; preds = %bb.c
  %.sroa.7.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx20, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23091
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread19, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23097)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23098
  %i.ab = load ptr, ptr %i.l, align 8, !alias.scope !23099, !noundef !14
  %.not.i.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i5, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.l), !noalias !23100
  %.pre.i.i6 = load i64, ptr %i.g, align 8, !noalias !23098
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre73.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !28, !noalias !23098
  %.phi.trans.insert74.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre75.i.i = load i64, ptr %.phi.trans.insert74.i.i, align 8, !noalias !23098
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ac = phi i64 [ %.pre75.i.i, %bb.e ], [ 0, %bb.d ]
  %i.ad = phi i64 [ %.pre73.i.i, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.ae = phi i64 [ %.pre.i.i6, %bb.e ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23098
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !23099, !noundef !14
  %.not55.i.i = icmp eq ptr %i.ag, null
  br i1 %.not55.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit62.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.af), !noalias !23101
  %.pre76.i.i = load i64, ptr %i.f, align 8, !noalias !23098
  %.phi.trans.insert77.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre78.i.i = load i64, ptr %.phi.trans.insert77.i.i, align 8, !range !28, !noalias !23098
  %.phi.trans.insert79.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre80.i.i = load i64, ptr %.phi.trans.insert79.i.i, align 8, !noalias !23098
  %i.ah = call i64 @llvm.uadd.sat.i64(i64 %i.ae, i64 %.pre76.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit62.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit62.i.i: ; preds = %bb.f, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.ai = phi i64 [ %.pre80.i.i, %bb.f ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.fr29 = phi i64 [ %.pre78.i.i, %bb.f ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ] ; 2 uses
  %i.aj = phi i64 [ %i.ah, %bb.f ], [ %i.ae, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23098
  %i.ak = load i64, ptr %1, align 8, !range !28, !alias.scope !23099, !noundef !14
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit62.i.i
  %.val.i.i = load ptr, ptr %i.m, align 8, !alias.scope !23099, !noundef !14
  %.not72.i.i = icmp eq ptr %.val.i.i, null
  %i.am = trunc nuw i64 %i.ad to i1
  %i.an = trunc nuw i64 %.fr29 to i1
  %op.rdx27 = select i1 %.not72.i.i, i1 %i.am, i1 false
  %op.rdx28 = select i1 %op.rdx27, i1 %i.an, i1 false
  br i1 %op.rdx28, label %bb.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit62.i.i
  %i.ao = and i64 %.fr29, %i.ad
  %or.cond56.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %or.cond56.not.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = add i64 %i.ai, %i.ac
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sink82.i.i.sroa.phi = phi ptr [ %.sroa.715, %bb.i ], [ %.sroa.5, %bb.h ], [ %.sroa.5, %bb.g ]
  %.sink.i.i = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i, ptr %.sink82.i.i.sroa.phi, align 8, !alias.scope !23102
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715)
  %i.aq = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 1)
  %.sroa.0.0.i = call noundef i64 @llvm.umax.i64(i64 %i.aq, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12)
  %i.ar = load i64, ptr %i.e, align 8, !range !28, !noundef !14
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !60, !noundef !14 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.as, label %bb.j, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.j:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.aw = load i64, ptr %i.av, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ax = load ptr, ptr %i.av, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ay = icmp ule i64 %.sroa.0.0.i, %i.au
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ax, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, i64 12, i1 false)
  store i64 %i.au, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !23103)
  call void @llvm.experimental.noalias.scope.decl(metadata !23104)
  call void @llvm.experimental.noalias.scope.decl(metadata !23105)
  call void @llvm.experimental.noalias.scope.decl(metadata !23106)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 8 uses
  %.sroa.7.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 4 uses
  %.sroa.7.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert74.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert77.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert79.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23107)
  call void @llvm.experimental.noalias.scope.decl(metadata !23108)
  %.pre.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !23109
  %i.bc = icmp eq ptr %.pre.i.i.i.i, null
  call void @llvm.experimental.noalias.scope.decl(metadata !23110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23111
  br i1 %i.bc, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.peel.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  %i.bd = load i32, ptr %i.d, align 4, !range !21, !noalias !23111, !noundef !14
  %.not2.i.i.peel.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not2.i.i.peel.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i.i.i: ; preds = %.noexc
  store ptr null, ptr %i.az, align 8, !alias.scope !23112
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.peel.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.peel.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23111
  %i.be = load i64, ptr %i.j, align 8, !range !28, !alias.scope !23113, !noundef !14
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.peel.i.i.i
  %i.bg = load <2 x ptr>, ptr %i.ba, align 8, !alias.scope !23114
  %i.bh = load ptr, ptr %i.ba, align 8, !alias.scope !23114, !noundef !14
  store ptr null, ptr %i.ba, align 8, !alias.scope !23114
  %.not.i.peel.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.peel.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.bi = phi <2 x ptr> [ %i.bl, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i ], [ %i.bg, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i.i.i ]
  store <2 x ptr> %i.bi, ptr %i.az, align 8, !alias.scope !23115
  call void @llvm.experimental.noalias.scope.decl(metadata !23116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23117
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.peel.next.i.i.i
  %i.bj = load i32, ptr %i.d, align 4, !range !21, !noalias !23117, !noundef !14
  %.not2.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not2.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i: ; preds = %.noexc7, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx7.i.i.i.i, i64 12, i1 false), !noalias !23118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23117
  br label %bb.n

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i: ; preds = %.noexc7
  store ptr null, ptr %i.az, align 8, !alias.scope !23109
  %.pre.i.i.i = load i64, ptr %i.j, align 8, !range !28, !alias.scope !23113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23117
  %i.bk = trunc nuw i64 %.pre.i.i.i to i1
  br i1 %i.bk, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i
  %i.bl = load <2 x ptr>, ptr %i.ba, align 8, !alias.scope !23114
  %i.bm = load ptr, ptr %i.ba, align 8, !alias.scope !23114, !noundef !14
  store ptr null, ptr %i.ba, align 8, !alias.scope !23114
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i, label %.peel.next.i.i.i, !llvm.loop !23032

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.peel.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.peel.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23120
  %i.bn = load ptr, ptr %i.bb, align 8, !alias.scope !23121, !noundef !14
  %.not.i3.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i3.i.i.i.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.m
  %i.bo = load i32, ptr %i.c, align 4, !range !21, !noalias !23120, !noundef !14
  %.not2.i4.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not2.i4.i.i.i.i, label %bb.w, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread12.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread12.i.i: ; preds = %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx13.i.i, i64 12, i1 false), !noalias !23118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23120
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread12.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i
  %i.bp = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23122, !noundef !14 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, 768614336404564651
  call void @llvm.assume(i1 %i.bq)
  %i.br = load i64, ptr %i.k, align 8, !range !24, !alias.scope !23122, !noundef !14
  %i.bs = icmp eq i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.o, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.78.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !23123)
  call void @llvm.experimental.noalias.scope.decl(metadata !23124)
  call void @llvm.experimental.noalias.scope.decl(metadata !23125)
  call void @llvm.experimental.noalias.scope.decl(metadata !23126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23127
  %i.bt = load ptr, ptr %i.az, align 8, !alias.scope !23128, !noundef !14
  %.not.i.i4.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i4.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.az)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.p
  %.pre.i.i5.i.i = load i64, ptr %i.b, align 8, !noalias !23127
  %.pre73.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !28, !noalias !23127
  %.pre75.i.i.i.i = load i64, ptr %.phi.trans.insert74.i.i.i.i, align 8, !noalias !23127
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %.noexc9, %bb.o
  %i.bu = phi i64 [ %.pre75.i.i.i.i, %.noexc9 ], [ 0, %bb.o ]
  %i.bv = phi i64 [ %.pre73.i.i.i.i, %.noexc9 ], [ 1, %bb.o ] ; 2 uses
  %i.bw = phi i64 [ %.pre.i.i5.i.i, %.noexc9 ], [ 0, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23127
  %i.bx = load ptr, ptr %i.bb, align 8, !alias.scope !23128, !noundef !14
  %.not55.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not55.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit62.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.bb)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.q
  %.pre76.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !23127
  %.pre78.i.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i.i, align 8, !range !28, !noalias !23127
  %.pre80.i.i.i.i = load i64, ptr %.phi.trans.insert79.i.i.i.i, align 8, !noalias !23127
  %i.by = call i64 @llvm.uadd.sat.i64(i64 %i.bw, i64 %.pre76.i.i.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit62.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit62.i.i.i.i: ; preds = %.noexc10, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.bz = phi i64 [ %.pre80.i.i.i.i, %.noexc10 ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i ]
  %.fr30 = phi i64 [ %.pre78.i.i.i.i, %.noexc10 ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i ] ; 2 uses
  %i.ca = phi i64 [ %i.by, %.noexc10 ], [ %i.bw, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23127
  %i.cb = load i64, ptr %i.j, align 8, !range !28, !alias.scope !23128, !noundef !14
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit62.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !23128, !noundef !14
  %.not72.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  %i.cd = trunc nuw i64 %i.bv to i1
  %i.ce = trunc nuw i64 %.fr30 to i1
  %op.rdx = select i1 %.not72.i.i.i.i, i1 %i.cd, i1 false
  %op.rdx26 = select i1 %op.rdx, i1 %i.ce, i1 false
  br i1 %op.rdx26, label %bb.t, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.s:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit62.i.i.i.i
  %i.cf = and i64 %.fr30, %i.bv
  %or.cond56.not.i.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %or.cond56.not.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cg = add i64 %i.bz, %i.bu
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sink82.i.i.sroa.phi.i.i = phi ptr [ %.sroa.78.i.i, %bb.t ], [ %.sroa.5.i.i, %bb.s ], [ %.sroa.5.i.i, %bb.r ]
  %.sink.i.i.i.i = phi i64 [ %i.cg, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ]
  store i64 %.sink.i.i.i.i, ptr %.sink82.i.i.sroa.phi.i.i, align 8, !alias.scope !23129, !noalias !23118
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.78.i.i)
  %i.ch = call i64 @llvm.uadd.sat.i64(i64 %i.ca, i64 1) ; 2 uses
  %i.ci = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23130, !noundef !14 ; 2 uses
  %i.cj = load i64, ptr %i.k, align 8, !range !24, !alias.scope !23130, !noundef !14
  %i.ck = sub i64 %i.cj, %i.ci
  %i.cl = icmp ugt i64 %i.ch, %i.ck
  br i1 %i.cl, label %bb.u, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, !prof !16

bb.u:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.ch, i64 noundef 4, i64 noundef 12)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.u, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.n
  %i.cm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23122, !nonnull !14, !noundef !14
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i.i, i64 12, i1 false)
  %i.co = add nuw nsw i64 %i.bp, 1
  store i64 %i.co, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23122
  br label %bb.k

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread17: ; preds = %bb.c, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23091
  store i64 0, ptr %0, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cq, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next.i.i.i, %bb.u, %bb.q, %bb.p, %bb.m, %bb.l
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.x

bb.w:                                             ; preds = %.noexc8, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEEEEINtB5_8FuseImplBY_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23120
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %bb.v

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp31
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB2J_5slice4iter4IterNtB14_4TypeENCNvMsg_NtNtB14_5class15dynamic_literalNtB4n_19DynamicClassLiteral13try_metaclass0EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 4                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23151)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23153
  store ptr %i.h, ptr %i.d, align 8, !noalias !23154
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !23155, !nonnull !14, !noundef !14
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !23155
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.m, %bb.c ], [ %.promoted.i.i, %bb.a ] ; 3 uses
  %i.l = icmp eq ptr %i.k, %i.j
  br i1 %i.l, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !23155
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtBW_19DynamicClassLiteral13try_metaclass0INtB7_5FnMutTRNtB10_4TypeEE8call_mutB12_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.k)
  %i.n = load i8, ptr %i.f, align 4, !range !71, !noundef !14
  %.not.i.i = icmp eq i8 %i.n, -1
  br i1 %.not.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16)
  %i.o = load i64, ptr %i.c, align 8, !range !28, !noundef !14
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !60, !noundef !14 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.s, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.v = icmp ugt i64 %i.r, 3
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  store i64 %i.r, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !23156)
  call void @llvm.experimental.noalias.scope.decl(metadata !23157)
  call void @llvm.experimental.noalias.scope.decl(metadata !23158)
  call void @llvm.experimental.noalias.scope.decl(metadata !23159)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23160
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc6, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23161)
  call void @llvm.experimental.noalias.scope.decl(metadata !23162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23163
  store ptr %i.w, ptr %i.a, align 8, !noalias !23164
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !23165, !nonnull !14, !noundef !14
  %.promoted.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !23165
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f
  %i.z = phi ptr [ %i.ab, %.noexc ], [ %.promoted.i.i.i.i, %bb.f ] ; 3 uses
  %i.aa = icmp eq ptr %i.z, %i.y
  br i1 %i.aa, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.e, align 8, !alias.scope !23165
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtBW_19DynamicClassLiteral13try_metaclass0INtB7_5FnMutTRNtB10_4TypeEE8call_mutB12_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.z)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %i.ac = load i8, ptr %i.b, align 4, !range !71, !noalias !23166, !noundef !14
  %.not.i.i.i.i = icmp eq i8 %i.ac, -1
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23163
  %i.ad = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23167, !noundef !14 ; 5 uses
  %i.ae = icmp ult i64 %i.ad, 576460752303423488
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %i.g, align 8, !range !24, !alias.scope !23167, !noundef !14
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE7reserveBJ_.exit.i.i, label %.noexc6

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE7reserveBJ_.exit.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ad, i64 noundef 1, i64 noundef 4, i64 noundef 16)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE7reserveBJ_.exit.i.i, %bb.i
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23167, !nonnull !14, !noundef !14
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.aj = add nuw nsw i64 %i.ad, 1
  store i64 %i.aj, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23167
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23153
  store i64 0, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.al, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
end_hunk_0
begin_hunk_1_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapIB2B_INtNtB2J_6result4IterNtNtNtB14_4call4bind8BindingsEIB2B_INtNtNtB2J_5slice4iter4IterNtB3Y_15BindingsElementEINtNtB2F_3map3MapIB4w_NtB3Y_12CallableItemENvMs0_B3Y_B5G_8callableENvMs1_B3Y_B4W_9callablesENvMs3_B3Y_B3W_9iter_flatEIB5l_INtNtB2F_6filter6FilterINtNtB2F_9enumerate9EnumerateIB4w_NtB3Y_7BindingEENCNvMs7_B3Y_NtB3Y_15CallableBinding18matching_overloads0ENCNCNvNtB14_11ide_support23resolve_single_overloads_00ENCB9s_s_0EE9from_iterB16_:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBR_INtNtNtBb_5slice4iter4IterNtB1u_15BindingsElementEINtNtB7_3map3MapIB2C_NtB1u_12CallableItemENvMs0_B1u_B3K_8callableENvMs1_B1u_B31_9callablesENvMs3_B1u_B1s_9iter_flatEIB3q_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB2C_NtB1u_7BindingEENCNvMs7_B1u_NtB1u_15CallableBinding18matching_overloads0ENCNCNvNtB1y_11ide_support23resolve_single_overloads_00ENCB7u_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1A_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
  %i.j = load i64, ptr %i.e, align 8, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = tail call i64 @llvm.uadd.sat.i64(i64 %i.j, i64 1)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72)
          to label %.noexc unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.d:                                             ; preds = %.loopexit9, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.e:                                             ; preds = %bb.f, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.f) #33
          to label %bb.u unwind label %bb.t

.noexc:                                           ; preds = %bb.b
  %i.o = load i64, ptr %i.c, align 8, !range !28, !noundef !14
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !60, !noundef !14 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %.noexc
  %i.t = load i64, ptr %i.s, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #31
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.v = icmp ule i64 %.sroa.0.0.i, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  store i64 %i.r, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 176, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23214)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23215
  invoke fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBR_INtNtNtBb_5slice4iter4IterNtB1u_15BindingsElementEINtNtB7_3map3MapIB2C_NtB1u_12CallableItemENvMs0_B1u_B3K_8callableENvMs1_B1u_B31_9callablesENvMs3_B1u_B1s_9iter_flatEIB3q_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB2C_NtB1u_7BindingEENCNvMs7_B1u_NtB1u_15CallableBinding18matching_overloads0ENCNCNvNtB1y_11ide_support23resolve_single_overloads_00ENCB7u_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.g
  %i.w = load i64, ptr %i.b, align 8, !range !29, !noalias !23215, !noundef !14
  %.not4.i.i = icmp eq i64 %i.w, 2
  br i1 %.not4.i.i, label %.loopexit9, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.noexc6
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.noexc7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !23215
  %i.am = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23216, !noundef !14 ; 5 uses
  %i.an = icmp ult i64 %i.am, 128102389400760776
  call void @llvm.assume(i1 %i.an)
  %i.ao = load i64, ptr %i.h, align 8, !range !24, !alias.scope !23216, !noundef !14
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE7reserveBJ_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23217)
  call void @llvm.experimental.noalias.scope.decl(metadata !23218)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  %i.aq = load i64, ptr %i.d, align 8, !range !29, !alias.scope !23219, !noundef !14 ; 2 uses
  %.not56.i.i = icmp eq i64 %i.aq, 2
  br i1 %.not56.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBR_INtNtNtBb_5slice4iter4IterNtB1u_15BindingsElementEINtNtB7_3map3MapIB2C_NtB1u_12CallableItemENvMs0_B1u_B3K_8callableENvMs1_B1u_B31_9callablesENvMs3_B1u_B1s_9iter_flatEIB3q_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB2C_NtB1u_7BindingEENCNvMs7_B1u_NtB1u_15CallableBinding18matching_overloads0ENCNCNvNtB1y_11ide_support23resolve_single_overloads_00ENCB7u_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1A_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23220)
  call void @llvm.experimental.noalias.scope.decl(metadata !23221)
  call void @llvm.experimental.noalias.scope.decl(metadata !23222)
  call void @llvm.experimental.noalias.scope.decl(metadata !23223)
  call void @llvm.experimental.noalias.scope.decl(metadata !23224)
  call void @llvm.experimental.noalias.scope.decl(metadata !23225)
  %i.ar = load i64, ptr %i.x, align 8, !range !28, !alias.scope !23226, !noundef !14
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.z, align 8, !alias.scope !23227, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val4.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !23228, !nonnull !14, !noundef !14
  %i.au = ptrtoint ptr %.val4.i.i.i.i.i.i.i.i.i.i to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = udiv exact i64 %i.aw, 360
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %bb.j ], [ 0, %bb.i ]
  %i.ay = load ptr, ptr %i.ab, align 8, !alias.scope !23227, !noundef !14 ; 2 uses
  %.not55.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not55.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i.i
  %.val4.i65.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !23229, !nonnull !14, !noundef !14
  %i.az = ptrtoint ptr %.val4.i65.i.i.i.i.i.i.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub nuw i64 %i.az, %i.ba
  %i.bc = udiv exact i64 %i.bb, 360
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.k ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i.i ]
  %i.bd = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i.i.i.i
  %i.be = load ptr, ptr %i.y, align 8, !alias.scope !23227, !noundef !14 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  %.val63.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !23227, !nonnull !14
  %i.bf = icmp eq ptr %.val63.i.i.i.i.i.i.i.i.i, %i.be
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %.not56.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.bf ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i, i64 %i.bd, i64 undef
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i.i, %bb.h
  %.sroa.7.1.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ]
  %.sroa.5.0.i.i.i.i.i = phi i1 [ %or.cond.i.i.i.i.i.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i.i ], [ true, %bb.h ] ; 2 uses
  %i.bg = load i64, ptr %i.ae, align 8, !range !28, !alias.scope !23226, !noundef !14
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %bb.l, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit74.i.i.i.i.i

bb.l:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i.i
  %i.bi = load ptr, ptr %i.ag, align 8, !alias.scope !23230, !noundef !14 ; 2 uses
  %.not.i.i.i.i61.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i61.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val4.i.i.i.i.i62.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !23231, !nonnull !14, !noundef !14
  %i.bj = ptrtoint ptr %.val4.i.i.i.i.i62.i.i.i.i.i to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub nuw i64 %i.bj, %i.bk
  %i.bm = udiv exact i64 %i.bl, 360
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.sroa.7.0.i.i.i.i64.i.i.i.i.i = phi i64 [ %i.bm, %bb.m ], [ 0, %bb.l ]
  %i.bn = load ptr, ptr %i.ai, align 8, !alias.scope !23230, !noundef !14 ; 2 uses
  %.not55.i.i.i.i65.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not55.i.i.i.i65.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i.i
  %.val4.i65.i.i.i.i66.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !23232, !nonnull !14, !noundef !14
  %i.bo = ptrtoint ptr %.val4.i65.i.i.i.i66.i.i.i.i.i to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub nuw i64 %i.bo, %i.bp
  %i.br = udiv exact i64 %i.bq, 360
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i.i: ; preds = %bb.n, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i.i
  %.sroa.8.0.i.i.i.i68.i.i.i.i.i = phi i64 [ %i.br, %bb.n ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i.i ]
  %i.bs = add nuw nsw i64 %.sroa.8.0.i.i.i.i68.i.i.i.i.i, %.sroa.7.0.i.i.i.i64.i.i.i.i.i
  %i.bt = load ptr, ptr %i.af, align 8, !alias.scope !23230, !noundef !14 ; 2 uses
  %.not56.i.i.i.i69.i.i.i.i.i = icmp eq ptr %i.bt, null
  %.val63.i.i.i.i70.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !23230, !nonnull !14
  %i.bu = icmp eq ptr %.val63.i.i.i.i70.i.i.i.i.i, %i.bt
  %or.cond.i.i.i.i71.i.i.i.i.i = select i1 %.not56.i.i.i.i69.i.i.i.i.i, i1 true, i1 %i.bu ; 2 uses
  %spec.select89.i.i.i.i.i = select i1 %or.cond.i.i.i.i71.i.i.i.i.i, i64 %i.bs, i64 undef
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit74.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit74.i.i.i.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i.i
  %.sroa.8.1.i.i.i.i.i = phi i64 [ %spec.select89.i.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i.i ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i.i ]
  %.sroa.582.0.i.i.i.i.i = phi i1 [ %or.cond.i.i.i.i71.i.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i.i ], [ true, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i.i ] ; 2 uses
  %i.bv = trunc nuw i64 %i.aq to i1
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit74.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !23226, !align !18, !noundef !14
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  %op.rdx = select i1 %.not.i.i.not.i.i.i.i.i, i1 %.sroa.5.0.i.i.i.i.i, i1 false
  %op.rdx16 = select i1 %op.rdx, i1 %.sroa.582.0.i.i.i.i.i, i1 false
  br i1 %op.rdx16, label %bb.q, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i.i

bb.p:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit74.i.i.i.i.i
  %or.cond55.i.i.i.i.i = select i1 %.sroa.5.0.i.i.i.i.i, i1 %.sroa.582.0.i.i.i.i.i, i1 false
  br i1 %or.cond55.i.i.i.i.i, label %bb.q, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i.i

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bw = add i64 %.sroa.8.1.i.i.i.i.i, %.sroa.7.1.i.i.i.i.i
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %.sink95.i.i.i.sroa.phi.i.i = phi ptr [ %.sroa.9.i.i, %bb.q ], [ %.sroa.6.i.i, %bb.p ], [ %.sroa.6.i.i, %bb.o ]
  %.sink.i.i.i.i.i = phi i64 [ %i.bw, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink95.i.i.i.sroa.phi.i.i, align 8, !alias.scope !23233, !noalias !23234
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBR_INtNtNtBb_5slice4iter4IterNtB1u_15BindingsElementEINtNtB7_3map3MapIB2C_NtB1u_12CallableItemENvMs0_B1u_B3K_8callableENvMs1_B1u_B31_9callablesENvMs3_B1u_B1s_9iter_flatEIB3q_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB2C_NtB1u_7BindingEENCNvMs7_B1u_NtB1u_15CallableBinding18matching_overloads0ENCNCNvNtB1y_11ide_support23resolve_single_overloads_00ENCB7u_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1A_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBR_INtNtNtBb_5slice4iter4IterNtB1u_15BindingsElementEINtNtB7_3map3MapIB2C_NtB1u_12CallableItemENvMs0_B1u_B3K_8callableENvMs1_B1u_B31_9callablesENvMs3_B1u_B1s_9iter_flatEIB3q_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB2C_NtB1u_7BindingEENCNvMs7_B1u_NtB1u_15CallableBinding18matching_overloads0ENCNCNvNtB1y_11ide_support23resolve_single_overloads_00ENCB7u_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1A_.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.am, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE7reserveBJ_.exit.i.i unwind label %bb.r

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE7reserveBJ_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBR_INtNtNtBb_5slice4iter4IterNtB1u_15BindingsElementEINtNtB7_3map3MapIB2C_NtB1u_12CallableItemENvMs0_B1u_B3K_8callableENvMs1_B1u_B31_9callablesENvMs3_B1u_B1s_9iter_flatEIB3q_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB2C_NtB1u_7BindingEENCNvMs7_B1u_NtB1u_15CallableBinding18matching_overloads0ENCNCNvNtB1y_11ide_support23resolve_single_overloads_00ENCB7u_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1A_.exit, %.lr.ph.i.i
  %i.bx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23216, !nonnull !14, !noundef !14
  %i.by = getelementptr inbounds nuw [72 x i8], ptr %i.bx, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.by, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.bz = add nuw nsw i64 %i.am, 1
  store i64 %i.bz, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23215
  invoke fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBR_INtNtNtBb_5slice4iter4IterNtB1u_15BindingsElementEINtNtB7_3map3MapIB2C_NtB1u_12CallableItemENvMs0_B1u_B3K_8callableENvMs1_B1u_B31_9callablesENvMs3_B1u_B1s_9iter_flatEIB3q_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB2C_NtB1u_7BindingEENCNvMs7_B1u_NtB1u_15CallableBinding18matching_overloads0ENCNCNvNtB1y_11ide_support23resolve_single_overloads_00ENCB7u_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE7reserveBJ_.exit.i.i
  %i.ca = load i64, ptr %i.b, align 8, !range !29, !noalias !23215, !noundef !14
  %.not.i.i = icmp eq i64 %i.ca, 2
  br i1 %.not.i.i, label %.loopexit9, label %.lr.ph.i.i

bb.r:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBR_INtNtNtBb_5slice4iter4IterNtB1u_15BindingsElementEINtNtB7_3map3MapIB2C_NtB1u_12CallableItemENvMs0_B1u_B3K_8callableENvMs1_B1u_B31_9callablesENvMs3_B1u_B1s_9iter_flatEIB3q_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB2C_NtB1u_7BindingEENCNvMs7_B1u_NtB1u_15CallableBinding18matching_overloads0ENCNCNvNtB1y_11ide_support23resolve_single_overloads_00ENCB7u_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1A_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.a) #33
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE7reserveBJ_.exit.i.i, %bb.g
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.r ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #33
          to label %bb.u unwind label %bb.t

.loopexit9:                                       ; preds = %.noexc7, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.d

bb.t:                                             ; preds = %.body, %bb.e
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.u:                                             ; preds = %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtB14_4TypeENCNvB12_43extract_unpacked_typed_dict_from_value_types_0EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23295)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23298
  store ptr %i.l, ptr %i.h, align 8, !noalias !23299
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !23300, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %1, align 8, !alias.scope !23300 ; 2 uses
  %i.o = icmp eq ptr %.promoted.i.i.i, %i.n
  br i1 %i.o, label %.loopexit13, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.q = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.r, ptr %1, align 8, !alias.scope !23300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23301
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict43extract_unpacked_typed_dict_from_value_types_0INtB7_5FnMutTRNtBU_4TypeEE8call_mutBW_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.q), !noalias !23302
  %i.s = load i32, ptr %i.p, align 8, !range !73, !noalias !23301, !noundef !14 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.s, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23301
  %i.t = icmp eq ptr %i.r, %i.n
  br i1 %i.t, label %.loopexit13, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.710.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.710.0..sroa_idx.i.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23298
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23303
  invoke void @_RNvXs1_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintBU_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.g unwind label %bb.f

.loopexit13:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23298
  store i64 0, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.loopexit13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1S_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEBH_.exit unwind label %bb.s

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.g
  %i.x = load i64, ptr %i.e, align 8, !range !28, !noundef !14
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !60, !noundef !14 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %.noexc
  %i.ac = load i64, ptr %i.ab, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #31
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc
  %i.ad = load ptr, ptr %i.ab, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ae = icmp ugt i64 %i.aa, 3
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  store i64 %i.aa, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !23304)
  call void @llvm.experimental.noalias.scope.decl(metadata !23305)
  call void @llvm.experimental.noalias.scope.decl(metadata !23306)
  call void @llvm.experimental.noalias.scope.decl(metadata !23307)
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23308)
  call void @llvm.experimental.noalias.scope.decl(metadata !23309)
  call void @llvm.experimental.noalias.scope.decl(metadata !23310)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23311
  store ptr %i.af, ptr %i.c, align 8, !noalias !23312
end_hunk_1
begin_hunk_2_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB3c_6filter6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvB14_20definitions_for_names6_0EBQ_NCB6b_s7_0EE9from_iterB18_:bb.a
  store i64 %.sink.i.i.i.i, ptr %.sink80.i.i.sroa.phi.i.i, align 8, !alias.scope !24172, !noalias !24162
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.by = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24173, !noundef !14 ; 2 uses
  %i.bz = load i64, ptr %i.g, align 8, !range !24, !alias.scope !24173, !noundef !14
  %i.ca = sub i64 %i.bz, %i.by
  %.not6.i.i = icmp ult i64 %i.bo, %i.ca
  br i1 %.not6.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE7reserveBL_.exit.i.i, label %bb.w, !prof !15

bb.w:                                             ; preds = %bb.v
  %i.cb = add nuw nsw i64 %i.bo, 1
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.by, i64 noundef %i.cb, i64 noundef 4, i64 noundef 20)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE7reserveBL_.exit.i.i unwind label %bb.u

bb.x:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2F_6filter6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvBJ_20definitions_for_names6_0EBv_NCB5E_s7_0EEBN_.exit.i: ; preds = %bb.n
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_6filter6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names6_0EINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB3q_18resolve_definition18ResolvedDefinitionENCB3o_s7_0EEB3u_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.e)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2F_6filter6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvBJ_20definitions_for_names6_0EBv_NCB5E_s7_0EEBN_.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %i.bx, %bb.u ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2F_6filter6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvBJ_20definitions_for_names6_0EBv_NCB5E_s7_0EEBN_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.aa:                                            ; preds = %.body, %bb.ac
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ab:                                            ; preds = %.body, %bb.ac
  %.pn13 = phi { ptr, i32 } [ %i.cf, %bb.ac ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn13

bb.ac:                                            ; preds = %bb.k, %bb.j, %bb.f, %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_6filter6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names6_0EINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB3q_18resolve_definition18ResolvedDefinitionENCB3o_s7_0EEB3u_(ptr noalias noundef align 8 dereferenceable(152) %1) #33
          to label %bb.ab unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB18_15CallableBinding37filter_overloads_using_any_or_unknown18OverloadFilterSlotEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB3V_3zip3ZipINtNtNtB3Z_5slice4iter4IterNtB18_15MatchedArgumentEINtNtB3V_3map3MapIB54_NtNtB1a_9arguments12CallArgumentENCNvMs_B6g_NtB6g_13CallArguments10iter_types0EEIB5T_INtNtB3V_6copied6CopiedIB54_NtB18_16MatchedParameterEENCNCNCNvMs7_B18_B21_37filter_overloads_using_any_or_unknown000ENCB8x_0EE9from_iterB1e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 4                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 4                ; 10 uses
  %.sroa.5.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.i = alloca [48 x i8], align 4                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [48 x i8], align 4                ; 9 uses
  %i.n = alloca [168 x i8], align 8               ; 21 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.o = alloca [48 x i8], align 4                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !24256
  call fastcc void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_(ptr noalias noundef align 4 captures(none) dereferenceable(48) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(168) %1), !noalias !24257
  %i.q = load i32, ptr %i.m, align 4, !range !32, !noalias !24256, !noundef !14
  %.not25.i.i = icmp eq i32 %i.q, -1
  br i1 %.not25.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.716.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.817.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.o, ptr noundef nonnull align 4 dereferenceable(48) %i.m, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !24256
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !24256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24258)
  %i.x = load ptr, ptr %i.r, align 8, !alias.scope !24259, !noundef !14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24260)
  %i.y = load i64, ptr %i.s, align 8, !alias.scope !24261, !noundef !14 ; 4 uses
  %i.z = load i64, ptr %i.t, align 8, !alias.scope !24261, !noundef !14
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.i.i: ; preds = %bb.c
  %i.ab = add nuw i64 %i.y, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !24261
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.y
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !24261, !nonnull !14, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24262)
  %i.ad = tail call { ptr, ptr } @_RNvMsc_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15MatchedArgument4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac), !noalias !24263 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0      ; 2 uses
  %.not1.i.i = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.i.i
  %i.af = load ptr, ptr %i.v, align 8, !alias.scope !24264, !nonnull !14, !align !18, !noundef !14
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %.val2.i.i.i.i.i.i, i64 %i.y
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ae, ptr %1, align 8, !alias.scope !24265
  store ptr %i.ag, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !alias.scope !24265
  %i.aj = load <2 x ptr>, ptr %i.w, align 8, !alias.scope !24264
  store <2 x ptr> %i.aj, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !alias.scope !24265
  store ptr %i.af, ptr %.sroa.716.0..sroa_idx.i.i, align 8, !alias.scope !24265
  store ptr %i.ai, ptr %.sroa.817.0..sroa_idx.i.i, align 8, !alias.scope !24265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !24256
  call fastcc void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_(ptr noalias noundef align 4 captures(none) dereferenceable(48) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(168) %1), !noalias !24257
  %i.ak = load i32, ptr %i.m, align 4, !range !32, !noalias !24256, !noundef !14
  %.not.i.i = icmp eq i32 %i.ak, -1
  br i1 %.not.i.i, label %bb.b, label %._crit_edge.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.i.i, %bb.c, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  call fastcc void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_(ptr noalias noundef nonnull align 4 captures(none) dereferenceable(48) %i.o, ptr noalias noundef align 8 dereferenceable(48) %i.al)
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit: ; preds = %._crit_edge.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i
  %i.am = load i32, ptr %i.o, align 4, !range !32, !noundef !14
  %.not = icmp eq i32 %i.am, -1
  br i1 %.not, label %bb.x, label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24269)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !24270
  %i.an = load ptr, ptr %1, align 8, !alias.scope !24271, !noundef !14
  %.not.i.i5 = icmp eq ptr %i.an, null
  br i1 %.not.i.i5, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) dereferenceable_or_null(48) %1), !noalias !24272
  %.pre.i.i = load i64, ptr %i.l, align 8, !noalias !24270
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre74.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !28, !noalias !24270
  %.phi.trans.insert75.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pre76.i.i = load i64, ptr %.phi.trans.insert75.i.i, align 8, !noalias !24270
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ao = phi i64 [ %.pre76.i.i, %bb.f ], [ 0, %bb.e ]
  %i.ap = phi i64 [ %.pre74.i.i, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.aq = phi i64 [ %.pre.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !24270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !24270
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !24271, !noundef !14
  %.not55.i.i = icmp eq ptr %i.as, null
  br i1 %.not55.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit64.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) dereferenceable_or_null(48) %i.ar), !noalias !24273
  %.pre77.i.i = load i64, ptr %i.k, align 8, !noalias !24270
  %.phi.trans.insert78.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre79.i.i = load i64, ptr %.phi.trans.insert78.i.i, align 8, !range !28, !noalias !24270
  %.phi.trans.insert80.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre81.i.i = load i64, ptr %.phi.trans.insert80.i.i, align 8, !noalias !24270
  %i.at = call i64 @llvm.uadd.sat.i64(i64 %i.aq, i64 %.pre77.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit64.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit64.i.i: ; preds = %bb.g, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i
  %i.au = phi i64 [ %.pre81.i.i, %bb.g ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i ]
  %.fr48 = phi i64 [ %.pre79.i.i, %bb.g ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i ] ; 2 uses
  %i.av = phi i64 [ %i.at, %bb.g ], [ %i.aq, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !24270
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !24271, !noundef !14
  %.not56.i.i = icmp eq ptr %i.ax, null
  br i1 %.not56.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit64.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val.i.i = load i64, ptr %i.ay, align 8, !alias.scope !24271, !noundef !14
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val63.i.i = load i64, ptr %i.az, align 8, !alias.scope !24271, !noundef !14
  %i.ba = icmp eq i64 %.val63.i.i, %.val.i.i
  %i.bb = trunc nuw i64 %i.ap to i1
  %i.bc = trunc nuw i64 %.fr48 to i1
  %op.rdx46 = select i1 %i.ba, i1 %i.bb, i1 false
  %op.rdx47 = select i1 %op.rdx46, i1 %i.bc, i1 false
  br i1 %op.rdx47, label %bb.j, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit

bb.i:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit64.i.i
  %i.bd = and i64 %.fr48, %i.ap
  %or.cond57.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %or.cond57.not.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.be = add i64 %i.au, %i.ao
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.sink83.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.j ], [ %.sroa.5, %bb.i ], [ %.sroa.5, %bb.h ]
  %.sink.i.i = phi i64 [ %i.be, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  store i64 %.sink.i.i, ptr %.sink83.i.i.sroa.phi, align 8, !alias.scope !24274
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bf = call i64 @llvm.uadd.sat.i64(i64 %i.av, i64 1)
  %.sroa.0.0.i = call noundef i64 @llvm.umax.i64(i64 %i.bf, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 48)
  %i.bg = load i64, ptr %i.j, align 8, !range !28, !noundef !14
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !60, !noundef !14 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.bh, label %bb.k, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit
  %i.bl = load i64, ptr %i.bk, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bj, i64 %i.bl) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit
  %i.bm = load ptr, ptr %i.bk, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.bn = icmp ule i64 %.sroa.0.0.i, %i.bj
  call void @llvm.assume(i1 %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.bm, ptr noundef nonnull align 4 dereferenceable(48) %i.o, i64 48, i1 false)
  store i64 %i.bj, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.n, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24275)
  call void @llvm.experimental.noalias.scope.decl(metadata !24276)
  call void @llvm.experimental.noalias.scope.decl(metadata !24277)
  call void @llvm.experimental.noalias.scope.decl(metadata !24278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !24279
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %.sroa.413.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.514.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.615.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.716.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.817.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.phi.trans.insert75.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.phi.trans.insert78.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.phi.trans.insert80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBL_15CallableBinding37filter_overloads_using_any_or_unknown18OverloadFilterSlotE7reserveBR_.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24280)
  call void @llvm.experimental.noalias.scope.decl(metadata !24281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !24282
  invoke fastcc void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_(ptr noalias noundef align 4 captures(none) dereferenceable(48) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(168) %i.n)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  %i.by = load i32, ptr %i.h, align 4, !range !32, !noalias !24282, !noundef !14
  %.not25.i.i.i.i = icmp eq i32 %i.by, -1
  br i1 %.not25.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !24282
  %i.bz = load ptr, ptr %i.bo, align 8, !alias.scope !24283, !noundef !14 ; 2 uses
  %.not.i.i.i14.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i14.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i.i.i, label %.lr.ph.i.i7

._crit_edge.i.i.i.i:                              ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_.exit.thread.i.i, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !24284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !24282
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.i.i

.lr.ph.i.i7:                                      ; preds = %.lr.ph.i.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_.exit.i.i
  %i.ca = phi ptr [ %i.dd, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_.exit.i.i ], [ %i.bz, %.lr.ph.i.i.i.i ]
  %i.cb = load i64, ptr %i.bp, align 8, !alias.scope !24285, !noundef !14 ; 4 uses
  %i.cc = load i64, ptr %i.bq, align 8, !alias.scope !24285, !noundef !14
  %i.cd = icmp ult i64 %i.cb, %i.cc
  br i1 %i.cd, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.i.i.i.i: ; preds = %.lr.ph.i.i7
  %i.ce = add nuw i64 %i.cb, 1
  store i64 %i.ce, ptr %i.bp, align 8, !alias.scope !24285
  %i.cf = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %i.cb
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !24285, !nonnull !14, !noundef !14
  %i.cg = invoke { ptr, ptr } @_RNvMsc_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15MatchedArgument4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cf)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.i.i.i.i
  %i.ch = extractvalue { ptr, ptr } %i.cg, 0      ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not1.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc8
  %i.ci = load ptr, ptr %i.bs, align 8, !alias.scope !24286, !nonnull !14, !align !18, !noundef !14
  %i.cj = extractvalue { ptr, ptr } %i.cg, 1
  %i.ck = getelementptr inbounds nuw [72 x i8], ptr %.val2.i.i.i.i.i.i.i.i, i64 %i.cb
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.ch, ptr %i.n, align 8, !alias.scope !24287
  store ptr %i.cj, ptr %.sroa.413.0..sroa_idx.i.i.i.i, align 8, !alias.scope !24287
  %i.cm = load <2 x ptr>, ptr %i.bt, align 8, !alias.scope !24286
  store <2 x ptr> %i.cm, ptr %.sroa.514.0..sroa_idx.i.i.i.i, align 8, !alias.scope !24287
  store ptr %i.ci, ptr %.sroa.716.0..sroa_idx.i.i.i.i, align 8, !alias.scope !24287
  store ptr %i.cl, ptr %.sroa.817.0..sroa_idx.i.i.i.i, align 8, !alias.scope !24287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !24282
  call void @llvm.experimental.noalias.scope.decl(metadata !24288)
  call void @llvm.experimental.noalias.scope.decl(metadata !24289)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24284
  call void @llvm.experimental.noalias.scope.decl(metadata !24290), !noalias !24291
  call void @llvm.experimental.noalias.scope.decl(metadata !24292), !noalias !24291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24293
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENtNtNtB8_6traits8iterator8Iterator4nextB1z_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(168) %i.n)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.m
  %i.cn = load i32, ptr %i.d, align 8, !range !33, !noalias !24294, !noundef !14
  %.not.i.i.i5.i.i = icmp eq i32 %i.cn, -2
  br i1 %.not.i.i.i5.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit.thread.i.i.i, label %bb.n

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit.thread.i.i.i: ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24293
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_.exit.i.i

bb.n:                                             ; preds = %.noexc9
  %.sroa.42.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !24294 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24295), !noalias !24291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24296
  %i.co = load ptr, ptr %.sroa.514.0..sroa_idx.i.i.i.i, align 8, !alias.scope !24297, !noalias !24291, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !noalias !24298, !nonnull !14, !noundef !14 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !24298, !noundef !14 ; 2 uses
  %i.cs = icmp ult i64 %.sroa.42.0.copyload.i.i.i.i.i, %i.cr
  br i1 %i.cs, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.42.0.copyload.i.i.i.i.i, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #31
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.o
  unreachable

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit.i.i.i: ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !24298, !nonnull !14, !noundef !14
  %i.cv = getelementptr inbounds nuw [72 x i8], ptr %i.cu, i64 %.sroa.42.0.copyload.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !alias.scope !24299, !noalias !24298
  %i.cx = load ptr, ptr %.sroa.615.0..sroa_idx.i.i.i.i, align 8, !alias.scope !24297, !noalias !24291, !nonnull !14, !noundef !14 ; 2 uses
  %i.cy = load ptr, ptr %.sroa.716.0..sroa_idx.i.i.i.i, align 8, !alias.scope !24297, !noalias !24291, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  %i.cz = invoke { i32, i32 } @_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding14specialization(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.co, ptr noundef nonnull %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.cy)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc11:                                         ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit.i.i.i
  %i.da = extractvalue { i32, i32 } %i.cz, 0
  %i.db = extractvalue { i32, i32 } %i.cz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !24296
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type29apply_optional_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.cy, i32 noundef %i.da, i32 %i.db)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24296
  %i.dc = load ptr, ptr %.sroa.817.0..sroa_idx.i.i.i.i, align 8, !alias.scope !24297, !noalias !24291, !nonnull !14, !align !18, !noundef !14
  invoke void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB2_17CallArgumentTypes21get_for_declared_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dc, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %.noexc12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bv, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !24300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !24300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24296
  %.sroa.0.0.copyload4.i.i.i = load i32, ptr %i.e, align 4, !noalias !24300 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24293
  %.not3.i.i.i = icmp eq i32 %.sroa.0.0.copyload4.i.i.i, -1
  br i1 %.not3.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_.exit.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_.exit.thread.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_.exit.thread.i.i: ; preds = %.noexc13
  store i32 %.sroa.0.0.copyload4.i.i.i, ptr %i.h, align 4, !alias.scope !24288, !noalias !24301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(44) %i.bu, i64 44, i1 false), !noalias !24302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24284
  br label %._crit_edge.i.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_.exit.i.i: ; preds = %.noexc13, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit.thread.i.i.i
  store ptr null, ptr %i.n, align 8, !alias.scope !24303, !noalias !24291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !24282
  %i.dd = load ptr, ptr %i.bo, align 8, !alias.scope !24304, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i.i.i, label %.lr.ph.i.i7

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_.exit.i.i, %.noexc8, %.lr.ph.i.i7, %.lr.ph.i.i.i.i
  invoke fastcc void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_(ptr noalias noundef nonnull align 4 captures(none) dereferenceable(48) %i.i, ptr noalias noundef align 8 dereferenceable(48) %i.bx)
          to label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.i.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %i.de = load i32, ptr %i.i, align 4, !range !32, !noalias !24284, !noundef !14
  %.not.i.i6 = icmp eq i32 %i.de, -1
  br i1 %.not.i.i6, label %bb.z, label %bb.p

bb.p:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.i.i
  %i.df = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24305, !noundef !14 ; 4 uses
  %i.dg = icmp ult i64 %i.df, 192153584101141163
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load i64, ptr %i.p, align 8, !range !24, !alias.scope !24305, !noundef !14
  %i.di = icmp eq i64 %i.df, %i.dh
  br i1 %i.di, label %bb.q, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBL_15CallableBinding37filter_overloads_using_any_or_unknown18OverloadFilterSlotE7reserveBR_.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !24306)
  call void @llvm.experimental.noalias.scope.decl(metadata !24307)
  call void @llvm.experimental.noalias.scope.decl(metadata !24308)
  call void @llvm.experimental.noalias.scope.decl(metadata !24309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !24310
  %i.dj = load ptr, ptr %i.n, align 8, !alias.scope !24311, !noundef !14
  %.not.i.i4.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i4.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) dereferenceable_or_null(48) %i.n)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !24310
  %.pre74.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !28, !noalias !24310
  %.pre76.i.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i.i, align 8, !noalias !24310
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i.i.i: ; preds = %.noexc15, %bb.q
  %i.dk = phi i64 [ %.pre76.i.i.i.i, %.noexc15 ], [ 0, %bb.q ]
  %i.dl = phi i64 [ %.pre74.i.i.i.i, %.noexc15 ], [ 1, %bb.q ] ; 2 uses
  %i.dm = phi i64 [ %.pre.i.i.i.i, %.noexc15 ], [ 0, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !24310
  %i.dn = load ptr, ptr %i.bx, align 8, !alias.scope !24311, !noundef !14
  %.not55.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not55.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit64.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i.i.i
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) dereferenceable_or_null(48) %i.bx)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.s
  %.pre77.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !24310
  %.pre79.i.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i.i, align 8, !range !28, !noalias !24310
  %.pre81.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i, align 8, !noalias !24310
  %i.do = call i64 @llvm.uadd.sat.i64(i64 %i.dm, i64 %.pre77.i.i.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit64.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit64.i.i.i.i: ; preds = %.noexc16, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i.i.i
  %i.dp = phi i64 [ %.pre81.i.i.i.i, %.noexc16 ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i.i.i ]
  %.fr49 = phi i64 [ %.pre79.i.i.i.i, %.noexc16 ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i.i.i ] ; 2 uses
  %i.dq = phi i64 [ %i.do, %.noexc16 ], [ %i.dm, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24310
  %i.dr = load ptr, ptr %i.bo, align 8, !alias.scope !24311, !noundef !14
  %.not56.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not56.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit64.i.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !24311, !noundef !14
  %.val63.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !24311, !noundef !14
  %i.ds = icmp eq i64 %.val63.i.i.i.i, %.val.i.i.i.i
  %i.dt = trunc nuw i64 %i.dl to i1
  %i.du = trunc nuw i64 %.fr49 to i1
  %op.rdx = select i1 %i.ds, i1 %i.dt, i1 false
  %op.rdx45 = select i1 %op.rdx, i1 %i.du, i1 false
  br i1 %op.rdx45, label %bb.v, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit.i.i

bb.u:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B25_NtB25_15CallableBinding37filter_overloads_using_any_or_unknown000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2b_.exit64.i.i.i.i
  %i.dv = and i64 %.fr49, %i.dl
  %or.cond57.not.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %or.cond57.not.i.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dw = add i64 %i.dp, %i.dk
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.sink83.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.v ], [ %.sroa.5.i.i, %bb.u ], [ %.sroa.5.i.i, %bb.t ]
  %.sink.i.i.i.i = phi i64 [ %i.dw, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ]
  store i64 %.sink.i.i.i.i, ptr %.sink83.i.i.sroa.phi.i.i, align 8, !alias.scope !24312, !noalias !24284
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.dx = call i64 @llvm.uadd.sat.i64(i64 %i.dq, i64 1) ; 2 uses
  %i.dy = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24313, !noundef !14 ; 2 uses
  %i.dz = load i64, ptr %i.p, align 8, !range !24, !alias.scope !24313, !noundef !14
  %i.ea = sub i64 %i.dz, %i.dy
  %i.eb = icmp ugt i64 %i.dx, %i.ea
  br i1 %i.eb, label %bb.w, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBL_15CallableBinding37filter_overloads_using_any_or_unknown18OverloadFilterSlotE7reserveBR_.exit.i.i, !prof !16

bb.w:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.dy, i64 noundef range(i64 1, 0) %i.dx, i64 noundef 4, i64 noundef 48)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBL_15CallableBinding37filter_overloads_using_any_or_unknown18OverloadFilterSlotE7reserveBR_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBL_15CallableBinding37filter_overloads_using_any_or_unknown18OverloadFilterSlotE7reserveBR_.exit.i.i: ; preds = %bb.w, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit.i.i, %bb.p
  %i.ec = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24305, !nonnull !14, !noundef !14
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %i.ec, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ed, ptr noundef nonnull align 4 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.ee = add nuw nsw i64 %i.df, 1
  store i64 %i.ee, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24305
  br label %bb.l

bb.x:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit
  store i64 0, ptr %0, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.eg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.i.i.i.i, %bb.m, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit.i.i.i, %.noexc11, %.noexc12, %bb.w, %bb.s, %bb.r, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEIBZ_IB1v_NtNtB1Y_9arguments12CallArgumentENCNvMs_B3i_NtB3i_13CallArguments10iter_types0EENCNCNvMs7_B1W_NtB1W_15CallableBinding37filter_overloads_using_any_or_unknown00EEINtB5_8FuseImplBY_E4nextB22_.exit.thread.i.i.i.i, %bb.l, %bb.o
  %lpad.loopexit.split-lp51 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBT_15CallableBinding37filter_overloads_using_any_or_unknown18OverloadFilterSlotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1f_15CallableBinding37filter_overloads_using_any_or_unknown18OverloadFilterSlotEEB1l_.exit unwind label %bb.aa

bb.z:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEINtNtB7_3map3MapIB1l_NtNtB1O_9arguments12CallArgumentENCNvMs_B3k_NtB3k_13CallArguments10iter_types0EEIB2Y_INtNtB7_6copied6CopiedIB1l_NtB1M_16MatchedParameterEENCNCNCNvMs7_B1M_NtB1M_15CallableBinding37filter_overloads_using_any_or_unknown000ENCB5A_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !24279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  br label %bb.y

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1f_15CallableBinding37filter_overloads_using_any_or_unknown18OverloadFilterSlotEEB1l_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp51
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB11_EE9from_iterCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.f, align 8, !noundef !14
  %i.g = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.h = load i64, ptr %i.a, align 8, !range !28, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !60, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = icmp ule i64 %.sroa.0.0.i, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.n, align 8
  store i64 %i.k, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24323)
  %i.p = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %.not6.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBR_EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.noexc8, %.lr.ph.i.i
  %i.s = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.ac, %.noexc8 ]
  %i.t = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24324, !noundef !14 ; 5 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.c, align 8, !range !24, !alias.scope !24324, !noundef !14
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %.noexc7

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.r, align 8, !alias.scope !24325, !noundef !14
  %i.x = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.t, i64 noundef range(i64 1, 0) %i.x, i64 noundef 8, i64 noundef 8)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.d
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24324, !nonnull !14, !noundef !14
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.t
  store ptr %i.s, ptr %i.z, align 8
  %i.aa = add nuw nsw i64 %i.t, 1
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24324
  %i.ab = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc7
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBR_EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBR_EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc7, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.g

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBR_EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.noexc8, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.f

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp14
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2s_9enumerate9EnumerateNtB13_20ArgumentsSourceOrderENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic32report_discarded_extra_arguments0EE9from_iterB4v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
end_hunk_2
begin_hunk_3_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtCsddXFpJ32JCa_6either6EitherINtNtB1y_7step_by6StepByINtNtB1y_4take4TakeINtNtB1y_4skip4SkipINtNtNtB1C_5slice4iter4IterhEEEEIB2T_IB3h_IB3A_INtNtB1y_3rev3RevB3S_EEEEEEE9from_iterCsoTR8nlGN3X_18ty_python_semantic:bb.a
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.t = extractvalue { i1, i8 } %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtCsddXFpJ32JCa_6either6EitherINtNtB1g_7step_by6StepByINtNtB1g_4take4TakeINtNtB1g_4skip4SkipINtNtNtB1k_5slice4iter4IterhEEEEIB2B_IB2Z_IB3i_INtNtB1g_3rev3RevB3A_EEEEEEE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc9
  %.pn.i.i = phi { i1, i8 } [ %i.ai, %.noexc9 ], [ %i.s, %.noexc ]
  %i.u = extractvalue { i1, i8 } %.pn.i.i, 1
  %i.v = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24924, !noundef !14 ; 4 uses
  %i.w = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = load i64, ptr %i.e, align 8, !range !24, !alias.scope !24924, !noundef !14
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24925
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtCsddXFpJ32JCa_6either6EitherINtNtB6_7step_by6StepByINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterhEEEEIB1x_IB1U_IB2c_INtNtB6_3rev3RevB2t_EEEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.d
  %i.z = load i64, ptr %i.a, align 8, !noalias !24925, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24925
  %i.aa = call i64 @llvm.uadd.sat.i64(i64 %i.z, i64 1) ; 2 uses
  %i.ab = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24926, !noundef !14 ; 2 uses
  %i.ac = load i64, ptr %i.e, align 8, !range !24, !alias.scope !24926, !noundef !14
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, !prof !16

bb.e:                                             ; preds = %.noexc7
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ab, i64 noundef %i.aa, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.e, %.noexc7, %.lr.ph.i.i
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24924, !nonnull !14, !noundef !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v
  store i8 %i.u, ptr %i.ag, align 1
  %i.ah = add nuw i64 %i.v, 1
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24924
  %i.ai = invoke { i1, i8 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtCsddXFpJ32JCa_6either6EitherINtNtB6_7step_by6StepByINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterhEEEEIB1x_IB1U_IB2c_INtNtB6_3rev3RevB2t_EEEEEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.aj = extractvalue { i1, i8 } %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtCsddXFpJ32JCa_6either6EitherINtNtB1g_7step_by6StepByINtNtB1g_4take4TakeINtNtB1g_4skip4SkipINtNtNtB1k_5slice4iter4IterhEEEEIB2B_IB2Z_IB3i_INtNtB1g_3rev3RevB3A_EEEEEEE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtCsddXFpJ32JCa_6either6EitherINtNtB1g_7step_by6StepByINtNtB1g_4take4TakeINtNtB1g_4skip4SkipINtNtNtB1k_5slice4iter4IterhEEEEIB2B_IB2Z_IB3i_INtNtB1g_3rev3RevB3A_EEEEEEE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.e, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.h

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtCsddXFpJ32JCa_6either6EitherINtNtB1g_7step_by6StepByINtNtB1g_4take4TakeINtNtB1g_4skip4SkipINtNtNtB1k_5slice4iter4IterhEEEEIB2B_IB2Z_IB3i_INtNtB1g_3rev3RevB3A_EEEEEEE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.noexc9, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.g

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp12
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1C_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB1y_6copied6CopiedIB2q_hEENCNvMs15_B2S_NtB2S_17BytesLiteralValue5bytes0EE9from_iterCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i.i = load ptr, ptr %i.h, align 8, !alias.scope !24984
  %i.k = icmp eq ptr %.pre.i.i, null
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call { i1, i8 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.m = extractvalue { i1, i8 } %i.l, 0
  br i1 %i.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.h, align 8, !alias.scope !24984
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.n = load ptr, ptr %1, align 8, !alias.scope !24985, !noundef !14 ; 3 uses
  %.not.i4.i.peel.i = icmp eq ptr %i.n, null
  br i1 %.not.i4.i.peel.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !24986, !nonnull !14, !noundef !14
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.e, %bb.g
  %.sink8.i = phi ptr [ %.pre.i, %bb.g ], [ %i.n, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sink8.i, i64 32
  store ptr %i.q, ptr %1, align 8, !alias.scope !24987
  %.val.i.i.i.peel.i = load ptr, ptr %.sink8.i, align 8, !noalias !14, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = getelementptr i8, ptr %.sink8.i, i64 8
  %.val3.i.i.i.peel.i = load i64, ptr %i.r, align 8, !noalias !14, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i.peel.i, i64 %.val3.i.i.i.peel.i
  store ptr %.val.i.i.i.peel.i, ptr %i.h, align 8, !alias.scope !24988
  store ptr %i.s, ptr %i.j, align 8, !alias.scope !24988
  %i.t = tail call { i1, i8 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.u = extractvalue { i1, i8 } %i.t, 0
  br i1 %i.u, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.peel.next.i
  store ptr null, ptr %i.h, align 8, !alias.scope !24984
  %.pre.i = load ptr, ptr %1, align 8, !alias.scope !24989 ; 3 uses
  %.not.i4.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i4.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.i, align 8, !alias.scope !24990, !nonnull !14, !noundef !14
  %i.w = icmp eq ptr %.pre.i, %i.v
  br i1 %i.w, label %.loopexit.i, label %.peel.next.i, !llvm.loop !24943

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !24991, !noundef !14
  %.not.i7.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i7.i.i, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %.loopexit.i
  %i.z = tail call { i1, i8 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x) ; 2 uses
  %i.aa = extractvalue { i1, i8 } %i.z, 0
  br i1 %i.aa, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.ab

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %.peel.next.i, %bb.b, %bb.h
  %.pn = phi { i1, i8 } [ %i.z, %bb.h ], [ %i.l, %bb.b ], [ %i.t, %.peel.next.i ]
  %.sroa.3.0.i8.pn.i.i.ph = extractvalue { i1, i8 } %.pn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24995)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24996
  %i.ab = load ptr, ptr %i.h, align 8, !alias.scope !24997, !noundef !14
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.h), !noalias !24998
  %.pre.i.i7 = load i64, ptr %i.e, align 8, !noalias !24996
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre74.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !28, !noalias !24996
  %.phi.trans.insert75.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre76.i.i = load i64, ptr %.phi.trans.insert75.i.i, align 8, !noalias !24996
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.ac = phi i64 [ %.pre76.i.i, %bb.i ], [ 0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %i.ad = phi i64 [ %.pre74.i.i, %bb.i ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ] ; 2 uses
  %i.ae = phi i64 [ %.pre.i.i7, %bb.i ], [ 0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24996
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !24997, !noundef !14
  %.not55.i.i = icmp eq ptr %i.ag, null
  br i1 %.not55.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit64.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.af), !noalias !24999
  %.pre77.i.i = load i64, ptr %i.d, align 8, !noalias !24996
  %.phi.trans.insert78.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre79.i.i = load i64, ptr %.phi.trans.insert78.i.i, align 8, !range !28, !noalias !24996
  %.phi.trans.insert80.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre81.i.i = load i64, ptr %.phi.trans.insert80.i.i, align 8, !noalias !24996
  %i.ah = call i64 @llvm.uadd.sat.i64(i64 %i.ae, i64 %.pre77.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit64.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit64.i.i: ; preds = %bb.j, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.ai = phi i64 [ %.pre81.i.i, %bb.j ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.fr41 = phi i64 [ %.pre79.i.i, %bb.j ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ] ; 2 uses
  %i.aj = phi i64 [ %i.ah, %bb.j ], [ %i.ae, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24996
  %i.ak = load ptr, ptr %1, align 8, !alias.scope !24997, !noundef !14 ; 2 uses
  %.not56.i.i = icmp eq ptr %i.ak, null
  br i1 %.not56.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit64.i.i
  %.val63.i.i = load ptr, ptr %i.i, align 8, !alias.scope !24997, !nonnull !14, !noundef !14
  %i.al = icmp eq ptr %.val63.i.i, %i.ak
  %i.am = trunc nuw i64 %i.ad to i1
  %i.an = trunc nuw i64 %.fr41 to i1
  %op.rdx39 = select i1 %i.al, i1 %i.am, i1 false
  %op.rdx40 = select i1 %op.rdx39, i1 %i.an, i1 false
  br i1 %op.rdx40, label %bb.m, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit64.i.i
  %i.ao = and i64 %.fr41, %i.ad
  %or.cond57.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %or.cond57.not.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = add i64 %i.ai, %i.ac
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.sink83.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.m ], [ %.sroa.5, %bb.l ], [ %.sroa.5, %bb.k ]
  %.sink.i.i = phi i64 [ %i.ap, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i, ptr %.sink83.i.i.sroa.phi, align 8, !alias.scope !25000
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.aq = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 1)
  %.sroa.0.0.i = call noundef i64 @llvm.umax.i64(i64 %i.aq, i64 8) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ar = load i64, ptr %i.c, align 8, !range !28, !noundef !14
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !60, !noundef !14 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.as, label %bb.n, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.n:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.aw = load i64, ptr %i.av, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ax = load ptr, ptr %i.av, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ay = icmp ule i64 %.sroa.0.0.i, %i.au
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %.sroa.3.0.i8.pn.i.i.ph, ptr %i.ax, align 1
  store i64 %i.au, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !25001)
  call void @llvm.experimental.noalias.scope.decl(metadata !25002)
  call void @llvm.experimental.noalias.scope.decl(metadata !25003)
  call void @llvm.experimental.noalias.scope.decl(metadata !25004)
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert75.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert78.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %.pre.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !25005
  %i.bd = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %i.bd, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = invoke { i1, i8 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.p
  %i.bf = extractvalue { i1, i8 } %i.be, 0
  br i1 %i.bf, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc
  store ptr null, ptr %i.az, align 8, !alias.scope !25005
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.bg = load ptr, ptr %i.f, align 8, !alias.scope !25006, !noundef !14 ; 3 uses
  %.not.i4.i.peel.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.ba, align 8, !nonnull !14
  %i.bi = icmp eq ptr %i.bg, %i.bh
  %or.cond = select i1 %.not.i4.i.peel.i.i.i, i1 true, i1 %i.bi
  br i1 %or.cond, label %.loopexit.i.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.r, %bb.s
  %.sink8.i.i.i = phi ptr [ %.pre.i.i.i, %bb.s ], [ %i.bg, %bb.r ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink8.i.i.i, i64 32
  store ptr %i.bj, ptr %i.f, align 8, !alias.scope !25007
  %.val.i.i.i.peel.i.i.i = load ptr, ptr %.sink8.i.i.i, align 8, !noalias !14, !nonnull !14, !noundef !14 ; 2 uses
  %i.bk = getelementptr i8, ptr %.sink8.i.i.i, i64 8
  %.val3.i.i.i.peel.i.i.i = load i64, ptr %i.bk, align 8, !noalias !14, !noundef !14
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.peel.i.i.i, i64 %.val3.i.i.i.peel.i.i.i
  store ptr %.val.i.i.i.peel.i.i.i, ptr %i.az, align 8, !alias.scope !25008
  store ptr %i.bl, ptr %i.bb, align 8, !alias.scope !25008
  %i.bm = invoke { i1, i8 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %.peel.next.i.i.i
  %i.bn = extractvalue { i1, i8 } %i.bm, 0
  br i1 %i.bn, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc8
  store ptr null, ptr %i.az, align 8, !alias.scope !25005
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !25009 ; 3 uses
  %.not.i4.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  %i.bo = load ptr, ptr %i.ba, align 8, !nonnull !14
  %i.bp = icmp eq ptr %.pre.i.i.i, %i.bo
  %or.cond20 = select i1 %.not.i4.i.i.i.i, i1 true, i1 %i.bp
  br i1 %or.cond20, label %.loopexit.i.i.i, label %.peel.next.i.i.i, !llvm.loop !24943

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r
  %i.bq = load ptr, ptr %i.bc, align 8, !alias.scope !25010, !noundef !14
  %.not.i7.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i7.i.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB1g_6copied6CopiedIB28_hEENCNvMs15_B2A_NtB2A_17BytesLiteralValue5bytes0EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit.i.i.i
  %i.br = invoke { i1, i8 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %bb.t
  %i.bs = extractvalue { i1, i8 } %i.br, 0
  br i1 %i.bs, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB1g_6copied6CopiedIB28_hEENCNvMs15_B2A_NtB2A_17BytesLiteralValue5bytes0EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %.noexc8, %.noexc9, %.noexc
  %.pn.i.i = phi { i1, i8 } [ %i.br, %.noexc9 ], [ %i.be, %.noexc ], [ %i.bm, %.noexc8 ]
  %.sroa.3.0.i8.pn.i.i.ph.i.i = extractvalue { i1, i8 } %.pn.i.i, 1
  %i.bt = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25011, !noundef !14 ; 4 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  call void @llvm.assume(i1 %i.bu)
  %i.bv = load i64, ptr %i.g, align 8, !range !24, !alias.scope !25011, !noundef !14
  %i.bw = icmp eq i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.u, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.u:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !25012)
  call void @llvm.experimental.noalias.scope.decl(metadata !25013)
  call void @llvm.experimental.noalias.scope.decl(metadata !25014)
  call void @llvm.experimental.noalias.scope.decl(metadata !25015)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25016
  %i.bx = load ptr, ptr %i.az, align 8, !alias.scope !25017, !noundef !14
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.az)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.v
  %.pre.i.i6.i.i = load i64, ptr %i.b, align 8, !noalias !25016
  %.pre74.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !28, !noalias !25016
  %.pre76.i.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i.i, align 8, !noalias !25016
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %.noexc10, %bb.u
  %i.by = phi i64 [ %.pre76.i.i.i.i, %.noexc10 ], [ 0, %bb.u ]
  %i.bz = phi i64 [ %.pre74.i.i.i.i, %.noexc10 ], [ 1, %bb.u ] ; 2 uses
  %i.ca = phi i64 [ %.pre.i.i6.i.i, %.noexc10 ], [ 0, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25016
  %i.cb = load ptr, ptr %i.bc, align 8, !alias.scope !25017, !noundef !14
  %.not55.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not55.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit64.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.bc)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.w
  %.pre77.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !25016
  %.pre79.i.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i.i, align 8, !range !28, !noalias !25016
  %.pre81.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i, align 8, !noalias !25016
  %i.cc = call i64 @llvm.uadd.sat.i64(i64 %i.ca, i64 %.pre77.i.i.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit64.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit64.i.i.i.i: ; preds = %.noexc11, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.cd = phi i64 [ %.pre81.i.i.i.i, %.noexc11 ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i ]
  %.fr42 = phi i64 [ %.pre79.i.i.i.i, %.noexc11 ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i ] ; 2 uses
  %i.ce = phi i64 [ %i.cc, %.noexc11 ], [ %i.ca, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25016
  %i.cf = load ptr, ptr %i.f, align 8, !alias.scope !25017, !noundef !14 ; 2 uses
  %.not56.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not56.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit64.i.i.i.i
  %.val63.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !25017, !nonnull !14, !noundef !14
  %i.cg = icmp eq ptr %.val63.i.i.i.i, %i.cf
  %i.ch = trunc nuw i64 %i.bz to i1
  %i.ci = trunc nuw i64 %.fr42 to i1
  %op.rdx = select i1 %i.cg, i1 %i.ch, i1 false
  %op.rdx38 = select i1 %op.rdx, i1 %i.ci, i1 false
  br i1 %op.rdx38, label %bb.z, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.y:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterhEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsoTR8nlGN3X_18ty_python_semantic.exit64.i.i.i.i
  %i.cj = and i64 %.fr42, %i.bz
  %or.cond57.not.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %or.cond57.not.i.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ck = add i64 %i.cd, %i.by
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x
  %.sink83.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.z ], [ %.sroa.5.i.i, %bb.y ], [ %.sroa.5.i.i, %bb.x ]
  %.sink.i.i.i.i = phi i64 [ %i.ck, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ]
  store i64 %.sink.i.i.i.i, ptr %.sink83.i.i.sroa.phi.i.i, align 8, !alias.scope !25018, !noalias !25019
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.cl = call i64 @llvm.uadd.sat.i64(i64 %i.ce, i64 1) ; 2 uses
  %i.cm = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25020, !noundef !14 ; 2 uses
  %i.cn = load i64, ptr %i.g, align 8, !range !24, !alias.scope !25020, !noundef !14
  %i.co = sub i64 %i.cn, %i.cm
  %i.cp = icmp ugt i64 %i.cl, %i.co
  br i1 %i.cp, label %bb.aa, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, !prof !16

bb.aa:                                            ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.cm, i64 noundef %i.cl, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.aa, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB7_6copied6CopiedIB15_hEENCNvMs15_B1w_NtB1w_17BytesLiteralValue5bytes0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterhEEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.cq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !25011, !nonnull !14, !noundef !14
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.bt
  store i8 %.sroa.3.0.i8.pn.i.i.ph.i.i, ptr %i.cr, align 1
  %i.cs = add nuw i64 %i.bt, 1
  store i64 %i.cs, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25011
  br label %bb.o

bb.ab:                                            ; preds = %bb.h, %.loopexit.i
  store i64 0, ptr %0, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cu, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB1g_6copied6CopiedIB28_hEENCNvMs15_B2A_NtB2A_17BytesLiteralValue5bytes0EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next.i.i.i, %bb.aa, %bb.w, %bb.v, %bb.t, %bb.p
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.ad

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB1g_6copied6CopiedIB28_hEENCNvMs15_B2A_NtB2A_17BytesLiteralValue5bytes0EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.noexc9, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.ac

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp43
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB1y_9enumerate9EnumerateINtNtNtB1C_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15MatchedArgumentEENCNvMse_B3r_NtB3r_7Binding31paramspec_call_argument_indices0EE9from_iterB3x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25061)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25063)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25065
  store ptr %i.f, ptr %i.c, align 8, !noalias !25066
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !noalias !25066
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !25067, !nonnull !14, !noundef !14
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !25067
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.l, %bb.c ], [ %.promoted.i.i.i.i, %bb.a ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.k, %i.j
  br i1 %.not.not.not.not.i.not.not.not.i.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !25067
  call void @llvm.experimental.noalias.scope.decl(metadata !25068)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !25068, !noalias !25066, !nonnull !14, !align !18, !noundef !14
  %i.n = load i64, ptr %i.m, align 8, !noalias !25069, !noundef !14
  %i.o = call { i64, i64 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_7Binding31paramspec_call_argument_indices0INtB7_5FnMutTTjRNtBW_15MatchedArgumentEEE8call_mutB12_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k), !noalias !25064 ; 2 uses
  %i.p = load ptr, ptr %i.h, align 8, !alias.scope !25068, !noalias !25066, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !25064, !noundef !14
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !noalias !25064
  %i.s = extractvalue { i64, i64 } %i.o, 0
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.u = load i64, ptr %i.b, align 8, !range !28, !noundef !14
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !60, !noundef !14 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.v, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.y, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d
  %i.aa = extractvalue { i64, i64 } %i.o, 1
  %i.ab = load ptr, ptr %i.y, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ac = icmp ugt i64 %i.x, 3
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.aa, ptr %i.ab, align 8
  store i64 %i.x, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !25070)
  call void @llvm.experimental.noalias.scope.decl(metadata !25071)
  call void @llvm.experimental.noalias.scope.decl(metadata !25072)
  call void @llvm.experimental.noalias.scope.decl(metadata !25073)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %i.ai = insertelement <2 x ptr> %i.ah, ptr %i.ae, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !25074)
  call void @llvm.experimental.noalias.scope.decl(metadata !25075)
  call void @llvm.experimental.noalias.scope.decl(metadata !25076)
  call void @llvm.experimental.noalias.scope.decl(metadata !25077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25078
  store <2 x ptr> %i.ai, ptr %i.a, align 16, !noalias !25079
  %i.aj = load ptr, ptr %i.ag, align 8, !alias.scope !25080, !nonnull !14, !noundef !14
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !25080
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f
  %i.ak = phi ptr [ %i.al, %.noexc ], [ %.promoted.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  store ptr %i.al, ptr %i.d, align 8, !alias.scope !25080
  call void @llvm.experimental.noalias.scope.decl(metadata !25081)
  %i.am = load ptr, ptr %i.af, align 8, !alias.scope !25081, !noalias !25079, !nonnull !14, !align !18, !noundef !14
  %i.an = load i64, ptr %i.am, align 8, !noalias !25082, !noundef !14
  %i.ao = invoke { i64, i64 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_7Binding31paramspec_call_argument_indices0INtB7_5FnMutTTjRNtBW_15MatchedArgumentEEE8call_mutB12_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.h
  %i.ap = load ptr, ptr %i.af, align 8, !alias.scope !25081, !noalias !25079, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !25077, !noundef !14
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !noalias !25077
  %i.as = extractvalue { i64, i64 } %i.ao, 0
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.i, label %bb.g

bb.i:                                             ; preds = %.noexc
  %i.au = extractvalue { i64, i64 } %i.ao, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25078
  %i.av = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25083, !noundef !14 ; 5 uses
  %i.aw = icmp ult i64 %i.av, 1152921504606846976
  call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.e, align 8, !range !24, !alias.scope !25083, !noundef !14
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecjE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %.noexc8

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecjE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.i
end_hunk_3
begin_hunk_4_@_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBR_INtNtNtBb_5slice4iter4IterNtB1u_15BindingsElementEINtNtB7_3map3MapIB2C_NtB1u_12CallableItemENvMs0_B1u_B3K_8callableENvMs1_B1u_B31_9callablesENvMs3_B1u_B1s_9iter_flatEIB3q_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB2C_NtB1u_7BindingEENCNvMs7_B1u_NtB1u_15CallableBinding18matching_overloads0ENCNCNvNtB1y_11ide_support23resolve_single_overloads_00ENCB7u_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_:bb.a
  unreachable

bb.as:                                            ; preds = %bb.ap
  call void @llvm.trap()
  unreachable

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B29_NtB29_15CallableBinding18matching_overloads0ENCNCNvNtB2d_11ide_support23resolve_single_overloads_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2f_.exit.i9.i: ; preds = %bb.ap
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i3.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !noalias !26362
  br label %bb.au

bb.at:                                            ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIB1f_INtNtNtBb_5slice4iter4IterNtB1Y_15BindingsElementEIBZ_IB37_NtB1Y_12CallableItemENvMs0_B1Y_B43_8callableENvMs1_B1Y_B3w_9callablesENvMs3_B1Y_B1W_9iter_flatENCNvNtB22_11ide_support23resolve_single_overloads_0EEINtB5_8FuseImplBY_E4nextB24_.exit.thread.i
  store i64 2, ptr %0, align 8, !alias.scope !26362
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2C_NtB2C_15CallableBinding18matching_overloads0ENCNCNvNtB2G_11ide_support23resolve_single_overloads_00ENtNtB2G_10signatures9SignatureNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2I_.exit31.i

bb.au:                                            ; preds = %bb.av, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B29_NtB29_15CallableBinding18matching_overloads0ENCNCNvNtB2d_11ide_support23resolve_single_overloads_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2f_.exit.i9.i
  %.sroa.0.033.i10.i = phi i64 [ 2, %bb.av ], [ %.sroa.0.0.i.i.i.i.i8.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B29_NtB29_15CallableBinding18matching_overloads0ENCNCNvNtB2d_11ide_support23resolve_single_overloads_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2f_.exit.i9.i ]
  %.sroa.7.031.i11.i = phi ptr [ undef, %bb.av ], [ %.sroa.5.sroa.0.0.i.i.i.i.i7.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B29_NtB29_15CallableBinding18matching_overloads0ENCNCNvNtB2d_11ide_support23resolve_single_overloads_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2f_.exit.i9.i ]
  %.sroa.11.025.i14.i = phi ptr [ undef, %bb.av ], [ %i.ek, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B29_NtB29_15CallableBinding18matching_overloads0ENCNCNvNtB2d_11ide_support23resolve_single_overloads_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2f_.exit.i9.i ]
  %.sroa.16.015.i19.i = phi i32 [ undef, %bb.av ], [ %i.eb, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B29_NtB29_15CallableBinding18matching_overloads0ENCNCNvNtB2d_11ide_support23resolve_single_overloads_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2f_.exit.i9.i ]
  %i.eq = phi <4 x i32> [ undef, %bb.av ], [ %i.dz, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B29_NtB29_15CallableBinding18matching_overloads0ENCNCNvNtB2d_11ide_support23resolve_single_overloads_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2f_.exit.i9.i ]
  %i.er = phi <2 x i32> [ undef, %bb.av ], [ %i.ei, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B29_NtB29_15CallableBinding18matching_overloads0ENCNCNvNtB2d_11ide_support23resolve_single_overloads_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2f_.exit.i9.i ]
  store i64 %.sroa.0.033.i10.i, ptr %0, align 8, !alias.scope !26362
  %.sroa.7.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.031.i11.i, ptr %.sroa.7.0..sroa_idx.i20.i, align 8, !alias.scope !26362
  %.sroa.8.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.er, ptr %.sroa.8.0..sroa_idx.i21.i, align 8, !alias.scope !26362
  %.sroa.10.0..sroa_idx.i23.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i23.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i3.i, i64 16, i1 false), !noalias !26342
  %.sroa.11.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.11.025.i14.i, ptr %.sroa.11.0..sroa_idx.i24.i, align 8, !alias.scope !26362
  %.sroa.12.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %i.eq, ptr %.sroa.12.0..sroa_idx.i25.i, align 8, !alias.scope !26362
  %.sroa.16.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.16.015.i19.i, ptr %.sroa.16.0..sroa_idx.i29.i, align 8, !alias.scope !26362
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2C_NtB2C_15CallableBinding18matching_overloads0ENCNCNvNtB2G_11ide_support23resolve_single_overloads_00ENtNtB2G_10signatures9SignatureNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2I_.exit31.i

bb.av:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26349
  store ptr null, ptr %i.h, align 8, !alias.scope !26342
  br label %bb.au

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2C_NtB2C_15CallableBinding18matching_overloads0ENCNCNvNtB2G_11ide_support23resolve_single_overloads_00ENtNtB2G_10signatures9SignatureNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2I_.exit31.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26287
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtB5_7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIB1s_INtNtNtBb_5slice4iter4IterNtB21_15BindingsElementEIB1c_IB3a_NtB21_12CallableItemENvMs0_B21_B47_8callableENvMs1_B21_B3z_9callablesENvMs3_B21_B1Z_9iter_flatENCNvNtB25_11ide_support23resolve_single_overloads_0EIB1c_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB3a_NtB21_7BindingEENCNvMs7_B21_NtB21_15CallableBinding18matching_overloads0ENCNCB5G_s_00EENtNtNtB9_6traits8iterator8Iterator4nextB27_.exit

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtB5_7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIB1s_INtNtNtBb_5slice4iter4IterNtB21_15BindingsElementEIB1c_IB3a_NtB21_12CallableItemENvMs0_B21_B47_8callableENvMs1_B21_B3z_9callablesENvMs3_B21_B1Z_9iter_flatENCNvNtB25_11ide_support23resolve_single_overloads_0EIB1c_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB3a_NtB21_7BindingEENCNvMs7_B21_NtB21_15CallableBinding18matching_overloads0ENCNCB5G_s_00EENtNtNtB9_6traits8iterator8Iterator4nextB27_.exit: ; preds = %bb.l, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2C_NtB2C_15CallableBinding18matching_overloads0ENCNCNvNtB2G_11ide_support23resolve_single_overloads_00ENtNtB2G_10signatures9SignatureNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2I_.exit31.i
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBR_INtNtNtBb_5slice4iter4IterNtB1u_15BindingsElementEINtNtB7_3map3MapIB2C_NtB1u_12CallableItemENvMs0_B1u_B3K_8callableENvMs1_B1u_B31_9callablesENvMs3_B1u_B1s_9iter_flatEIB3q_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB2C_NtB1u_7BindingEENCNvMs7_B1u_NtB1u_15CallableBinding18matching_overloads0ENCNCNvNtB1y_11ide_support23resolve_single_overloads_00ENCB7u_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1A_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca i64, align 8                ; 7 uses
  %.sroa.9.i = alloca i64, align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26404)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !26404, !noundef !14 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val4.i.i = load ptr, ptr %i.c, align 8, !alias.scope !26405, !nonnull !14, !noundef !14
  %i.d = ptrtoint ptr %.val4.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 232
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.7.0.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !26404, !noundef !14 ; 2 uses
  %.not55.i = icmp eq ptr %i.i, null
  br i1 %.not55.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit65.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val4.i64.i = load ptr, ptr %i.j, align 8, !alias.scope !26406, !nonnull !14, !noundef !14
  %i.k = ptrtoint ptr %.val4.i64.i to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 232
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit65.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit65.i: ; preds = %bb.c, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit.i
  %.sroa.8.0.i = phi i64 [ %i.n, %bb.c ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.o = load i64, ptr %1, align 8, !range !29, !alias.scope !26404, !noundef !14 ; 2 uses
  %.not56.i = icmp eq i64 %i.o, 2
  br i1 %.not56.i, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit65.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26412)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !28, !alias.scope !26413, !noundef !14
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  br i1 %i.r, label %bb.e, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !26414, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !26415, !nonnull !14, !noundef !14
  %i.w = ptrtoint ptr %.val4.i.i.i.i.i.i.i.i.i to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = udiv exact i64 %i.y, 360
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %bb.f ], [ 0, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !26414, !noundef !14 ; 2 uses
  %.not55.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not55.i.i.i.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val4.i65.i.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !26416, !nonnull !14, !noundef !14
  %i.ad = ptrtoint ptr %.val4.i65.i.i.i.i.i.i.i.i to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub nuw i64 %i.ad, %i.ae
  %i.ag = udiv exact i64 %i.af, 360
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.g ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i.i.i.i ]
  %i.ah = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ai = load ptr, ptr %i.s, align 8, !alias.scope !26414, !noundef !14 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val63.i.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !26414, !nonnull !14
  %i.ak = icmp eq ptr %.val63.i.i.i.i.i.i.i.i, %i.ai
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not56.i.i.i.i.i.i.i.i, i1 true, i1 %i.ak ; 2 uses
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i64 %i.ah, i64 undef
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.7.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %.sroa.5.0.i.i.i.i = phi i1 [ %or.cond.i.i.i.i.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i ], [ true, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ah, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i64, ptr %i.al, align 8, !range !28, !alias.scope !26413, !noundef !14
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  br i1 %i.an, label %bb.h, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit74.i.i.i.i

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !26417, !noundef !14 ; 2 uses
  %.not.i.i.i.i61.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i61.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val4.i.i.i.i.i62.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !26418, !nonnull !14, !noundef !14
  %i.as = ptrtoint ptr %.val4.i.i.i.i.i62.i.i.i.i to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub nuw i64 %i.as, %i.at
  %i.av = udiv exact i64 %i.au, 360
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.7.0.i.i.i.i64.i.i.i.i = phi i64 [ %i.av, %bb.i ], [ 0, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !26417, !noundef !14 ; 2 uses
  %.not55.i.i.i.i65.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not55.i.i.i.i65.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val4.i65.i.i.i.i66.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !26419, !nonnull !14, !noundef !14
  %i.az = ptrtoint ptr %.val4.i65.i.i.i.i66.i.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub nuw i64 %i.az, %i.ba
  %i.bc = udiv exact i64 %i.bb, 360
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i: ; preds = %bb.j, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i
  %.sroa.8.0.i.i.i.i68.i.i.i.i = phi i64 [ %i.bc, %bb.j ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i63.i.i.i.i ]
  %i.bd = add nuw nsw i64 %.sroa.8.0.i.i.i.i68.i.i.i.i, %.sroa.7.0.i.i.i.i64.i.i.i.i ; 2 uses
  %i.be = load ptr, ptr %i.ao, align 8, !alias.scope !26417, !noundef !14 ; 2 uses
  %.not56.i.i.i.i69.i.i.i.i = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val63.i.i.i.i70.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !26417, !nonnull !14
  %i.bg = icmp eq ptr %.val63.i.i.i.i70.i.i.i.i, %i.be
  %or.cond.i.i.i.i71.i.i.i.i = select i1 %.not56.i.i.i.i69.i.i.i.i, i1 true, i1 %i.bg ; 2 uses
  %spec.select89.i.i.i.i = select i1 %or.cond.i.i.i.i71.i.i.i.i, i64 %i.bd, i64 undef
  %i.bh = or i64 %i.bd, %.sroa.0.0.i.i.i.i
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit74.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit74.i.i.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i
  %.sroa.8.1.i.i.i.i = phi i64 [ %spec.select89.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i ]
  %.sroa.582.0.i.i.i.i = phi i1 [ %or.cond.i.i.i.i71.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i ], [ true, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i ] ; 2 uses
  %.sroa.081.0.i.i.i.i = phi i64 [ %i.bh, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i67.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit.i.i.i.i ]
  %i.bi = trunc nuw i64 %i.o to i1
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit74.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !26413, !align !18, !noundef !14
  %.not.i.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  %op.rdx = select i1 %.not.i.i.not.i.i.i.i, i1 %.sroa.5.0.i.i.i.i, i1 false
  %op.rdx7 = select i1 %op.rdx, i1 %.sroa.582.0.i.i.i.i, i1 false
  br i1 %op.rdx7, label %bb.m, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i

bb.l:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtBO_3map3MapIB1q_NtB1R_12CallableItemENvMs0_B1R_B3n_8callableENvMs1_B1R_B1P_9callablesEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1X_.exit74.i.i.i.i
  %or.cond55.i.i.i.i = select i1 %.sroa.5.0.i.i.i.i, i1 %.sroa.582.0.i.i.i.i, i1 false
  br i1 %or.cond55.i.i.i.i, label %bb.m, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bk = add i64 %.sroa.8.1.i.i.i.i, %.sroa.7.1.i.i.i.i ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %.sroa.7.1.i.i.i.i
  %..i.i.i.i = zext i1 %i.bl to i64
  store i64 %..i.i.i.i, ptr %.sroa.6.i, align 8, !alias.scope !26420, !noalias !26421
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %.sink95.i.i.i.sroa.phi.i = phi ptr [ %.sroa.9.i, %bb.m ], [ %.sroa.6.i, %bb.l ], [ %.sroa.6.i, %bb.k ]
  %.sink.i.i.i.i = phi i64 [ %i.bk, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i.i.i, ptr %.sink95.i.i.i.sroa.phi.i, align 8, !alias.scope !26420, !noalias !26421
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i = load i64, ptr %.sroa.6.i, align 8, !range !28, !noalias !26421, !noundef !14
  %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..i = load i64, ptr %.sroa.9.i, align 8, !noalias !26421
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.bm = icmp eq i64 %.sroa.081.0.i.i.i.i, 0
  %i.bn = trunc nuw i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i to i1
  %or.cond59.i = and i1 %i.bm, %i.bn
  %i.bo = icmp eq i64 %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..i, 0
  %or.cond62.i = select i1 %or.cond59.i, i1 %i.bo, i1 false
  br i1 %or.cond62.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtBO_6filter6FilterINtNtBO_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2x_NtB2x_15CallableBinding18matching_overloads0ENCNCNvNtB2B_11ide_support23resolve_single_overloads_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2D_.exit65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %bb.p

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !26403
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtB5_7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIB1s_INtNtNtBb_5slice4iter4IterNtB21_15BindingsElementEIB1c_IB3a_NtB21_12CallableItemENvMs0_B21_B47_8callableENvMs1_B21_B3z_9callablesENvMs3_B21_B1Z_9iter_flatENCNvNtB25_11ide_support23resolve_single_overloads_0EIB1c_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB3a_NtB21_7BindingEENCNvMs7_B21_NtB21_15CallableBinding18matching_overloads0ENCNCB5G_s_00EENtNtNtB9_6traits8iterator8Iterator9size_hintB27_.exit

bb.p:                                             ; preds = %bb.n, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIBX_INtNtNtBb_5slice4iter4IterNtB1G_15BindingsElementEIBN_IB2O_NtB1G_12CallableItemENvMs0_B1G_B3K_8callableENvMs1_B1G_B3d_9callablesENvMs3_B1G_B1E_9iter_flatENCNvNtB1K_11ide_support23resolve_single_overloads_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit.i
  %i.bp = add nuw nsw i64 %.sroa.8.0.i, %.sroa.7.0.i
  store i64 0, ptr %0, align 8, !alias.scope !26403
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bq, align 8, !alias.scope !26403
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bp, ptr %i.br, align 8, !alias.scope !26403
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtB5_7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIB1s_INtNtNtBb_5slice4iter4IterNtB21_15BindingsElementEIB1c_IB3a_NtB21_12CallableItemENvMs0_B21_B47_8callableENvMs1_B21_B3z_9callablesENvMs3_B21_B1Z_9iter_flatENCNvNtB25_11ide_support23resolve_single_overloads_0EIB1c_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB3a_NtB21_7BindingEENCNvMs7_B21_NtB21_15CallableBinding18matching_overloads0ENCNCB5G_s_00EENtNtNtB9_6traits8iterator8Iterator9size_hintB27_.exit

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtB5_7FlatMapINtNtBb_6result4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEIB1s_INtNtNtBb_5slice4iter4IterNtB21_15BindingsElementEIB1c_IB3a_NtB21_12CallableItemENvMs0_B21_B47_8callableENvMs1_B21_B3z_9callablesENvMs3_B21_B1Z_9iter_flatENCNvNtB25_11ide_support23resolve_single_overloads_0EIB1c_INtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateIB3a_NtB21_7BindingEENCNvMs7_B21_NtB21_15CallableBinding18matching_overloads0ENCNCB5G_s_00EENtNtNtB9_6traits8iterator8Iterator9size_hintB27_.exit: ; preds = %bb.o, %bb.p
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtB7_3map3MapIB19_NtB1A_12CallableItemENvMs0_B1A_B36_8callableENvMs1_B1A_B1y_9callablesEIB2M_IB19_NtB1A_7BindingENCNCNvNtB1E_11ide_support19call_argument_formss_00ENCB4H_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26474)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !26474 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !28, !alias.scope !26474
  %.fr44.i = freeze i64 %i.c
  %i.d = trunc i64 %.fr44.i to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !26474, !nonnull !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !26474, !nonnull !14
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted32.i = load ptr, ptr %i.b, align 8, !alias.scope !26474 ; 2 uses
  br i1 %i.d, label %.split.us.preheader.i, label %.split.i

.split.us.preheader.i:                            ; preds = %bb.a
  %.promoted36.i = load ptr, ptr %i.j, align 8, !alias.scope !26474
  %.promoted35.i = load ptr, ptr %i.g, align 8, !alias.scope !26474
  %.promoted34.i = load ptr, ptr %i.e, align 8, !alias.scope !26474
  %.promoted33.i = load ptr, ptr %i.f, align 8, !alias.scope !26474
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.j, %.split.us.preheader.i
  %i.m = phi ptr [ %i.ag, %bb.j ], [ %.promoted36.i, %.split.us.preheader.i ] ; 5 uses
  %i.n = phi ptr [ %i.t, %bb.j ], [ %.promoted35.i, %.split.us.preheader.i ]
  %i.o = phi ptr [ %i.ah, %bb.j ], [ %.promoted34.i, %.split.us.preheader.i ]
  %i.p = phi ptr [ %i.ai, %bb.j ], [ %.promoted33.i, %.split.us.preheader.i ]
  %i.q = phi ptr [ %i.am, %bb.j ], [ %.promoted32.i, %.split.us.preheader.i ]
  %i.r = phi ptr [ %i.al, %bb.j ], [ %.promoted.i, %.split.us.preheader.i ] ; 3 uses
  %.not.i.us.i = icmp eq ptr %i.r, null
  br i1 %.not.i.us.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.split.us.i
  %i.s = icmp eq ptr %i.r, %i.q
  br i1 %i.s, label %bb.c, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1S_11ide_support19call_argument_formss_00ETRNtB1O_15CallableBindingRB1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.i

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !alias.scope !26475
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26479)
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.t = phi ptr [ %i.ab, %bb.h ], [ %i.n, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %i.y, %bb.h ], [ %i.o, %bb.d ] ; 6 uses
  %i.v = phi ptr [ %i.aa, %bb.h ], [ %i.p, %bb.d ] ; 4 uses
  %.not.i.i.i.i.i.us.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.us.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.thread.i.i.i.i.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq ptr %i.v, %i.t
  br i1 %i.w, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.thread.i.i.i.i.i.us.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.i.i.i.i.us.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.thread.i.i.i.i.i.us.i: ; preds = %bb.f
  store ptr null, ptr %i.f, align 8, !alias.scope !26480
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.thread.i.i.i.i.us.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.thread.i.i.i.i.us.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.thread.i.i.i.i.i.us.i, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26481)
  %.not.i5.i.i.i.i.us.i = icmp eq ptr %i.u, null
  br i1 %.not.i5.i.i.i.i.us.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1G_B1E_9callablesEEINtB5_8FuseImplBY_E4nextB1M_.exit.thread.i.i.i.i.us.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.thread.i.i.i.i.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26482)
  %i.x = icmp eq ptr %i.u, %i.i
  br i1 %i.x, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1G_B1E_9callablesEEINtB5_8FuseImplBY_E4nextB1M_.exit.thread.i.i.i.i.us.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1G_B1E_9callablesEEINtB5_8FuseImplBY_E4nextB1M_.exit.i.i.i.i.us.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1G_B1E_9callablesEEINtB5_8FuseImplBY_E4nextB1M_.exit.i.i.i.i.us.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 384 ; 3 uses
  store ptr %i.y, ptr %i.e, align 8, !alias.scope !26483
  %i.z = tail call { ptr, ptr } @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement9callables(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %i.u), !noalias !26484 ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 3 uses
  %.not4.i.i.i.i.us.i = icmp eq ptr %i.aa, null
  br i1 %.not4.i.i.i.i.us.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1G_B1E_9callablesEEINtB5_8FuseImplBY_E4nextB1M_.exit.thread.i.i.i.i.us.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1G_B1E_9callablesEEINtB5_8FuseImplBY_E4nextB1M_.exit.i.i.i.i.us.i
  %i.ab = extractvalue { ptr, ptr } %i.z, 1       ; 2 uses
  store ptr %i.aa, ptr %i.f, align 8, !alias.scope !26485
  store ptr %i.ab, ptr %i.g, align 8, !alias.scope !26485
  br label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.i.i.i.i.us.i: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 360 ; 2 uses
  store ptr %i.ac, ptr %i.f, align 8, !alias.scope !26486
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIBZ_IB1D_NtB24_12CallableItemENvMs0_B24_B3o_8callableENvMs1_B24_B22_9callablesENCNvNtB28_11ide_support19call_argument_formss_0EEINtB5_8FuseImplBY_E4nextB2a_.exit.us.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1G_B1E_9callablesEEINtB5_8FuseImplBY_E4nextB1M_.exit.thread.i.i.i.i.us.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1G_B1E_9callablesEEINtB5_8FuseImplBY_E4nextB1M_.exit.i.i.i.i.us.i, %bb.g, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.thread.i.i.i.i.us.i
  %i.ad = phi ptr [ %i.y, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1G_B1E_9callablesEEINtB5_8FuseImplBY_E4nextB1M_.exit.i.i.i.i.us.i ], [ %i.u, %bb.g ], [ null, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.thread.i.i.i.i.us.i ]
  %.not.i7.i.i.i.i.us.i = icmp eq ptr %i.m, null
  br i1 %.not.i7.i.i.i.i.us.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIBZ_IB1D_NtB24_12CallableItemENvMs0_B24_B3o_8callableENvMs1_B24_B22_9callablesENCNvNtB28_11ide_support19call_argument_formss_0EEINtB5_8FuseImplBY_E4nextB2a_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1G_B1E_9callablesEEINtB5_8FuseImplBY_E4nextB1M_.exit.thread.i.i.i.i.us.i
  %i.ae = icmp eq ptr %i.m, %i.l
  br i1 %i.ae, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.thread.i13.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.i8.i.i.i.i.us.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.i8.i.i.i.i.us.i: ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 360 ; 2 uses
  store ptr %i.af, ptr %i.j, align 8, !alias.scope !26487
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIBZ_IB1D_NtB24_12CallableItemENvMs0_B24_B3o_8callableENvMs1_B24_B22_9callablesENCNvNtB28_11ide_support19call_argument_formss_0EEINtB5_8FuseImplBY_E4nextB2a_.exit.us.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIBZ_IB1D_NtB24_12CallableItemENvMs0_B24_B3o_8callableENvMs1_B24_B22_9callablesENCNvNtB28_11ide_support19call_argument_formss_0EEINtB5_8FuseImplBY_E4nextB2a_.exit.us.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.i8.i.i.i.i.us.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.i.i.i.i.us.i
  %i.ag = phi ptr [ %i.af, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.i8.i.i.i.i.us.i ], [ %i.m, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.i.i.i.i.us.i ]
  %i.ah = phi ptr [ %i.ad, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.i8.i.i.i.i.us.i ], [ %i.u, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.i.i.i.i.us.i ]
  %i.ai = phi ptr [ null, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.i8.i.i.i.i.us.i ], [ %i.ac, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.i.i.i.i.us.i ]
  %.sink11.i.i.us.i = phi ptr [ %i.m, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1l_B1j_8callableENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1r_.exit.i8.i.i.i.i.us.i ], [ %i.v, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1O_B1M_8callableERNtB1O_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.i.i.i.i.us.i ] ; 2 uses
  %i.aj = load i64, ptr %.sink11.i.i.us.i, align 8, !range !29, !noalias !26488, !noundef !14
  %.not.i.i.i.i.i9.i.i.i.i.us.i = icmp eq i64 %i.aj, 2
  %.sroa.0.0.idx.i.i.i.i.i10.i.i.i.i.us.i = select i1 %.not.i.i.i.i.i9.i.i.i.i.us.i, i64 8, i64 0
  %.sroa.0.0.i.i.i.i.i11.i.i.i.i.us.i = getelementptr inbounds nuw i8, ptr %.sink11.i.i.us.i, i64 %.sroa.0.0.idx.i.i.i.i.i10.i.i.i.i.us.i ; 2 uses
  %i.ak = tail call { ptr, ptr } @_RNvXs8_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindRNtB5_15CallableBindingNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i.i.i.i.i11.i.i.i.i.us.i), !noalias !26489 ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 3 uses
  %.not1.us.i = icmp eq ptr %i.al, null
  br i1 %.not1.us.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIBZ_IB1D_NtB24_12CallableItemENvMs0_B24_B3o_8callableENvMs1_B24_B22_9callablesENCNvNtB28_11ide_support19call_argument_formss_0EEINtB5_8FuseImplBY_E4nextB2a_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIBZ_IB1D_NtB24_12CallableItemENvMs0_B24_B3o_8callableENvMs1_B24_B22_9callablesENCNvNtB28_11ide_support19call_argument_formss_0EEINtB5_8FuseImplBY_E4nextB2a_.exit.us.i
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  store ptr %i.al, ptr %i.a, align 8, !alias.scope !26474
  store ptr %i.am, ptr %i.b, align 8, !alias.scope !26474
  store ptr %.sroa.0.0.i.i.i.i.i11.i.i.i.i.us.i, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !26474
  br label %.split.us.i

.split.i:                                         ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.promoted.i, null
  br i1 %.not.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIBZ_IB1D_NtB24_12CallableItemENvMs0_B24_B3o_8callableENvMs1_B24_B22_9callablesENCNvNtB28_11ide_support19call_argument_formss_0EEINtB5_8FuseImplBY_E4nextB2a_.exit.thread.loopexit.split.i, label %bb.k

bb.k:                                             ; preds = %.split.i
  %i.an = icmp eq ptr %.promoted.i, %.promoted32.i
  br i1 %i.an, label %bb.l, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1S_11ide_support19call_argument_formss_00ETRNtB1O_15CallableBindingRB1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.i

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.a, align 8, !alias.scope !26475
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIBZ_IB1D_NtB24_12CallableItemENvMs0_B24_B3o_8callableENvMs1_B24_B22_9callablesENCNvNtB28_11ide_support19call_argument_formss_0EEINtB5_8FuseImplBY_E4nextB2a_.exit.thread.loopexit.split.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1S_11ide_support19call_argument_formss_00ETRNtB1O_15CallableBindingRB1M_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1U_.exit.i: ; preds = %bb.b, %bb.k
  %.us-phi42.i = phi ptr [ %.promoted.i, %bb.k ], [ %i.r, %bb.b ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.us-phi42.i, i64 232
  store ptr %i.ao, ptr %i.a, align 8, !alias.scope !26490
  %.val.i.i.i.i = load ptr, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !26491, !nonnull !14, !align !18, !noundef !14
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIB1c_IB1G_NtB27_12CallableItemENvMs0_B27_B3s_8callableENvMs1_B27_B25_9callablesENCNvNtB2b_11ide_support19call_argument_formss_0EIB1c_IB1G_NtB27_7BindingENCNCB4C_s_00EENtNtNtB9_6traits8iterator8Iterator4nextB2d_.exit

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIBZ_IB1D_NtB24_12CallableItemENvMs0_B24_B3o_8callableENvMs1_B24_B22_9callablesENCNvNtB28_11ide_support19call_argument_formss_0EEINtB5_8FuseImplBY_E4nextB2a_.exit.thread.loopexit.split.i: ; preds = %bb.l, %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26476)
end_hunk_4
