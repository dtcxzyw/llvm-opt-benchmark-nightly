Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.14?download=true
inline.NumInlined: 393
inline.NumDeleted: 225
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1e_5ValueEEEB1g_:bb.a
          to label %bb.c unwind label %bb.b, !dbg !7186

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !3674, !DIExpression(), !7182)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBS_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1l_5ValueEEEB1n_.exit unwind label %bb.d, !dbg !7187

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3674, !DIExpression(), !7184)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBS_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !7188
  ret void, !dbg !7186

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !7186
  unreachable, !dbg !7186

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1l_5ValueEEEB1n_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !7186
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRejNtNtBG_6string6StringEEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !717 {
bb.a:
    #dbg_value(ptr %0, !3696, !DIExpression(), !7193)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRejNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !7194

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !3701, !DIExpression(), !7190)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRejNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRejNtNtBG_6string6StringEEECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !7195

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3701, !DIExpression(), !7192)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRejNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !7196
  ret void, !dbg !7194

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !7194
  unreachable, !dbg !7194

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRejNtNtBG_6string6StringEEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !7194
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !688 {
bb.a:
    #dbg_value(ptr %0, !3551, !DIExpression(), !7201)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !7202

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !3556, !DIExpression(), !7198)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !7203

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3556, !DIExpression(), !7200)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !7204
  ret void, !dbg !7202

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !7202
  unreachable, !dbg !7202

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !7202
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecnEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7205 {
bb.a:
    #dbg_value(ptr %0, !7213, !DIExpression(), !7216)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecnENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !7224

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !7218, !DIExpression(), !7208)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecnENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecnEECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !7225

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7218, !DIExpression(), !7210)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecnENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !7226
  ret void, !dbg !7224

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !7224
  unreachable, !dbg !7224

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecnEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !7224
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync15UniqueArcUninitINtNtBG_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtBG_5alloc6GlobalEEB1G_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7227 {
bb.a:
    #dbg_value(ptr %0, !7253, !DIExpression(), !7255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7256), !dbg !7268
    #dbg_value(ptr %0, !7257, !DIExpression(), !7232)
    #dbg_value(ptr %0, !7260, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7235)
    #dbg_value(ptr %0, !7262, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7238)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7269 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !7269, !range !3235, !alias.scope !7256, !noundef !1191
  %i.c = trunc nuw i8 %i.b to i1, !dbg !7269
    #dbg_value(i8 %i.b, !7264, !DIExpression(), !7242)
  store i8 0, ptr %i.a, align 8, !dbg !7270, !alias.scope !7256
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !7271, !prof !3734

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7272
  %i.e = load ptr, ptr %i.d, align 8, !dbg !7272, !alias.scope !7256, !nonnull !1191, !noundef !1191
  %i.f = load i64, ptr %0, align 8, !dbg !7273, !range !7267, !alias.scope !7256, !noundef !1191
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7273
  %i.h = load i64, ptr %i.g, align 8, !dbg !7273, !alias.scope !7256, !noundef !1191
  %i.i = tail call { i64, i64 } @_RNvNtCsgCecv3eZDcN_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef %i.f, i64 noundef %i.h), !dbg !7274, !noalias !7256 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1, !dbg !7274 ; 2 uses
    #dbg_value(ptr poison, !3471, !DIExpression(), !7244)
    #dbg_value(ptr poison, !3477, !DIExpression(), !7246)
    #dbg_value(ptr %i.e, !3474, !DIExpression(), !7244)
    #dbg_value(ptr %i.e, !3480, !DIExpression(), !7246)
    #dbg_value(ptr %i.e, !3483, !DIExpression(), !7248)
    #dbg_value(ptr %i.e, !3489, !DIExpression(), !7250)
    #dbg_value(i64 poison, !3475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7244)
    #dbg_value(i64 poison, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7246)
    #dbg_value(i64 poison, !3487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7248)
    #dbg_value(i64 poison, !3490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7250)
    #dbg_value(i64 %i.j, !3475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7244)
    #dbg_value(i64 %i.j, !3481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7246)
    #dbg_value(i64 %i.j, !3487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7248)
    #dbg_value(i64 %i.j, !3490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7250)
  %i.k = icmp eq i64 %i.j, 0, !dbg !7275
  br i1 %i.k, label %_RNvXs1n_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtB8_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtB8_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1e_.exit, label %bb.c, !dbg !7275

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i64 } %i.i, 0, !dbg !7274
    #dbg_value(i64 %i.l, !3475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7244)
    #dbg_value(i64 %i.l, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7246)
    #dbg_value(i64 %i.l, !3487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7248)
    #dbg_value(i64 %i.l, !3490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7250)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #28, !dbg !7276, !noalias !7256
  br label %_RNvXs1n_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtB8_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtB8_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1e_.exit, !dbg !7277

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #26, !dbg !7278, !noalias !7256
  unreachable, !dbg !7278

_RNvXs1n_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtB8_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtB8_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1e_.exit: ; preds = %bb.b, %bb.c
  ret void, !dbg !7268
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTNtNtCs5yXxDE1DkoT_4tera4args6KwargsRL1_INtNtNtB1J_2vm5state5StateL0_EEEp6OutputINtNtB4_6result6ResultNtNtB1J_5value5ValueNtNtB1J_6errors5ErrorENtNtB4_6marker4SendNtB40_4SyncEL_RNtNtBG_5alloc6GlobalEEB1J_(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #3 !dbg !725 {
bb.a:
    #dbg_value(ptr poison, !3743, !DIExpression(), !7308)
    #dbg_value(ptr poison, !3747, !DIExpression(), !7280)
    #dbg_value(ptr poison, !3755, !DIExpression(), !7282)
    #dbg_value(i64 1, !3774, !DIExpression(), !7284)
    #dbg_value(i8 1, !3776, !DIExpression(), !7284)
    #dbg_value(i64 1, !3778, !DIExpression(), !7286)
    #dbg_value(i8 1, !3780, !DIExpression(), !7286)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
    #dbg_value(ptr %.0.val, !3769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7287)
    #dbg_value(ptr poison, !3769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7287)
    #dbg_value(ptr %.0.val, !3783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7289)
    #dbg_value(ptr poison, !3783, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7289)
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr), !dbg !7309
  br i1 %i.a, label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTNtNtCs5yXxDE1DkoT_4tera4args6KwargsRL1_INtNtNtB1w_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultNtNtB1w_5value5ValueNtNtB1w_6errors5ErrorENtNtBS_6marker4SendNtB3N_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1w_.exit, label %bb.b, !dbg !7310

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !7311
    #dbg_value(ptr %i.b, !3749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7290)
    #dbg_value(ptr %i.b, !3750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7291)
    #dbg_value(ptr %i.b, !3775, !DIExpression(), !7284)
    #dbg_value(ptr %.0.val, !3749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7290)
    #dbg_value(ptr %.0.val, !3750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7291)
    #dbg_value(ptr %i.b, !3779, !DIExpression(), !7286)
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !7312
  %i.d = icmp eq i64 %i.c, 1, !dbg !7313
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTNtNtCs5yXxDE1DkoT_4tera4args6KwargsRL1_INtNtNtB1w_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultNtNtB1w_5value5ValueNtNtB1w_6errors5ErrorENtNtBS_6marker4SendNtB3N_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1w_.exit, !dbg !7313

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !3541, !DIExpression(), !7293)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  fence acquire, !dbg !7314
    #dbg_value(ptr %.0.val, !3788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7295)
    #dbg_value(ptr %.0.val, !3795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7297)
    #dbg_value(ptr %.8.val, !3788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7295)
    #dbg_value(ptr %.8.val, !3795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7297)
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !7315
  %i.f = load i64, ptr %i.e, align 8, !dbg !7315, !range !3469, !invariant.load !1191
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !7315
  %i.h = load i64, ptr %i.g, align 8, !dbg !7315, !range !3470, !invariant.load !1191
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8), !dbg !7315 ; 3 uses
  %i.j = add nuw i64 %i.f, 15, !dbg !7315
  %i.k = add nuw i64 %i.j, %i.i, !dbg !7315
  %i.l = sub nsw i64 0, %i.i, !dbg !7315
  %i.m = and i64 %i.k, %i.l, !dbg !7315           ; 2 uses
    #dbg_value(ptr poison, !3801, !DIExpression(), !7299)
    #dbg_value(ptr %.0.val, !3805, !DIExpression(), !7299)
    #dbg_value(i64 %i.i, !3806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7299)
    #dbg_value(i64 %i.m, !3806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7299)
    #dbg_value(ptr poison, !3471, !DIExpression(), !7301)
    #dbg_value(ptr poison, !3477, !DIExpression(), !7303)
    #dbg_value(ptr %.0.val, !3474, !DIExpression(), !7301)
    #dbg_value(ptr %.0.val, !3480, !DIExpression(), !7303)
    #dbg_value(ptr %.0.val, !3483, !DIExpression(), !7305)
    #dbg_value(ptr %.0.val, !3489, !DIExpression(), !7307)
    #dbg_value(i64 %i.i, !3475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7301)
    #dbg_value(i64 %i.i, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7303)
    #dbg_value(i64 %i.i, !3487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7305)
    #dbg_value(i64 %i.i, !3490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7307)
    #dbg_value(i64 %i.m, !3475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7301)
    #dbg_value(i64 %i.m, !3481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7303)
    #dbg_value(i64 %i.m, !3487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7305)
    #dbg_value(i64 %i.m, !3490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7307)
  %i.n = icmp eq i64 %i.m, 0, !dbg !7316
  br i1 %i.n, label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTNtNtCs5yXxDE1DkoT_4tera4args6KwargsRL1_INtNtNtB1w_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultNtNtB1w_5value5ValueNtNtB1w_6errors5ErrorENtNtBS_6marker4SendNtB3N_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1w_.exit, label %bb.d, !dbg !7316

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -7) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #28, !dbg !7317
  br label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTNtNtCs5yXxDE1DkoT_4tera4args6KwargsRL1_INtNtNtB1w_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultNtNtB1w_5value5ValueNtNtB1w_6errors5ErrorENtNtBS_6marker4SendNtB3N_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1w_.exit, !dbg !7318

_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTNtNtCs5yXxDE1DkoT_4tera4args6KwargsRL1_INtNtNtB1w_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultNtNtB1w_5value5ValueNtNtB1w_6errors5ErrorENtNtBS_6marker4SendNtB3N_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1w_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void, !dbg !7319
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakDG1_INtNtNtB4_3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1N_4args6KwargsRL1_INtNtNtB1N_2vm5state5StateL0_EEEp6OutputINtNtB4_6result6ResultB1J_NtNtB1N_6errors5ErrorENtNtB4_6marker4SendNtB48_4SyncEL_RNtNtBG_5alloc6GlobalEEB1N_(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #3 !dbg !745 {
bb.a:
    #dbg_value(ptr poison, !3815, !DIExpression(), !7349)
    #dbg_value(ptr poison, !3819, !DIExpression(), !7321)
    #dbg_value(ptr poison, !3823, !DIExpression(), !7323)
    #dbg_value(i64 1, !3833, !DIExpression(), !7325)
    #dbg_value(i8 1, !3835, !DIExpression(), !7325)
    #dbg_value(i64 1, !3837, !DIExpression(), !7327)
    #dbg_value(i8 1, !3839, !DIExpression(), !7327)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
    #dbg_value(ptr %.0.val, !3828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7328)
    #dbg_value(ptr poison, !3828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7328)
    #dbg_value(ptr %.0.val, !3841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7330)
    #dbg_value(ptr poison, !3841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7330)
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr), !dbg !7350
  br i1 %i.a, label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG1_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1A_4args6KwargsRL1_INtNtNtB1A_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultB1w_NtNtB1A_6errors5ErrorENtNtBS_6marker4SendNtB3V_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1A_.exit, label %bb.b, !dbg !7351

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !7352
    #dbg_value(ptr %i.b, !3820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7331)
    #dbg_value(ptr %i.b, !3821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7332)
    #dbg_value(ptr %i.b, !3834, !DIExpression(), !7325)
    #dbg_value(ptr %.0.val, !3820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7331)
    #dbg_value(ptr %.0.val, !3821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7332)
    #dbg_value(ptr %i.b, !3838, !DIExpression(), !7327)
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !7353
  %i.d = icmp eq i64 %i.c, 1, !dbg !7354
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG1_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1A_4args6KwargsRL1_INtNtNtB1A_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultB1w_NtNtB1A_6errors5ErrorENtNtBS_6marker4SendNtB3V_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1A_.exit, !dbg !7354

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !3541, !DIExpression(), !7334)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  fence acquire, !dbg !7355
    #dbg_value(ptr %.0.val, !3845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7336)
    #dbg_value(ptr %.0.val, !3852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7338)
    #dbg_value(ptr %.8.val, !3845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7336)
    #dbg_value(ptr %.8.val, !3852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7338)
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !7356
  %i.f = load i64, ptr %i.e, align 8, !dbg !7356, !range !3469, !invariant.load !1191
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !7356
  %i.h = load i64, ptr %i.g, align 8, !dbg !7356, !range !3470, !invariant.load !1191
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8), !dbg !7356 ; 3 uses
  %i.j = add nuw i64 %i.f, 15, !dbg !7356
  %i.k = add nuw i64 %i.j, %i.i, !dbg !7356
  %i.l = sub nsw i64 0, %i.i, !dbg !7356
  %i.m = and i64 %i.k, %i.l, !dbg !7356           ; 2 uses
    #dbg_value(ptr poison, !3801, !DIExpression(), !7340)
    #dbg_value(ptr %.0.val, !3805, !DIExpression(), !7340)
    #dbg_value(i64 %i.i, !3806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7340)
    #dbg_value(i64 %i.m, !3806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7340)
    #dbg_value(ptr poison, !3471, !DIExpression(), !7342)
    #dbg_value(ptr poison, !3477, !DIExpression(), !7344)
    #dbg_value(ptr %.0.val, !3474, !DIExpression(), !7342)
    #dbg_value(ptr %.0.val, !3480, !DIExpression(), !7344)
    #dbg_value(ptr %.0.val, !3483, !DIExpression(), !7346)
    #dbg_value(ptr %.0.val, !3489, !DIExpression(), !7348)
    #dbg_value(i64 %i.i, !3475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7342)
    #dbg_value(i64 %i.i, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7344)
    #dbg_value(i64 %i.i, !3487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7346)
    #dbg_value(i64 %i.i, !3490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7348)
    #dbg_value(i64 %i.m, !3475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7342)
    #dbg_value(i64 %i.m, !3481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7344)
    #dbg_value(i64 %i.m, !3487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7346)
    #dbg_value(i64 %i.m, !3490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7348)
  %i.n = icmp eq i64 %i.m, 0, !dbg !7357
  br i1 %i.n, label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG1_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1A_4args6KwargsRL1_INtNtNtB1A_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultB1w_NtNtB1A_6errors5ErrorENtNtBS_6marker4SendNtB3V_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1A_.exit, label %bb.d, !dbg !7357

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -7) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #28, !dbg !7358
  br label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG1_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1A_4args6KwargsRL1_INtNtNtB1A_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultB1w_NtNtB1A_6errors5ErrorENtNtBS_6marker4SendNtB3V_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1A_.exit, !dbg !7359

_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG1_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1A_4args6KwargsRL1_INtNtNtB1A_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultB1w_NtNtB1A_6errors5ErrorENtNtBS_6marker4SendNtB3V_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1A_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void, !dbg !7360
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakDG1_INtNtNtB4_3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1N_4args6KwargsRL1_INtNtNtB1N_2vm5state5StateL0_EEEp6OutputINtNtB4_6result6ResultbNtNtB1N_6errors5ErrorENtNtB4_6marker4SendNtB45_4SyncEL_RNtNtBG_5alloc6GlobalEEB1N_(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #3 !dbg !763 {
bb.a:
    #dbg_value(ptr poison, !3877, !DIExpression(), !7390)
    #dbg_value(ptr poison, !3881, !DIExpression(), !7362)
    #dbg_value(ptr poison, !3885, !DIExpression(), !7364)
    #dbg_value(i64 1, !3895, !DIExpression(), !7366)
    #dbg_value(i8 1, !3897, !DIExpression(), !7366)
    #dbg_value(i64 1, !3899, !DIExpression(), !7368)
    #dbg_value(i8 1, !3901, !DIExpression(), !7368)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
    #dbg_value(ptr %.0.val, !3890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7369)
    #dbg_value(ptr poison, !3890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7369)
    #dbg_value(ptr %.0.val, !3903, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7371)
    #dbg_value(ptr poison, !3903, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7371)
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr), !dbg !7391
  br i1 %i.a, label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG1_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1A_4args6KwargsRL1_INtNtNtB1A_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultbNtNtB1A_6errors5ErrorENtNtBS_6marker4SendNtB3S_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1A_.exit, label %bb.b, !dbg !7392

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !7393
    #dbg_value(ptr %i.b, !3882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7372)
    #dbg_value(ptr %i.b, !3883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7373)
    #dbg_value(ptr %i.b, !3896, !DIExpression(), !7366)
    #dbg_value(ptr %.0.val, !3882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7372)
    #dbg_value(ptr %.0.val, !3883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7373)
    #dbg_value(ptr %i.b, !3900, !DIExpression(), !7368)
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !7394
  %i.d = icmp eq i64 %i.c, 1, !dbg !7395
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG1_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1A_4args6KwargsRL1_INtNtNtB1A_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultbNtNtB1A_6errors5ErrorENtNtBS_6marker4SendNtB3S_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1A_.exit, !dbg !7395

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !3541, !DIExpression(), !7375)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  fence acquire, !dbg !7396
    #dbg_value(ptr %.0.val, !3907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7377)
    #dbg_value(ptr %.0.val, !3914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7379)
    #dbg_value(ptr %.8.val, !3907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7377)
    #dbg_value(ptr %.8.val, !3914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7379)
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !7397
  %i.f = load i64, ptr %i.e, align 8, !dbg !7397, !range !3469, !invariant.load !1191
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !7397
  %i.h = load i64, ptr %i.g, align 8, !dbg !7397, !range !3470, !invariant.load !1191
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8), !dbg !7397 ; 3 uses
  %i.j = add nuw i64 %i.f, 15, !dbg !7397
  %i.k = add nuw i64 %i.j, %i.i, !dbg !7397
  %i.l = sub nsw i64 0, %i.i, !dbg !7397
  %i.m = and i64 %i.k, %i.l, !dbg !7397           ; 2 uses
    #dbg_value(ptr poison, !3801, !DIExpression(), !7381)
    #dbg_value(ptr %.0.val, !3805, !DIExpression(), !7381)
    #dbg_value(i64 %i.i, !3806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7381)
    #dbg_value(i64 %i.m, !3806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7381)
    #dbg_value(ptr poison, !3471, !DIExpression(), !7383)
    #dbg_value(ptr poison, !3477, !DIExpression(), !7385)
    #dbg_value(ptr %.0.val, !3474, !DIExpression(), !7383)
    #dbg_value(ptr %.0.val, !3480, !DIExpression(), !7385)
    #dbg_value(ptr %.0.val, !3483, !DIExpression(), !7387)
    #dbg_value(ptr %.0.val, !3489, !DIExpression(), !7389)
    #dbg_value(i64 %i.i, !3475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7383)
    #dbg_value(i64 %i.i, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7385)
    #dbg_value(i64 %i.i, !3487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7387)
    #dbg_value(i64 %i.i, !3490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7389)
    #dbg_value(i64 %i.m, !3475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7383)
    #dbg_value(i64 %i.m, !3481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7385)
    #dbg_value(i64 %i.m, !3487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7387)
    #dbg_value(i64 %i.m, !3490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7389)
  %i.n = icmp eq i64 %i.m, 0, !dbg !7398
  br i1 %i.n, label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG1_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1A_4args6KwargsRL1_INtNtNtB1A_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultbNtNtB1A_6errors5ErrorENtNtBS_6marker4SendNtB3S_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1A_.exit, label %bb.d, !dbg !7398

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -7) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #28, !dbg !7399
  br label %_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG1_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1A_4args6KwargsRL1_INtNtNtB1A_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultbNtNtB1A_6errors5ErrorENtNtBS_6marker4SendNtB3S_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1A_.exit, !dbg !7400

_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakDG1_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL2_NtNtCs5yXxDE1DkoT_4tera5value5ValueNtNtB1A_4args6KwargsRL1_INtNtNtB1A_2vm5state5StateL0_EEEp6OutputINtNtBS_6result6ResultbNtNtB1A_6errors5ErrorENtNtBS_6marker4SendNtB3S_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1A_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void, !dbg !7401
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !776 {
bb.a:
    #dbg_value(ptr %0, !3921, !DIExpression(), !7410)
  %i.a = load i64, ptr %0, align 8, !dbg !7411, !range !3923, !noundef !1191
  %i.b = icmp eq i64 %i.a, -1, !dbg !7411
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !7411

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit, %bb.a
  ret void, !dbg !7411

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3546, !DIExpression(), !7403)
    #dbg_value(ptr %0, !3551, !DIExpression(), !7405)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !7412

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !3556, !DIExpression(), !7407)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.e, !dbg !7413

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !7412
  unreachable, !dbg !7412

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !7412

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !3556, !DIExpression(), !7409)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !7414
  br label %bb.b, !dbg !7411
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera10delimiters10DelimitersEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7415 {
bb.a:
    #dbg_value(ptr %0, !7491, !DIExpression(), !7495)
    #dbg_value(ptr %0, !3921, !DIExpression(), !7417)
  %i.a = load i64, ptr %0, align 8, !dbg !7502, !range !3923, !alias.scope !7496, !noundef !1191
  %i.b = icmp eq i64 %i.a, -1, !dbg !7502
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !7502

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !3546, !DIExpression(), !7421)
    #dbg_value(ptr %0, !3551, !DIExpression(), !7423)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.c, !dbg !7503

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !3556, !DIExpression(), !7425)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d, !dbg !7504

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !7503
  unreachable, !dbg !7503

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.b
    #dbg_value(ptr %0, !3556, !DIExpression(), !7427)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit unwind label %bb.e, !dbg !7505

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !7506

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7506
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #32
          to label %.body11 unwind label %bb.y, !dbg !7506

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7506 ; 4 uses
    #dbg_value(ptr %i.g, !3921, !DIExpression(), !7429)
  %i.h = load i64, ptr %i.g, align 8, !dbg !7507, !range !3923, !alias.scope !7497, !noundef !1191
  %i.i = icmp eq i64 %i.h, -1, !dbg !7507
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit14, label %bb.f, !dbg !7507

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit
    #dbg_value(ptr %i.g, !3546, !DIExpression(), !7433)
    #dbg_value(ptr %i.g, !3551, !DIExpression(), !7435)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i10 unwind label %bb.g, !dbg !7508

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !3556, !DIExpression(), !7437)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body11 unwind label %bb.h, !dbg !7509

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !7508
  unreachable, !dbg !7508

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i10: ; preds = %bb.f
    #dbg_value(ptr %i.g, !3556, !DIExpression(), !7439)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit14 unwind label %bb.i, !dbg !7510

.body11:                                          ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.i ], [ %i.j, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7506
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #32
          to label %.body17 unwind label %bb.y, !dbg !7506

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i10
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body11

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit14: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7506 ; 4 uses
    #dbg_value(ptr %i.n, !3921, !DIExpression(), !7441)
  %i.o = load i64, ptr %i.n, align 8, !dbg !7511, !range !3923, !alias.scope !7498, !noundef !1191
  %i.p = icmp eq i64 %i.o, -1, !dbg !7511
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit20, label %bb.j, !dbg !7511

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit14
    #dbg_value(ptr %i.n, !3546, !DIExpression(), !7445)
    #dbg_value(ptr %i.n, !3551, !DIExpression(), !7447)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i16 unwind label %bb.k, !dbg !7512

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.n, !3556, !DIExpression(), !7449)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body17 unwind label %bb.l, !dbg !7513

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !7512
  unreachable, !dbg !7512

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i16: ; preds = %bb.j
    #dbg_value(ptr %i.n, !3556, !DIExpression(), !7451)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit20 unwind label %bb.m, !dbg !7514

.body17:                                          ; preds = %bb.m, %bb.k, %.body11
  %.pn3 = phi { ptr, i32 } [ %.pn, %.body11 ], [ %i.t, %bb.m ], [ %i.q, %bb.k ]
end_hunk_0
begin_hunk_1_@_RNCINvMs_NtCs5yXxDE1DkoT_4tera9functionsNtB7_14StoredFunction3newNvB7_5throwINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtB9_6errors5ErrorEE0B9_:bb.a
bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !3541, !DIExpression(), !9454)
  fence acquire, !dbg !9548
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i.i unwind label %bb.h, !dbg !9549, !noalias !9532

bb.d:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.b, align 8, !dbg !9550, !range !4219, !noalias !9532, !noundef !1191 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.h, -1, !dbg !9550
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !dbg !9551

bb.e:                                             ; preds = %bb.d
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !9552
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !9553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.422.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.417.0..sroa_idx.i.i.i, i64 7, i1 false), !dbg !9552
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9552
  %.sroa.518.0.copyload.i.i.i = load ptr, ptr %.sroa.518.0..sroa_idx.i.i.i, align 8, !dbg !9552, !noalias !9532
  %.sroa.619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9552
  %.sroa.619.0.copyload.i.i.i = load i64, ptr %.sroa.619.0..sroa_idx.i.i.i, align 8, !dbg !9552, !noalias !9532
  %.sroa.720.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9552
  %.sroa.725.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !9553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.725.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.720.0..sroa_idx.i.i.i, i64 48, i1 false), !dbg !9552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9554, !noalias !9532
    #dbg_value(i8 %i.h, !9511, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9455)
    #dbg_value(i8 %i.h, !9504, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9456)
    #dbg_value(ptr %.sroa.518.0.copyload.i.i.i, !9511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9455)
    #dbg_value(ptr %.sroa.518.0.copyload.i.i.i, !9504, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9456)
    #dbg_value(i64 %.sroa.619.0.copyload.i.i.i, !9511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9455)
    #dbg_value(i64 %.sroa.619.0.copyload.i.i.i, !9504, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9456)
    #dbg_value(i8 %i.h, !9505, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9457)
    #dbg_value(ptr %.sroa.518.0.copyload.i.i.i, !9505, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9457)
    #dbg_value(i64 %.sroa.619.0.copyload.i.i.i, !9505, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9457)
  store i8 %i.h, ptr %i.d, align 8, !dbg !9553, !alias.scope !9532
  %.sroa.523.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9553
  store ptr %.sroa.518.0.copyload.i.i.i, ptr %.sroa.523.0..sroa_idx.i.i.i, align 8, !dbg !9553, !alias.scope !9532
  %.sroa.624.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !9553
  store i64 %.sroa.619.0.copyload.i.i.i, ptr %.sroa.624.0..sroa_idx.i.i.i, align 8, !dbg !9553, !alias.scope !9532
    #dbg_value(ptr %i.c, !4120, !DIExpression(), !9459)
    #dbg_value(ptr %i.c, !4127, !DIExpression(), !9461)
    #dbg_value(ptr %i.c, !4133, !DIExpression(), !9463)
    #dbg_value(i64 1, !4135, !DIExpression(), !9465)
    #dbg_value(i8 1, !4137, !DIExpression(), !9465)
    #dbg_value(i64 1, !4139, !DIExpression(), !9467)
    #dbg_value(i8 1, !4141, !DIExpression(), !9467)
    #dbg_value(ptr %2, !4136, !DIExpression(), !9468)
    #dbg_value(ptr %2, !4140, !DIExpression(), !9467)
  %i.i = atomicrmw sub ptr %2, i64 1 release, align 8, !dbg !9555, !noalias !9538
  %i.j = icmp eq i64 %i.i, 1, !dbg !9556
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit33.sink.split.i.i.i, label %_RNvXNtCs5yXxDE1DkoT_4tera9functionsNvB2_5throwINtB2_8FunctionINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtB4_6errors5ErrorEE4callB4_.exit, !dbg !9556

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9557
  %i.l = load ptr, ptr %i.k, align 8, !dbg !9557, !noalias !9532, !nonnull !1191, !noundef !1191
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9557
  %i.n = load i64, ptr %i.m, align 8, !dbg !9557, !noalias !9532, !noundef !1191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9554, !noalias !9532
    #dbg_value(ptr %i.l, !9510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9475)
    #dbg_value(i64 %i.n, !9510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9558, !noalias !9532
  invoke void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageReEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.g unwind label %bb.b, !dbg !9558, !noalias !9532

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !9559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9560, !noalias !9532
    #dbg_value(ptr %i.c, !4120, !DIExpression(), !9477)
    #dbg_value(ptr %i.c, !4127, !DIExpression(), !9479)
    #dbg_value(ptr %i.c, !4133, !DIExpression(), !9481)
    #dbg_value(i64 1, !4135, !DIExpression(), !9483)
    #dbg_value(i8 1, !4137, !DIExpression(), !9483)
    #dbg_value(i64 1, !4139, !DIExpression(), !9485)
    #dbg_value(i8 1, !4141, !DIExpression(), !9485)
    #dbg_value(ptr %2, !4136, !DIExpression(), !9486)
    #dbg_value(ptr %2, !4140, !DIExpression(), !9485)
  %i.o = atomicrmw sub ptr %2, i64 1 release, align 8, !dbg !9561, !noalias !9539
  %i.p = icmp eq i64 %i.o, 1, !dbg !9562
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit33.sink.split.i.i.i, label %_RNvXNtCs5yXxDE1DkoT_4tera9functionsNvB2_5throwINtB2_8FunctionINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtB4_6errors5ErrorEE4callB4_.exit, !dbg !9562

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit33.sink.split.i.i.i: ; preds = %bb.g, %bb.e
  fence acquire, !dbg !9563
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #30, !dbg !9564, !noalias !9532
  br label %_RNvXNtCs5yXxDE1DkoT_4tera9functionsNvB2_5throwINtB2_8FunctionINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtB4_6errors5ErrorEE4callB4_.exit, !dbg !9565

bb.h:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !9566, !noalias !9532
  unreachable, !dbg !9566

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e, !dbg !9566

_RNvXNtCs5yXxDE1DkoT_4tera9functionsNvB2_5throwINtB2_8FunctionINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtB4_6errors5ErrorEE4callB4_.exit: ; preds = %bb.e, %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit33.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9565, !noalias !9531
  call void @_RNvXsD_NtCs5yXxDE1DkoT_4tera5valueINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtB7_6errors5ErrorENtB5_14FunctionResult11into_resultB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.d), !dbg !9567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9568
  ret void, !dbg !9569
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !9574 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
    #dbg_value(i16 %2, !9673, !DIExpression(), !9682)
    #dbg_value(i16 %2, !9677, !DIExpression(), !9683)
    #dbg_value(i64 %1, !9672, !DIExpression(), !9682)
    #dbg_value(i1 %3, !9674, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9682)
    #dbg_value(i64 0, !9684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9695)
    #dbg_value(i64 0, !9704, !DIExpression(), !9711)
  br i1 %3, label %.loopexit, label %.preheader, !dbg !9840

.preheader:                                       ; preds = %bb.a
    #dbg_value(i16 %2, !9677, !DIExpression(), !9683)
    #dbg_value(i16 %2, !9673, !DIExpression(), !9682)
  %i.b = load ptr, ptr %0, align 8, !nonnull !1191, !noundef !1191
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !1191 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !1191, !noundef !1191 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.024.us = phi i16 [ %i.w, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
    #dbg_value(i16 %.sroa.0.024.us, !9677, !DIExpression(), !9683)
    #dbg_value(i16 %.sroa.0.024.us, !9712, !DIExpression(), !9718)
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.024.us, i1 true), !dbg !9841 ; 2 uses
    #dbg_value(i16 %i.k, !9678, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9720)
  %i.l = zext nneg i16 %i.k to i64, !dbg !9842
    #dbg_value(!DIArgList(i64 %1, i64 %i.l), !9679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !9722)
    #dbg_value(!DIArgList(i64 %1, i64 %i.l), !9723, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !9727)
    #dbg_value(!DIArgList(i64 %1, i64 %i.l), !9728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !9734)
    #dbg_value(!DIArgList(i64 %1, i64 %i.l), !9684, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9737)
    #dbg_value(!DIArgList(i64 %1, i64 %i.l), !9706, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !9739)
    #dbg_value(ptr %i.b, !9724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9727)
    #dbg_value(ptr %i.b, !9731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9734)
    #dbg_value(ptr %i.b, !9687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9737)
    #dbg_value(ptr %i.b, !9705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9739)
    #dbg_value(i64 poison, !9724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9727)
    #dbg_value(i64 poison, !9731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9734)
    #dbg_value(i64 poison, !9687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9737)
    #dbg_value(i64 poison, !9705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9739)
    #dbg_value(i64 poison, !9684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9737)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !9688, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9740)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !9707, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9739)
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l, !dbg !9843
  %i.n = getelementptr i8, ptr %i.m, i64 1, !dbg !9843 ; 2 uses
    #dbg_value(ptr %i.n, !9687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9695)
    #dbg_value(ptr %i.n, !9705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9711)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !9687, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9695)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !9705, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9711)
    #dbg_value(i64 %i.f, !9684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9695)
    #dbg_value(i64 %i.f, !9707, !DIExpression(), !9711)
    #dbg_value(ptr %i.n, !9680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9741)
    #dbg_value(i64 %i.f, !9680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9742), !dbg !9844
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9743), !dbg !9844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9845
    #dbg_value(ptr poison, !9772, !DIExpression(), !9610)
    #dbg_value(ptr poison, !9791, !DIExpression(), !9611)
    #dbg_value(ptr %i.n, !9744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9612)
    #dbg_value(i64 %i.f, !9744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9612)
    #dbg_value(ptr %i.g, !9745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9612)
    #dbg_value(i64 %i.f, !9745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9612)
    #dbg_value(i64 4, !9794, !DIExpression(), !9615)
    #dbg_value(i64 4, !9794, !DIExpression(), !9617)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f, !dbg !9846
    #dbg_value(ptr %i.n, !9798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9620)
    #dbg_value(ptr %i.o, !9798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9620)
    #dbg_value(ptr %i.g, !9801, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9620)
    #dbg_value(i64 %i.f, !9801, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9620)
    #dbg_value(ptr %i.n, !9806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9623)
    #dbg_value(ptr %i.o, !9806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9623)
    #dbg_value(ptr %i.g, !9810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9623)
    #dbg_value(ptr %i.i, !9810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9623)
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i), !dbg !9847
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !dbg !9848, !noalias !9812 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload.i.us, !9749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9624)
    #dbg_value(i64 poison, !9749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9624)
  %.sroa.546.0.copyload.i.us = load ptr, ptr %.sroa.546.0..sroa_idx.i, align 8, !dbg !9848, !noalias !9812 ; 2 uses
    #dbg_value(ptr %.sroa.546.0.copyload.i.us, !9749, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9624)
    #dbg_value(i64 poison, !9749, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9624)
  %.sroa.647.0.copyload.i.us = load i64, ptr %.sroa.647.0..sroa_idx.i, align 8, !dbg !9848, !noalias !9812 ; 3 uses
    #dbg_value(i64 %.sroa.647.0.copyload.i.us, !9749, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9624)
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !9848, !noalias !9812 ; 2 uses
    #dbg_value(i64 %.sroa.8.0.copyload.i.us, !9749, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9624)
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.647.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us), !dbg !9849
    #dbg_value(i64 %.sroa.647.0.copyload.i.us, !9749, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9624)
    #dbg_value(ptr undef, !9791, !DIExpression(), !9611)
    #dbg_value(ptr undef, !9772, !DIExpression(), !9610)
  %exitcond.not.i.us33.not = icmp ult i64 %.sroa.647.0.copyload.i.us, %.sroa.8.0.copyload.i.us, !dbg !9850
  br i1 %exitcond.not.i.us33.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us.preheader, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread21, !dbg !9850

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us), "nonnull"(ptr %.sroa.546.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us, !dbg !9851

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us
  %i.p = add i64 %.sroa.647.0.i.us34, 1, !dbg !9852 ; 2 uses
    #dbg_value(i64 %i.p, !9749, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9624)
    #dbg_value(i64 %i.p, !9749, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9624)
    #dbg_value(ptr undef, !9791, !DIExpression(), !9611)
    #dbg_value(ptr undef, !9772, !DIExpression(), !9610)
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us, !dbg !9850
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread21, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us, !dbg !9850

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us.preheader, %bb.b
  %.sroa.647.0.i.us34 = phi i64 [ %i.p, %bb.b ], [ %.sroa.647.0.copyload.i.us, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.647.0.i.us34, !9749, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9624)
    #dbg_value(i64 %.sroa.647.0.i.us34, !9788, !DIExpression(), !9625)
    #dbg_value(i64 %.sroa.647.0.i.us34, !9749, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64), !9624)
    #dbg_value(ptr poison, !9814, !DIExpression(), !9628)
    #dbg_value(i64 %.sroa.647.0.i.us34, !9817, !DIExpression(), !9628)
    #dbg_value(ptr poison, !9814, !DIExpression(), !9630)
    #dbg_value(i64 %.sroa.647.0.i.us34, !9817, !DIExpression(), !9630)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.647.0.i.us34, !dbg !9853
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.546.0.copyload.i.us, i64 %.sroa.647.0.i.us34, !dbg !9854
    #dbg_value(i64 %.sroa.647.0.i.us34, !9749, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64), !9624)
  %i.s = load i8, ptr %i.q, align 1, !dbg !9855, !noundef !1191
    #dbg_value(i8 %i.s, !9750, !DIExpression(), !9634)
  %i.t = load i8, ptr %i.r, align 1, !dbg !9856, !noundef !1191
    #dbg_value(i8 %i.t, !9751, !DIExpression(), !9634)
  %.not45.i.us = icmp eq i8 %i.s, %i.t, !dbg !9851
  br i1 %.not45.i.us, label %bb.b, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, !dbg !9851

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9857
    #dbg_value(i16 %i.k, !9678, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9720)
  %i.u = shl nuw i16 1, %i.k, !dbg !9858
  %i.v = xor i16 %i.u, -1, !dbg !9859
  %i.w = and i16 %.sroa.0.024.us, %i.v, !dbg !9860 ; 2 uses
    #dbg_value(i16 %i.w, !9677, !DIExpression(), !9683)
    #dbg_value(i16 %i.w, !9673, !DIExpression(), !9682)
  %i.x = icmp eq i16 %i.w, 0, !dbg !9861
  br i1 %i.x, label %.loopexit, label %.preheader.split.us, !dbg !9861

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.024 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
    #dbg_value(i16 %.sroa.0.024, !9677, !DIExpression(), !9683)
    #dbg_value(i16 %.sroa.0.024, !9712, !DIExpression(), !9718)
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.024, i1 true), !dbg !9841 ; 2 uses
    #dbg_value(i16 %i.y, !9678, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9720)
  %i.z = zext nneg i16 %i.y to i64, !dbg !9842
    #dbg_value(!DIArgList(i64 %1, i64 %i.z), !9679, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !9722)
    #dbg_value(!DIArgList(i64 %1, i64 %i.z), !9723, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !9727)
    #dbg_value(!DIArgList(i64 %1, i64 %i.z), !9728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !9734)
    #dbg_value(!DIArgList(i64 %1, i64 %i.z), !9684, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9737)
    #dbg_value(!DIArgList(i64 %1, i64 %i.z), !9706, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !9739)
    #dbg_value(ptr %i.b, !9724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9727)
    #dbg_value(ptr %i.b, !9731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9734)
    #dbg_value(ptr %i.b, !9687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9737)
    #dbg_value(ptr %i.b, !9705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9739)
    #dbg_value(i64 poison, !9724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9727)
    #dbg_value(i64 poison, !9731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9734)
    #dbg_value(i64 poison, !9687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9737)
    #dbg_value(i64 poison, !9705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9739)
    #dbg_value(i64 poison, !9684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9737)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !9688, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9740)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !9707, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9739)
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z, !dbg !9843
  %i.ab = getelementptr i8, ptr %i.aa, i64 1, !dbg !9843 ; 3 uses
    #dbg_value(ptr %i.ab, !9687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9695)
    #dbg_value(ptr %i.ab, !9705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9711)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !9687, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9695)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !9705, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9711)
    #dbg_value(i64 %i.f, !9684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9695)
    #dbg_value(i64 %i.f, !9707, !DIExpression(), !9711)
    #dbg_value(ptr %i.ab, !9680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9741)
    #dbg_value(i64 %i.f, !9680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9742), !dbg !9844
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9743), !dbg !9844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9845
    #dbg_value(ptr poison, !9772, !DIExpression(), !9610)
    #dbg_value(ptr poison, !9791, !DIExpression(), !9611)
    #dbg_value(ptr %i.ab, !9744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9612)
    #dbg_value(i64 %i.f, !9744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9612)
    #dbg_value(ptr %i.g, !9745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9612)
    #dbg_value(i64 %i.f, !9745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9612)
    #dbg_value(i64 4, !9794, !DIExpression(), !9615)
    #dbg_value(i64 4, !9794, !DIExpression(), !9617)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f, !dbg !9846
    #dbg_value(ptr %i.ab, !9752, !DIExpression(), !9635)
    #dbg_value(ptr %i.ab, !9795, !DIExpression(), !9615)
    #dbg_value(ptr %i.g, !9753, !DIExpression(), !9635)
    #dbg_value(ptr %i.g, !9795, !DIExpression(), !9617)
    #dbg_value(ptr %i.ab, !9795, !DIExpression(), !9637)
    #dbg_value(i64 %i.f, !9796, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !9637)
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4, !dbg !9862 ; 3 uses
    #dbg_value(ptr %i.ad, !9754, !DIExpression(), !9638)
    #dbg_value(ptr %i.g, !9795, !DIExpression(), !9640)
    #dbg_value(i64 %i.f, !9796, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !9640)
    #dbg_value(ptr %i.j, !9755, !DIExpression(), !9638)
  %i.ae = icmp ult ptr %i.ab, %i.ad, !dbg !9863
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit, !dbg !9863

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.054.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.053.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
    #dbg_value(ptr %.sroa.04.054.i, !9795, !DIExpression(), !9615)
    #dbg_value(ptr %.sroa.08.053.i, !9795, !DIExpression(), !9617)
    #dbg_value(ptr %.sroa.04.054.i, !9821, !DIExpression(), !9643)
    #dbg_value(ptr %.sroa.04.054.i, !9825, !DIExpression(), !9646)
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.054.i, align 1, !dbg !9864, !alias.scope !9742, !noalias !9743
    #dbg_value(i32 %.sroa.011.0.copyload.i, !9756, !DIExpression(), !9650)
    #dbg_value(ptr %.sroa.08.053.i, !9821, !DIExpression(), !9652)
    #dbg_value(ptr %.sroa.08.053.i, !9825, !DIExpression(), !9654)
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.053.i, align 1, !dbg !9865, !alias.scope !9743, !noalias !9742
    #dbg_value(i32 %.sroa.012.0.copyload.i, !9757, !DIExpression(), !9656)
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i, !dbg !9866
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit23, !dbg !9866

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.054.i, i64 4, !dbg !9867 ; 2 uses
    #dbg_value(ptr %i.af, !9752, !DIExpression(), !9635)
    #dbg_value(ptr %i.af, !9795, !DIExpression(), !9615)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.053.i, i64 4, !dbg !9868
    #dbg_value(ptr %i.ag, !9795, !DIExpression(), !9617)
    #dbg_value(ptr %i.ag, !9753, !DIExpression(), !9635)
  %i.ah = icmp ult ptr %i.af, %i.ad, !dbg !9863
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit, !dbg !9863

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread21: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9857
  br label %.loopexit, !dbg !9844

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit23: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9857
  br label %bb.d, !dbg !9844

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
    #dbg_value(ptr %i.ad, !9821, !DIExpression(), !9658)
    #dbg_value(ptr %i.ad, !9825, !DIExpression(), !9660)
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !dbg !9869, !alias.scope !9742, !noalias !9743
    #dbg_value(i32 %.sroa.013.0.copyload.i, !9758, !DIExpression(), !9662)
    #dbg_value(ptr %i.j, !9821, !DIExpression(), !9664)
    #dbg_value(ptr %i.j, !9825, !DIExpression(), !9666)
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !dbg !9870, !alias.scope !9743, !noalias !9742
    #dbg_value(i32 %.sroa.014.0.copyload.i, !9759, !DIExpression(), !9668)
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i, !dbg !9871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9857
  br i1 %i.ai, label %.loopexit, label %bb.d, !dbg !9844

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread21, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread21 ], [ false, %bb.a ], [ false, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ], !dbg !9682
  ret i1 %.sroa.03.0, !dbg !9872

bb.d:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit23, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit
    #dbg_value(i16 %i.y, !9678, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9720)
  %i.aj = shl nuw i16 1, %i.y, !dbg !9858
  %i.ak = xor i16 %i.aj, -1, !dbg !9859
  %i.al = and i16 %.sroa.0.024, %i.ak, !dbg !9860 ; 2 uses
    #dbg_value(i16 %i.al, !9677, !DIExpression(), !9683)
    #dbg_value(i16 %i.al, !9673, !DIExpression(), !9682)
  %i.am = icmp eq i16 %i.al, 0, !dbg !9861
  br i1 %i.am, label %.loopexit, label %.preheader.split, !dbg !9861
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs_NtCs5yXxDE1DkoT_4tera9functionsNtBc_14StoredFunction3newNvBc_5rangeINtNtCsf3Ta7LF998c_4core6result6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VecnENtNtBe_6errors5ErrorEE0INtNtNtB1m_3ops8function6FnOnceTNtNtBe_4args6KwargsRNtNtNtBe_2vm5state5StateEE9call_once6vtableBe_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull %2, ptr noalias nofree readonly align 8 captures(none) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !9873 {
bb.a:
    #dbg_value(ptr %2, !9882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9886)
    #dbg_value(ptr poison, !9882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9886)
    #dbg_value(ptr poison, !9881, !DIExpression(), !9886)
    #dbg_value(ptr %2, !9887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9876)
    #dbg_value(ptr poison, !9887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9876)
    #dbg_declare(ptr poison, !9890, !DIExpression(), !9877)
  tail call void @_RNCINvMs_NtCs5yXxDE1DkoT_4tera9functionsNtB7_14StoredFunction3newNvB7_5rangeINtNtCsf3Ta7LF998c_4core6result6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VecnENtNtB9_6errors5ErrorEE0B9_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, ptr noundef nonnull %2, ptr noalias nofree nonnull readonly align 8 captures(address, read_provenance) poison) #27, !dbg !9892
  ret void, !dbg !9893
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs_NtCs5yXxDE1DkoT_4tera9functionsNtBc_14StoredFunction3newNvBc_5throwINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtBe_6errors5ErrorEE0INtNtNtB1m_3ops8function6FnOnceTNtNtBe_4args6KwargsRNtNtNtBe_2vm5state5StateEE9call_once6vtableBe_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull %2, ptr noalias nofree readonly align 8 captures(none) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !9894 {
bb.a:
    #dbg_value(ptr %2, !9903, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9907)
    #dbg_value(ptr poison, !9903, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9907)
    #dbg_value(ptr poison, !9902, !DIExpression(), !9907)
    #dbg_value(ptr %2, !9908, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9897)
    #dbg_value(ptr poison, !9908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9897)
    #dbg_declare(ptr poison, !9911, !DIExpression(), !9898)
  tail call void @_RNCINvMs_NtCs5yXxDE1DkoT_4tera9functionsNtB7_14StoredFunction3newNvB7_5throwINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtB9_6errors5ErrorEE0B9_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, ptr noundef nonnull %2, ptr noalias nofree nonnull readonly align 8 captures(address, read_provenance) poison) #27, !dbg !9913
  ret void, !dbg !9914
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsgCecv3eZDcN_5alloc5sliceSh6repeatCs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9920 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %1, !9964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9972)
    #dbg_value(ptr %1, !9973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9982)
    #dbg_value(ptr %1, !9983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9987)
    #dbg_value(ptr %1, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9991)
    #dbg_value(ptr %1, !9992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9998)
    #dbg_value(i64 %2, !9964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9972)
    #dbg_value(i64 %2, !9973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9982)
end_hunk_1
