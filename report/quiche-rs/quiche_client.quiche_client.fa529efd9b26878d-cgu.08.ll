Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_client.quiche_client.fa529efd9b26878d-cgu.08?download=true
inline.NumInlined: 215
inline.NumDeleted: 105
begin_hunk_0_@_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyTyyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client:bb.a
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyTyyEENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client.exit, !dbg !8112

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyTyyEENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void, !dbg !8113
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 !dbg !8114 {
bb.a:
    #dbg_value(ptr %0, !8163, !DIExpression(), !8165)
  %.val = load ptr, ptr %0, align 8, !dbg !8188   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8188
  %.val1 = load i64, ptr %i.a, align 8, !dbg !8188, !noundef !557 ; 4 uses
    #dbg_value(ptr poison, !8166, !DIExpression(), !8117)
    #dbg_value(ptr poison, !8171, !DIExpression(), !8120)
    #dbg_value(ptr poison, !8173, !DIExpression(), !8124)
    #dbg_value(ptr poison, !8179, !DIExpression(), !8129)
    #dbg_value(ptr poison, !8174, !DIExpression(), !8124)
    #dbg_value(ptr poison, !8168, !DIExpression(), !8117)
    #dbg_value(i64 8, !8180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8129)
    #dbg_value(i64 8, !8169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8117)
    #dbg_value(i64 8, !8175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8124)
    #dbg_value(i64 16, !8180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8129)
    #dbg_value(i64 16, !8169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8117)
    #dbg_value(i64 16, !8175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8124)
  %i.b = icmp eq i64 %.val1, 0, !dbg !8189
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !dbg !8190

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
    #dbg_value(i64 8, !2063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8131)
    #dbg_value(i64 16, !2063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8131)
    #dbg_value(i64 %.val1, !2079, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8134)
    #dbg_value(i64 %.val1, !2067, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8131)
    #dbg_value(i64 %.val1, !2090, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8135)
    #dbg_value(i64 8, !2085, !DIExpression(), !8134)
    #dbg_value(i64 8, !2068, !DIExpression(), !8136)
    #dbg_value(i64 8, !2089, !DIExpression(), !8135)
    #dbg_value(i64 16, !2069, !DIExpression(), !8136)
  %i.c = shl i64 %.val1, 3, !dbg !8191
    #dbg_value(i1 false, !2094, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8138)
    #dbg_value(i64 %i.c, !2096, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8140)
    #dbg_value(i64 15, !2097, !DIExpression(), !8140)
  %i.d = icmp slt i64 %.val1, 2305843009213693950, !dbg !8192
    #dbg_value(i1 true, !2094, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8142)
  tail call void @llvm.assume(i1 %i.d), !dbg !8193
  %i.e = and i64 %i.c, -16, !dbg !8194            ; 2 uses
  %i.f = add i64 %i.e, 16, !dbg !8194             ; 2 uses
    #dbg_value(i64 %i.f, !2096, !DIExpression(), !8144)
    #dbg_value(i64 %i.f, !2070, !DIExpression(), !8145)
  %i.g = add nsw i64 %.val1, 17, !dbg !8195
    #dbg_value(i64 %i.g, !2097, !DIExpression(), !8144)
  %i.h = add i64 %i.g, %i.f, !dbg !8196           ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f, !dbg !8196
    #dbg_value(i1 %i.i, !2094, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8147)
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i), !dbg !8197
  tail call void @llvm.assume(i1 %i.j), !dbg !8197
    #dbg_value(i64 16, !8177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8148)
    #dbg_value(i64 16, !8181, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8149)
    #dbg_value(i64 %i.h, !8177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8148)
    #dbg_value(i64 %i.h, !8181, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8149)
    #dbg_value(i64 %i.f, !8185, !DIExpression(), !8152)
    #dbg_value(i64 %i.f, !8182, !DIExpression(), !8149)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !8186, !DIExpression(), !8152)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !8176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8148)
    #dbg_value(ptr poison, !2017, !DIExpression(), !8155)
    #dbg_value(ptr poison, !2026, !DIExpression(), !8156)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !2030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8159)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !2027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8156)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !2021, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8155)
    #dbg_value(!DIArgList(ptr %.val, i64 0, i64 %i.f), !2036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8160)
    #dbg_value(i64 16, !2033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8159)
    #dbg_value(i64 16, !2028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8156)
    #dbg_value(i64 16, !2022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8155)
    #dbg_value(i64 16, !2037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8160)
    #dbg_value(i64 %i.h, !2033, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8159)
    #dbg_value(i64 %i.h, !2028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8156)
    #dbg_value(i64 %i.h, !2022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8155)
    #dbg_value(i64 %i.h, !2037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8160)
  %i.k = icmp eq i64 %i.h, 0, !dbg !8198
  br i1 %i.k, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client.exit, label %bb.b, !dbg !8198

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e, !dbg !8199
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !2036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8160)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !2021, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8155)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !2027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8156)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !2030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8159)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.l), !8176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8148)
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l, !dbg !8200
    #dbg_value(ptr %i.m, !8176, !DIExpression(), !8148)
    #dbg_value(ptr %i.m, !2030, !DIExpression(), !8159)
    #dbg_value(ptr %i.m, !2027, !DIExpression(), !8156)
    #dbg_value(ptr %i.m, !2021, !DIExpression(), !8155)
    #dbg_value(ptr %i.m, !2036, !DIExpression(), !8160)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !dbg !8201
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client.exit, !dbg !8202

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void, !dbg !8203
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 !dbg !8204 {
bb.a:
    #dbg_value(ptr %0, !8253, !DIExpression(), !8255)
  %.val = load ptr, ptr %0, align 8, !dbg !8278   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8278
  %.val1 = load i64, ptr %i.a, align 8, !dbg !8278, !noundef !557 ; 3 uses
    #dbg_value(ptr poison, !8256, !DIExpression(), !8207)
    #dbg_value(ptr poison, !8261, !DIExpression(), !8210)
    #dbg_value(ptr poison, !8263, !DIExpression(), !8214)
    #dbg_value(ptr poison, !8269, !DIExpression(), !8219)
    #dbg_value(ptr poison, !8264, !DIExpression(), !8214)
    #dbg_value(ptr poison, !8258, !DIExpression(), !8207)
    #dbg_value(i64 16, !8270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8219)
    #dbg_value(i64 16, !8259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8207)
    #dbg_value(i64 16, !8265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8214)
    #dbg_value(i64 16, !8270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8219)
    #dbg_value(i64 16, !8259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8207)
    #dbg_value(i64 16, !8265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8214)
  %i.b = icmp eq i64 %.val1, 0, !dbg !8279
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyyENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !dbg !8280

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
    #dbg_value(i64 16, !2063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8221)
    #dbg_value(i64 16, !2063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8221)
    #dbg_value(i64 %.val1, !2079, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8224)
    #dbg_value(i64 %.val1, !2067, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8221)
    #dbg_value(i64 %.val1, !2090, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8225)
    #dbg_value(i64 16, !2085, !DIExpression(), !8224)
    #dbg_value(i64 16, !2068, !DIExpression(), !8226)
    #dbg_value(i64 16, !2089, !DIExpression(), !8225)
    #dbg_value(i64 16, !2069, !DIExpression(), !8226)
  %i.c = shl i64 %.val1, 4, !dbg !8281            ; 2 uses
  %i.d = add i64 %i.c, 16, !dbg !8281             ; 2 uses
    #dbg_value(i1 false, !2094, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8228)
    #dbg_value(i64 %i.d, !2096, !DIExpression(), !8230)
    #dbg_value(i64 15, !2097, !DIExpression(), !8230)
    #dbg_value(i1 false, !2094, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8232)
    #dbg_value(i64 %i.d, !2096, !DIExpression(), !8234)
    #dbg_value(i64 %i.d, !2070, !DIExpression(), !8235)
  %i.e = add i64 %.val1, 17, !dbg !8282
    #dbg_value(i64 %i.e, !2097, !DIExpression(), !8234)
  %i.f = add i64 %i.e, %i.d, !dbg !8283           ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d, !dbg !8283
    #dbg_value(i1 %i.g, !2094, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8237)
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g), !dbg !8284
  tail call void @llvm.assume(i1 %i.h), !dbg !8284
    #dbg_value(i64 16, !8267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8238)
    #dbg_value(i64 16, !8271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8239)
    #dbg_value(i64 %i.f, !8267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8238)
    #dbg_value(i64 %i.f, !8271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8239)
    #dbg_value(i64 %i.d, !8275, !DIExpression(), !8242)
    #dbg_value(i64 %i.d, !8272, !DIExpression(), !8239)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !8276, !DIExpression(), !8242)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !8266, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8238)
    #dbg_value(ptr poison, !2017, !DIExpression(), !8245)
    #dbg_value(ptr poison, !2026, !DIExpression(), !8246)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !2030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8249)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !2027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8246)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !2021, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8245)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !2036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8250)
    #dbg_value(i64 16, !2033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8249)
    #dbg_value(i64 16, !2028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8246)
    #dbg_value(i64 16, !2022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8245)
    #dbg_value(i64 16, !2037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8250)
    #dbg_value(i64 %i.f, !2033, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8249)
    #dbg_value(i64 %i.f, !2028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8246)
    #dbg_value(i64 %i.f, !2022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8245)
    #dbg_value(i64 %i.f, !2037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8250)
  %i.i = icmp eq i64 %i.f, 0, !dbg !8285
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyyENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client.exit, label %bb.b, !dbg !8285

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c, !dbg !8286
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !2036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8250)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !2021, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8245)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !2027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8246)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !2030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8249)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !8266, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8238)
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j, !dbg !8287
    #dbg_value(ptr %i.k, !8266, !DIExpression(), !8238)
    #dbg_value(ptr %i.k, !2030, !DIExpression(), !8249)
    #dbg_value(ptr %i.k, !2027, !DIExpression(), !8246)
    #dbg_value(ptr %i.k, !2021, !DIExpression(), !8245)
    #dbg_value(ptr %i.k, !2036, !DIExpression(), !8250)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !dbg !8288
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyyENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client.exit, !dbg !8289

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyyENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void, !dbg !8290
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCslusEaBCZKLp_13quiche_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !8292 {
bb.a:
    #dbg_declare(ptr %1, !8356, !DIExpression(), !8359)
    #dbg_value(ptr %1, !8360, !DIExpression(), !8366)
    #dbg_value(ptr %1, !8367, !DIExpression(), !8374)
    #dbg_value(ptr %1, !8375, !DIExpression(), !8381)
    #dbg_value(ptr %1, !8382, !DIExpression(), !8385)
  %i.a = load ptr, ptr %1, align 8, !dbg !8424, !nonnull !557, !noundef !557 ; 5 uses
    #dbg_value(ptr %i.a, !8371, !DIExpression(), !8386)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8425
  %i.c = load i64, ptr %i.b, align 8, !dbg !8425, !noundef !557 ; 5 uses
    #dbg_value(ptr %i.a, !1947, !DIExpression(), !8300)
    #dbg_value(ptr %i.a, !1930, !DIExpression(), !8301)
    #dbg_value(ptr %i.a, !1947, !DIExpression(), !8303)
    #dbg_value(ptr %i.a, !1931, !DIExpression(), !8301)
    #dbg_value(i64 %i.c, !1948, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8303)
    #dbg_value(i64 %i.c, !1932, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8301)
    #dbg_value(i64 16, !1949, !DIExpression(), !8300)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.c), !1943, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value), !8304)
    #dbg_value(ptr %i.a, !1951, !DIExpression(), !8306)
  %.val911.i = load <16 x i8>, ptr %i.a, align 16, !dbg !8426, !noalias !8387
    #dbg_value(<2 x i64> poison, !1958, !DIExpression(), !8311)
    #dbg_value(ptr poison, !1960, !DIExpression(), !8312)
    #dbg_declare(ptr poison, !1383, !DIExpression(), !8314)
    #dbg_value(<16 x i8> poison, !1387, !DIExpression(), !8315)
    #dbg_value(!DIArgList(<16 x i8> %.val911.i, <16 x i8> splat (i8 7)), !1388, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !8316)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !8427
  %i.e = load i64, ptr %i.d, align 8, !dbg !8427, !noundef !557
    #dbg_value(ptr %i.a, !8357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8388)
    #dbg_value(ptr %i.a, !8389, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8402)
    #dbg_value(ptr %i.a, !8357, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8388)
    #dbg_value(ptr %i.a, !8389, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8402)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.c), !8357, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !8388)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.c), !8389, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !8402)
    #dbg_value(!DIArgList(<16 x i8> %.val911.i, <16 x i8> splat (i8 -1)), !8357, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !8388)
    #dbg_value(!DIArgList(<16 x i8> %.val911.i, <16 x i8> splat (i8 -1)), !8389, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !8402)
    #dbg_value(i64 %i.e, !8389, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !8402)
    #dbg_value(i64 %i.e, !8357, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !8388)
    #dbg_value(ptr %i.a, !8393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8402)
    #dbg_value(i64 %i.c, !8393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8402)
    #dbg_declare(ptr poison, !8405, !DIExpression(), !8326)
    #dbg_value(ptr poison, !8415, !DIExpression(), !8329)
  %i.f = icmp eq i64 %i.c, 0, !dbg !8428
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE15into_allocationCslusEaBCZKLp_13quiche_client.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !dbg !8429

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
    #dbg_value(i64 8, !2063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8331)
    #dbg_value(i64 16, !2063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8331)
    #dbg_value(i64 %i.c, !2079, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8334)
    #dbg_value(i64 %i.c, !2067, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8331)
    #dbg_value(i64 %i.c, !2090, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8335)
    #dbg_value(i64 8, !2085, !DIExpression(), !8334)
    #dbg_value(i64 8, !2068, !DIExpression(), !8336)
    #dbg_value(i64 8, !2089, !DIExpression(), !8335)
    #dbg_value(i64 16, !2069, !DIExpression(), !8336)
    #dbg_value(i64 %i.c, !2094, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_constu, 2305843009213693951, DW_OP_gt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8338)
    #dbg_value(i64 %i.c, !2092, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_constu, 2305843009213693951, DW_OP_gt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8339)
    #dbg_value(i64 %i.c, !2091, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !8339)
    #dbg_value(i64 %i.c, !2096, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !8341)
    #dbg_value(i64 15, !2097, !DIExpression(), !8341)
    #dbg_value(i64 %i.c, !2094, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_constu, 2305843009213693951, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8343)
  %or.cond.i = icmp slt i64 %i.c, 2305843009213693950, !dbg !8430
  tail call void @llvm.assume(i1 %or.cond.i), !dbg !8430
  %i.g = shl i64 %i.c, 3, !dbg !8431
    #dbg_value(i64 %i.g, !2091, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8339)
    #dbg_value(i64 %i.g, !2096, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8341)
  %i.h = and i64 %i.g, -16, !dbg !8432            ; 2 uses
    #dbg_value(i64 %i.h, !2096, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !8345)
    #dbg_value(i64 %i.h, !2070, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !8346)
    #dbg_value(i64 %i.c, !2097, !DIExpression(DW_OP_plus_uconst, 17, DW_OP_stack_value), !8345)
  %i.i = add nsw i64 %i.c, 33, !dbg !8433
  %i.j = add i64 %i.i, %i.h, !dbg !8433
    #dbg_value(i1 false, !2094, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8348)
    #dbg_value(i64 16, !8411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8349)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.h), !8411, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 33, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8349)
    #dbg_value(i64 %i.h, !8420, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !8352)
    #dbg_value(i64 %i.h, !8412, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !8349)
    #dbg_value(ptr %i.a, !8421, !DIExpression(), !8352)
  %i.k = sub nuw nsw i64 -16, %i.h, !dbg !8434
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k, !dbg !8435
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.h), !8399, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 33, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8423)
    #dbg_value(ptr %i.l, !8399, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8423)
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE15into_allocationCslusEaBCZKLp_13quiche_client.exit, !dbg !8436

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE15into_allocationCslusEaBCZKLp_13quiche_client.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.521.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ], !dbg !8437
  %.sroa.420.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ], !dbg !8437
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ], !dbg !8438
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8439
    #dbg_value(ptr %i.m, !8357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8388)
    #dbg_value(ptr %i.m, !8389, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8402)
  %i.n = icmp sgt <16 x i8> %.val911.i, splat (i8 -1), !dbg !8440
    #dbg_value(<16 x i1> %i.n, !8357, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !8388)
    #dbg_value(<16 x i1> %i.n, !8389, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !8402)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c, !dbg !8441
  %i.p = getelementptr i8, ptr %i.o, i64 1, !dbg !8441
    #dbg_value(ptr %i.p, !1943, !DIExpression(), !8304)
    #dbg_value(ptr %i.p, !8357, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8388)
    #dbg_value(ptr %i.p, !8389, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8402)
    #dbg_value(i64 %.sroa.420.0, !8399, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8423)
    #dbg_value(ptr %.sroa.521.0, !8399, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8423)
    #dbg_value(i64 %.sink.i, !8399, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8423)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8442
  store ptr %i.a, ptr %i.q, align 8, !dbg !8442
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !8442
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !dbg !8442
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !8442
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !dbg !8442
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !8442
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !dbg !8442
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !8442
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !8442
  store i64 %.sink.i, ptr %0, align 8, !dbg !8442
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8442
  store i64 %.sroa.420.0, ptr %.sroa.420.0..sroa_idx, align 8, !dbg !8442
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8442
  store ptr %.sroa.521.0, ptr %.sroa.521.0..sroa_idx, align 8, !dbg !8442
  ret void, !dbg !8443
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtCs3f36owOmepS_6quiche6stream6StreamEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtBT_14StreamIdHasherEE0ECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #11

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyTyyEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs3f36owOmepS_6quiche6stream14StreamIdHasherEE0ECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #11

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE14reserve_rehashNCINvNtB8_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs3f36owOmepS_6quiche6stream14StreamIdHasherEE0ECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #11

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyyEE14reserve_rehashNCINvNtB8_3map11make_hasheryyINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs3f36owOmepS_6quiche6stream14StreamIdHasherEE0ECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { noinline }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { cold }
attributes #22 = { noinline noreturn }
attributes #23 = { nounwind }

!llvm.module.flags = !{!437, !438, !439, !440, !441, !442}
!llvm.ident = !{!443}
!llvm.dbg.cu = !{!170}

!0 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&u8 as core::fmt::Debug>::{vtable_type}", file: !445, size: 256, align: 64, flags: DIFlagArtificial, elements: !555, vtableHolder: !556, templateParams: !557, identifier: "ce623a742c3328d735cda3a951e3a8e1")
!1 = distinct !DIGlobalVariable(name: "<&u8 as core::fmt::Debug>::{vtable}", scope: null, file: !445, type: !0, isLocal: true, isDefinition: true)
!2 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u8>", scope: !578, file: !445, align: 8, flags: DIFlagPublic, elements: !557, templateParams: !591, identifier: "146b3aeda1c45f24e2166b366592181")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !594, file: !445, align: 8, flags: DIFlagPublic, elements: !557, identifier: "8460d4266e4993ec9914e3baad45ea18")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<u8, alloc::alloc::Global>", scope: !574, file: !445, size: 128, align: 64, flags: DIFlagProtected, elements: !589, templateParams: !593, identifier: "812d0db64fea1b7464457f30f154f4")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<u8, alloc::alloc::Global>", scope: !570, file: !445, size: 192, align: 64, flags: DIFlagPublic, elements: !586, templateParams: !593, identifier: "1bd6b564d1f00359fe3d0a71aed88d28")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnknownTransportParameter<alloc::vec::Vec<u8, alloc::alloc::Global>>", scope: !565, file: !445, size: 256, align: 64, flags: DIFlagPublic, elements: !583, templateParams: !596, identifier: "fd1dc73bf77bb57b61f71bd911aa5318")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<quiche::transport_params::UnknownTransportParameter<alloc::vec::Vec<u8, alloc::alloc::Global>>>", scope: !578, file: !445, align: 8, flags: DIFlagPublic, elements: !557, templateParams: !580, identifier: "a3a00ccac98dc0b267da15581715e0ff")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UsizeNoHighBit", scope: !602, file: !445, size: 64, align: 64, flags: DIFlagPublic, elements: !604, templateParams: !557, identifier: "de2a7f83086bb66b1d84717ca15ed153")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !610, file: !445, size: 64, align: 64, flags: DIFlagPublic, elements: !613, templateParams: !591, identifier: "c31d4ef568cfbefd99aa13b8883a7b70")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u8>", scope: !606, file: !445, size: 64, align: 64, flags: DIFlagPublic, elements: !609, templateParams: !591, identifier: "29b6b6df28c88bc2c540a8e9e6174ec0")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVecInner<alloc::alloc::Global>", scope: !574, file: !445, size: 128, align: 64, flags: DIFlagPrivate, elements: !600, templateParams: !614, identifier: "df99d7c016703de7881c5c4f5cc3291d")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<quiche::transport_params::UnknownTransportParameter<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !574, file: !445, size: 128, align: 64, flags: DIFlagProtected, elements: !577, templateParams: !615, identifier: "9d8b409386c7f6fcd8954e6a913d2910")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<quiche::transport_params::UnknownTransportParameter<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !570, file: !445, size: 192, align: 64, flags: DIFlagPublic, elements: !573, templateParams: !615, identifier: "c81595d7f78dba4d8858977b991f986f")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnknownTransportParameters", scope: !565, file: !445, size: 256, align: 64, flags: DIFlagPublic, elements: !568, templateParams: !557, identifier: "4019b935db2029a5155d289ef144623e")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&quiche::transport_params::UnknownTransportParameters as core::fmt::Debug>::{vtable_type}", file: !445, size: 256, align: 64, flags: DIFlagArtificial, elements: !562, vtableHolder: !563, templateParams: !557, identifier: "1df7ad030cfe357a5af8ccac12c34d25")
!16 = distinct !DIGlobalVariable(name: "<&quiche::transport_params::UnknownTransportParameters as core::fmt::Debug>::{vtable}", scope: null, file: !445, type: !15, isLocal: true, isDefinition: true)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ipv6Addr", scope: !637, file: !445, size: 128, align: 8, flags: DIFlagPublic, elements: !642, templateParams: !557, identifier: "d6b8438b69a1c32d21983201f26dd51d")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SocketAddrV6", scope: !623, file: !445, size: 224, align: 32, flags: DIFlagPublic, elements: !636, templateParams: !557, identifier: "671f0c808c3a1411d4517d14e4dc0aef")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "V6", scope: !24, file: !445, size: 256, align: 32, flags: DIFlagPublic, elements: !629, templateParams: !557, identifier: "9b0d36e4fce208a0a87f79d6df5f8bc")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ipv4Addr", scope: !637, file: !445, size: 32, align: 8, flags: DIFlagPublic, elements: !652, templateParams: !557, identifier: "dcc1b7875d6fe740c6a20926ca9ee2dd")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SocketAddrV4", scope: !623, file: !445, size: 48, align: 16, flags: DIFlagPublic, elements: !647, templateParams: !557, identifier: "3bb243f51b7cbbbf63253e31fd80b96")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "V4", scope: !24, file: !445, size: 256, align: 32, flags: DIFlagPublic, elements: !644, templateParams: !557, identifier: "42550d2dac0b0058a951e4af051c2208")
!23 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !24, file: !445, size: 256, align: 32, elements: !627, templateParams: !557, identifier: "688faeba2e1ed741a0262a8d9cb12ee4", discriminator: !653)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SocketAddr", scope: !623, file: !445, size: 256, align: 32, flags: DIFlagPublic, elements: !624, templateParams: !557, identifier: "6fee437e1d298f126ad92bccb905354f")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::net::socket_addr::SocketAddr as core::fmt::Debug>::{vtable_type}", file: !445, size: 256, align: 64, flags: DIFlagArtificial, elements: !620, vtableHolder: !621, templateParams: !557, identifier: "194df827f8ea1f69a7e81516f15899b8")
!26 = distinct !DIGlobalVariable(name: "<&core::net::socket_addr::SocketAddr as core::fmt::Debug>::{vtable}", scope: null, file: !445, type: !25, isLocal: true, isDefinition: true)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, u64)", file: !445, size: 128, align: 64, elements: !675, templateParams: !557, identifier: "7891b4bdc2158a166fd4174a50224f9b")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(u64, u64)>", scope: !578, file: !445, align: 8, flags: DIFlagPublic, elements: !557, templateParams: !672, identifier: "eda86c61fffa2971d01dcdbc464c7d87")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTableInner", scope: !524, file: !445, size: 256, align: 64, flags: DIFlagPrivate, elements: !680, templateParams: !557, identifier: "9d8dadb85e0d0e69dfcc330720e76842")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTable<(u64, u64), alloc::alloc::Global>", scope: !524, file: !445, size: 256, align: 64, flags: DIFlagProtected, elements: !670, templateParams: !681, identifier: "1e5756541f4b91b77af305d1dca20115")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<u64, u64, u64>", scope: !683, file: !445, size: 64, align: 64, elements: !686, templateParams: !557, identifier: "a112c9b0dc89e90a1ca25c147dd90904")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(u64, u64), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, u64>>", scope: !661, file: !445, size: 128, align: 64, elements: !666, templateParams: !557, identifier: "b7d133f9ca8b5359d7d535f1ec04194")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, u64), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, u64>> as core::ops::function::FnMut<(usize)>>::{vtable_type}", file: !445, size: 320, align: 64, flags: DIFlagArtificial, elements: !659, vtableHolder: !32, templateParams: !557, identifier: "1b8838416ebe1824c36165c3f293b759")
!34 = distinct !DIGlobalVariable(name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, u64), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, u64>> as core::ops::function::FnMut<(usize)>>::{vtable}", scope: null, file: !445, type: !33, isLocal: true, isDefinition: true)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, ())", file: !445, size: 64, align: 64, elements: !706, templateParams: !557, identifier: "b6044aec5995124f4096b2dc0216fd22")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(u64, ())>", scope: !578, file: !445, align: 8, flags: DIFlagPublic, elements: !557, templateParams: !703, identifier: "f95445e8eb8614d239163073f7cd7a4")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTable<(u64, ()), alloc::alloc::Global>", scope: !524, file: !445, size: 256, align: 64, flags: DIFlagProtected, elements: !701, templateParams: !707, identifier: "ff37655f6c162ebde3ba9de8e46f8c55")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<u64, u64, ()>", scope: !683, file: !445, size: 64, align: 64, elements: !709, templateParams: !557, identifier: "aeba0800fd27af265dba508a08977f0e")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>>", scope: !661, file: !445, size: 128, align: 64, elements: !697, templateParams: !557, identifier: "e90245ae9bcebc44ac36b75b43c81e5")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>> as core::ops::function::FnMut<(usize)>>::{vtable_type}", file: !445, size: 320, align: 64, flags: DIFlagArtificial, elements: !692, vtableHolder: !39, templateParams: !557, identifier: "2b56e843c4be9af044ae4e3ed35b774f")
!41 = distinct !DIGlobalVariable(name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>> as core::ops::function::FnMut<(usize)>>::{vtable}", scope: null, file: !445, type: !40, isLocal: true, isDefinition: true)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, (u64, u64))", file: !445, size: 192, align: 64, elements: !729, templateParams: !557, identifier: "6f7236e69febec8781199b1a018e5963")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(u64, (u64, u64))>", scope: !578, file: !445, align: 8, flags: DIFlagPublic, elements: !557, templateParams: !726, identifier: "6a54b4248dfc3d95dbf1addd4a4283b7")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTable<(u64, (u64, u64)), alloc::alloc::Global>", scope: !524, file: !445, size: 256, align: 64, flags: DIFlagProtected, elements: !724, templateParams: !730, identifier: "cd81927f7d255a62ba314d5f4af7596d")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<u64, u64, (u64, u64)>", scope: !683, file: !445, size: 64, align: 64, elements: !732, templateParams: !557, identifier: "8683cbbfa886f4414ff7e8cf240771c5")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(u64, (u64, u64)), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, (u64, u64)>>", scope: !661, file: !445, size: 128, align: 64, elements: !720, templateParams: !557, identifier: "20cd62062c6e8731320240dd915a58d2")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, (u64, u64)), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, (u64, u64)>> as core::ops::function::FnMut<(usize)>>::{vtable_type}", file: !445, size: 320, align: 64, flags: DIFlagArtificial, elements: !715, vtableHolder: !46, templateParams: !557, identifier: "b5be01b0ab31bb776eb2f11d33cedf2a")
!48 = distinct !DIGlobalVariable(name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, (u64, u64)), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, (u64, u64)>> as core::ops::function::FnMut<(usize)>>::{vtable}", scope: null, file: !445, type: !47, isLocal: true, isDefinition: true)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<intrusive_collections::rbtree::AtomicLink>", scope: !610, file: !445, size: 64, align: 64, flags: DIFlagPublic, elements: !802, templateParams: !804, identifier: "f8c8410d8bbb860889af4e29bcc935a9")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !53, file: !445, size: 64, align: 64, flags: DIFlagPublic, elements: !799, templateParams: !806, identifier: "622ae7d1f24e1ec9c6b216b829b662a9")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !53, file: !445, size: 64, align: 64, flags: DIFlagPublic, elements: !557, templateParams: !806, identifier: "3b1870d388e0e87da3cd5a1568b266d1")
!52 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !53, file: !445, size: 64, align: 64, elements: !797, templateParams: !557, identifier: "d91f7704a4064aeebb282f54b21f0e62", discriminator: !807)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::ptr::non_null::NonNull<intrusive_collections::rbtree::AtomicLink>>", scope: !793, file: !445, size: 64, align: 64, flags: DIFlagPublic, elements: !794, templateParams: !557, identifier: "de6e5e1437ccbebf24e75265d9e876c")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<core::option::Option<core::ptr::non_null::NonNull<intrusive_collections::rbtree::AtomicLink>>>", scope: !788, file: !445, size: 64, align: 64, flags: DIFlagPublic, elements: !792, templateParams: !809, identifier: "b4c7dbded283b242be88dcb262a67ee9")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Cell<core::option::Option<core::ptr::non_null::NonNull<intrusive_collections::rbtree::AtomicLink>>>", scope: !788, file: !445, size: 64, align: 64, flags: DIFlagPublic, elements: !790, templateParams: !809, identifier: "4700b6d326c0560b64b403f870ad83d1")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AtomicLink", scope: !783, file: !445, size: 192, align: 64, flags: DIFlagPublic, elements: !787, templateParams: !557, identifier: "b9c18758ac9c9dce198234986bb34d29")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StreamPriorityKey", scope: !753, file: !445, size: 704, align: 64, flags: DIFlagPublic, elements: !781, templateParams: !557, identifier: "db3d91166f6724bfb16fc5f2571cd2c4")
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!8092 = !DILocalVariable(name: "ctrl_offset", scope: !8036, file: !1202, line: 3144, type: !551, align: 64)
!8093 = !DILocalVariable(name: "option", scope: !8035, file: !1202, line: 3145, type: !418, align: 64)
!8094 = !{!8089, !8090, !8091, !8092, !8093}
!8095 = !DILocalVariable(name: "count", arg: 2, scope: !8060, file: !1332, line: 1016, type: !551)
!8096 = !DILocalVariable(name: "self", arg: 1, scope: !8060, file: !1332, line: 1016, type: !1335)
!8097 = !{!8096, !8095}
!8098 = !DILocation(line: 3496, column: 18, scope: !8024)
!8099 = !DILocation(line: 2656, column: 9, scope: !8028, inlinedAt: !8029)
!8100 = !DILocation(line: 2271, column: 13, scope: !8025, inlinedAt: !8026)
!8101 = !DILocation(line: 3242, column: 26, scope: !430, inlinedAt: !8043)
!8102 = !DILocation(line: 968, column: 37, scope: !434, inlinedAt: !8049)
!8103 = !DILocation(line: 483, column: 8, scope: !433, inlinedAt: !8051)
!8104 = !DILocation(line: 222, column: 13, scope: !427, inlinedAt: !8040)
!8105 = !DILocation(line: 223, column: 43, scope: !426, inlinedAt: !8040)
!8106 = !DILocation(line: 968, column: 37, scope: !434, inlinedAt: !8053)
!8107 = !DILocation(line: 483, column: 8, scope: !433, inlinedAt: !8056)
!8108 = !DILocation(line: 312, column: 12, scope: !412, inlinedAt: !8067)
!8109 = !DILocation(line: 1055, column: 47, scope: !8060, inlinedAt: !8061)
!8110 = !DILocation(line: 1055, column: 22, scope: !8060, inlinedAt: !8061)
!8111 = !DILocation(line: 175, column: 14, scope: !411, inlinedAt: !8068)
!8112 = !DILocation(line: 312, column: 9, scope: !412, inlinedAt: !8067)
!8113 = !DILocation(line: 3498, column: 6, scope: !8024)
!8114 = distinct !DISubprogram(name: "drop<(u64, ()), alloc::alloc::Global>", linkageName: "_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client", scope: !2109, file: !1202, line: 3486, type: !8162, scopeLine: 3486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !707, retainedNodes: !8164)
!8115 = distinct !DISubprogram(name: "drop_inner_table<(u64, ()), alloc::alloc::Global>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client", scope: !29, file: !1202, line: 2270, type: !2111, scopeLine: 2270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !707, declaration: !8167, retainedNodes: !8170)
!8116 = distinct !DILocation(line: 3496, column: 18, scope: !8114)
!8117 = distinct !DILocation(line: 0, scope: !8115, inlinedAt: !8116)
!8118 = distinct !DISubprogram(name: "is_empty_singleton", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner18is_empty_singleton", scope: !29, file: !1202, line: 2655, type: !2043, scopeLine: 2655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !557, declaration: !2044, retainedNodes: !8172)
!8119 = distinct !DILocation(line: 2271, column: 18, scope: !8115, inlinedAt: !8116)
!8120 = distinct !DILocation(line: 0, scope: !8118, inlinedAt: !8119)
!8121 = distinct !DILexicalBlock(scope: !8122, file: !1202, line: 3113, column: 13)
!8122 = distinct !DISubprogram(name: "free_buckets<alloc::alloc::Global>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client", scope: !29, file: !1202, line: 3106, type: !2112, scopeLine: 3106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !614, declaration: !2113, retainedNodes: !8178)
!8123 = distinct !DILocation(line: 2280, column: 22, scope: !8115, inlinedAt: !8116)
!8124 = distinct !DILocation(line: 0, scope: !8122, inlinedAt: !8123)
!8125 = distinct !DILexicalBlock(scope: !8127, file: !1202, line: 3145, column: 13)
!8126 = distinct !DILexicalBlock(scope: !8127, file: !1202, line: 3144, column: 9)
!8127 = distinct !DISubprogram(name: "allocation_info", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15allocation_info", scope: !29, file: !1202, line: 3138, type: !2115, scopeLine: 3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !557, declaration: !2116, retainedNodes: !8184)
!8128 = distinct !DILocation(line: 3113, column: 38, scope: !8122, inlinedAt: !8123)
!8129 = distinct !DILocation(line: 0, scope: !8127, inlinedAt: !8128)
!8130 = distinct !DILocation(line: 3145, column: 39, scope: !8127, inlinedAt: !8128)
!8131 = distinct !DILocation(line: 0, scope: !428, inlinedAt: !8130)
!8132 = distinct !DILocation(line: 222, column: 18, scope: !427, inlinedAt: !8130)
!8133 = distinct !DILocation(line: 1360, column: 31, scope: !432, inlinedAt: !8132)
!8134 = distinct !DILocation(line: 0, scope: !430, inlinedAt: !8133)
!8135 = distinct !DILocation(line: 0, scope: !432, inlinedAt: !8132)
!8136 = distinct !DILocation(line: 0, scope: !427, inlinedAt: !8130)
!8137 = distinct !DILocation(line: 1361, column: 16, scope: !431, inlinedAt: !8132)
!8138 = distinct !DILocation(line: 0, scope: !433, inlinedAt: !8137)
!8139 = distinct !DILocation(line: 222, column: 40, scope: !427, inlinedAt: !8130)
!8140 = distinct !DILocation(line: 0, scope: !434, inlinedAt: !8139)
!8141 = distinct !DILocation(line: 968, column: 16, scope: !434, inlinedAt: !8139)
!8142 = distinct !DILocation(line: 0, scope: !433, inlinedAt: !8141)
!8143 = distinct !DILocation(line: 223, column: 31, scope: !426, inlinedAt: !8130)
!8144 = distinct !DILocation(line: 0, scope: !434, inlinedAt: !8143)
!8145 = distinct !DILocation(line: 0, scope: !426, inlinedAt: !8130)
!8146 = distinct !DILocation(line: 968, column: 16, scope: !2099, inlinedAt: !8143)
!8147 = distinct !DILocation(line: 0, scope: !433, inlinedAt: !8146)
!8148 = distinct !DILocation(line: 0, scope: !8121, inlinedAt: !8123)
!8149 = distinct !DILocation(line: 0, scope: !8126, inlinedAt: !8128)
!8150 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3subCslusEaBCZKLp_13quiche_client", scope: !1334, file: !1332, line: 1016, type: !1338, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !591, retainedNodes: !8187)
!8151 = distinct !DILocation(line: 3150, column: 64, scope: !8126, inlinedAt: !8128)
!8152 = distinct !DILocation(line: 0, scope: !8150, inlinedAt: !8151)
!8153 = distinct !DILocation(line: 3114, column: 19, scope: !8121, inlinedAt: !8123)
!8154 = distinct !DILocation(line: 554, column: 23, scope: !410, inlinedAt: !8153)
!8155 = distinct !DILocation(line: 0, scope: !409, inlinedAt: !8154)
!8156 = distinct !DILocation(line: 0, scope: !410, inlinedAt: !8153)
!8157 = distinct !DILocation(line: 436, column: 9, scope: !409, inlinedAt: !8154)
!8158 = distinct !DILocation(line: 321, column: 22, scope: !412, inlinedAt: !8157)
!8159 = distinct !DILocation(line: 0, scope: !411, inlinedAt: !8158)
!8160 = distinct !DILocation(line: 0, scope: !412, inlinedAt: !8157)
!8161 = !{null, !1586}
!8162 = !DISubroutineType(types: !8161)
!8163 = !DILocalVariable(name: "self", arg: 1, scope: !8114, file: !1202, line: 3486, type: !1586)
!8164 = !{!8163}
!8165 = !DILocation(line: 0, scope: !8114)
!8166 = !DILocalVariable(name: "self", arg: 1, scope: !8115, file: !1202, line: 2270, type: !1469)
!8167 = !DISubprogram(name: "drop_inner_table<(u64, ()), alloc::alloc::Global>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client", scope: !29, file: !1202, line: 2270, type: !2112, scopeLine: 2270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !707)
!8168 = !DILocalVariable(name: "alloc", arg: 2, scope: !8115, file: !1202, line: 2270, type: !2015)
!8169 = !DILocalVariable(name: "table_layout", arg: 3, scope: !8115, file: !1202, line: 2270, type: !413)
!8170 = !{!8166, !8168, !8169}
!8171 = !DILocalVariable(name: "self", arg: 1, scope: !8118, file: !1202, line: 2655, type: !1469)
!8172 = !{!8171}
!8173 = !DILocalVariable(name: "self", arg: 1, scope: !8122, file: !1202, line: 3106, type: !1469)
!8174 = !DILocalVariable(name: "alloc", arg: 2, scope: !8122, file: !1202, line: 3106, type: !2015)
!8175 = !DILocalVariable(name: "table_layout", arg: 3, scope: !8122, file: !1202, line: 3106, type: !413)
!8176 = !DILocalVariable(name: "ptr", scope: !8121, file: !1202, line: 3113, type: !9, align: 64)
!8177 = !DILocalVariable(name: "layout", scope: !8121, file: !1202, line: 3113, type: !262, align: 64)
!8178 = !{!8173, !8174, !8175, !8176, !8177}
!8179 = !DILocalVariable(name: "self", arg: 1, scope: !8127, file: !1202, line: 3138, type: !1469)
!8180 = !DILocalVariable(name: "table_layout", arg: 2, scope: !8127, file: !1202, line: 3138, type: !413)
!8181 = !DILocalVariable(name: "layout", scope: !8126, file: !1202, line: 3144, type: !262, align: 64)
!8182 = !DILocalVariable(name: "ctrl_offset", scope: !8126, file: !1202, line: 3144, type: !551, align: 64)
!8183 = !DILocalVariable(name: "option", scope: !8125, file: !1202, line: 3145, type: !418, align: 64)
!8184 = !{!8179, !8180, !8181, !8182, !8183}
!8185 = !DILocalVariable(name: "count", arg: 2, scope: !8150, file: !1332, line: 1016, type: !551)
!8186 = !DILocalVariable(name: "self", arg: 1, scope: !8150, file: !1332, line: 1016, type: !1335)
!8187 = !{!8186, !8185}
!8188 = !DILocation(line: 3496, column: 18, scope: !8114)
!8189 = !DILocation(line: 2656, column: 9, scope: !8118, inlinedAt: !8119)
!8190 = !DILocation(line: 2271, column: 13, scope: !8115, inlinedAt: !8116)
!8191 = !DILocation(line: 3242, column: 26, scope: !430, inlinedAt: !8133)
!8192 = !DILocation(line: 968, column: 37, scope: !434, inlinedAt: !8139)
!8193 = !DILocation(line: 483, column: 8, scope: !433, inlinedAt: !8141)
!8194 = !DILocation(line: 222, column: 13, scope: !427, inlinedAt: !8130)
!8195 = !DILocation(line: 223, column: 43, scope: !426, inlinedAt: !8130)
!8196 = !DILocation(line: 968, column: 37, scope: !434, inlinedAt: !8143)
!8197 = !DILocation(line: 483, column: 8, scope: !433, inlinedAt: !8146)
!8198 = !DILocation(line: 312, column: 12, scope: !412, inlinedAt: !8157)
!8199 = !DILocation(line: 1055, column: 47, scope: !8150, inlinedAt: !8151)
!8200 = !DILocation(line: 1055, column: 22, scope: !8150, inlinedAt: !8151)
!8201 = !DILocation(line: 175, column: 14, scope: !411, inlinedAt: !8158)
!8202 = !DILocation(line: 312, column: 9, scope: !412, inlinedAt: !8157)
!8203 = !DILocation(line: 3498, column: 6, scope: !8114)
!8204 = distinct !DISubprogram(name: "drop<(u64, u64), alloc::alloc::Global>", linkageName: "_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client", scope: !2109, file: !1202, line: 3486, type: !8252, scopeLine: 3486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !681, retainedNodes: !8254)
!8205 = distinct !DISubprogram(name: "drop_inner_table<(u64, u64), alloc::alloc::Global>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyyENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client", scope: !29, file: !1202, line: 2270, type: !2111, scopeLine: 2270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !681, declaration: !8257, retainedNodes: !8260)
!8206 = distinct !DILocation(line: 3496, column: 18, scope: !8204)
!8207 = distinct !DILocation(line: 0, scope: !8205, inlinedAt: !8206)
!8208 = distinct !DISubprogram(name: "is_empty_singleton", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner18is_empty_singleton", scope: !29, file: !1202, line: 2655, type: !2043, scopeLine: 2655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !557, declaration: !2044, retainedNodes: !8262)
!8209 = distinct !DILocation(line: 2271, column: 18, scope: !8205, inlinedAt: !8206)
!8210 = distinct !DILocation(line: 0, scope: !8208, inlinedAt: !8209)
!8211 = distinct !DILexicalBlock(scope: !8212, file: !1202, line: 3113, column: 13)
!8212 = distinct !DISubprogram(name: "free_buckets<alloc::alloc::Global>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client", scope: !29, file: !1202, line: 3106, type: !2112, scopeLine: 3106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !614, declaration: !2113, retainedNodes: !8268)
!8213 = distinct !DILocation(line: 2280, column: 22, scope: !8205, inlinedAt: !8206)
!8214 = distinct !DILocation(line: 0, scope: !8212, inlinedAt: !8213)
!8215 = distinct !DILexicalBlock(scope: !8217, file: !1202, line: 3145, column: 13)
!8216 = distinct !DILexicalBlock(scope: !8217, file: !1202, line: 3144, column: 9)
!8217 = distinct !DISubprogram(name: "allocation_info", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15allocation_info", scope: !29, file: !1202, line: 3138, type: !2115, scopeLine: 3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !557, declaration: !2116, retainedNodes: !8274)
!8218 = distinct !DILocation(line: 3113, column: 38, scope: !8212, inlinedAt: !8213)
!8219 = distinct !DILocation(line: 0, scope: !8217, inlinedAt: !8218)
!8220 = distinct !DILocation(line: 3145, column: 39, scope: !8217, inlinedAt: !8218)
!8221 = distinct !DILocation(line: 0, scope: !428, inlinedAt: !8220)
!8222 = distinct !DILocation(line: 222, column: 18, scope: !427, inlinedAt: !8220)
!8223 = distinct !DILocation(line: 1360, column: 31, scope: !432, inlinedAt: !8222)
!8224 = distinct !DILocation(line: 0, scope: !430, inlinedAt: !8223)
!8225 = distinct !DILocation(line: 0, scope: !432, inlinedAt: !8222)
!8226 = distinct !DILocation(line: 0, scope: !427, inlinedAt: !8220)
!8227 = distinct !DILocation(line: 1361, column: 16, scope: !431, inlinedAt: !8222)
!8228 = distinct !DILocation(line: 0, scope: !433, inlinedAt: !8227)
!8229 = distinct !DILocation(line: 222, column: 40, scope: !427, inlinedAt: !8220)
!8230 = distinct !DILocation(line: 0, scope: !434, inlinedAt: !8229)
!8231 = distinct !DILocation(line: 968, column: 16, scope: !434, inlinedAt: !8229)
!8232 = distinct !DILocation(line: 0, scope: !433, inlinedAt: !8231)
!8233 = distinct !DILocation(line: 223, column: 31, scope: !426, inlinedAt: !8220)
!8234 = distinct !DILocation(line: 0, scope: !434, inlinedAt: !8233)
!8235 = distinct !DILocation(line: 0, scope: !426, inlinedAt: !8220)
!8236 = distinct !DILocation(line: 968, column: 16, scope: !2099, inlinedAt: !8233)
!8237 = distinct !DILocation(line: 0, scope: !433, inlinedAt: !8236)
!8238 = distinct !DILocation(line: 0, scope: !8211, inlinedAt: !8213)
!8239 = distinct !DILocation(line: 0, scope: !8216, inlinedAt: !8218)
!8240 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3subCslusEaBCZKLp_13quiche_client", scope: !1334, file: !1332, line: 1016, type: !1338, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !591, retainedNodes: !8277)
!8241 = distinct !DILocation(line: 3150, column: 64, scope: !8216, inlinedAt: !8218)
!8242 = distinct !DILocation(line: 0, scope: !8240, inlinedAt: !8241)
!8243 = distinct !DILocation(line: 3114, column: 19, scope: !8211, inlinedAt: !8213)
!8244 = distinct !DILocation(line: 554, column: 23, scope: !410, inlinedAt: !8243)
!8245 = distinct !DILocation(line: 0, scope: !409, inlinedAt: !8244)
!8246 = distinct !DILocation(line: 0, scope: !410, inlinedAt: !8243)
!8247 = distinct !DILocation(line: 436, column: 9, scope: !409, inlinedAt: !8244)
!8248 = distinct !DILocation(line: 321, column: 22, scope: !412, inlinedAt: !8247)
!8249 = distinct !DILocation(line: 0, scope: !411, inlinedAt: !8248)
!8250 = distinct !DILocation(line: 0, scope: !412, inlinedAt: !8247)
!8251 = !{null, !1622}
!8252 = !DISubroutineType(types: !8251)
!8253 = !DILocalVariable(name: "self", arg: 1, scope: !8204, file: !1202, line: 3486, type: !1622)
!8254 = !{!8253}
!8255 = !DILocation(line: 0, scope: !8204)
!8256 = !DILocalVariable(name: "self", arg: 1, scope: !8205, file: !1202, line: 2270, type: !1469)
!8257 = !DISubprogram(name: "drop_inner_table<(u64, u64), alloc::alloc::Global>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyyENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECslusEaBCZKLp_13quiche_client", scope: !29, file: !1202, line: 2270, type: !2112, scopeLine: 2270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !681)
!8258 = !DILocalVariable(name: "alloc", arg: 2, scope: !8205, file: !1202, line: 2270, type: !2015)
!8259 = !DILocalVariable(name: "table_layout", arg: 3, scope: !8205, file: !1202, line: 2270, type: !413)
!8260 = !{!8256, !8258, !8259}
!8261 = !DILocalVariable(name: "self", arg: 1, scope: !8208, file: !1202, line: 2655, type: !1469)
!8262 = !{!8261}
!8263 = !DILocalVariable(name: "self", arg: 1, scope: !8212, file: !1202, line: 3106, type: !1469)
!8264 = !DILocalVariable(name: "alloc", arg: 2, scope: !8212, file: !1202, line: 3106, type: !2015)
!8265 = !DILocalVariable(name: "table_layout", arg: 3, scope: !8212, file: !1202, line: 3106, type: !413)
!8266 = !DILocalVariable(name: "ptr", scope: !8211, file: !1202, line: 3113, type: !9, align: 64)
!8267 = !DILocalVariable(name: "layout", scope: !8211, file: !1202, line: 3113, type: !262, align: 64)
!8268 = !{!8263, !8264, !8265, !8266, !8267}
!8269 = !DILocalVariable(name: "self", arg: 1, scope: !8217, file: !1202, line: 3138, type: !1469)
!8270 = !DILocalVariable(name: "table_layout", arg: 2, scope: !8217, file: !1202, line: 3138, type: !413)
!8271 = !DILocalVariable(name: "layout", scope: !8216, file: !1202, line: 3144, type: !262, align: 64)
!8272 = !DILocalVariable(name: "ctrl_offset", scope: !8216, file: !1202, line: 3144, type: !551, align: 64)
!8273 = !DILocalVariable(name: "option", scope: !8215, file: !1202, line: 3145, type: !418, align: 64)
!8274 = !{!8269, !8270, !8271, !8272, !8273}
!8275 = !DILocalVariable(name: "count", arg: 2, scope: !8240, file: !1332, line: 1016, type: !551)
!8276 = !DILocalVariable(name: "self", arg: 1, scope: !8240, file: !1332, line: 1016, type: !1335)
!8277 = !{!8276, !8275}
!8278 = !DILocation(line: 3496, column: 18, scope: !8204)
!8279 = !DILocation(line: 2656, column: 9, scope: !8208, inlinedAt: !8209)
!8280 = !DILocation(line: 2271, column: 13, scope: !8205, inlinedAt: !8206)
!8281 = !DILocation(line: 3242, column: 26, scope: !430, inlinedAt: !8223)
!8282 = !DILocation(line: 223, column: 43, scope: !426, inlinedAt: !8220)
!8283 = !DILocation(line: 968, column: 37, scope: !434, inlinedAt: !8233)
!8284 = !DILocation(line: 483, column: 8, scope: !433, inlinedAt: !8236)
!8285 = !DILocation(line: 312, column: 12, scope: !412, inlinedAt: !8247)
!8286 = !DILocation(line: 1055, column: 47, scope: !8240, inlinedAt: !8241)
!8287 = !DILocation(line: 1055, column: 22, scope: !8240, inlinedAt: !8241)
!8288 = !DILocation(line: 175, column: 14, scope: !411, inlinedAt: !8248)
!8289 = !DILocation(line: 312, column: 9, scope: !412, inlinedAt: !8247)
!8290 = !DILocation(line: 3498, column: 6, scope: !8204)
!8291 = distinct !DILexicalBlock(scope: !8292, file: !1202, line: 3525, column: 13)
!8292 = distinct !DISubprogram(name: "into_iter<(u64, ()), alloc::alloc::Global>", linkageName: "_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCslusEaBCZKLp_13quiche_client", scope: !8353, file: !1202, line: 3523, type: !8355, scopeLine: 3523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !707, retainedNodes: !8358)
!8293 = distinct !DISubprogram(name: "iter<(u64, ()), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE4iterCslusEaBCZKLp_13quiche_client", scope: !37, file: !1202, line: 1361, type: !8362, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !707, declaration: !8363, retainedNodes: !8364)
!8294 = distinct !DILexicalBlock(scope: !8295, file: !1202, line: 2167, column: 13)
!8295 = distinct !DISubprogram(name: "iter<(u64, ())>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner4iterTyuEECslusEaBCZKLp_13quiche_client", scope: !29, file: !1202, line: 2138, type: !8369, scopeLine: 2138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !703, declaration: !8370, retainedNodes: !8372)
!8296 = distinct !DISubprogram(name: "data_end<(u64, ())>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner8data_endTyuEECslusEaBCZKLp_13quiche_client", scope: !29, file: !1202, line: 2438, type: !8377, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !703, declaration: !8378, retainedNodes: !8379)
!8297 = distinct !DISubprogram(name: "num_buckets", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner11num_buckets", scope: !29, file: !1202, line: 2634, type: !2041, scopeLine: 2634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !557, declaration: !2045, retainedNodes: !8383)
!8298 = distinct !DILocation(line: 2170, column: 23, scope: !8294, inlinedAt: !8373)
!8299 = distinct !DILocation(line: 3587, column: 22, scope: !381, inlinedAt: !8298)
!8300 = distinct !DILocation(line: 0, scope: !387, inlinedAt: !8299)
!8301 = distinct !DILocation(line: 0, scope: !386, inlinedAt: !8298)
!8302 = distinct !DILocation(line: 3580, column: 33, scope: !386, inlinedAt: !8298)
!8303 = distinct !DILocation(line: 0, scope: !387, inlinedAt: !8302)
!8304 = distinct !DILocation(line: 0, scope: !381, inlinedAt: !8298)
!8305 = distinct !DILocation(line: 3586, column: 17, scope: !381, inlinedAt: !8298)
!8306 = distinct !DILocation(line: 0, scope: !390, inlinedAt: !8305)
!8307 = distinct !{!8307, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTyuEE3newCslusEaBCZKLp_13quiche_client"}
!8308 = distinct !{!8308, !8307, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTyuEE3newCslusEaBCZKLp_13quiche_client: argument 0"}
!8309 = distinct !DILocation(line: 3586, column: 50, scope: !381, inlinedAt: !8298)
!8310 = distinct !DILocation(line: 115, column: 23, scope: !392, inlinedAt: !8309)
!8311 = distinct !DILocation(line: 0, scope: !391, inlinedAt: !8310)
!8312 = distinct !DILocation(line: 114, column: 30, scope: !392, inlinedAt: !8309)
!8313 = distinct !DILocation(line: 108, column: 21, scope: !391, inlinedAt: !8310)
!8314 = distinct !DILocation(line: 1566, column: 32, scope: !230, inlinedAt: !8313)
!8315 = distinct !DILocation(line: 0, scope: !229, inlinedAt: !8313)
!8316 = distinct !DILocation(line: 0, scope: !227, inlinedAt: !8313)
!8317 = distinct !DILexicalBlock(scope: !8320, file: !1202, line: 1442, column: 9)
!8318 = distinct !DILexicalBlock(scope: !8319, file: !1442, line: 48, column: 21)
!8319 = distinct !DILexicalBlock(scope: !8320, file: !1442, line: 46, column: 13)
!8320 = distinct !DISubprogram(name: "into_iter_from<(u64, ()), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE14into_iter_fromCslusEaBCZKLp_13quiche_client", scope: !37, file: !1202, line: 1439, type: !8391, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !707, declaration: !8392, retainedNodes: !8400)
!8321 = distinct !DILexicalBlock(scope: !8324, file: !1202, line: 1458, column: 17)
!8322 = distinct !DILexicalBlock(scope: !8324, file: !1202, line: 1457, column: 13)
!8323 = distinct !DILexicalBlock(scope: !8324, file: !1202, line: 1454, column: 9)
!8324 = distinct !DISubprogram(name: "into_allocation<(u64, ()), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE15into_allocationCslusEaBCZKLp_13quiche_client", scope: !37, file: !1202, line: 1453, type: !8407, scopeLine: 1453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !707, declaration: !8409, retainedNodes: !8414)
!8325 = distinct !DILocation(line: 1442, column: 31, scope: !8320, inlinedAt: !8401)
!8326 = distinct !DILocation(line: 1453, column: 35, scope: !8324, inlinedAt: !8325)
!8327 = distinct !DISubprogram(name: "is_empty_singleton", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner18is_empty_singleton", scope: !29, file: !1202, line: 2655, type: !2043, scopeLine: 2655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !557, declaration: !2044, retainedNodes: !8416)
!8328 = distinct !DILocation(line: 1454, column: 35, scope: !8324, inlinedAt: !8325)
!8329 = distinct !DILocation(line: 2655, column: 27, scope: !8327, inlinedAt: !8328)
!8330 = distinct !DILocation(line: 1458, column: 49, scope: !8324, inlinedAt: !8325)
!8331 = distinct !DILocation(line: 0, scope: !428, inlinedAt: !8330)
!8332 = distinct !DILocation(line: 222, column: 18, scope: !427, inlinedAt: !8330)
!8333 = distinct !DILocation(line: 1360, column: 31, scope: !432, inlinedAt: !8332)
!8334 = distinct !DILocation(line: 0, scope: !430, inlinedAt: !8333)
!8335 = distinct !DILocation(line: 0, scope: !432, inlinedAt: !8332)
!8336 = distinct !DILocation(line: 0, scope: !427, inlinedAt: !8330)
!8337 = distinct !DILocation(line: 1361, column: 16, scope: !431, inlinedAt: !8332)
!8338 = distinct !DILocation(line: 0, scope: !433, inlinedAt: !8337)
!8339 = distinct !DILocation(line: 0, scope: !431, inlinedAt: !8332)
!8340 = distinct !DILocation(line: 222, column: 40, scope: !427, inlinedAt: !8330)
!8341 = distinct !DILocation(line: 0, scope: !434, inlinedAt: !8340)
!8342 = distinct !DILocation(line: 968, column: 16, scope: !434, inlinedAt: !8340)
!8343 = distinct !DILocation(line: 0, scope: !433, inlinedAt: !8342)
!8344 = distinct !DILocation(line: 223, column: 31, scope: !426, inlinedAt: !8330)
!8345 = distinct !DILocation(line: 0, scope: !434, inlinedAt: !8344)
!8346 = distinct !DILocation(line: 0, scope: !426, inlinedAt: !8330)
!8347 = distinct !DILocation(line: 968, column: 16, scope: !2099, inlinedAt: !8344)
!8348 = distinct !DILocation(line: 0, scope: !433, inlinedAt: !8347)
!8349 = distinct !DILocation(line: 0, scope: !8322, inlinedAt: !8325)
!8350 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3subCslusEaBCZKLp_13quiche_client", scope: !1334, file: !1332, line: 1016, type: !1338, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !170, templateParams: !591, retainedNodes: !8422)
!8351 = distinct !DILocation(line: 1462, column: 74, scope: !8322, inlinedAt: !8325)
!8352 = distinct !DILocation(line: 0, scope: !8350, inlinedAt: !8351)
!8353 = !DINamespace(name: "{impl#19}", scope: !524)
!8354 = !{!408, !37}
!8355 = !DISubroutineType(types: !8354)
!8356 = !DILocalVariable(name: "self", arg: 1, scope: !8292, file: !1202, line: 3523, type: !37)
!8357 = !DILocalVariable(name: "iter", scope: !8291, file: !1202, line: 3525, type: !407, align: 64)
!8358 = !{!8356, !8357}
!8359 = !DILocation(line: 3523, column: 18, scope: !8292)
!8360 = !DILocalVariable(name: "self", arg: 1, scope: !8293, file: !1202, line: 1361, type: !695)
!8361 = !{!407, !695}
!8362 = !DISubroutineType(types: !8361)
!8363 = !DISubprogram(name: "iter<(u64, ()), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE4iterCslusEaBCZKLp_13quiche_client", scope: !37, file: !1202, line: 1361, type: !8362, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !707)
!8364 = !{!8360}
!8365 = !DILocation(line: 3525, column: 29, scope: !8292)
!8366 = !DILocation(line: 1361, column: 31, scope: !8293, inlinedAt: !8365)
!8367 = !DILocalVariable(name: "self", arg: 1, scope: !8295, file: !1202, line: 2138, type: !1218)
!8368 = !{!407, !1218}
!8369 = !DISubroutineType(types: !8368)
!8370 = !DISubprogram(name: "iter<(u64, ())>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner4iterTyuEECslusEaBCZKLp_13quiche_client", scope: !29, file: !1202, line: 2138, type: !8369, scopeLine: 2138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !703)
!8371 = !DILocalVariable(name: "data", scope: !8294, file: !1202, line: 2167, type: !282, align: 64)
!8372 = !{!8367, !8371}
!8373 = !DILocation(line: 1366, column: 29, scope: !8293, inlinedAt: !8365)
!8374 = !DILocation(line: 2138, column: 23, scope: !8295, inlinedAt: !8373)
!8375 = !DILocalVariable(name: "self", arg: 1, scope: !8296, file: !1202, line: 2438, type: !1218)
!8376 = !{!281, !1218}
!8377 = !DISubroutineType(types: !8376)
!8378 = !DISubprogram(name: "data_end<(u64, ())>", linkageName: "_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner8data_endTyuEECslusEaBCZKLp_13quiche_client", scope: !29, file: !1202, line: 2438, type: !8377, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !703)
!8379 = !{!8375}
!8380 = !DILocation(line: 2167, column: 53, scope: !8295, inlinedAt: !8373)
!8381 = !DILocation(line: 2438, column: 20, scope: !8296, inlinedAt: !8380)
!8382 = !DILocalVariable(name: "self", arg: 1, scope: !8297, file: !1202, line: 2634, type: !1218)
!8383 = !{!8382}
!8384 = !DILocation(line: 2170, column: 72, scope: !8294, inlinedAt: !8373)
!8385 = !DILocation(line: 2634, column: 20, scope: !8297, inlinedAt: !8384)
!8386 = !DILocation(line: 0, scope: !8294, inlinedAt: !8373)
!8387 = !{!8308}
!8388 = !DILocation(line: 0, scope: !8291)
!8389 = !DILocalVariable(name: "iter", arg: 2, scope: !8320, file: !1202, line: 1439, type: !407)
!8390 = !{!408, !37, !407}
!8391 = !DISubroutineType(types: !8390)
!8392 = !DISubprogram(name: "into_iter_from<(u64, ()), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE14into_iter_fromCslusEaBCZKLp_13quiche_client", scope: !37, file: !1202, line: 1439, type: !8391, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !707)
!8393 = !DILocalVariable(name: "self", arg: 1, scope: !8320, file: !1202, line: 1439, type: !37)
!8394 = !DILexicalBlockFile(scope: !8319, file: !1202, discriminator: 0)
!8395 = !DILocalVariable(name: "left_val", scope: !8394, file: !1202, line: 1440, type: !1441, align: 64)
!8396 = !DILocalVariable(name: "right_val", scope: !8394, file: !1202, line: 1440, type: !1441, align: 64)
!8397 = !DILexicalBlockFile(scope: !8318, file: !1202, discriminator: 0)
!8398 = !DILocalVariable(name: "kind", scope: !8397, file: !1202, line: 1440, type: !453, align: 8)
!8399 = !DILocalVariable(name: "allocation", scope: !8317, file: !1202, line: 1442, type: !406, align: 64)
!8400 = !{!8393, !8389, !8395, !8396, !8398, !8399}
!8401 = !DILocation(line: 3526, column: 18, scope: !8291)
!8402 = !DILocation(line: 0, scope: !8320, inlinedAt: !8401)
!8405 = !DILocalVariable(name: "self", arg: 1, scope: !8324, file: !1202, line: 1453, type: !37)
!8406 = !{!406, !37}
!8407 = !DISubroutineType(cc: DW_CC_nocall, types: !8406)
!8408 = !DISubroutineType(types: !8406)
!8409 = !DISubprogram(name: "into_allocation<(u64, ()), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE15into_allocationCslusEaBCZKLp_13quiche_client", scope: !37, file: !1202, line: 1453, type: !8408, scopeLine: 1453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !707)
!8410 = !DILocalVariable(name: "alloc", scope: !8323, file: !1202, line: 1454, type: !406, align: 64)
!8411 = !DILocalVariable(name: "layout", scope: !8322, file: !1202, line: 1457, type: !262, align: 64)
!8412 = !DILocalVariable(name: "ctrl_offset", scope: !8322, file: !1202, line: 1457, type: !551, align: 64)
!8413 = !DILocalVariable(name: "option", scope: !8321, file: !1202, line: 1458, type: !418, align: 64)
!8414 = !{!8405, !8410, !8411, !8412, !8413}
!8415 = !DILocalVariable(name: "self", arg: 1, scope: !8327, file: !1202, line: 2655, type: !1218)
!8416 = !{!8415}
!8420 = !DILocalVariable(name: "count", arg: 2, scope: !8350, file: !1332, line: 1016, type: !551)
!8421 = !DILocalVariable(name: "self", arg: 1, scope: !8350, file: !1332, line: 1016, type: !1335)
!8422 = !{!8421, !8420}
!8423 = !DILocation(line: 0, scope: !8317, inlinedAt: !8401)
!8424 = !DILocation(line: 2439, column: 9, scope: !8296, inlinedAt: !8380)
!8425 = !DILocation(line: 2635, column: 9, scope: !8297, inlinedAt: !8384)
!8426 = !DILocation(line: 57, column: 24, scope: !390, inlinedAt: !8305)
!8427 = !DILocation(line: 2171, column: 24, scope: !8294, inlinedAt: !8373)
!8428 = !DILocation(line: 2656, column: 9, scope: !8327, inlinedAt: !8328)
!8429 = !DILocation(line: 1454, column: 24, scope: !8324, inlinedAt: !8325)
!8430 = !DILocation(line: 483, column: 8, scope: !433, inlinedAt: !8337)
!8431 = !DILocation(line: 3242, column: 26, scope: !430, inlinedAt: !8333)
!8432 = !DILocation(line: 222, column: 13, scope: !427, inlinedAt: !8330)
!8433 = !DILocation(line: 968, column: 37, scope: !434, inlinedAt: !8344)
!8434 = !DILocation(line: 1055, column: 47, scope: !8350, inlinedAt: !8351)
!8435 = !DILocation(line: 1055, column: 22, scope: !8350, inlinedAt: !8351)
!8436 = !DILocation(line: 1454, column: 21, scope: !8324, inlinedAt: !8325)
!8437 = !DILocation(line: 1442, scope: !8320, inlinedAt: !8401)
!8438 = !DILocation(line: 0, scope: !8324, inlinedAt: !8325)
!8439 = !DILocation(line: 872, column: 18, scope: !387, inlinedAt: !8299)
!8440 = !DILocation(line: 1570, column: 9, scope: !227, inlinedAt: !8313)
!8441 = !DILocation(line: 872, column: 18, scope: !387, inlinedAt: !8302)
!8442 = !DILocation(line: 1443, column: 9, scope: !8317, inlinedAt: !8401)
!8443 = !DILocation(line: 3528, column: 6, scope: !8292)
end_hunk_1
