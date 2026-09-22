Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_touch-88b35e5ce9cfb264.uu_touch.a1ebf4301e4c8f8d-cgu.0?download=true
inline.NumInlined: 849
inline.NumDeleted: 480
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorECsdTU8hOCbdCr_8uu_touch:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !218, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !218
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.b = load i64, ptr %0, align 8, !range !7, !alias.scope !225, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !227, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !227
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %.val to i64                ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit
    i64 1, label %bb.e
  ], !prof !8

default.unreachable:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit
  unreachable

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit
  %i.i = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit
  %i.l = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !228
  store i8 3, ptr %i.a, align 8, !alias.scope !228
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !237, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !237, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsdTU8hOCbdCr_8uu_touch.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsdTU8hOCbdCr_8uu_touch.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsdTU8hOCbdCr_8uu_touch.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.03.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !range !7, !alias.scope !240, !noalias !237, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !240, !noalias !237, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !241
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.d, align 8, !range !5, !alias.scope !240, !noalias !237, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsdTU8hOCbdCr_8uu_touch.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !240, !noalias !237, !nonnull !4, !noundef !4
  %i.k = shl nuw i64 %.val2.i.i.i.i, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !242
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsdTU8hOCbdCr_8uu_touch.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsdTU8hOCbdCr_8uu_touch.exit.i.i.i: ; preds = %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i
  %i.l = icmp eq i64 %i.e, %.val1.i
  br i1 %i.l, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsdTU8hOCbdCr_8uu_touch.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsdTU8hOCbdCr_8uu_touch.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !5, !alias.scope !237, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %.val2.i, 0
  br i1 %i.m, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueEECsdTU8hOCbdCr_8uu_touch.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsdTU8hOCbdCr_8uu_touch.exit.i
  %i.n = mul nuw i64 %.val2.i, 72
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !237
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueEECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueEECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsdTU8hOCbdCr_8uu_touch.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsdTU8hOCbdCr_8uu_touch.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !256
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.d = load i64, ptr %i.c, align 8, !range !258, !alias.scope !257, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsdTU8hOCbdCr_8uu_touch.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsdTU8hOCbdCr_8uu_touch.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !7, !alias.scope !257, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsdTU8hOCbdCr_8uu_touch.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !257, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !259
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsdTU8hOCbdCr_8uu_touch.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsdTU8hOCbdCr_8uu_touch.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !7, !alias.scope !260, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsdTU8hOCbdCr_8uu_touch.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !257, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !261
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsdTU8hOCbdCr_8uu_touch.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsdTU8hOCbdCr_8uu_touch.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !257 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !257, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !4, !noalias !257 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #30, !noalias !257, !inline_history !255
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !4, !noalias !257 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsdTU8hOCbdCr_8uu_touch.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !10, !invariant.load !4, !noalias !257
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #27, !noalias !257
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsdTU8hOCbdCr_8uu_touch.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i16, i16 } @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathuNCINvNtNtB6_2fs2at9utimensatRNtNtCs2vKOLqTMYjT_3std4path4PathNtNtNtNtB1u_2os2fd5owned10BorrowedFdE0ECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 256, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NvMs_NtNtCs7tKScEop1B6_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #27
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !4 ; 2 uses
  switch i64 %i.b, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECsdTU8hOCbdCr_8uu_touch.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.414.0.copyload = load ptr, ptr %.sroa.414.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.414.0.copyload, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECsdTU8hOCbdCr_8uu_touch.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.5.0.copyload), "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val.i = load i32, ptr %.sroa.0.0.copyload, align 4, !range !11, !noalias !265, !noundef !4
  %i.g = load i32, ptr %.sroa.6.0.copyload, align 4, !noalias !265, !noundef !4
  %i.h = zext i32 %.val.i to i64
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = zext i32 %i.g to i64
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 280 to ptr), ptr %i.i, ptr nonnull readonly %i.d, ptr nonnull readonly align 8 dereferenceable(32) %.sroa.5.0.copyload, ptr %i.k) #31, !noalias !266, !srcloc !12
  %i.m = extractvalue { ptr, i32, i32 } %i.l, 0   ; 2 uses
  %.not9.i.i = icmp ne ptr %i.m, null             ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = trunc i64 %i.n to i16                    ; 2 uses
  store i8 0, ptr %i.d, align 1
  %i.p = icmp eq i64 %i.f, 0
  br i1 %i.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECsdTU8hOCbdCr_8uu_touch.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECsdTU8hOCbdCr_8uu_touch.exit
  %.sroa.3.0 = phi i16 [ -22, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECsdTU8hOCbdCr_8uu_touch.exit ], [ %i.o, %bb.c ], [ %i.o, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.0.shrunk = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECsdTU8hOCbdCr_8uu_touch.exit ], [ %.not9.i.i, %bb.c ], [ %.not9.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.0 = zext i1 %.sroa.0.0.shrunk to i16
  %i.q = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.r = insertvalue { i16, i16 } %i.q, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.r
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !269, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !269
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !269
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4) #27, !noalias !269
  %i.h = load i64, ptr %i.a, align 8, !range !13, !noalias !269, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !14, !noalias !269, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !269
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #29
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !269, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !269
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !269
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !269
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.b) #26
  ret ptr %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef i16 @_RNCNvCsdTU8hOCbdCr_8uu_touch15parse_timestamp0B3_() unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 16 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = tail call { i64, i32 } @_RNvMNtCs3JjgEOiFeOI_4jiff9timestampNtB2_9Timestamp3now() #27 ; 2 uses
  %i.f = tail call noundef nonnull align 8 ptr @_RNvNtNtCs3JjgEOiFeOI_4jiff2tz2db2db() #27
  %i.g = tail call { i64, ptr } @_RNvNtNtCs3JjgEOiFeOI_4jiff2tz6system3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f) #27 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 4 uses
  %i.j = trunc nuw i64 %i.h to i1
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !286
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit
  %.sroa.02.0 = phi ptr [ inttoptr (i64 2 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit ], [ %i.i, %bb.a ] ; 6 uses
  %i.n = extractvalue { i64, i32 } %i.e, 1        ; 7 uses
  %i.o = extractvalue { i64, i32 } %i.e, 0        ; 7 uses
  %i.p = ptrtoint ptr %.sroa.02.0 to i64          ; 2 uses
  %i.q = and i64 %i.p, 7
  switch i64 %i.q, label %bb.f [
    i64 1, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit
    i64 2, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit
    i64 3, label %bb.g
    i64 0, label %bb.i
    i64 4, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.thread6
    i64 5, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.thread10
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = trunc i64 %i.p to i32
  %i.s = ashr i32 %i.r, 4                         ; 2 uses
  %i.t = add nsw i32 %i.s, 93599
  %or.cond.i.i = icmp ult i32 %i.t, 187199
  br i1 %or.cond.i.i, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.thread, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @91, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #28
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.u = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.02.0, i64 noundef %i.o, i32 noundef %i.n) #27
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.thread

_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.thread6: ; preds = %bb.e
  %i.v = getelementptr i8, ptr %.sroa.02.0, i64 -4
  %i.w = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.v, i64 noundef %i.o, i32 noundef %i.n) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtNtCscxuc9kp9KZq_9jiff_core2tz6offsetNtB2_6Offset11to_datetime(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.c, i32 noundef %i.w, i64 noundef %i.o, i32 noundef %i.n) #30
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.011.0.copyload8 = load i32, ptr %i.x, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr i8, ptr %.sroa.02.0, i64 -20 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !287
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i.i

_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.thread10: ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %.sroa.02.0, i64 -5
  %i.ac = call noundef i32 @_RNvMs0_NtNtCscxuc9kp9KZq_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ab, i64 noundef %i.o, i32 noundef %i.n) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtNtCscxuc9kp9KZq_9jiff_core2tz6offsetNtB2_6Offset11to_datetime(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.c, i32 noundef %i.ac, i64 noundef %i.o, i32 noundef %i.n) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.011.0.copyload12 = load i32, ptr %i.ad, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = getelementptr i8, ptr %.sroa.02.0, i64 -21 ; 2 uses
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !288
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.k, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i.i

_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.thread: ; preds = %bb.g, %bb.i
  %.sroa.0.0.i.ph = phi i32 [ %i.s, %bb.g ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtNtCscxuc9kp9KZq_9jiff_core2tz6offsetNtB2_6Offset11to_datetime(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.c, i32 noundef %.sroa.0.0.i.ph, i64 noundef %i.o, i32 noundef %i.n) #30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.011.0.copyload4 = load i32, ptr %i.ah, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsdTU8hOCbdCr_8uu_touch.exit

_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit: ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtNtCscxuc9kp9KZq_9jiff_core2tz6offsetNtB2_6Offset11to_datetime(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.c, i32 noundef 0, i64 noundef %i.o, i32 noundef %i.n) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.011.0.copyload = load i32, ptr %i.ai, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_0
begin_hunk_1_@_RNvCsdTU8hOCbdCr_8uu_touch5touch:bb.a
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iz, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !1154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !noalias !1154
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 38, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.db) #27, !noalias !1157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !1154
  %i.ajb = icmp eq i64 %.sroa.069.0.copyload70.i, 0
  br i1 %i.ajb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.i, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload72.i, i64 noundef %.sroa.069.0.copyload70.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1273
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.i

bb.iy:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !1154
  store i64 %.sroa.069.0.copyload70.i, ptr %i.dc, align 8, !noalias !1154
  store ptr %.sroa.5.0.copyload72.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1154
  store i64 %.sroa.874.0.copyload76.i, ptr %.sroa.874.0..sroa_idx.i, align 8, !noalias !1154
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dc) #27, !noalias !1157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !1154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !noalias !1154
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 38, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.db) #27, !noalias !1157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !1154
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.i

bb.iz:                                            ; preds = %.loopexit.i
  %i.ajc = load double, ptr %i.ic, align 8, !noalias !1154, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, double noundef %i.ajc) #27, !noalias !1157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !1154
  br label %bb.iw

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %bb.iy, %bb.ix, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !1154
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1274
  %i.ajd = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #27, !noalias !1274 ; 5 uses
  %i.aje = icmp eq ptr %i.ajd, null
  br i1 %i.aje, label %bb.ja, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i, !prof !6

bb.ja:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29, !noalias !1274
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajd, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !1157
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajd, i64 24
  store i32 1, ptr %.sroa.487.0..sroa_idx.i, align 8, !noalias !1157
  br i1 %i.hs, label %bb.iq, label %bb.jb

bb.jb:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !1154
  store ptr %i.ajd, ptr %i.da, align 8, !noalias !1154
  store ptr @30, ptr %i.id, align 8, !noalias !1154
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #27, !noalias !1157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !1154
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.cy, align 8, !noalias !1154
  %i.ajf = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy) #27, !noalias !1157
  store ptr %i.ajf, ptr %i.cz, align 8, !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !1154
  %i.ajg = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #27, !noalias !1157 ; 2 uses
  %i.ajh = extractvalue { ptr, i64 } %i.ajg, 0
  %i.aji = extractvalue { ptr, i64 } %i.ajg, 1
  store ptr %i.ajh, ptr %i.cx, align 8, !noalias !1154
  store i64 %i.aji, ptr %i.ie, align 8, !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !1154
  store ptr %i.cx, ptr %i.cw, align 8, !noalias !1154
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdTU8hOCbdCr_8uu_touch, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !1154
  store ptr %i.da, ptr %i.if, align 8, !noalias !1154
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsdTU8hOCbdCr_8uu_touch, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1275
  store ptr %i.cz, ptr %i.x, align 8, !noalias !1275
  store ptr null, ptr %i.ig, align 8, !noalias !1275
  %i.ajj = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15, ptr noundef nonnull @43, ptr noundef nonnull %i.cw) #27, !noalias !1157
  %i.ajk = load ptr, ptr %i.ig, align 8, !noalias !1275, !noundef !4 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.ajk, null         ; 2 uses
  br i1 %i.ajj, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  br i1 %.not.i5.i.i, label %bb.jh, label %bb.ji, !prof !6

bb.jd:                                            ; preds = %bb.jb
  br i1 %.not.i5.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i.thread.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1275
  %i.ajl = ptrtoint ptr %i.ajk to i64             ; 2 uses
  %i.ajm = and i64 %i.ajl, 3
  switch i64 %i.ajm, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i
    i64 3, label %bb.jf
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i
    i64 1, label %bb.jg
  ], !prof !8

bb.jf:                                            ; preds = %bb.je
  %i.ajn = icmp ult ptr %i.ajk, inttoptr (i64 188978561024 to ptr)
  %i.ajo = and i64 %i.ajl, 1095216660480
  %i.ajp = icmp ne i64 %i.ajo, 1095216660480
  call void @llvm.assume(i1 %i.ajn)
  call void @llvm.assume(i1 %i.ajp)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i

bb.jg:                                            ; preds = %bb.je
  %i.ajq = getelementptr i8, ptr %i.ajk, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ajq) ]
  store ptr %i.ajq, ptr %i.ih, align 8, !alias.scope !1276, !noalias !1275
  store i8 3, ptr %i.w, align 8, !alias.scope !1276, !noalias !1275
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ih) #27, !noalias !1157
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i: ; preds = %bb.jg, %bb.jf, %bb.je, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1275
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i.thread.i

bb.jh:                                            ; preds = %bb.jc
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28, !noalias !1157
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1275
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i

bb.ji:                                            ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1154
  %i.ajr = ptrtoint ptr %i.ajk to i64             ; 2 uses
  %i.ajs = and i64 %i.ajr, 3
  switch i64 %i.ajs, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i
    i64 3, label %bb.jj
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i
    i64 1, label %bb.jk
  ], !prof !8

bb.jj:                                            ; preds = %bb.ji
  %i.ajt = icmp ult ptr %i.ajk, inttoptr (i64 188978561024 to ptr)
  %i.aju = and i64 %i.ajr, 1095216660480
  %i.ajv = icmp ne i64 %i.aju, 1095216660480
  call void @llvm.assume(i1 %i.ajt)
  call void @llvm.assume(i1 %i.ajv)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i

bb.jk:                                            ; preds = %bb.ji
  %i.ajw = getelementptr i8, ptr %i.ajk, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ajw) ]
  store ptr %i.ajw, ptr %i.ii, align 8, !alias.scope !1277, !noalias !1154
  store i8 3, ptr %i.v, align 8, !alias.scope !1277, !noalias !1154
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ii) #27, !noalias !1157
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i: ; preds = %bb.jk, %bb.jj, %bb.ji, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1154
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !1154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !1154
  %.val42.i = load ptr, ptr %i.cz, align 8, !noalias !1154, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %.val42.i, i64 12 ; 2 uses
  %i.ajy = load i32, ptr %i.ajx, align 4, !noalias !1157, !noundef !4
  %i.ajz = add i32 %i.ajy, -1                     ; 2 uses
  store i32 %i.ajz, ptr %i.ajx, align 4, !noalias !1157
  %i.aka = icmp eq i32 %i.ajz, 0
  br i1 %i.aka, label %bb.jl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i

bb.jl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i
  store atomic i64 0, ptr %.val42.i monotonic, align 8, !noalias !1157
  %i.akb = getelementptr inbounds nuw i8, ptr %.val42.i, i64 8 ; 2 uses
  %i.akc = atomicrmw xchg ptr %i.akb, i32 0 release, align 4, !noalias !1157
  %i.akd = icmp eq i32 %i.akc, 2
  br i1 %i.akd, label %bb.jm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i, !prof !6

bb.jm:                                            ; preds = %bb.jl
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.akb) #27, !noalias !1157
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %bb.jm, %bb.jl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !1154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !1154
  %.val46.i = load ptr, ptr %i.da, align 8, !noalias !1154 ; 4 uses
  %.val47.i = load ptr, ptr %i.id, align 8, !noalias !1154, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.ake = load ptr, ptr %.val47.i, align 8, !invariant.load !4, !noalias !1157 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ake, null
  br i1 %.not.i.i, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val46.i) ]
  call void %i.ake(ptr noundef nonnull %.val46.i) #30, !noalias !1157, !inline_history !1135
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i
  %i.akf = getelementptr inbounds nuw i8, ptr %.val47.i, i64 8
  %i.akg = load i64, ptr %i.akf, align 8, !range !5, !invariant.load !4, !noalias !1157 ; 2 uses
  %i.akh = icmp eq i64 %i.akg, 0
  br i1 %i.akh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsdTU8hOCbdCr_8uu_touch.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.jo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val46.i) ]
  %i.aki = getelementptr inbounds nuw i8, ptr %.val47.i, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !range !10, !invariant.load !4, !noalias !1157
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i, i64 noundef %i.akg, i64 noundef range(i64 1, -9223372036854775807) %i.akj) #27, !noalias !1157
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsdTU8hOCbdCr_8uu_touch.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !1154
  br label %bb.iq

_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit.thread: ; preds = %bb.bx, %bb.bv, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.0.2.pn.i.ph = phi ptr [ %i.aab, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.ly, %bb.bv ], [ %i.om, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %.loopexit

_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit:     ; preds = %_RNvCsdTU8hOCbdCr_8uu_touch17set_times_by_path.exit.i.i, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess0_0EB3d_.exit.i.i, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0EB3d_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i
  %.sroa.0.2.pn.i = phi ptr [ %.sroa.02.0.i.i.i.i, %_RNvCsdTU8hOCbdCr_8uu_touch17set_times_by_path.exit.i.i ], [ %.sroa.0.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i ], [ %.sroa.02.0.i153.i.i, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0EB3d_.exit.i.i ], [ %.sroa.02.0.i.i.i, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess0_0EB3d_.exit.i.i ] ; 2 uses
  %.sroa.10.2.pn.i = phi ptr [ @20, %_RNvCsdTU8hOCbdCr_8uu_touch17set_times_by_path.exit.i.i ], [ %.sroa.10.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i ], [ @20, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0EB3d_.exit.i.i ], [ @20, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess0_0EB3d_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %.not339 = icmp eq ptr %.sroa.0.2.pn.i, null
  br i1 %.not339, label %bb.jp, label %.loopexit

.loopexit:                                        ; preds = %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit, %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit.thread
  %.sroa.10.2.pn.i525 = phi ptr [ @20, %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit.thread ], [ %.sroa.10.2.pn.i, %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit ] ; 2 uses
  %.sroa.0.2.pn.i524 = phi ptr [ %.sroa.0.2.pn.i.ph, %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit.thread ], [ %.sroa.0.2.pn.i, %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.2.pn.i525) ]
  br i1 %.not532.not, label %bb.ju, label %bb.jr

bb.jp:                                            ; preds = %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit
  br i1 %.not532.not, label %bb.jq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCsdTU8hOCbdCr_8uu_touch5touchs1_0EBF_.exit

bb.jq:                                            ; preds = %bb.jp
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.384.0493513, i64 noundef %.sroa.082.0495511, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCsdTU8hOCbdCr_8uu_touch5touchs1_0EBF_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCsdTU8hOCbdCr_8uu_touch5touchs1_0EBF_.exit: ; preds = %.thread1424, %bb.jp, %bb.jq
  %i.akk = icmp eq ptr %i.ik, %i.fp
  br i1 %i.akk, label %._crit_edge, label %bb.v

bb.jr:                                            ; preds = %.loopexit
  %.sroa.5307.0.copyload.val = load ptr, ptr %.sroa.gep448500507, align 8, !nonnull !4, !noundef !4
  %.sroa.5307.0.copyload.val341 = load i64, ptr %.sroa.gep518, align 8, !noundef !4 ; 6 uses
  %i.akl = icmp eq i64 %.sroa.5307.0.copyload.val341, 0
  br i1 %i.akl, label %bb.ju, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i350

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i350: ; preds = %bb.jr
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1278
  %i.akm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.5307.0.copyload.val341, i64 noundef range(i64 1, 9) 1) #27, !noalias !1278 ; 3 uses
  %i.akn = icmp eq ptr %i.akm, null
  br i1 %i.akn, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i350
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.5307.0.copyload.val341) #29, !noalias !1279
  unreachable

bb.jt:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i350
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akm, ptr nonnull readonly align 1 %.sroa.5307.0.copyload.val, i64 range(i64 0, -9223372036854775808) %.sroa.5307.0.copyload.val341, i1 false), !noalias !1280
  br label %bb.ju

bb.ju:                                            ; preds = %.loopexit, %bb.jr, %bb.jt
  %.sroa.0313.0 = phi i64 [ %.sroa.082.0495511, %.loopexit ], [ %.sroa.5307.0.copyload.val341, %bb.jt ], [ 0, %bb.jr ]
  %.sroa.5315.0 = phi ptr [ %.sroa.384.0493513, %.loopexit ], [ %i.akm, %bb.jt ], [ inttoptr (i64 1 to ptr), %bb.jr ]
  %.sroa.6317.0 = phi i64 [ 11, %.loopexit ], [ %.sroa.5307.0.copyload.val341, %bb.jt ], [ 0, %bb.jr ]
  store i64 %.sroa.0313.0, ptr %0, align 8
  %.sroa.0300.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5315.0, ptr %.sroa.0300.sroa.4.0..sroa_idx, align 8
  %.sroa.0300.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6317.0, ptr %.sroa.0300.sroa.5.0..sroa_idx, align 8
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.2.pn.i524, ptr %.sroa.4301.0..sroa_idx, align 8
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.2.pn.i525, ptr %.sroa.5302.0..sroa_idx, align 8
  %.sroa.6303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.8.0918, ptr %.sroa.6303.0..sroa_idx, align 8
  br label %bb.k
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsdTU8hOCbdCr_8uu_touch6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsdTU8hOCbdCr_8uu_touch.exit:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 20 uses
  %.sroa.01710 = alloca [89 x i8], align 8        ; 2 uses
  %.sroa.31714 = alloca [6 x i8], align 2         ; 2 uses
  %i.c = alloca [640 x i8], align 8               ; 54 uses
  %i.d = alloca [640 x i8], align 8               ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 9 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  %i.g = alloca [144 x i8], align 8               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.101553.sroa.0.sroa.5 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.7 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.9 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.11 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.13 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.15 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.17 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.22 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.7.sroa.0.sroa.5 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.7.sroa.0.sroa.7 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.7.sroa.0.sroa.12 = alloca [16 x i8], align 8 ; 4 uses
  %i.i = alloca [640 x i8], align 8               ; 59 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [640 x i8], align 8               ; 57 uses
  %i.l = alloca [640 x i8], align 8               ; 7 uses
  %i.m = alloca [640 x i8], align 8               ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [640 x i8], align 8               ; 53 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [640 x i8], align 8               ; 53 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [640 x i8], align 8               ; 52 uses
  %i.t = alloca [640 x i8], align 8               ; 52 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [640 x i8], align 8               ; 57 uses
  %i.w = alloca [640 x i8], align 8               ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [640 x i8], align 8               ; 56 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [640 x i8], align 8              ; 52 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [640 x i8], align 8              ; 53 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [712 x i8], align 8              ; 57 uses
  %i.ai = alloca [712 x i8], align 8              ; 5 uses
  %i.aj = alloca [712 x i8], align 8              ; 5 uses
  %i.ak = alloca [712 x i8], align 8              ; 5 uses
  %i.al = alloca [712 x i8], align 8              ; 5 uses
  %i.am = alloca [712 x i8], align 8              ; 5 uses
  %i.an = alloca [712 x i8], align 8              ; 5 uses
  %i.ao = alloca [712 x i8], align 8              ; 5 uses
  %i.ap = alloca [712 x i8], align 8              ; 5 uses
  %i.aq = alloca [712 x i8], align 8              ; 5 uses
  %i.ar = alloca [712 x i8], align 8              ; 5 uses
  %i.as = alloca [712 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 5) #27
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 8, !alias.scope !1578, !noalias !1579 ; 2 uses
  %i.at = icmp eq i64 %.sroa.0.0.copyload.i, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.at, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.at, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 11) #27
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.af, align 8, !alias.scope !1580, !noalias !1581 ; 2 uses
  %i.au = icmp eq i64 %.sroa.0.0.copyload.i42, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5.i41.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i43, align 8
  %.sroa.5.i41.sroa.4.0..sroa.55.0..sroa_idx.i43.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5.i41.sroa.4.0.copyload = load i64, ptr %.sroa.5.i41.sroa.4.0..sroa.55.0..sroa_idx.i43.sroa_idx, align 8
  %.sroa.5.i41.sroa.0.0 = select i1 %i.au, ptr undef, ptr %.sroa.5.i41.sroa.0.0.copyload
  %.sroa.5.i41.sroa.4.0 = select i1 %i.au, i64 undef, i64 %.sroa.5.i41.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 11) #27
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ay) #27
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.ae, align 8, !alias.scope !1582, !noalias !1583 ; 2 uses
  %i.az = icmp eq i64 %.sroa.0.0.copyload.i48, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5.i47.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i49, align 8
  %.sroa.5.i47.sroa.4.0..sroa.55.0..sroa_idx.i49.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5.i47.sroa.4.0.copyload = load i64, ptr %.sroa.5.i47.sroa.4.0..sroa.55.0..sroa_idx.i49.sroa_idx, align 8
  %.sroa.5.i47.sroa.0.0 = select i1 %i.az, ptr undef, ptr %.sroa.5.i47.sroa.0.0.copyload
  %.sroa.5.i47.sroa.4.0 = select i1 %i.az, i64 undef, i64 %.sroa.5.i47.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ah, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
end_hunk_1
begin_hunk_2_@_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt7strtimeNtB5_14BrokenDownTime11to_datetime:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.ah, %bb.ae, %bb.y, %bb.t, %bb.r
  %.sroa.4.4..sroa.4.4..sroa.4.8..sroa.418.0.copyload = phi i32 [ %.sroa.5115.i.sroa.5.8.insert.insert, %bb.r ], [ %.sroa.5.i.sroa.5.6.insert.ext, %bb.ae ], [ %.sroa.5101.i.sroa.5.7.insert.insert, %bb.y ], [ %.sroa.5108.i.sroa.5.8.insert.insert, %bb.t ], [ 0, %bb.ah ]
  %.sroa.4.0..sroa.4.0..sroa.4.4..sroa.017.0.copyload = phi i32 [ %i.ak, %bb.r ], [ 0, %bb.ae ], [ 0, %bb.y ], [ 0, %bb.t ], [ 0, %bb.ah ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4.0..sroa.4.0..sroa.4.4..sroa.017.0.copyload, ptr %i.bf, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.4.4..sroa.4.4..sroa.4.8..sroa.418.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.016.0.copyload, ptr %.sroa.515.0..sroa_idx, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.b, %bb.ak, %bb.al
  %.sink = phi i32 [ 1, %bb.b ], [ 1, %bb.ak ], [ 0, %bb.al ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i16, ptr %i.c, align 8, !range !18, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.f = load i16, ptr %i.e, align 2              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.h = load i8, ptr %i.g, align 1               ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 94
  %i.j = load i8, ptr %i.i, align 2, !range !20, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 95
  %i.l = load i8, ptr %i.k, align 1               ; 4 uses
  %i.m = trunc nuw i16 %i.d to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.o = load i8, ptr %i.n, align 4, !range !20
  %i.p = and i8 %i.o, %i.j
  %i.q = icmp ne i8 %i.p, 0
  %.not57 = select i1 %i.m, i1 %i.q, i1 false
  br i1 %.not57, label %bb.c, label %bb.b, !prof !1720

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #26
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.r = add i16 %i.f, 9999
  %or.cond.i = icmp ult i16 %i.r, 19999
  br i1 %or.cond.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.s = add i8 %i.h, -1
  %or.cond1.i = icmp ult i8 %i.s, 12
  br i1 %or.cond1.i, label %bb.e, label %bb.k, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.t = icmp slt i8 %i.l, 1
  br i1 %i.t, label %bb.k, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.u = icmp samesign ugt i8 %i.l, 28
  br i1 %i.u, label %bb.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0ECsdTU8hOCbdCr_8uu_touch.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i8 %i.h, 2
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = srem i16 %i.f, 25
  %i.x = icmp eq i16 %i.w, 0
  %..i.i = select i1 %i.x, i16 15, i16 3
  %i.y = and i16 %..i.i, %i.f
  %i.z = icmp eq i16 %i.y, 0
  %spec.select.i.i = select i1 %i.z, i8 29, i8 28
  br label %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aa = lshr i8 %i.h, 3
  %i.ab = xor i8 %i.aa, %i.h
  %i.ac = or i8 %i.ab, 30
  br label %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i

_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i.i, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = icmp samesign ugt i8 %i.l, %.sroa.0.0.i.i
  br i1 %i.ad, label %bb.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0ECsdTU8hOCbdCr_8uu_touch.exit, !prof !1721

bb.j:                                             ; preds = %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i
  %.sroa.530.0.insert.ext.i = zext i16 %i.f to i32
  %.sroa.530.0.insert.shift.i = shl nuw i32 %.sroa.530.0.insert.ext.i, 16
  %.sroa.429.0.insert.ext.i = zext nneg i8 %i.h to i32
  %.sroa.429.0.insert.shift.i = shl nuw nsw i32 %.sroa.429.0.insert.ext.i, 8
  %.sroa.429.0.insert.insert.i = or disjoint i32 %.sroa.429.0.insert.shift.i, %.sroa.530.0.insert.shift.i
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j, %bb.c, %bb.e
  %.sroa.6.0.i.ph = phi i32 [ 767, %bb.e ], [ 8447, %bb.c ], [ %.sroa.429.0.insert.insert.i, %bb.j ], [ 3327, %bb.d ]
  %i.ae = tail call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 8
  %i.af = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #27
  %i.ag = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ae, ptr noundef %i.af) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0ECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i, %bb.f
  %.sroa.518.0.insert.ext.i = zext nneg i8 %i.l to i32 ; 2 uses
  %.sroa.518.0.insert.shift.i = shl nuw nsw i32 %.sroa.518.0.insert.ext.i, 24
  %.sroa.417.0.insert.ext.i = zext nneg i8 %i.h to i32 ; 3 uses
  %.sroa.417.0.insert.shift.i = shl nuw nsw i32 %.sroa.417.0.insert.ext.i, 16
  %.sroa.016.0.insert.ext.i = zext i16 %i.f to i32
  %i.ai = or disjoint i32 %.sroa.518.0.insert.shift.i, %.sroa.417.0.insert.shift.i
  %.sroa.016.0.insert.insert.i = or disjoint i32 %i.ai, %.sroa.016.0.insert.ext.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.ak = load i8, ptr %i.aj, align 1, !range !1722, !noundef !4 ; 3 uses
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0ECsdTU8hOCbdCr_8uu_touch.exit
  %i.al = icmp ult i8 %i.h, 3                     ; 2 uses
  %i.am = or disjoint i32 %.sroa.417.0.insert.ext.i, 12
  %.sroa.02.0.i.i = select i1 %i.al, i32 %i.am, i32 %.sroa.417.0.insert.ext.i
  %i.an = sext i16 %i.f to i32
  %i.ao = add nsw i32 %i.an, 32800
  %.neg.i.i = sext i1 %i.al to i32
  %i.ap = add nsw i32 %i.ao, %.neg.i.i            ; 3 uses
  %i.aq = udiv i32 %i.ap, 100
  %i.ar = mul nuw nsw i32 %i.ap, 1461
  %i.as = lshr i32 %i.ar, 2
  %i.at = udiv i32 %i.ap, 400
  %i.au = mul nuw nsw i32 %.sroa.02.0.i.i, 979
  %i.av = add nsw i32 %i.au, -2919
  %i.aw = lshr i32 %i.av, 5
  %i.ax = add nuw nsw i32 %.sroa.518.0.insert.ext.i, -12699423
  %i.ay = sub nuw nsw i32 %i.ax, %i.aq
  %i.az = add nuw nsw i32 %i.ay, %i.at
  %i.ba = add nsw i32 %i.az, %i.as
  %i.bb = add nsw i32 %i.ba, %i.aw
  %i.bc = mul i32 %i.bb, 613566757
  %i.bd = add i32 %i.bc, -1879048192
  %i.be = lshr i32 %i.bd, 29                      ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.m, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit, !prof !1723

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @94, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #28
  unreachable

_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit: ; preds = %bb.l
  %i.bg = trunc nuw nsw i32 %i.be to i8           ; 2 uses
  %.not47 = icmp eq i8 %i.ak, %i.bg
  br i1 %.not47, label %bb.n, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit54

bb.n:                                             ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0ECsdTU8hOCbdCr_8uu_touch.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.016.0.insert.insert.i, ptr %i.bh, align 2
  store i16 0, ptr %0, align 8
  br label %bb.o

_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit54: ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ak, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.bg, ptr %i.bj, align 2
  store i8 14, ptr %i.b, align 8
  %i.bk = call noundef ptr @_RNvXs0_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs6JMX4GRUq9U_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit54, %bb.n, %bb.b
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdTU8hOCbdCr_8uu_touch(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 73) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !19
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #27
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.j = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #27
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
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintE9drop_slowCsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsdTU8hOCbdCr_8uu_touch.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsdTU8hOCbdCr_8uu_touch.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMso_NtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB5_14DateArithmetic11checked_add(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !1735, !alias.scope !1734, !noalias !1736, !noundef !4 ; 5 uses
  %i.d = tail call i8 @llvm.smax.i8(i8 %i.c, i8 1)
  switch i8 %i.d, label %default.unreachable [
    i8 1, label %bb.m
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !alias.scope !1734, !noalias !1736, !noundef !4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !alias.scope !1734, !noalias !1736, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !range !1737, !alias.scope !1734, !noalias !1736, !noundef !4
  call void @_RNvXs5_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDurationINtNtCs6JMX4GRUq9U_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i32 noundef %i.h) #27, !noalias !1738
  %i.i = load i64, ptr %i.a, align 8, !range !13, !noalias !1738, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.k, align 8, !noalias !1738, !noundef !4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.k, align 8, !noalias !1738, !noundef !4
  %i.n = tail call noundef ptr @_RNvXs_NtNtCs3JjgEOiFeOI_4jiff5error8durationNtB4_5ErrorNtB6_9IntoError10into_error(i1 noundef zeroext true) #27, !noalias !1738
  %i.o = tail call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.m, ptr noundef %i.n) #26, !noalias !1738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.8.0.ph.ph = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  %i.q = add i64 %.sroa.8.0.ph.ph, -253402300800
  %or.cond.i = icmp ult i64 %i.q, -631107503999
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call noundef i8 @_RNvXs1g_NtNtCs3JjgEOiFeOI_4jiff4util1bNtB6_13UnixEpochDaysNtNtCscxuc9kp9KZq_9jiff_core6bounds6Bounds5error() #26, !noalias !1739
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 8
  %i.u = or disjoint i64 %i.t, 1
  br label %_RINvYNtNtNtCs3JjgEOiFeOI_4jiff4util1b13UnixEpochDaysNtNtCscxuc9kp9KZq_9jiff_core6bounds6Bounds5checkxECsdTU8hOCbdCr_8uu_touch.exit.i

bb.h:                                             ; preds = %bb.f
  %i.v = sdiv i64 %.sroa.8.0.ph.ph, 86400
  %i.w = shl nsw i64 %i.v, 32
  br label %_RINvYNtNtNtCs3JjgEOiFeOI_4jiff4util1b13UnixEpochDaysNtNtCscxuc9kp9KZq_9jiff_core6bounds6Bounds5checkxECsdTU8hOCbdCr_8uu_touch.exit.i

_RINvYNtNtNtCs3JjgEOiFeOI_4jiff4util1b13UnixEpochDaysNtNtCscxuc9kp9KZq_9jiff_core6bounds6Bounds5checkxECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.3.0.insert.insert.i.i = phi i64 [ %i.w, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.x = trunc i64 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !6

bb.i:                                             ; preds = %_RINvYNtNtNtCs3JjgEOiFeOI_4jiff4util1b13UnixEpochDaysNtNtCscxuc9kp9KZq_9jiff_core6bounds6Bounds5checkxECsdTU8hOCbdCr_8uu_touch.exit.i
  %.sroa.424.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.424.0.extract.trunc.i = trunc i64 %.sroa.424.0.extract.shift.i to i8
  %i.y = tail call noundef ptr @_RNvXs_NtNtCs3JjgEOiFeOI_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef %.sroa.424.0.extract.trunc.i) #27, !noalias !1739
  %i.z = tail call noundef ptr @_RNvXs_NtNtCs3JjgEOiFeOI_4jiff5error5civilNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 8) #27, !noalias !1739
  %i.aa = tail call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.y, ptr noundef %i.z) #26, !noalias !1739
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !1739
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

bb.j:                                             ; preds = %_RINvYNtNtNtCs3JjgEOiFeOI_4jiff4util1b13UnixEpochDaysNtNtCscxuc9kp9KZq_9jiff_core6bounds6Bounds5checkxECsdTU8hOCbdCr_8uu_touch.exit.i
  %.sroa.626.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 32
  %.sroa.626.0.extract.trunc.i = trunc nuw i64 %.sroa.626.0.extract.shift.i to i32
  %i.ac = tail call fastcc i48 @_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date11checked_add(i32 noundef %2, i32 noundef %.sroa.626.0.extract.trunc.i) #30 ; 2 uses
  %.sroa.028.2.extract.shift.i = lshr i48 %i.ac, 16
  %.sroa.028.2.extract.trunc.i = trunc nuw i48 %.sroa.028.2.extract.shift.i to i32 ; 2 uses
  %i.ad = trunc i48 %i.ac to i1
  br i1 %i.ad, label %bb.k, label %bb.l, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.028.2.extract.trunc.i) #26, !noalias !1739
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !1739
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.028.2.extract.trunc.i, ptr %i.ag, align 2, !alias.scope !1739
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %.sroa.012.0.extract.trunc.i = trunc i32 %2 to i16
  %.sroa.413.0.extract.shift.i = lshr i32 %2, 16
  %.sroa.413.0.extract.trunc.i = trunc i32 %.sroa.413.0.extract.shift.i to i8
  %.sroa.514.0.extract.shift.i = lshr i32 %2, 24  ; 2 uses
  %.sroa.514.0.extract.trunc.i = trunc nuw i32 %.sroa.514.0.extract.shift.i to i8 ; 2 uses
  %i.ah = icmp eq i8 %i.c, 0
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %2, ptr %i.ai, align 2, !alias.scope !1740, !noalias !1741
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

bb.o:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load i16, ptr %i.aj, align 8, !alias.scope !1741, !noalias !1740, !noundef !4 ; 2 uses
  %i.al = icmp eq i16 %i.ak, 64
  %i.am = sext i8 %i.c to i32                     ; 5 uses
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i32, ptr %i.an, align 8, !alias.scope !1741, !noalias !1740, !noundef !4
  %i.ap = mul i32 %i.ao, %i.am
  %i.aq = tail call fastcc i48 @_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date11checked_add(i32 noundef %2, i32 noundef %i.ap) #30 ; 2 uses
  %.sroa.0130.2.extract.shift.i = lshr i48 %i.aq, 16
  %.sroa.0130.2.extract.trunc.i = trunc nuw i48 %.sroa.0130.2.extract.shift.i to i32 ; 2 uses
  %i.ar = trunc i48 %i.aq to i1
  br i1 %i.ar, label %bb.s, label %bb.t, !prof !6

end_hunk_2
begin_hunk_3_@_RNvXs1_NtCsdTU8hOCbdCr_8uu_touch5errorNtB5_10TouchErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
bb.bf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit178
  %i.ik = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val1.i180 = load ptr, ptr %i.ik, align 8, !alias.scope !1820, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i180, i64 noundef %.val.i179, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1820
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit181

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit181: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit178, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.ak, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit278, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit232, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit187, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit181
  %.sroa.0.1.in = phi i1 [ %i.ii, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit181 ], [ %i.it, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit187 ], [ %i.mh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit232 ], [ %i.ot, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit278 ], [ %i.fy, %bb.ak ]
  ret i1 %.sroa.0.1.in

.loopexit379:                                     ; preds = %.lr.ph.i, %bb.l, %bb.k, %.lr.ph141.i, %.preheader111.i, %bb.p, %bb.q, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs1c7Jwjgy3bq_8filetime8FileTimeNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit, %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5287.0.copyload289, i64 noundef %.sroa.8.0.copyload292) #26
  %i.il = load i8, ptr %i.ad, align 8, !range !20, !noundef !4
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.bj, label %bb.bk

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.m, %bb.n, %bb.r, %bb.s, %.preheader.i, %.preheader114.i
  %.sroa.15297.0 = phi i64 [ %i.dc, %bb.s ], [ %i.cf, %bb.n ], [ %i.ct, %bb.r ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.bw, %bb.m ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 4, i64 noundef %.sroa.15297.0) #27
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ab) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.in = icmp eq i64 %.sroa.0285.0.copyload286, 0
  br i1 %i.in, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit184, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5287.0.copyload289, i64 noundef %.sroa.0285.0.copyload286, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1821
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit184

bb.bj:                                            ; preds = %.loopexit379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %.sroa.0285.0.copyload286, ptr %i.ac, align 8
  %.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.5287.0.copyload289, ptr %.sroa.5287.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.8.0.copyload292, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ab) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit184

bb.bk:                                            ; preds = %.loopexit379
  %i.io = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ip = load double, ptr %i.io, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 4, double noundef %i.ip) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.bh

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit184: ; preds = %bb.bi, %bb.bh, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.af, ptr %i.aa, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.iq = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !4, !align !9, !noundef !4
  %i.it = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.iq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.is, ptr noundef nonnull @108, ptr noundef nonnull %i.aa) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %.val.i185 = load i64, ptr %i.af, align 8, !range !5, !alias.scope !1822, !noundef !4 ; 2 uses
  %i.iu = icmp eq i64 %.val.i185, 0
  br i1 %i.iu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit187, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit184
  %i.iv = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val1.i186 = load ptr, ptr %i.iv, align 8, !alias.scope !1822, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i186, i64 noundef %.val.i185, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1822
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit187

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit187: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit184, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bg

.loopexit393:                                     ; preds = %.lr.ph.i105, %bb.aa, %bb.z, %.lr.ph141.i115, %.preheader111.i122, %bb.ae, %bb.af, %.lr.ph150.i130, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit, %bb.v, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5300.0.copyload302, i64 noundef %.sroa.8304.0.copyload306) #26
  %i.iw = load i8, ptr %i.w, align 8, !range !20, !noundef !4
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.ch, label %bb.ci

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit137: ; preds = %bb.ab, %bb.ac, %bb.ag, %bb.ah, %.preheader.i128, %.preheader114.i113
  %.sroa.15311.0 = phi i64 [ %i.fl, %bb.ah ], [ %i.eo, %bb.ac ], [ %i.fc, %bb.ag ], [ 0, %.preheader.i128 ], [ 0, %.preheader114.i113 ], [ %i.ef, %bb.ab ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, i64 noundef %.sroa.15311.0) #27
  br label %bb.bm

bb.bm:                                            ; preds = %bb.ci, %bb.ch, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit137
  %.sroa.01.0.not = phi i1 [ true, %bb.ch ], [ false, %bb.ci ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit137 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.val = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  %i.iy = ptrtoint ptr %.val to i64               ; 4 uses
  %i.iz = and i64 %i.iy, 3
  switch i64 %i.iz, label %default.unreachable [
    i64 2, label %bb.bn
    i64 3, label %bb.bp
    i64 0, label %bb.bq
    i64 1, label %bb.br
  ], !prof !8

default.unreachable:                              ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.ja = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !1823
  %.not.i.i = icmp eq ptr %i.ja, @46
  br i1 %.not.i.i, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.bo, !prof !21

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #27, !noalias !1823
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.bo, %bb.bn
  %i.jb = and i64 %i.iy, -4294967296
  %i.jc = or disjoint i64 %i.jb, 2
  br label %_RNvNtCsdTU8hOCbdCr_8uu_touch5error11to_uioerror.exit

bb.bp:                                            ; preds = %bb.bm
  %i.jd = and i64 %i.iy, 1095216660480
  %i.je = icmp ne i64 %i.jd, 1095216660480
  call void @llvm.assume(i1 %i.je)
  %i.jf = lshr i64 %i.iy, 32
  %i.jg = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.jf to i8 ; 2 uses
  %i.jh = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.jg)
  call void @llvm.assume(i1 %i.jh)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.bq:                                            ; preds = %bb.bm
  %i.ji = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.jj = load i8, ptr %i.ji, align 8, !range !22, !noalias !1823, !noundef !4
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.br:                                            ; preds = %bb.bm
  %i.jk = getelementptr i8, ptr %.val, i64 31
  %i.jl = load i8, ptr %i.jk, align 8, !range !22, !noalias !1823, !noundef !4
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.br, %bb.bq, %bb.bp
  %.sroa.0.0.i.i = phi i8 [ %i.jl, %bb.br ], [ %switch.idx.cast.i.i.i.i, %bb.bp ], [ %i.jj, %bb.bq ]
  %i.jm = zext nneg i8 %.sroa.0.0.i.i to i64
  %i.jn = shl nuw nsw i64 %i.jm, 32
  %i.jo = or disjoint i64 %i.jn, 3
  br label %_RNvNtCsdTU8hOCbdCr_8uu_touch5error11to_uioerror.exit

_RNvNtCsdTU8hOCbdCr_8uu_touch5error11to_uioerror.exit: ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i
  %.sroa.0.0.in.i = phi i64 [ %i.jc, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i ], [ %i.jo, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i ] ; 3 uses
  %.sroa.0.0.i188 = inttoptr i64 %.sroa.0.0.in.i to ptr
  store i64 -1, ptr %i.u, align 8, !alias.scope !1823
  %i.jp = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %.sroa.0.0.i188, ptr %i.jp, align 8, !alias.scope !1823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1824
  store i64 0, ptr %i.c, align 8, !noalias !1824
  %.sroa.4.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i189, align 8, !noalias !1824
  %.sroa.5.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i190, align 8, !noalias !1824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1824
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.jq, align 8, !noalias !1824
  store ptr %i.c, ptr %i.b, align 8, !noalias !1824
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @114, ptr %i.jr, align 8, !noalias !1824
  %i.js = call noundef zeroext i1 @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #27, !noalias !1825
  br i1 %i.js, label %bb.bs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit.i, !prof !6

bb.bs:                                            ; preds = %_RNvNtCsdTU8hOCbdCr_8uu_touch5error11to_uioerror.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !noalias !1825
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %_RNvNtCsdTU8hOCbdCr_8uu_touch5error11to_uioerror.exit
  %.sroa.0312.0.copyload313 = load i64, ptr %i.c, align 8, !noalias !1826 ; 3 uses
  %.sroa.5314.0.copyload316 = load ptr, ptr %.sroa.4.0..sroa_idx.i189, align 8, !noalias !1826 ; 9 uses
  %.sroa.8318.0.copyload320 = load i64, ptr %.sroa.5.0..sroa_idx.i190, align 8, !noalias !1826 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1824
  %i.jt = and i64 %.sroa.0.0.in.i, 3
  %i.ju = icmp eq i64 %i.jt, 2
  br i1 %i.ju, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECsdTU8hOCbdCr_8uu_touch.exit, label %bb.bt, !prof !1827

bb.bt:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit.i
  %i.jv = icmp ult i64 %.sroa.0.0.in.i, 188978561024
  call void @llvm.assume(i1 %i.jv)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit.i, %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5314.0.copyload316) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  switch i64 %.sroa.8318.0.copyload320, label %thread-pre-split.i224 [
    i64 0, label %.loopexit386
    i64 1, label %bb.bu
  ]

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECsdTU8hOCbdCr_8uu_touch.exit
  %i.jw = load i8, ptr %.sroa.5314.0.copyload316, align 1, !alias.scope !1828, !noalias !1829, !noundef !4 ; 2 uses
  switch i8 %i.jw, label %bb.bv [
    i8 43, label %.loopexit386
    i8 45, label %.loopexit386
  ]

thread-pre-split.i224:                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECsdTU8hOCbdCr_8uu_touch.exit
  %.pr.i225 = load i8, ptr %.sroa.5314.0.copyload316, align 1, !alias.scope !1828, !noalias !1829
  br label %bb.bv

bb.bv:                                            ; preds = %thread-pre-split.i224, %bb.bu
  %i.jx = phi i8 [ %.pr.i225, %thread-pre-split.i224 ], [ %i.jw, %bb.bu ]
  switch i8 %i.jx, label %bb.cc [
    i8 43, label %bb.bw
    i8 45, label %bb.bx
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.5314.0.copyload316, i64 1
  %i.jz = add nsw i64 %.sroa.8318.0.copyload320, -1
  br label %bb.cc

bb.bx:                                            ; preds = %bb.bv
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.5314.0.copyload316, i64 1 ; 2 uses
  %i.kb = add nsw i64 %.sroa.8318.0.copyload320, -1 ; 3 uses
  %i.kc = icmp samesign ult i64 %.sroa.8318.0.copyload320, 17
  br i1 %i.kc, label %.preheader114.i202, label %.lr.ph.i194

.preheader114.i202:                               ; preds = %bb.bx
  %.not103137.i203 = icmp eq i64 %i.kb, 0
  br i1 %.not103137.i203, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit226, label %.lr.ph141.i204

.lr.ph.i194:                                      ; preds = %bb.bx, %bb.ca
  %.sroa.0.1136.i195 = phi ptr [ %i.kd, %bb.ca ], [ %i.ka, %bb.bx ] ; 2 uses
  %.sroa.26.1135.i196 = phi i64 [ %i.ke, %bb.ca ], [ %i.kb, %bb.bx ]
  %.sroa.084.0134.i197 = phi i64 [ %i.kp, %bb.ca ], [ 0, %bb.bx ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i195, i64 1
  %i.ke = add nsw i64 %.sroa.26.1135.i196, -1     ; 2 uses
  %i.kf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i197, i64 10) ; 2 uses
  %i.kg = extractvalue { i64, i1 } %i.kf, 0
  %i.kh = extractvalue { i64, i1 } %i.kf, 1
  br i1 %i.kh, label %.loopexit386, label %bb.by, !prof !6

bb.by:                                            ; preds = %.lr.ph.i194
  %i.ki = load i8, ptr %.sroa.0.1136.i195, align 1, !alias.scope !1828, !noalias !1829, !noundef !4
  %i.kj = zext i8 %i.ki to i32
  %i.kk = add nsw i32 %i.kj, -48                  ; 2 uses
  %i.kl = icmp ult i32 %i.kk, 10
  br i1 %i.kl, label %bb.bz, label %.loopexit386

bb.bz:                                            ; preds = %bb.by
  %i.km = zext nneg i32 %i.kk to i64
  %i.kn = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.kg, i64 %i.km) ; 2 uses
  %i.ko = extractvalue { i64, i1 } %i.kn, 1
  br i1 %i.ko, label %.loopexit386, label %bb.ca, !prof !6

bb.ca:                                            ; preds = %bb.bz
  %i.kp = extractvalue { i64, i1 } %i.kn, 0       ; 2 uses
  %.not102.i199 = icmp eq i64 %i.ke, 0
  br i1 %.not102.i199, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit226, label %.lr.ph.i194

.lr.ph141.i204:                                   ; preds = %.preheader114.i202, %bb.cb
  %.sroa.0.2140.i205 = phi ptr [ %i.kw, %bb.cb ], [ %i.ka, %.preheader114.i202 ] ; 2 uses
  %.sroa.26.2139.i206 = phi i64 [ %i.kv, %bb.cb ], [ %i.kb, %.preheader114.i202 ]
  %.sroa.084.2138.i207 = phi i64 [ %i.ky, %bb.cb ], [ 0, %.preheader114.i202 ]
  %i.kq = load i8, ptr %.sroa.0.2140.i205, align 1, !alias.scope !1828, !noalias !1829, !noundef !4
  %i.kr = zext i8 %i.kq to i32
  %i.ks = add nsw i32 %i.kr, -48                  ; 2 uses
  %i.kt = icmp ult i32 %i.ks, 10
  br i1 %i.kt, label %bb.cb, label %.loopexit386

bb.cb:                                            ; preds = %.lr.ph141.i204
  %i.ku = mul i64 %.sroa.084.2138.i207, 10
  %i.kv = add nsw i64 %.sroa.26.2139.i206, -1     ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i205, i64 1
  %i.kx = zext nneg i32 %i.ks to i64
  %i.ky = sub i64 %i.ku, %i.kx                    ; 2 uses
  %.not103.i208 = icmp eq i64 %i.kv, 0
  br i1 %.not103.i208, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit226, label %.lr.ph141.i204

bb.cc:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.26.0.i209 = phi i64 [ %i.jz, %bb.bw ], [ %.sroa.8318.0.copyload320, %bb.bv ] ; 4 uses
  %.sroa.0.0.i210 = phi ptr [ %i.jy, %bb.bw ], [ %.sroa.5314.0.copyload316, %bb.bv ] ; 2 uses
  %i.kz = icmp samesign ult i64 %.sroa.26.0.i209, 16
  br i1 %i.kz, label %.preheader.i217, label %.preheader111.i211

.preheader.i217:                                  ; preds = %bb.cc
  %.not105146.i218 = icmp eq i64 %.sroa.26.0.i209, 0
  br i1 %.not105146.i218, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit226, label %.lr.ph150.i219

.preheader111.i211:                               ; preds = %bb.cc, %bb.cf
  %.sroa.0.3145.i212 = phi ptr [ %i.la, %bb.cf ], [ %.sroa.0.0.i210, %bb.cc ] ; 2 uses
  %.sroa.26.3144.i213 = phi i64 [ %i.lb, %bb.cf ], [ %.sroa.26.0.i209, %bb.cc ]
  %.sroa.084.3143.i214 = phi i64 [ %i.lm, %bb.cf ], [ 0, %bb.cc ]
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i212, i64 1
  %i.lb = add nsw i64 %.sroa.26.3144.i213, -1     ; 2 uses
  %i.lc = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i214, i64 10) ; 2 uses
  %i.ld = extractvalue { i64, i1 } %i.lc, 0
  %i.le = extractvalue { i64, i1 } %i.lc, 1
  br i1 %i.le, label %.loopexit386, label %bb.cd, !prof !6

bb.cd:                                            ; preds = %.preheader111.i211
  %i.lf = load i8, ptr %.sroa.0.3145.i212, align 1, !alias.scope !1828, !noalias !1829, !noundef !4
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48                  ; 2 uses
  %i.li = icmp ult i32 %i.lh, 10
  br i1 %i.li, label %bb.ce, label %.loopexit386

bb.ce:                                            ; preds = %bb.cd
  %i.lj = zext nneg i32 %i.lh to i64
  %i.lk = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ld, i64 %i.lj) ; 2 uses
  %i.ll = extractvalue { i64, i1 } %i.lk, 1
  br i1 %i.ll, label %.loopexit386, label %bb.cf, !prof !6

bb.cf:                                            ; preds = %bb.ce
  %i.lm = extractvalue { i64, i1 } %i.lk, 0       ; 2 uses
  %.not104.i216 = icmp eq i64 %i.lb, 0
  br i1 %.not104.i216, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit226, label %.preheader111.i211

.lr.ph150.i219:                                   ; preds = %.preheader.i217, %bb.cg
  %.sroa.0.4149.i220 = phi ptr [ %i.lt, %bb.cg ], [ %.sroa.0.0.i210, %.preheader.i217 ] ; 2 uses
  %.sroa.26.4148.i221 = phi i64 [ %i.ls, %bb.cg ], [ %.sroa.26.0.i209, %.preheader.i217 ]
  %.sroa.084.4147.i222 = phi i64 [ %i.lv, %bb.cg ], [ 0, %.preheader.i217 ]
  %i.ln = load i8, ptr %.sroa.0.4149.i220, align 1, !alias.scope !1828, !noalias !1829, !noundef !4
  %i.lo = zext i8 %i.ln to i32
  %i.lp = add nsw i32 %i.lo, -48                  ; 2 uses
  %i.lq = icmp ult i32 %i.lp, 10
  br i1 %i.lq, label %bb.cg, label %.loopexit386

bb.cg:                                            ; preds = %.lr.ph150.i219
  %i.lr = mul i64 %.sroa.084.4147.i222, 10
  %i.ls = add nsw i64 %.sroa.26.4148.i221, -1     ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i220, i64 1
  %i.lu = zext nneg i32 %i.lp to i64
  %i.lv = add i64 %i.lr, %i.lu                    ; 2 uses
  %.not105.i223 = icmp eq i64 %i.ls, 0
  br i1 %.not105.i223, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit226, label %.lr.ph150.i219

bb.ch:                                            ; preds = %.loopexit393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.sroa.0298.0.copyload299, ptr %i.v, align 8
  %.sroa.5300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.5300.0.copyload302, ptr %.sroa.5300.0..sroa_idx, align 8
  %.sroa.8304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.8304.0.copyload306, ptr %.sroa.8304.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bm

bb.ci:                                            ; preds = %.loopexit393
  %i.lw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.lx = load double, ptr %i.lw, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, double noundef %i.lx) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bm

.loopexit386:                                     ; preds = %.lr.ph.i194, %bb.bz, %bb.by, %.lr.ph141.i204, %.preheader111.i211, %bb.cd, %bb.ce, %.lr.ph150.i219, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECsdTU8hOCbdCr_8uu_touch.exit, %bb.bu, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5314.0.copyload316, i64 noundef %.sroa.8318.0.copyload320) #26
  %i.ly = load i8, ptr %i.t, align 8, !range !20, !noundef !4
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.cl, label %bb.cm

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit226: ; preds = %bb.ca, %bb.cb, %bb.cf, %bb.cg, %.preheader.i217, %.preheader114.i202
  %.sroa.15325.0 = phi i64 [ %i.lv, %bb.cg ], [ %i.ky, %bb.cb ], [ %i.lm, %bb.cf ], [ 0, %.preheader.i217 ], [ 0, %.preheader114.i202 ], [ %i.kp, %bb.ca ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 5, i64 noundef %.sroa.15325.0) #27
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 39, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ma = icmp eq i64 %.sroa.0312.0.copyload313, 0
  br i1 %i.ma, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit229, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5314.0.copyload316, i64 noundef %.sroa.0312.0.copyload313, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1830
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit229

bb.cl:                                            ; preds = %.loopexit386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.0312.0.copyload313, ptr %i.s, align 8
  %.sroa.5314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.5314.0.copyload316, ptr %.sroa.5314.0..sroa_idx, align 8
  %.sroa.8318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.8318.0.copyload320, ptr %.sroa.8318.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 39, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r) #27
end_hunk_3
