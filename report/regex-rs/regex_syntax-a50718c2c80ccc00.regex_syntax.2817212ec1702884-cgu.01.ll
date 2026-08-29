Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.01?download=true
inline.NumInlined: 396
inline.NumDeleted: 155
begin_hunk_0_@_RNvMsf_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10ClassBytes7literal:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMsf_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10ClassBytes8is_ascii(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !3232 {
bb.a:
    #dbg_value(ptr %0, !3231, !DIExpression(), !7136)
    #dbg_value(ptr %0, !3239, !DIExpression(), !7137)
    #dbg_value(ptr %0, !3253, !DIExpression(), !7139)
    #dbg_value(ptr %0, !3261, !DIExpression(), !7141)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7143
  %i.b = load i64, ptr %i.a, align 8, !dbg !7143, !noundef !15 ; 2 uses
    #dbg_value(ptr poison, !3271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7144)
    #dbg_value(i64 %i.b, !3271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7144)
  %.not = icmp eq i64 %i.b, 0, !dbg !7146
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7146
  %i.d = load ptr, ptr %i.c, align 8, !dbg !7146, !nonnull !15
  %i.e = getelementptr [2 x i8], ptr %i.d, i64 %i.b, !dbg !7146 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -2, !dbg !7146
    #dbg_value(ptr poison, !3299, !DIExpression(), !7147)
    #dbg_value(i1 true, !3311, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7147)
    #dbg_declare(ptr poison, !3312, !DIExpression(), !7149)
  %.not.i4 = icmp eq ptr %i.f, null, !dbg !7150
  %.not.i = select i1 %.not, i1 true, i1 %.not.i4, !dbg !7146
  br i1 %.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE6map_orbNCNvMsf_BL_NtBL_10ClassBytes8is_ascii0EBN_.exit, label %bb.b, !dbg !7151

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.f, !3313, !DIExpression(), !7152)
  %i.g = getelementptr i8, ptr %i.e, i64 -1, !dbg !7153
  %.val.i = load i8, ptr %i.g, align 1, !dbg !7153, !alias.scope !7154, !noundef !15
    #dbg_declare(ptr poison, !3326, !DIExpression(), !7157)
    #dbg_value(ptr poison, !3331, !DIExpression(), !7159)
  %i.h = icmp sgt i8 %.val.i, -1, !dbg !7160
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE6map_orbNCNvMsf_BL_NtBL_10ClassBytes8is_ascii0EBN_.exit, !dbg !7161

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE6map_orbNCNvMsf_BL_NtBL_10ClassBytes8is_ascii0EBN_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ], !dbg !7147
  ret i1 %.sroa.02.0.i, !dbg !7162
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10ClassBytes9intersect(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 !dbg !7163 {
bb.a:
    #dbg_value(ptr %0, !7166, !DIExpression(), !7168)
    #dbg_value(ptr %1, !7167, !DIExpression(), !7168)
  tail call void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE9intersectB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !dbg !7169
  ret void, !dbg !7170
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 257) i64 @_RNvMsi_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRange3len(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0) unnamed_addr #2 !dbg !7171 {
bb.a:
    #dbg_value(ptr %0, !7176, !DIExpression(), !7177)
    #dbg_value(i64 1, !7178, !DIExpression(), !7182)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !7184
  %i.b = load i8, ptr %i.a, align 1, !dbg !7184, !noundef !15 ; 2 uses
    #dbg_value(i8 %i.b, !7185, !DIExpression(), !7192)
  %i.c = load i8, ptr %0, align 1, !dbg !7194, !noundef !15 ; 2 uses
    #dbg_value(i8 %i.c, !7191, !DIExpression(), !7192)
  %i.d = icmp ult i8 %i.b, %i.c, !dbg !7195
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !7195, !prof !890

bb.b:                                             ; preds = %bb.a
    #dbg_value(i1 false, !7196, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !7204)
    #dbg_value(i8 poison, !7196, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7204)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30, !dbg !7206
  unreachable, !dbg !7206

bb.c:                                             ; preds = %bb.a
    #dbg_value(!DIArgList(i8 %i.b, i8 %i.c), !7196, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !7204)
    #dbg_value(i8 1, !7196, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7204)
    #dbg_value(!DIArgList(i8 %i.b, i8 %i.c), !7207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !7213)
    #dbg_value(!DIArgList(i8 %i.b, i8 %i.c), !7181, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7182)
  %i.e = sub nuw i8 %i.b, %i.c, !dbg !7215
    #dbg_value(i8 %i.e, !7196, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7204)
    #dbg_value(i8 %i.e, !7207, !DIExpression(), !7213)
    #dbg_value(i8 %i.e, !7181, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7182)
  %i.f = zext i8 %i.e to i64, !dbg !7216
    #dbg_value(i64 %i.f, !7181, !DIExpression(), !7182)
  %i.g = add nuw nsw i64 %i.f, 1, !dbg !7217
  ret i64 %i.g, !dbg !7218
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i8, i8 } @_RNvMsi_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef %0, i8 noundef %1) unnamed_addr #6 !dbg !7219 {
bb.a:
    #dbg_value(i8 %0, !7224, !DIExpression(), !7226)
    #dbg_value(i8 %1, !7225, !DIExpression(), !7226)
    #dbg_value(i8 %0, !7227, !DIExpression(), !7235)
    #dbg_value(i8 %0, !7227, !DIExpression(), !7235)
    #dbg_value(i8 %1, !7230, !DIExpression(), !7235)
    #dbg_value(i8 %1, !7230, !DIExpression(), !7235)
    #dbg_value(i8 0, !7231, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7237)
    #dbg_value(i8 0, !7231, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7237)
    #dbg_value(ptr undef, !7227, !DIExpression(DW_OP_deref), !7235)
    #dbg_value(ptr undef, !7230, !DIExpression(DW_OP_deref), !7235)
  %..i = tail call i8 @llvm.umin.i8(i8 %0, i8 %1), !dbg !7238
  %.3.i = tail call i8 @llvm.umax.i8(i8 %0, i8 %1), !dbg !7238
    #dbg_value(i8 %.3.i, !7231, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7237)
    #dbg_value(i8 %..i, !7231, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7237)
  %i.a = insertvalue { i8, i8 } poison, i8 %..i, 0, !dbg !7239
  %i.b = insertvalue { i8, i8 } %i.a, i8 %.3.i, 1, !dbg !7239
  ret { i8, i8 } %i.b, !dbg !7240
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsl_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10Repetition4with(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7241 {
bb.a:
    #dbg_value(ptr %1, !7246, !DIExpression(), !7248)
    #dbg_declare(ptr %2, !7247, !DIExpression(), !7249)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7250
  %i.b = load i32, ptr %i.a, align 8, !dbg !7250, !noundef !15
  %i.c = load <2 x i32>, ptr %1, align 8, !dbg !7251
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !7252
  %i.e = load i8, ptr %i.d, align 4, !dbg !7252, !range !4870, !noundef !15
    #dbg_declare(ptr %2, !7253, !DIExpression(), !7260)
    #dbg_value(i64 8, !781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7262)
    #dbg_value(i64 8, !803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7264)
    #dbg_value(i64 8, !831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7266)
    #dbg_value(i64 48, !781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7262)
    #dbg_value(i64 48, !803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7264)
    #dbg_value(i64 48, !831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7266)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !828, !DIExpression(), !7264)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !837, !DIExpression(), !7266)
    #dbg_value(i8 0, !838, !DIExpression(), !7266)
    #dbg_value(i64 8, !841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7268)
    #dbg_value(i64 8, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7270)
    #dbg_value(i64 48, !841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7268)
    #dbg_value(i64 48, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7270)
    #dbg_value(i1 false, !847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7268)
    #dbg_value(i64 48, !848, !DIExpression(), !7272)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !7273, !noalias !7274
  %i.f = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 48, i64 noundef range(i64 1, 9) 8) #23, !dbg !7277, !noalias !7274 ; 3 uses
  %i.g = icmp eq ptr %i.f, null, !dbg !7278
  br i1 %i.g, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE3newBI_.exit, !dbg !7279, !prof !890

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #24
          to label %.noexc unwind label %bb.c, !dbg !7280

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !7280

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2) #26
          to label %bb.e unwind label %bb.d, !dbg !7281

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !7282
  unreachable, !dbg !7282

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h, !dbg !7282

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE3newBI_.exit: ; preds = %bb.a
    #dbg_value(ptr %i.f, !7258, !DIExpression(), !7283)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !7284
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7285
  store i32 %i.b, ptr %i.j, align 8, !dbg !7285
  store <2 x i32> %i.c, ptr %0, align 8, !dbg !7285
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !7285
  store i8 %i.e, ptr %i.k, align 4, !dbg !7285
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7285
  store ptr %i.f, ptr %i.l, align 8, !dbg !7285
  ret void, !dbg !7286
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10Properties10repetition(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7287 {
bb.a:
    #dbg_value(ptr %0, !7292, !DIExpression(), !7301)
    #dbg_value(ptr %0, !7302, !DIExpression(), !7318)
    #dbg_value(ptr poison, !7320, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7328)
    #dbg_value(ptr poison, !7330, !DIExpression(), !7341)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7343
  %i.b = load ptr, ptr %i.a, align 8, !dbg !7343, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.b, !7344, !DIExpression(), !7350)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !7352
    #dbg_value(ptr %i.c, !7293, !DIExpression(), !7353)
    #dbg_value(ptr %i.c, !7354, !DIExpression(), !7357)
    #dbg_value(ptr %i.c, !7359, !DIExpression(), !7362)
    #dbg_value(ptr %i.c, !7364, !DIExpression(), !7367)
    #dbg_value(ptr %i.c, !7369, !DIExpression(), !7372)
    #dbg_value(ptr %i.c, !7374, !DIExpression(), !7377)
    #dbg_value(ptr %i.c, !7379, !DIExpression(), !7382)
    #dbg_value(ptr %i.c, !7384, !DIExpression(), !7387)
    #dbg_value(ptr %i.c, !7389, !DIExpression(), !7392)
    #dbg_value(ptr %i.c, !7394, !DIExpression(), !7397)
  %i.d = load ptr, ptr %i.c, align 8, !dbg !7399, !nonnull !15, !noundef !15 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !7399, !range !763, !noundef !15
    #dbg_value(i64 %i.e, !7315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7318)
    #dbg_value(i64 poison, !7315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7318)
  %i.f = trunc nuw i64 %i.e to i1, !dbg !7400
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !7400

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7399
  %i.h = load i64, ptr %i.g, align 8, !dbg !7399  ; 2 uses
    #dbg_value(i64 %i.h, !7315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7318)
    #dbg_value(i64 %i.h, !7316, !DIExpression(), !7401)
    #dbg_value(i64 %i.h, !7325, !DIExpression(), !7328)
    #dbg_value(i64 %i.h, !7402, !DIExpression(), !7408)
    #dbg_value(i64 %i.h, !7410, !DIExpression(), !7417)
    #dbg_value(i64 %i.h, !7419, !DIExpression(), !7429)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7431
  %i.j = load i32, ptr %i.i, align 8, !dbg !7431, !noundef !15
    #dbg_value(i32 %i.j, !7432, !DIExpression(), !7435)
  %i.k = zext i32 %i.j to i64, !dbg !7437         ; 2 uses
    #dbg_value(i64 %i.k, !7326, !DIExpression(), !7438)
    #dbg_value(i64 %i.k, !7405, !DIExpression(), !7408)
    #dbg_value(i64 %i.k, !7413, !DIExpression(), !7417)
    #dbg_value(i64 %i.k, !7428, !DIExpression(), !7429)
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.k), !dbg !7439
  %1 = mul nuw i64 %i.h, %i.k, !dbg !7439
  %i.m = extractvalue { i64, i1 } %i.l, 1, !dbg !7439
    #dbg_value(i1 %i.m, !7416, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7440)
    #dbg_value(i1 %i.m, !7441, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7448)
    #dbg_value(i64 %1, !7414, !DIExpression(), !7440)
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !7450, !prof !890

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ -1, %bb.d ], [ %1, %bb.b ], !dbg !7318
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.b ], !dbg !7318
    #dbg_value(i64 %.sroa.0.0, !7295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7451)
    #dbg_value(i64 %.sroa.3.0, !7295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7451)
  %i.n = load i32, ptr %0, align 8, !dbg !7452, !range !7453, !noundef !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !7452 ; 2 uses
    #dbg_value(i32 %i.n, !7454, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7468)
    #dbg_value(i32 poison, !7454, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7468)
    #dbg_value(ptr %i.c, !7465, !DIExpression(), !7468)
  %i.p = trunc nuw i32 %i.n to i1, !dbg !7470     ; 2 uses
  br i1 %i.p, label %bb.e, label %_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit, !dbg !7470

bb.d:                                             ; preds = %bb.b
    #dbg_value(i64 -1, !7414, !DIExpression(), !7440)
  br label %bb.c, !dbg !7471

bb.e:                                             ; preds = %bb.c
    #dbg_value(i32 poison, !7454, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7468)
    #dbg_value(i32 poison, !7466, !DIExpression(), !7472)
    #dbg_value(ptr poison, !7473, !DIExpression(DW_OP_deref), !7491)
    #dbg_value(i32 poison, !7478, !DIExpression(), !7491)
    #dbg_value(i32 poison, !7493, !DIExpression(), !7496)
    #dbg_value(i32 poison, !7498, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7522)
    #dbg_value(i64 1, !7498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7522)
    #dbg_value(i32 poison, !7479, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7525)
    #dbg_value(i32 poison, !7526, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7533)
    #dbg_value(i32 poison, !7535, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7539)
    #dbg_value(ptr poison, !7541, !DIExpression(), !7544)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !7546
  %i.r = load i64, ptr %i.q, align 8, !dbg !7546, !range !763, !noundef !15
    #dbg_value(i64 %i.r, !7498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7547)
    #dbg_value(i64 poison, !7498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7547)
  %i.s = trunc nuw i64 %i.r to i1, !dbg !7549
  br i1 %i.s, label %bb.f, label %_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit, !dbg !7549

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.o, align 4, !dbg !7452
    #dbg_value(i32 %i.t, !7466, !DIExpression(), !7472)
    #dbg_value(i32 %i.t, !7454, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7468)
    #dbg_value(i32 %i.t, !7478, !DIExpression(), !7491)
    #dbg_value(i32 %i.t, !7493, !DIExpression(), !7496)
    #dbg_value(i32 %i.t, !7498, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7522)
    #dbg_value(i32 %i.t, !7479, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7525)
    #dbg_value(i32 %i.t, !7526, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7533)
    #dbg_value(i32 %i.t, !7535, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7539)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !7546
  %i.v = load i64, ptr %i.u, align 8, !dbg !7546  ; 2 uses
    #dbg_value(i64 %i.v, !7498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7547)
  %i.w = zext i32 %i.t to i64, !dbg !7550         ; 2 uses
    #dbg_value(i64 %i.w, !7479, !DIExpression(), !7525)
    #dbg_value(i64 %i.w, !7526, !DIExpression(), !7533)
    #dbg_value(i64 %i.w, !7535, !DIExpression(), !7539)
    #dbg_value(i64 %i.w, !7498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7522)
    #dbg_value(i64 %i.v, !7485, !DIExpression(), !7551)
    #dbg_value(i64 %i.v, !7529, !DIExpression(), !7533)
    #dbg_value(i64 %i.v, !7538, !DIExpression(), !7539)
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.v, i64 %i.w), !dbg !7552
  %i.y = extractvalue { i64, i1 } %i.x, 1, !dbg !7552 ; 2 uses
    #dbg_value(i1 %i.y, !7532, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7553)
    #dbg_value(i1 %i.y, !7554, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7557)
    #dbg_value(i64 poison, !7530, !DIExpression(), !7553)
  %2 = mul nuw i64 %i.v, %i.w
  %spec.select.i = select i1 %i.y, i64 undef, i64 %2, !dbg !7559, !prof !890
  %not..i = xor i1 %i.y, true, !dbg !7559
  %spec.select21.i = zext i1 %not..i to i64, !dbg !7559
  br label %_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit, !dbg !7559

_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit: ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.36.0 = phi i64 [ undef, %bb.c ], [ undef, %bb.e ], [ %spec.select.i, %bb.f ], !dbg !7468
  %.sroa.05.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.e ], [ %spec.select21.i, %bb.f ], !dbg !7468
    #dbg_value(i64 %.sroa.05.0, !7297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7560)
    #dbg_value(i64 %.sroa.36.0, !7297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7560)
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !7561
  %i.aa = load i32, ptr %i.z, align 8, !dbg !7561, !noundef !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 68, !dbg !7562
  %i.ac = load <2 x i32>, ptr %i.ab, align 4, !dbg !7562
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 76, !dbg !7563
  %i.ae = load i8, ptr %i.ad, align 4, !dbg !7563, !range !4870, !noundef !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !7564
  %i.ag = load i64, ptr %i.af, align 8, !dbg !7564, !noundef !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !7565
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !7565, !range !763, !noundef !15 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !7565
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !7565 ; 4 uses
    #dbg_value(i64 %.sroa.0.0, !7299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7566)
    #dbg_value(i64 %.sroa.0.0, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7567)
    #dbg_value(i64 %.sroa.3.0, !7299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7566)
    #dbg_value(i64 %.sroa.3.0, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7567)
    #dbg_value(i64 %.sroa.05.0, !7299, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7566)
    #dbg_value(i64 %.sroa.05.0, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7567)
    #dbg_value(i64 %.sroa.36.0, !7299, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7566)
    #dbg_value(i64 %.sroa.36.0, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7567)
    #dbg_value(i32 %i.aa, !7299, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !7566)
    #dbg_value(i32 %i.aa, !765, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !7567)
    #dbg_value(i32 0, !7299, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7566)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7567)
    #dbg_value(i32 0, !7299, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7566)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7567)
    #dbg_value(i32 poison, !7299, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !7566)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !7567)
    #dbg_value(i32 poison, !7299, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7566)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7567)
    #dbg_value(i8 %i.ae, !7299, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7566)
    #dbg_value(i8 %i.ae, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7567)
    #dbg_value(i64 %i.ag, !7299, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7566)
    #dbg_value(i64 %i.ag, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7567)
    #dbg_value(i64 %i.ai, !7299, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7566)
    #dbg_value(i64 %i.ai, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7567)
    #dbg_value(i64 %i.ak, !7299, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !7566)
    #dbg_value(i64 %i.ak, !765, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !7567)
    #dbg_value(i8 0, !7299, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !7566)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !7567)
    #dbg_value(i8 0, !7299, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7566)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7567)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7569
  %i.am = load i32, ptr %i.al, align 8, !dbg !7569, !noundef !15
  %.not = icmp eq i32 %i.am, 0, !dbg !7569
  br i1 %.not, label %bb.h, label %bb.g, !dbg !7569

bb.g:                                             ; preds = %_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 60, !dbg !7570
    #dbg_value(i32 poison, !7299, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7566)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7567)
  %i.ao = load <2 x i32>, ptr %i.an, align 4, !dbg !7570
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7567)
    #dbg_value(i32 poison, !7299, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7566)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7567)
    #dbg_value(i32 poison, !7299, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7566)
  br label %bb.j, !dbg !7571

bb.h:                                             ; preds = %_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7567)
    #dbg_value(i32 0, !7299, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7566)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7567)
    #dbg_value(i32 0, !7299, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7566)
    #dbg_value(i64 %i.ai, !7572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7585)
    #dbg_value(i64 %i.ak, !7572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7585)
    #dbg_value(i1 false, !7581, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7585)
    #dbg_declare(ptr poison, !7582, !DIExpression(), !7587)
  %i.ap = trunc nuw i64 %i.ai to i1, !dbg !7588
  %i.aq = icmp ne i64 %i.ak, 0
  %spec.select.i.a = select i1 %i.ap, i1 %i.aq, i1 false, !dbg !7588
  br i1 %spec.select.i.a, label %bb.i, label %bb.j, !dbg !7589

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %0, !7337, !DIExpression(), !7590)
  %i.ar = load i32, ptr %i.o, align 4
  %i.as = icmp eq i32 %i.ar, 0
  %or.cond = select i1 %i.p, i1 %i.as, i1 false, !dbg !7591 ; 2 uses
  %spec.select = zext i1 %or.cond to i64, !dbg !7591
  %spec.select31 = select i1 %or.cond, i64 0, i64 %i.ak, !dbg !7591
  br label %bb.j, !dbg !7591

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.h
  %.sroa.5.0 = phi i64 [ %spec.select, %bb.i ], [ %i.ai, %bb.g ], [ %i.ai, %bb.h ], !dbg !7560
  %.sroa.8.0 = phi i64 [ %spec.select31, %bb.i ], [ %i.ak, %bb.g ], [ %i.ak, %bb.h ], !dbg !7560
  %i.at = phi <2 x i32> [ zeroinitializer, %bb.i ], [ %i.ao, %bb.g ], [ zeroinitializer, %bb.h ]
    #dbg_value(i64 %.sroa.8.0, !765, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !7567)
    #dbg_value(i64 %.sroa.8.0, !7299, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !7566)
    #dbg_value(i64 %.sroa.5.0, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7567)
    #dbg_value(i64 %.sroa.5.0, !7299, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7566)
    #dbg_value(i64 8, !781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7592)
    #dbg_value(i64 8, !803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7594)
    #dbg_value(i64 8, !831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7596)
    #dbg_value(i64 80, !781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7592)
    #dbg_value(i64 80, !803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7594)
    #dbg_value(i64 80, !831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7596)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !828, !DIExpression(), !7594)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !837, !DIExpression(), !7596)
    #dbg_value(i8 0, !838, !DIExpression(), !7596)
    #dbg_value(i64 8, !841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7598)
    #dbg_value(i64 8, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7600)
    #dbg_value(i64 80, !841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7598)
    #dbg_value(i64 80, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7600)
    #dbg_value(i1 false, !847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7598)
    #dbg_value(i64 80, !848, !DIExpression(), !7602)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !7603, !noalias !7604
  %i.au = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !7607, !noalias !7604 ; 15 uses
  %i.av = icmp eq ptr %i.au, null, !dbg !7608
  br i1 %i.av, label %bb.k, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !dbg !7609, !prof !890

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24, !dbg !7610, !noalias !7604
  unreachable, !dbg !7610

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.j
    #dbg_value(ptr %i.au, !773, !DIExpression(), !7611)
  store i64 %.sroa.0.0, ptr %i.au, align 8, !dbg !7612
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !7612
  store i64 %.sroa.3.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !7612
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !7612
  store i64 %.sroa.05.0, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !7612
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !7612
  store i64 %.sroa.36.0, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7612
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32, !dbg !7612
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !7612
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40, !dbg !7612
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !7612
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 48, !dbg !7612
  store i64 %i.ag, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !7612
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 56, !dbg !7612
  store i32 %i.aa, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !7612
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 60, !dbg !7612
  store <2 x i32> %i.at, ptr %.sroa.12.0..sroa_idx, align 4, !dbg !7612
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 68, !dbg !7612
  store <2 x i32> %i.ac, ptr %.sroa.16.0..sroa_idx, align 4, !dbg !7612
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 76, !dbg !7612
  store i8 %i.ae, ptr %.sroa.18.0..sroa_idx, align 4, !dbg !7612
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 77, !dbg !7612
  store i8 0, ptr %.sroa.19.0..sroa_idx, align 1, !dbg !7612
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 78, !dbg !7612
  store i8 0, ptr %.sroa.20.0..sroa_idx, align 2, !dbg !7612
  ret ptr %i.au, !dbg !7613
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10Properties11alternation(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7614 {
bb.a:
    #dbg_value(ptr %0, !7617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7618)
    #dbg_value(ptr %0, !7619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7622)
    #dbg_value(ptr %0, !7624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7633)
    #dbg_value(i64 %1, !7617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7618)
    #dbg_value(i64 %1, !7619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7622)
    #dbg_value(i64 %1, !7624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7633)
    #dbg_value(i64 %1, !7627, !DIExpression(), !7635)
    #dbg_value(i64 %1, !7636, !DIExpression(), !7640)
    #dbg_value(ptr %0, !7629, !DIExpression(), !7642)
    #dbg_value(ptr %0, !7639, !DIExpression(), !7640)
  %.idx = mul nuw nsw i64 %1, 48, !dbg !7643
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx, !dbg !7643
    #dbg_value(ptr poison, !7644, !DIExpression(), !7654)
    #dbg_value(ptr poison, !7662, !DIExpression(), !7738)
    #dbg_value(ptr poison, !7739, !DIExpression(), !7749)
    #dbg_value(ptr poison, !7752, !DIExpression(), !7769)
    #dbg_value(ptr poison, !7791, !DIExpression(), !7796)
    #dbg_value(ptr %0, !7691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7797)
    #dbg_value(ptr %i.a, !7691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7797)
    #dbg_declare(ptr poison, !7798, !DIExpression(), !7812)
    #dbg_value(ptr %0, !7692, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7814)
    #dbg_value(ptr %i.a, !7692, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7814)
    #dbg_value(i64 0, !7692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7814)
    #dbg_value(ptr undef, !7791, !DIExpression(), !7815)
    #dbg_value(ptr undef, !7792, !DIExpression(), !7817)
    #dbg_value(ptr undef, !7752, !DIExpression(), !7818)
    #dbg_value(ptr undef, !7768, !DIExpression(), !7818)
    #dbg_value(ptr poison, !7820, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7825)
    #dbg_value(ptr undef, !7827, !DIExpression(), !7835)
    #dbg_value(ptr undef, !7837, !DIExpression(), !7846)
    #dbg_value(ptr %0, !7840, !DIExpression(), !7848)
    #dbg_value(ptr %i.a, !7842, !DIExpression(), !7849)
    #dbg_value(ptr poison, !7850, !DIExpression(), !7854)
    #dbg_value(ptr poison, !7853, !DIExpression(), !7856)
  %i.b = icmp eq i64 %1, 0, !dbg !7857
  br i1 %i.b, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCNvMso_B1o_NtB1o_10Properties11alternation0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread.i, label %.peel.next.i, !dbg !7858

.peel.next.i:                                     ; preds = %bb.a
    #dbg_value(ptr %0, !7692, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !7814)
    #dbg_value(ptr %0, !7859, !DIExpression(), !7872)
    #dbg_value(ptr undef, !7869, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !7872)
    #dbg_value(ptr undef, !7874, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !7889)
    #dbg_value(ptr %0, !7870, !DIExpression(), !7891)
    #dbg_value(ptr %0, !7883, !DIExpression(), !7889)
    #dbg_value(ptr poison, !7892, !DIExpression(), !7897)
    #dbg_value(ptr %0, !7896, !DIExpression(), !7897)
    #dbg_value(ptr %0, !7899, !DIExpression(), !7902)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7904
    #dbg_value(i32 -1, !7725, !DIExpression(), !7905)
    #dbg_value(ptr undef, !7791, !DIExpression(), !7796)
    #dbg_value(ptr undef, !7752, !DIExpression(), !7769)
end_hunk_0
