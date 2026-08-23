Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.10?download=true
inline.NumInlined: 194
inline.NumDeleted: 89
begin_hunk_0_@_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBZ_EEB13_:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.01.020 = phi i64 [ %i.d, %.lr.ph ], [ %i.i, %bb.c ] ; 2 uses
    #dbg_value(i64 %.sroa.01.020, !599, !DIExpression(), !641)
    #dbg_value(i64 %.sroa.01.020, !613, !DIExpression(), !614)
    #dbg_value(i64 %.sroa.01.020, !619, !DIExpression(), !620)
    #dbg_value(i64 %.sroa.01.020, !584, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !638)
    #dbg_value(i64 %.sroa.01.020, !586, !DIExpression(), !642)
    #dbg_value(i64 %.sroa.01.020, !643, !DIExpression(), !647)
    #dbg_value(ptr %1, !649, !DIExpression(), !656)
  %.sroa.0.0.copyload.i = load i24, ptr %1, align 1, !dbg !658, !alias.scope !685 ; 2 uses
  store i8 0, ptr %1, align 1, !dbg !688, !alias.scope !685
  %i.h = trunc i24 %.sroa.0.0.copyload.i to i1, !dbg !689 ; 3 uses
  br i1 %i.h, label %bb.c, label %._crit_edge, !dbg !690

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %bb.b ], [ %i.h, %bb.c ], !dbg !640
  ret i1 %.lcssa, !dbg !691

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %.sroa.01.020, 1, !dbg !692      ; 2 uses
    #dbg_value(i64 %i.i, !584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !638)
    #dbg_value(i24 %.sroa.0.0.copyload.i, !588, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !693)
    #dbg_value(i24 %.sroa.0.0.copyload.i, !694, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !698)
    #dbg_value(i24 %.sroa.0.0.copyload.i, !588, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !693)
    #dbg_value(i24 %.sroa.0.0.copyload.i, !694, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !698)
  %i.j = load ptr, ptr %i.g, align 8, !dbg !700, !nonnull !199, !noundef !199
    #dbg_value(ptr %i.j, !646, !DIExpression(), !647)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.sroa.01.020, !dbg !707
    #dbg_value(ptr %i.k, !697, !DIExpression(), !698)
    #dbg_value(ptr %i.k, !708, !DIExpression(), !711)
  %i.l = lshr i24 %.sroa.0.0.copyload.i, 8, !dbg !713
  %i.m = trunc nuw i24 %i.l to i16, !dbg !713
  store i16 %i.m, ptr %i.k, align 1, !dbg !713
  %i.n = load i64, ptr %i.c, align 8, !dbg !714, !noundef !199
  %i.o = add i64 %i.n, 1, !dbg !714
  store i64 %i.o, ptr %i.c, align 8, !dbg !714
    #dbg_value(ptr undef, !604, !DIExpression(), !608)
    #dbg_value(ptr undef, !598, !DIExpression(), !607)
    #dbg_value(ptr undef, !590, !DIExpression(), !594)
    #dbg_value(ptr undef, !593, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !639)
  %exitcond.not = icmp eq i64 %i.i, %i.f, !dbg !640
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !595
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 !dbg !715 {
bb.a:
    #dbg_value(ptr poison, !789, !DIExpression(), !793)
    #dbg_value(ptr poison, !797, !DIExpression(), !806)
    #dbg_value(ptr poison, !803, !DIExpression(), !807)
    #dbg_value(ptr %0, !774, !DIExpression(), !808)
    #dbg_value(ptr %1, !775, !DIExpression(), !808)
    #dbg_value(i64 1, !809, !DIExpression(), !813)
    #dbg_value(i64 1, !815, !DIExpression(), !819)
    #dbg_value(ptr %0, !821, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !829)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !831
  %i.b = load ptr, ptr %i.a, align 8, !dbg !831, !nonnull !199, !noundef !199 ; 2 uses
    #dbg_value(ptr %i.b, !776, !DIExpression(), !832)
    #dbg_value(ptr %i.b, !833, !DIExpression(), !840)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !842 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !842, !noundef !199 ; 2 uses
    #dbg_value(i64 %i.d, !779, !DIExpression(), !843)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !844
  %i.f = load i64, ptr %i.e, align 8, !dbg !844, !noundef !199 ; 2 uses
    #dbg_value(i64 %i.f, !781, !DIExpression(), !845)
    #dbg_value(i64 %i.d, !783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !846)
    #dbg_value(i64 %i.f, !783, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !846)
    #dbg_value(ptr undef, !803, !DIExpression(), !807)
    #dbg_value(ptr undef, !797, !DIExpression(), !806)
    #dbg_value(ptr undef, !789, !DIExpression(), !793)
    #dbg_value(ptr undef, !792, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !847)
  %.not = icmp ult i64 %i.d, %i.f, !dbg !848
  br i1 %.not, label %.lr.ph, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, !dbg !794

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !849, !nonnull !199, !noundef !199
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.promoted = load ptr, ptr %i.i, align 8, !alias.scope !849
  br label %bb.b, !dbg !794

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.01.022 = phi i64 [ %i.d, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
    #dbg_value(i64 %.sroa.01.022, !798, !DIExpression(), !852)
    #dbg_value(i64 %.sroa.01.022, !812, !DIExpression(), !813)
    #dbg_value(i64 %.sroa.01.022, !818, !DIExpression(), !819)
    #dbg_value(i64 %.sroa.01.022, !783, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !846)
    #dbg_value(i64 %.sroa.01.022, !785, !DIExpression(), !853)
    #dbg_value(i64 %.sroa.01.022, !854, !DIExpression(), !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849), !dbg !862
    #dbg_value(ptr %1, !863, !DIExpression(), !883)
    #dbg_value(i64 1, !885, !DIExpression(), !892)
    #dbg_value(ptr %1, !894, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !901)
    #dbg_value(ptr poison, !900, !DIExpression(), !903)
  %.not29.not = icmp ne ptr %i.k, %i.h, !dbg !904 ; 3 uses
  br i1 %.not29.not, label %bb.c, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, !dbg !905

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not29.not, %bb.b ], [ %.not29.not, %bb.c ], !dbg !848
  ret i1 %.lcssa, !dbg !906

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.k, !879, !DIExpression(), !907)
    #dbg_value(ptr %i.k, !881, !DIExpression(), !908)
    #dbg_value(ptr %i.k, !891, !DIExpression(), !892)
    #dbg_value(ptr %i.k, !909, !DIExpression(), !915)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !917 ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !dbg !918, !alias.scope !849
  %i.m = add i64 %.sroa.01.022, 1, !dbg !919      ; 2 uses
    #dbg_value(i64 %i.m, !783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !846)
    #dbg_value(i32 poison, !787, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !920)
    #dbg_value(i32 poison, !921, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !927)
    #dbg_value(i32 poison, !787, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !920)
    #dbg_value(i32 poison, !921, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !927)
  %i.n = load ptr, ptr %i.j, align 8, !dbg !929, !nonnull !199, !noundef !199
    #dbg_value(ptr %i.n, !859, !DIExpression(), !860)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.022, !dbg !947
    #dbg_value(ptr %i.o, !926, !DIExpression(), !927)
    #dbg_value(ptr %i.o, !948, !DIExpression(), !951)
  %i.p = load <2 x i32>, ptr %i.k, align 4, !dbg !953, !noalias !849
  store <2 x i32> %i.p, ptr %i.o, align 4, !dbg !958
  %i.q = load i64, ptr %i.c, align 8, !dbg !959, !noundef !199
  %i.r = add i64 %i.q, 1, !dbg !959
  store i64 %i.r, ptr %i.c, align 8, !dbg !959
    #dbg_value(ptr undef, !803, !DIExpression(), !807)
    #dbg_value(ptr undef, !797, !DIExpression(), !806)
    #dbg_value(ptr undef, !789, !DIExpression(), !793)
    #dbg_value(ptr undef, !792, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !847)
  %exitcond.not = icmp eq i64 %i.m, %i.f, !dbg !848
  br i1 %exitcond.not, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %bb.b, !dbg !794
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBZ_EEB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 !dbg !960 {
bb.a:
    #dbg_value(ptr poison, !993, !DIExpression(), !997)
    #dbg_value(ptr poison, !1001, !DIExpression(), !1010)
    #dbg_value(ptr poison, !1007, !DIExpression(), !1011)
    #dbg_value(ptr %0, !979, !DIExpression(), !1012)
    #dbg_value(ptr %1, !980, !DIExpression(), !1012)
    #dbg_value(i64 1, !1013, !DIExpression(), !1017)
    #dbg_value(i64 1, !1019, !DIExpression(), !1023)
    #dbg_value(ptr %0, !1025, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1028)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1030
  %i.b = load ptr, ptr %i.a, align 8, !dbg !1030, !nonnull !199, !noundef !199 ; 2 uses
    #dbg_value(ptr %i.b, !981, !DIExpression(), !1031)
    #dbg_value(ptr %i.b, !1032, !DIExpression(), !1035)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1037 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !1037, !noundef !199 ; 3 uses
    #dbg_value(i64 %i.d, !983, !DIExpression(), !1038)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1039
  %i.f = load i64, ptr %i.e, align 8, !dbg !1039, !noundef !199 ; 2 uses
    #dbg_value(i64 %i.f, !985, !DIExpression(), !1040)
    #dbg_value(i64 %i.f, !987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1041)
    #dbg_value(i64 %i.d, !987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1041)
    #dbg_value(ptr undef, !1007, !DIExpression(), !1011)
    #dbg_value(ptr undef, !1001, !DIExpression(), !1010)
    #dbg_value(ptr undef, !993, !DIExpression(), !997)
    #dbg_value(ptr undef, !996, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1042)
  %.not22 = icmp ult i64 %i.d, %i.f, !dbg !1043
  br i1 %.not22, label %.lr.ph, label %._crit_edge, !dbg !998

.lr.ph:                                           ; preds = %bb.a
  %i.g = load <2 x i32>, ptr %1, align 4
  %.promoted = load i32, ptr %1, align 4
  store i32 -1, ptr %1, align 4, !alias.scope !1044
    #dbg_value(i64 %i.d, !1002, !DIExpression(), !1047)
    #dbg_value(i64 %i.d, !1016, !DIExpression(), !1017)
    #dbg_value(i64 %i.d, !1022, !DIExpression(), !1023)
    #dbg_value(i64 %i.d, !987, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !1041)
    #dbg_value(i64 %i.d, !989, !DIExpression(), !1048)
    #dbg_value(i64 %i.d, !1049, !DIExpression(), !1053)
  %.not.peel = icmp eq i32 %.promoted, -1, !dbg !1055
  br i1 %.not.peel, label %._crit_edge, label %bb.b, !dbg !1056

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = add nuw i64 %i.d, 1, !dbg !1057
    #dbg_value(i64 %i.i, !987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1041)
    #dbg_value(i32 poison, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1058)
    #dbg_value(i32 poison, !1059, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1063)
    #dbg_value(i32 poison, !991, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1058)
    #dbg_value(i32 poison, !1059, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1063)
  %i.j = load ptr, ptr %i.h, align 8, !dbg !1065, !nonnull !199, !noundef !199
    #dbg_value(ptr %i.j, !1052, !DIExpression(), !1053)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d, !dbg !1072
    #dbg_value(ptr %i.k, !1062, !DIExpression(), !1063)
    #dbg_value(ptr %i.k, !1073, !DIExpression(), !1076)
  store <2 x i32> %i.g, ptr %i.k, align 4, !dbg !1078
  %i.l = load i64, ptr %i.c, align 8, !dbg !1079, !noundef !199
  %i.m = add i64 %i.l, 1, !dbg !1079
  store i64 %i.m, ptr %i.c, align 8, !dbg !1079
    #dbg_value(ptr undef, !1007, !DIExpression(), !1011)
    #dbg_value(ptr undef, !1001, !DIExpression(), !1010)
    #dbg_value(ptr undef, !993, !DIExpression(), !997)
    #dbg_value(ptr undef, !996, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1042)
  %exitcond.peel.not = icmp eq i64 %i.i, %i.f, !dbg !1043
  br i1 %exitcond.peel.not, label %._crit_edge, label %._crit_edge.loopexit.loopexit, !dbg !998

._crit_edge.loopexit.loopexit:                    ; preds = %bb.b
    #dbg_value(i64 %i.i, !1002, !DIExpression(), !1047)
    #dbg_value(i64 %i.i, !1016, !DIExpression(), !1017)
    #dbg_value(i64 %i.i, !1022, !DIExpression(), !1023)
    #dbg_value(i64 %i.i, !987, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !1041)
    #dbg_value(i64 %i.i, !989, !DIExpression(), !1048)
    #dbg_value(i64 %i.i, !1049, !DIExpression(), !1053)
  br label %._crit_edge, !dbg !1080

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %._crit_edge.loopexit.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ true, %bb.b ], [ false, %._crit_edge.loopexit.loopexit ], !dbg !1043
  ret i1 %.lcssa, !dbg !1080
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3ast10RepetitionEEB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1081 {
bb.a:
    #dbg_value(ptr %0, !1450, !DIExpression(), !1453)
  %i.a = load ptr, ptr %0, align 8, !dbg !1454, !nonnull !199, !noundef !199 ; 3 uses
    #dbg_value(ptr %i.a, !1455, !DIExpression(), !1463)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !1465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466), !dbg !1465
    #dbg_value(ptr %i.b, !1469, !DIExpression(), !1477)
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1479, !alias.scope !1466, !nonnull !199, !noundef !199 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.b, !dbg !1479, !noalias !1466, !inline_history !1480

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !1481, !DIExpression(), !1509)
    #dbg_value(ptr %i.c, !1488, !DIExpression(), !1511)
    #dbg_value(i64 8, !1498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1512)
    #dbg_value(i64 16, !1498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1512)
    #dbg_value(ptr poison, !1513, !DIExpression(), !1523)
    #dbg_value(ptr poison, !1525, !DIExpression(), !1532)
    #dbg_value(ptr %i.c, !1521, !DIExpression(), !1523)
    #dbg_value(ptr %i.c, !1530, !DIExpression(), !1532)
    #dbg_value(ptr %i.c, !1534, !DIExpression(), !1541)
    #dbg_value(ptr %i.c, !1543, !DIExpression(), !1547)
    #dbg_value(i64 8, !1522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1523)
    #dbg_value(i64 8, !1531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1532)
    #dbg_value(i64 8, !1540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1541)
    #dbg_value(i64 8, !1546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1547)
    #dbg_value(i64 16, !1522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1523)
    #dbg_value(i64 16, !1531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1532)
    #dbg_value(i64 16, !1540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1541)
    #dbg_value(i64 16, !1546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1547)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 16, i64 noundef 8) #16, !dbg !1549, !noalias !1466, !inline_history !1480
    #dbg_value(ptr poison, !1550, !DIExpression(), !1568)
    #dbg_value(ptr %i.a, !1554, !DIExpression(), !1570)
    #dbg_value(i64 8, !1565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1571)
    #dbg_value(i64 128, !1565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1571)
    #dbg_value(ptr poison, !1513, !DIExpression(), !1572)
    #dbg_value(ptr poison, !1525, !DIExpression(), !1574)
    #dbg_value(ptr %i.a, !1521, !DIExpression(), !1572)
    #dbg_value(ptr %i.a, !1530, !DIExpression(), !1574)
    #dbg_value(ptr %i.a, !1534, !DIExpression(), !1576)
    #dbg_value(ptr %i.a, !1543, !DIExpression(), !1578)
    #dbg_value(i64 8, !1522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1572)
    #dbg_value(i64 8, !1531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1574)
    #dbg_value(i64 8, !1540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1576)
    #dbg_value(i64 8, !1546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1578)
    #dbg_value(i64 128, !1522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1572)
    #dbg_value(i64 128, !1531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1574)
    #dbg_value(i64 128, !1540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1576)
    #dbg_value(i64 128, !1546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1578)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 8) #16, !dbg !1580
  resume { ptr, i32 } %i.d, !dbg !1454

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !1481, !DIExpression(), !1581)
    #dbg_value(ptr %i.c, !1488, !DIExpression(), !1583)
    #dbg_value(i64 8, !1498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1584)
    #dbg_value(i64 16, !1498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1584)
    #dbg_value(ptr poison, !1513, !DIExpression(), !1585)
    #dbg_value(ptr poison, !1525, !DIExpression(), !1587)
    #dbg_value(ptr %i.c, !1521, !DIExpression(), !1585)
    #dbg_value(ptr %i.c, !1530, !DIExpression(), !1587)
    #dbg_value(ptr %i.c, !1534, !DIExpression(), !1589)
    #dbg_value(ptr %i.c, !1543, !DIExpression(), !1591)
    #dbg_value(i64 8, !1522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1585)
    #dbg_value(i64 8, !1531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1587)
    #dbg_value(i64 8, !1540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1589)
    #dbg_value(i64 8, !1546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1591)
    #dbg_value(i64 16, !1522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1585)
    #dbg_value(i64 16, !1531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1587)
    #dbg_value(i64 16, !1540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1589)
    #dbg_value(i64 16, !1546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1591)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 16, i64 noundef 8) #16, !dbg !1593, !noalias !1466, !inline_history !1480
    #dbg_value(ptr poison, !1550, !DIExpression(), !1594)
    #dbg_value(ptr %i.a, !1554, !DIExpression(), !1596)
    #dbg_value(i64 8, !1565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1597)
    #dbg_value(i64 128, !1565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1597)
    #dbg_value(ptr poison, !1513, !DIExpression(), !1598)
    #dbg_value(ptr poison, !1525, !DIExpression(), !1600)
    #dbg_value(ptr %i.a, !1521, !DIExpression(), !1598)
    #dbg_value(ptr %i.a, !1530, !DIExpression(), !1600)
    #dbg_value(ptr %i.a, !1534, !DIExpression(), !1602)
    #dbg_value(ptr %i.a, !1543, !DIExpression(), !1604)
    #dbg_value(i64 8, !1522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1598)
    #dbg_value(i64 8, !1531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1600)
    #dbg_value(i64 8, !1540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1602)
    #dbg_value(i64 8, !1546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1604)
    #dbg_value(i64 128, !1522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1598)
    #dbg_value(i64 128, !1531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1600)
    #dbg_value(i64 128, !1540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1602)
    #dbg_value(i64 128, !1546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1604)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 8) #16, !dbg !1606
  ret void, !dbg !1454
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3ast11AlternationEEB1e_(ptr nonnull %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1607 {
bb.a:
    #dbg_value(ptr poison, !1612, !DIExpression(), !1615)
    #dbg_value(ptr %.0.val, !1616, !DIExpression(), !1624)
    #dbg_value(ptr %.0.val, !1626, !DIExpression(), !1634)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEEB1c_.exit.i unwind label %bb.b, !dbg !1636

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %.0.val, !1637, !DIExpression(), !1645)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
          to label %bb.e unwind label %bb.c, !dbg !1647

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !1636
  unreachable, !dbg !1636

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEEB1c_.exit.i: ; preds = %bb.a
    #dbg_value(ptr %.0.val, !1637, !DIExpression(), !1648)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast11AlternationEBF_.exit unwind label %bb.d, !dbg !1650

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEEB1c_.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.e, !dbg !1651

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast11AlternationEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstEEB1c_.exit.i
    #dbg_value(ptr poison, !1652, !DIExpression(), !1669)
    #dbg_value(ptr %.0.val, !1655, !DIExpression(), !1671)
    #dbg_value(i64 8, !1666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1672)
    #dbg_value(i64 72, !1666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1672)
    #dbg_value(ptr poison, !1513, !DIExpression(), !1673)
    #dbg_value(ptr poison, !1525, !DIExpression(), !1675)
    #dbg_value(ptr %.0.val, !1521, !DIExpression(), !1673)
    #dbg_value(ptr %.0.val, !1530, !DIExpression(), !1675)
    #dbg_value(ptr %.0.val, !1534, !DIExpression(), !1677)
    #dbg_value(ptr %.0.val, !1543, !DIExpression(), !1679)
    #dbg_value(i64 8, !1522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1673)
    #dbg_value(i64 8, !1531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1675)
    #dbg_value(i64 8, !1540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1677)
    #dbg_value(i64 8, !1546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1679)
    #dbg_value(i64 72, !1522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1673)
    #dbg_value(i64 72, !1531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1675)
    #dbg_value(i64 72, !1540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1677)
    #dbg_value(i64 72, !1546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1679)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #16, !dbg !1681
  ret void, !dbg !1651

bb.e:                                             ; preds = %bb.d, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
    #dbg_value(ptr poison, !1652, !DIExpression(), !1682)
    #dbg_value(ptr %.0.val, !1655, !DIExpression(), !1684)
    #dbg_value(i64 8, !1666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1685)
    #dbg_value(i64 72, !1666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1685)
    #dbg_value(ptr poison, !1513, !DIExpression(), !1686)
    #dbg_value(ptr poison, !1525, !DIExpression(), !1688)
    #dbg_value(ptr %.0.val, !1521, !DIExpression(), !1686)
    #dbg_value(ptr %.0.val, !1530, !DIExpression(), !1688)
    #dbg_value(ptr %.0.val, !1534, !DIExpression(), !1690)
    #dbg_value(ptr %.0.val, !1543, !DIExpression(), !1692)
    #dbg_value(i64 8, !1522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1686)
    #dbg_value(i64 8, !1531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1688)
    #dbg_value(i64 8, !1540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1690)
    #dbg_value(i64 8, !1546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1692)
    #dbg_value(i64 72, !1522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1686)
    #dbg_value(i64 72, !1531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1688)
    #dbg_value(i64 72, !1540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1690)
    #dbg_value(i64 72, !1546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1692)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #16, !dbg !1694
  resume { ptr, i32 } %eh.lpad-body, !dbg !1651
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassUnicodeEEB1e_(ptr nonnull %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1695 {
bb.a:
    #dbg_value(ptr poison, !1700, !DIExpression(), !1703)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassUnicodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(112) %.0.val)
          to label %bb.b unwind label %bb.c, !dbg !1704

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !1705, !DIExpression(), !1724)
    #dbg_value(ptr %.0.val, !1708, !DIExpression(), !1726)
    #dbg_value(i64 8, !1721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1727)
    #dbg_value(i64 112, !1721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1727)
    #dbg_value(ptr poison, !1513, !DIExpression(), !1728)
    #dbg_value(ptr poison, !1525, !DIExpression(), !1730)
    #dbg_value(ptr %.0.val, !1521, !DIExpression(), !1728)
    #dbg_value(ptr %.0.val, !1530, !DIExpression(), !1730)
    #dbg_value(ptr %.0.val, !1534, !DIExpression(), !1732)
    #dbg_value(ptr %.0.val, !1543, !DIExpression(), !1734)
    #dbg_value(i64 8, !1522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1728)
    #dbg_value(i64 8, !1531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1730)
    #dbg_value(i64 8, !1540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1732)
end_hunk_0
