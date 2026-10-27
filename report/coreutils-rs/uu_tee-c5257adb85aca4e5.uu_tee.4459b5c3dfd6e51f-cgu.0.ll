Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tee-c5257adb85aca4e5.uu_tee.4459b5c3dfd6e51f-cgu.0?download=true
inline.NumInlined: 474
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
@39 = private unnamed_addr constant [26 x i8] c"tee-help-output-error-exit", align 1
@40 = private unnamed_addr constant [11 x i8] c"exit-nopipe", align 1
@41 = private unnamed_addr constant [33 x i8] c"tee-help-output-error-exit-nopipe", align 1
@42 = private unnamed_addr constant [21 x i8] c"tee-help-output-error", align 1
@43 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3117803386453401007 to ptr), ptr inttoptr (i64 2895387903297248865 to ptr) }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserECs5RPjO8Kzn89_6uu_tee, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9parse_refCs5RPjO8Kzn89_6uu_tee, ptr @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser10parse_ref_Cs5RPjO8Kzn89_6uu_tee, ptr @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser7type_idCs5RPjO8Kzn89_6uu_tee, ptr @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser15possible_valuesCs5RPjO8Kzn89_6uu_tee, ptr @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9clone_anyCs5RPjO8Kzn89_6uu_tee }>, align 8
@45 = private unnamed_addr constant [34 x i8] c"number of read bytes exceeds limit", align 1
@46 = private unnamed_addr constant [77 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/io/util.rs\00", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"L\00\00\00\00\00\00\00\F4\00\00\00\09\00\00\00" }>, align 8
@48 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rustix-1.1.4/src/buffer.rs\00", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @48, [16 x i8] c"_\00\00\00\00\00\00\00\C3\00\00\00#\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtCs7tKScEop1B6_5alloc6string6StringNtB2_3Any7type_idCs5RPjO8Kzn89_6uu_tee }>, align 8
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRjNtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee }>, align 8
@52 = private unnamed_addr constant [2 x i8] c"Ok", align 1
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoNtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee }>, align 8
@54 = private unnamed_addr constant [3 x i8] c"Err", align 1
@55 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@56 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @55, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@57 = private unnamed_addr constant [77 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/core/src/io/write.rs\00", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @57, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8
@llvm.used = appending global [1 x ptr] [ptr @_RNvCs5RPjO8Kzn89_6uu_tee21CAPTURE_STARTUP_STATE], section "llvm.metadata"
@switch.table._RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind = private unnamed_addr constant [122 x i8] c"\01\00+#)+\22+++\0D&\01++\1C\0C\1F+\0E\0F\14((+\1D\1B\18\19\11 \0B++\1E!+$\10\12++++++++++++++++++++++++++++++++++++++++++++++++++++++$++\08\09\0A\05+\06\03++\07++\16\02+\04+'\13+++++\1A", align 1

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load i32, ptr %i.a, align 8, !range !4, !noundef !5
  %i.b = icmp eq i32 %.val2, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.val3 = load i32, ptr %i.c, align 4
  %i.d = tail call noundef i32 @close(i32 noundef %.val3) #20 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit: ; preds = %bb.a, %bb.b
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5RPjO8Kzn89_6uu_tee.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5RPjO8Kzn89_6uu_tee.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !30, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !30, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs5RPjO8Kzn89_6uu_tee.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECs5RPjO8Kzn89_6uu_tee.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECs5RPjO8Kzn89_6uu_tee.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.03.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !range !7, !alias.scope !33, !noalias !30, !noundef !5 ; 2 uses
  %i.g = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !33, !noalias !30, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.d, align 8, !range !6, !alias.scope !33, !noalias !30, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECs5RPjO8Kzn89_6uu_tee.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !33, !noalias !30, !nonnull !5, !noundef !5
  %i.k = shl nuw i64 %.val2.i.i.i.i, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !35
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECs5RPjO8Kzn89_6uu_tee.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECs5RPjO8Kzn89_6uu_tee.exit.i.i.i: ; preds = %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i
  %i.l = icmp eq i64 %i.e, %.val1.i
  br i1 %i.l, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs5RPjO8Kzn89_6uu_tee.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECs5RPjO8Kzn89_6uu_tee.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !6, !alias.scope !30, !noundef !5 ; 2 uses
  %i.m = icmp eq i64 %.val2.i, 0
  br i1 %i.m, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueEECs5RPjO8Kzn89_6uu_tee.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs5RPjO8Kzn89_6uu_tee.exit.i
  %i.n = mul nuw i64 %.val2.i, 72
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !30
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueEECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueEECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs5RPjO8Kzn89_6uu_tee.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs5RPjO8Kzn89_6uu_tee.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.d = load i64, ptr %i.c, align 8, !range !47, !alias.scope !46, !noundef !5 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs5RPjO8Kzn89_6uu_tee.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !7, !alias.scope !46, !noundef !5 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !46, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !48
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs5RPjO8Kzn89_6uu_tee.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !7, !alias.scope !46, !noundef !5 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !46, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !49
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs5RPjO8Kzn89_6uu_tee.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !46 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !46, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !5, !noalias !46 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #21, !noalias !46, !inline_history !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !6, !invariant.load !5, !noalias !46 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !5, !noalias !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #20, !noalias !46
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs5RPjO8Kzn89_6uu_tee.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
define void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedINtNtB4_6result6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoEBM_ECs5RPjO8Kzn89_6uu_tee(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #22
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBU_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i32, ptr %i.g, align 8, !range !4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %.fr75 = freeze i32 %i.h
  %i.j = trunc i32 %.fr75 to i1                   ; 2 uses
  br i1 %i.j, label %.split.us, label %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit

.split.us:                                        ; preds = %bb.a
  %i.k = load i32, ptr %i.i, align 4, !range !10
  %i.l = zext i32 %i.k to i64
  %i.m = inttoptr i64 %i.l to ptr
  br label %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us

_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us: ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.us, %.split.us
  %.sroa.0.068.us = phi i64 [ %3, %.split.us ], [ %i.v, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.us ] ; 3 uses
  %i.n = tail call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) #20
  %i.o = zext i32 %i.n to i64
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = inttoptr i64 %.sroa.0.068.us to ptr
  %i.r = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},{r9},~{memory}"(ptr nonnull inttoptr (i64 275 to ptr), ptr %i.p, ptr null, ptr %i.m, ptr null, ptr nonnull %i.q, ptr null) #20, !noalias !82, !srcloc !11
  %i.s = extractvalue { ptr, i32, i32 } %i.r, 0   ; 3 uses
  %.not.i.i.us = icmp sgt ptr %i.s, inttoptr (i64 -4096 to ptr)
  %i.t = icmp slt ptr %i.s, null
  %.sroa.0.0.i.i.us = and i1 %.not.i.i.us, %i.t
  br i1 %.sroa.0.0.i.i.us, label %.split70.us, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.us

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.us: ; preds = %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %.sroa.0.068.us, %i.u            ; 2 uses
  %.not.us = icmp eq i64 %i.v, 0
  br i1 %.not.us, label %.split74.us, label %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us

.split74.us:                                      ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.us
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.w, align 1
  store i8 0, ptr %0, align 8
  br label %bb.b

_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit: ; preds = %bb.a, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit
  %.sroa.0.068 = phi i64 [ %i.ak, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit ], [ %3, %bb.a ] ; 3 uses
  %i.x = tail call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) #20
  %i.y = tail call noundef i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i) #20
  %i.z = zext i32 %i.x to i64
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = zext i32 %i.y to i64
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = inttoptr i64 %.sroa.0.068 to ptr
  %i.ae = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},{r9},~{memory}"(ptr nonnull inttoptr (i64 275 to ptr), ptr %i.aa, ptr null, ptr %i.ac, ptr null, ptr nonnull %i.ad, ptr null) #20, !noalias !82, !srcloc !11
  %i.af = extractvalue { ptr, i32, i32 } %i.ae, 0 ; 3 uses
  %.not.i.i = icmp sgt ptr %i.af, inttoptr (i64 -4096 to ptr)
  %i.ag = icmp slt ptr %i.af, null
  %.sroa.0.0.i.i = and i1 %.not.i.i, %i.ag
  br i1 %.sroa.0.0.i.i, label %.split70.us, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5RPjO8Kzn89_6uu_tee.exit, %.split74.us
  ret void

.split70.us:                                      ; preds = %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit, %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us
  %.us-phi72 = phi i64 [ %.sroa.0.068.us, %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.us ], [ %.sroa.0.068, %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not.i = icmp slt i64 %.us-phi72, 0
  br i1 %.not.i, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !12

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %.split70.us
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !83
  %i.ah = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.us-phi72, i64 noundef range(i64 1, 9) 1) #20, !noalias !83 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.c, label %bb.d

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit: ; preds = %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %.sroa.0.068, %i.aj             ; 2 uses
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %.split74.us, label %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit

bb.c:                                             ; preds = %.split70.us, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %.split70.us ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.us-phi72) #23
  unreachable

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  store i64 %.us-phi72, ptr %i.f, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.ah, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  store i64 0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.us-phi72, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  store i64 %.us-phi72, ptr %i.ao, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.ap = icmp samesign ult i64 %.us-phi72, 32
  br i1 %i.ap, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge88.i, %bb.d
  %.pre81.i = phi i64 [ %.pre81.pre.i, %._crit_edge88.i ], [ %.us-phi72, %bb.d ]
  %.pre.i = phi i64 [ %.pr.pre, %._crit_edge88.i ], [ 0, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ay = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #20 ; 2 uses
  %i.az = extractvalue { i64, ptr } %i.ay, 0
  %i.ba = extractvalue { i64, ptr } %i.ay, 1      ; 2 uses
  %i.bb = trunc nuw i64 %i.az to i1
  br i1 %i.bb, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp eq ptr %i.ba, null
  %.pr.pre = load i64, ptr %i.am, align 8         ; 2 uses
  br i1 %i.bc, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread33, label %._crit_edge88.i

._crit_edge88.i:                                  ; preds = %bb.g
  %.pre81.pre.i = load i64, ptr %i.f, align 8, !range !6, !alias.scope !85
  br label %bb.e

bb.h:                                             ; preds = %bb.w, %bb.e
  %i.bd = phi i64 [ %.pre81.i, %bb.e ], [ %i.by, %bb.w ] ; 3 uses
  %i.be = phi i64 [ %.pre.i, %bb.e ], [ %i.ea, %bb.w ] ; 2 uses
  %.sroa.037.3.i = phi i64 [ 8192, %bb.e ], [ %.sroa.037.4.i, %bb.w ] ; 5 uses
  %i.bf = icmp eq i64 %i.be, %i.bd
  %i.bg = icmp eq i64 %i.bd, %.us-phi72
  %or.cond46.i = and i1 %i.bg, %i.bf
  br i1 %or.cond46.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %bb.h
  %i.bh = phi i64 [ %.pre83.i, %._crit_edge.i ], [ %i.bd, %bb.h ] ; 6 uses
  %i.bi = phi i64 [ %.pre82.i, %._crit_edge.i ], [ %i.be, %bb.h ] ; 7 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i64 %i.bi, %i.bh
  %.pre84.i = load ptr, ptr %i.al, align 8, !alias.scope !85 ; 2 uses
  br i1 %i.bk, label %bb.m, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bl = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #20 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1      ; 2 uses
  %i.bo = trunc nuw i64 %i.bm to i1
  br i1 %i.bo, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp eq ptr %i.bn, null
  %.pre82.i = load i64, ptr %i.am, align 8        ; 3 uses
  br i1 %i.bp, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre83.i = load i64, ptr %i.f, align 8, !range !6, !alias.scope !85
  br label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp sgt i64 %.pre82.i, -1
  call void @llvm.assume(i1 %i.bq)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread33

bb.m:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.br = add nuw i64 %i.bh, 32
  %i.bs = shl nuw i64 %i.bh, 1
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.br, i64 range(i64 0, -1) %i.bs) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !88
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.bh, ptr %.pre84.i, i64 noundef %..i.i.i.i, i64 noundef 1, i64 noundef 1) #20, !noalias !89
  %i.bt = load i64, ptr %i.c, align 8, !range !13, !noalias !88, !noundef !5
  %i.bu = trunc nuw i64 %i.bt to i1
  br i1 %i.bu, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.i, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i: ; preds = %bb.m
  %i.bv = load ptr, ptr %i.aq, align 8, !noalias !88, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !88
  store ptr %i.bv, ptr %i.al, align 8, !alias.scope !89
  %i.bw = icmp sgt i64 %..i.i.i.i, -1
  call void @llvm.assume(i1 %i.bw)
  store i64 %..i.i.i.i, ptr %i.f, align 8, !alias.scope !89
  %.pre.i.i = sub nuw nsw i64 %..i.i.i.i, %i.bh
  %i.bx = icmp samesign ugt i64 %.pre.i.i, 31
  call void @llvm.assume(i1 %i.bx)
  br label %bb.n

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !88
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread

bb.n:                                             ; preds = %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i, %bb.i
  %i.by = phi i64 [ %i.bh, %bb.i ], [ %..i.i.i.i, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i ] ; 2 uses
  %i.bz = phi ptr [ %.pre84.i, %bb.i ], [ %i.bv, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bi
  %i.cb = sub nsw i64 %i.by, %i.bi                ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.037.3.i, i64 %i.cb) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !90
  store ptr %i.ca, ptr %i.d, align 8, !noalias !90
  store i64 %..i.i, ptr %i.ar, align 8, !noalias !90
  store i64 0, ptr %i.as, align 8, !noalias !90
  store i8 0, ptr %i.at, align 8, !noalias !90
  %i.cc = load i64, ptr %i.ao, align 8, !alias.scope !91, !noundef !5 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.thread.i, label %.lr.ph.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.thread.i: ; preds = %bb.n
  store i64 %i.bi, ptr %i.am, align 8, !alias.scope !85
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread37

.lr.ph.i:                                         ; preds = %bb.n, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i
  %i.ce = phi i64 [ %i.dy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i ], [ %i.cc, %bb.n ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.cf = load i64, ptr %i.ar, align 8, !alias.scope !93, !noalias !90, !noundef !5
  %i.cg = load i64, ptr %i.as, align 8, !alias.scope !93, !noalias !90, !noundef !5 ; 4 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = icmp ult i64 %i.ce, %i.ch
  br i1 %i.ci, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.cj = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #20, !noalias !85
  %i.ck = load i64, ptr %i.as, align 8, !alias.scope !93, !noalias !90, !noundef !5 ; 2 uses
  %.neg.i.i = sub i64 %i.cg, %i.ck
  %i.cl = load i64, ptr %i.ao, align 8, !alias.scope !94, !noundef !5
  %i.cm = add i64 %.neg.i.i, %i.cl
  store i64 %i.cm, ptr %i.ao, align 8, !alias.scope !94
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.cn = load i8, ptr %i.at, align 8, !range !14, !alias.scope !93, !noalias !90, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95
  %i.co = load ptr, ptr %i.d, align 8, !alias.scope !93, !noalias !90, !nonnull !5, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg ; 2 uses
  %i.cq = trunc nuw i8 %i.cn to i1
  store ptr %i.cp, ptr %i.b, align 8, !noalias !95
  store i64 %i.ce, ptr %i.au, align 8, !noalias !95
  store i64 0, ptr %i.av, align 8, !noalias !95
  store i8 0, ptr %i.aw, align 8, !noalias !95
  br i1 %i.cq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #20, !noalias !96 ; 2 uses
  %i.cs = load i8, ptr %i.aw, align 8, !range !14, !noalias !95, !noundef !5
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = load i64, ptr %i.av, align 8, !noalias !95, !noundef !5 ; 2 uses
  br i1 %i.ct, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5RPjO8Kzn89_6uu_tee.exit.i.i, label %bb.s

bb.r:                                             ; preds = %bb.p
  store i8 1, ptr %i.aw, align 8, !noalias !95
  %i.cv = call noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #20, !noalias !96
  %i.cw = load i64, ptr %i.av, align 8, !noalias !95, !noundef !5
  br label %bb.s

bb.s:                                             ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5RPjO8Kzn89_6uu_tee.exit.i.i, %bb.r, %bb.q
  %.sroa.09.0.i.i = phi i64 [ %i.cw, %bb.r ], [ %i.cu, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5RPjO8Kzn89_6uu_tee.exit.i.i ], [ %i.cu, %bb.q ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.cv, %bb.r ], [ %i.cr, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5RPjO8Kzn89_6uu_tee.exit.i.i ], [ %i.cr, %bb.q ]
  %i.cx = add i64 %.sroa.09.0.i.i, %i.cg          ; 2 uses
  store i64 %i.cx, ptr %i.as, align 8, !alias.scope !93, !noalias !90
  %i.cy = load i64, ptr %i.ao, align 8, !alias.scope !94, !noundef !5
  %i.cz = sub i64 %i.cy, %.sroa.09.0.i.i
  store i64 %i.cz, ptr %i.ao, align 8, !alias.scope !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i

_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs5RPjO8Kzn89_6uu_tee.exit.i.i: ; preds = %bb.q
  %i.da = sub nuw i64 %i.ch, %i.ce
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ce
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.db, i8 0, i64 range(i64 0, -9223372036854775808) %i.da, i1 false), !alias.scope !97, !noalias !96
  store i8 1, ptr %i.at, align 8, !alias.scope !93, !noalias !90
  br label %bb.s

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.s, %bb.o
  %i.dc = phi i64 [ %i.ck, %bb.o ], [ %i.cx, %bb.s ]
  %.sroa.0.0.i48.i = phi ptr [ %i.cj, %bb.o ], [ %.sroa.01.0.i.i, %bb.s ] ; 7 uses
  %i.dd = ptrtoint ptr %.sroa.0.0.i48.i to i64    ; 4 uses
  %.not45.i = icmp eq ptr %.sroa.0.0.i48.i, null
  br i1 %.not45.i, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i
  %i.de = and i64 %i.dd, 3
  switch i64 %i.de, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split58.i
    i64 1, label %.split57.i
  ], !prof !15

default.unreachable:                              ; preds = %bb.t
  unreachable

.split.i:                                         ; preds = %bb.t
  %i.df = lshr i64 %i.dd, 32
  %i.dg = trunc nuw i64 %i.df to i32
  %i.dh = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #20, !noalias !85
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !85, !nonnull !5, !noundef !5
  %i.dk = call noundef zeroext i1 %i.dj(i32 noundef %i.dg) #20, !noalias !85, !inline_history !70
  br i1 %i.dk, label %.thread61.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit

.split58.i:                                       ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i48.i, i64 16
  %i.dm = load i8, ptr %i.dl, align 8, !range !16, !noalias !85, !noundef !5
  %i.dn = icmp eq i8 %i.dm, 35
  br i1 %i.dn, label %.thread61.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit

.split57.i:                                       ; preds = %bb.t
  %i.do = getelementptr i8, ptr %.sroa.0.0.i48.i, i64 31
  %i.dp = load i8, ptr %i.do, align 8, !range !16, !noalias !85, !noundef !5
  %i.dq = icmp eq i8 %i.dp, 35
  br i1 %i.dq, label %bb.v, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.t
  %i.dr = lshr i64 %i.dd, 32
  %i.ds = icmp ult ptr %.sroa.0.0.i48.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.dr to i8
  %spec.select.i.i.i.i = select i1 %i.ds, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.dt = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.dt)
  %i.du = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.du, label %bb.u, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit

.thread61.i:                                      ; preds = %.split58.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i

bb.u:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  %i.dv = and i64 %i.dd, 1095216660480
  %i.dw = icmp ne i64 %i.dv, 1095216660480
  call void @llvm.assume(i1 %i.ds)
  call void @llvm.assume(i1 %i.dw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i

bb.v:                                             ; preds = %.split57.i
  %i.dx = getelementptr i8, ptr %.sroa.0.0.i48.i, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dx) ]
  store ptr %i.dx, ptr %i.ax, align 8, !alias.scope !98, !noalias !90
  store i8 3, ptr %i.a, align 8, !alias.scope !98, !noalias !90
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #20, !noalias !85
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.v, %bb.u, %.thread61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  %i.dy = load i64, ptr %i.ao, align 8, !alias.scope !99, !noundef !5 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.loopexit_crit_edge.i, label %.lr.ph.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.loopexit_crit_edge.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i
  %.pre86.pre.i = load i64, ptr %i.as, align 8, !noalias !90
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.loopexit_crit_edge.i
  %.pre86.i = phi i64 [ %.pre86.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.loopexit_crit_edge.i ], [ %i.dc, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.i ] ; 3 uses
  %.pre87.i = load i8, ptr %i.at, align 8, !range !14, !noalias !90
  %i.ea = add i64 %.pre86.i, %i.bi                ; 3 uses
  store i64 %i.ea, ptr %i.am, align 8, !alias.scope !85
  %i.eb = icmp eq i64 %.pre86.i, 0
  br i1 %i.eb, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread37, label %bb.x

bb.w:                                             ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.sroa.037.4.i = phi i64 [ -1, %bb.aa ], [ %i.ef, %bb.z ], [ %.sroa.037.3.i, %bb.y ], [ -1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !90
  br label %bb.h

bb.x:                                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i
  %i.ec = trunc nuw i8 %.pre87.i to i1
  br i1 %i.ec, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ed = icmp uge i64 %i.cb, %.sroa.037.3.i
  %i.ee = icmp eq i64 %.pre86.i, %..i.i
  %or.cond.i = and i1 %i.ed, %i.ee
  br i1 %or.cond.i, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.ef = shl nuw i64 %.sroa.037.3.i, 1
  %i.eg = icmp slt i64 %.sroa.037.3.i, 0
  br i1 %i.eg, label %bb.aa, label %bb.w, !prof !17

bb.aa:                                            ; preds = %bb.z
  br label %bb.w

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread37: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.thread.i
  %.pr104 = phi i64 [ %i.bi, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.thread.i ], [ %i.ea, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read8read_bufCs5RPjO8Kzn89_6uu_tee.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !90
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread33

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %.split58.i, %.split57.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !90
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread: ; preds = %bb.j, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.i, %bb.f, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit
  %i.eh = phi ptr [ %.sroa.0.0.i48.i, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit ], [ inttoptr (i64 163208757251 to ptr), %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5RPjO8Kzn89_6uu_tee.exit.i ], [ %i.ba, %bb.f ], [ %i.bn, %bb.j ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eh, ptr %i.ei, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ai

_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread33: ; preds = %bb.g, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread37, %bb.l
  %i.ej = phi i64 [ %.pre82.i, %bb.l ], [ %.pr104, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread37 ], [ %.pr.pre, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %.loopexit, label %.lr.ph.i15.preheader

.lr.ph.i15.preheader:                             ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread33
  %i.el = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
  %i.em = load i32, ptr %i.i, align 4, !range !10
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i16
  %.sroa.0.022.i = phi ptr [ %.sroa.0.113.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i16 ], [ %i.el, %.lr.ph.i15.preheader ] ; 3 uses
  %.sroa.6.021.i = phi i64 [ %.sroa.6.111.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i16 ], [ %i.ej, %.lr.ph.i15.preheader ] ; 6 uses
  br i1 %i.j, label %_RNvXs8_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedRRNtCs5RPjO8Kzn89_6uu_tee11NamedWriterNtB5_4AsFd5as_fdBJ_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i15
  %i.en = call noundef i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i) #20, !noalias !100
  br label %_RNvXs8_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedRRNtCs5RPjO8Kzn89_6uu_tee11NamedWriterNtB5_4AsFd5as_fdBJ_.exit.i.i

_RNvXs8_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedRRNtCs5RPjO8Kzn89_6uu_tee11NamedWriterNtB5_4AsFd5as_fdBJ_.exit.i.i: ; preds = %.lr.ph.i15, %bb.ab
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.en, %bb.ab ], [ %i.em, %.lr.ph.i15 ]
  %i.eo = inttoptr i64 %.sroa.6.021.i to ptr
  %i.ep = zext i32 %.sroa.0.0.i.i.i.i.i to i64
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 1 to ptr), ptr %i.eq, ptr nonnull readonly %.sroa.0.022.i, ptr nonnull %i.eo) #24, !noalias !101, !srcloc !18
  %i.es = extractvalue { ptr, i32, i32 } %i.er, 0 ; 4 uses
  %.not.i.i.i.i = icmp sgt ptr %i.es, inttoptr (i64 -4096 to ptr)
  %i.et = icmp slt ptr %i.es, null
  %.sroa.0.0.i.i.i.i = and i1 %.not.i.i.i.i, %i.et
  %i.eu = ptrtoint ptr %i.es to i64               ; 5 uses
  br i1 %.sroa.0.0.i.i.i.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_RNvXs8_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedRRNtCs5RPjO8Kzn89_6uu_tee11NamedWriterNtB5_4AsFd5as_fdBJ_.exit.i.i
  %i.ev = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !102
  %.not.i.i.i = icmp eq ptr %i.ev, @13
  br i1 %.not.i.i.i, label %.split.i17, label %bb.ad, !prof !19

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  br label %.split.i17

.split.i17:                                       ; preds = %bb.ad, %bb.ac
  %.neg.i.i18 = mul i64 %i.eu, -4294967296        ; 2 uses
  %i.ew = lshr exact i64 %.neg.i.i18, 32
  %i.ex = trunc nuw i64 %i.ew to i32
  %i.ey = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !5, !noundef !5
  %i.fb = call noundef zeroext i1 %i.fa(i32 noundef %i.ex) #20, !inline_history !81
  br i1 %i.fb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i16, label %.split.loop.exit.i

bb.ae:                                            ; preds = %_RNvXs8_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedRRNtCs5RPjO8Kzn89_6uu_tee11NamedWriterNtB5_4AsFd5as_fdBJ_.exit.i.i
  %i.fc = icmp eq ptr %i.es, null
  br i1 %i.fc, label %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allBQ_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = icmp ult i64 %.sroa.6.021.i, %i.eu
  br i1 %i.fd, label %bb.ag, label %bb.ah, !prof !17

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.eu, i64 noundef %.sroa.6.021.i, i64 noundef %.sroa.6.021.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #22
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.fe = sub nuw nsw i64 %.sroa.6.021.i, %i.eu
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 %i.eu
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i16

.split.loop.exit.i:                               ; preds = %.split.i17
  %i.fg = or disjoint i64 %.neg.i.i18, 2
  %i.fh = inttoptr i64 %i.fg to ptr
  br label %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allBQ_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i16: ; preds = %bb.ah, %.split.i17
  %.sroa.0.113.i = phi ptr [ %i.ff, %bb.ah ], [ %.sroa.0.022.i, %.split.i17 ]
  %.sroa.6.111.i = phi i64 [ %i.fe, %bb.ah ], [ %.sroa.6.021.i, %.split.i17 ] ; 2 uses
  %i.fi = icmp eq i64 %.sroa.6.111.i, 0
  br i1 %i.fi, label %.loopexit, label %.lr.ph.i15

_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allBQ_.exit: ; preds = %bb.ae, %.split.loop.exit.i
  %.sroa.07.1.i = phi ptr [ %i.fh, %.split.loop.exit.i ], [ @56, %bb.ae ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.1.i, ptr %i.fj, align 8
  store i8 1, ptr %0, align 8
  br label %bb.ai

.loopexit:                                        ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i16, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread33
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fk, align 1
  store i8 0, ptr %0, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRRNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allBQ_.exit, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee.exit.thread
  %.val = load i64, ptr %i.f, align 8, !range !6, !noundef !5 ; 2 uses
  %i.fl = icmp eq i64 %.val, 0
  br i1 %i.fl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5RPjO8Kzn89_6uu_tee.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val13 = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !105, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !105
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4) #20, !noalias !105
  %i.h = load i64, ptr %i.a, align 8, !range !13, !noalias !105, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !20, !noalias !105, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #23
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !105, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !105
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !105
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderEECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !117, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit
  %i.g = phi i64 [ %i.d, %.lr.ph ], [ %i.be, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit ]
  %..i.i = call noundef range(i64 1, 33) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.g, i64 32)
  %i.h = call { i64, ptr } @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef %..i.i) #20 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 14 uses
  %i.k = trunc nuw i64 %i.i to i1
  %2 = ptrtoint ptr %i.j to i64                   ; 6 uses
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.c, align 8, !alias.scope !117, !noundef !5 ; 2 uses
  %.not.i = icmp ult i64 %i.l, %2
  br i1 %.not.i, label %bb.d, label %.loopexit, !prof !17

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.m = and i64 %2, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split10
    i64 1, label %.split9
  ], !prof !15

default.unreachable:                              ; preds = %bb.e
  unreachable

.split:                                           ; preds = %bb.e
  %i.n = lshr i64 %2, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = call noundef zeroext i1 %i.r(i32 noundef %i.o) #20, !inline_history !108
  br i1 %i.s, label %.thread, label %.loopexit12

.split10:                                         ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !16, !noundef !5
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread, label %.loopexit12

.split9:                                          ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.j, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !16, !noundef !5
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %.loopexit12

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.e
  %i.z = lshr i64 %2, 32
  %i.aa = icmp ult ptr %i.j, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.z to i8
  %spec.select.i.i.i = select i1 %i.aa, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ab = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.ac, label %bb.i, label %.loopexit12

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !118, !noundef !5 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5RPjO8Kzn89_6uu_tee.exit

.loopexit:                                        ; preds = %bb.c
  %i.ag = sub nuw i64 %i.l, %2
  store i64 %i.ag, ptr %i.c, align 8, !alias.scope !117
  %i.ah = ptrtoint ptr %i.j to i64                ; 6 uses
  %i.ai = icmp ult ptr %i.j, inttoptr (i64 33 to ptr)
  br i1 %i.ai, label %bb.f, label %bb.h, !prof !119

bb.f:                                             ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !121, !noundef !5 ; 5 uses
  %i.al = load i64, ptr %1, align 8, !range !6, !alias.scope !121, !noundef !5
  %i.am = sub i64 %i.al, %i.ak
  %i.an = icmp ult i64 %i.am, %i.ah
  br i1 %i.an, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i, !prof !122

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i: ; preds = %bb.f
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ak, i64 noundef %i.ah, i64 noundef 1, i64 noundef 1) #20
  %i.ao = load i64, ptr %i.aj, align 8, !alias.scope !120, !noundef !5 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  br label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.f
  %i.aq = icmp sgt i64 %i.ak, -1
  call void @llvm.assume(i1 %i.aq)
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5RPjO8Kzn89_6uu_tee.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i
  %i.ar = phi i64 [ %i.ao, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.thread.i ], [ %i.ak, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !120, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull readonly align 1 %i.b, i64 %i.ah, i1 false), !noalias !120
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5RPjO8Kzn89_6uu_tee.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5RPjO8Kzn89_6uu_tee.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i.thread, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i, %bb.g
  %i.av = phi ptr [ %i.aj, %bb.g ], [ %i.aj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i ], [ %i.ad, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i.thread ]
  %.sroa.4.0.i.ph3035 = phi ptr [ %i.j, %bb.g ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i.thread ]
  %i.aw = phi i64 [ %i.ah, %bb.g ], [ %i.ah, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i.thread ]
  %i.ax = phi i64 [ %i.ar, %bb.g ], [ %i.ak, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i ], [ %i.ae, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i.thread ]
  %i.ay = add i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.av, align 8, !alias.scope !120
  br label %.loopexit12

bb.h:                                             ; preds = %.loopexit
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
  unreachable

.loopexit12:                                      ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split9, %.split10, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5RPjO8Kzn89_6uu_tee.exit
  %.sroa.3.0 = phi ptr [ %.sroa.4.0.i.ph3035, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5RPjO8Kzn89_6uu_tee.exit ], [ %i.j, %.split10 ], [ %i.j, %.split9 ], [ %i.j, %.split ], [ %i.j, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5RPjO8Kzn89_6uu_tee.exit ], [ 1, %.split10 ], [ 1, %.split9 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.az = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ba = insertvalue { i64, ptr } %i.az, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ba

.thread:                                          ; preds = %.split, %.split10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit

bb.i:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bb = and i64 %2, 1095216660480
  %i.bc = icmp ne i64 %i.bb, 1095216660480
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.assume(i1 %i.bc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit

bb.j:                                             ; preds = %.split9
  %i.bd = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  store ptr %i.bd, ptr %i.f, align 8, !alias.scope !123
  store i8 3, ptr %i.a, align 8, !alias.scope !123
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.i, %bb.j, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = load i64, ptr %i.c, align 8, !alias.scope !117, !noundef !5 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5RPjO8Kzn89_6uu_tee.exit.i.thread, label %bb.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMCs5RPjO8Kzn89_6uu_teeNtB4_11MultiWriter11write_flush0B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.f = load i32, ptr %i.b, align 8, !range !4, !alias.scope !140, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.h = trunc nuw i32 %i.f to i1
  %i.i = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %_RNvMs_Cs5RPjO8Kzn89_6uu_teeNtB4_6Writer9write_all.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.val.i = load i32, ptr %i.g, align 4, !alias.scope !140
  %i.j = zext i32 %.val.i to i64
  %i.k = inttoptr i64 %i.j to ptr
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i, %.lr.ph.i.i
  %.sroa.0.022.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %.sroa.0.113.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i ] ; 3 uses
  %.sroa.6.021.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ %.sroa.6.111.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i ] ; 6 uses
  %i.l = inttoptr i64 %.sroa.6.021.i.i to ptr
  %i.m = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 1 to ptr), ptr %i.k, ptr nonnull readonly %.sroa.0.022.i.i, ptr nonnull %i.l) #24, !noalias !141, !srcloc !18
  %i.n = extractvalue { ptr, i32, i32 } %i.m, 0   ; 4 uses
  %.not.i.i.i.i.i = icmp sgt ptr %i.n, inttoptr (i64 -4096 to ptr)
  %i.o = icmp slt ptr %i.n, null
  %.sroa.0.0.i.i.i.i.i = and i1 %.not.i.i.i.i.i, %i.o
  %i.p = ptrtoint ptr %i.n to i64                 ; 5 uses
  br i1 %.sroa.0.0.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !142
  %.not.i.i.i.i = icmp eq ptr %i.q, @13
  br i1 %.not.i.i.i.i, label %.split.i.i, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20, !noalias !140
  br label %.split.i.i

.split.i.i:                                       ; preds = %bb.e, %bb.d
  %.neg.i.i.i = mul i64 %i.p, -4294967296         ; 2 uses
  %i.r = lshr exact i64 %.neg.i.i.i, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = tail call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #20, !noalias !140
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !140, !nonnull !5, !noundef !5
  %i.w = tail call noundef zeroext i1 %i.v(i32 noundef %i.s) #20, !noalias !140, !inline_history !133
  br i1 %i.w, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i, label %.split.loop.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.x = icmp eq ptr %i.n, null
  br i1 %i.x, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp ult i64 %.sroa.6.021.i.i, %i.p
  br i1 %i.y, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.p, i64 noundef %.sroa.6.021.i.i, i64 noundef %.sroa.6.021.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #22, !noalias !140
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = sub nuw nsw i64 %.sroa.6.021.i.i, %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 %i.p
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i

.split.loop.exit.i.i:                             ; preds = %.split.i.i
  %i.ab = or disjoint i64 %.neg.i.i.i, 2
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %.loopexit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i: ; preds = %bb.i, %.split.i.i
  %.sroa.0.113.i.i = phi ptr [ %i.aa, %bb.i ], [ %.sroa.0.022.i.i, %.split.i.i ]
  %.sroa.6.111.i.i = phi i64 [ %i.z, %bb.i ], [ %.sroa.6.021.i.i, %.split.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.sroa.6.111.i.i, 0
  br i1 %i.ad, label %_RNvMs_Cs5RPjO8Kzn89_6uu_teeNtB4_6Writer9write_all.exit, label %bb.c

bb.j:                                             ; preds = %bb.a
  br i1 %i.i, label %_RNvMs_Cs5RPjO8Kzn89_6uu_teeNtB4_6Writer9write_all.exit, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.s, %.lr.ph.i1.i
  %.sroa.0.024.i.i = phi ptr [ %i.c, %.lr.ph.i1.i ], [ %.sroa.0.116.i.i, %bb.s ] ; 3 uses
  %.sroa.6.023.i.i = phi i64 [ %i.e, %.lr.ph.i1.i ], [ %.sroa.6.114.i.i, %bb.s ] ; 6 uses
  %i.af = call { i64, ptr } @_RNvXsb_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.024.i.i, i64 noundef %.sroa.6.023.i.i) #20 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 11 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 8 uses
  %i.aj = trunc nuw i64 %i.ag to i1
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  %i.ak = and i64 %i.ai, 3
  switch i64 %i.ak, label %default.unreachable [
    i64 2, label %.split.i4.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i
    i64 0, label %.split11.i.i
    i64 1, label %.split10.i.i
  ], !prof !15

default.unreachable:                              ; preds = %bb.l
  unreachable

.split.i4.i:                                      ; preds = %bb.l
  %i.al = lshr i64 %i.ai, 32
  %i.am = trunc nuw i64 %i.al to i32
  %i.an = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  %i.aq = call noundef zeroext i1 %i.ap(i32 noundef %i.am) #20, !inline_history !134
  br i1 %i.aq, label %.thread.i.i, label %.loopexit

.split11.i.i:                                     ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.as = load i8, ptr %i.ar, align 8, !range !16, !noundef !5
  %i.at = icmp eq i8 %i.as, 35
  br i1 %i.at, label %.thread.i.i, label %.loopexit

.split10.i.i:                                     ; preds = %bb.l
  %i.au = getelementptr i8, ptr %i.ah, i64 31
  %i.av = load i8, ptr %i.au, align 8, !range !16, !noundef !5
  %i.aw = icmp eq i8 %i.av, 35
  br i1 %i.aw, label %bb.r, label %.loopexit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i: ; preds = %bb.l
  %i.ax = lshr i64 %i.ai, 32
  %i.ay = icmp ult ptr %i.ah, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.ax to i8
  %spec.select.i.i.i.i.i = select i1 %i.ay, i8 %switch.idx.cast.i.i.i.i.i, i8 -1 ; 2 uses
  %i.az = icmp ne i8 %spec.select.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.az)
  %i.ba = icmp eq i8 %spec.select.i.i.i.i.i, 35
  br i1 %i.ba, label %bb.q, label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.bb = icmp eq ptr %i.ah, null
  br i1 %i.bb, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = icmp ult i64 %.sroa.6.023.i.i, %i.ai
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !17

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %.sroa.6.023.i.i, i64 noundef %.sroa.6.023.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #22
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bd = sub nuw nsw i64 %.sroa.6.023.i.i, %i.ai
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i.i, i64 %i.ai
  br label %bb.s

.thread.i.i:                                      ; preds = %.split11.i.i, %.split.i4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i3.i

bb.q:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  %i.bf = and i64 %i.ai, 1095216660480
  %i.bg = icmp ne i64 %i.bf, 1095216660480
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.assume(i1 %i.bg)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i3.i

bb.r:                                             ; preds = %.split10.i.i
  %i.bh = getelementptr i8, ptr %i.ah, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  store ptr %i.bh, ptr %i.ae, align 8, !alias.scope !144, !noalias !143
  store i8 3, ptr %i.a, align 8, !alias.scope !144, !noalias !143
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i3.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i3.i: ; preds = %bb.r, %bb.q, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i3.i, %bb.p
  %.sroa.0.116.i.i = phi ptr [ %.sroa.0.024.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i3.i ], [ %i.be, %bb.p ]
  %.sroa.6.114.i.i = phi i64 [ %.sroa.6.023.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i3.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bi = icmp eq i64 %.sroa.6.114.i.i, 0
  br i1 %i.bi, label %_RNvMs_Cs5RPjO8Kzn89_6uu_teeNtB4_6Writer9write_all.exit, label %bb.k

.loopexit:                                        ; preds = %.split.i4.i, %.split10.i.i, %.split11.i.i, %bb.m, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i, %bb.f, %.split.loop.exit.i.i
  %.sroa.0.0.i.ph = phi ptr [ @56, %bb.f ], [ %i.ac, %.split.loop.exit.i.i ], [ %i.ah, %.split.i4.i ], [ %i.ah, %.split10.i.i ], [ %i.ah, %.split11.i.i ], [ @56, %bb.m ], [ %i.ah, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5
  %i.bl = load i8, ptr %i.bk, align 1, !range !21, !noundef !5
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !5, !align !8, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.bp, align 8
  %i.bq = call fastcc noundef zeroext i1 @_RNvCs5RPjO8Kzn89_6uu_tee13process_error(i8 noundef %i.bl, ptr noundef nonnull %.sroa.0.0.i.ph, ptr %.val, i64 %.val3, ptr noalias nofree noundef align 8 dereferenceable(8) %i.bn) #20
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !range !14, !noundef !5
  %i.bu = zext i1 %i.bq to i8
  %i.bv = or i8 %i.bt, %i.bu
  store i8 %i.bv, ptr %i.bs, align 1
  br label %_RNvMs_Cs5RPjO8Kzn89_6uu_teeNtB4_6Writer9write_all.exit

_RNvMs_Cs5RPjO8Kzn89_6uu_teeNtB4_6Writer9write_all.exit: ; preds = %bb.s, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i, %bb.j, %bb.b, %.loopexit
  %.not8 = phi i1 [ false, %.loopexit ], [ true, %bb.b ], [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i ], [ true, %bb.j ], [ true, %bb.s ]
  ret i1 %.not8
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvCs5RPjO8Kzn89_6uu_tee13process_error(i8 noundef range(i8 -1, 4) %0, ptr noundef nonnull %1, ptr %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.g, align 8
  switch i8 %0, label %bb.j [
    i8 -1, label %bb.b
    i8 1, label %bb.b
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.i = and i64 %i.h, 3                          ; 2 uses
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !15

default.unreachable:                              ; preds = %bb.p, %bb.k, %bb.g, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.h, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = tail call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = tail call noundef i8 %i.n(i32 noundef %i.k) #20, !inline_history !145
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i64 %i.h, 32
  %i.q = icmp ult ptr %1, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8   ; 2 uses
  %i.r = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.r)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !16, !noundef !5
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %1, i64 31
  %i.v = load i8, ptr %i.u, align 8, !range !16, !noundef !5
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.o, %bb.c ], [ %switch.idx.cast.i.i.i, %bb.d ], [ %i.t, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i8 %.sroa.0.0.i, 11
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit
    i64 3, label %bb.h
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit
    i64 1, label %bb.i
  ], !prof !15

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ult ptr %1, inttoptr (i64 188978561024 to ptr)
  %i.y = and i64 %i.h, 1095216660480
  %i.z = icmp ne i64 %i.y, 1095216660480
  tail call void @llvm.assume(i1 %i.x)
  tail call void @llvm.assume(i1 %i.z)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %1, i64 -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !152
  store i8 3, ptr %i.c, align 8, !alias.scope !152
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.g, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.j:                                             ; preds = %bb.a, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store i64 1, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.16.val, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.ad, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs3_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ae = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @7, ptr noundef nonnull %i.d) #20 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i
    i64 1, label %bb.m
  ], !prof !15

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp ult ptr %i.ae, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.ae, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !153
  store i8 3, ptr %i.b, align 8, !alias.scope !153
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.j, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.an = and i8 %0, -2
  %switch = icmp eq i8 %i.an, 2                   ; 2 uses
  br i1 %switch, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit20, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit
  %.sroa.03.0 = phi i1 [ %switch, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit20 ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit ]
  ret i1 %.sroa.03.0

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit
  %i.ao = load i64, ptr %2, align 8, !noundef !5
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %2, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit, %bb.o
  %.val = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aq = ptrtoint ptr %.val to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 3
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit20
    i64 3, label %bb.q
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit20
    i64 1, label %bb.r
  ], !prof !15

bb.q:                                             ; preds = %bb.p
  %i.as = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.at = and i64 %i.aq, 1095216660480
  %i.au = icmp ne i64 %i.at, 1095216660480
  call void @llvm.assume(i1 %i.as)
  call void @llvm.assume(i1 %i.au)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit20

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr i8, ptr %.val, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !154
  store i8 3, ptr %i.a, align 8, !alias.scope !154
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit20

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit20: ; preds = %bb.p, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvCs5RPjO8Kzn89_6uu_tee3tee(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [32768 x i8], align 1             ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [4 x i8], align 4                 ; 6 uses
  %i.w = alloca [4 x i8], align 4                 ; 7 uses
  %i.x = alloca [4 x i8], align 4                 ; 7 uses
  %i.y = alloca [4 x i8], align 4                 ; 9 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 10 uses
  %i.af = alloca [8 x i8], align 8                ; 9 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [40 x i8], align 8               ; 20 uses
  %.sroa.037 = alloca [24 x i8], align 8          ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ak = load i8, ptr %i.aj, align 1, !range !14, !noundef !5
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.an = load i8, ptr %i.am, align 1, !range !21, !noundef !5 ; 2 uses
  %.not5 = icmp eq i8 %i.an, -1
  br i1 %.not5, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.ao = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals17ignore_interrupts() #20
  %.not = icmp eq i32 %i.ao, -1
  br i1 %.not, label %bb.b, label %bb.dx

bb.d:                                             ; preds = %bb.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5 ; 3 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !351
  store ptr null, ptr %i.af, align 8, !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !352
  store ptr %i.aq, ptr %i.ae, align 8, !alias.scope !353, !noalias !354
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.at, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !353, !noalias !354
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !353, !noalias !354
  %.sroa.4.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx9.i, align 8, !alias.scope !353, !noalias !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !357
  call fastcc void @_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae) #20, !noalias !358
  %i.au = load i64, ptr %i.ac, align 8, !range !7, !noalias !357, !noundef !5
  %.not.i.i.i.i.i = icmp eq i64 %i.au, -1
  br i1 %.not.i.i.i.i.i, label %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.thread.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !359
  %i.av = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 128, i64 noundef range(i64 1, 9) 8) #20, !noalias !359 ; 6 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.e, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 128) #23, !noalias !357
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !357
  store i64 4, ptr %i.ad, align 8, !noalias !357
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !357
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !358
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !362
  call fastcc void @_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab) #20, !noalias !363
  %i.ax = load i64, ptr %i.aa, align 8, !range !7, !noalias !364, !noundef !5
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %i.ax, -1
  br i1 %.not1.i.i.i.i.i.i.i, label %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE7reserveBG_.exit.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.bd, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE7reserveBG_.exit.i.i.i.i.i.i.i ], [ %i.av, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i ]
  %i.az = phi i64 [ %i.be, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE7reserveBG_.exit.i.i.i.i.i.i.i ], [ 4, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i ] ; 3 uses
  %i.ba = phi i64 [ %i.bg, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE7reserveBG_.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i ] ; 4 uses
  %i.bb = icmp samesign ult i64 %i.ba, 288230376151711744
  call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp eq i64 %i.ba, %i.az
  br i1 %i.bc, label %_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2E_.exit.i.i.i.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE7reserveBG_.exit.i.i.i.i.i.i.i

_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2E_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.az, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 32) #20, !noalias !365
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !366, !noalias !357
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !366, !noalias !357
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE7reserveBG_.exit.i.i.i.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE7reserveBG_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2E_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.bd = phi ptr [ %.pre.i.i.i.i.i, %_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2E_.exit.i.i.i.i.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %i.be = phi i64 [ %.pre2.i.i.i.i.i.i.i, %_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2E_.exit.i.i.i.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !364
  %i.bg = add nuw nsw i64 %i.ba, 1                ; 4 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !366, !noalias !357
  call fastcc void @_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab) #20, !noalias !363
  %i.bh = load i64, ptr %i.aa, align 8, !range !7, !noalias !364, !noundef !5
  %.not.i.i2.i.i.i.i.i = icmp eq i64 %i.bh, -1
  br i1 %.not.i.i2.i.i.i.i.i, label %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE7reserveBG_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !352
  %i.bi = load ptr, ptr %i.af, align 8, !noalias !351, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit, label %.lr.ph.i.i.i.preheader.i

_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !352
  %i.bj = load ptr, ptr %i.af, align 8, !noalias !351, !noundef !5 ; 2 uses
  %.not.i163 = icmp eq ptr %i.bj, null
  br i1 %.not.i163, label %.sink.split, label %.lr.ph.i.i.i.preheader.i

_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.thread.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !352
  %i.bk = load ptr, ptr %i.af, align 8, !noalias !351, !noundef !5 ; 2 uses
  %.not15.i = icmp eq ptr %i.bk, null
  br i1 %.not15.i, label %.sink.split, label %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit.thread

.lr.ph.i.i.i.preheader.i:                         ; preds = %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i
  %i.bl = phi ptr [ %i.bj, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread ], [ %i.bi, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i ] ; 2 uses
  %.sroa.0.0.copyload3.i168 = phi i64 [ 4, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread ], [ %i.be, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i ] ; 2 uses
  %.sroa.6.0.copyload5.i166 = phi ptr [ %i.av, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread ], [ %i.bd, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i ] ; 2 uses
  %.sroa.8.0.copyload7.i164 = phi i64 [ 1, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread ], [ %i.bg, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.bn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %.sroa.6.0.copyload5.i166, i64 %.sroa.0.03.i.i.i.i ; 4 uses
  %i.bn = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %.val2.i.i.i.i.i = load i32, ptr %i.bo, align 4, !range !4, !alias.scope !369, !noalias !370, !noundef !5
  %i.bp = icmp eq i32 %.val2.i.i.i.i.i, 0
  br i1 %i.bp, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %.val3.i.i.i.i.i = load i32, ptr %i.bq, align 4, !alias.scope !369, !noalias !370
  %i.br = call noundef i32 @close(i32 noundef %.val3.i.i.i.i.i) #20, !noalias !371 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.bm, align 8, !range !6, !alias.scope !369, !noalias !370, !noundef !5 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !369, !noalias !370, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !371
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i: ; preds = %bb.g, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i
  %i.bu = icmp eq i64 %i.bn, %.sroa.8.0.copyload7.i164
  br i1 %i.bu, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i
  %i.bv = icmp eq i64 %.sroa.0.0.copyload3.i168, 0
  br i1 %i.bv, label %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i
  %i.bw = shl nuw i64 %.sroa.0.0.copyload3.i168, 5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload5.i166, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !370
  br label %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit.thread

_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit.thread: ; preds = %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.thread.i, %bb.h, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i
  %.sroa.8.0.ph = phi ptr [ %i.bl, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i ], [ %i.bl, %bb.h ], [ %i.bk, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !351
  br label %bb.j

_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit: ; preds = %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !351
  %i.bx = icmp eq i64 %i.be, -1
  br i1 %i.bx, label %bb.j, label %bb.m

bb.i:                                             ; preds = %bb.b
  %i.by = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19disable_pipe_errors() #20
  %.not6 = icmp eq i32 %i.by, -1
  br i1 %.not6, label %bb.d, label %bb.dx

bb.j:                                             ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit.thread, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit
  %.sroa.8.060 = phi ptr [ %.sroa.8.0.ph, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit.thread ], [ %i.bd, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.060) ]
  %i.bz = ptrtoint ptr %.sroa.8.060 to i64        ; 2 uses
  %i.ca = and i64 %i.bz, 3
  switch i64 %i.ca, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit
    i64 3, label %bb.k
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit
    i64 1, label %bb.l
  ], !prof !15

default.unreachable:                              ; preds = %bb.dj, %bb.de, %bb.aw, %bb.at, %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.cb = icmp ult ptr %.sroa.8.060, inttoptr (i64 188978561024 to ptr)
  %i.cc = and i64 %i.bz, 1095216660480
  %i.cd = icmp ne i64 %i.cc, 1095216660480
  call void @llvm.assume(i1 %i.cb)
  call void @llvm.assume(i1 %i.cd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit

bb.l:                                             ; preds = %bb.j
  %i.ce = getelementptr i8, ptr %.sroa.8.060, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.ce, ptr %i.cf, align 8, !alias.scope !372
  store i8 3, ptr %i.z, align 8, !alias.scope !372
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.j, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.sink.split203

.sink.split:                                      ; preds = %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.thread.i, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread
  %.sroa.0.05667.ph = phi i64 [ 4, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread ], [ 0, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.thread.i ]
  %.sroa.8.066.ph = phi ptr [ %i.av, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread ], [ inttoptr (i64 8 to ptr), %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.thread.i ]
  %.sroa.12.065.ph = phi i64 [ 1, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.i.thread ], [ 0, %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtBa_2io5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1V_EE9from_iterINtNtNtB2r_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB1m_3tees0_0EE0B1m_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !351
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit
  %.sroa.0.05667 = phi i64 [ %i.be, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit ], [ %.sroa.0.05667.ph, %.sink.split ] ; 2 uses
  %.sroa.8.066 = phi ptr [ %i.bd, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit ], [ %.sroa.8.066.ph, %.sink.split ] ; 2 uses
  %.sroa.12.065 = phi i64 [ %i.bg, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0ENtB2x_11NamedWriterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorENCINvXso_B3n_IB3l_INtNtCs7tKScEop1B6_5alloc3vec3VecB31_EB47_EINtNtNtB4_6traits7collect12FromIteratorIB3l_B31_B47_EE9from_iterBQ_E0B4O_EB2x_.exit ], [ %.sroa.12.065.ph, %.sink.split ] ; 7 uses
  store i64 %.sroa.0.05667, ptr %i.ai, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %.sroa.8.066, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i64 %.sroa.12.065, ptr %.sroa.554.0..sroa_idx, align 8
  %i.cg = icmp samesign ult i64 %.sroa.12.065, 288230376151711744
  call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp ult i64 %i.as, 384307168202282326
  call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp eq i64 %.sroa.12.065, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.037)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.037, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 19) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.cj = icmp eq i64 %.sroa.12.065, %.sroa.0.05667
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #25, !noalias !374
  %.pre = load ptr, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !373
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ck = phi ptr [ %.pre, %bb.n ], [ %.sroa.8.066, %bb.m ] ; 5 uses
  %.not.i8 = icmp eq i64 %.sroa.12.065, 0
  br i1 %.not.i8, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE10insert_mutBG_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = shl nuw nsw i64 %.sroa.12.065, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr nonnull align 8 %i.ck, i64 %i.cm, i1 false), !noalias !375
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE10insert_mutBG_.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE10insert_mutBG_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.037, i64 24, i1 false), !noalias !373
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i32 1, ptr %.sroa.438.0..sroa_idx, align 8, !noalias !373
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  store i32 1, ptr %.sroa.539.0..sroa_idx, align 4, !noalias !373
  %i.cn = add nuw nsw i64 %.sroa.12.065, 1
  store i64 %i.cn, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !373
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 33 ; 4 uses
  store i8 %i.an, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 5 uses
  store i64 0, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 8 uses
  store i8 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.cs = load i8, ptr %i.cr, align 2, !range !14, !noundef !5
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.di, label %bb.q

bb.q:                                             ; preds = %bb.dm, %bb.dn, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE10insert_mutBG_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !376
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h) #20, !noalias !376
  %i.cu = load i32, ptr %i.h, align 8, !range !4, !noalias !376, !noundef !5
  %i.cv = trunc nuw i32 %i.cu to i1
  br i1 %i.cv, label %bb.aw, label %bb.s

bb.r:                                             ; preds = %bb.av, %bb.au, %bb.at, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !377
  %i.cw = call noundef i32 @close(i32 noundef %i.db) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !376
  %i.cx = call noundef i32 @close(i32 noundef %i.cz) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !376
  br label %bb.as

bb.s:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !range !10, !noalias !376, !noundef !5 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.db = load i32, ptr %i.da, align 8, !range !10, !noalias !376, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !376
  store i32 %i.cz, ptr %i.y, align 4, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !376
  store i32 %i.db, ptr %i.x, align 4, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !376
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g) #20
  %i.dc = load i32, ptr %i.g, align 8, !range !4, !noalias !376, !noundef !5
  %i.dd = trunc nuw i32 %i.dc to i1
  br i1 %i.dd, label %bb.at, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.df = load i32, ptr %i.de, align 4, !range !10, !noalias !376, !noundef !5 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !range !10, !noalias !376, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !376
  store i32 %i.df, ptr %i.w, align 4, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !376
  store i32 %i.dh, ptr %i.v, align 4, !noalias !376
  %i.di = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.w) #20
  %i.dj = zext i32 %i.di to i64
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.dk, ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #24, !noalias !378, !srcloc !18
  %i.dm = extractvalue { ptr, i32, i32 } %i.dl, 0 ; 2 uses
  %.not.i.i.i = icmp sgt ptr %i.dm, inttoptr (i64 -4096 to ptr)
  %i.dn = icmp slt ptr %i.dm, null
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.dn
  br i1 %.sroa.0.0.i.i.i, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit.i, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit46.i

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit46.i: ; preds = %bb.t
  %i.do = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.y) #20
  %i.dp = zext i32 %i.do to i64
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.dq, ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #24, !noalias !379, !srcloc !18 ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !376, !noundef !5
  %.not.i9 = icmp eq i64 %i.dt, 0
  br i1 %.not.i9, label %bb.x, label %bb.u

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit.i: ; preds = %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.i, %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.8232.0..sroa_idx283.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.y

bb.u:                                             ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit46.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !376, !nonnull !5, !noundef !5 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !range !4, !alias.scope !380, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 28 ; 2 uses
  %i.ee = trunc nuw i32 %i.ec to i1
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = load i32, ptr %i.ed, align 4, !range !10, !alias.scope !380, !noundef !5
  br label %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.i

bb.w:                                             ; preds = %bb.u
  %i.eg = call noundef i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ed) #20
  br label %_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.i

_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd.exit.i: ; preds = %bb.w, %bb.v
  %.sroa.0.0.i.i = phi i32 [ %i.ef, %bb.v ], [ %i.eg, %bb.w ]
  %i.eh = zext i32 %.sroa.0.0.i.i to i64
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.ei, ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #24, !noalias !381, !srcloc !18 ; 0 uses
  br label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit.i

bb.x:                                             ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit46.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22
  unreachable

bb.y:                                             ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit.i
  %i.ek = call noundef i32 @_RNvXsA_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeWriterNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.x) #20
  %i.el = zext i32 %i.ek to i64
end_hunk_0
begin_hunk_1_@_RNvCs5RPjO8Kzn89_6uu_tee3tee:bb.a

bb.dn:                                            ; preds = %bb.dm
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.sb = load i64, ptr %i.sa, align 8, !noundef !5 ; 2 uses
  %i.sc = icmp ult i64 %i.sb, 288230376151711744
  call void @llvm.assume(i1 %i.sc)
  %i.sd = icmp eq i64 %i.sb, 1
  br i1 %i.sd, label %bb.dt, label %bb.q

.critedge:                                        ; preds = %bb.z, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit.i
  %i.se = call noundef i32 @close(i32 noundef %i.dh) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !376
  %i.sf = call noundef i32 @close(i32 noundef %i.df) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !376
  %i.sg = call noundef i32 @close(i32 noundef %i.db) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !376
  %i.sh = call noundef i32 @close(i32 noundef %i.cz) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !376
  br label %bb.do

bb.do:                                            ; preds = %.critedge, %.loopexit314.i
  %i.si = load i64, ptr %i.cp, align 8
  %i.sj = icmp eq i64 %i.si, 0
  %or.cond = select i1 %i.ci, i1 %i.sj, i1 false
  br i1 %or.cond, label %bb.dt, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i = load ptr, ptr %i.sk, align 8, !alias.scope !467, !nonnull !5, !noundef !5 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val1.i.i = load i64, ptr %i.sl, align 8, !alias.scope !467, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.sm = icmp eq i64 %.val1.i.i, 0
  br i1 %i.sm, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i21, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.dp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i20
  %.sroa.0.03.i.i.i.i15 = phi i64 [ %i.so, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i20 ], [ 0, %bb.dp ] ; 2 uses
  %i.sn = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.03.i.i.i.i15 ; 4 uses
  %i.so = add nuw nsw i64 %.sroa.0.03.i.i.i.i15, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  %.val2.i.i.i.i.i16 = load i32, ptr %i.sp, align 4, !range !4, !alias.scope !470, !noalias !467, !noundef !5
  %i.sq = icmp eq i32 %.val2.i.i.i.i.i16, 0
  br i1 %i.sq, label %bb.dq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i17

bb.dq:                                            ; preds = %.lr.ph.i.i.i.i14
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 28
  %.val3.i.i.i.i.i22 = load i32, ptr %i.sr, align 4, !alias.scope !470, !noalias !467
  %i.ss = call noundef i32 @close(i32 noundef %.val3.i.i.i.i.i22) #20, !noalias !471 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i17

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i17: ; preds = %bb.dq, %.lr.ph.i.i.i.i14
  %.val.i.i.i.i.i18 = load i64, ptr %i.sn, align 8, !range !6, !alias.scope !470, !noalias !467, !noundef !5 ; 2 uses
  %i.st = icmp eq i64 %.val.i.i.i.i.i18, 0
  br i1 %i.st, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i20, label %bb.dr

bb.dr:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i17
  %i.su = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %.val1.i.i.i.i.i19 = load ptr, ptr %i.su, align 8, !alias.scope !470, !noalias !467, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i19, i64 noundef %.val.i.i.i.i.i18, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !471
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i20

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i20: ; preds = %bb.dr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i17
  %i.sv = icmp eq i64 %i.so, %.val1.i.i
  br i1 %i.sv, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i21, label %.lr.ph.i.i.i.i14

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i21: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i20, %bb.dp
  %.val2.i.i = load i64, ptr %i.ah, align 8, !range !6, !alias.scope !467, !noundef !5 ; 2 uses
  %i.sw = icmp eq i64 %.val2.i.i, 0
  br i1 %i.sw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11MultiWriterEBD_.exit, label %bb.ds

bb.ds:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i21
  %i.sx = shl nuw i64 %.val2.i.i, 5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.sx, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !467
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11MultiWriterEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11MultiWriterEBD_.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i21, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %.sink.split203

bb.dt:                                            ; preds = %_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter15copy_unbuffered.exit, %.loopexit314.i.thread, %bb.do, %bb.dn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit13
  %.sroa.0.0 = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit13 ], [ false, %bb.dn ], [ true, %_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter15copy_unbuffered.exit ], [ false, %bb.do ], [ true, %.loopexit314.i.thread ]
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i23 = load ptr, ptr %i.sy, align 8, !alias.scope !474, !nonnull !5, !noundef !5 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val1.i.i24 = load i64, ptr %i.sz, align 8, !alias.scope !474, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.ta = icmp eq i64 %.val1.i.i24, 0
  br i1 %i.ta, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i32, label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %bb.dt, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i31
  %.sroa.0.03.i.i.i.i26 = phi i64 [ %i.tc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i31 ], [ 0, %bb.dt ] ; 2 uses
  %i.tb = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i23, i64 %.sroa.0.03.i.i.i.i26 ; 4 uses
  %i.tc = add nuw nsw i64 %.sroa.0.03.i.i.i.i26, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %.val2.i.i.i.i.i27 = load i32, ptr %i.td, align 4, !range !4, !alias.scope !477, !noalias !474, !noundef !5
  %i.te = icmp eq i32 %.val2.i.i.i.i.i27, 0
  br i1 %i.te, label %bb.du, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i28

bb.du:                                            ; preds = %.lr.ph.i.i.i.i25
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 28
  %.val3.i.i.i.i.i34 = load i32, ptr %i.tf, align 4, !alias.scope !477, !noalias !474
  %i.tg = call noundef i32 @close(i32 noundef %.val3.i.i.i.i.i34) #20, !noalias !478 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i28

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i28: ; preds = %bb.du, %.lr.ph.i.i.i.i25
  %.val.i.i.i.i.i29 = load i64, ptr %i.tb, align 8, !range !6, !alias.scope !477, !noalias !474, !noundef !5 ; 2 uses
  %i.th = icmp eq i64 %.val.i.i.i.i.i29, 0
  br i1 %i.th, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i31, label %bb.dv

bb.dv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i28
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %.val1.i.i.i.i.i30 = load ptr, ptr %i.ti, align 8, !alias.scope !477, !noalias !474, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i30, i64 noundef %.val.i.i.i.i.i29, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !478
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i31

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i31: ; preds = %bb.dv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i.i28
  %i.tj = icmp eq i64 %i.tc, %.val1.i.i24
  br i1 %i.tj, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i32, label %.lr.ph.i.i.i.i25

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i32: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i.i31, %bb.dt
  %.val2.i.i33 = load i64, ptr %i.ah, align 8, !range !6, !alias.scope !474, !noundef !5 ; 2 uses
  %i.tk = icmp eq i64 %.val2.i.i33, 0
  br i1 %i.tk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11MultiWriterEBD_.exit35, label %bb.dw

bb.dw:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i32
  %i.tl = shl nuw i64 %.val2.i.i33, 5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i23, i64 noundef %i.tl, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !474
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11MultiWriterEBD_.exit35

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11MultiWriterEBD_.exit35: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i32, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %.sink.split203

.sink.split203:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11MultiWriterEBD_.exit35, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11MultiWriterEBD_.exit
  %.sroa.0.1.ph = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11MultiWriterEBD_.exit ], [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit ], [ %.sroa.0.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11MultiWriterEBD_.exit35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.dx

bb.dx:                                            ; preds = %.sink.split203, %bb.i, %bb.c
  %.sroa.0.1 = phi i1 [ true, %bb.i ], [ true, %bb.c ], [ %.sroa.0.1.ph, %.sink.split203 ]
  ret i1 %.sroa.0.1
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE8grow_oneBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !481
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !481
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32) #20, !noalias !481
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !481, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !20, !noalias !481, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !481
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !481, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !481
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !481
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !481
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5RPjO8Kzn89_6uu_tee(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 73) %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !12
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #20
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.j = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #20
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintE9drop_slowCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs5RPjO8Kzn89_6uu_tee.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs5RPjO8Kzn89_6uu_tee.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs5RPjO8Kzn89_6uu_tee.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs5RPjO8Kzn89_6uu_tee3cli6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs5RPjO8Kzn89_6uu_tee.exit:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [640 x i8], align 8               ; 61 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [640 x i8], align 8               ; 52 uses
  %i.i = alloca [640 x i8], align 8               ; 56 uses
  %.sroa.0543 = alloca [80 x i8], align 8         ; 4 uses
  %.sroa.9553 = alloca [536 x i8], align 8        ; 4 uses
  %i.j = alloca [640 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [640 x i8], align 8               ; 53 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [640 x i8], align 8               ; 54 uses
  %i.o = alloca [640 x i8], align 8               ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [640 x i8], align 8               ; 53 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [712 x i8], align 8               ; 59 uses
  %i.x = alloca [712 x i8], align 8               ; 5 uses
  %i.y = alloca [712 x i8], align 8               ; 5 uses
  %i.z = alloca [712 x i8], align 8               ; 5 uses
  %i.aa = alloca [712 x i8], align 8              ; 5 uses
  %i.ab = alloca [712 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 3) #20
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !alias.scope !626 ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.copyload.i, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.ac, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.ac, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 9) #20
  %.sroa.0.0.copyload.i46 = load i64, ptr %i.u, align 8, !alias.scope !627 ; 2 uses
  %i.ad = icmp eq i64 %.sroa.0.0.copyload.i46, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.i45.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i47, align 8
  %.sroa.5.i45.sroa.4.0..sroa.55.0..sroa_idx.i47.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.i45.sroa.4.0.copyload = load i64, ptr %.sroa.5.i45.sroa.4.0..sroa.55.0..sroa_idx.i47.sroa_idx, align 8
  %.sroa.5.i45.sroa.0.0 = select i1 %i.ad, ptr undef, ptr %.sroa.5.i45.sroa.0.0.copyload
  %.sroa.5.i45.sroa.4.0 = select i1 %i.ad, i64 undef, i64 %.sroa.5.i45.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 9) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah) #20
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.t, align 8, !alias.scope !628 ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0.0.copyload.i52, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.i51.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i53, align 8
  %.sroa.5.i51.sroa.4.0..sroa.55.0..sroa_idx.i53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.i51.sroa.4.0.copyload = load i64, ptr %.sroa.5.i51.sroa.4.0..sroa.55.0..sroa_idx.i53.sroa_idx, align 8
  %.sroa.5.i51.sroa.0.0 = select i1 %i.ai, ptr undef, ptr %.sroa.5.i51.sroa.0.0.copyload
  %.sroa.5.i51.sroa.4.0 = select i1 %i.ai, i64 undef, i64 %.sroa.5.i51.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 14) #20
  %.sroa.0.0.copyload.i58 = load i64, ptr %i.r, align 8, !alias.scope !629 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.0.0.copyload.i58, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.i57.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i59, align 8
  %.sroa.5.i57.sroa.4.0..sroa.55.0..sroa_idx.i59.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5.i57.sroa.4.0.copyload = load i64, ptr %.sroa.5.i57.sroa.4.0..sroa.55.0..sroa_idx.i59.sroa_idx, align 8
  %.sroa.5.i57.sroa.0.0 = select i1 %i.aj, ptr undef, ptr %.sroa.5.i57.sroa.0.0.copyload
  %.sroa.5.i57.sroa.4.0 = select i1 %i.aj, i64 undef, i64 %.sroa.5.i57.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.w, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNvNtCs5RPjO8Kzn89_6uu_tee3cli6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs5RPjO8Kzn89_6uu_tee.exit
  %.sroa.7476.sroa.12.0..sroa.7476.0..sroa_idx477.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 600
  store i64 17, ptr %.sroa.7476.sroa.12.0..sroa.7476.0..sroa_idx477.sroa_idx, align 8
  %.sroa.7476.sroa.13.0..sroa.7476.0..sroa_idx477.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  store ptr null, ptr %.sroa.7476.sroa.13.0..sroa.7476.0..sroa_idx477.sroa_idx, align 8
  %.sroa.7476.sroa.15.0..sroa.7476.0..sroa_idx477.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  store i32 105, ptr %.sroa.7476.sroa.15.0..sroa.7476.0..sroa_idx477.sroa_idx, align 8
  %.sroa.7476.sroa.16.0..sroa.7476.0..sroa_idx477.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 628
  store i32 -1, ptr %.sroa.7476.sroa.16.0..sroa.7476.0..sroa_idx477.sroa_idx, align 4
  %.sroa.7476.sroa.17.0..sroa.7476.0..sroa_idx477.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 632
  store i32 0, ptr %.sroa.7476.sroa.17.0..sroa.7476.0..sroa_idx477.sroa_idx, align 8
  %.sroa.7476.sroa.18.0..sroa.7476.0..sroa_idx477.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 2, ptr %.sroa.7476.sroa.18.0..sroa.7476.0..sroa_idx477.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.l) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.z, ptr noundef nonnull align 8 dereferenceable(712) %i.y, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0543)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9553)
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 576
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 584
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 488
  store i64 -1, ptr %i.au, align 8, !alias.scope !634
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  store i64 -1, ptr %i.av, align 8, !alias.scope !634
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 636
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  store i64 -1, ptr %i.ax, align 8, !alias.scope !634
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !alias.scope !634
  %.sroa.45.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i135, align 8, !alias.scope !634
  %.sroa.56.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 632
  store i32 0, ptr %i.az, align 8, !alias.scope !634
  %.sroa.48.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i136, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i137, align 8, !alias.scope !634
  %.sroa.59.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %.sroa.411.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i138, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i139, align 8, !alias.scope !634
  %.sroa.512.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %.sroa.414.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i140, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i141, align 8, !alias.scope !634
  %.sroa.515.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %.sroa.417.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i142, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i143, align 8, !alias.scope !634
  %.sroa.518.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %.sroa.420.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i144, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i145, align 8, !alias.scope !634
  %.sroa.521.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %.sroa.423.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i146, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i147, align 8, !alias.scope !634
  %.sroa.524.0..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %.sroa.426.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i148, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i149, align 8, !alias.scope !634
  %.sroa.527.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i150, align 8, !alias.scope !634
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  store i32 -1, ptr %i.ba, align 8, !alias.scope !634
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 592
  store ptr null, ptr %i.bb, align 8, !alias.scope !634
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  store i64 0, ptr %i.bc, align 8, !alias.scope !634
  %.sroa.429.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i151, align 8, !alias.scope !634
  %.sroa.530.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %i.i, i64 312
  %.sroa.432.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i152, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i153, align 8, !alias.scope !634
  %.sroa.533.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  store i64 0, ptr %i.i, align 8, !alias.scope !634
  %.sroa.435.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i154, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i155, align 8, !alias.scope !634
  %.sroa.536.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i156, align 8, !alias.scope !634
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.bd, align 8, !alias.scope !634
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 628
  store i32 -1, ptr %i.be, align 4, !alias.scope !634
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 368
  store i64 0, ptr %i.bf, align 8, !alias.scope !634
  %.sroa.440.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.i, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i157, align 8, !alias.scope !634
  %.sroa.541.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  %.sroa.443.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.i, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i158, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i159, align 8, !alias.scope !634
  %.sroa.544.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.i, i64 408
  %.sroa.446.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %i.i, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i160, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i161, align 8, !alias.scope !634
  %.sroa.547.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.i, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i162, align 8, !alias.scope !634
  %.sroa.3.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.i, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i163, align 8, !alias.scope !634
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 608
  store ptr null, ptr %i.bg, align 8, !alias.scope !634
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %i.bh, align 8, !alias.scope !634
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 0, ptr %i.bi, align 8, !alias.scope !634
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 440 ; 2 uses
  store i64 0, ptr %i.bj, align 8, !alias.scope !634
  %.sroa.459.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.i, i64 448 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i164, align 8, !alias.scope !634
  %.sroa.560.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.i, i64 456 ; 2 uses
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.i, i64 472 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i165, i8 0, i64 16, i1 false), !alias.scope !634
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i166, align 8, !alias.scope !634
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i167 = getelementptr inbounds nuw i8, ptr %i.i, i64 480 ; 3 uses
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i167, align 8, !alias.scope !634
  store ptr @30, ptr %i.as, align 8
  store i64 4, ptr %i.at, align 8
  store i8 1, ptr %i.aw, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !638
  %i.bk = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #20, !noalias !638 ; 5 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.b, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i.i, !prof !17

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit134
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23, !noalias !638
  unreachable

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit134
  store i64 1, ptr %i.bk, align 8, !noalias !639
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !639
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i8 3, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !639
  %i.bm = ptrtoint ptr %i.bk to i64
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bj) #25, !noalias !640
  %.pre.i.i.i = load ptr, ptr %.sroa.459.0..sroa_idx.i164, align 8, !alias.scope !641 ; 2 uses
  store i64 -5875614554295535572, ptr %.pre.i.i.i, align 8, !noalias !642
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !642
  store i64 1, ptr %.sroa.560.0..sroa_idx.i165, align 8, !alias.scope !641
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 464 ; 2 uses
  %i.bo = load i64, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i167, align 8, !alias.scope !643, !noundef !5 ; 3 uses
  %i.bp = load i64, ptr %i.bn, align 8, !range !6, !alias.scope !643, !noundef !5
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn) #25, !noalias !644
  br label %bb.d

bb.d:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs5RPjO8Kzn89_6uu_tee.exit.i.i.i, %bb.c
  %i.br = load ptr, ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i166, align 8, !alias.scope !643, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %i.bo ; 4 uses
  store i64 %i.bm, ptr %i.bs, align 8, !noalias !645
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 ptrtoint (ptr @3 to i64), ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !645
  %.sroa.10.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i.i, align 8, !noalias !645
  %.sroa.13.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i.i, align 8, !noalias !645
  %i.bt = add i64 %i.bo, 1
  store i64 %i.bt, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i167, align 8, !alias.scope !643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0543, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !alias.scope !646
  %.sroa.4544.0.copyload = load i64, ptr %i.ax, align 8, !alias.scope !646
  %.sroa.6547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.6547.0.copyload = load ptr, ptr %.sroa.6547.0..sroa_idx, align 8, !alias.scope !646 ; 4 uses
  %.sroa.8550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.sroa.8550.0.copyload = load ptr, ptr %.sroa.8550.0..sroa_idx, align 8, !alias.scope !646 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.9553, ptr noundef nonnull align 8 dereferenceable(536) %i.ay, i64 536, i1 false), !alias.scope !646
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %.sroa.4544.0.copyload.off = add i64 %.sroa.4544.0.copyload, -4
  %switch = icmp ult i64 %.sroa.4544.0.copyload.off, -5
  br i1 %switch, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit206

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8550.0.copyload) ]
  %i.bu = load ptr, ptr %.sroa.8550.0.copyload, align 8, !invariant.load !5, !noalias !649 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6547.0.copyload) ]
  call void %i.bu(ptr noundef nonnull %.sroa.6547.0.copyload) #21, !noalias !649, !inline_history !538
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.8550.0.copyload, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !6, !invariant.load !5, !noalias !649 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit206, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.8550.0.copyload, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !9, !invariant.load !5, !noalias !649
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6547.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6547.0.copyload, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) %i.bz) #20, !noalias !649
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit206

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit206: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0543, i64 80, i1 false), !alias.scope !650
  %.sroa.4544.0..sroa_idx545 = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 2, ptr %.sroa.4544.0..sroa_idx545, align 8, !alias.scope !650
  %.sroa.9553.0..sroa_idx554 = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.9553.0..sroa_idx554, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.9553, i64 536, i1 false), !alias.scope !650
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0543)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9553)
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.j) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.aa, ptr noundef nonnull align 8 dereferenceable(712) %i.z, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.sroa.0557.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0557.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 27) #20
  %.sroa.0832.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.2833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2833.0.copyload = load ptr, ptr %.sroa.2833.0..sroa_idx, align 8
  %.sroa.3834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3834.0.copyload = load i64, ptr %.sroa.3834.0..sroa_idx, align 8
  store i64 0, ptr %i.h, align 8
  %.sroa.0557.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.0557.sroa.5.0..sroa_idx, align 8
  %.sroa.0557.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 0, ptr %.sroa.0557.sroa.7.0..sroa_idx, align 8
  %.sroa.0557.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 0, ptr %.sroa.0557.sroa.9.0..sroa_idx, align 8
  %.sroa.0557.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i64 -1, ptr %.sroa.0557.sroa.11.0..sroa_idx, align 8
  %.sroa.0557.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i64 0, ptr %.sroa.0557.sroa.13.0..sroa_idx, align 8
  %.sroa.0557.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.14.0..sroa_idx, align 8
  %.sroa.0557.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.16.0..sroa_idx, align 8
  %.sroa.0557.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.18.0..sroa_idx, align 8
  %.sroa.0557.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.20.0..sroa_idx, align 8
  %.sroa.0557.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.22.0..sroa_idx, align 8
  %.sroa.0557.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.24.0..sroa_idx, align 8
  %.sroa.0557.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.26.0..sroa_idx, align 8
  %.sroa.0557.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.28.0..sroa_idx, align 8
  %.sroa.0557.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %.sroa.0557.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.31.0..sroa_idx, align 8
  %.sroa.0557.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0557.sroa.33.0..sroa_idx, align 8
  %.sroa.0557.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.35.0..sroa_idx, align 8
  %.sroa.0557.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  %.sroa.0557.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.38.0..sroa_idx, align 8
  %.sroa.0557.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.40.0..sroa_idx, align 8
  %.sroa.0557.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.42.0..sroa_idx, align 8
  %.sroa.0557.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %.sroa.0557.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0557.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.45.0..sroa_idx, align 8
  %.sroa.0557.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0557.sroa.47.0..sroa_idx, align 8
  %.sroa.0557.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  store i64 0, ptr %.sroa.0557.sroa.48.0..sroa_idx, align 8
  %.sroa.4558.0..sroa_idx559 = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  store i64 %.sroa.0832.0.copyload, ptr %.sroa.4558.0..sroa_idx559, align 8
  %.sroa.6561.0..sroa_idx562 = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  store ptr %.sroa.2833.0.copyload, ptr %.sroa.6561.0..sroa_idx562, align 8
  %.sroa.7564.0..sroa_idx565 = getelementptr inbounds nuw i8, ptr %i.h, i64 504
  store i64 %.sroa.3834.0.copyload, ptr %.sroa.7564.0..sroa_idx565, align 8
  %.sroa.7564.sroa.5.0..sroa.7564.0..sroa_idx565.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  store i64 -1, ptr %.sroa.7564.sroa.5.0..sroa.7564.0..sroa_idx565.sroa_idx, align 8
  %.sroa.7564.sroa.7.0..sroa.7564.0..sroa_idx565.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  store i64 -2, ptr %.sroa.7564.sroa.7.0..sroa.7564.0..sroa_idx565.sroa_idx, align 8
  %.sroa.7564.sroa.9.0..sroa.7564.0..sroa_idx565.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  store ptr @31, ptr %.sroa.7564.sroa.9.0..sroa.7564.0..sroa_idx565.sroa_idx, align 8
  %.sroa.7564.sroa.10.0..sroa.7564.0..sroa_idx565.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 584
  store i64 18, ptr %.sroa.7564.sroa.10.0..sroa.7564.0..sroa_idx565.sroa_idx, align 8
  %.sroa.7564.sroa.11.0..sroa.7564.0..sroa_idx565.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  store ptr null, ptr %.sroa.7564.sroa.11.0..sroa.7564.0..sroa_idx565.sroa_idx, align 8
  %.sroa.7564.sroa.13.0..sroa.7564.0..sroa_idx565.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  store ptr null, ptr %.sroa.7564.sroa.13.0..sroa.7564.0..sroa_idx565.sroa_idx, align 8
  %.sroa.7564.sroa.15.0..sroa.7564.0..sroa_idx565.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  store i32 112, ptr %.sroa.7564.sroa.15.0..sroa.7564.0..sroa_idx565.sroa_idx, align 8
  %.sroa.7564.sroa.16.0..sroa.7564.0..sroa_idx565.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  store i32 -1, ptr %.sroa.7564.sroa.16.0..sroa.7564.0..sroa_idx565.sroa_idx, align 4
  %.sroa.7564.sroa.17.0..sroa.7564.0..sroa_idx565.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 632
  store i32 0, ptr %.sroa.7564.sroa.17.0..sroa.7564.0..sroa_idx565.sroa_idx, align 8
  %.sroa.7564.sroa.18.0..sroa.7564.0..sroa_idx565.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 2, ptr %.sroa.7564.sroa.18.0..sroa.7564.0..sroa_idx565.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.h) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ab, ptr noundef nonnull align 8 dereferenceable(712) %i.aa, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !651
  %i.ca = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #20, !noalias !651 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit253

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit206
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #23, !noalias !652
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit253: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit206
  store ptr @34, ptr %i.ca, align 8, !noalias !653
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 11, ptr %i.cc, align 8, !noalias !654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 26) #20
  %.sroa.0840.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.2841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2841.0.copyload = load ptr, ptr %.sroa.2841.0..sroa_idx, align 8
  %.sroa.3842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3842.0.copyload = load i64, ptr %.sroa.3842.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 33) #20
  %.sroa.0846.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.2847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2847.0.copyload = load ptr, ptr %.sroa.2847.0..sroa_idx, align 8
  %.sroa.3848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.3848.0.copyload = load i64, ptr %.sroa.3848.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 26) #20
  %.sroa.0852.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.2853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2853.0.copyload = load ptr, ptr %.sroa.2853.0..sroa_idx, align 8
  %.sroa.3854.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3854.0.copyload = load i64, ptr %.sroa.3854.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 33) #20
  %.sroa.0858.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.2859.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2859.0.copyload = load ptr, ptr %.sroa.2859.0..sroa_idx, align 8
  %.sroa.3860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3860.0.copyload = load i64, ptr %.sroa.3860.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !655
  %i.cd = call noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 288, i64 noundef range(i64 1, 9) 8) #20, !noalias !655 ; 38 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.i, label %_RNvXs0_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserINtNtCs6JMX4GRUq9U_4core7convert4FromANtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValuej4_E4fromCs5RPjO8Kzn89_6uu_tee.exit

bb.i:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit253
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 288) #23, !noalias !656
  unreachable

_RNvXs0_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserINtNtCs6JMX4GRUq9U_4core7convert4FromANtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValuej4_E4fromCs5RPjO8Kzn89_6uu_tee.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs5RPjO8Kzn89_6uu_tee.exit253
  store i64 0, ptr %i.cd, align 8, !noalias !657
  %.sroa.4739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4739.0..sroa_idx, align 8, !noalias !657
  %.sroa.5740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 0, ptr %.sroa.5740.0..sroa_idx, align 8, !noalias !657
  %.sroa.6741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 %.sroa.0840.0.copyload, ptr %.sroa.6741.0..sroa_idx, align 8, !noalias !657
  %.sroa.7742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr %.sroa.2841.0.copyload, ptr %.sroa.7742.0..sroa_idx, align 8, !noalias !657
  %.sroa.8743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store i64 %.sroa.3842.0.copyload, ptr %.sroa.8743.0..sroa_idx, align 8, !noalias !657
  %.sroa.9744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  store ptr @35, ptr %.sroa.9744.0..sroa_idx, align 8, !noalias !657
  %.sroa.10745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  store i64 4, ptr %.sroa.10745.0..sroa_idx, align 8, !noalias !657
  %.sroa.11746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store i8 0, ptr %.sroa.11746.0..sroa_idx, align 8, !noalias !657
end_hunk_2
begin_hunk_3_@_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2E_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 27
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i, %bb.a
  %i.y = phi ptr [ %i.aa, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  %i.z = icmp eq ptr %i.y, %i.n
  br i1 %i.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEEB1i_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  store ptr %i.aa, ptr %1, align 8, !alias.scope !702
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.val5.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !704, !nonnull !5, !noundef !5 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.y, i64 16
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !noalias !704, !noundef !5 ; 13 uses
  %i.ad = load i8, ptr %i.w, align 8, !range !14, !noalias !705, !noundef !5
  %i.ae = load i8, ptr %i.x, align 1, !range !21, !noalias !705, !noundef !5
  %i.af = trunc nuw i8 %i.ad to i1
  %.not.i.i.i.i.i.i.i = icmp slt i64 %.val6.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i64 %.val6.i.i.i, 0             ; 3 uses
  br i1 %i.ag, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread20.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !706
  %i.ah = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val6.i.i.i, i64 noundef range(i64 1, 9) 1) #20, !noalias !706 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.c
  %.sroa.43.0.ph.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.43.0.ph.i.i.i.i.i.i, i64 %.val6.i.i.i) #23, !noalias !707
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread20.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  %i.aj = phi ptr [ %i.ah, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !707
  store i128 79228167236630822344384839680, ptr %i.i, align 16, !noalias !707
  br i1 %i.af, label %bb.h, label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %.val5.i.i.i, i64 %.val6.i.i.i, i1 false), !noalias !707
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread20.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread20.i.i.i.i.i.i
  store i8 1, ptr %i.o, align 1, !noalias !707
  br label %bb.i

bb.h:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread20.i.i.i.i.i.i
  store i8 1, ptr %i.p, align 2, !noalias !707
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !707
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %.val6.i.i.i) #20, !noalias !707
  %i.ak = load i32, ptr %i.h, align 8, !range !4, !noalias !707, !noundef !5
  %i.al = trunc nuw i32 %i.ak to i1
  br i1 %i.al, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !707
  %i.am = load ptr, ptr %i.r, align 8, !noalias !707, !nonnull !5, !noundef !5
  store ptr %i.am, ptr %i.g, align 8, !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !707
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.f, align 8, !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !707
  store i64 1, ptr %i.e, align 8, !noalias !707
  store ptr %.val5.i.i.i, ptr %.sroa.424.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !707
  store i64 %.val6.i.i.i, ptr %.sroa.525.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !707
  store i8 0, ptr %i.s, align 8, !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !707
  store ptr %i.e, ptr %i.d, align 8, !noalias !707
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !707
  store ptr %i.g, ptr %i.t, align 8, !noalias !707
  store ptr @_RNvXs3_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.433.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !707
  %i.an = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @7, ptr noundef nonnull %i.d) #20, !noalias !707 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !707
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = and i64 %i.ap, 3
  switch i64 %i.aq, label %.unreachabledefault [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i
    i64 1, label %bb.m
  ], !prof !15

.unreachabledefault:                              ; preds = %bb.k
  unreachable

default.unreachable:                              ; preds = %bb.q, %bb.u
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp ult ptr %i.an, inttoptr (i64 188978561024 to ptr)
  %i.as = and i64 %i.ap, 1095216660480
  %i.at = icmp ne i64 %i.as, 1095216660480
  call void @llvm.assume(i1 %i.ar)
  call void @llvm.assume(i1 %i.at)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr i8, ptr %i.an, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  store ptr %i.au, ptr %i.u, align 8, !alias.scope !708, !noalias !707
  store i8 3, ptr %i.c, align 8, !alias.scope !708, !noalias !707
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #20, !noalias !707
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !707
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !707
  %.off.i.i.i.i.i = add nsw i8 %i.ae, -2
  %switch.i.i.i.i.i = icmp ult i8 %.off.i.i.i.i.i, -3
  %i.av = load ptr, ptr %i.g, align 8, !noalias !707, !nonnull !5, !noundef !5 ; 5 uses
  br i1 %switch.i.i.i.i.i, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.q, align 4, !range !10, !noalias !707, !noundef !5 ; 2 uses
  br i1 %i.ag, label %.thread.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !707
  br label %.loopexit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !709
  %i.ax = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val6.i.i.i, i64 noundef range(i64 1, 9) 1) #20, !noalias !709 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.o, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val6.i.i.i) #23, !noalias !710
  unreachable

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.val5.i.i.i, i64 range(i64 0, -9223372036854775808) %.val6.i.i.i, i1 false), !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !707
  br label %bb.p

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i64 [ -2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !707
  br i1 %i.ag, label %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i
  %.sroa.0.021.i.i.i.i = phi i64 [ %.val6.i.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ]
  %.sroa.7.020.i.i.i.i = phi ptr [ %i.ax, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i ], [ %i.av, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ]
  %.sroa.11.019.i.i.i.i = phi i32 [ %i.aw, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.thread15.i.i.i.i ], [ undef, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %.val6.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !707
  br label %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i

bb.q:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !707
  %i.az = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ba = and i64 %i.az, 3
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
    i64 3, label %bb.r
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
    i64 1, label %bb.s
  ], !prof !15

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp ult ptr %i.av, inttoptr (i64 188978561024 to ptr)
  %i.bc = and i64 %i.az, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  call void @llvm.assume(i1 %i.bb)
  call void @llvm.assume(i1 %i.bd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.be = getelementptr i8, ptr %i.av, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  store ptr %i.be, ptr %i.v, align 8, !alias.scope !712, !noalias !707
  store i8 3, ptr %i.b, align 8, !alias.scope !712, !noalias !707
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #20, !noalias !707
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !707
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i: ; preds = %bb.p, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
  %.sroa.0.014.i.i.i.i = phi i64 [ %.sroa.0.021.i.i.i.i, %bb.p ], [ %.sroa.0.1.i.i.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.013.i.i.i.i = phi ptr [ %.sroa.7.020.i.i.i.i, %bb.p ], [ %i.av, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.11.012.i.i.i.i = phi i32 [ %.sroa.11.019.i.i.i.i, %bb.p ], [ undef, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i ]
  switch i64 %.sroa.0.014.i.i.i.i, label %.loopexit [
    i64 -2, label %bb.b
    i64 -1, label %bb.t
  ]

bb.t:                                             ; preds = %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !700, !noalias !713, !noundef !5 ; 4 uses
  %i.bf = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !714
  %i.bg = ptrtoint ptr %.val.i.i.i.i.i to i64     ; 2 uses
  %i.bh = and i64 %i.bg, 3
  switch i64 %i.bh, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
    i64 3, label %bb.v
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i
    i64 1, label %bb.w
  ], !prof !15

bb.v:                                             ; preds = %bb.u
  %i.bi = icmp ult ptr %.val.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bj = and i64 %i.bg, 1095216660480
  %i.bk = icmp ne i64 %i.bj, 1095216660480
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.bk)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bl = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !715, !noalias !714
  store i8 3, ptr %i.a, align 8, !alias.scope !715, !noalias !714
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #20, !noalias !714
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !714
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, %bb.t
  store ptr %.sroa.7.013.i.i.i.i, ptr %i.k, align 8, !alias.scope !700, !noalias !713
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEEB1i_.exit

.loopexit:                                        ; preds = %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i, %.thread.i.i.i.i
  %.sroa.13.0 = phi i32 [ %i.aw, %.thread.i.i.i.i ], [ %.sroa.11.012.i.i.i.i, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ]
  %.sroa.8.0 = phi ptr [ inttoptr (i64 1 to ptr), %.thread.i.i.i.i ], [ %.sroa.7.013.i.i.i.i, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ]
  %.sroa.0.0 = phi i64 [ 0, %.thread.i.i.i.i ], [ %.sroa.0.014.i.i.i.i, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val6.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.13.0, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEEB1i_.exit
  ret void

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEEB1i_.exit: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i
  store i64 -1, ptr %0, align 8
  br label %bb.x
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = trunc nuw i32 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 4, !range !10, !noundef !5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtB8_6result6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.d = load i16, ptr %i.c, align 8, !range !720, !alias.scope !719, !noundef !5
  %i.e = trunc nuw i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !721
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.f, ptr %i.a, align 8, !noalias !721
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !721
  br label %_RNvXst_NtCs6JMX4GRUq9U_4core6resultINtB5_6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtNtB7_3fmt5Debug3fmtCs5RPjO8Kzn89_6uu_tee.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !721
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.b, align 8, !noalias !721
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !721
  br label %_RNvXst_NtCs6JMX4GRUq9U_4core6resultINtB5_6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtNtB7_3fmt5Debug3fmtCs5RPjO8Kzn89_6uu_tee.exit

_RNvXst_NtCs6JMX4GRUq9U_4core6resultINtB5_6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtNtB7_3fmt5Debug3fmtCs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoNtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !722, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCscC7ZI6NG8RX_6rustix2io5errnoNtNtNtNtB9_7backend2io5errno5ErrnoNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRjNtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !725, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser10parse_ref_Cs5RPjO8Kzn89_6uu_tee(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #20
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !728
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #20, !noalias !728 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #23, !noalias !728
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @50, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_3
