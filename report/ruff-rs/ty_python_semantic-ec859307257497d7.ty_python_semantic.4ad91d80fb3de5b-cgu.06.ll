Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.06?download=true
inline.NumInlined: 11176
inline.NumDeleted: 4455
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_22VariableTupleSlicePlan9into_type:bb.a
  %.not.i = icmp eq i32 %i.m, 2
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !26386
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !range !75, !alias.scope !26386, !noundef !73
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !26386
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.bs, align 8, !range !26387, !alias.scope !26386, !noundef !73 ; 2 uses
  %i.bt = icmp ugt i64 %.val.i, 2147483647
  %i.bu = shl nuw nsw i64 %.val.i, 32
  %.sroa.04.0.insert.insert.i.i = select i1 %i.bt, i64 513, i64 %i.bu ; 2 uses
  %i.bv = trunc i64 %.sroa.04.0.insert.insert.i.i to i1
  br i1 %i.bv, label %bb.o, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, !prof !72

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26388
  store i8 2, ptr %i.d, align 1, !noalias !26388
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @282, i64 noundef 45, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @268, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #49, !noalias !26389
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.n
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.04.0.insert.insert.i.i, 32 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i, 0
  br i1 %.not.i.i, label %bb.p, label %_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_10FixedSlice8step_i32.exit.i, !prof !72

bb.p:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @284, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #49, !noalias !26389
  unreachable

_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_10FixedSlice8step_i32.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  call void @_RINvNtCsoTR8nlGN3X_18ty_python_semantic9subscript18py_slice_with_stepNtNtB4_5types4TypeEB4_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.bk, i64 noundef range(i64 0, 576460752303423488) %i.bl, i32 noundef %i.m, i32 %i.bn, i32 noundef %i.bp, i32 %i.br, i32 noundef %.sroa.6.0.extract.trunc.i.i.i), !noalias !26386
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice.exit

bb.q:                                             ; preds = %bb.m
  store i64 2, ptr %i.i, align 8, !alias.scope !26385
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice.exit

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice.exit: ; preds = %_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_10FixedSlice8step_i32.exit.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bw = call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi, i64 noundef %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0
  %i.by = extractvalue { ptr, i64 } %i.bw, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !26390)
  %.not.i1 = icmp eq i32 %.sroa.018.0.copyload, 2
  br i1 %.not.i1, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice.exit
  %i.bz = icmp ugt i64 %.sroa.722.0.copyload, 2147483647
  %i.ca = shl nuw nsw i64 %.sroa.722.0.copyload, 32
  %.sroa.04.0.insert.insert.i.i3 = select i1 %i.bz, i64 513, i64 %i.ca ; 2 uses
  %i.cb = trunc i64 %.sroa.04.0.insert.insert.i.i3 to i1
  br i1 %i.cb, label %bb.s, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic.exit.i.i4, !prof !72

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26391
  store i8 2, ptr %i.c, align 1, !noalias !26391
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @282, i64 noundef 45, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @268, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #49, !noalias !26392
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic.exit.i.i4: ; preds = %bb.r
  %.sroa.6.0.extract.shift.i.i.i5 = lshr i64 %.sroa.04.0.insert.insert.i.i3, 32 ; 2 uses
  %.not.i.i6 = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i5, 0
  br i1 %.not.i.i6, label %bb.t, label %_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_10FixedSlice8step_i32.exit.i7, !prof !72

bb.t:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic.exit.i.i4
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @284, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #49, !noalias !26392
  unreachable

_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_10FixedSlice8step_i32.exit.i7: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic.exit.i.i4
  %.sroa.6.0.extract.trunc.i.i.i8 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i5 to i32
  call void @_RINvNtCsoTR8nlGN3X_18ty_python_semantic9subscript18py_slice_with_stepNtNtB4_5types4TypeEB4_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.bx, i64 noundef range(i64 0, 576460752303423488) %i.by, i32 noundef %.sroa.018.0.copyload, i32 %.sroa.419.0.copyload, i32 noundef %.sroa.520.0.copyload, i32 %.sroa.621.0.copyload, i32 noundef %.sroa.6.0.extract.trunc.i.i.i8), !noalias !26393
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice.exit9

bb.u:                                             ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice.exit
  store i64 2, ptr %i.h, align 8, !alias.scope !26390
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice.exit9

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice.exit9: ; preds = %_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_10FixedSlice8step_i32.exit.i7, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !26394)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !26395)
  call void @llvm.experimental.noalias.scope.decl(metadata !26396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26397
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.cc, align 8, !noalias !26397
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtCsddXFpJ32JCa_6either6EitherINtNtNtB1G_8adapters6copied6CopiedIB2E_INtNtB3d_7step_by6StepByINtNtB3d_4take4TakeINtNtB3d_4skip4SkipINtNtNtB1I_5slice4iter4IterBJ_EEEEIB3M_IB4a_IB4t_INtNtB3d_3rev3RevB4L_EEEEEEINtNtNtB1G_7sources5empty5EmptyBJ_EEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i)
          to label %bb.w unwind label %bb.v, !noalias !26398

bb.v:                                             ; preds = %bb.x, %bb.w, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice.exit9
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.y, !noalias !26397

bb.w:                                             ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice.exit9
  %i.ce = load i64, ptr %i.cc, align 8, !alias.scope !26399, !noalias !26397, !noundef !73
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !26399, !noalias !26397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !26400
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtCsddXFpJ32JCa_6either6EitherINtNtNtB1G_8adapters6copied6CopiedIB2E_INtNtB3d_7step_by6StepByINtNtB3d_4take4TakeINtNtB3d_4skip4SkipINtNtNtB1I_5slice4iter4IterBJ_EEEEIB3M_IB4a_IB4t_INtNtB3d_3rev3RevB4L_EEEEEEINtNtNtB1G_7sources5empty5EmptyBJ_EEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.x unwind label %bb.v, !noalias !26397

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26397
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E13shrink_to_fitBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_.exit unwind label %bb.v, !noalias !26397

bb.y:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !26397
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.v ], [ %i.cj, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_.exit: ; preds = %bb.x
  %.not.i.i.i = icmp eq i64 %i.ce, 0
  %.sink9.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.cg
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !26401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.k, i64 16, i1 false), !alias.scope !26402, !noalias !26403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i, i64 40, i1 false), !noalias !26404
  %.sroa.5.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sink9.i.i.i, ptr %.sroa.5.0..sroa_idx.i10, align 8, !alias.scope !26394
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ci = invoke { i32, i32 } @_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType3new(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
          to label %bb.aa unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_(ptr noalias noundef align 8 dereferenceable(48) %i.j) #50
          to label %common.resume unwind label %bb.af

bb.aa:                                            ; preds = %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_.exit
  %i.ck = extractvalue { i32, i32 } %i.ci, 0      ; 2 uses
  %.not.i11 = icmp eq i32 %i.ck, 0
  br i1 %.not.i11, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = extractvalue { i32, i32 } %i.ci, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 6, ptr %i.cm, align 4, !alias.scope !26405
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ck, ptr %.sroa.45.0..sroa_idx.i, align 4, !alias.scope !26405
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.cl, ptr %.sroa.56.0..sroa_idx.i, align 4, !alias.scope !26405
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %storemerge.i = phi i32 [ 18, %bb.ab ], [ 6, %bb.aa ]
  store i32 %storemerge.i, ptr %0, align 4, !alias.scope !26405
  call void @llvm.experimental.noalias.scope.decl(metadata !26406)
  %i.cn = load i32, ptr %i.j, align 8, !range !93, !alias.scope !26406, !noundef !73
  %i.co = icmp eq i32 %i.cn, -2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.co, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.val1.i = load i64, ptr %i.cp, align 8, !alias.scope !26406, !noundef !73 ; 2 uses
  %i.cq = icmp eq i64 %.val1.i, 0
  br i1 %i.cq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i12 = load ptr, ptr %i.cr, align 8, !alias.scope !26406, !nonnull !73, !noundef !73
  %i.cs = shl nuw nsw i64 %.val1.i, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i12, i64 noundef %i.cs, i64 noundef 4) #48, !noalias !26406
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit: ; preds = %bb.ad, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.h

bb.af:                                            ; preds = %bb.z
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18forward_slice_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) initializes((0, 4)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i32 noundef range(i32 0, 2) %2, i32 %3, i32 noundef range(i32 0, 2) %4, i32 %5, i64 noundef range(i64 1, 0) %6) unnamed_addr #6 personality ptr @rust_eh_personality !guid !26433 {
bb.a:
  %.not.i = icmp ne i32 %2, 0
  %i.a = trunc nuw i32 %4 to i1                   ; 8 uses
  %or.cond42.i = and i1 %.not.i, %i.a
  %i.b = icmp eq i32 %3, %5
  %or.cond43.i = select i1 %or.cond42.i, i1 %i.b, i1 false
  br i1 %or.cond43.i, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.i.i.i = select i1 %i.a, i32 %5, i32 undef ; 2 uses
  %7 = or i32 %.sroa.4.0.i.i.i, %5
  %i.c = icmp sgt i32 %7, -1                      ; 2 uses
  %or.cond.i.i = select i1 %i.a, i1 %i.c, i1 false ; 4 uses
  %i.d = zext nneg i32 %.sroa.4.0.i.i.i to i64    ; 8 uses
  %i.e = trunc nuw i32 %2 to i1                   ; 11 uses
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %3, -1                      ; 2 uses
  %i.g = zext nneg i32 %3 to i64
  %.sroa.4.0.i.i45.i = select i1 %i.f, i64 %i.g, i64 undef
  %.sroa.3.0.i.i = select i1 %i.e, i64 %.sroa.4.0.i.i45.i, i64 0
  %not..i.i = xor i1 %i.e, true
  %narrow.i.i = select i1 %not..i.i, i1 true, i1 %i.f
  %i.h = icmp uge i64 %.sroa.3.0.i.i, %i.d
  %or.cond.i = select i1 %narrow.i.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %select.unfold, label %bb.e

bb.d:                                             ; preds = %bb.b
  %or.cond.i49.i = icmp ugt i32 %3, -2147483648
  %or.cond44.i = and i1 %or.cond.i49.i, %i.a
  %or.cond55.i = select i1 %i.e, i1 %or.cond44.i, i1 false
  br i1 %or.cond55.i, label %..thread.i_crit_edge, label %.thread203

.thread203:                                       ; preds = %bb.d
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %9 = load i64, ptr %8, align 8, !alias.scope !26434, !noalias !26435, !noundef !73
  %.not.i.i.i.i204 = icmp ne i64 %9, 0
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %11 = load i64, ptr %10, align 8, !alias.scope !26434, !noalias !26435
  br label %bb.k

..thread.i_crit_edge:                             ; preds = %bb.d
  %.pre169 = sub nsw i32 0, %3
  br label %.thread.i

bb.e:                                             ; preds = %bb.c
  %or.cond.i47.i = icmp ugt i32 %3, -2147483648
  %or.cond56.i = select i1 %i.e, i1 %or.cond.i47.i, i1 false
  br i1 %or.cond56.i, label %bb.f, label %.thread195

.thread195:                                       ; preds = %bb.e
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %13 = load i64, ptr %12, align 8, !alias.scope !26434, !noalias !26435, !noundef !73
  %.not.i.i.i.i196 = icmp ne i64 %13, 0
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %15 = load i64, ptr %14, align 8, !alias.scope !26434, !noalias !26435
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = sub nsw i32 0, %3                        ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !26436, !noundef !73
  %.not.i.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !26436
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %i.n, i64 %i.j)
  %i.p = select i1 %.not.i.i, i64 0, i64 %i.o
  %.not41.i = icmp ult i64 %i.p, %i.d
  br i1 %.not41.i, label %.thread.i, label %select.unfold

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.f
  %.pre-phi = phi i32 [ %.pre169, %..thread.i_crit_edge ], [ %i.i, %bb.f ]
  %or.cond.i52.i = icmp ugt i32 %5, -2147483648
  %i.q = sub nsw i32 0, %5
  %16 = icmp ule i32 %.pre-phi, %i.q
  %or.cond5.i = select i1 %or.cond.i52.i, i1 %16, i1 false
  br i1 %or.cond5.i, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !26434, !noalias !26435, !noundef !73
  %.not.i.i.i.i = icmp ne i64 %i.s, 0             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !26434, !noalias !26435 ; 2 uses
  br i1 %i.c, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread195, %bb.g
  %17 = phi i64 [ %15, %.thread195 ], [ %i.u, %bb.g ] ; 6 uses
  %.not.i.i.i.i197 = phi i1 [ %.not.i.i.i.i196, %.thread195 ], [ %.not.i.i.i.i, %bb.g ] ; 6 uses
  %i.v = icmp slt i32 %3, 0                       ; 2 uses
  %i.w = zext nneg i32 %3 to i64
  %.sroa.4.0.i.i11.i.i.i = select i1 %i.v, i64 undef, i64 %i.w
  %.sroa.3.0.i.i.i.i = select i1 %i.e, i64 %.sroa.4.0.i.i11.i.i.i, i64 0 ; 4 uses
  %narrow.i.not.i.i.i = select i1 %i.e, i1 %i.v, i1 false
  br i1 %narrow.i.not.i.i.i, label %.thread136.a, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp ult i64 %.sroa.3.0.i.i.i.i, %i.d
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = xor i64 %.sroa.3.0.i.i.i.i, -1
  %i.y = add nsw i64 %i.d, %i.x
  %.fr.i.i.i = freeze i64 %i.y                    ; 2 uses
  %i.z = urem i64 %.fr.i.i.i, %6
  %i.aa = add i64 %.fr.i.i.i, %.sroa.3.0.i.i.i.i
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = icmp ugt i64 %17, %i.ab
  %i.ad = select i1 %.not.i.i.i.i197, i1 %i.ac, i1 false
  br i1 %i.ad, label %select.unfold, label %bb.k

select.unfold:                                    ; preds = %bb.f, %bb.a, %bb.c, %.thread.i, %bb.j
  %.sroa.1350.0 = phi i64 [ %i.d, %bb.j ], [ undef, %.thread.i ], [ undef, %bb.c ], [ undef, %bb.a ], [ undef, %bb.f ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %.sroa.3.0.i.i.i.i, %bb.j ], [ undef, %.thread.i ], [ undef, %bb.c ], [ undef, %bb.a ], [ undef, %bb.f ]
  %.sroa.048.0 = phi i32 [ 4, %bb.j ], [ 3, %.thread.i ], [ 3, %bb.c ], [ 3, %bb.a ], [ 3, %bb.f ]
  %.sroa.15.sroa.5.0.extract.shift = lshr i64 %.sroa.1350.0, 32
  %.sroa.15.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.15.sroa.5.0.extract.shift to i32
  br label %bb.n

bb.k:                                             ; preds = %.thread203, %bb.g, %bb.j, %bb.i
  %18 = phi i64 [ %i.u, %bb.g ], [ %17, %bb.j ], [ %17, %bb.i ], [ %11, %.thread203 ] ; 7 uses
  %.not.i.i.i.i198 = phi i1 [ %.not.i.i.i.i, %bb.g ], [ %.not.i.i.i.i197, %bb.j ], [ %.not.i.i.i.i197, %bb.i ], [ %.not.i.i.i.i204, %.thread203 ] ; 7 uses
  %or.cond.i.i.i.i4 = icmp ugt i32 %3, -2147483648
  %or.cond149 = select i1 %i.e, i1 %or.cond.i.i.i.i4, i1 false
  br i1 %or.cond149, label %bb.l, label %bb.o

.thread136.a:                                     ; preds = %bb.h
  %.sink9.i.i.i.i134 = select i1 %.not.i.i.i.i197, i64 %17, i64 0
  %or.cond.i.i.i.i4138.not = icmp eq i32 %3, -2147483648
  %i.ae = sub nsw i32 0, %3
  %i.af = zext nneg i32 %i.ae to i64
  br i1 %or.cond.i.i.i.i4138.not, label %.thread144, label %.thread140

bb.l:                                             ; preds = %bb.k
  %.sink9.i.i.i.i = select i1 %.not.i.i.i.i198, i64 %18, i64 0 ; 2 uses
  %19 = sub nsw i32 0, %3
  %20 = zext nneg i32 %19 to i64                  ; 2 uses
  br i1 %i.a, label %.thread140, label %bb.m

.thread140:                                       ; preds = %.thread136.a, %bb.l
  %21 = phi i64 [ %18, %bb.l ], [ %17, %.thread136.a ] ; 2 uses
  %.not.i.i.i.i201 = phi i1 [ %.not.i.i.i.i198, %bb.l ], [ %.not.i.i.i.i197, %.thread136.a ] ; 2 uses
  %.sink9.i.i.i.i135139143 = phi i64 [ %.sink9.i.i.i.i, %bb.l ], [ %.sink9.i.i.i.i134, %.thread136.a ]
  %22 = phi i64 [ %20, %bb.l ], [ %i.af, %.thread136.a ]
  %or.cond.i20.i.i.i = icmp ugt i32 %5, -2147483648
  %i.ag = sub nsw i32 0, %5
  %i.ah = zext nneg i32 %i.ag to i64
  br i1 %or.cond.i20.i.i.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %.thread140, %bb.l
  %23 = phi i64 [ %21, %.thread140 ], [ %18, %bb.l ]
  %.not.i.i.i.i200 = phi i1 [ %.not.i.i.i.i201, %.thread140 ], [ %.not.i.i.i.i198, %bb.l ]
  %.sink9.i.i.i.i135139142 = phi i64 [ %.sink9.i.i.i.i135139143, %.thread140 ], [ %.sink9.i.i.i.i, %bb.l ]
  %24 = phi i64 [ %22, %.thread140 ], [ %20, %bb.l ] ; 3 uses
  %.sroa.611.0.i.i.i = phi i64 [ %i.ah, %.thread140 ], [ 0, %bb.l ] ; 2 uses
  %.not.i.i.i5 = icmp samesign uge i64 %.sroa.611.0.i.i.i, %24
  %.not19.i.i.i = icmp ult i64 %.sink9.i.i.i.i135139142, %24
  %or.cond = select i1 %.not.i.i.i5, i1 true, i1 %.not19.i.i.i
  br i1 %or.cond, label %.thread205, label %bb.n

bb.n:                                             ; preds = %bb.m, %select.unfold
  %.sroa.15.sroa.5.0 = phi i32 [ %.sroa.15.sroa.5.0.extract.trunc, %select.unfold ], [ 0, %bb.m ]
  %.sroa.15.sroa.0.0.in = phi i64 [ %.sroa.1350.0, %select.unfold ], [ %.sroa.611.0.i.i.i, %bb.m ]
  %.sroa.18.sroa.0.0 = phi i32 [ 0, %select.unfold ], [ 1, %bb.m ]
  %.sroa.13.0 = phi i64 [ %.sroa.11.0, %select.unfold ], [ %24, %bb.m ]
  %.sroa.040.0 = phi i32 [ %.sroa.048.0, %select.unfold ], [ 4, %bb.m ]
  %.sroa.15.sroa.0.0 = trunc i64 %.sroa.15.sroa.0.0.in to i32
  %.sroa.10.sroa.0.0 = trunc i64 %6 to i32
  %.sroa.10.sroa.5.0.in = lshr i64 %6, 32
  %.sroa.10.sroa.5.0 = trunc nuw i64 %.sroa.10.sroa.5.0.in to i32
  br label %bb.am

bb.o:                                             ; preds = %bb.k
  %i.ai = icmp eq i64 %6, 1
  br i1 %i.ai, label %bb.p, label %26

.thread205:                                       ; preds = %bb.m
  %i.aj = icmp eq i64 %6, 1
  br i1 %i.aj, label %bb.p, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

.thread144:                                       ; preds = %.thread136.a
  %i.ak = icmp eq i64 %6, 1
  br i1 %i.ak, label %._crit_edge.i.i.i.thread, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

.thread:                                          ; preds = %.thread140
  %i.al = icmp eq i64 %6, 1
  br i1 %i.al, label %._crit_edge.i.i.i.thread, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.p:                                             ; preds = %.thread205, %bb.o
  %.not.i.i.i.i199208 = phi i1 [ %.not.i.i.i.i200, %.thread205 ], [ %.not.i.i.i.i198, %bb.o ] ; 3 uses
  %25 = phi i64 [ %23, %.thread205 ], [ %18, %bb.o ] ; 3 uses
  %.not165.i.i.i = icmp eq i32 %4, 0
  br i1 %.not165.i.i.i, label %bb.q, label %._crit_edge.i.i.i

26:                                               ; preds = %bb.o
  br i1 %i.e, label %bb.ad, label %bb.ae

._crit_edge.i.i.i:                                ; preds = %bb.q, %bb.p
  %i.am = icmp slt i32 %3, 0                      ; 2 uses
  %i.an = zext nneg i32 %3 to i64
  %.sroa.4.0.i.i.i.i.i8 = select i1 %i.am, i64 undef, i64 %i.an
  %spec.select = select i1 %i.e, i64 %.sroa.4.0.i.i.i.i.i8, i64 0
  %i.ao = select i1 %i.e, i1 %i.am, i1 false
  br label %._crit_edge.i.i.i.thread

._crit_edge.i.i.i.thread:                         ; preds = %._crit_edge.i.i.i, %.thread, %.thread144
  %narrow.i.not.i.i.i10 = phi i1 [ %i.ao, %._crit_edge.i.i.i ], [ true, %.thread ], [ true, %.thread144 ] ; 2 uses
  %.not.i.i.i.i202216 = phi i1 [ %.not.i.i.i.i199208, %._crit_edge.i.i.i ], [ %.not.i.i.i.i201, %.thread ], [ %.not.i.i.i.i197, %.thread144 ] ; 4 uses
  %i.ap = phi i64 [ %25, %._crit_edge.i.i.i ], [ %21, %.thread ], [ %17, %.thread144 ] ; 4 uses
  %i.aq = phi i64 [ %spec.select, %._crit_edge.i.i.i ], [ undef, %.thread ], [ undef, %.thread144 ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !26437, !noalias !26438 ; 15 uses
  %.not166.i.i.i = icmp ugt i64 %i.aq, %i.as      ; 3 uses
  %or.cond.i.i.i = select i1 %narrow.i.not.i.i.i10, i1 true, i1 %.not166.i.i.i
  %or.cond.not.i.i.i = xor i1 %or.cond.i.i.i, true
  %i.at = icmp slt i32 %5, 0                      ; 2 uses
  %i.au = and i1 %i.a, %or.cond.not.i.i.i
  %or.cond398.i.i.i = select i1 %i.au, i1 %i.at, i1 false
  br i1 %or.cond398.i.i.i, label %bb.s, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  %..i.i.i = select i1 %i.e, i32 %3, i32 0        ; 5 uses
  %i.av = icmp sgt i32 %..i.i.i, -1
  br i1 %i.av, label %bb.r, label %._crit_edge.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.aw = zext nneg i32 %..i.i.i to i64           ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !26437, !noalias !26438, !noundef !73 ; 5 uses
  %.not167.i.i.i = icmp ult i64 %i.ay, %i.aw
  br i1 %.not167.i.i.i, label %bb.ab, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i, %bb.t, %bb.s, %._crit_edge.i.i.i.thread
  br i1 %narrow.i.not.i.i.i10, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i, label %bb.u

bb.s:                                             ; preds = %._crit_edge.i.i.i.thread
  %or.cond.i.not.i.i.i.i = icmp eq i32 %5, -2147483648
  %i.az = sub nsw i32 0, %5
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  br i1 %or.cond.i.not.i.i.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sink9.i.i.i.i.i = select i1 %.not.i.i.i.i202216, i64 %i.ap, i64 0 ; 3 uses
  %i.bb = sub i64 %.sink9.i.i.i.i.i, %i.as
  %.not.i.i.i.i12 = icmp ult i64 %i.bb, %i.ba
  br i1 %.not.i.i.i.i12, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i: ; preds = %bb.t
  %i.bc = add i64 %i.as, %i.ba                    ; 2 uses
  %i.bd = sub i64 %.sink9.i.i.i.i.i, %i.bc        ; 2 uses
  %i.be = icmp ult i64 %i.bd, 2147483648
  br i1 %i.be, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i
  %i.bf = trunc nuw nsw i64 %i.bd to i32
  %i.bg = icmp ult i64 %i.aq, %i.as               ; 2 uses
  %i.bh = icmp ult i64 %i.aq, 2147483648          ; 2 uses
  %i.bi = trunc nuw nsw i64 %i.aq to i32
  %.sroa.05.0.i.i.i.i.i.i = zext i1 %i.bh to i32
  %i.bj = and i1 %i.bh, %i.bg
  %.sroa.4331.0.i.i.i = select i1 %i.bj, i32 %i.bi, i32 undef
  %.sink.i.i.i.i.i = select i1 %i.bg, i32 %.sroa.05.0.i.i.i.i.i.i, i32 2
  %.not395.i.i.i = icmp eq i64 %.sink9.i.i.i.i.i, %i.bc ; 2 uses
  %.sroa.6338.0.i.i.i = select i1 %.not395.i.i.i, i32 undef, i32 %i.bf
  %.sink.i.i184.i.i.i = select i1 %.not395.i.i.i, i32 2, i32 0
  br label %bb.am

bb.u:                                             ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i
  %.sroa.4.0.i.i.i.i = select i1 %or.cond.i.i, i64 %i.d, i64 undef ; 2 uses
  %27 = icmp ugt i64 %.sroa.4.0.i.i.i.i, %i.as
  %or.cond172.i.i.i = select i1 %or.cond.i.i, i1 %27, i1 false
  br i1 %or.cond172.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = and i1 %.not166.i.i.i, %i.a
  %or.cond399.i.i.i = select i1 %i.bk, i1 %i.at, i1 false
  br i1 %or.cond399.i.i.i, label %bb.x, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.bl = sub nuw nsw i64 %.sroa.4.0.i.i.i.i, %i.as
  %.sink9.i7.i.i.i.i.i = select i1 %.not.i.i.i.i202216, i64 %i.ap, i64 0
  %i.bm = sub i64 %.sink9.i7.i.i.i.i.i, %i.as
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bl) ; 2 uses
  br i1 %.not166.i.i.i, label %bb.am, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i: ; preds = %bb.w
  %i.bn = icmp ult i64 %i.aq, %i.as               ; 2 uses
  %i.bo = icmp ult i64 %i.aq, 2147483648          ; 2 uses
  %i.bp = trunc nuw nsw i64 %i.aq to i32
  %.sroa.05.0.i.i.i.i.i.i.i = zext i1 %i.bo to i32
  %i.bq = and i1 %i.bo, %i.bn
  %.sroa.4.0.i191.i.i.i = select i1 %i.bq, i32 %i.bp, i32 undef
  %.sink.i.i.i.i.i.i = select i1 %i.bn, i32 %.sroa.05.0.i.i.i.i.i.i.i, i32 2
  br label %bb.am

bb.x:                                             ; preds = %bb.v
  %or.cond.i.not.i197.i.i.i = icmp eq i32 %5, -2147483648
  %i.br = sub nsw i32 0, %5
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  br i1 %or.cond.i.not.i197.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sink9.i.i199.i.i.i = select i1 %.not.i.i.i.i202216, i64 %i.ap, i64 0 ; 2 uses
  %i.bt = sub i64 %.sink9.i.i199.i.i.i, %i.as
  %.not.i200.i.i.i = icmp ult i64 %i.bt, %i.bs
  br i1 %.not.i200.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i: ; preds = %bb.y
  %i.bu = add nuw nsw i64 %i.as, %i.bs
  %i.bv = sub i64 %.sink9.i.i199.i.i.i, %i.bu     ; 4 uses
  %i.bw = icmp ult i64 %i.bv, 2147483648
  br i1 %i.bw, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i
  %i.bx = trunc nuw nsw i64 %i.bv to i32
  %i.by = sub nuw nsw i64 %i.aq, %i.as            ; 2 uses
  %.sroa.0.0.i.i214.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bv, i64 %i.by) ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bv               ; 3 uses
  %i.ca = trunc nuw nsw i64 %.sroa.0.0.i.i214.i.i.i to i32
  %.sroa.7.0.i216.i.i.i = select i1 %i.bz, i32 %i.bx, i32 undef
  %.sroa.527.0.i.i.i.i = select i1 %i.bz, i32 %i.ca, i32 undef
  %.sroa.026.0.i.i.i.i = select i1 %i.bz, i32 1, i32 2
  br label %bb.am

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i
  %or.cond.i.not.i227.i.i.i = icmp eq i32 %3, -2147483648
  %i.cb = sub nsw i32 0, %3
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  br i1 %or.cond.i.not.i227.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %bb.z

bb.z:                                             ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i
  %.sink9.i.i229.i.i.i = select i1 %.not.i.i.i.i202216, i64 %i.ap, i64 0 ; 2 uses
  %i.cd = sub i64 %.sink9.i.i229.i.i.i, %i.as     ; 2 uses
  %.not.i230.i.i.i = icmp ult i64 %i.cd, %i.cc
  br i1 %.not.i230.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i: ; preds = %bb.z
  %i.ce = add i64 %i.as, %i.cc
  %i.cf = sub i64 %.sink9.i.i229.i.i.i, %i.ce     ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 2147483648
  %i.ch = icmp ult i64 %i.as, %i.d
  %i.ci = and i1 %i.cg, %or.cond.i.i
  %or.cond221 = select i1 %i.ci, i1 %i.ch, i1 false
  br i1 %or.cond221, label %bb.aa, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.aa:                                            ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i
  %i.cj = sub nuw nsw i64 %i.d, %i.as
  %.sroa.0.0.i240.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %i.cj) ; 2 uses
  %i.ck = icmp samesign ugt i64 %.sroa.0.0.i240.i.i.i, %i.cf
  br i1 %i.ck, label %bb.am, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.ab:                                            ; preds = %bb.r
  %.sink9.i.i.i.i.i.i = select i1 %.not.i.i.i.i199208, i64 %25, i64 0
  %i.cl = sub i64 %.sink9.i.i.i.i.i.i, %i.ay      ; 4 uses
  %i.cm = sub nuw nsw i64 %i.aw, %i.ay            ; 2 uses
  %.sroa.0.0.i.i251.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.cm) ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  br i1 %i.cn, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %i.co = trunc nuw nsw i64 %.sroa.0.0.i.i251.i.i.i to i32
  %i.cp = icmp ult i64 %i.cl, 2147483648          ; 2 uses
  %i.cq = trunc nuw nsw i64 %i.cl to i32
  %.sroa.67.0.i.i.i.i.i.i.i = select i1 %i.cp, i32 %i.cq, i32 undef
  %.sroa.06.0.i.i.i.i266.i.i.i = zext i1 %i.cp to i32
  br label %bb.am

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i: ; preds = %bb.r
  %i.cr = icmp ugt i64 %i.ay, %i.aw
  %spec.select.i.i.i = select i1 %i.cr, i32 1, i32 2
  %.sink9.i.i276.i.i.i = select i1 %.not.i.i.i.i199208, i64 %25, i64 0
  %.not396.i.i.i = icmp eq i64 %.sink9.i.i276.i.i.i, %i.ay
  %.sink.i.i278.i.i.i = select i1 %.not396.i.i.i, i32 2, i32 0
  br label %bb.am

bb.ad:                                            ; preds = %26
  %i.cs = icmp sgt i32 %3, -1
  br i1 %i.cs, label %bb.af, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.ae:                                            ; preds = %bb.af, %26
  %.sroa.689.0.i.i.i = phi i64 [ %i.ct, %bb.af ], [ 0, %26 ] ; 4 uses
  %.sroa.085.0.i.i.i = phi i1 [ %.not.i284.i.i.i, %bb.af ], [ true, %26 ] ; 2 uses
  br i1 %i.a, label %bb.ag, label %._RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316_crit_edge.i.i.i

._RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316_crit_edge.i.i.i: ; preds = %bb.ae
  %.pre168 = select i1 %.not.i.i.i.i198, i64 %18, i64 0
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ct = zext nneg i32 %3 to i64                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val176.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !26437, !noalias !26438, !noundef !73
  %.not.i284.i.i.i = icmp uge i64 %.val176.i.i.i, %i.ct
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  %28 = icmp sgt i32 %5, -1
  br i1 %28, label %bb.al, label %bb.ah

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i: ; preds = %bb.al, %._RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316_crit_edge.i.i.i
  %.sink9.i319.i.i.i.pre-phi = phi i64 [ %.sink9.i309.i.i.i, %bb.al ], [ %.pre168, %._RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316_crit_edge.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !26437, !noalias !26438 ; 2 uses
  %i.cw = icmp ult i64 %.sroa.689.0.i.i.i, %.val.i.i.i
  %i.cx = trunc nuw nsw i64 %.sroa.689.0.i.i.i to i32
  %i.cy = select i1 %.sroa.085.0.i.i.i, i1 %i.cw, i1 false ; 2 uses
  %.sroa.8369.1.i.i.i = select i1 %i.cy, i32 %i.cx, i32 undef
  %.sroa.0368.1.i.i.i = select i1 %i.cy, i32 1, i32 2
  %i.cz = sub i64 %.sink9.i319.i.i.i.pre-phi, %.val.i.i.i
  br label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %or.cond.i.not.i288.i.i.i = icmp eq i32 %5, -2147483648
  %i.da = sub nsw i32 0, %5
  %i.db = zext nneg i32 %i.da to i64              ; 2 uses
  br i1 %or.cond.i.not.i288.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sink9.i.i290.i.i.i = select i1 %.not.i.i.i.i198, i64 %18, i64 0 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !26439, !noalias !26438, !noundef !73 ; 3 uses
  %i.de = sub i64 %.sink9.i.i290.i.i.i, %i.dd
  %.not.i291.i.i.i = icmp ult i64 %i.de, %i.db
  br i1 %.not.i291.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i: ; preds = %bb.ai
  %i.df = add i64 %i.dd, %i.db
  %i.dg = sub i64 %.sink9.i.i290.i.i.i, %i.df     ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 2147483648
  br i1 %i.dh, label %bb.aj, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.aj:                                            ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i
  br i1 %.sroa.085.0.i.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.di = icmp ult i64 %.sroa.689.0.i.i.i, %i.dd  ; 2 uses
  %i.dj = trunc nuw nsw i64 %.sroa.689.0.i.i.i to i32
  %spec.select390.i.i.i = select i1 %i.di, i32 %i.dj, i32 undef
  %spec.select391.i.i.i = select i1 %i.di, i32 1, i32 2
  br label %bb.am

bb.al:                                            ; preds = %bb.ag
  %29 = zext nneg i32 %5 to i64
  %.sink9.i309.i.i.i = select i1 %.not.i.i.i.i198, i64 %18, i64 0 ; 2 uses
  %.not.i.i.i7 = icmp ult i64 %.sink9.i309.i.i.i, %29
  br i1 %.not.i.i.i7, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread: ; preds = %.thread205, %.thread144, %bb.aa, %bb.v, %bb.ah, %bb.ad, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i, %bb.z, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i, %bb.y, %bb.x, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i, %bb.ai, %bb.al, %.thread
  store i32 6, ptr %0, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.aa, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i, %bb.n, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i, %bb.w, %bb.ac, %bb.ab, %bb.ak, %bb.aj, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i
  %.sroa.10.sroa.5.0113 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.ak ], [ %.sroa.10.sroa.5.0, %bb.n ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ undef, %bb.ac ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.aj ], [ undef, %bb.aa ]
  %.sroa.55.0 = phi i64 [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 0, %bb.w ], [ 0, %bb.ab ], [ 0, %bb.ak ], [ undef, %bb.n ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 0, %bb.ac ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 0, %bb.aj ], [ %i.cf, %bb.aa ]
  %.sroa.62.0 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.w ], [ %.sroa.0.0.i.i251.i.i.i, %bb.ab ], [ %i.dg, %bb.ak ], [ undef, %bb.n ], [ %.sroa.0.0.i.i214.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %.sroa.0.0.i.i251.i.i.i, %bb.ac ], [ %i.cz, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ %i.dg, %bb.aj ], [ %.sroa.0.0.i240.i.i.i, %bb.aa ]
  %.sroa.67.0 = phi i8 [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 1, %bb.w ], [ 1, %bb.ab ], [ 1, %bb.ak ], [ undef, %bb.n ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 1, %bb.ac ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 1, %bb.aj ], [ 0, %bb.aa ]
  %.sroa.47.0 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.ak ], [ undef, %bb.n ], [ %.sroa.7.0.i216.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sroa.6338.0.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %.sroa.67.0.i.i.i.i.i.i.i, %bb.ac ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.aj ], [ undef, %bb.aa ]
  %.sroa.43.0 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.ak ], [ %.sroa.18.sroa.0.0, %bb.n ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %.sroa.06.0.i.i.i.i266.i.i.i, %bb.ac ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.aj ], [ undef, %bb.aa ]
  %.sroa.41.0 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.ak ], [ %.sroa.15.sroa.5.0, %bb.n ], [ %.sroa.527.0.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %i.co, %bb.ac ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.aj ], [ undef, %bb.aa ]
  %.sroa.34.0 = phi i32 [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ %.sink.i.i278.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 2, %bb.w ], [ 2, %bb.ab ], [ 2, %bb.ak ], [ %.sroa.15.sroa.0.0, %bb.n ], [ %.sroa.026.0.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sink.i.i184.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 1, %bb.ac ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 2, %bb.aj ], [ 2, %bb.aa ]
  %.sroa.2820.0 = phi i64 [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 1, %bb.w ], [ 1, %bb.ab ], [ %6, %bb.ak ], [ %.sroa.13.0, %bb.n ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 1, %bb.ac ], [ %6, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ %6, %bb.aj ], [ undef, %bb.aa ]
  %.sroa.22.0 = phi i32 [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 0, %bb.w ], [ 0, %bb.ab ], [ 0, %bb.ak ], [ %.sroa.10.sroa.0.0, %bb.n ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 0, %bb.ac ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 0, %bb.aj ], [ undef, %bb.aa ]
  %.sroa.17.0 = phi i32 [ %.sroa.4.0.i191.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ %..i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.w ], [ %..i.i.i, %bb.ab ], [ %spec.select390.i.i.i, %bb.ak ], [ undef, %bb.n ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sroa.4331.0.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %..i.i.i, %bb.ac ], [ %.sroa.8369.1.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.aj ], [ undef, %bb.aa ]
  %.sroa.0.0 = phi i32 [ %.sink.i.i.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ %spec.select.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 2, %bb.w ], [ 2, %bb.ab ], [ %spec.select391.i.i.i, %bb.ak ], [ %.sroa.040.0, %bb.n ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sink.i.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 2, %bb.ac ], [ %.sroa.0368.1.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 2, %bb.aj ], [ 2, %bb.aa ]
  store i32 %.sroa.0.0, ptr %0, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.10.sroa.5.0113, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.2820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.2820.0, ptr %.sroa.2820.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.34.0, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.41.0, ptr %.sroa.41.0..sroa_idx, align 4
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.43.0, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.47.0, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.50.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.55.0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.62.0, ptr %.sroa.62.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.67.0, ptr %.sroa.67.0..sroa_idx, align 8
  br label %bb.an

bb.an:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE25type_at_negative_distance(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26451 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = icmp eq i64 %5, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !26452, !noundef !73 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !26453, !noundef !73
  %.not.i.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26453
  %.sink9.i.i = select i1 %.not.i.i, i64 0, i64 %i.h ; 3 uses
  %i.i = sub i64 %.sink9.i.i, %i.d                ; 2 uses
  %i.j = icmp ugt i64 %5, %.sink9.i.i
  br i1 %i.j, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp ugt i64 %5, %i.i
  br i1 %.not, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit, label %bb.e

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 3 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %i.p = sub i64 %.sink9.i.i, %5
  %.sroa.018.0.copyload = load i32, ptr %1, align 8, !alias.scope !26454 ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.519.0.copyload = load i32, ptr %.sroa.519.0..sroa_idx, align 4, !alias.scope !26454
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.620.0.copyload = load i64, ptr %.sroa.620.0..sroa_idx, align 8, !alias.scope !26454
  %i.q = icmp eq i32 %.sroa.018.0.copyload, -1    ; 3 uses
  %.sroa.615.0 = select i1 %i.q, i64 undef, i64 %.sroa.620.0.copyload
  %.sroa.512.0 = select i1 %i.q, i32 5, i32 %.sroa.519.0.copyload
  %.sroa.010.0 = select i1 %i.q, i32 18, i32 %.sroa.018.0.copyload
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26456)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.r, align 8, !alias.scope !26457
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.o, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !26457
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !26457
  store i32 %.sroa.010.0, ptr %i.a, align 8, !alias.scope !26458
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.512.0, ptr %.sroa.431.0..sroa_idx, align 4, !alias.scope !26458
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.615.0, ptr %.sroa.532.0..sroa_idx, align 8, !alias.scope !26458
  call void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType27from_elements_leave_aliasesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1P_4skip4SkipINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB8_4TypeEEEINtNtNtB1R_7sources4once4OnceB3J_EEB3J_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 1
  %i.v = sub nuw i64 %i.i, %5                     ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.h, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  store i32 -1, ptr %0, align 4
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.x = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE25type_at_nonnegative_index(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26481 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !26482, !noundef !73 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !26483, !noundef !73
  %.not.i.i = icmp ne i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26483
  %i.i = icmp ugt i64 %i.h, %5
  %i.j = select i1 %.not.i.i, i1 %i.i, i1 false
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26484)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206), !noalias !26485 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 1
  %i.n = icmp ult i64 %5, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw i64 %5, 1
  %i.p = sub i64 %i.o, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26487
  %.sroa.08.0.copyload.i.i.i = load i32, ptr %1, align 8, !alias.scope !26488, !noalias !26489 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.59.0.copyload.i.i.i = load i32, ptr %.sroa.59.0..sroa_idx.i.i.i, align 4, !alias.scope !26488, !noalias !26489
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.610.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !26488, !noalias !26489
  %i.q = icmp eq i32 %.sroa.08.0.copyload.i.i.i, -1 ; 3 uses
  %.sroa.6.0.i.i.i = select i1 %i.q, i64 undef, i64 %.sroa.610.0.copyload.i.i.i
  %.sroa.5.0.i.i.i = select i1 %i.q, i32 5, i32 %.sroa.59.0.copyload.i.i.i
  %.sroa.0.0.i.i.i = select i1 %i.q, i32 18, i32 %.sroa.08.0.copyload.i.i.i
  %i.r = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207), !noalias !26490 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26492)
  store i32 %.sroa.0.0.i.i.i, ptr %i.a, align 8, !alias.scope !26493, !noalias !26487
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.5.0.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i.i, align 4, !alias.scope !26493, !noalias !26487
  %.sroa.524.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.6.0.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i, align 8, !alias.scope !26493, !noalias !26487
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.s, ptr %i.v, align 8, !alias.scope !26494, !noalias !26487
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !26494, !noalias !26487
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.p, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !26494, !noalias !26487
  call void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType27from_elements_leave_aliasesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB1R_7sources4once4OnceNtB8_4TypeEINtNtB1P_4take4TakeINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterB35_EEEEB35_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a), !noalias !26495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26487
  br label %_RNCNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB7_19VariableLengthTupleNtB9_4TypeNtB7_15VariableSegmentE25type_at_nonnegative_index0Bb_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!26207 = distinct !{!26207, !26206, !"_RINvMs3_NtCs8bMtf1JxJvX_9hashbrown3mapINtB6_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtBS_4hash18BuildHasherDefaultNtNtB1q_4hash12TypeIdHasherEE3getBO_ECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!26208 = distinct !{!26208, i1 true, !"_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsoTR8nlGN3X_18ty_python_semantic"}
!26209 = distinct !{!26209, !26208, !"_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!26210 = distinct !{!26210, i1 true, !"_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!26211 = distinct !{!26211, !26210, !"_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!26212 = distinct !{!26212, !26208, !"_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!26213 = distinct !{!26213, !26210, !"_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!26214 = distinct !{!26214, i1 true, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!26215 = distinct !{!26215, !26214, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!26216 = distinct !{!26216, i1 true, !"_RNCINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsoTR8nlGN3X_18ty_python_semantic"}
!26217 = distinct !{!26217, !26216, !"_RNCINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!26218 = distinct !{!26218, i1 true, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtNtB1N_5types8equality5enumss_1__NtB3e_37enum_class_key_profile_Configuration_17fn_ingredient_mut0E0zEB1N_"}
!26219 = distinct !{!26219, !26218, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtNtB1N_5types8equality5enumss_1__NtB3e_37enum_class_key_profile_Configuration_17fn_ingredient_mut0E0zEB1N_: argument 0"}
!26220 = !{i64 -4627525914246775693}
!26221 = !{!26207}
!26222 = !{!26209}
!26223 = !{!26211}
!26224 = !{!26211, !26209, !26207}
!26225 = !{!26215, !26211, !26213, !26209, !26212}
!26226 = !{!26217, !26211, !26213, !26209, !26212}
!26227 = !{!26219}
!26228 = distinct !{!26228, i1 true, !"_RINvMs3_NtCs8bMtf1JxJvX_9hashbrown3mapINtB6_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtBS_4hash18BuildHasherDefaultNtNtB1q_4hash12TypeIdHasherEE3getBO_ECsoTR8nlGN3X_18ty_python_semantic"}
!26229 = distinct !{!26229, !26228, !"_RINvMs3_NtCs8bMtf1JxJvX_9hashbrown3mapINtB6_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtBS_4hash18BuildHasherDefaultNtNtB1q_4hash12TypeIdHasherEE3getBO_ECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!26230 = distinct !{!26230, i1 true, !"_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsoTR8nlGN3X_18ty_python_semantic"}
!26231 = distinct !{!26231, !26230, !"_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!26232 = distinct !{!26232, i1 true, !"_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!26233 = distinct !{!26233, !26232, !"_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!26234 = distinct !{!26234, !26230, !"_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!26235 = distinct !{!26235, !26232, !"_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!26236 = distinct !{!26236, i1 true, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!26237 = distinct !{!26237, !26236, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!26238 = distinct !{!26238, i1 true, !"_RNCINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsoTR8nlGN3X_18ty_python_semantic"}
!26239 = distinct !{!26239, !26238, !"_RNCINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!26240 = distinct !{!26240, i1 true, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsu_NtNtB1N_5types10type_aliasNtB3m_13TypeAliasType17variance_of_owner1__NtB3e_33variance_of_owner__Configuration_17fn_ingredient_mut0E0zEB1N_"}
!26241 = distinct !{!26241, !26240, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMsu_NtNtB1N_5types10type_aliasNtB3m_13TypeAliasType17variance_of_owner1__NtB3e_33variance_of_owner__Configuration_17fn_ingredient_mut0E0zEB1N_: argument 0"}
!26242 = !{i64 1024689237750947373}
!26243 = !{!26229}
!26244 = !{!26231}
!26245 = !{!26233}
!26246 = !{!26233, !26231, !26229}
!26247 = !{!26237, !26233, !26235, !26231, !26234}
!26248 = !{!26239, !26233, !26235, !26231, !26234}
!26249 = !{!26241}
!26250 = distinct !{!26250, i1 true, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!26251 = distinct !{!26251, !26250, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!26252 = !{i64 7651647096585533946}
!26253 = !{!26251}
!26254 = distinct !{!26254, i1 true, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!26255 = distinct !{!26255, !26254, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!26256 = !{i64 -8651287297856413141}
!26257 = !{!26255}
!26258 = distinct !{!26258, i1 true, !"_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_19PEP695TypeAliasType14raw_value_type"}
!26259 = distinct !{!26259, !26258, !"_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_19PEP695TypeAliasType14raw_value_type: argument 1"}
!26260 = distinct !{!26260, !26258, !"_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_19PEP695TypeAliasType14raw_value_type: argument 0"}
!26261 = distinct !{!26261, i1 true, !"_RNvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB7_19PEP695TypeAliasType14raw_value_type15raw_value_type_"}
!26262 = distinct !{!26262, !26261, !"_RNvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB7_19PEP695TypeAliasType14raw_value_type15raw_value_type_: argument 1"}
!26263 = distinct !{!26263, !26261, !"_RNvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB7_19PEP695TypeAliasType14raw_value_type15raw_value_type_: argument 0"}
!26264 = distinct !{!26264, i1 true, !"_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_19PEP695TypeAliasType15generic_context"}
!26265 = distinct !{!26265, !26264, !"_RNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_19PEP695TypeAliasType15generic_context: argument 0"}
!26266 = distinct !{!26266, i1 true, !"_RNvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB7_19PEP695TypeAliasType15generic_context16generic_context_"}
!26267 = distinct !{!26267, !26266, !"_RNvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB7_19PEP695TypeAliasType15generic_context16generic_context_: argument 0"}
!26268 = distinct !{null}
!26269 = !{i64 -319491899397874481}
!26270 = !{!26260, !26259}
!26271 = !{!26263, !26262, !26260, !26259}
!26272 = !{!26265}
!26273 = !{!26267, !26265}
!26274 = distinct !{!26274, i1 true, !"_RNvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB7_19PEP695TypeAliasType15generic_context16generic_context_"}
!26275 = distinct !{!26275, !26274, !"_RNvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB7_19PEP695TypeAliasType15generic_context16generic_context_: argument 0"}
!26276 = !{i64 4474966638233374255}
!26277 = !{!26275}
!26278 = distinct !{!26278, i1 true, !"_RNCNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_alias1__NtB9_19PEP695TypeAliasType17default_debug_fmts_0Bd_"}
!26279 = distinct !{!26279, !26278, !"_RNCNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_alias1__NtB9_19PEP695TypeAliasType17default_debug_fmts_0Bd_: argument 0"}
!26280 = !{i64 1198480194159802504}
!26281 = !{!26279}
!26282 = distinct !{!26282, i1 true, !"_RNCNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliass_1__NtB9_25ManualPEP695TypeAliasType17default_debug_fmts_0Bd_"}
!26283 = distinct !{!26283, !26282, !"_RNCNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliass_1__NtB9_25ManualPEP695TypeAliasType17default_debug_fmts_0Bd_: argument 0"}
!26284 = !{i64 -2237831039916453735}
!26285 = !{!26283}
!26286 = distinct !{!26286, i1 true, !"_RNCNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB9_9TupleType17default_debug_fmts_0Bd_"}
!26287 = distinct !{!26287, !26286, !"_RNCNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB9_9TupleType17default_debug_fmts_0Bd_: argument 0"}
!26288 = !{i64 8511599041264156026}
!26289 = !{!26287}
!26290 = distinct !{!26290, i1 true, !"_RNCNvMsb_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal1__NtB9_8EnumSpec17default_debug_fmts_0Bf_"}
!26291 = distinct !{!26291, !26290, !"_RNCNvMsb_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal1__NtB9_8EnumSpec17default_debug_fmts_0Bf_: argument 0"}
!26292 = !{i64 9086326726413089785}
!26293 = !{!26291}
!26294 = distinct !{!26294, i1 true, !"_RNCNvMsb_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literals0_1__NtB9_18DynamicEnumLiteral17default_debug_fmts_0Bf_"}
!26295 = distinct !{!26295, !26294, !"_RNCNvMsb_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literals0_1__NtB9_18DynamicEnumLiteral17default_debug_fmts_0Bf_: argument 0"}
!26296 = !{i64 111091289950616413}
!26297 = !{!26295}
!26298 = distinct !{!26298, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20slice_fixed_position"}
!26299 = distinct !{!26299, !26298, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20slice_fixed_position: argument 0"}
!26300 = distinct !{!26300, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE16homogeneous_type"}
!26301 = distinct !{!26301, !26300, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE16homogeneous_type: argument 1"}
!26302 = distinct !{!26302, !26300, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE16homogeneous_type: argument 2"}
!26303 = distinct !{!26303, !26300, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE16homogeneous_type: argument 0"}
!26304 = distinct !{!26304, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE17iter_all_elements"}
!26305 = distinct !{!26305, !26304, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE17iter_all_elements: argument 0"}
!26306 = distinct !{!26306, !26304, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE17iter_all_elements: argument 1"}
!26307 = distinct !{!26307, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_prefix_elementsB9_"}
!26308 = distinct !{!26308, !26307, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_prefix_elementsB9_: argument 0"}
!26309 = distinct !{!26309, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtNtBa_7sources4once4OnceB1H_EENtNtNtBa_6traits8iterator8Iterator5chainBV_EB1L_"}
!26310 = distinct !{!26310, !26309, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtNtBa_7sources4once4OnceB1H_EENtNtNtBa_6traits8iterator8Iterator5chainBV_EB1L_: argument 1"}
!26311 = distinct !{!26311, !26309, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtNtBa_7sources4once4OnceB1H_EENtNtNtBa_6traits8iterator8Iterator5chainBV_EB1L_: argument 0"}
!26312 = distinct !{!26312, i1 true, !"_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_13VariableSlice2ty"}
!26313 = distinct !{!26313, !26312, !"_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_13VariableSlice2ty: argument 3"}
!26314 = distinct !{!26314, !26312, !"_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_13VariableSlice2ty: argument 2"}
!26315 = distinct !{!26315, !26312, !"_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_13VariableSlice2ty: argument 1"}
!26316 = distinct !{!26316, !26312, !"_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_13VariableSlice2ty: argument 0"}
!26317 = distinct !{!26317, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_"}
!26318 = distinct !{!26318, !26317, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 1"}
!26319 = distinct !{!26319, !26317, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 0"}
!26320 = distinct !{!26320, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_suffix_elementsB9_"}
!26321 = distinct !{!26321, !26320, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_suffix_elementsB9_: argument 0"}
!26322 = distinct !{!26322, i1 true, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtB8_4iter6traits8iterator8Iterator5chainINtNtNtB1A_8adapters4take4TakeINtNtB2k_4skip4SkipINtNtB2k_6copied6CopiedINtNtNtB8_5slice4iter4IterBH_EEEEEBL_"}
!26323 = distinct !{!26323, !26322, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtB8_4iter6traits8iterator8Iterator5chainINtNtNtB1A_8adapters4take4TakeINtNtB2k_4skip4SkipINtNtB2k_6copied6CopiedINtNtNtB8_5slice4iter4IterBH_EEEEEBL_: argument 1"}
!26324 = distinct !{!26324, !26322, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtB8_4iter6traits8iterator8Iterator5chainINtNtNtB1A_8adapters4take4TakeINtNtB2k_4skip4SkipINtNtB2k_6copied6CopiedINtNtNtB8_5slice4iter4IterBH_EEEEEBL_: argument 2"}
!26325 = distinct !{!26325, !26322, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtB8_4iter6traits8iterator8Iterator5chainINtNtNtB1A_8adapters4take4TakeINtNtB2k_4skip4SkipINtNtB2k_6copied6CopiedINtNtNtB8_5slice4iter4IterBH_EEEEEBL_: argument 0"}
!26326 = distinct !{!26326, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_"}
!26327 = distinct !{!26327, !26326, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 1"}
!26328 = distinct !{!26328, !26326, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 0"}
!26329 = distinct !{!26329, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE15prefix_elementsB9_"}
!26330 = distinct !{!26330, !26329, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE15prefix_elementsB9_: argument 0"}
!26331 = distinct !{!26331, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice"}
!26332 = distinct !{!26332, !26331, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice: argument 0"}
!26333 = distinct !{!26333, !26331, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice: argument 2"}
!26334 = distinct !{!26334, !26331, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice: argument 1"}
!26335 = distinct !{!26335, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic"}
!26336 = distinct !{!26336, !26335, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!26337 = distinct !{!26337, !26335, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!26338 = distinct !{!26338, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice"}
!26339 = distinct !{!26339, !26338, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice: argument 0"}
!26340 = distinct !{!26340, !26338, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice: argument 2"}
!26341 = distinct !{!26341, !26338, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20optional_fixed_slice: argument 1"}
!26342 = distinct !{!26342, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic"}
!26343 = distinct !{!26343, !26342, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!26344 = distinct !{!26344, !26342, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6expectCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!26345 = distinct !{!26345, i1 true, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_"}
!26346 = distinct !{!26346, !26345, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_: argument 0"}
!26347 = distinct !{!26347, i1 true, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1W_INtNtB2v_7step_by6StepByINtNtB2v_4take4TakeINtNtB2v_4skip4SkipINtNtNtB2z_5slice4iter4IterB1k_EEEEIB3q_IB3O_IB47_INtNtB2v_3rev3RevB4p_EEEEEEINtNtNtB2x_7sources5empty5EmptyB1k_EEB1V_EBa_"}
!26348 = distinct !{!26348, !26347, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1W_INtNtB2v_7step_by6StepByINtNtB2v_4take4TakeINtNtB2v_4skip4SkipINtNtNtB2z_5slice4iter4IterB1k_EEEEIB3q_IB3O_IB47_INtNtB2v_3rev3RevB4p_EEEEEEINtNtNtB2x_7sources5empty5EmptyB1k_EEB1V_EBa_: argument 0"}
!26349 = distinct !{!26349, !26347, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1W_INtNtB2v_7step_by6StepByINtNtB2v_4take4TakeINtNtB2v_4skip4SkipINtNtNtB2z_5slice4iter4IterB1k_EEEEIB3q_IB3O_IB47_INtNtB2v_3rev3RevB4p_EEEEEEINtNtNtB2x_7sources5empty5EmptyB1k_EEB1V_EBa_: argument 2"}
!26350 = distinct !{!26350, !26345, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_: argument 3"}
!26351 = distinct !{!26351, !26345, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_: argument 2"}
!26352 = distinct !{!26352, !26345, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_: argument 1"}
!26353 = distinct !{!26353, !26347, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1W_INtNtB2v_7step_by6StepByINtNtB2v_4take4TakeINtNtB2v_4skip4SkipINtNtNtB2z_5slice4iter4IterB1k_EEEEIB3q_IB3O_IB47_INtNtB2v_3rev3RevB4p_EEEEEEINtNtNtB2x_7sources5empty5EmptyB1k_EEB1V_EBa_: argument 3"}
!26354 = distinct !{!26354, !26347, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1W_INtNtB2v_7step_by6StepByINtNtB2v_4take4TakeINtNtB2v_4skip4SkipINtNtNtB2z_5slice4iter4IterB1k_EEEEIB3q_IB3O_IB47_INtNtB2v_3rev3RevB4p_EEEEEEINtNtNtB2x_7sources5empty5EmptyB1k_EEB1V_EBa_: argument 1"}
!26355 = distinct !{!26355, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26356 = distinct !{!26356, !26355, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26357 = distinct !{!26357, i1 true, !"_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type5tuple"}
!26358 = distinct !{!26358, !26357, !"_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type5tuple: argument 0"}
!26359 = distinct !{!26359, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_"}
!26360 = distinct !{!26360, !26359, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_: argument 0"}
!26361 = !{i64 -735432448524132861}
!26362 = !{!26299}
!26363 = !{!26301}
!26364 = !{!26303, !26301, !26302}
!26365 = !{!26305}
!26366 = !{!26306}
!26367 = !{!26308, !26306, !26301}
!26368 = !{!26305, !26303, !26302}
!26369 = !{!26306, !26301}
!26370 = !{!26310}
!26371 = !{!26311, !26310, !26305}
!26372 = !{!26311, !26305}
!26373 = !{!26303}
!26374 = !{!26313}
!26375 = !{!26316, !26315, !26314, !26313}
!26376 = !{!26319, !26318, !26313}
!26377 = !{!26321, !26313}
!26378 = !{!26316, !26315, !26314}
!26379 = !{!26323}
!26380 = !{!26324}
!26381 = !{!26325, !26323}
!26382 = !{!26325, !26324}
!26383 = !{!26328, !26327}
!26384 = !{!26330}
!26385 = !{!26332}
!26386 = !{!26333}
!26387 = !{i64 1, i64 0}
!26388 = !{!26337, !26336, !26332, !26334, !26333}
!26389 = !{!26332, !26334, !26333}
!26390 = !{!26339}
!26391 = !{!26344, !26343, !26339, !26341, !26340}
!26392 = !{!26339, !26341, !26340}
!26393 = !{!26340}
!26394 = !{!26346}
!26395 = !{!26348}
!26396 = !{!26349}
!26397 = !{!26348, !26354, !26349, !26353, !26346, !26352, !26351, !26350}
!26398 = !{!26348, !26349, !26353, !26346, !26351, !26350}
!26399 = !{!26356}
!26400 = !{!26348, !26354, !26349, !26346, !26352, !26351}
!26401 = !{!26354, !26349, !26353, !26346, !26352, !26351, !26350}
!26402 = !{!26348, !26349}
!26403 = !{!26346, !26352, !26350}
!26404 = !{!26352, !26351, !26350}
!26405 = !{!26358}
!26406 = !{!26360}
!26407 = distinct !{!26407, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE22fixed_front_slice_plan"}
!26408 = distinct !{!26408, !26407, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE22fixed_front_slice_plan: argument 1"}
!26409 = distinct !{!26409, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26410 = distinct !{!26410, !26409, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26411 = distinct !{!26411, i1 true, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plan0EBO_"}
!26412 = distinct !{!26412, !26411, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plan0EBO_: argument 2"}
!26413 = distinct !{!26413, !26411, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plan0EBO_: argument 1"}
!26414 = distinct !{!26414, !26411, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plan0EBO_: argument 0"}
!26415 = distinct !{!26415, i1 true, !"_RNCNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB7_19VariableLengthTupleNtB9_4TypeNtB7_15VariableSegmentE18forward_slice_plan0Bb_"}
!26416 = distinct !{!26416, !26415, !"_RNCNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB7_19VariableLengthTupleNtB9_4TypeNtB7_15VariableSegmentE18forward_slice_plan0Bb_: argument 1"}
!26417 = distinct !{!26417, !26415, !"_RNCNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB7_19VariableLengthTupleNtB9_4TypeNtB7_15VariableSegmentE18forward_slice_plan0Bb_: argument 0"}
!26418 = distinct !{!26418, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE24forward_empty_slice_plan"}
!26419 = distinct !{!26419, !26418, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE24forward_empty_slice_plan: argument 1"}
!26420 = distinct !{!26420, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26421 = distinct !{!26421, !26420, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26422 = distinct !{!26422, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE24mixed_forward_slice_plan"}
!26423 = distinct !{!26423, !26422, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE24mixed_forward_slice_plan: argument 1"}
!26424 = distinct !{!26424, i1 true, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_"}
!26425 = distinct !{!26425, !26424, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_: argument 2"}
!26426 = distinct !{!26426, !26424, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_: argument 1"}
!26427 = distinct !{!26427, !26424, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_: argument 0"}
!26428 = distinct !{!26428, i1 true, !"_RNCNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB7_19VariableLengthTupleNtB9_4TypeNtB7_15VariableSegmentE18forward_slice_plans0_0Bb_"}
!26429 = distinct !{!26429, !26428, !"_RNCNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB7_19VariableLengthTupleNtB9_4TypeNtB7_15VariableSegmentE18forward_slice_plans0_0Bb_: argument 1"}
!26430 = distinct !{!26430, !26428, !"_RNCNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB7_19VariableLengthTupleNtB9_4TypeNtB7_15VariableSegmentE18forward_slice_plans0_0Bb_: argument 0"}
!26431 = distinct !{!26431, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index"}
!26432 = distinct !{!26432, !26431, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index: argument 0"}
!26433 = !{i64 -1549149097980557514}
!26434 = !{!26410, !26408}
!26435 = !{!26417, !26416, !26414, !26413, !26412}
!26436 = !{!26421, !26419}
!26437 = !{!26423}
!26438 = !{!26430, !26429, !26427, !26426, !26425}
!26439 = !{!26432, !26423}
!26440 = distinct !{!26440, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_"}
!26441 = distinct !{!26441, !26440, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_: argument 1"}
!26442 = distinct !{!26442, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26443 = distinct !{!26443, !26442, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26444 = distinct !{!26444, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_"}
!26445 = distinct !{!26445, !26444, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 1"}
!26446 = distinct !{!26446, !26444, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 0"}
!26447 = distinct !{!26447, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_7sources4once4OnceB1F_EEB1J_"}
!26448 = distinct !{!26448, !26447, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_7sources4once4OnceB1F_EEB1J_: argument 1"}
!26449 = distinct !{!26449, !26447, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_7sources4once4OnceB1F_EEB1J_: argument 2"}
!26450 = distinct !{!26450, !26447, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_7sources4once4OnceB1F_EEB1J_: argument 0"}
!26451 = !{i64 -1680182239829934680}
!26452 = !{!26441}
!26453 = !{!26443, !26441}
!26454 = !{!26446, !26445}
!26455 = !{!26448}
!26456 = !{!26449}
!26457 = !{!26450, !26448}
!26458 = !{!26450, !26449}
!26459 = distinct !{!26459, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_"}
!26460 = distinct !{!26460, !26459, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_: argument 1"}
!26461 = distinct !{!26461, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26462 = distinct !{!26462, !26461, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26463 = distinct !{!26463, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE35type_at_nonnegative_index_unbounded"}
!26464 = distinct !{!26464, !26463, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE35type_at_nonnegative_index_unbounded: argument 1"}
!26465 = distinct !{!26465, i1 true, !"_RNCNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB7_19VariableLengthTupleNtB9_4TypeNtB7_15VariableSegmentE25type_at_nonnegative_index0Bb_"}
!26466 = distinct !{!26466, !26465, !"_RNCNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB7_19VariableLengthTupleNtB9_4TypeNtB7_15VariableSegmentE25type_at_nonnegative_index0Bb_: argument 1"}
!26467 = distinct !{!26467, !26465, !"_RNCNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB7_19VariableLengthTupleNtB9_4TypeNtB7_15VariableSegmentE25type_at_nonnegative_index0Bb_: argument 0"}
!26468 = distinct !{!26468, !26463, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE35type_at_nonnegative_index_unbounded: argument 2"}
!26469 = distinct !{!26469, !26463, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE35type_at_nonnegative_index_unbounded: argument 0"}
!26470 = distinct !{!26470, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE24variable_and_suffix_type"}
!26471 = distinct !{!26471, !26470, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE24variable_and_suffix_type: argument 1"}
!26472 = distinct !{!26472, !26470, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE24variable_and_suffix_type: argument 2"}
!26473 = distinct !{!26473, !26470, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE24variable_and_suffix_type: argument 0"}
!26474 = distinct !{!26474, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_"}
!26475 = distinct !{!26475, !26474, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 1"}
!26476 = distinct !{!26476, !26474, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 0"}
!26477 = distinct !{!26477, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters4take4TakeINtNtB2o_6copied6CopiedINtNtNtBc_5slice4iter4IterBS_EEEEBW_"}
!26478 = distinct !{!26478, !26477, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters4take4TakeINtNtB2o_6copied6CopiedINtNtNtBc_5slice4iter4IterBS_EEEEBW_: argument 1"}
!26479 = distinct !{!26479, !26477, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters4take4TakeINtNtB2o_6copied6CopiedINtNtNtBc_5slice4iter4IterBS_EEEEBW_: argument 2"}
!26480 = distinct !{!26480, !26477, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters4take4TakeINtNtB2o_6copied6CopiedINtNtNtBc_5slice4iter4IterBS_EEEEBW_: argument 0"}
!26481 = !{i64 -8826396038281176232}
!26482 = !{!26460}
!26483 = !{!26462, !26460}
!26484 = !{!26464}
!26485 = !{!26469, !26468, !26467, !26466}
!26486 = !{!26471}
!26487 = !{!26473, !26471, !26472, !26469, !26464, !26468, !26467, !26466}
!26488 = !{!26476, !26475, !26471, !26464}
!26489 = !{!26467, !26466}
!26490 = !{!26473, !26472, !26469, !26468, !26467, !26466}
!26491 = !{!26478}
!26492 = !{!26479}
!26493 = !{!26480, !26478}
!26494 = !{!26480, !26479}
!26495 = !{!26466}
!26496 = !{!26468, !26466}
!26497 = distinct !{!26497, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_prefix_elementsB9_"}
!26498 = distinct !{!26498, !26497, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_prefix_elementsB9_: argument 0"}
!26499 = distinct !{!26499, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtBa_6traits8iterator8Iterator5chainINtNtB8_10take_while9TakeWhileB3_NCNvMse_NtB1p_5tupleINtB3u_19VariableLengthTupleB1n_NtB3u_15VariableSegmentE29prenormalized_prefix_elementss_0EEB1r_"}
!26500 = distinct !{!26500, !26499, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtBa_6traits8iterator8Iterator5chainINtNtB8_10take_while9TakeWhileB3_NCNvMse_NtB1p_5tupleINtB3u_19VariableLengthTupleB1n_NtB3u_15VariableSegmentE29prenormalized_prefix_elementss_0EEB1r_: argument 1"}
!26501 = distinct !{!26501, !26499, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtBa_6traits8iterator8Iterator5chainINtNtB8_10take_while9TakeWhileB3_NCNvMse_NtB1p_5tupleINtB3u_19VariableLengthTupleB1n_NtB3u_15VariableSegmentE29prenormalized_prefix_elementss_0EEB1r_: argument 0"}
!26502 = !{i64 -1758355627299928717}
!26503 = !{!26498}
!26504 = !{!26500}
!26505 = !{!26501}
!26506 = !{!26501, !26500}
!26507 = distinct !{!26507, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_suffix_elementsB9_"}
!26508 = distinct !{!26508, !26507, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_suffix_elementsB9_: argument 0"}
!26509 = !{i64 -2998782674311895387}
!26510 = !{!26508}
!26511 = distinct !{!26511, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE15prefix_elementsB9_"}
!26512 = distinct !{!26512, !26511, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE15prefix_elementsB9_: argument 0"}
!26513 = distinct !{!26513, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_"}
!26514 = distinct !{!26514, !26513, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 1"}
!26515 = distinct !{!26515, !26513, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 0"}
!26516 = distinct !{!26516, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_4skip4SkipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEINtNtNtBa_7sources4once4OnceB1Z_EENtNtNtBa_6traits8iterator8Iterator5chainINtNtB8_4take4TakeB1d_EEB23_"}
!26517 = distinct !{!26517, !26516, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_4skip4SkipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEINtNtNtBa_7sources4once4OnceB1Z_EENtNtNtBa_6traits8iterator8Iterator5chainINtNtB8_4take4TakeB1d_EEB23_: argument 1"}
!26518 = distinct !{!26518, !26516, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_4skip4SkipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEINtNtNtBa_7sources4once4OnceB1Z_EENtNtNtBa_6traits8iterator8Iterator5chainINtNtB8_4take4TakeB1d_EEB23_: argument 2"}
!26519 = distinct !{!26519, !26516, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_4skip4SkipINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEINtNtNtBa_7sources4once4OnceB1Z_EENtNtNtBa_6traits8iterator8Iterator5chainINtNtB8_4take4TakeB1d_EEB23_: argument 0"}
!26520 = distinct !{!26520, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_"}
!26521 = distinct !{!26521, !26520, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_: argument 1"}
!26522 = distinct !{!26522, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26523 = distinct !{!26523, !26522, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26524 = distinct !{!26524, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_"}
!26525 = distinct !{!26525, !26524, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 1"}
!26526 = distinct !{!26526, !26524, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 0"}
!26527 = distinct !{!26527, i1 true, !"_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_16FixedLengthTupleNtB8_4TypeE13from_elementsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1I_INtNtB1M_6copied6CopiedINtNtNtB1Q_5slice4iter4IterB1h_EEINtNtNtB1O_7sources8repeat_n7RepeatNB1h_EEB2E_EEBa_"}
!26528 = distinct !{!26528, !26527, !"_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_16FixedLengthTupleNtB8_4TypeE13from_elementsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1I_INtNtB1M_6copied6CopiedINtNtNtB1Q_5slice4iter4IterB1h_EEINtNtNtB1O_7sources8repeat_n7RepeatNB1h_EEB2E_EEBa_: argument 0"}
!26529 = distinct !{!26529, i1 true, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainIBM_INtNtBQ_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtNtB6_7sources8repeat_n7RepeatNB26_EEB1k_ENtB2_12IntoIterator9into_iterB2a_"}
!26530 = distinct !{!26530, !26529, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainIBM_INtNtBQ_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtNtB6_7sources8repeat_n7RepeatNB26_EEB1k_ENtB2_12IntoIterator9into_iterB2a_: argument 1"}
!26531 = distinct !{!26531, !26529, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainIBM_INtNtBQ_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtNtB6_7sources8repeat_n7RepeatNB26_EEB1k_ENtB2_12IntoIterator9into_iterB2a_: argument 0"}
!26532 = distinct !{!26532, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_7sources8repeat_n7RepeatNB1F_EEB1J_"}
!26533 = distinct !{!26533, !26532, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_7sources8repeat_n7RepeatNB1F_EEB1J_: argument 1"}
!26534 = distinct !{!26534, !26532, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_7sources8repeat_n7RepeatNB1F_EEB1J_: argument 2"}
!26535 = distinct !{!26535, !26532, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_7sources8repeat_n7RepeatNB1F_EEB1J_: argument 0"}
!26536 = distinct !{!26536, i1 true, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB22_4take4TakeINtNtB22_6copied6CopiedINtNtNtB26_5slice4iter4IterB1k_EEEINtNtNtB24_7sources8repeat_n7RepeatNB1k_EEIB1Y_B43_INtNtB22_4skip4SkipB38_EEEBa_"}
!26537 = distinct !{!26537, !26536, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB22_4take4TakeINtNtB22_6copied6CopiedINtNtNtB26_5slice4iter4IterB1k_EEEINtNtNtB24_7sources8repeat_n7RepeatNB1k_EEIB1Y_B43_INtNtB22_4skip4SkipB38_EEEBa_: argument 3"}
!26538 = distinct !{!26538, !26536, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB22_4take4TakeINtNtB22_6copied6CopiedINtNtNtB26_5slice4iter4IterB1k_EEEINtNtNtB24_7sources8repeat_n7RepeatNB1k_EEIB1Y_B43_INtNtB22_4skip4SkipB38_EEEBa_: argument 2"}
!26539 = distinct !{!26539, !26536, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB22_4take4TakeINtNtB22_6copied6CopiedINtNtNtB26_5slice4iter4IterB1k_EEEINtNtNtB24_7sources8repeat_n7RepeatNB1k_EEIB1Y_B43_INtNtB22_4skip4SkipB38_EEEBa_: argument 1"}
!26540 = distinct !{!26540, !26536, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB22_4take4TakeINtNtB22_6copied6CopiedINtNtNtB26_5slice4iter4IterB1k_EEEINtNtNtB24_7sources8repeat_n7RepeatNB1k_EEIB1Y_B43_INtNtB22_4skip4SkipB38_EEEBa_: argument 0"}
!26541 = distinct !{!26541, i1 true, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB20_4take4TakeINtNtB20_6copied6CopiedINtNtNtB24_5slice4iter4IterB1k_EEEINtNtNtB22_7sources8repeat_n7RepeatNB1k_EEIB1W_B41_INtNtB20_4skip4SkipB36_EEEBa_"}
!26542 = distinct !{!26542, !26541, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB20_4take4TakeINtNtB20_6copied6CopiedINtNtNtB24_5slice4iter4IterB1k_EEEINtNtNtB22_7sources8repeat_n7RepeatNB1k_EEIB1W_B41_INtNtB20_4skip4SkipB36_EEEBa_: argument 3"}
!26543 = distinct !{!26543, !26541, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB20_4take4TakeINtNtB20_6copied6CopiedINtNtNtB24_5slice4iter4IterB1k_EEEINtNtNtB22_7sources8repeat_n7RepeatNB1k_EEIB1W_B41_INtNtB20_4skip4SkipB36_EEEBa_: argument 2"}
!26544 = distinct !{!26544, !26541, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB20_4take4TakeINtNtB20_6copied6CopiedINtNtNtB24_5slice4iter4IterB1k_EEEINtNtNtB22_7sources8repeat_n7RepeatNB1k_EEIB1W_B41_INtNtB20_4skip4SkipB36_EEEBa_: argument 1"}
!26545 = distinct !{!26545, !26541, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB20_4take4TakeINtNtB20_6copied6CopiedINtNtNtB24_5slice4iter4IterB1k_EEEINtNtNtB22_7sources8repeat_n7RepeatNB1k_EEIB1W_B41_INtNtB20_4skip4SkipB36_EEEBa_: argument 0"}
!26546 = distinct !{!26546, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26547 = distinct !{!26547, !26546, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26548 = !{i64 8836501738257359182}
!26549 = !{!26512}
!26550 = !{!26515, !26514}
!26551 = !{!26517}
!26552 = !{!26518}
!26553 = !{!26519, !26517}
!26554 = !{!26519, !26518}
!26555 = !{!26523, !26521}
!26556 = !{!26521}
!26557 = !{!26526, !26525}
!26558 = !{!26528}
!26559 = !{!26531, !26530}
!26560 = !{!26533}
!26561 = !{!26534}
!26562 = !{!26535, !26533}
!26563 = !{!26535, !26534}
!26564 = !{!26545, !26544, !26543, !26542, !26540, !26539, !26538, !26537}
!26565 = !{!26545, !26543, !26542, !26540, !26538, !26537}
!26566 = !{!26547}
!26567 = !{!26545, !26544, !26543, !26540, !26539, !26538}
!26568 = distinct !{!26568, i1 true, !"_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_"}
!26569 = distinct !{!26569, !26568, !"_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_: argument 1"}
!26570 = distinct !{!26570, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26571 = distinct !{!26571, !26570, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26572 = !{i64 2736652483033705789}
!26573 = !{!26569}
!26574 = !{!26571, !26569}
!26575 = distinct !{!26575, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE14fixed_elementsB9_"}
!26576 = distinct !{!26576, !26575, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE14fixed_elementsB9_: argument 0"}
!26577 = distinct !{!26577, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26578 = distinct !{!26578, !26577, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26579 = !{i64 -8156034959183673871}
!26580 = !{!26578, !26576}
!26581 = distinct !{!26581, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26582 = distinct !{!26582, !26581, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26583 = !{i64 7024070110620012536}
!26584 = !{!26582}
!26585 = distinct !{!26585, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE13py_slice_type"}
!26586 = distinct !{!26586, !26585, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE13py_slice_type: argument 0"}
!26587 = distinct !{!26587, !26585, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE13py_slice_type: argument 1"}
!26588 = distinct !{!26588, !26585, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE13py_slice_type: argument 2"}
!26589 = distinct !{!26589, i1 true, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8reversed"}
!26590 = distinct !{!26590, !26589, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8reversed: argument 0"}
!26591 = distinct !{!26591, !26589, !"_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8reversed: argument 1"}
!26592 = distinct !{!26592, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_suffix_elementsB9_"}
!26593 = distinct !{!26593, !26592, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_suffix_elementsB9_: argument 0"}
!26594 = distinct !{!26594, i1 true, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevINtNtB20_6copied6CopiedINtNtNtB24_5slice4iter4IterB1k_EEEB1V_EBa_"}
!26595 = distinct !{!26595, !26594, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevINtNtB20_6copied6CopiedINtNtNtB24_5slice4iter4IterB1k_EEEB1V_EBa_: argument 0"}
!26596 = distinct !{!26596, !26594, !"_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevINtNtB20_6copied6CopiedINtNtNtB24_5slice4iter4IterB1k_EEEB1V_EBa_: argument 1"}
!26597 = distinct !{!26597, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_"}
!26598 = distinct !{!26598, !26597, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E6tripleBM_: argument 1"}
!26599 = distinct !{!26599, i1 true, !"_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeENtNtB9_9subscript7PySlice8py_slice"}
!26600 = distinct !{!26600, !26599, !"_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeENtNtB9_9subscript7PySlice8py_slice: argument 1"}
!26601 = !{i64 4539253896229532433}
!26602 = !{!26586}
!26603 = !{!26587}
!26604 = !{!26586, !26587, !26588}
!26605 = !{!26590}
!26606 = !{!26591}
!26607 = !{!26593, !26591, !26587}
!26608 = !{!26590, !26586, !26588}
!26609 = !{!26591, !26587}
!26610 = !{!26595}
!26611 = !{!26596}
!26612 = !{!26595, !26596, !26590, !26591, !26586, !26587, !26588}
!26613 = !{!26595, !26596, !26590, !26586, !26588}
!26614 = !{!26598}
!26615 = !{!26586, !26588}
!26616 = !{!26587, !26588}
!26617 = !{!26596, !26591, !26586, !26587, !26588}
!26618 = !{!26595, !26590}
!26619 = !{!26595, !26596, !26590}
!26620 = !{!26600}
!26621 = distinct !{!26621, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_prefix_elementsB9_"}
!26622 = distinct !{!26622, !26621, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE20iter_prefix_elementsB9_: argument 0"}
!26623 = distinct !{!26623, i1 true, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_"}
!26624 = distinct !{!26624, !26623, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 1"}
!26625 = distinct !{!26625, !26623, !"_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE8variableB9_: argument 0"}
!26626 = distinct !{!26626, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtNtBa_7sources4once4OnceB1H_EENtNtNtBa_6traits8iterator8Iterator5chainBV_EB1L_"}
!26627 = distinct !{!26627, !26626, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtNtBa_7sources4once4OnceB1H_EENtNtNtBa_6traits8iterator8Iterator5chainBV_EB1L_: argument 1"}
!26628 = distinct !{!26628, !26626, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtNtBa_7sources4once4OnceB1H_EENtNtNtBa_6traits8iterator8Iterator5chainBV_EB1L_: argument 0"}
!26629 = !{i64 -8919396003247517432}
!26630 = !{!26622}
!26631 = !{!26625, !26624}
!26632 = !{!26627}
!26633 = !{!26628, !26627}
!26634 = !{!26628}
!26635 = distinct !{!26635, i1 true, !"_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version"}
!26636 = distinct !{!26636, !26635, !"_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version: argument 0"}
end_hunk_1
