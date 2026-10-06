Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.13?download=true
inline.NumInlined: 338
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBY_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1W_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EBY_:bb.a
    #dbg_value(<2 x i64> zeroinitializer, !2074, !DIExpression(), !7141)
    #dbg_value(ptr %i.dc, !2077, !DIExpression(), !7142)
    #dbg_value(ptr undef, !2080, !DIExpression(), !7142)
    #dbg_value(i64 16, !2081, !DIExpression(), !7142)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.dc, align 1, !dbg !7303, !noalias !7194
    #dbg_value(<2 x i64> poison, !2074, !DIExpression(), !7141)
    #dbg_value(<2 x i64> poison, !2993, !DIExpression(), !7143)
    #dbg_value(ptr poison, !3008, !DIExpression(), !7144)
    #dbg_value(ptr poison, !3009, !DIExpression(), !7144)
    #dbg_value(ptr poison, !3010, !DIExpression(), !7144)
    #dbg_value(<2 x i64> poison, !3001, !DIExpression(), !7145)
    #dbg_declare(ptr poison, !2088, !DIExpression(), !7146)
    #dbg_value(<16 x i8> poison, !2092, !DIExpression(), !7147)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !2093, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !7148)
  %i.dd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !7304
  %i.de = bitcast <16 x i1> %i.dd to i16, !dbg !7304 ; 2 uses
    #dbg_value(i16 %i.de, !3013, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !7106)
  %.not.i.i = icmp eq i16 %i.de, 0, !dbg !7305
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7306, !prof !3062

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cy, %bb.p ], [ %i.cr, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !3022, !DIExpression(), !7115)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2286, !DIExpression(), !7149)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2968, !DIExpression(), !7150)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2401, !DIExpression(), !7151)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2976, !DIExpression(), !7078)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2407, !DIExpression(), !7153)
  %i.df = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i12.i, !dbg !7322
    #dbg_value(i8 poison, !2969, !DIExpression(), !7155)
  %i.dg = lshr i64 %i.ck, 57, !dbg !7323
  %i.dh = trunc nuw nsw i64 %i.dg to i8, !dbg !7324 ; 2 uses
  %i.di = add nsw i64 %.sroa.0.0.i12.i, -16, !dbg !7325
  %i.dj = and i64 %i.di, %i.at, !dbg !7326
  store i8 %i.dh, ptr %i.df, align 1, !dbg !7327, !noalias !7186
  %i.dk = getelementptr i8, ptr %i.ar, i64 %i.dj, !dbg !7328
  %i.dl = getelementptr i8, ptr %i.dk, i64 16, !dbg !7328
  store i8 %i.dh, ptr %i.dl, align 1, !dbg !7329, !noalias !7186
    #dbg_value(i64 24, !2408, !DIExpression(), !6835)
    #dbg_value(i64 24, !2408, !DIExpression(), !7153)
    #dbg_value(i64 24, !3065, !DIExpression(), !7160)
  %i.dm = load ptr, ptr %0, align 8, !dbg !7330, !alias.scope !7183, !noalias !7184, !nonnull !1539, !noundef !1539
  %.neg.i.i = mul i64 %i.ce, -24, !dbg !7331
  %i.dn = getelementptr i8, ptr %i.dm, i64 %.neg.i.i, !dbg !7332
  %i.do = getelementptr i8, ptr %i.dn, i64 -24, !dbg !7332
    #dbg_value(ptr %i.do, !3066, !DIExpression(), !7160)
    #dbg_value(ptr %i.a, !2403, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7162)
    #dbg_value(ptr %i.a, !2410, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7164)
  %.neg96.i.i = mul i64 %.sroa.0.0.i12.i, -24, !dbg !7333
  %i.dp = getelementptr i8, ptr %i.ar, i64 %.neg96.i.i, !dbg !7334
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24, !dbg !7334
    #dbg_value(ptr %i.dq, !3067, !DIExpression(), !7160)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 1 dereferenceable(24) %i.do, i64 24, i1 false), !dbg !7335, !noalias !7186
    #dbg_value(ptr %.sroa.0.1.lcssa, !2253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7185)
    #dbg_value(i64 %.sroa.5.1.lcssa, !2253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7185)
    #dbg_value(i64 %i.cf, !2253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7185)
    #dbg_value(i16 %i.cd, !2253, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !7185)
    #dbg_value(ptr undef, !2342, !DIExpression(), !6809)
  %i.dr = icmp eq i64 %i.cf, 0, !dbg !7245
  br i1 %i.dr, label %._crit_edge39.loopexit, label %.preheader, !dbg !7245

bb.q:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_, ptr noundef nonnull @_RNvYNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtBb_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B21_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0Es_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTOhEE9call_onceB13_) #26, !dbg !7336
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7337

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, %bb.c, %bb.q
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.q ], [ %.sroa.12.026, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !7338
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.q ], [ %.sroa.7.027, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !7338
  %i.ds = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !7339
  %i.dt = insertvalue { i64, i64 } %i.ds, i64 %.sroa.4.0.i, 1, !dbg !7339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7340
  ret { i64, i64 } %i.dt, !dbg !7341
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 !dbg !384 {
bb.a:
    #dbg_value(ptr %0, !2820, !DIExpression(), !7389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7390), !dbg !7391
    #dbg_value(ptr %0, !2826, !DIExpression(), !7345)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7392
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7393
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !7393, !alias.scope !7390 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !7393, !alias.scope !7390 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7393
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !7393, !alias.scope !7390, !noundef !1539 ; 3 uses
    #dbg_value(ptr poison, !2829, !DIExpression(DW_OP_deref), !7347)
    #dbg_value(ptr poison, !2834, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !7347)
    #dbg_value(ptr poison, !2833, !DIExpression(), !7347)
    #dbg_value(ptr poison, !2837, !DIExpression(), !7349)
    #dbg_value(ptr poison, !2842, !DIExpression(), !7351)
    #dbg_value(ptr poison, !2851, !DIExpression(), !7353)
    #dbg_value(ptr poison, !2863, !DIExpression(), !7355)
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !7394
  br i1 %i.d, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !7395

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7393
  %.val.i = load i64, ptr %i.e, align 8, !dbg !7393, !alias.scope !7390
    #dbg_value(ptr poison, !2846, !DIExpression(), !7351)
    #dbg_value(i64 %.val.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7351)
    #dbg_value(i64 %.val.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7353)
    #dbg_value(i64 %.val1.i, !2847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7351)
    #dbg_value(i64 %.val1.i, !2858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7353)
  %i.f = add i64 %.val3.i, 1, !dbg !7396
    #dbg_value(i64 %.val.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7357)
    #dbg_value(i64 %.val1.i, !2642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7357)
    #dbg_value(i64 %i.f, !2646, !DIExpression(), !7357)
    #dbg_value(i64 %i.f, !2658, !DIExpression(), !7359)
    #dbg_value(i64 %i.f, !2663, !DIExpression(), !7361)
    #dbg_value(i64 %.val.i, !2647, !DIExpression(), !7362)
    #dbg_value(i64 %.val.i, !2659, !DIExpression(), !7359)
    #dbg_value(i64 %.val.i, !2664, !DIExpression(), !7361)
    #dbg_value(i64 %.val1.i, !2648, !DIExpression(), !7362)
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !7397    ; 2 uses
    #dbg_value(i1 false, !2666, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7364)
    #dbg_value(i64 %i.g, !2668, !DIExpression(), !7366)
  %i.h = add i64 %.val1.i, -1, !dbg !7398
    #dbg_value(i64 %i.h, !2669, !DIExpression(), !7366)
  %i.i = add i64 %i.h, %i.g, !dbg !7399           ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !7399
    #dbg_value(i1 true, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7368)
  tail call void @llvm.assume(i1 %i.j), !dbg !7400
  %i.k = sub i64 0, %.val1.i, !dbg !7401
  %i.l = and i64 %i.i, %i.k, !dbg !7402           ; 3 uses
    #dbg_value(i64 %i.l, !2649, !DIExpression(), !7369)
    #dbg_value(i64 %i.l, !2668, !DIExpression(), !7371)
  %i.m = add i64 %.val3.i, 17, !dbg !7403
    #dbg_value(i64 %i.m, !2669, !DIExpression(), !7371)
  %i.n = add i64 %i.m, %i.l, !dbg !7404           ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !7404
    #dbg_value(i1 %i.o, !2666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7373)
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !7405
  tail call void @llvm.assume(i1 %i.q), !dbg !7405
    #dbg_value(i64 %.val1.i, !2869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7375)
    #dbg_value(i64 %.val1.i, !2861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7376)
    #dbg_value(i64 %i.n, !2869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7375)
    #dbg_value(i64 %i.n, !2861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7376)
    #dbg_value(i64 %i.l, !2869, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7375)
    #dbg_value(i64 %i.l, !2861, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7376)
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !7406
  tail call void @llvm.assume(i1 %i.r), !dbg !7407
    #dbg_value(i64 %.val1.i, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7377)
    #dbg_value(i64 %.val1.i, !2859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7378)
    #dbg_value(i64 %i.n, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7377)
    #dbg_value(i64 %i.n, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7378)
    #dbg_value(i64 %i.l, !2860, !DIExpression(), !7378)
    #dbg_value(i64 %i.l, !2875, !DIExpression(), !7380)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
    #dbg_value(ptr %.val2.i, !2876, !DIExpression(), !7380)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7377)
    #dbg_value(ptr poison, !2879, !DIExpression(), !7382)
    #dbg_value(ptr poison, !2885, !DIExpression(), !7384)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7382)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7384)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7386)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 0, i64 %i.l), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7388)
    #dbg_value(i64 %.val1.i, !2883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7382)
    #dbg_value(i64 %.val1.i, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7384)
    #dbg_value(i64 %.val1.i, !2895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7386)
    #dbg_value(i64 %.val1.i, !2898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7388)
    #dbg_value(i64 %i.n, !2883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7382)
    #dbg_value(i64 %i.n, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7384)
    #dbg_value(i64 %i.n, !2895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7386)
    #dbg_value(i64 %i.n, !2898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7388)
  %i.s = icmp eq i64 %i.n, 0, !dbg !7408
  br i1 %i.s, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %bb.b, !dbg !7408

bb.b:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l, !dbg !7409
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7388)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7386)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7384)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7382)
    #dbg_value(!DIArgList(ptr %.val2.i, i64 %i.t), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7377)
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t, !dbg !7410
    #dbg_value(ptr %i.u, !2848, !DIExpression(), !7377)
    #dbg_value(ptr %i.u, !2882, !DIExpression(), !7382)
    #dbg_value(ptr %i.u, !2888, !DIExpression(), !7384)
    #dbg_value(ptr %i.u, !2891, !DIExpression(), !7386)
    #dbg_value(ptr %i.u, !2897, !DIExpression(), !7388)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #23, !dbg !7411, !noalias !7390
  br label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7412

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.a, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !7391
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 !dbg !7413 {
bb.a:
    #dbg_value(ptr %0, !7482, !DIExpression(), !7486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7487), !dbg !7539
    #dbg_value(ptr %0, !7488, !DIExpression(), !7418)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7540
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !7540, !alias.scope !7487
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7540
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !7540, !alias.scope !7487
  %.val2.i = load ptr, ptr %0, align 8, !dbg !7540, !alias.scope !7487, !nonnull !1539, !align !2946, !noundef !1539 ; 9 uses
    #dbg_value(ptr poison, !7490, !DIExpression(), !7431)
    #dbg_value(ptr poison, !7493, !DIExpression(), !7432)
    #dbg_value(ptr poison, !7496, !DIExpression(), !7433)
    #dbg_value(ptr poison, !7504, !DIExpression(DW_OP_deref), !7434)
    #dbg_value(ptr poison, !7505, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !7434)
    #dbg_value(ptr poison, !7503, !DIExpression(), !7434)
    #dbg_value(i64 1, !7511, !DIExpression(), !7437)
    #dbg_value(i64 1, !7514, !DIExpression(), !7440)
    #dbg_value(ptr poison, !7517, !DIExpression(), !7443)
    #dbg_value(i8 -1, !7520, !DIExpression(), !7446)
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
    #dbg_value(ptr %.val2.i, !7524, !DIExpression(), !7449)
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !7541 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !7541, !noalias !7487, !noundef !1539 ; 3 uses
    #dbg_value(i64 0, !7506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7450)
    #dbg_value(i64 %i.d, !7506, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7450)
    #dbg_value(ptr undef, !7496, !DIExpression(), !7433)
    #dbg_value(ptr undef, !7493, !DIExpression(), !7432)
    #dbg_value(ptr undef, !7490, !DIExpression(), !7431)
    #dbg_value(ptr undef, !7491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7451)
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !7542
  br i1 %.not4.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i, !dbg !7543

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %1, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7494, !DIExpression(), !7452)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7512, !DIExpression(), !7437)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7515, !DIExpression(), !7440)
  %1 = add nuw i64 %.sroa.0.03.us.i.i, 1, !dbg !7544
    #dbg_value(i64 %1, !7506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7450)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7507, !DIExpression(), !7453)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7527, !DIExpression(), !7456)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7522, !DIExpression(), !7446)
    #dbg_value(i64 %.sroa.0.03.us.i.i, !7530, !DIExpression(), !7459)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7456)
  %2 = load ptr, ptr %.val2.i, align 8, !dbg !7545, !noalias !7487, !nonnull !1539, !noundef !1539
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.03.us.i.i, !dbg !7546 ; 2 uses
    #dbg_value(ptr %i.f, !7518, !DIExpression(), !7443)
  %i.g = load i8, ptr %i.f, align 1, !dbg !7547, !noalias !7487, !noundef !1539
  %i.h = icmp eq i8 %i.g, -128, !dbg !7547
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !7548

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
    #dbg_value(ptr %.val2.i, !7521, !DIExpression(), !7446)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7463)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7465)
  %i.i = add i64 %.sroa.0.03.us.i.i, -16, !dbg !7549
  %i.j = load i64, ptr %i.c, align 8, !dbg !7550, !noalias !7487, !noundef !1539
  %i.k = and i64 %i.j, %i.i, !dbg !7551
  store i8 -1, ptr %i.f, align 1, !dbg !7552, !noalias !7487
  %i.l = load ptr, ptr %.val2.i, align 8, !dbg !7553, !noalias !7487, !nonnull !1539, !noundef !1539
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !7554
  %i.n = getelementptr i8, ptr %i.m, i64 16, !dbg !7554
  store i8 -1, ptr %i.n, align 1, !dbg !7555, !noalias !7487
  %i.o = load i64, ptr %i.e, align 8, !dbg !7556, !noalias !7487, !noundef !1539
  %i.p = add i64 %i.o, -1, !dbg !7556
  store i64 %i.p, ptr %i.e, align 8, !dbg !7556, !noalias !7487
  br label %bb.c, !dbg !7557

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
    #dbg_value(i64 %1, !7506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7450)
    #dbg_value(ptr undef, !7496, !DIExpression(), !7433)
    #dbg_value(ptr undef, !7493, !DIExpression(), !7432)
    #dbg_value(ptr undef, !7490, !DIExpression(), !7431)
    #dbg_value(ptr undef, !7491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7451)
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d, !dbg !7542
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.split.us.i.i, !dbg !7543

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.q, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
    #dbg_value(i64 %.sroa.0.03.i.i, !7494, !DIExpression(), !7452)
    #dbg_value(i64 %.sroa.0.03.i.i, !7512, !DIExpression(), !7437)
    #dbg_value(i64 %.sroa.0.03.i.i, !7515, !DIExpression(), !7440)
  %i.q = add nuw i64 %.sroa.0.03.i.i, 1, !dbg !7544
    #dbg_value(i64 %i.q, !7506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7450)
    #dbg_value(i64 %.sroa.0.03.i.i, !7507, !DIExpression(), !7453)
    #dbg_value(i64 %.sroa.0.03.i.i, !7527, !DIExpression(), !7456)
    #dbg_value(i64 %.sroa.0.03.i.i, !7522, !DIExpression(), !7446)
    #dbg_value(i64 %.sroa.0.03.i.i, !7530, !DIExpression(), !7459)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7456)
  %i.r = load ptr, ptr %.val2.i, align 8, !dbg !7545, !noalias !7487, !nonnull !1539, !noundef !1539
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.03.i.i, !dbg !7546 ; 2 uses
    #dbg_value(ptr %i.s, !7518, !DIExpression(), !7443)
  %i.t = load i8, ptr %i.s, align 1, !dbg !7547, !noalias !7487, !noundef !1539
  %i.u = icmp eq i8 %i.t, -128, !dbg !7547
  br i1 %i.u, label %bb.e, label %bb.d, !dbg !7548

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
    #dbg_value(i64 %i.q, !7506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7450)
    #dbg_value(ptr undef, !7496, !DIExpression(), !7433)
    #dbg_value(ptr undef, !7493, !DIExpression(), !7432)
    #dbg_value(ptr undef, !7490, !DIExpression(), !7431)
    #dbg_value(ptr undef, !7491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7451)
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d, !dbg !7542
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.split.i.i, !dbg !7543

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1, !dbg !7544
    #dbg_value(ptr %.val2.i, !7521, !DIExpression(), !7446)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7463)
    #dbg_value(ptr %.val2.i, !7528, !DIExpression(), !7465)
  %i.v = add i64 %.sroa.0.03.i.i, -16, !dbg !7549
  %i.w = load i64, ptr %i.c, align 8, !dbg !7550, !noalias !7487, !noundef !1539
  %i.x = and i64 %i.w, %i.v, !dbg !7551
  store i8 -1, ptr %i.s, align 1, !dbg !7552, !noalias !7487
  %i.y = load ptr, ptr %.val2.i, align 8, !dbg !7553, !noalias !7487, !nonnull !1539, !noundef !1539
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x, !dbg !7554
  %i.aa = getelementptr i8, ptr %i.z, i64 16, !dbg !7554
  store i8 -1, ptr %i.aa, align 1, !dbg !7555, !noalias !7487
    #dbg_value(ptr %.val.i, !7508, !DIExpression(), !7469)
    #dbg_value(ptr %.val2.i, !7531, !DIExpression(), !7459)
    #dbg_value(ptr %.val2.i, !7535, !DIExpression(), !7472)
    #dbg_value(i64 %.val1.i, !7532, !DIExpression(), !7459)
  %i.ab = load ptr, ptr %.val2.i, align 8, !dbg !7558, !noalias !7487, !nonnull !1539, !noundef !1539
  %.neg22.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !7559
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.neg22.i.i, !dbg !7560
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ac), !dbg !7561, !noalias !7487, !inline_history !7475
  %i.ad = load i64, ptr %i.e, align 8, !dbg !7556, !noalias !7487, !noundef !1539
  %i.ae = add i64 %i.ad, -1, !dbg !7556
  store i64 %i.ae, ptr %i.e, align 8, !dbg !7556, !noalias !7487
  br label %bb.d, !dbg !7557

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.af = load i64, ptr %i.c, align 8, !dbg !7562, !noalias !7487, !noundef !1539 ; 3 uses
    #dbg_value(i64 %i.af, !7537, !DIExpression(), !7478)
  %i.ag = icmp ult i64 %i.af, 8, !dbg !7563
  %i.ah = add i64 %i.af, 1, !dbg !7563
  %i.ai = lshr i64 %i.ah, 3, !dbg !7563
  %i.aj = mul nuw i64 %i.ai, 7, !dbg !7563
  %.sroa.04.0.i.i = select i1 %i.ag, i64 %i.af, i64 %i.aj, !dbg !7563
    #dbg_value(i64 %.sroa.04.0.i.i, !7537, !DIExpression(), !7478)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !7564
  %i.al = load i64, ptr %i.ak, align 8, !dbg !7564, !noalias !7487, !noundef !1539
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !7565
  %i.an = sub i64 %.sroa.04.0.i.i, %i.al, !dbg !7565
  store i64 %i.an, ptr %i.am, align 8, !dbg !7565, !noalias !7487
  ret void, !dbg !7539
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate5bytesNCNvMNtB4_8capturesNtB13_8Captures22interpolate_bytes_into0NCB10_s_0EB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3, ptr noalias nofree noundef align 8 dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7573 {
bb.a:
    #dbg_value(ptr poison, !3315, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7904)
  %i.a = alloca [32 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !7890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7913)
    #dbg_value(ptr %0, !7914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7921)
    #dbg_value(ptr %0, !7922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7934)
    #dbg_value(ptr %0, !7935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7941)
    #dbg_value(ptr %0, !7914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7943)
    #dbg_value(ptr %0, !7922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7946)
    #dbg_value(ptr %0, !7935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7949)
    #dbg_value(ptr %0, !7914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7951)
    #dbg_value(ptr %0, !7922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7954)
    #dbg_value(ptr %0, !7935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7957)
    #dbg_value(ptr %0, !7914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7959)
    #dbg_value(ptr %0, !7922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7962)
    #dbg_value(ptr %0, !7935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7965)
    #dbg_value(ptr %0, !7966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7970)
    #dbg_value(ptr %0, !7971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7977)
    #dbg_value(ptr %0, !7978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7989)
    #dbg_value(i64 %1, !7890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7913)
    #dbg_value(i64 %1, !7914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7921)
    #dbg_value(i64 %1, !7922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7934)
    #dbg_value(i64 %1, !7935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7941)
    #dbg_value(i64 %1, !7914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7943)
    #dbg_value(i64 %1, !7922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7946)
    #dbg_value(i64 %1, !7935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7949)
    #dbg_value(i64 %1, !7914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7951)
    #dbg_value(i64 %1, !7922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7954)
    #dbg_value(i64 %1, !7935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7957)
    #dbg_value(i64 %1, !7914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7959)
    #dbg_value(i64 %1, !7922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7962)
    #dbg_value(i64 %1, !7935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7965)
    #dbg_value(i64 %1, !7966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7970)
    #dbg_value(i64 %1, !7971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7977)
    #dbg_value(i64 %1, !7978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7989)
    #dbg_value(ptr %3, !7892, !DIExpression(), !7913)
    #dbg_declare(ptr %2, !7891, !DIExpression(), !7990)
    #dbg_value(ptr %4, !7893, !DIExpression(), !7913)
    #dbg_value(ptr %4, !7967, !DIExpression(), !7992)
    #dbg_value(ptr %4, !7993, !DIExpression(), !7999)
    #dbg_value(ptr %4, !8000, !DIExpression(), !8007)
    #dbg_value(ptr %4, !8000, !DIExpression(), !8009)
    #dbg_value(ptr %4, !7967, !DIExpression(), !7970)
    #dbg_value(ptr %4, !7993, !DIExpression(), !8011)
    #dbg_value(i8 36, !7910, !DIExpression(), !8012)
    #dbg_value(i64 0, !7936, !DIExpression(), !8017)
    #dbg_value(i64 1, !8034, !DIExpression(), !8038)
    #dbg_value(i64 1, !8039, !DIExpression(), !8043)
    #dbg_value(i8 36, !8004, !DIExpression(), !8007)
    #dbg_value(i64 2, !7917, !DIExpression(), !7943)
    #dbg_value(i64 2, !7926, !DIExpression(), !7946)
    #dbg_value(i64 2, !7936, !DIExpression(), !7949)
    #dbg_value(i8 36, !8004, !DIExpression(), !8009)
    #dbg_value(i64 1, !7917, !DIExpression(), !7959)
    #dbg_value(i64 1, !7926, !DIExpression(), !7962)
    #dbg_value(i64 1, !7936, !DIExpression(), !7965)
    #dbg_value(ptr %0, !8044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8049)
    #dbg_value(i64 %1, !8044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
  %i.b = icmp eq i64 %1, 0, !dbg !8149
  br i1 %i.b, label %.thread, label %.lr.ph, !dbg !8150

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load i32, ptr %i.g, align 8, !range !3389
  %i.i = trunc nuw i32 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val.i114 = load ptr, ptr %i.l, align 8, !nonnull !1539 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i114, i64 56
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i114, i64 48
  br label %bb.b, !dbg !8150

.thread:                                          ; preds = %.backedge, %bb.a
    #dbg_value(i64 0, !8050, !DIExpression(), !8055)
    #dbg_value(ptr poison, !8051, !DIExpression(), !8055)
    #dbg_value(ptr poison, !7994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8011)
    #dbg_value(!DIArgList(ptr poison, i64 0), !7994, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8011)
    #dbg_value(ptr poison, !7996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8056)
    #dbg_value(i64 0, !7996, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8056)
    #dbg_value(ptr %4, !3391, !DIExpression(), !7605)
    #dbg_value(ptr %4, !3397, !DIExpression(), !7607)
    #dbg_value(ptr %4, !3403, !DIExpression(), !7609)
    #dbg_value(ptr %4, !3409, !DIExpression(), !7611)
    #dbg_value(ptr poison, !3395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7605)
    #dbg_value(ptr poison, !3399, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7607)
    #dbg_value(i64 0, !3395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7605)
    #dbg_value(i64 0, !3399, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7607)
    #dbg_value(i64 0, !3400, !DIExpression(), !7612)
    #dbg_value(i64 0, !3414, !DIExpression(), !7614)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0), !dbg !8151
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !8152 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !8152, !alias.scope !8057, !noundef !1539 ; 2 uses
    #dbg_value(i64 %i.q, !3401, !DIExpression(), !7617)
    #dbg_value(i64 %i.q, !3418, !DIExpression(), !7619)
  %i.r = icmp sgt i64 %i.q, -1, !dbg !8153
  tail call void @llvm.assume(i1 %i.r), !dbg !8154
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8155

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.0131 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  %.sroa.20.0130 = phi i64 [ %1, %.lr.ph ], [ %.sroa.20.0.be, %.backedge ] ; 6 uses
    #dbg_value(ptr %.sroa.0.0131, !7911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8012)
    #dbg_value(ptr %.sroa.0.0131, !7906, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8058)
    #dbg_value(i64 %.sroa.20.0130, !7911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8012)
    #dbg_value(i64 %.sroa.20.0130, !7906, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8058)
    #dbg_value(ptr undef, !7905, !DIExpression(DW_OP_deref), !8058)
    #dbg_value(ptr undef, !3315, !DIExpression(), !7904)
    #dbg_value(ptr %.sroa.0.0131, !3327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7620)
    #dbg_value(i64 %.sroa.20.0130, !3327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7620)
    #dbg_value(ptr %.sroa.0.0131, !3328, !DIExpression(), !7621)
    #dbg_value(ptr %.sroa.0.0131, !3422, !DIExpression(), !7623)
    #dbg_value(i64 %.sroa.20.0130, !3427, !DIExpression(), !7623)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0131, i64 %.sroa.20.0130, !dbg !8156
    #dbg_value(ptr %i.s, !3329, !DIExpression(), !7624)
    #dbg_value(ptr poison, !3429, !DIExpression(DW_OP_deref, DW_OP_deref), !7626)
    #dbg_value(ptr %.sroa.0.0131, !3442, !DIExpression(), !7626)
    #dbg_value(ptr %.sroa.0.0131, !3445, !DIExpression(), !7628)
    #dbg_value(ptr %.sroa.0.0131, !3452, !DIExpression(), !7630)
    #dbg_value(ptr %i.s, !3443, !DIExpression(), !7626)
    #dbg_value(ptr %i.s, !3449, !DIExpression(), !7628)
    #dbg_value(ptr %i.s, !3456, !DIExpression(), !7630)
    #dbg_value(i8 0, !3461, !DIExpression(), !7632)
    #dbg_value(i8 36, !3448, !DIExpression(), !7628)
    #dbg_value(i8 36, !3455, !DIExpression(), !7630)
    #dbg_value(ptr @_RNvNvNtNtNtCsdnbpgXzNiEQ_6memchr4arch6x86_646memchr10memchr_raw2FN, !3477, !DIExpression(), !7632)
    #dbg_value(ptr @_RNvNvNtNtNtCsdnbpgXzNiEQ_6memchr4arch6x86_646memchr10memchr_raw2FN, !3480, !DIExpression(), !7634)
    #dbg_value(i8 0, !3483, !DIExpression(), !7634)
  %i.t = load atomic ptr, ptr @_RNvNvNtNtNtCsdnbpgXzNiEQ_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !8157, !noalias !8059, !nonnull !1539, !noundef !1539
    #dbg_value(ptr %i.t, !3458, !DIExpression(), !7637)
  %i.u = tail call { i64, ptr } %i.t(i8 noundef 36, ptr noundef nonnull readonly %.sroa.0.0131, ptr noundef nonnull readonly %i.s), !dbg !8158, !noalias !8059, !inline_history !559 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0, !dbg !8159
    #dbg_value(i64 %i.v, !3485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7639)
    #dbg_value(ptr poison, !3485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7639)
  %i.w = trunc nuw i64 %i.v to i1, !dbg !8160
  br i1 %i.w, label %bb.d, label %bb.c, !dbg !8160

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %.sroa.20.0130, !8050, !DIExpression(), !8055)
    #dbg_value(ptr %.sroa.0.0131, !8051, !DIExpression(), !8055)
    #dbg_value(ptr %.sroa.0.0131, !7994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8011)
    #dbg_value(!DIArgList(ptr %.sroa.0.0131, i64 %.sroa.20.0130), !7994, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8011)
    #dbg_value(ptr %.sroa.0.0131, !7996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8056)
    #dbg_value(i64 %.sroa.20.0130, !7996, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8056)
    #dbg_value(ptr %4, !3391, !DIExpression(), !7605)
    #dbg_value(ptr %4, !3397, !DIExpression(), !7607)
    #dbg_value(ptr %4, !3403, !DIExpression(), !7609)
    #dbg_value(ptr %4, !3409, !DIExpression(), !7611)
    #dbg_value(ptr %.sroa.0.0131, !3395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7605)
    #dbg_value(ptr %.sroa.0.0131, !3399, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7607)
    #dbg_value(i64 %.sroa.20.0130, !3395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7605)
    #dbg_value(i64 %.sroa.20.0130, !3399, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7607)
    #dbg_value(i64 %.sroa.20.0130, !3400, !DIExpression(), !7612)
    #dbg_value(i64 %.sroa.20.0130, !3414, !DIExpression(), !7614)
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!7252 = !DILocation(line: 2957, column: 6, scope: !209, inlinedAt: !6804)
!7253 = !DILocation(line: 2885, column: 5, scope: !209, inlinedAt: !6804)
!7254 = !DILocation(line: 40, column: 32, scope: !360, inlinedAt: !6957)
!7255 = !DILocation(line: 40, column: 16, scope: !360, inlinedAt: !6957)
!7256 = !DILocation(line: 970, column: 18, scope: !362, inlinedAt: !6959)
!7257 = !DILocation(line: 57, column: 24, scope: !365, inlinedAt: !6961)
!7258 = !DILocation(line: 1621, column: 9, scope: !155, inlinedAt: !6967)
!7259 = !DILocation(line: 115, column: 17, scope: !367, inlinedAt: !6963)
!7260 = !DILocation(line: 3977, column: 17, scope: !220, inlinedAt: !6807)
!7261 = !DILocation(line: 2945, column: 34, scope: !210, inlinedAt: !6804)
!7262 = !DILocation(line: 2945, column: 9, scope: !210, inlinedAt: !6804)
!7263 = !DILocation(line: 2946, column: 9, scope: !210, inlinedAt: !6804)
!7264 = !DILocation(line: 1527, column: 18, scope: !379, inlinedAt: !6982)
!7265 = !DILocation(line: 2755, column: 1, scope: !368, inlinedAt: !6973)
!7266 = !DILocation(line: 847, column: 1, scope: !384, inlinedAt: !6990)
!7267 = !DILocation(line: 70, column: 9, scope: !385, inlinedAt: !6994)
!7268 = !DILocation(line: 2656, column: 9, scope: !387, inlinedAt: !6998)
!7269 = !DILocation(line: 2705, column: 17, scope: !386, inlinedAt: !6996)
!7270 = !DILocation(line: 2635, column: 9, scope: !394, inlinedAt: !7004)
!7271 = !DILocation(line: 3212, column: 26, scope: !328, inlinedAt: !7010)
!7272 = !DILocation(line: 222, column: 52, scope: !324, inlinedAt: !7006)
!7273 = !DILocation(line: 938, column: 37, scope: !330, inlinedAt: !7015)
!7274 = !DILocation(line: 478, column: 8, scope: !329, inlinedAt: !7017)
!7275 = !DILocation(line: 222, column: 71, scope: !324, inlinedAt: !7006)
!7276 = !DILocation(line: 222, column: 13, scope: !324, inlinedAt: !7006)
!7277 = !DILocation(line: 223, column: 43, scope: !323, inlinedAt: !7006)
!7278 = !DILocation(line: 938, column: 37, scope: !330, inlinedAt: !7020)
!7279 = !DILocation(line: 478, column: 8, scope: !329, inlinedAt: !7022)
!7280 = !DILocation(line: 1127, column: 15, scope: !396, inlinedAt: !7024)
!7281 = !DILocation(line: 1127, column: 9, scope: !396, inlinedAt: !7024)
!7282 = !DILocation(line: 312, column: 12, scope: !400, inlinedAt: !7035)
!7283 = !DILocation(line: 1054, column: 47, scope: !397, inlinedAt: !7029)
!7284 = !DILocation(line: 1054, column: 22, scope: !397, inlinedAt: !7029)
!7285 = !DILocation(line: 175, column: 14, scope: !401, inlinedAt: !7037)
!7286 = !DILocation(line: 312, column: 9, scope: !400, inlinedAt: !7035)
!7287 = !DILocation(line: 2904, column: 36, scope: !210, inlinedAt: !6804)
!7288 = !DILocation(line: 486, column: 18, scope: !405, inlinedAt: !7044)
!7289 = !DILocation(line: 628, column: 21, scope: !404, inlinedAt: !7042)
!7290 = !DILocation(line: 70, column: 13, scope: !403, inlinedAt: !7040)
!7291 = !DILocation(line: 28, column: 17, scope: !406, inlinedAt: !7047)
!7292 = !DILocation(line: 3944, column: 29, scope: !219, inlinedAt: !6807)
!7293 = !DILocation(line: 4002, column: 9, scope: !221, inlinedAt: !6806)
!7294 = !DILocation(line: 2906, column: 28, scope: !200, inlinedAt: !6804)
!7295 = !DILocation(line: 2439, column: 9, scope: !466, inlinedAt: !7057)
!7296 = !DILocation(line: 1054, column: 47, scope: !469, inlinedAt: !7061)
!7297 = !DILocation(line: 1054, column: 22, scope: !469, inlinedAt: !7061)
!7298 = !DILocation(line: 1054, column: 22, scope: !469, inlinedAt: !7065)
!7299 = !DILocation(line: 965, column: 33, scope: !460, inlinedAt: !7053)
!7300 = !DILocation(line: 241, column: 18, scope: !473, inlinedAt: !7072)
!7301 = !DILocation(line: 0, scope: !426, inlinedAt: !7089)
!7302 = !DILocation(line: 970, column: 18, scope: !431, inlinedAt: !7096)
!7303 = !DILocation(line: 573, column: 14, scope: !153, inlinedAt: !7101)
!7304 = !DILocation(line: 1621, column: 9, scope: !155, inlinedAt: !7104)
!7305 = !DILocation(line: 40, column: 32, scope: !437, inlinedAt: !7105)
!7306 = !DILocation(line: 40, column: 16, scope: !437, inlinedAt: !7105)
!7307 = !DILocation(line: 628, column: 21, scope: !440, inlinedAt: !7110)
!7308 = !DILocation(line: 70, column: 13, scope: !439, inlinedAt: !7108)
!7309 = !DILocation(line: 1754, column: 18, scope: !434, inlinedAt: !7102)
!7310 = !DILocation(line: 970, column: 18, scope: !444, inlinedAt: !7122)
!7311 = !DILocation(line: 2646, column: 18, scope: !442, inlinedAt: !7116)
!7312 = !DILocation(line: 17, column: 9, scope: !445, inlinedAt: !7123)
!7313 = !DILocation(line: 478, column: 8, scope: !446, inlinedAt: !7124)
!7314 = !DILocation(line: 57, column: 24, scope: !449, inlinedAt: !7126)
!7315 = !DILocation(line: 1621, column: 9, scope: !155, inlinedAt: !7130)
!7316 = !DILocation(line: 40, column: 32, scope: !451, inlinedAt: !7134)
!7317 = !DILocation(line: 40, column: 16, scope: !451, inlinedAt: !7134)
!7318 = !DILocation(line: 1127, column: 9, scope: !454, inlinedAt: !7136)
!7319 = !DILocation(line: 1711, column: 9, scope: !441, inlinedAt: !7114)
!7320 = !DILocation(line: 89, column: 9, scope: !425, inlinedAt: !7090)
!7321 = !DILocation(line: 90, column: 9, scope: !425, inlinedAt: !7090)
!7322 = !DILocation(line: 970, column: 18, scope: !455, inlinedAt: !7154)
!7323 = !DILocation(line: 47, column: 20, scope: !456, inlinedAt: !7156)
!7324 = !DILocation(line: 48, column: 13, scope: !456, inlinedAt: !7156)
!7325 = !DILocation(line: 2689, column: 13, scope: !457, inlinedAt: !7157)
!7326 = !DILocation(line: 2589, column: 22, scope: !424, inlinedAt: !7083)
!7327 = !DILocation(line: 2593, column: 13, scope: !424, inlinedAt: !7083)
!7328 = !DILocation(line: 970, column: 18, scope: !455, inlinedAt: !7158)
!7329 = !DILocation(line: 2594, column: 13, scope: !424, inlinedAt: !7083)
!7330 = !DILocation(line: 2439, column: 9, scope: !239, inlinedAt: !6836)
!7331 = !DILocation(line: 2398, column: 22, scope: !238, inlinedAt: !6834)
!7332 = !DILocation(line: 1054, column: 22, scope: !459, inlinedAt: !7161)
!7333 = !DILocation(line: 2398, column: 22, scope: !238, inlinedAt: !7152)
!7334 = !DILocation(line: 1054, column: 22, scope: !459, inlinedAt: !7165)
!7335 = !DILocation(line: 573, column: 14, scope: !458, inlinedAt: !7159)
!7336 = !DILocation(line: 2770, column: 22, scope: !218, inlinedAt: !6803)
!7337 = !DILocation(line: 2756, column: 9, scope: !218, inlinedAt: !6803)
!7338 = !DILocation(line: 0, scope: !216, inlinedAt: !6803)
!7339 = !DILocation(line: 2793, column: 6, scope: !216, inlinedAt: !6803)
!7340 = !DILocation(line: 973, column: 13, scope: !6802)
!7341 = !DILocation(line: 975, column: 6, scope: !6802)
!7342 = distinct !{!7342, i1 false, !"_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata"}
!7343 = distinct !{!7343, !7342, !"_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!7344 = distinct !DILocation(line: 847, column: 1, scope: !384)
!7345 = distinct !DILocation(line: 0, scope: !385, inlinedAt: !7344)
!7346 = distinct !DILocation(line: 70, column: 9, scope: !385, inlinedAt: !7344)
!7347 = distinct !DILocation(line: 0, scope: !386, inlinedAt: !7346)
!7348 = distinct !DILocation(line: 2705, column: 23, scope: !386, inlinedAt: !7346)
!7349 = distinct !DILocation(line: 0, scope: !387, inlinedAt: !7348)
!7350 = distinct !DILocation(line: 2710, column: 32, scope: !386, inlinedAt: !7346)
!7351 = distinct !DILocation(line: 0, scope: !389, inlinedAt: !7350)
!7352 = distinct !DILocation(line: 3113, column: 38, scope: !389, inlinedAt: !7350)
!7353 = distinct !DILocation(line: 0, scope: !393, inlinedAt: !7352)
!7354 = distinct !DILocation(line: 3145, column: 65, scope: !393, inlinedAt: !7352)
!7355 = distinct !DILocation(line: 0, scope: !394, inlinedAt: !7354)
!7356 = distinct !DILocation(line: 3145, column: 39, scope: !393, inlinedAt: !7352)
!7357 = distinct !DILocation(line: 0, scope: !325, inlinedAt: !7356)
!7358 = distinct !DILocation(line: 222, column: 18, scope: !324, inlinedAt: !7356)
!7359 = distinct !DILocation(line: 0, scope: !327, inlinedAt: !7358)
!7360 = distinct !DILocation(line: 1330, column: 31, scope: !327, inlinedAt: !7358)
!7361 = distinct !DILocation(line: 0, scope: !328, inlinedAt: !7360)
!7362 = distinct !DILocation(line: 0, scope: !324, inlinedAt: !7356)
!7363 = distinct !DILocation(line: 1331, column: 16, scope: !326, inlinedAt: !7358)
!7364 = distinct !DILocation(line: 0, scope: !329, inlinedAt: !7363)
!7365 = distinct !DILocation(line: 222, column: 40, scope: !324, inlinedAt: !7356)
!7366 = distinct !DILocation(line: 0, scope: !330, inlinedAt: !7365)
!7367 = distinct !DILocation(line: 938, column: 16, scope: !330, inlinedAt: !7365)
!7368 = distinct !DILocation(line: 0, scope: !329, inlinedAt: !7367)
!7369 = distinct !DILocation(line: 0, scope: !323, inlinedAt: !7356)
!7370 = distinct !DILocation(line: 223, column: 31, scope: !323, inlinedAt: !7356)
!7371 = distinct !DILocation(line: 0, scope: !330, inlinedAt: !7370)
!7372 = distinct !DILocation(line: 938, column: 16, scope: !2671, inlinedAt: !7370)
!7373 = distinct !DILocation(line: 0, scope: !329, inlinedAt: !7372)
!7374 = distinct !DILocation(line: 3146, column: 29, scope: !391, inlinedAt: !7352)
!7375 = distinct !DILocation(line: 0, scope: !396, inlinedAt: !7374)
!7376 = distinct !DILocation(line: 0, scope: !391, inlinedAt: !7352)
!7377 = distinct !DILocation(line: 0, scope: !388, inlinedAt: !7350)
!7378 = distinct !DILocation(line: 0, scope: !392, inlinedAt: !7352)
!7379 = distinct !DILocation(line: 3150, column: 64, scope: !392, inlinedAt: !7352)
!7380 = distinct !DILocation(line: 0, scope: !397, inlinedAt: !7379)
!7381 = distinct !DILocation(line: 3114, column: 19, scope: !388, inlinedAt: !7350)
!7382 = distinct !DILocation(line: 0, scope: !398, inlinedAt: !7381)
!7383 = distinct !DILocation(line: 554, column: 23, scope: !398, inlinedAt: !7381)
!7384 = distinct !DILocation(line: 0, scope: !399, inlinedAt: !7383)
!7385 = distinct !DILocation(line: 436, column: 9, scope: !399, inlinedAt: !7383)
!7386 = distinct !DILocation(line: 0, scope: !400, inlinedAt: !7385)
!7387 = distinct !DILocation(line: 321, column: 22, scope: !400, inlinedAt: !7385)
!7388 = distinct !DILocation(line: 0, scope: !401, inlinedAt: !7387)
!7389 = !DILocation(line: 0, scope: !384)
!7390 = !{!7343}
!7391 = !DILocation(line: 847, column: 1, scope: !384)
!7392 = !DILocation(line: 70, column: 23, scope: !385, inlinedAt: !7344)
!7393 = !DILocation(line: 70, column: 9, scope: !385, inlinedAt: !7344)
!7394 = !DILocation(line: 2656, column: 9, scope: !387, inlinedAt: !7348)
!7395 = !DILocation(line: 2705, column: 17, scope: !386, inlinedAt: !7346)
!7396 = !DILocation(line: 2635, column: 9, scope: !394, inlinedAt: !7354)
!7397 = !DILocation(line: 3212, column: 26, scope: !328, inlinedAt: !7360)
!7398 = !DILocation(line: 222, column: 52, scope: !324, inlinedAt: !7356)
!7399 = !DILocation(line: 938, column: 37, scope: !330, inlinedAt: !7365)
!7400 = !DILocation(line: 478, column: 8, scope: !329, inlinedAt: !7367)
!7401 = !DILocation(line: 222, column: 71, scope: !324, inlinedAt: !7356)
!7402 = !DILocation(line: 222, column: 13, scope: !324, inlinedAt: !7356)
!7403 = !DILocation(line: 223, column: 43, scope: !323, inlinedAt: !7356)
!7404 = !DILocation(line: 938, column: 37, scope: !330, inlinedAt: !7370)
!7405 = !DILocation(line: 478, column: 8, scope: !329, inlinedAt: !7372)
!7406 = !DILocation(line: 1127, column: 15, scope: !396, inlinedAt: !7374)
!7407 = !DILocation(line: 1127, column: 9, scope: !396, inlinedAt: !7374)
!7408 = !DILocation(line: 312, column: 12, scope: !400, inlinedAt: !7385)
!7409 = !DILocation(line: 1054, column: 47, scope: !397, inlinedAt: !7379)
!7410 = !DILocation(line: 1054, column: 22, scope: !397, inlinedAt: !7379)
!7411 = !DILocation(line: 175, column: 14, scope: !401, inlinedAt: !7387)
!7412 = !DILocation(line: 312, column: 9, scope: !400, inlinedAt: !7385)
!7413 = distinct !DISubprogram(name: "drop_glue<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs9GYDdpCSJ4S_14regex_automata", scope: !1634, file: !2076, line: 847, type: !7481, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !7485, retainedNodes: !7483)
!7414 = distinct !{!7414, i1 false, !"_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata"}
!7415 = distinct !{!7415, !7414, !"_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!7416 = distinct !DISubprogram(name: "drop<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>", linkageName: "_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata", scope: !2827, file: !2825, line: 69, type: !7481, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !3150, retainedNodes: !7489)
!7417 = distinct !DILocation(line: 847, column: 1, scope: !7413)
!7418 = distinct !DILocation(line: 0, scope: !7416, inlinedAt: !7417)
!7419 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !3152, file: !2360, line: 2192, type: !3154, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, retainedNodes: !7492)
!7420 = distinct !DILexicalBlock(scope: !7421, file: !3155, line: 1101, column: 13)
!7421 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs9GYDdpCSJ4S_14regex_automata", scope: !3158, file: !3155, line: 1099, type: !3161, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1629, retainedNodes: !7495)
!7422 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata", scope: !3169, file: !3155, line: 1184, type: !3161, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !3171, retainedNodes: !7497)
!7423 = distinct !DILexicalBlock(scope: !7424, file: !1879, line: 3006, column: 50)
!7424 = distinct !DILexicalBlock(scope: !7426, file: !1879, line: 2999, column: 13)
!7425 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0Cs9GYDdpCSJ4S_14regex_automata", scope: !3144, file: !1879, line: 2998, type: !7502, scopeLine: 2998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, retainedNodes: !7509)
!7426 = distinct !DILexicalBlock(scope: !7425, file: !1879, line: 2999, column: 13)
!7427 = distinct !DILocation(line: 70, column: 9, scope: !7416, inlinedAt: !7417)
!7428 = distinct !DILocation(line: 2999, column: 22, scope: !7498, inlinedAt: !7427)
!7429 = distinct !DILocation(line: 1185, column: 14, scope: !7422, inlinedAt: !7428)
!7430 = distinct !DILocation(line: 1100, column: 12, scope: !7421, inlinedAt: !7429)
!7431 = distinct !DILocation(line: 2192, column: 19, scope: !7419, inlinedAt: !7430)
!7432 = distinct !DILocation(line: 1099, column: 18, scope: !7421, inlinedAt: !7429)
!7433 = distinct !DILocation(line: 1184, column: 13, scope: !7422, inlinedAt: !7428)
!7434 = distinct !DILocation(line: 0, scope: !7425, inlinedAt: !7427)
!7435 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsj6eKBz9Db1c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !3172, file: !3155, line: 263, type: !2365, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, retainedNodes: !7513)
!7436 = distinct !DILocation(line: 1103, column: 35, scope: !7420, inlinedAt: !7429)
!7437 = distinct !DILocation(line: 0, scope: !7435, inlinedAt: !7436)
!7438 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj13unchecked_add", scope: !2348, file: !2346, line: 1001, type: !3174, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, retainedNodes: !7516)
!7439 = distinct !DILocation(line: 265, column: 28, scope: !7435, inlinedAt: !7436)
!7440 = distinct !DILocation(line: 0, scope: !7438, inlinedAt: !7439)
!7441 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs5_NtNtCs37Y8JGf013z_9hashbrown7control3tagNtB5_3TagNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq", scope: !3176, file: !2020, line: 4, type: !3178, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, retainedNodes: !7519)
!7442 = distinct !DILocation(line: 3004, column: 24, scope: !7424, inlinedAt: !7427)
!7443 = distinct !DILocation(line: 0, scope: !7441, inlinedAt: !7442)
!7444 = distinct !DISubprogram(name: "set_ctrl", linkageName: "_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner8set_ctrl", scope: !31, file: !1879, line: 2564, type: !2980, scopeLine: 2564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, declaration: !2981, retainedNodes: !7523)
!7445 = distinct !DILocation(line: 3005, column: 31, scope: !7424, inlinedAt: !7427)
!7446 = distinct !DILocation(line: 0, scope: !7444, inlinedAt: !7445)
!7447 = distinct !DISubprogram(name: "num_buckets", linkageName: "_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner11num_buckets", scope: !31, file: !1879, line: 2634, type: !2865, scopeLine: 2634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, declaration: !2866, retainedNodes: !7525)
!7448 = distinct !DILocation(line: 2999, column: 31, scope: !7425, inlinedAt: !7427)
!7449 = distinct !DILocation(line: 0, scope: !7447, inlinedAt: !7448)
!7450 = distinct !DILocation(line: 0, scope: !7426, inlinedAt: !7427)
!7451 = distinct !DILocation(line: 2192, column: 26, scope: !7419, inlinedAt: !7430)
!7452 = distinct !DILocation(line: 0, scope: !7420, inlinedAt: !7429)
!7453 = distinct !DILocation(line: 0, scope: !7424, inlinedAt: !7427)
!7454 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !31, file: !1879, line: 2621, type: !2016, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, declaration: !2017, retainedNodes: !7529)
!7455 = distinct !DILocation(line: 3004, column: 31, scope: !7424, inlinedAt: !7427)
!7456 = distinct !DILocation(line: 0, scope: !7454, inlinedAt: !7455)
!7457 = distinct !DISubprogram(name: "bucket_ptr", linkageName: "_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner10bucket_ptr", scope: !31, file: !1879, line: 2393, type: !2405, scopeLine: 2393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, declaration: !2406, retainedNodes: !7533)
!7458 = distinct !DILocation(line: 3007, column: 40, scope: !7423, inlinedAt: !7427)
!7459 = distinct !DILocation(line: 0, scope: !7457, inlinedAt: !7458)
!7460 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrOh3addCs9GYDdpCSJ4S_14regex_automata", scope: !2043, file: !2041, line: 936, type: !2047, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538)
!7461 = distinct !DILocation(line: 2624, column: 37, scope: !7454, inlinedAt: !7455)
!7462 = distinct !DILocation(line: 2593, column: 19, scope: !7444, inlinedAt: !7445)
!7463 = distinct !DILocation(line: 0, scope: !7454, inlinedAt: !7462)
!7464 = distinct !DILocation(line: 2594, column: 19, scope: !7444, inlinedAt: !7445)
!7465 = distinct !DILocation(line: 0, scope: !7454, inlinedAt: !7464)
!7466 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj12wrapping_sub", scope: !2348, file: !2346, line: 2688, type: !2365, scopeLine: 2688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539)
!7467 = distinct !DILocation(line: 2589, column: 30, scope: !7444, inlinedAt: !7445)
!7468 = distinct !DILocation(line: 2624, column: 37, scope: !7534, inlinedAt: !7464)
!7469 = distinct !DILocation(line: 0, scope: !7423, inlinedAt: !7427)
!7470 = distinct !DISubprogram(name: "data_end<u8>", linkageName: "_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner8data_endhECs9GYDdpCSJ4S_14regex_automata", scope: !31, file: !1879, line: 2438, type: !2412, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, declaration: !2413, retainedNodes: !7536)
!7471 = distinct !DILocation(line: 2397, column: 38, scope: !7457, inlinedAt: !7458)
!7472 = distinct !DILocation(line: 0, scope: !7470, inlinedAt: !7471)
!7473 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrOh3subCs9GYDdpCSJ4S_14regex_automata", scope: !2043, file: !2041, line: 1015, type: !2047, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538)
!7474 = distinct !DILocation(line: 2398, column: 18, scope: !7457, inlinedAt: !7458)
!7475 = distinct !{null, null}
!7476 = distinct !DISubprogram(name: "bucket_mask_to_capacity", linkageName: "_RNvNtCs37Y8JGf013z_9hashbrown3raw23bucket_mask_to_capacity", scope: !1378, file: !1879, line: 182, type: !2357, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, retainedNodes: !7538)
!7477 = distinct !DILocation(line: 3013, column: 33, scope: !7425, inlinedAt: !7427)
!7478 = distinct !DILocation(line: 0, scope: !7476, inlinedAt: !7477)
!7479 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>", baseType: !475, size: 64, align: 64, dwarfAddressSpace: 0)
!7480 = !{null, !7479}
!7481 = !DISubroutineType(types: !7480)
!7482 = !DILocalVariable(arg: 1, scope: !7413, file: !2076, line: 847, type: !7479)
!7483 = !{!7482}
!7484 = !DITemplateTypeParameter(name: "T", type: !475)
!7485 = !{!7484}
!7486 = !DILocation(line: 0, scope: !7413)
!7487 = !{!7415}
!7488 = !DILocalVariable(name: "self", arg: 1, scope: !7416, file: !2825, line: 69, type: !7479)
!7489 = !{!7488}
!7490 = !DILocalVariable(name: "self", arg: 1, scope: !7419, file: !2360, line: 2192, type: !2157)
!7491 = !DILocalVariable(name: "other", arg: 2, scope: !7419, file: !2360, line: 2192, type: !2157)
!7492 = !{!7490, !7491}
!7493 = !DILocalVariable(name: "self", arg: 1, scope: !7421, file: !3155, line: 1099, type: !3159)
!7494 = !DILocalVariable(name: "old", scope: !7420, file: !3155, line: 1101, type: !1524, align: 64)
!7495 = !{!7493, !7494}
!7496 = !DILocalVariable(name: "self", arg: 1, scope: !7422, file: !3155, line: 1184, type: !3159)
!7497 = !{!7496}
!7498 = !DILexicalBlockFile(scope: !7426, file: !1879, discriminator: 2)
!7499 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}", baseType: !474, size: 64, align: 64, dwarfAddressSpace: 0)
!7500 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut &mut hashbrown::raw::RawTableInner", baseType: !2259, size: 64, align: 64, dwarfAddressSpace: 0)
!7501 = !{null, !7499, !7500}
!7502 = !DISubroutineType(cc: DW_CC_nocall, types: !7501)
!7503 = !DILocalVariable(name: "self_", arg: 2, scope: !7425, file: !1879, line: 2998, type: !7500)
!7504 = !DILocalVariable(name: "drop", scope: !7425, file: !1879, line: 2988, type: !215, align: 64)
!7505 = !DILocalVariable(name: "size_of", scope: !7425, file: !1879, line: 2987, type: !1524, align: 64)
!7506 = !DILocalVariable(name: "iter", scope: !7426, file: !1879, line: 2999, type: !476, align: 64)
!7507 = !DILocalVariable(name: "i", scope: !7424, file: !1879, line: 2999, type: !1524, align: 64)
!7508 = !DILocalVariable(name: "drop", scope: !7423, file: !1879, line: 3006, type: !2317, align: 64)
!7509 = !{!7503, !7504, !7505, !7506, !7507, !7508}
!7511 = !DILocalVariable(name: "n", scope: !7435, file: !3155, line: 263, type: !1524, align: 64)
!7512 = !DILocalVariable(name: "start", arg: 1, scope: !7435, file: !3155, line: 263, type: !1524)
!7513 = !{!7512, !7511}
!7514 = !DILocalVariable(name: "rhs", scope: !7438, file: !2346, line: 1001, type: !1524, align: 64)
!7515 = !DILocalVariable(name: "self", arg: 1, scope: !7438, file: !2346, line: 1001, type: !1524)
!7516 = !{!7515, !7514}
!7517 = !DILocalVariable(name: "other", scope: !7441, file: !2020, line: 4, type: !3175, align: 64)
!7518 = !DILocalVariable(name: "self", arg: 1, scope: !7441, file: !2020, line: 4, type: !2014)
!7519 = !{!7518, !7517}
!7520 = !DILocalVariable(name: "ctrl", scope: !7444, file: !1879, line: 2564, type: !117, align: 8)
!7521 = !DILocalVariable(name: "self", arg: 1, scope: !7444, file: !1879, line: 2564, type: !2259)
!7522 = !DILocalVariable(name: "index", arg: 2, scope: !7444, file: !1879, line: 2564, type: !1524)
!7523 = !{!7521, !7522, !7520}
!7524 = !DILocalVariable(name: "self", arg: 1, scope: !7447, file: !1879, line: 2634, type: !2259)
!7525 = !{!7524}
!7527 = !DILocalVariable(name: "index", arg: 2, scope: !7454, file: !1879, line: 2621, type: !1524)
!7528 = !DILocalVariable(name: "self", arg: 1, scope: !7454, file: !1879, line: 2621, type: !2259)
!7529 = !{!7528, !7527}
!7530 = !DILocalVariable(name: "index", arg: 2, scope: !7457, file: !1879, line: 2393, type: !1524)
!7531 = !DILocalVariable(name: "self", arg: 1, scope: !7457, file: !1879, line: 2393, type: !2259)
!7532 = !DILocalVariable(name: "size_of", arg: 3, scope: !7457, file: !1879, line: 2393, type: !1524)
!7533 = !{!7531, !7530, !7532}
!7534 = !DILexicalBlockFile(scope: !7454, file: !1879, discriminator: 4)
!7535 = !DILocalVariable(name: "self", arg: 1, scope: !7470, file: !1879, line: 2438, type: !2259)
!7536 = !{!7535}
!7537 = !DILocalVariable(name: "bucket_mask", arg: 1, scope: !7476, file: !1879, line: 182, type: !1524)
!7538 = !{!7537}
!7539 = !DILocation(line: 847, column: 1, scope: !7413)
!7540 = !DILocation(line: 70, column: 9, scope: !7416, inlinedAt: !7417)
!7541 = !DILocation(line: 2635, column: 9, scope: !7447, inlinedAt: !7448)
!7542 = !DILocation(line: 2192, column: 50, scope: !7419, inlinedAt: !7430)
!7543 = !DILocation(line: 1100, column: 12, scope: !7421, inlinedAt: !7429)
!7544 = !DILocation(line: 1013, column: 17, scope: !7438, inlinedAt: !7439)
!7545 = !DILocation(line: 2624, column: 18, scope: !7454, inlinedAt: !7455)
!7546 = !DILocation(line: 970, column: 18, scope: !7460, inlinedAt: !7461)
!7547 = !DILocation(line: 4, column: 23, scope: !7441, inlinedAt: !7442)
!7548 = !DILocation(line: 3004, column: 24, scope: !7424, inlinedAt: !7427)
!7549 = !DILocation(line: 2689, column: 13, scope: !7466, inlinedAt: !7467)
!7550 = !DILocation(line: 2589, column: 60, scope: !7444, inlinedAt: !7445)
!7551 = !DILocation(line: 2589, column: 22, scope: !7444, inlinedAt: !7445)
!7552 = !DILocation(line: 2593, column: 13, scope: !7444, inlinedAt: !7445)
!7553 = !DILocation(line: 2624, column: 18, scope: !7454, inlinedAt: !7464)
!7554 = !DILocation(line: 970, column: 18, scope: !7460, inlinedAt: !7468)
!7555 = !DILocation(line: 2594, column: 13, scope: !7444, inlinedAt: !7445)
!7556 = !DILocation(line: 3009, column: 25, scope: !7424, inlinedAt: !7427)
!7557 = !DILocation(line: 3004, column: 21, scope: !7424, inlinedAt: !7427)
!7558 = !DILocation(line: 2439, column: 9, scope: !7470, inlinedAt: !7471)
!7559 = !DILocation(line: 2398, column: 22, scope: !7457, inlinedAt: !7458)
!7560 = !DILocation(line: 1054, column: 22, scope: !7473, inlinedAt: !7474)
!7561 = !DILocation(line: 3007, column: 29, scope: !7423, inlinedAt: !7427)
!7562 = !DILocation(line: 3013, column: 57, scope: !7425, inlinedAt: !7427)
!7563 = !DILocation(line: 183, column: 8, scope: !7476, inlinedAt: !7477)
!7564 = !DILocation(line: 3013, column: 78, scope: !7425, inlinedAt: !7427)
!7565 = !DILocation(line: 3013, column: 13, scope: !7425, inlinedAt: !7427)
!7566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}", scope: !3185, file: !1298, size: 64, align: 64, elements: !7889, templateParams: !1539, identifier: "fc6e7bdd7cf73b4d946c647c7310352f")
!7567 = distinct !DILexicalBlock(scope: !7568, file: !3180, line: 211, column: 54)
!7568 = distinct !DILexicalBlock(scope: !7571, file: !3180, line: 210, column: 13)
!7569 = distinct !DILexicalBlock(scope: !7571, file: !3180, line: 209, column: 13)
!7570 = distinct !DILexicalBlock(scope: !7573, file: !3180, line: 200, column: 13)
!7571 = distinct !DILexicalBlock(scope: !7573, file: !3180, line: 199, column: 9)
!7572 = distinct !DILexicalBlock(scope: !7573, file: !3180, line: 187, column: 13)
!7573 = distinct !DISubprogram(name: "bytes<regex_automata::util::captures::{impl#0}::interpolate_bytes_into::{closure_env#0}, regex_automata::util::captures::{impl#0}::interpolate_bytes_into::{closure_env#1}>", linkageName: "_RINvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate5bytesNCNvMNtB4_8capturesNtB13_8Captures22interpolate_bytes_into0NCB10_s_0EB6_", scope: !3181, file: !3180, line: 178, type: !7887, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !7903, retainedNodes: !7900)
!7574 = distinct !DISubprogram(name: "memchr", linkageName: "_RNvNtCsdnbpgXzNiEQ_6memchr6memchr6memchr", scope: !3317, file: !3337, line: 27, type: !3339, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, retainedNodes: !7907)
!7575 = distinct !DISubprogram(name: "memchr", linkageName: "_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6memchr5inner6memchr", scope: !3342, file: !3340, line: 12, type: !3339, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, retainedNodes: !7912)
!7576 = distinct !DILocation(line: 31, column: 9, scope: !7574, inlinedAt: !7909)
!7577 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCsj6eKBz9Db1c_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCs9GYDdpCSJ4S_14regex_automata", scope: !3345, file: !3343, line: 18, type: !7916, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !7919, retainedNodes: !7918)
!7578 = distinct !DILexicalBlock(scope: !7582, file: !3343, line: 549, column: 13)
!7579 = distinct !DILexicalBlock(scope: !7582, file: !3343, line: 549, column: 13)
!7580 = distinct !DILexicalBlock(scope: !7582, file: !3343, line: 549, column: 13)
!7581 = distinct !DILexicalBlock(scope: !7582, file: !3343, line: 549, column: 13)
!7582 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCs9GYDdpCSJ4S_14regex_automata", scope: !7923, file: !3343, line: 543, type: !7925, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, retainedNodes: !7931)
!7583 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCsj6eKBz9Db1c_4core5slice5index24get_offset_len_noubcheckhECs9GYDdpCSJ4S_14regex_automata", scope: !3344, file: !3343, line: 83, type: !3350, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, retainedNodes: !7939)
!7584 = distinct !DISubprogram(name: "extend_from_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE17extend_from_sliceCs9GYDdpCSJ4S_14regex_automata", scope: !71, file: !3351, line: 3605, type: !3353, scopeLine: 3605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1784, declaration: !3354, retainedNodes: !7968)
!7585 = distinct !DISubprogram(name: "iter<u8>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core5sliceSh4iterCs9GYDdpCSJ4S_14regex_automata", scope: !3356, file: !3355, line: 1039, type: !7973, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, retainedNodes: !7974)
!7586 = distinct !DILexicalBlock(scope: !7587, file: !3363, line: 99, column: 13)
!7587 = distinct !DILexicalBlock(scope: !7588, file: !3363, line: 96, column: 9)
!7588 = distinct !DILexicalBlock(scope: !7592, file: !3363, line: 95, column: 9)
!7589 = distinct !DILexicalBlock(scope: !7590, file: !3363, line: 99, column: 13)
!7590 = distinct !DILexicalBlock(scope: !7591, file: !3363, line: 96, column: 9)
!7591 = distinct !DILexicalBlock(scope: !7592, file: !3363, line: 95, column: 9)
!7592 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs4_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_4IterhE3newCs9GYDdpCSJ4S_14regex_automata", scope: !531, file: !3363, line: 94, type: !7973, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, declaration: !7979, retainedNodes: !7986)
!7593 = distinct !DILexicalBlock(scope: !7595, file: !3364, line: 55, column: 9)
!7594 = distinct !DILexicalBlock(scope: !7595, file: !3364, line: 55, column: 9)
!7595 = distinct !DISubprogram(name: "spec_extend<u8, alloc::alloc::Global>", linkageName: "_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCs9GYDdpCSJ4S_14regex_automata", scope: !3366, file: !3364, line: 54, type: !3368, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1784, retainedNodes: !7997)
!7596 = distinct !DISubprogram(name: "push<u8, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE4pushCs9GYDdpCSJ4S_14regex_automata", scope: !71, file: !3351, line: 995, type: !8002, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1784, declaration: !8003, retainedNodes: !8005)
!7597 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeTo<usize>>", linkageName: "_RNvXNtNtCsj6eKBz9Db1c_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range7RangeTojEE5indexCs9GYDdpCSJ4S_14regex_automata", scope: !3345, file: !3343, line: 18, type: !8019, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !8023, retainedNodes: !8022)
!7598 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCs9GYDdpCSJ4S_14regex_automata", scope: !8024, file: !3343, line: 502, type: !8026, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, retainedNodes: !8029)
!7599 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCs9GYDdpCSJ4S_14regex_automata", scope: !3372, file: !3343, line: 405, type: !3374, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, retainedNodes: !8033)
!7600 = distinct !DISubprogram(name: "get<u8, usize>", linkageName: "_RINvMNtCsj6eKBz9Db1c_4core5sliceSh3getjECs9GYDdpCSJ4S_14regex_automata", scope: !3356, file: !3355, line: 572, type: !3376, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !3385, retainedNodes: !8036)
!7601 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexShE3getCs9GYDdpCSJ4S_14regex_automata", scope: !3386, file: !3343, line: 183, type: !3388, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, retainedNodes: !8041)
!7602 = distinct !DISubprogram(name: "is_empty<u8>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8is_emptyCs9GYDdpCSJ4S_14regex_automata", scope: !3356, file: !3355, line: 136, type: !8046, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, retainedNodes: !8047)
!7603 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrOh3addCs9GYDdpCSJ4S_14regex_automata", scope: !2043, file: !2041, line: 936, type: !2047, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, retainedNodes: !8052)
!7604 = distinct !DILocation(line: 56, column: 23, scope: !7593, inlinedAt: !8010)
!7605 = distinct !DILocation(line: 0, scope: !537, inlinedAt: !7604)
!7606 = distinct !DILocation(line: 2962, column: 18, scope: !537, inlinedAt: !7604)
!7607 = distinct !DILocation(line: 0, scope: !540, inlinedAt: !7606)
!7608 = distinct !DILocation(line: 2980, column: 24, scope: !539, inlinedAt: !7606)
!7609 = distinct !DILocation(line: 0, scope: !541, inlinedAt: !7608)
!7610 = distinct !DILocation(line: 2983, column: 66, scope: !538, inlinedAt: !7606)
!7611 = distinct !DILocation(line: 0, scope: !542, inlinedAt: !7610)
!7612 = distinct !DILocation(line: 0, scope: !539, inlinedAt: !7606)
!7613 = distinct !DILocation(line: 2983, column: 17, scope: !538, inlinedAt: !7606)
!7614 = distinct !DILocation(line: 0, scope: !543, inlinedAt: !7613)
!7615 = distinct !{!7615, i1 false, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs9GYDdpCSJ4S_14regex_automata"}
!7616 = distinct !{!7616, !7615, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs9GYDdpCSJ4S_14regex_automata: argument 0:thread"}
!7617 = distinct !DILocation(line: 0, scope: !538, inlinedAt: !7606)
!7618 = distinct !DILocation(line: 2983, column: 79, scope: !538, inlinedAt: !7606)
!7619 = distinct !DILocation(line: 0, scope: !544, inlinedAt: !7618)
!7620 = distinct !DILocation(line: 0, scope: !528, inlinedAt: !7576)
!7621 = distinct !DILocation(line: 0, scope: !527, inlinedAt: !7576)
!7622 = distinct !DILocation(line: 1133, column: 21, scope: !527, inlinedAt: !7576)
!7623 = distinct !DILocation(line: 0, scope: !545, inlinedAt: !7622)
!7624 = distinct !DILocation(line: 0, scope: !526, inlinedAt: !7576)
!7625 = distinct !DILocation(line: 1134, column: 17, scope: !526, inlinedAt: !7576)
!7626 = distinct !DILocation(line: 0, scope: !550, inlinedAt: !7625)
!7627 = distinct !DILocation(line: 32, column: 13, scope: !550, inlinedAt: !7625)
!7628 = distinct !DILocation(line: 0, scope: !551, inlinedAt: !7627)
!7629 = distinct !DILocation(line: 515, column: 9, scope: !551, inlinedAt: !7627)
!7630 = distinct !DILocation(line: 0, scope: !553, inlinedAt: !7629)
!7631 = distinct !DILocation(line: 152, column: 26, scope: !553, inlinedAt: !7629)
!7632 = distinct !DILocation(line: 0, scope: !557, inlinedAt: !7631)
!7633 = distinct !DILocation(line: 1765, column: 18, scope: !557, inlinedAt: !7631)
!7634 = distinct !DILocation(line: 0, scope: !558, inlinedAt: !7633)
!7635 = distinct !{!7635, i1 false, !"_RNCNvNtCsdnbpgXzNiEQ_6memchr6memchr6memchr0Cs9GYDdpCSJ4S_14regex_automata"}
!7636 = distinct !{!7636, !7635, !"_RNCNvNtCsdnbpgXzNiEQ_6memchr6memchr6memchr0Cs9GYDdpCSJ4S_14regex_automata: argument 0"}
!7637 = distinct !DILocation(line: 0, scope: !552, inlinedAt: !7629)
!7638 = distinct !DILocation(line: 1134, column: 17, scope: !526, inlinedAt: !7576)
!7639 = distinct !DILocation(line: 0, scope: !565, inlinedAt: !7638)
!7640 = distinct !{!7640, !7615, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!7641 = distinct !DILocation(line: 2053, column: 18, scope: !542, inlinedAt: !7610)
!7642 = distinct !DILocation(line: 296, column: 20, scope: !568, inlinedAt: !7641)
!7643 = distinct !DILocation(line: 606, column: 14, scope: !567, inlinedAt: !7642)
!7644 = distinct !DILocation(line: 0, scope: !525, inlinedAt: !7576)
!7645 = distinct !DILocation(line: 0, scope: !522, inlinedAt: !7576)
!7646 = distinct !DILocation(line: 56, column: 23, scope: !7594, inlinedAt: !7998)
!7647 = distinct !DILocation(line: 0, scope: !537, inlinedAt: !7646)
!7648 = distinct !DILocation(line: 2962, column: 18, scope: !537, inlinedAt: !7646)
!7649 = distinct !DILocation(line: 0, scope: !540, inlinedAt: !7648)
!7650 = distinct !DILocation(line: 2980, column: 24, scope: !539, inlinedAt: !7648)
!7651 = distinct !DILocation(line: 0, scope: !541, inlinedAt: !7650)
!7652 = distinct !DILocation(line: 2983, column: 66, scope: !538, inlinedAt: !7648)
!7653 = distinct !DILocation(line: 0, scope: !542, inlinedAt: !7652)
!7654 = distinct !DILocation(line: 0, scope: !539, inlinedAt: !7648)
!7655 = distinct !DILocation(line: 2983, column: 17, scope: !538, inlinedAt: !7648)
!7656 = distinct !DILocation(line: 0, scope: !543, inlinedAt: !7655)
!7657 = distinct !{!7657, i1 false, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs9GYDdpCSJ4S_14regex_automata"}
!7658 = distinct !{!7658, !7657, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!7659 = distinct !DILocation(line: 0, scope: !538, inlinedAt: !7648)
!7660 = distinct !DILocation(line: 2983, column: 79, scope: !538, inlinedAt: !7648)
!7661 = distinct !DILocation(line: 0, scope: !544, inlinedAt: !7660)
!7662 = distinct !DILocation(line: 2053, column: 18, scope: !542, inlinedAt: !7652)
!7663 = distinct !DILocation(line: 296, column: 20, scope: !568, inlinedAt: !7662)
!7664 = distinct !DILocation(line: 606, column: 14, scope: !567, inlinedAt: !7663)
!7665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<regex_automata::util::captures::{impl#0}::interpolate_bytes_into::{closure_env#0}, regex_automata::util::captures::{impl#0}::interpolate_bytes_into::{closure_env#1}>", scope: !8075, file: !1298, align: 8, elements: !1539, identifier: "dc11191f1c351e565751659c6b97cba")
!7666 = distinct !DILexicalBlock(scope: !7667, file: !2561, line: 1228, column: 13)
!7667 = distinct !DISubprogram(name: "map_or<&u8, bool, regex_automata::util::interpolate::bytes::{closure_env#0}<regex_automata::util::captures::{impl#0}::interpolate_bytes_into::{closure_env#0}, regex_automata::util::captures::{impl#0}::interpolate_bytes_into::{closure_env#1}>>", linkageName: "_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCINvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate5bytesNCNvMNtB10_8capturesNtB1Z_8Captures22interpolate_bytes_into0NCB1W_s_0E0EB12_", scope: !536, file: !2561, line: 1222, type: !8074, scopeLine: 1222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !8077, declaration: !8078, retainedNodes: !8082)
!7668 = distinct !DILocation(line: 193, column: 31, scope: !7573)
!7669 = distinct !DILocation(line: 0, scope: !7667, inlinedAt: !7668)
!7670 = distinct !DILocation(line: 1222, column: 49, scope: !7667, inlinedAt: !7668)
!7671 = distinct !DILocation(line: 0, scope: !7666, inlinedAt: !7668)
!7672 = distinct !{!7672, i1 false, !"_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCINvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate5bytesNCNvMNtB10_8capturesNtB1Z_8Captures22interpolate_bytes_into0NCB1W_s_0E0EB12_"}
!7673 = distinct !{!7673, !7672, !"_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCINvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate5bytesNCNvMNtB10_8capturesNtB1Z_8Captures22interpolate_bytes_into0NCB1W_s_0E0EB12_: argument 0"}
!7674 = distinct !DILexicalBlock(scope: !7675, file: !3180, line: 193, column: 50)
!7675 = distinct !DISubprogram(name: "{closure#0}<regex_automata::util::captures::{impl#0}::interpolate_bytes_into::{closure_env#0}, regex_automata::util::captures::{impl#0}::interpolate_bytes_into::{closure_env#1}>", linkageName: "_RNCINvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate5bytesNCNvMNtB6_8capturesNtB15_8Captures22interpolate_bytes_into0NCB12_s_0E0B8_", scope: !8075, file: !3180, line: 193, type: !8086, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !7903, retainedNodes: !8089)
!7676 = distinct !DILocation(line: 1228, column: 24, scope: !7666, inlinedAt: !7668)
!7677 = distinct !DILocation(line: 193, column: 45, scope: !7675, inlinedAt: !7676)
!7678 = distinct !DILocation(line: 0, scope: !7675, inlinedAt: !7676)
!7679 = distinct !DILocation(line: 0, scope: !7674, inlinedAt: !7676)
!7680 = distinct !DILexicalBlock(scope: !7681, file: !3351, line: 1036, column: 13)
!7681 = distinct !DILexicalBlock(scope: !7682, file: !3351, line: 1029, column: 9)
!7682 = distinct !DISubprogram(name: "push_mut<u8, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCs9GYDdpCSJ4S_14regex_automata", scope: !71, file: !3351, line: 1027, type: !8093, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1784, declaration: !8094, retainedNodes: !8098)
!7683 = distinct !DILocation(line: 996, column: 22, scope: !7596, inlinedAt: !8006)
!7684 = distinct !DILocation(line: 0, scope: !7682, inlinedAt: !7683)
!7685 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE10as_mut_ptrCs9GYDdpCSJ4S_14regex_automata", scope: !71, file: !3351, line: 2050, type: !3411, scopeLine: 2050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1784, declaration: !3412, retainedNodes: !8100)
!7686 = distinct !DILocation(line: 1036, column: 28, scope: !7681, inlinedAt: !7683)
!7687 = distinct !DILocation(line: 0, scope: !7685, inlinedAt: !7686)
!7688 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner8capacityCs9GYDdpCSJ4S_14regex_automata", scope: !69, file: !3504, line: 615, type: !8103, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1783, declaration: !8104, retainedNodes: !8106)
!7689 = distinct !DISubprogram(name: "capacity<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8capacityCs9GYDdpCSJ4S_14regex_automata", scope: !70, file: !3504, line: 308, type: !8108, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1784, declaration: !8109, retainedNodes: !8111)
!7690 = distinct !DILocation(line: 1032, column: 28, scope: !7681, inlinedAt: !7683)
!7691 = distinct !DILocation(line: 309, column: 20, scope: !7689, inlinedAt: !7690)
!7692 = distinct !DILocation(line: 0, scope: !7688, inlinedAt: !7691)
!7693 = distinct !DILocation(line: 0, scope: !7681, inlinedAt: !7683)
!7694 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrOh3addCs9GYDdpCSJ4S_14regex_automata", scope: !2043, file: !2041, line: 936, type: !2047, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, retainedNodes: !8114)
!7695 = distinct !DILocation(line: 1036, column: 41, scope: !7681, inlinedAt: !7683)
!7696 = distinct !DILocation(line: 0, scope: !7694, inlinedAt: !7695)
!7697 = distinct !DILocation(line: 308, column: 34, scope: !7689, inlinedAt: !7690)
!7698 = distinct !{!7698, i1 false, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCs9GYDdpCSJ4S_14regex_automata"}
!7699 = distinct !{!7699, !7698, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!7700 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs9GYDdpCSJ4S_14regex_automata", scope: !69, file: !3504, line: 610, type: !3507, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !3508, declaration: !3509)
!7701 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs9GYDdpCSJ4S_14regex_automata", scope: !69, file: !3504, line: 605, type: !3511, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !3508, declaration: !3512)
!7702 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE3ptrCs9GYDdpCSJ4S_14regex_automata", scope: !70, file: !3504, line: 295, type: !3515, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1784, declaration: !3516)
!7703 = distinct !DILocation(line: 2053, column: 18, scope: !7685, inlinedAt: !7686)
!7704 = distinct !DILocation(line: 296, column: 20, scope: !7702, inlinedAt: !7703)
!7705 = distinct !DILocation(line: 606, column: 14, scope: !7701, inlinedAt: !7704)
!7706 = distinct !DILocation(line: 0, scope: !7680, inlinedAt: !7683)
!7707 = distinct !DISubprogram(name: "write<u8>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr5writehECs9GYDdpCSJ4S_14regex_automata", scope: !1634, file: !2076, line: 1940, type: !8118, scopeLine: 1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1538, retainedNodes: !8120)
!7708 = distinct !DILocation(line: 1037, column: 13, scope: !7680, inlinedAt: !7683)
!7709 = distinct !DILocation(line: 0, scope: !7707, inlinedAt: !7708)
!7710 = distinct !DILocation(line: 996, column: 22, scope: !7596, inlinedAt: !8008)
!7711 = distinct !DILocation(line: 0, scope: !7682, inlinedAt: !7710)
!7712 = distinct !DILocation(line: 1036, column: 28, scope: !7681, inlinedAt: !7710)
!7713 = distinct !DILocation(line: 0, scope: !7685, inlinedAt: !7712)
!7714 = distinct !DILocation(line: 1032, column: 28, scope: !7681, inlinedAt: !7710)
!7715 = distinct !DILocation(line: 309, column: 20, scope: !7689, inlinedAt: !7714)
!7716 = distinct !DILocation(line: 0, scope: !7688, inlinedAt: !7715)
!7717 = distinct !{!7717, i1 false, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCs9GYDdpCSJ4S_14regex_automata"}
!7718 = distinct !{!7718, !7717, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!7719 = distinct !DILocation(line: 0, scope: !7681, inlinedAt: !7710)
!7720 = distinct !DILocation(line: 1036, column: 41, scope: !7681, inlinedAt: !7710)
!7721 = distinct !DILocation(line: 0, scope: !7694, inlinedAt: !7720)
!7722 = distinct !DILocation(line: 308, column: 34, scope: !7689, inlinedAt: !7714)
!7723 = distinct !DILocation(line: 2053, column: 18, scope: !7685, inlinedAt: !7712)
!7724 = distinct !DILocation(line: 296, column: 20, scope: !7702, inlinedAt: !7723)
!7725 = distinct !DILocation(line: 606, column: 14, scope: !7701, inlinedAt: !7724)
!7726 = distinct !DILocation(line: 0, scope: !7680, inlinedAt: !7710)
!7727 = distinct !DILocation(line: 1037, column: 13, scope: !7680, inlinedAt: !7710)
!7728 = distinct !DILocation(line: 0, scope: !7707, inlinedAt: !7727)
!7729 = distinct !DILexicalBlock(scope: !7731, file: !3520, line: 889, column: 61)
!7730 = distinct !DILexicalBlock(scope: !7731, file: !3520, line: 889, column: 61)
!7731 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB4_8Captures22interpolate_bytes_intos_0B8_", scope: !3185, file: !3520, line: 889, type: !8131, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !1539, retainedNodes: !8135)
!7732 = distinct !DILocation(line: 211, column: 34, scope: !7567)
!7733 = distinct !DILocation(line: 0, scope: !7731, inlinedAt: !7732)
!7734 = distinct !DILexicalBlock(scope: !7735, file: !2561, line: 2870, column: 13)
!7735 = distinct !DISubprogram(name: "branch<regex_automata::util::primitives::PatternID>", linkageName: "_RNvXsJ_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDENtNtNtB7_3ops9try_trait3Try6branchBQ_", scope: !3486, file: !2561, line: 2868, type: !3523, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, templateParams: !3220, retainedNodes: !8138)
!7736 = distinct !DILocation(line: 889, column: 47, scope: !7731, inlinedAt: !7732)
!7737 = distinct !DILocation(line: 0, scope: !7735, inlinedAt: !7736)
!7738 = distinct !DILocation(line: 889, column: 38, scope: !7731, inlinedAt: !7732)
!7739 = distinct !DILocation(line: 0, scope: !576, inlinedAt: !7738)
!7740 = distinct !DILocation(line: 1687, column: 17, scope: !575, inlinedAt: !7738)
!7741 = distinct !DILocation(line: 0, scope: !581, inlinedAt: !7740)
!7742 = distinct !DILocation(line: 1687, column: 27, scope: !575, inlinedAt: !7738)
!7743 = distinct !DILocation(line: 2161, column: 14, scope: !588, inlinedAt: !7742)
!7744 = distinct !DILocation(line: 1158, column: 34, scope: !587, inlinedAt: !7743)
!7745 = distinct !DILocation(line: 1687, column: 36, scope: !575, inlinedAt: !7738)
!7746 = distinct !DILocation(line: 1158, column: 34, scope: !591, inlinedAt: !7745)
!7747 = distinct !DILocation(line: 1686, column: 23, scope: !3616, inlinedAt: !7738)
!7748 = distinct !DILocation(line: 3854, column: 14, scope: !593, inlinedAt: !7747)
!7749 = distinct !DILocation(line: 3855, column: 14, scope: !593, inlinedAt: !7747)
!7750 = distinct !DILocation(line: 1848, column: 27, scope: !594, inlinedAt: !7749)
!7751 = distinct !DILocation(line: 1865, column: 76, scope: !594, inlinedAt: !7749)
!7752 = distinct !DILocation(line: 1966, column: 25, scope: !595, inlinedAt: !7751)
!7753 = distinct !{!7753, i1 false, !"_RNCNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB4_8Captures22interpolate_bytes_intos_0B8_"}
end_hunk_1
