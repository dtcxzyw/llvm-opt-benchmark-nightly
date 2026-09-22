Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.07?download=true
inline.NumInlined: 524
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvNtB10_7filters4sorts1_0E0EB10_:bb.a
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !7312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7333)
    #dbg_value(ptr %0, !7334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7338)
    #dbg_value(ptr %0, !7339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7344)
    #dbg_value(ptr %0, !7345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7352)
    #dbg_value(i64 %1, !7312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7333)
    #dbg_value(i64 %1, !7334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7338)
    #dbg_value(i64 %1, !7339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7344)
    #dbg_value(i64 %1, !7345, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7352)
    #dbg_value(ptr %2, !7313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7333)
    #dbg_value(i64 %3, !7313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7333)
    #dbg_value(i1 %4, !7314, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7333)
    #dbg_value(ptr %5, !7315, !DIExpression(), !7333)
    #dbg_declare(ptr %i.b, !7320, !DIExpression(), !7353)
    #dbg_declare(ptr %i.a, !7322, !DIExpression(), !7354)
    #dbg_value(i64 4611686018427387904, !7355, !DIExpression(), !7362)
    #dbg_value(i64 64, !7365, !DIExpression(), !7369)
    #dbg_value(i64 64, !7370, !DIExpression(), !7374)
    #dbg_value(i64 %1, !7316, !DIExpression(), !7375)
    #dbg_value(i64 %1, !7363, !DIExpression(), !7376)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !7620
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !7620

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !7356, !DIExpression(), !7362)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !7621
    #dbg_value(i64 %i.d, !7357, !DIExpression(), !7377)
  %i.e = urem i64 4611686018427387904, %1, !dbg !7622
    #dbg_value(i64 %i.e, !7358, !DIExpression(), !7378)
  %.not = icmp ne i64 %i.e, 0, !dbg !7623
  %i.f = zext i1 %.not to i64, !dbg !7623
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !7623 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !7317, !DIExpression(), !7379)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !7624
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !7624

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !7625
    #dbg_value(i64 %i.h, !7318, !DIExpression(), !7380)
  br label %bb.e, !dbg !7625

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !7626
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !7627
    #dbg_value(i64 %i.j, !7366, !DIExpression(), !7369)
    #dbg_value(i64 %i.j, !7371, !DIExpression(), !7374)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !7628
    #dbg_value(i64 %i.k, !7318, !DIExpression(), !7380)
  br label %bb.e, !dbg !7629

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !7379 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !7318, !DIExpression(), !7380)
    #dbg_value(i64 0, !7319, !DIExpression(), !7381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7630
    #dbg_value(ptr %i.b, !7321, !DIExpression(), !7382)
    #dbg_value(ptr %i.b, !7383, !DIExpression(), !7387)
    #dbg_value(ptr %i.b, !7383, !DIExpression(), !7389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7631
    #dbg_value(ptr %i.a, !7323, !DIExpression(), !7390)
    #dbg_value(ptr %i.a, !7391, !DIExpression(), !7395)
    #dbg_value(ptr %i.a, !7391, !DIExpression(), !7397)
    #dbg_value(i64 0, !7324, !DIExpression(), !7398)
    #dbg_value(i64 1, !7325, !DIExpression(), !7399)
  %.not25.i122 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i127 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !7632

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !7398 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cm, %bb.y ], !dbg !7390 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ], !dbg !7380 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !7319, !DIExpression(), !7381)
    #dbg_value(i64 %.sroa.09.0, !7324, !DIExpression(), !7398)
    #dbg_value(i64 %.sroa.023.0, !7325, !DIExpression(), !7399)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !7633 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !7633

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB17_7filters4sorts1_0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bd, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB17_7filters4sorts1_0E0EB17_.exit ], [ 0, %bb.f ], !dbg !7400 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB17_7filters4sorts1_0E0EB17_.exit ], [ 1, %bb.f ], !dbg !7400 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !7326, !DIExpression(), !7400)
    #dbg_value(i8 %.sroa.021.0, !7327, !DIExpression(), !7400)
    #dbg_value(i64 %.sroa.02.0, !7319, !DIExpression(), !7381)
    #dbg_value(i64 %.sroa.023.0, !7325, !DIExpression(), !7399)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !7634
  br i1 %i.m, label %.lr.ph102, label %._crit_edge, !dbg !7634

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !7335, !DIExpression(), !7338)
    #dbg_value(i64 %.sroa.09.0, !7340, !DIExpression(), !7344)
    #dbg_value(i64 %.sroa.09.0, !7401, !DIExpression(), !7406)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !7635 ; 11 uses
    #dbg_value(i64 %i.n, !7341, !DIExpression(), !7407)
    #dbg_value(i64 %i.n, !7403, !DIExpression(), !7406)
    #dbg_value(ptr %0, !7402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7406)
    #dbg_value(i64 %1, !7402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7406)
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0, !dbg !7636 ; 9 uses
    #dbg_value(ptr %i.o, !7408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7092)
    #dbg_value(i64 %i.n, !7408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7092)
    #dbg_value(ptr %2, !7411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7092)
    #dbg_value(i64 %3, !7411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7092)
    #dbg_value(i64 %.sroa.01.0, !7412, !DIExpression(), !7092)
    #dbg_value(i64 %.sroa.01.0, !7420, !DIExpression(), !7095)
    #dbg_value(i64 %.sroa.01.0, !7423, !DIExpression(), !7098)
    #dbg_value(i1 %4, !7413, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7092)
    #dbg_value(ptr %5, !7414, !DIExpression(), !7092)
    #dbg_value(i64 %i.n, !7415, !DIExpression(), !7099)
    #dbg_value(i64 %i.n, !7421, !DIExpression(), !7101)
    #dbg_value(i64 %i.n, !7424, !DIExpression(), !7103)
    #dbg_value(i64 %i.n, !7421, !DIExpression(), !7095)
    #dbg_value(i64 %i.n, !7424, !DIExpression(), !7098)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !7637
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !7637

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread125, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !7638

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !7427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7109)
    #dbg_value(ptr %i.o, !7435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7112)
    #dbg_value(ptr %i.o, !7442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7116)
    #dbg_value(ptr %i.o, !7435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7118)
    #dbg_value(ptr %i.o, !7442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7120)
    #dbg_value(ptr %i.o, !7435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7122)
    #dbg_value(ptr %i.o, !7442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7124)
    #dbg_value(ptr %i.o, !7435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7126)
    #dbg_value(ptr %i.o, !7442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7128)
    #dbg_value(ptr %i.o, !7435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7130)
    #dbg_value(ptr %i.o, !7442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7132)
    #dbg_value(ptr %i.o, !7435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7134)
    #dbg_value(ptr %i.o, !7442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7136)
    #dbg_value(i64 %i.n, !7427, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7109)
    #dbg_value(i64 %i.n, !7435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7112)
    #dbg_value(i64 %i.n, !7442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7116)
    #dbg_value(i64 %i.n, !7435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7118)
    #dbg_value(i64 %i.n, !7442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7120)
    #dbg_value(i64 %i.n, !7435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7122)
    #dbg_value(i64 %i.n, !7442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7124)
    #dbg_value(i64 %i.n, !7435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7126)
    #dbg_value(i64 %i.n, !7442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7128)
    #dbg_value(i64 %i.n, !7435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7130)
    #dbg_value(i64 %i.n, !7442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7132)
    #dbg_value(i64 %i.n, !7435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7134)
    #dbg_value(i64 %i.n, !7442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7136)
    #dbg_value(ptr %5, !7430, !DIExpression(), !7109)
    #dbg_value(i64 1, !7438, !DIExpression(), !7112)
    #dbg_value(i64 1, !7448, !DIExpression(), !7116)
    #dbg_value(i64 0, !7438, !DIExpression(), !7118)
    #dbg_value(i64 0, !7448, !DIExpression(), !7120)
    #dbg_value(i64 %i.n, !7431, !DIExpression(), !7137)
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !7639
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value7reverseBy_.exit, label %bb.k, !dbg !7639

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !7432, !DIExpression(), !7138)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !7640
    #dbg_value(ptr %i.q, !1689, !DIExpression(), !7140)
    #dbg_value(ptr %i.o, !1692, !DIExpression(), !7140)
    #dbg_value(ptr poison, !1697, !DIExpression(), !7142)
    #dbg_value(ptr poison, !1700, !DIExpression(), !7144)
    #dbg_value(ptr %i.q, !1703, !DIExpression(), !7144)
    #dbg_value(ptr %i.o, !1704, !DIExpression(), !7144)
  %i.r = tail call noundef range(i8 -1, 2) i8 @_RNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o), !dbg !7641, !noalias !7456
    #dbg_value(ptr poison, !1698, !DIExpression(), !7148)
  %i.s = icmp ne i8 %i.r, -1, !dbg !7642          ; 2 uses
    #dbg_value(i1 %i.s, !7433, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7149)
    #dbg_value(i64 2, !7432, !DIExpression(), !7138)
    #dbg_value(i64 2, !7432, !DIExpression(), !7138)
  %.not109 = icmp eq i64 %i.n, 2, !dbg !7643      ; 2 uses
  br i1 %i.s, label %.preheader90, label %.preheader, !dbg !7644

.preheader90:                                     ; preds = %bb.k
  br i1 %.not109, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread, label %.lr.ph, !dbg !7645

.preheader:                                       ; preds = %bb.k
  br i1 %.not109, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread125, label %.lr.ph96, !dbg !7646

.lr.ph:                                           ; preds = %.preheader90, %bb.l
  %.sroa.01.0.i.i92 = phi i64 [ %i.y, %bb.l ], [ 2, %.preheader90 ] ; 4 uses
    #dbg_value(i64 %.sroa.01.0.i.i92, !7432, !DIExpression(), !7138)
    #dbg_value(i64 %.sroa.01.0.i.i92, !7439, !DIExpression(), !7130)
    #dbg_value(i64 %.sroa.01.0.i.i92, !7449, !DIExpression(), !7132)
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i92, !dbg !7647
    #dbg_value(i64 %.sroa.01.0.i.i92, !7439, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7134)
    #dbg_value(i64 %.sroa.01.0.i.i92, !7449, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7136)
  %i.u = getelementptr [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i92, !dbg !7648
  %i.v = getelementptr i8, ptr %i.u, i64 -24, !dbg !7648
    #dbg_value(ptr %i.t, !1689, !DIExpression(), !7151)
    #dbg_value(ptr %i.v, !1692, !DIExpression(), !7151)
    #dbg_value(ptr poison, !1697, !DIExpression(), !7153)
    #dbg_value(ptr poison, !1700, !DIExpression(), !7155)
    #dbg_value(ptr %i.t, !1703, !DIExpression(), !7155)
    #dbg_value(ptr %i.v, !1704, !DIExpression(), !7155)
  %i.w = tail call noundef range(i8 -1, 2) i8 @_RNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !dbg !7649, !noalias !7456
    #dbg_value(ptr poison, !1698, !DIExpression(), !7156)
  %i.x = icmp eq i8 %i.w, -1, !dbg !7650
  br i1 %i.x, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i, label %bb.l, !dbg !7651

bb.l:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.sroa.01.0.i.i92, 1, !dbg !7652 ; 2 uses
    #dbg_value(i64 %i.y, !7432, !DIExpression(), !7138)
  %exitcond.not = icmp eq i64 %i.y, %i.n, !dbg !7645
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i, label %.lr.ph, !dbg !7645

.lr.ph96:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i95 = phi i64 [ %i.ae, %bb.m ], [ 2, %.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.01.1.i.i95, !7432, !DIExpression(), !7138)
    #dbg_value(i64 %.sroa.01.1.i.i95, !7439, !DIExpression(), !7122)
    #dbg_value(i64 %.sroa.01.1.i.i95, !7449, !DIExpression(), !7124)
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i95, !dbg !7653
    #dbg_value(i64 %.sroa.01.1.i.i95, !7439, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7126)
    #dbg_value(i64 %.sroa.01.1.i.i95, !7449, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7128)
  %i.aa = getelementptr [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i95, !dbg !7654
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24, !dbg !7654
    #dbg_value(ptr %i.z, !1689, !DIExpression(), !7158)
    #dbg_value(ptr %i.ab, !1692, !DIExpression(), !7158)
    #dbg_value(ptr poison, !1697, !DIExpression(), !7160)
    #dbg_value(ptr poison, !1700, !DIExpression(), !7162)
    #dbg_value(ptr %i.z, !1703, !DIExpression(), !7162)
    #dbg_value(ptr %i.ab, !1704, !DIExpression(), !7162)
  %i.ac = tail call noundef range(i8 -1, 2) i8 @_RNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab), !dbg !7655, !noalias !7456
    #dbg_value(ptr poison, !1698, !DIExpression(), !7163)
  %i.ad = icmp eq i8 %i.ac, -1, !dbg !7656
  br i1 %i.ad, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i, !dbg !7657

bb.m:                                             ; preds = %.lr.ph96
  %i.ae = add nuw i64 %.sroa.01.1.i.i95, 1, !dbg !7658 ; 2 uses
    #dbg_value(i64 %i.ae, !7432, !DIExpression(), !7138)
  %exitcond112.not = icmp eq i64 %i.ae, %i.n, !dbg !7646
  br i1 %exitcond112.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i, label %.lr.ph96, !dbg !7646

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i: ; preds = %bb.m, %.lr.ph96, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i92, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i95, %.lr.ph96 ], [ %i.n, %bb.m ], !dbg !7659 ; 5 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !7416, !DIExpression(), !7164)
    #dbg_value(i64 %.sroa.0.0.i.i, !7457, !DIExpression(), !7167)
    #dbg_value(i1 poison, !7417, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7164)
  %i.af = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !7660
  tail call void @llvm.assume(i1 %i.af), !dbg !7661
  %.not25.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !7662
  br i1 %.not25.i, label %bb.i, label %bb.n, !dbg !7662

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread125: ; preds = %.preheader
    #dbg_value(i64 2, !7416, !DIExpression(), !7164)
    #dbg_value(i64 2, !7457, !DIExpression(), !7167)
    #dbg_value(i1 poison, !7417, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7164)
  br i1 %.not25.i127, label %bb.i, label %.lr.ph.preheader.i.i, !dbg !7662

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread: ; preds = %.preheader90
    #dbg_value(i64 2, !7416, !DIExpression(), !7164)
    #dbg_value(i64 2, !7457, !DIExpression(), !7167)
    #dbg_value(i1 poison, !7417, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7164)
  br i1 %.not25.i122, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value7reverseBy_.exit, !dbg !7662

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i
    #dbg_value(i1 %i.s, !7417, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7164)
    #dbg_value(ptr %i.o, !7459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7173)
    #dbg_value(ptr %i.o, !7468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7177)
    #dbg_value(i64 %.sroa.0.0.i.i, !7459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7173)
    #dbg_value(i64 %.sroa.0.0.i.i, !7468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7177)
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
    #dbg_value(i64 %i.ag, !7462, !DIExpression(), !7178)
    #dbg_value(ptr %i.o, !7463, !DIExpression(), !7179)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.0.i.i), !7464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7179)
    #dbg_value(ptr %i.o, !7465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7180)
    #dbg_value(i64 %i.ag, !7465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7180)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.ag, i64 %.sroa.0.0.i.i), !7466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7180)
    #dbg_value(i64 %i.ag, !7466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7180)
    #dbg_value(ptr %i.o, !7477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7186)
    #dbg_value(i64 %i.ag, !7477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7186)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.ag, i64 %.sroa.0.0.i.i), !7480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7186)
    #dbg_value(i64 %i.ag, !7480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7186)
    #dbg_value(i64 %i.ag, !7481, !DIExpression(), !7186)
    #dbg_value(ptr %i.o, !7482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7187)
    #dbg_value(i64 %i.ag, !7482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7187)
    #dbg_value(i64 0, !7484, !DIExpression(), !7188)
  %.not.i.i = icmp eq i64 %i.ag, 0
  %or.cond = or i1 %i.s, %.not.i.i, !dbg !7663
  br i1 %or.cond, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value7reverseBy_.exit, label %.lr.ph.preheader.i.i, !dbg !7663

bb.o:                                             ; preds = %bb.i
  %i.ah = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 384307168202282326) %i.n), !dbg !7664
    #dbg_value(i64 %i.ah, !7486, !DIExpression(), !7191)
  %i.ai = shl nuw nsw i64 %i.ah, 1, !dbg !7665
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB17_7filters4sorts1_0E0EB17_.exit, !dbg !7666

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !7420, !DIExpression(), !7101)
    #dbg_value(i64 32, !7423, !DIExpression(), !7103)
    #dbg_value(i64 poison, !7418, !DIExpression(), !7192)
    #dbg_value(i64 poison, !7457, !DIExpression(), !7194)
  %i.aj = tail call i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32), !dbg !7667 ; 2 uses
    #dbg_value(i64 %i.aj, !7418, !DIExpression(), !7192)
    #dbg_value(i64 %i.aj, !7457, !DIExpression(), !7194)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtB19_7filters4sorts1_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.aj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !7668, !inline_history !7195
  %i.ak = shl nuw nsw i64 %i.aj, 1, !dbg !7669
  %i.al = or disjoint i64 %i.ak, 1, !dbg !7669
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB17_7filters4sorts1_0E0EB17_.exit, !dbg !7666

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value7reverseBy_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5yXxDE1DkoT_4tera5value5ValueEB14_.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i8689 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread ], [ %.sroa.0.0.i.i123130134, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5yXxDE1DkoT_4tera5value5ValueEB14_.exit.i.i ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i8689, 1, !dbg !7670
  %i.an = or disjoint i64 %i.am, 1, !dbg !7670
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB17_7filters4sorts1_0E0EB17_.exit, !dbg !7671

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread125
  %i.ao = phi i64 [ %i.ag, %bb.n ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread125 ]
  %.sroa.0.0.i.i123130134 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB16_7filters4sorts1_0E0EB16_.exit.i.thread125 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i123130134, !dbg !7672
    #dbg_value(ptr %i.ap, !7464, !DIExpression(), !7179)
    #dbg_value(!DIArgList(ptr %i.ap, i64 0, i64 %i.ao), !7466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7180)
    #dbg_value(!DIArgList(ptr %i.ap, i64 0, i64 %i.ao), !7480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7186)
  br label %.lr.ph.i.i, !dbg !7673

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5yXxDE1DkoT_4tera5value5ValueEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.027.i.i = phi i64 [ %i.au, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5yXxDE1DkoT_4tera5value5ValueEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.027.i.i, !7484, !DIExpression(), !7188)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.027.i.i), !7512, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7210)
  %i.aq = xor i64 %.sroa.0.027.i.i, -1, !dbg !7674
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.027.i.i, !dbg !7675
    #dbg_value(ptr %i.ar, !7512, !DIExpression(), !7210)
  %i.as = getelementptr [24 x i8], ptr %i.ap, i64 %i.aq, !dbg !7676
    #dbg_value(ptr %i.as, !7513, !DIExpression(), !7210)
    #dbg_value(ptr %i.ar, !7506, !DIExpression(), !7211)
    #dbg_value(ptr %i.as, !7507, !DIExpression(), !7211)
    #dbg_value(ptr %i.ar, !7500, !DIExpression(), !7212)
    #dbg_value(ptr %i.ar, !7490, !DIExpression(), !7213)
    #dbg_value(ptr %i.as, !7501, !DIExpression(), !7212)
    #dbg_value(ptr %i.as, !7491, !DIExpression(), !7213)
    #dbg_value(i64 1, !7502, !DIExpression(), !7212)
    #dbg_value(i64 1, !7492, !DIExpression(), !7213)
    #dbg_value(ptr %i.ar, !7493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7214)
    #dbg_value(i64 1, !7493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7214)
    #dbg_value(i64 24, !7494, !DIExpression(), !7215)
    #dbg_value(i64 24, !7495, !DIExpression(), !7216)
    #dbg_value(ptr %i.ar, !2054, !DIExpression(), !7217)
    #dbg_value(ptr %i.as, !2055, !DIExpression(), !7217)
    #dbg_value(i64 24, !2056, !DIExpression(), !7217)
    #dbg_value(i64 24, !2057, !DIExpression(), !7218)
    #dbg_value(i64 0, !2059, !DIExpression(), !7219)
    #dbg_value(i64 3, !2058, !DIExpression(), !7220)
    #dbg_value(i64 3, !2060, !DIExpression(), !7221)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5yXxDE1DkoT_4tera5value5ValueEB14_.exit.i.i unwind label %bb.q, !dbg !7673, !noalias !7456

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #18, !dbg !7677, !noalias !7456
  unreachable, !dbg !7677

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5yXxDE1DkoT_4tera5value5ValueEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.au = add nuw nsw i64 %.sroa.0.027.i.i, 1, !dbg !7678 ; 2 uses
    #dbg_value(i64 %i.au, !7484, !DIExpression(), !7188)
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ao, !dbg !7679
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value7reverseBy_.exit, label %.lr.ph.i.i, !dbg !7679

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB17_7filters4sorts1_0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value7reverseBy_.exit
  %.sroa.0.0.i81 = phi i64 [ %i.an, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value7reverseBy_.exit ], [ %i.al, %bb.p ], [ %i.ai, %bb.o ], !dbg !7680 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !7326, !DIExpression(), !7400)
    #dbg_value(i64 %.sroa.023.0, !7515, !DIExpression(), !7518)
  %i.av = lshr i64 %.sroa.023.0, 1, !dbg !7681
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.av), !7519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7527)
    #dbg_value(i64 %.sroa.09.0, !7520, !DIExpression(), !7527)
    #dbg_value(i64 %.sroa.0.0.i81, !7515, !DIExpression(), !7529)
  %i.aw = lshr i64 %.sroa.0.0.i81, 1, !dbg !7682
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.aw), !7521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7527)
    #dbg_value(i64 %.sroa.0.0, !7522, !DIExpression(), !7527)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !7683 ; 2 uses
  %i.ax = sub nsw i64 %factor, %i.av, !dbg !7683
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.av), !7523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !7530)
  %i.ay = add nuw nsw i64 %i.aw, %factor, !dbg !7684
    #dbg_value(i64 %i.ay, !7524, !DIExpression(), !7531)
  %i.az = mul i64 %i.ax, %.sroa.0.0, !dbg !7685
  %i.ba = mul i64 %i.ay, %.sroa.0.0, !dbg !7686
  %i.bb = xor i64 %i.ba, %i.az, !dbg !7687
    #dbg_value(i64 %i.bb, !7532, !DIExpression(), !7535)
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false), !dbg !7688
  %i.bd = trunc nuw nsw i64 %i.bc to i8, !dbg !7687
    #dbg_value(i8 %i.bd, !7327, !DIExpression(), !7400)
  br label %bb.g, !dbg !7689

.lr.ph102:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit
  %.sroa.02.1101 = phi i64 [ %i.be, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1100 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1101, !7319, !DIExpression(), !7381)
    #dbg_value(i64 %.sroa.023.1100, !7325, !DIExpression(), !7399)
  %i.be = add i64 %.sroa.02.1101, -1, !dbg !7690  ; 4 uses
    #dbg_value(i64 %i.be, !7392, !DIExpression(), !7395)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be, !dbg !7691
  %i.bg = load i8, ptr %i.bf, align 1, !dbg !7692, !noundef !558
  %.not77 = icmp ult i8 %i.bg, %.sroa.021.0, !dbg !7692
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !7692

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit, %.lr.ph102, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1100, %.lr.ph102 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit ], !dbg !7398 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1101, %.lr.ph102 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit ], !dbg !7380 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !7384, !DIExpression(), !7389)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !7693
  store i64 %.sroa.023.1.lcssa, ptr %i.bh, align 8, !dbg !7694
    #dbg_value(i64 %.sroa.02.1.lcssa, !7392, !DIExpression(), !7397)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !7695
  store i8 %.sroa.021.0, ptr %i.bi, align 1, !dbg !7696
    #dbg_value(i64 %.sroa.02.1.lcssa, !7319, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7381)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !7697

bb.r:                                             ; preds = %.lr.ph102
    #dbg_value(i64 %i.be, !7384, !DIExpression(), !7387)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be, !dbg !7698
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !7699, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.bk, !7328, !DIExpression(), !7536)
    #dbg_value(i64 %i.bk, !7515, !DIExpression(), !7538)
  %i.bl = lshr i64 %i.bk, 1, !dbg !7700           ; 5 uses
    #dbg_value(i64 %.sroa.023.1100, !7515, !DIExpression(), !7540)
  %i.bm = lshr i64 %.sroa.023.1100, 1, !dbg !7701 ; 3 uses
  %i.bn = add nuw i64 %i.bl, %i.bm, !dbg !7702    ; 5 uses
    #dbg_value(i64 %i.bn, !7329, !DIExpression(), !7541)
  %i.bo = sub i64 %.sroa.09.0, %i.bn, !dbg !7703
    #dbg_value(i64 %i.bo, !7330, !DIExpression(), !7542)
    #dbg_value(i64 %i.bo, !7348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7352)
    #dbg_value(i64 %i.bo, !7543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7550)
    #dbg_value(i64 %i.bo, !7401, !DIExpression(), !7552)
    #dbg_value(i64 %.sroa.09.0, !7348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7352)
    #dbg_value(i64 %.sroa.09.0, !7543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7550)
    #dbg_value(ptr %0, !7546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7550)
    #dbg_value(ptr %0, !7402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7552)
    #dbg_value(i64 %1, !7546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7550)
    #dbg_value(i64 %1, !7402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7552)
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera:bb.a
  %.not25.i135 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i140 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !8372

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !8133 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cy, %bb.y ], !dbg !8125 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cw, %bb.y ], !dbg !8115 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !8054, !DIExpression(), !8116)
    #dbg_value(i64 %.sroa.09.0, !8059, !DIExpression(), !8133)
    #dbg_value(i64 %.sroa.023.0, !8060, !DIExpression(), !8134)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !8373 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !8373

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ 0, %bb.f ], !dbg !8135 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ 1, %bb.f ], !dbg !8135 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !8061, !DIExpression(), !8135)
    #dbg_value(i8 %.sroa.021.0, !8062, !DIExpression(), !8135)
    #dbg_value(i64 %.sroa.02.0, !8054, !DIExpression(), !8116)
    #dbg_value(i64 %.sroa.023.0, !8060, !DIExpression(), !8134)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !8374
  br i1 %i.m, label %.lr.ph106, label %._crit_edge, !dbg !8374

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !8070, !DIExpression(), !8073)
    #dbg_value(i64 %.sroa.09.0, !8075, !DIExpression(), !8079)
    #dbg_value(i64 %.sroa.09.0, !8136, !DIExpression(), !8141)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !8375 ; 11 uses
    #dbg_value(i64 %i.n, !8076, !DIExpression(), !8142)
    #dbg_value(i64 %i.n, !8138, !DIExpression(), !8141)
    #dbg_value(ptr %0, !8137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8141)
    #dbg_value(i64 %1, !8137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8141)
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0, !dbg !8376 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8143), !dbg !8377
    #dbg_value(ptr %i.o, !8144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7774)
    #dbg_value(i64 %i.n, !8144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7774)
    #dbg_value(ptr %2, !8147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7774)
    #dbg_value(i64 %3, !8147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7774)
    #dbg_value(i64 %.sroa.01.0, !8148, !DIExpression(), !7774)
    #dbg_value(i64 %.sroa.01.0, !8156, !DIExpression(), !7777)
    #dbg_value(i64 %.sroa.01.0, !8159, !DIExpression(), !7780)
    #dbg_value(i1 %4, !8149, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7774)
    #dbg_value(ptr %5, !8150, !DIExpression(), !7774)
    #dbg_value(i64 %i.n, !8151, !DIExpression(), !7781)
    #dbg_value(i64 %i.n, !8157, !DIExpression(), !7783)
    #dbg_value(i64 %i.n, !8160, !DIExpression(), !7785)
    #dbg_value(i64 %i.n, !8157, !DIExpression(), !7777)
    #dbg_value(i64 %i.n, !8160, !DIExpression(), !7780)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !8378
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !8378

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread138, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !8379

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !8163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7791)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7794)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7798)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7800)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7802)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7804)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7806)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7808)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7810)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7812)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7814)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7816)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7818)
    #dbg_value(i64 %i.n, !8163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7791)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7794)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7798)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7800)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7802)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7804)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7806)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7808)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7810)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7812)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7814)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7816)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7818)
    #dbg_value(ptr %5, !8166, !DIExpression(), !7791)
    #dbg_value(i64 1, !8174, !DIExpression(), !7794)
    #dbg_value(i64 1, !8184, !DIExpression(), !7798)
    #dbg_value(i64 0, !8174, !DIExpression(), !7800)
    #dbg_value(i64 0, !8184, !DIExpression(), !7802)
    #dbg_value(i64 %i.n, !8167, !DIExpression(), !7819)
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !8380
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, label %bb.k, !dbg !8380

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !8168, !DIExpression(), !7820)
  %i.q = getelementptr i8, ptr %i.o, i64 32, !dbg !8381
  %.val33.i = load ptr, ptr %i.q, align 8, !dbg !8381, !alias.scope !8143, !noalias !8192, !nonnull !558, !noundef !558 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 40, !dbg !8381
  %.val34.i = load i64, ptr %i.r, align 8, !dbg !8381, !alias.scope !8143, !noalias !8192, !noundef !558 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8, !dbg !8381
  %.val35.i = load ptr, ptr %i.s, align 8, !dbg !8381, !alias.scope !8143, !noalias !8192, !nonnull !558, !noundef !558
  %i.t = getelementptr i8, ptr %i.o, i64 16, !dbg !8381
  %.val36.i = load i64, ptr %i.t, align 8, !dbg !8381, !alias.scope !8143, !noalias !8192, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7824)
    #dbg_value(ptr poison, !627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7824)
    #dbg_value(ptr poison, !636, !DIExpression(), !7824)
    #dbg_value(ptr poison, !643, !DIExpression(), !7826)
    #dbg_value(ptr poison, !646, !DIExpression(), !7826)
    #dbg_declare(ptr poison, !655, !DIExpression(), !7828)
    #dbg_value(ptr poison, !675, !DIExpression(), !7830)
    #dbg_value(ptr poison, !681, !DIExpression(), !7832)
    #dbg_value(ptr poison, !679, !DIExpression(), !7830)
    #dbg_value(ptr poison, !685, !DIExpression(), !7832)
    #dbg_value(ptr poison, !689, !DIExpression(), !7834)
    #dbg_value(ptr poison, !693, !DIExpression(), !7834)
    #dbg_value(ptr %.val33.i, !696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7836)
    #dbg_value(i64 %.val34.i, !696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(ptr %.val35.i, !707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7836)
    #dbg_value(i64 %.val36.i, !707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(ptr %.val33.i, !709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7838)
    #dbg_value(i64 %.val34.i, !709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7838)
    #dbg_value(ptr %.val35.i, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7838)
    #dbg_value(i64 %.val36.i, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7838)
    #dbg_value(i64 %.val34.i, !714, !DIExpression(), !7839)
  %i.u = sub nsw i64 %.val34.i, %.val36.i, !dbg !8382
    #dbg_value(i64 %i.u, !713, !DIExpression(), !7840)
  %spec.store.select.i.i.i.i.i84 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val34.i, i64 range(i64 0, -9223372036854775808) %.val36.i), !dbg !8383
    #dbg_value(i64 %spec.store.select.i.i.i.i.i84, !714, !DIExpression(), !7839)
    #dbg_value(ptr %.val33.i, !715, !DIExpression(), !7841)
    #dbg_value(ptr %.val35.i, !716, !DIExpression(), !7842)
  %i.v = tail call i32 @memcmp(ptr nonnull readonly %.val33.i, ptr nonnull readonly %.val35.i, i64 %spec.store.select.i.i.i.i.i84), !dbg !8384, !alias.scope !8193, !noalias !8194 ; 2 uses
  %i.w = sext i32 %i.v to i64, !dbg !8384
    #dbg_value(i64 %i.w, !717, !DIExpression(), !7846)
  %i.x = icmp eq i32 %i.v, 0, !dbg !8385
  %spec.store.select1.i.i.i.i.i85 = select i1 %i.x, i64 %i.u, i64 %i.w, !dbg !8385
    #dbg_value(i64 %spec.store.select1.i.i.i.i.i85, !717, !DIExpression(), !7846)
    #dbg_value(i8 poison, !671, !DIExpression(), !7847)
  %i.y = icmp sgt i64 %spec.store.select1.i.i.i.i.i85, -1, !dbg !8386 ; 2 uses
    #dbg_value(i1 %i.y, !8169, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7848)
    #dbg_value(i64 2, !8168, !DIExpression(), !7820)
    #dbg_value(i64 2, !8168, !DIExpression(), !7820)
  %.not113 = icmp eq i64 %i.n, 2, !dbg !8387      ; 2 uses
  br i1 %i.y, label %.preheader94, label %.preheader, !dbg !8388

.preheader94:                                     ; preds = %bb.k
  br i1 %.not113, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread, label %.lr.ph, !dbg !8389

.preheader:                                       ; preds = %bb.k
  br i1 %.not113, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread138, label %.lr.ph100, !dbg !8390

.lr.ph:                                           ; preds = %.preheader94, %bb.l
  %.val32.i = phi i64 [ %.val30.i, %bb.l ], [ %.val34.i, %.preheader94 ], !dbg !8391 ; 2 uses
  %.val31.i = phi ptr [ %.val29.i, %bb.l ], [ %.val33.i, %.preheader94 ], !dbg !8391
  %.sroa.01.0.i.i96 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader94 ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i96, !8168, !DIExpression(), !7820)
    #dbg_value(i64 %.sroa.01.0.i.i96, !8175, !DIExpression(), !7812)
    #dbg_value(i64 %.sroa.01.0.i.i96, !8185, !DIExpression(), !7814)
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i96, !dbg !8392 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i.i96, !8175, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7816)
    #dbg_value(i64 %.sroa.01.0.i.i96, !8185, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7818)
  %i.aa = getelementptr i8, ptr %i.z, i64 8, !dbg !8391
  %.val29.i = load ptr, ptr %i.aa, align 8, !dbg !8391, !alias.scope !8143, !noalias !8192, !nonnull !558, !noundef !558 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16, !dbg !8391
  %.val30.i = load i64, ptr %i.ab, align 8, !dbg !8391, !alias.scope !8143, !noalias !8192, !noundef !558 ; 3 uses
    #dbg_value(ptr poison, !627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7850)
    #dbg_value(ptr poison, !627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7850)
    #dbg_value(ptr poison, !636, !DIExpression(), !7850)
    #dbg_value(ptr poison, !643, !DIExpression(), !7852)
    #dbg_value(ptr poison, !646, !DIExpression(), !7852)
    #dbg_declare(ptr poison, !655, !DIExpression(), !7854)
    #dbg_value(ptr poison, !675, !DIExpression(), !7856)
    #dbg_value(ptr poison, !681, !DIExpression(), !7858)
    #dbg_value(ptr poison, !679, !DIExpression(), !7856)
    #dbg_value(ptr poison, !685, !DIExpression(), !7858)
    #dbg_value(ptr poison, !689, !DIExpression(), !7860)
    #dbg_value(ptr poison, !693, !DIExpression(), !7860)
    #dbg_value(ptr %.val29.i, !696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7862)
    #dbg_value(i64 %.val30.i, !696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7862)
    #dbg_value(ptr %.val31.i, !707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7862)
    #dbg_value(i64 %.val32.i, !707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7862)
    #dbg_value(ptr %.val29.i, !709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7864)
    #dbg_value(i64 %.val30.i, !709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7864)
    #dbg_value(ptr %.val31.i, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7864)
    #dbg_value(i64 %.val32.i, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7864)
    #dbg_value(i64 %.val30.i, !714, !DIExpression(), !7865)
  %i.ac = sub nsw i64 %.val30.i, %.val32.i, !dbg !8393
    #dbg_value(i64 %i.ac, !713, !DIExpression(), !7866)
  %spec.store.select.i.i.i.i.i82 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val30.i, i64 range(i64 0, -9223372036854775808) %.val32.i), !dbg !8394
    #dbg_value(i64 %spec.store.select.i.i.i.i.i82, !714, !DIExpression(), !7865)
    #dbg_value(ptr %.val29.i, !715, !DIExpression(), !7867)
    #dbg_value(ptr %.val31.i, !716, !DIExpression(), !7868)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.val29.i, ptr nonnull readonly %.val31.i, i64 %spec.store.select.i.i.i.i.i82), !dbg !8395, !alias.scope !8195, !noalias !8194 ; 2 uses
  %i.ae = sext i32 %i.ad to i64, !dbg !8395
    #dbg_value(i64 %i.ae, !717, !DIExpression(), !7872)
  %i.af = icmp eq i32 %i.ad, 0, !dbg !8396
  %spec.store.select1.i.i.i.i.i83 = select i1 %i.af, i64 %i.ac, i64 %i.ae, !dbg !8396
    #dbg_value(i64 %spec.store.select1.i.i.i.i.i83, !717, !DIExpression(), !7872)
    #dbg_value(i8 poison, !671, !DIExpression(), !7873)
  %i.ag = icmp slt i64 %spec.store.select1.i.i.i.i.i83, 0, !dbg !8397
  br i1 %i.ag, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, label %bb.l, !dbg !8391

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i96, 1, !dbg !8398 ; 2 uses
    #dbg_value(i64 %i.ah, !8168, !DIExpression(), !7820)
  %exitcond.not = icmp eq i64 %i.ah, %i.n, !dbg !8389
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, label %.lr.ph, !dbg !8389

.lr.ph100:                                        ; preds = %.preheader, %bb.m
  %.val28.i = phi i64 [ %.val26.i, %bb.m ], [ %.val34.i, %.preheader ], !dbg !8399 ; 2 uses
  %.val27.i = phi ptr [ %.val.i, %bb.m ], [ %.val33.i, %.preheader ], !dbg !8399
  %.sroa.01.1.i.i99 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i99, !8168, !DIExpression(), !7820)
    #dbg_value(i64 %.sroa.01.1.i.i99, !8175, !DIExpression(), !7804)
    #dbg_value(i64 %.sroa.01.1.i.i99, !8185, !DIExpression(), !7806)
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i99, !dbg !8400 ; 2 uses
    #dbg_value(i64 %.sroa.01.1.i.i99, !8175, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7808)
    #dbg_value(i64 %.sroa.01.1.i.i99, !8185, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7810)
  %i.aj = getelementptr i8, ptr %i.ai, i64 8, !dbg !8399
  %.val.i = load ptr, ptr %i.aj, align 8, !dbg !8399, !alias.scope !8143, !noalias !8192, !nonnull !558, !noundef !558 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16, !dbg !8399
  %.val26.i = load i64, ptr %i.ak, align 8, !dbg !8399, !alias.scope !8143, !noalias !8192, !noundef !558 ; 3 uses
    #dbg_value(ptr poison, !627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7875)
    #dbg_value(ptr poison, !627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7875)
    #dbg_value(ptr poison, !636, !DIExpression(), !7875)
    #dbg_value(ptr poison, !643, !DIExpression(), !7877)
    #dbg_value(ptr poison, !646, !DIExpression(), !7877)
    #dbg_declare(ptr poison, !655, !DIExpression(), !7879)
    #dbg_value(ptr poison, !675, !DIExpression(), !7881)
    #dbg_value(ptr poison, !681, !DIExpression(), !7883)
    #dbg_value(ptr poison, !679, !DIExpression(), !7881)
    #dbg_value(ptr poison, !685, !DIExpression(), !7883)
    #dbg_value(ptr poison, !689, !DIExpression(), !7885)
    #dbg_value(ptr poison, !693, !DIExpression(), !7885)
    #dbg_value(ptr %.val.i, !696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7887)
    #dbg_value(i64 %.val26.i, !696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7887)
    #dbg_value(ptr %.val27.i, !707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7887)
    #dbg_value(i64 %.val28.i, !707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7887)
    #dbg_value(ptr %.val.i, !709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7889)
    #dbg_value(i64 %.val26.i, !709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7889)
    #dbg_value(ptr %.val27.i, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7889)
    #dbg_value(i64 %.val28.i, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7889)
    #dbg_value(i64 %.val26.i, !714, !DIExpression(), !7890)
  %i.al = sub nsw i64 %.val26.i, %.val28.i, !dbg !8401
    #dbg_value(i64 %i.al, !713, !DIExpression(), !7891)
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val26.i, i64 range(i64 0, -9223372036854775808) %.val28.i), !dbg !8402
    #dbg_value(i64 %spec.store.select.i.i.i.i.i, !714, !DIExpression(), !7890)
    #dbg_value(ptr %.val.i, !715, !DIExpression(), !7892)
    #dbg_value(ptr %.val27.i, !716, !DIExpression(), !7893)
  %i.am = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val27.i, i64 %spec.store.select.i.i.i.i.i), !dbg !8403, !alias.scope !8196, !noalias !8194 ; 2 uses
  %i.an = sext i32 %i.am to i64, !dbg !8403
    #dbg_value(i64 %i.an, !717, !DIExpression(), !7897)
  %i.ao = icmp eq i32 %i.am, 0, !dbg !8404
  %spec.store.select1.i.i.i.i.i = select i1 %i.ao, i64 %i.al, i64 %i.an, !dbg !8404
    #dbg_value(i64 %spec.store.select1.i.i.i.i.i, !717, !DIExpression(), !7897)
    #dbg_value(i8 poison, !671, !DIExpression(), !7898)
  %i.ap = icmp slt i64 %spec.store.select1.i.i.i.i.i, 0, !dbg !8405
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, !dbg !8399

bb.m:                                             ; preds = %.lr.ph100
  %i.aq = add nuw i64 %.sroa.01.1.i.i99, 1, !dbg !8406 ; 2 uses
    #dbg_value(i64 %i.aq, !8168, !DIExpression(), !7820)
  %exitcond116.not = icmp eq i64 %i.aq, %i.n, !dbg !8390
  br i1 %exitcond116.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, label %.lr.ph100, !dbg !8390

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.m, %.lr.ph100, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i96, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i99, %.lr.ph100 ], [ %i.n, %bb.m ], !dbg !8407 ; 5 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !8152, !DIExpression(), !7899)
    #dbg_value(i64 %.sroa.0.0.i.i, !8197, !DIExpression(), !7902)
    #dbg_value(i1 poison, !8153, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7899)
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !8408
  tail call void @llvm.assume(i1 %i.ar), !dbg !8409
  %.not25.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !8410
  br i1 %.not25.i, label %bb.i, label %bb.n, !dbg !8410

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread138: ; preds = %.preheader
    #dbg_value(i64 2, !8152, !DIExpression(), !7899)
    #dbg_value(i64 2, !8197, !DIExpression(), !7902)
    #dbg_value(i1 poison, !8153, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7899)
  br i1 %.not25.i140, label %bb.i, label %.lr.ph.preheader.i.i, !dbg !8410

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread: ; preds = %.preheader94
    #dbg_value(i64 2, !8152, !DIExpression(), !7899)
    #dbg_value(i64 2, !8197, !DIExpression(), !7902)
    #dbg_value(i1 poison, !8153, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7899)
  br i1 %.not25.i135, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, !dbg !8410

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i
    #dbg_value(i1 %i.y, !8153, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7899)
    #dbg_value(ptr %i.o, !8199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7908)
    #dbg_value(ptr %i.o, !8208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7912)
    #dbg_value(i64 %.sroa.0.0.i.i, !8199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7908)
    #dbg_value(i64 %.sroa.0.0.i.i, !8208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7912)
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
    #dbg_value(i64 %i.as, !8202, !DIExpression(), !7913)
    #dbg_value(ptr %i.o, !8203, !DIExpression(), !7914)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.0.i.i), !8204, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7914)
    #dbg_value(ptr %i.o, !8205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7915)
    #dbg_value(i64 %i.as, !8205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7915)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.as, i64 %.sroa.0.0.i.i), !8206, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7915)
    #dbg_value(i64 %i.as, !8206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7915)
    #dbg_value(ptr %i.o, !8217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7921)
    #dbg_value(i64 %i.as, !8217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7921)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.as, i64 %.sroa.0.0.i.i), !8220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7921)
    #dbg_value(i64 %i.as, !8220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7921)
    #dbg_value(i64 %i.as, !8221, !DIExpression(), !7921)
    #dbg_value(ptr %i.o, !8222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7922)
    #dbg_value(i64 %i.as, !8222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7922)
    #dbg_value(i64 0, !8224, !DIExpression(), !7923)
  %.not.i.i = icmp eq i64 %i.as, 0
  %or.cond = or i1 %i.y, %.not.i.i, !dbg !8411
  br i1 %or.cond, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, label %.lr.ph.preheader.i.i, !dbg !8411

bb.o:                                             ; preds = %bb.i
  %i.at = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 384307168202282326) %i.n), !dbg !8412
    #dbg_value(i64 %i.at, !8226, !DIExpression(), !7926)
  %i.au = shl nuw nsw i64 %i.at, 1, !dbg !8413
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, !dbg !8414

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !8156, !DIExpression(), !7783)
    #dbg_value(i64 32, !8159, !DIExpression(), !7785)
    #dbg_value(i64 poison, !8154, !DIExpression(), !7927)
    #dbg_value(i64 poison, !8197, !DIExpression(), !7929)
  %i.av = tail call i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32), !dbg !8415 ; 2 uses
    #dbg_value(i64 %i.av, !8154, !DIExpression(), !7927)
    #dbg_value(i64 %i.av, !8197, !DIExpression(), !7929)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.av, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !8416, !inline_history !7930
  %i.aw = shl nuw nsw i64 %i.av, 1, !dbg !8417
  %i.ax = or disjoint i64 %i.aw, 1, !dbg !8417
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, !dbg !8414

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i9093 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread ], [ %.sroa.0.0.i.i136143147, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i.i9093, 1, !dbg !8418
  %i.az = or disjoint i64 %i.ay, 1, !dbg !8418
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, !dbg !8419

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread138
  %i.ba = phi i64 [ %i.as, %bb.n ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread138 ]
  %.sroa.0.0.i.i136143147 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread138 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i136143147, !dbg !8420
    #dbg_value(ptr %i.bb, !8204, !DIExpression(), !7914)
    #dbg_value(!DIArgList(ptr %i.bb, i64 0, i64 %i.ba), !8206, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7915)
    #dbg_value(!DIArgList(ptr %i.bb, i64 0, i64 %i.ba), !8220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7921)
  br label %.lr.ph.i.i, !dbg !8421

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.027.i.i = phi i64 [ %i.bg, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.027.i.i, !8224, !DIExpression(), !7923)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.027.i.i), !8252, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7945)
  %i.bc = xor i64 %.sroa.0.027.i.i, -1, !dbg !8422
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.027.i.i, !dbg !8423
    #dbg_value(ptr %i.bd, !8252, !DIExpression(), !7945)
  %i.be = getelementptr [24 x i8], ptr %i.bb, i64 %i.bc, !dbg !8424
    #dbg_value(ptr %i.be, !8253, !DIExpression(), !7945)
    #dbg_value(ptr %i.bd, !8246, !DIExpression(), !7946)
    #dbg_value(ptr %i.be, !8247, !DIExpression(), !7946)
    #dbg_value(ptr %i.bd, !8240, !DIExpression(), !7947)
    #dbg_value(ptr %i.bd, !8230, !DIExpression(), !7948)
    #dbg_value(ptr %i.be, !8241, !DIExpression(), !7947)
    #dbg_value(ptr %i.be, !8231, !DIExpression(), !7948)
    #dbg_value(i64 1, !8242, !DIExpression(), !7947)
    #dbg_value(i64 1, !8232, !DIExpression(), !7948)
    #dbg_value(ptr %i.bd, !8233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7949)
    #dbg_value(i64 1, !8233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7949)
    #dbg_value(i64 24, !8234, !DIExpression(), !7950)
    #dbg_value(i64 24, !8235, !DIExpression(), !7951)
    #dbg_value(ptr %i.bd, !2054, !DIExpression(), !7952)
    #dbg_value(ptr %i.be, !2055, !DIExpression(), !7952)
    #dbg_value(i64 24, !2056, !DIExpression(), !7952)
    #dbg_value(i64 24, !2057, !DIExpression(), !7953)
    #dbg_value(i64 0, !2059, !DIExpression(), !7954)
    #dbg_value(i64 3, !2058, !DIExpression(), !7955)
    #dbg_value(i64 3, !2060, !DIExpression(), !7956)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.q, !dbg !8421, !noalias !8192

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #18, !dbg !8425, !noalias !8192
  unreachable, !dbg !8425

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bg = add nuw nsw i64 %.sroa.0.027.i.i, 1, !dbg !8426 ; 2 uses
    #dbg_value(i64 %i.bg, !8224, !DIExpression(), !7923)
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.ba, !dbg !8427
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, label %.lr.ph.i.i, !dbg !8427

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.i81 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ], !dbg !8428 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !8061, !DIExpression(), !8135)
    #dbg_value(i64 %.sroa.023.0, !8255, !DIExpression(), !8258)
  %i.bh = lshr i64 %.sroa.023.0, 1, !dbg !8429
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bh), !8259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8267)
    #dbg_value(i64 %.sroa.09.0, !8260, !DIExpression(), !8267)
    #dbg_value(i64 %.sroa.0.0.i81, !8255, !DIExpression(), !8269)
  %i.bi = lshr i64 %.sroa.0.0.i81, 1, !dbg !8430
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bi), !8261, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8267)
    #dbg_value(i64 %.sroa.0.0, !8262, !DIExpression(), !8267)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !8431 ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh, !dbg !8431
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bh), !8263, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !8270)
  %i.bk = add nuw nsw i64 %i.bi, %factor, !dbg !8432
    #dbg_value(i64 %i.bk, !8264, !DIExpression(), !8271)
  %i.bl = mul i64 %i.bj, %.sroa.0.0, !dbg !8433
  %i.bm = mul i64 %i.bk, %.sroa.0.0, !dbg !8434
  %i.bn = xor i64 %i.bm, %i.bl, !dbg !8435
    #dbg_value(i64 %i.bn, !8272, !DIExpression(), !8275)
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false), !dbg !8436
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !8435
    #dbg_value(i8 %i.bp, !8062, !DIExpression(), !8135)
  br label %bb.g, !dbg !8437

.lr.ph106:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit
  %.sroa.02.1105 = phi i64 [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1104 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1105, !8054, !DIExpression(), !8116)
    #dbg_value(i64 %.sroa.023.1104, !8060, !DIExpression(), !8134)
  %i.bq = add i64 %.sroa.02.1105, -1, !dbg !8438  ; 4 uses
    #dbg_value(i64 %i.bq, !8127, !DIExpression(), !8130)
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq, !dbg !8439
  %i.bs = load i8, ptr %i.br, align 1, !dbg !8440, !noundef !558
  %.not77 = icmp ult i8 %i.bs, %.sroa.021.0, !dbg !8440
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !8440

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, %.lr.ph106, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1104, %.lr.ph106 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], !dbg !8133 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1105, %.lr.ph106 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], !dbg !8115 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !8119, !DIExpression(), !8124)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !8441
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8, !dbg !8442
    #dbg_value(i64 %.sroa.02.1.lcssa, !8127, !DIExpression(), !8132)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !8443
  store i8 %.sroa.021.0, ptr %i.bu, align 1, !dbg !8444
    #dbg_value(i64 %.sroa.02.1.lcssa, !8054, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8116)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !8445

bb.r:                                             ; preds = %.lr.ph106
    #dbg_value(i64 %i.bq, !8119, !DIExpression(), !8122)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq, !dbg !8446
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !8447, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.bw, !8063, !DIExpression(), !8276)
    #dbg_value(i64 %i.bw, !8255, !DIExpression(), !8278)
  %i.bx = lshr i64 %i.bw, 1, !dbg !8448           ; 5 uses
    #dbg_value(i64 %.sroa.023.1104, !8255, !DIExpression(), !8280)
  %i.by = lshr i64 %.sroa.023.1104, 1, !dbg !8449 ; 3 uses
  %i.bz = add nuw i64 %i.bx, %i.by, !dbg !8450    ; 5 uses
    #dbg_value(i64 %i.bz, !8064, !DIExpression(), !8281)
  %i.ca = sub i64 %.sroa.09.0, %i.bz, !dbg !8451
    #dbg_value(i64 %i.ca, !8065, !DIExpression(), !8282)
    #dbg_value(i64 %i.ca, !8083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8087)
    #dbg_value(i64 %i.ca, !8283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8290)
    #dbg_value(i64 %i.ca, !8136, !DIExpression(), !8292)
    #dbg_value(i64 %.sroa.09.0, !8083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8087)
    #dbg_value(i64 %.sroa.09.0, !8283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8290)
    #dbg_value(ptr %0, !8286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8290)
    #dbg_value(ptr %0, !8137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8292)
    #dbg_value(i64 %1, !8286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8290)
    #dbg_value(i64 %1, !8137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8292)
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera:bb.a
    #dbg_value(i64 %.sroa.02.0, !8794, !DIExpression(), !8856)
    #dbg_value(i64 %.sroa.09.0, !8799, !DIExpression(), !8873)
    #dbg_value(i64 %.sroa.023.0, !8800, !DIExpression(), !8874)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !9100 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !9100

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit
  %.sroa.021.0 = phi i8 [ %i.cb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ 0, %bb.f ], !dbg !8875 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ 1, %bb.f ], !dbg !8875 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !8801, !DIExpression(), !8875)
    #dbg_value(i8 %.sroa.021.0, !8802, !DIExpression(), !8875)
    #dbg_value(i64 %.sroa.02.0, !8794, !DIExpression(), !8856)
    #dbg_value(i64 %.sroa.023.0, !8800, !DIExpression(), !8874)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !9101
  br i1 %i.m, label %.lr.ph114, label %._crit_edge, !dbg !9101

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !8810, !DIExpression(), !8813)
    #dbg_value(i64 %.sroa.09.0, !8815, !DIExpression(), !8819)
    #dbg_value(i64 %.sroa.09.0, !8876, !DIExpression(), !8881)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !9102 ; 11 uses
    #dbg_value(i64 %i.n, !8816, !DIExpression(), !8882)
    #dbg_value(i64 %i.n, !8878, !DIExpression(), !8881)
    #dbg_value(ptr %0, !8877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8881)
    #dbg_value(i64 %1, !8877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8881)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0, !dbg !9103 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8883), !dbg !9104
    #dbg_value(ptr %i.o, !8884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8522)
    #dbg_value(i64 %i.n, !8884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8522)
    #dbg_value(ptr %2, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8522)
    #dbg_value(i64 %3, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8522)
    #dbg_value(i64 %.sroa.01.0, !8888, !DIExpression(), !8522)
    #dbg_value(i64 %.sroa.01.0, !8896, !DIExpression(), !8525)
    #dbg_value(i64 %.sroa.01.0, !8899, !DIExpression(), !8528)
    #dbg_value(i1 %4, !8889, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8522)
    #dbg_value(ptr %5, !8890, !DIExpression(), !8522)
    #dbg_value(i64 %i.n, !8891, !DIExpression(), !8529)
    #dbg_value(i64 %i.n, !8897, !DIExpression(), !8531)
    #dbg_value(i64 %i.n, !8900, !DIExpression(), !8533)
    #dbg_value(i64 %i.n, !8897, !DIExpression(), !8525)
    #dbg_value(i64 %i.n, !8900, !DIExpression(), !8528)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !9105
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !9105

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread147, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !9106

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !8903, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8539)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8542)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8546)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8548)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8550)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8552)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8554)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8556)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8558)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8560)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8562)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8564)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8566)
    #dbg_value(i64 %i.n, !8903, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8539)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8542)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8546)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8548)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8550)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8552)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8554)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8556)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8558)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8560)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8562)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8564)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8566)
    #dbg_value(ptr %5, !8906, !DIExpression(), !8539)
    #dbg_value(i64 1, !8914, !DIExpression(), !8542)
    #dbg_value(i64 1, !8924, !DIExpression(), !8546)
    #dbg_value(i64 0, !8914, !DIExpression(), !8548)
    #dbg_value(i64 0, !8924, !DIExpression(), !8550)
    #dbg_value(i64 %i.n, !8907, !DIExpression(), !8567)
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !9107
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, label %bb.k, !dbg !9107

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !8908, !DIExpression(), !8568)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !9108
  %.val29.i = load ptr, ptr %i.q, align 8, !dbg !9109, !alias.scope !8883, !noalias !8932, !nonnull !558, !align !747, !noundef !558 ; 2 uses
  %.val30.i = load ptr, ptr %i.o, align 8, !dbg !9109, !alias.scope !8883, !noalias !8932, !nonnull !558, !align !747, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8572)
    #dbg_value(ptr poison, !748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8572)
    #dbg_value(ptr poison, !754, !DIExpression(), !8572)
    #dbg_value(ptr poison, !759, !DIExpression(), !8574)
    #dbg_value(ptr poison, !763, !DIExpression(), !8574)
  %i.r = getelementptr i8, ptr %.val29.i, i64 8, !dbg !9110
  %.val.i.i88 = load ptr, ptr %i.r, align 8, !dbg !9110, !noalias !8933, !nonnull !558, !noundef !558 ; 3 uses
  %i.s = getelementptr i8, ptr %.val29.i, i64 16, !dbg !9110
  %.val2.i.i89 = load i64, ptr %i.s, align 8, !dbg !9110, !noalias !8933, !noundef !558 ; 4 uses
  %i.t = getelementptr i8, ptr %.val30.i, i64 8, !dbg !9110
  %.val3.i.i90 = load ptr, ptr %i.t, align 8, !dbg !9110, !noalias !8933, !nonnull !558, !noundef !558
  %i.u = getelementptr i8, ptr %.val30.i, i64 16, !dbg !9110
  %.val4.i.i91 = load i64, ptr %i.u, align 8, !dbg !9110, !noalias !8933, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !643, !DIExpression(), !8576)
    #dbg_value(ptr poison, !646, !DIExpression(), !8576)
    #dbg_declare(ptr poison, !655, !DIExpression(), !8578)
    #dbg_value(ptr poison, !675, !DIExpression(), !8580)
    #dbg_value(ptr poison, !681, !DIExpression(), !8582)
    #dbg_value(ptr poison, !679, !DIExpression(), !8580)
    #dbg_value(ptr poison, !685, !DIExpression(), !8582)
    #dbg_value(ptr poison, !689, !DIExpression(), !8584)
    #dbg_value(ptr poison, !693, !DIExpression(), !8584)
    #dbg_value(ptr %.val.i.i88, !696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8586)
    #dbg_value(i64 %.val2.i.i89, !696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8586)
    #dbg_value(ptr %.val3.i.i90, !707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8586)
    #dbg_value(i64 %.val4.i.i91, !707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8586)
    #dbg_value(ptr %.val.i.i88, !709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8588)
    #dbg_value(i64 %.val2.i.i89, !709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8588)
    #dbg_value(ptr %.val3.i.i90, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8588)
    #dbg_value(i64 %.val4.i.i91, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8588)
    #dbg_value(i64 %.val2.i.i89, !714, !DIExpression(), !8589)
  %i.v = sub nsw i64 %.val2.i.i89, %.val4.i.i91, !dbg !9111
    #dbg_value(i64 %i.v, !713, !DIExpression(), !8590)
  %spec.store.select.i.i.i.i.i.i92 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val2.i.i89, i64 range(i64 0, -9223372036854775808) %.val4.i.i91), !dbg !9112
    #dbg_value(i64 %spec.store.select.i.i.i.i.i.i92, !714, !DIExpression(), !8589)
    #dbg_value(ptr %.val.i.i88, !715, !DIExpression(), !8591)
    #dbg_value(ptr %.val3.i.i90, !716, !DIExpression(), !8592)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i88, ptr nonnull readonly %.val3.i.i90, i64 %spec.store.select.i.i.i.i.i.i92), !dbg !9113, !alias.scope !8934, !noalias !8933 ; 2 uses
  %i.x = sext i32 %i.w to i64, !dbg !9113
    #dbg_value(i64 %i.x, !717, !DIExpression(), !8596)
  %i.y = icmp eq i32 %i.w, 0, !dbg !9114
  %spec.store.select1.i.i.i.i.i.i93 = select i1 %i.y, i64 %i.v, i64 %i.x, !dbg !9114
    #dbg_value(i64 %spec.store.select1.i.i.i.i.i.i93, !717, !DIExpression(), !8596)
    #dbg_value(i8 poison, !671, !DIExpression(), !8597)
  %i.z = icmp slt i64 %spec.store.select1.i.i.i.i.i.i93, 0, !dbg !9115 ; 2 uses
    #dbg_value(i1 %i.z, !8909, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8598)
    #dbg_value(i64 2, !8908, !DIExpression(), !8568)
    #dbg_value(i64 2, !8908, !DIExpression(), !8568)
  %.not121 = icmp eq i64 %i.n, 2, !dbg !9116      ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader102, !dbg !9117

.preheader102:                                    ; preds = %bb.k
  br i1 %.not121, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread, label %.lr.ph, !dbg !9118

.preheader:                                       ; preds = %bb.k
  br i1 %.not121, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread147, label %.lr.ph108, !dbg !9119

.lr.ph:                                           ; preds = %.preheader102, %bb.l
  %.val4.i.i85 = phi i64 [ %.val2.i.i83, %bb.l ], [ %.val2.i.i89, %.preheader102 ], !dbg !9120 ; 2 uses
  %.val3.i.i84 = phi ptr [ %.val.i.i82, %bb.l ], [ %.val.i.i88, %.preheader102 ], !dbg !9120
  %.sroa.01.0.i.i104 = phi i64 [ %i.ai, %bb.l ], [ 2, %.preheader102 ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i104, !8908, !DIExpression(), !8568)
    #dbg_value(i64 %.sroa.01.0.i.i104, !8915, !DIExpression(), !8560)
    #dbg_value(i64 %.sroa.01.0.i.i104, !8925, !DIExpression(), !8562)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i104, !dbg !9121
    #dbg_value(i64 %.sroa.01.0.i.i104, !8915, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8564)
    #dbg_value(i64 %.sroa.01.0.i.i104, !8925, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8566)
  %.val27.i = load ptr, ptr %i.aa, align 8, !dbg !9122, !alias.scope !8883, !noalias !8932, !nonnull !558, !align !747, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8601)
    #dbg_value(ptr poison, !748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8601)
    #dbg_value(ptr poison, !754, !DIExpression(), !8601)
    #dbg_value(ptr poison, !759, !DIExpression(), !8602)
    #dbg_value(ptr poison, !763, !DIExpression(), !8602)
  %i.ab = getelementptr i8, ptr %.val27.i, i64 8, !dbg !9120
  %.val.i.i82 = load ptr, ptr %i.ab, align 8, !dbg !9120, !noalias !8933, !nonnull !558, !noundef !558 ; 2 uses
  %i.ac = getelementptr i8, ptr %.val27.i, i64 16, !dbg !9120
  %.val2.i.i83 = load i64, ptr %i.ac, align 8, !dbg !9120, !noalias !8933, !noundef !558 ; 3 uses
    #dbg_value(ptr poison, !643, !DIExpression(), !8604)
    #dbg_value(ptr poison, !646, !DIExpression(), !8604)
    #dbg_declare(ptr poison, !655, !DIExpression(), !8606)
    #dbg_value(ptr poison, !675, !DIExpression(), !8608)
    #dbg_value(ptr poison, !681, !DIExpression(), !8610)
    #dbg_value(ptr poison, !679, !DIExpression(), !8608)
    #dbg_value(ptr poison, !685, !DIExpression(), !8610)
    #dbg_value(ptr poison, !689, !DIExpression(), !8612)
    #dbg_value(ptr poison, !693, !DIExpression(), !8612)
    #dbg_value(ptr %.val.i.i82, !696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8614)
    #dbg_value(i64 %.val2.i.i83, !696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8614)
    #dbg_value(ptr %.val3.i.i84, !707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8614)
    #dbg_value(i64 %.val4.i.i85, !707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8614)
    #dbg_value(ptr %.val.i.i82, !709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8616)
    #dbg_value(i64 %.val2.i.i83, !709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8616)
    #dbg_value(ptr %.val3.i.i84, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8616)
    #dbg_value(i64 %.val4.i.i85, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8616)
    #dbg_value(i64 %.val2.i.i83, !714, !DIExpression(), !8617)
  %i.ad = sub nsw i64 %.val2.i.i83, %.val4.i.i85, !dbg !9123
    #dbg_value(i64 %i.ad, !713, !DIExpression(), !8618)
  %spec.store.select.i.i.i.i.i.i86 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val2.i.i83, i64 range(i64 0, -9223372036854775808) %.val4.i.i85), !dbg !9124
    #dbg_value(i64 %spec.store.select.i.i.i.i.i.i86, !714, !DIExpression(), !8617)
    #dbg_value(ptr %.val.i.i82, !715, !DIExpression(), !8619)
    #dbg_value(ptr %.val3.i.i84, !716, !DIExpression(), !8620)
  %i.ae = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i82, ptr nonnull readonly %.val3.i.i84, i64 %spec.store.select.i.i.i.i.i.i86), !dbg !9125, !alias.scope !8935, !noalias !8933 ; 2 uses
  %i.af = sext i32 %i.ae to i64, !dbg !9125
    #dbg_value(i64 %i.af, !717, !DIExpression(), !8624)
  %i.ag = icmp eq i32 %i.ae, 0, !dbg !9126
  %spec.store.select1.i.i.i.i.i.i87 = select i1 %i.ag, i64 %i.ad, i64 %i.af, !dbg !9126
    #dbg_value(i64 %spec.store.select1.i.i.i.i.i.i87, !717, !DIExpression(), !8624)
    #dbg_value(i8 poison, !671, !DIExpression(), !8625)
  %i.ah = icmp slt i64 %spec.store.select1.i.i.i.i.i.i87, 0, !dbg !9127
  br i1 %i.ah, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, label %bb.l, !dbg !9122

bb.l:                                             ; preds = %.lr.ph
  %i.ai = add nuw i64 %.sroa.01.0.i.i104, 1, !dbg !9128 ; 2 uses
    #dbg_value(i64 %i.ai, !8908, !DIExpression(), !8568)
  %exitcond.not = icmp eq i64 %i.ai, %i.n, !dbg !9118
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, label %.lr.ph, !dbg !9118

.lr.ph108:                                        ; preds = %.preheader, %bb.m
  %.val4.i.i = phi i64 [ %.val2.i.i, %bb.m ], [ %.val2.i.i89, %.preheader ], !dbg !9129 ; 2 uses
  %.val3.i.i = phi ptr [ %.val.i.i, %bb.m ], [ %.val.i.i88, %.preheader ], !dbg !9129
  %.sroa.01.1.i.i107 = phi i64 [ %i.ar, %bb.m ], [ 2, %.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i107, !8908, !DIExpression(), !8568)
    #dbg_value(i64 %.sroa.01.1.i.i107, !8915, !DIExpression(), !8552)
    #dbg_value(i64 %.sroa.01.1.i.i107, !8925, !DIExpression(), !8554)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i107, !dbg !9130
    #dbg_value(i64 %.sroa.01.1.i.i107, !8915, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8556)
    #dbg_value(i64 %.sroa.01.1.i.i107, !8925, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !8558)
  %.val.i = load ptr, ptr %i.aj, align 8, !dbg !9131, !alias.scope !8883, !noalias !8932, !nonnull !558, !align !747, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8628)
    #dbg_value(ptr poison, !748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8628)
    #dbg_value(ptr poison, !754, !DIExpression(), !8628)
    #dbg_value(ptr poison, !759, !DIExpression(), !8629)
    #dbg_value(ptr poison, !763, !DIExpression(), !8629)
  %i.ak = getelementptr i8, ptr %.val.i, i64 8, !dbg !9129
  %.val.i.i = load ptr, ptr %i.ak, align 8, !dbg !9129, !noalias !8933, !nonnull !558, !noundef !558 ; 2 uses
  %i.al = getelementptr i8, ptr %.val.i, i64 16, !dbg !9129
  %.val2.i.i = load i64, ptr %i.al, align 8, !dbg !9129, !noalias !8933, !noundef !558 ; 3 uses
    #dbg_value(ptr poison, !643, !DIExpression(), !8631)
    #dbg_value(ptr poison, !646, !DIExpression(), !8631)
    #dbg_declare(ptr poison, !655, !DIExpression(), !8633)
    #dbg_value(ptr poison, !675, !DIExpression(), !8635)
    #dbg_value(ptr poison, !681, !DIExpression(), !8637)
    #dbg_value(ptr poison, !679, !DIExpression(), !8635)
    #dbg_value(ptr poison, !685, !DIExpression(), !8637)
    #dbg_value(ptr poison, !689, !DIExpression(), !8639)
    #dbg_value(ptr poison, !693, !DIExpression(), !8639)
    #dbg_value(ptr %.val.i.i, !696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8641)
    #dbg_value(i64 %.val2.i.i, !696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8641)
    #dbg_value(ptr %.val3.i.i, !707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8641)
    #dbg_value(i64 %.val4.i.i, !707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8641)
    #dbg_value(ptr %.val.i.i, !709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8643)
    #dbg_value(i64 %.val2.i.i, !709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8643)
    #dbg_value(ptr %.val3.i.i, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8643)
    #dbg_value(i64 %.val4.i.i, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8643)
    #dbg_value(i64 %.val2.i.i, !714, !DIExpression(), !8644)
  %i.am = sub nsw i64 %.val2.i.i, %.val4.i.i, !dbg !9132
    #dbg_value(i64 %i.am, !713, !DIExpression(), !8645)
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val2.i.i, i64 range(i64 0, -9223372036854775808) %.val4.i.i), !dbg !9133
    #dbg_value(i64 %spec.store.select.i.i.i.i.i.i, !714, !DIExpression(), !8644)
    #dbg_value(ptr %.val.i.i, !715, !DIExpression(), !8646)
    #dbg_value(ptr %.val3.i.i, !716, !DIExpression(), !8647)
  %i.an = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val3.i.i, i64 %spec.store.select.i.i.i.i.i.i), !dbg !9134, !alias.scope !8936, !noalias !8933 ; 2 uses
  %i.ao = sext i32 %i.an to i64, !dbg !9134
    #dbg_value(i64 %i.ao, !717, !DIExpression(), !8651)
  %i.ap = icmp eq i32 %i.an, 0, !dbg !9135
  %spec.store.select1.i.i.i.i.i.i = select i1 %i.ap, i64 %i.am, i64 %i.ao, !dbg !9135
    #dbg_value(i64 %spec.store.select1.i.i.i.i.i.i, !717, !DIExpression(), !8651)
    #dbg_value(i8 poison, !671, !DIExpression(), !8652)
  %i.aq = icmp slt i64 %spec.store.select1.i.i.i.i.i.i, 0, !dbg !9136
  br i1 %i.aq, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, !dbg !9131

bb.m:                                             ; preds = %.lr.ph108
  %i.ar = add nuw i64 %.sroa.01.1.i.i107, 1, !dbg !9137 ; 2 uses
    #dbg_value(i64 %i.ar, !8908, !DIExpression(), !8568)
  %exitcond124.not = icmp eq i64 %i.ar, %i.n, !dbg !9119
  br i1 %exitcond124.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, label %.lr.ph108, !dbg !9119

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph108
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i107, %.lr.ph108 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i104, %.lr.ph ], [ %i.n, %bb.l ], !dbg !9138 ; 6 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !8892, !DIExpression(), !8653)
    #dbg_value(i64 %.sroa.0.0.i.i, !8937, !DIExpression(), !8656)
    #dbg_value(i1 poison, !8893, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8653)
  %i.as = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !9139
  tail call void @llvm.assume(i1 %i.as), !dbg !9140
  %.not25.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !9141
  br i1 %.not25.i, label %bb.i, label %bb.n, !dbg !9141

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread147: ; preds = %.preheader
    #dbg_value(i64 2, !8892, !DIExpression(), !8653)
    #dbg_value(i64 2, !8937, !DIExpression(), !8656)
    #dbg_value(i1 poison, !8893, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8653)
  br i1 %.not25.i149, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.preheader.i.i, !dbg !9141

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread: ; preds = %.preheader102
    #dbg_value(i64 2, !8892, !DIExpression(), !8653)
    #dbg_value(i64 2, !8937, !DIExpression(), !8656)
    #dbg_value(i1 poison, !8893, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8653)
  br i1 %.not25.i144, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, !dbg !9141

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i
    #dbg_value(i1 %i.z, !8893, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8653)
  br i1 %i.z, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, !dbg !9142

bb.o:                                             ; preds = %bb.i
  %i.at = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.n), !dbg !9143
    #dbg_value(i64 %i.at, !8939, !DIExpression(), !8659)
  %i.au = shl nuw nsw i64 %i.at, 1, !dbg !9144
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, !dbg !9145

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !8896, !DIExpression(), !8531)
    #dbg_value(i64 32, !8899, !DIExpression(), !8533)
    #dbg_value(i64 poison, !8894, !DIExpression(), !8660)
    #dbg_value(i64 poison, !8937, !DIExpression(), !8662)
  %i.av = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32), !dbg !9146 ; 2 uses
    #dbg_value(i64 %i.av, !8894, !DIExpression(), !8660)
    #dbg_value(i64 %i.av, !8937, !DIExpression(), !8662)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.av, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !9147, !inline_history !8663
  %i.aw = shl nuw nsw i64 %i.av, 1, !dbg !9148
  %i.ax = or disjoint i64 %i.aw, 1, !dbg !9148
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, !dbg !9145

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i, %middle.block, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i98101 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread ], [ %.sroa.0.0.i.i145152156, %middle.block ], [ %.sroa.0.0.i.i145152156, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i.i98101, 1, !dbg !9149
  %i.az = or disjoint i64 %i.ay, 1, !dbg !9149
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, !dbg !9150

bb.q:                                             ; preds = %bb.n
    #dbg_value(ptr %i.o, !8941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8669)
    #dbg_value(ptr %i.o, !8950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8673)
    #dbg_value(i64 %.sroa.0.0.i.i, !8941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8669)
    #dbg_value(i64 %.sroa.0.0.i.i, !8950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8673)
  %i.ba = lshr i64 %.sroa.0.0.i.i, 1, !dbg !9151  ; 2 uses
    #dbg_value(i64 %i.ba, !8944, !DIExpression(), !8674)
    #dbg_value(ptr %i.o, !8945, !DIExpression(), !8675)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.0.i.i), !8946, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8675)
    #dbg_value(ptr %i.o, !8947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8676)
    #dbg_value(i64 %i.ba, !8947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8676)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.ba, i64 %.sroa.0.0.i.i), !8948, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8676)
    #dbg_value(i64 %i.ba, !8948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8960), !dbg !9152, !noalias !8932
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8961), !dbg !9152, !noalias !8932
    #dbg_value(ptr %i.o, !8962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8685)
    #dbg_value(i64 %i.ba, !8962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8685)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.ba, i64 %.sroa.0.0.i.i), !8965, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8685)
    #dbg_value(i64 %i.ba, !8965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8685)
    #dbg_value(i64 %i.ba, !8966, !DIExpression(), !8685)
    #dbg_value(ptr %i.o, !8967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8686)
    #dbg_value(i64 %i.ba, !8967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8686)
    #dbg_value(i64 0, !8969, !DIExpression(), !8687)
  %.not.i.i = icmp eq i64 %i.ba, 0, !dbg !9153
  br i1 %.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.preheader.i.i, !dbg !9153

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread147, %bb.q
  %i.bb = phi i64 [ %i.ba, %bb.q ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread147 ] ; 4 uses
  %.sroa.0.0.i.i145152156 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread147 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i145152156, !dbg !9154 ; 2 uses
    #dbg_value(ptr %i.bc, !8946, !DIExpression(), !8675)
    #dbg_value(!DIArgList(ptr %i.bc, i64 0, i64 %i.bb), !8948, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8676)
    #dbg_value(!DIArgList(ptr %i.bc, i64 0, i64 %i.bb), !8965, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8685)
  %min.iters.check = icmp samesign ult i64 %i.bb, 4, !dbg !9153
  br i1 %min.iters.check, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i.preheader, label %vector.ph, !dbg !9153

vector.ph:                                        ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.preheader.i.i
  %n.vec = and i64 %i.bb, 9223372036854775804     ; 3 uses
  br label %vector.body, !dbg !9153

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !9155 ; 3 uses
  %i.bd = xor i64 %index, -1, !dbg !9156
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index, !dbg !9157 ; 4 uses
  %i.bf = getelementptr [8 x i8], ptr %i.bc, i64 %i.bd, !dbg !9158 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !9159
  %wide.load = load <2 x ptr>, ptr %i.be, align 8, !dbg !9159, !alias.scope !8978, !noalias !8979
  %wide.load161 = load <2 x ptr>, ptr %i.bg, align 8, !dbg !9159, !alias.scope !8978, !noalias !8979
  %i.bh = getelementptr i8, ptr %i.bf, i64 -8, !dbg !9159
  %i.bi = getelementptr i8, ptr %i.bf, i64 -24, !dbg !9159
  %wide.load162 = load <2 x i64>, ptr %i.bh, align 8, !dbg !9159, !alias.scope !8980, !noalias !8981
  %wide.load163 = load <2 x i64>, ptr %i.bi, align 8, !dbg !9159, !alias.scope !8980, !noalias !8981
  %reverse = shufflevector <2 x i64> %wide.load162, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !9159
  %reverse164 = shufflevector <2 x i64> %wide.load163, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !9159
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !9159
  store <2 x i64> %reverse, ptr %i.be, align 8, !dbg !9159, !alias.scope !8978, !noalias !8979
  store <2 x i64> %reverse164, ptr %i.bj, align 8, !dbg !9159, !alias.scope !8978, !noalias !8979
  %i.bk = getelementptr i8, ptr %i.bf, i64 -8, !dbg !9159
  %i.bl = getelementptr i8, ptr %i.bf, i64 -24, !dbg !9159
  %reverse165 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>, !dbg !9159
  %reverse166 = shufflevector <2 x ptr> %wide.load161, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>, !dbg !9159
  store <2 x ptr> %reverse165, ptr %i.bk, align 8, !dbg !9159, !alias.scope !8980, !noalias !8981
  store <2 x ptr> %reverse166, ptr %i.bl, align 8, !dbg !9159, !alias.scope !8980, !noalias !8981
  %index.next = add nuw i64 %index, 4, !dbg !9155 ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec, !dbg !9153
  br i1 %i.bm, label %middle.block, label %vector.body, !dbg !9153, !llvm.loop !8694

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec, !dbg !9153
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i.preheader, !dbg !9153

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.preheader.i.i, %middle.block
  %.sroa.0.026.i.i.ph = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i, !dbg !9153

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i
  %.sroa.0.026.i.i = phi i64 [ %i.bs, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i ], [ %.sroa.0.026.i.i.ph, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.0.026.i.i, !8969, !DIExpression(), !8687)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !8975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8695)
  %i.bn = xor i64 %.sroa.0.026.i.i, -1, !dbg !9156
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !9157 ; 2 uses
    #dbg_value(ptr %i.bo, !8975, !DIExpression(), !8695)
  %i.bp = getelementptr [8 x i8], ptr %i.bc, i64 %i.bn, !dbg !9158 ; 2 uses
    #dbg_value(ptr %i.bp, !8976, !DIExpression(), !8695)
  %i.bq = load ptr, ptr %i.bo, align 8, !dbg !9159, !alias.scope !8978, !noalias !8979, !nonnull !558, !align !747, !noundef !558
  %i.br = load i64, ptr %i.bp, align 8, !dbg !9159, !alias.scope !8980, !noalias !8981
  store i64 %i.br, ptr %i.bo, align 8, !dbg !9159, !alias.scope !8978, !noalias !8979
  store ptr %i.bq, ptr %i.bp, align 8, !dbg !9159, !alias.scope !8980, !noalias !8981
  %i.bs = add nuw nsw i64 %.sroa.0.026.i.i, 1, !dbg !9155 ; 2 uses
    #dbg_value(i64 %i.bs, !8969, !DIExpression(), !8687)
  %exitcond.not.i.i = icmp eq i64 %i.bs, %i.bb, !dbg !9153
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i, !dbg !9153, !llvm.loop !8696

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.i81 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ], !dbg !9160 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !8801, !DIExpression(), !8875)
    #dbg_value(i64 %.sroa.023.0, !8982, !DIExpression(), !8985)
  %i.bt = lshr i64 %.sroa.023.0, 1, !dbg !9161
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bt), !8986, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8994)
    #dbg_value(i64 %.sroa.09.0, !8987, !DIExpression(), !8994)
    #dbg_value(i64 %.sroa.0.0.i81, !8982, !DIExpression(), !8996)
  %i.bu = lshr i64 %.sroa.0.0.i81, 1, !dbg !9162
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bu), !8988, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8994)
    #dbg_value(i64 %.sroa.0.0, !8989, !DIExpression(), !8994)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !9163 ; 2 uses
  %i.bv = sub nsw i64 %factor, %i.bt, !dbg !9163
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bt), !8990, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !8997)
  %i.bw = add nuw nsw i64 %i.bu, %factor, !dbg !9164
    #dbg_value(i64 %i.bw, !8991, !DIExpression(), !8998)
  %i.bx = mul i64 %i.bv, %.sroa.0.0, !dbg !9165
  %i.by = mul i64 %i.bw, %.sroa.0.0, !dbg !9166
  %i.bz = xor i64 %i.by, %i.bx, !dbg !9167
    #dbg_value(i64 %i.bz, !8999, !DIExpression(), !9002)
  %i.ca = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bz, i1 false), !dbg !9168
  %i.cb = trunc nuw nsw i64 %i.ca to i8, !dbg !9167
    #dbg_value(i8 %i.cb, !8802, !DIExpression(), !8875)
  br label %bb.g, !dbg !9169

.lr.ph114:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit
  %.sroa.02.1113 = phi i64 [ %i.cc, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1112 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1113, !8794, !DIExpression(), !8856)
    #dbg_value(i64 %.sroa.023.1112, !8800, !DIExpression(), !8874)
  %i.cc = add i64 %.sroa.02.1113, -1, !dbg !9170  ; 4 uses
    #dbg_value(i64 %i.cc, !8867, !DIExpression(), !8870)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc, !dbg !9171
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !9172, !noundef !558
  %.not77 = icmp ult i8 %i.ce, %.sroa.021.0, !dbg !9172
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !9172

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, %.lr.ph114, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1112, %.lr.ph114 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], !dbg !8873 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1113, %.lr.ph114 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], !dbg !8855 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !8859, !DIExpression(), !8864)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !9173
  store i64 %.sroa.023.1.lcssa, ptr %i.cf, align 8, !dbg !9174
    #dbg_value(i64 %.sroa.02.1.lcssa, !8867, !DIExpression(), !8872)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !9175
  store i8 %.sroa.021.0, ptr %i.cg, align 1, !dbg !9176
    #dbg_value(i64 %.sroa.02.1.lcssa, !8794, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8856)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !9177

bb.r:                                             ; preds = %.lr.ph114
    #dbg_value(i64 %i.cc, !8859, !DIExpression(), !8862)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cc, !dbg !9178
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBX_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvNtB12_7filters4sort0E0EB12_:bb.a
    #dbg_value(i1 %4, !9474, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9493)
    #dbg_value(ptr %5, !9475, !DIExpression(), !9493)
    #dbg_declare(ptr %i.b, !9480, !DIExpression(), !9513)
    #dbg_declare(ptr %i.a, !9482, !DIExpression(), !9514)
    #dbg_value(i64 4611686018427387904, !9515, !DIExpression(), !9522)
    #dbg_value(i64 64, !9525, !DIExpression(), !9529)
    #dbg_value(i64 64, !9530, !DIExpression(), !9534)
    #dbg_value(i64 %1, !9476, !DIExpression(), !9535)
    #dbg_value(i64 %1, !9523, !DIExpression(), !9536)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !9768
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !9768

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !9516, !DIExpression(), !9522)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !9769
    #dbg_value(i64 %i.d, !9517, !DIExpression(), !9537)
  %i.e = urem i64 4611686018427387904, %1, !dbg !9770
    #dbg_value(i64 %i.e, !9518, !DIExpression(), !9538)
  %.not = icmp ne i64 %i.e, 0, !dbg !9771
  %i.f = zext i1 %.not to i64, !dbg !9771
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !9771 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !9477, !DIExpression(), !9539)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !9772
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !9772

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !9773
    #dbg_value(i64 %i.h, !9478, !DIExpression(), !9540)
  br label %bb.e, !dbg !9773

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !9774
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !9775
    #dbg_value(i64 %i.j, !9526, !DIExpression(), !9529)
    #dbg_value(i64 %i.j, !9531, !DIExpression(), !9534)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !9776
    #dbg_value(i64 %i.k, !9478, !DIExpression(), !9540)
  br label %bb.e, !dbg !9777

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !9539 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !9478, !DIExpression(), !9540)
    #dbg_value(i64 0, !9479, !DIExpression(), !9541)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9778
    #dbg_value(ptr %i.b, !9481, !DIExpression(), !9542)
    #dbg_value(ptr %i.b, !9543, !DIExpression(), !9547)
    #dbg_value(ptr %i.b, !9543, !DIExpression(), !9549)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9779
    #dbg_value(ptr %i.a, !9483, !DIExpression(), !9550)
    #dbg_value(ptr %i.a, !9551, !DIExpression(), !9555)
    #dbg_value(ptr %i.a, !9551, !DIExpression(), !9557)
    #dbg_value(i64 0, !9484, !DIExpression(), !9558)
    #dbg_value(i64 1, !9485, !DIExpression(), !9559)
  %.not25.i124 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i129 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !9780

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !9558 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.y ], !dbg !9550 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ], !dbg !9540 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !9479, !DIExpression(), !9541)
    #dbg_value(i64 %.sroa.09.0, !9484, !DIExpression(), !9558)
    #dbg_value(i64 %.sroa.023.0, !9485, !DIExpression(), !9559)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !9781 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !9781

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit ], [ 0, %bb.f ], !dbg !9560 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit ], [ 1, %bb.f ], !dbg !9560 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !9486, !DIExpression(), !9560)
    #dbg_value(i8 %.sroa.021.0, !9487, !DIExpression(), !9560)
    #dbg_value(i64 %.sroa.02.0, !9479, !DIExpression(), !9541)
    #dbg_value(i64 %.sroa.023.0, !9485, !DIExpression(), !9559)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !9782
  br i1 %i.m, label %.lr.ph102, label %._crit_edge, !dbg !9782

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !9495, !DIExpression(), !9498)
    #dbg_value(i64 %.sroa.09.0, !9500, !DIExpression(), !9504)
    #dbg_value(i64 %.sroa.09.0, !9561, !DIExpression(), !9566)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !9783 ; 11 uses
    #dbg_value(i64 %i.n, !9501, !DIExpression(), !9567)
    #dbg_value(i64 %i.n, !9563, !DIExpression(), !9566)
    #dbg_value(ptr %0, !9562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9566)
    #dbg_value(i64 %1, !9562, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9566)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !9784 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9568), !dbg !9785
    #dbg_value(ptr %i.o, !9569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9254)
    #dbg_value(i64 %i.n, !9569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9254)
    #dbg_value(ptr %2, !9572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9254)
    #dbg_value(i64 %3, !9572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9254)
    #dbg_value(i64 %.sroa.01.0, !9573, !DIExpression(), !9254)
    #dbg_value(i64 %.sroa.01.0, !9581, !DIExpression(), !9257)
    #dbg_value(i64 %.sroa.01.0, !9584, !DIExpression(), !9260)
    #dbg_value(i1 %4, !9574, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9254)
    #dbg_value(ptr %5, !9575, !DIExpression(), !9254)
    #dbg_value(i64 %i.n, !9576, !DIExpression(), !9261)
    #dbg_value(i64 %i.n, !9582, !DIExpression(), !9263)
    #dbg_value(i64 %i.n, !9585, !DIExpression(), !9265)
    #dbg_value(i64 %i.n, !9582, !DIExpression(), !9257)
    #dbg_value(i64 %i.n, !9585, !DIExpression(), !9260)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !9786
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !9786

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread127, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !9787

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !9588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9271)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9274)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9278)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9280)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9282)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9284)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9286)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9288)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9290)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9292)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9294)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9296)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9298)
    #dbg_value(i64 %i.n, !9588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9271)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9274)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9278)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9280)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9282)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9284)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9286)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9288)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9290)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9292)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9294)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9296)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9298)
    #dbg_value(ptr %5, !9591, !DIExpression(), !9271)
    #dbg_value(i64 1, !9599, !DIExpression(), !9274)
    #dbg_value(i64 1, !9609, !DIExpression(), !9278)
    #dbg_value(i64 0, !9599, !DIExpression(), !9280)
    #dbg_value(i64 0, !9609, !DIExpression(), !9282)
    #dbg_value(i64 %i.n, !9592, !DIExpression(), !9299)
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !9788
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit, label %bb.k, !dbg !9788

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !9593, !DIExpression(), !9300)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !9789
  %.val29.i = load ptr, ptr %i.q, align 8, !dbg !9790, !alias.scope !9568, !noalias !9617, !nonnull !558, !align !747, !noundef !558 ; 3 uses
  %.val30.i = load ptr, ptr %i.o, align 8, !dbg !9790, !alias.scope !9568, !noalias !9617, !nonnull !558, !align !747, !noundef !558
    #dbg_value(ptr poison, !1221, !DIExpression(), !9304)
    #dbg_value(ptr poison, !1224, !DIExpression(), !9304)
    #dbg_value(ptr poison, !1229, !DIExpression(), !9306)
    #dbg_value(ptr poison, !1233, !DIExpression(), !9308)
    #dbg_value(ptr poison, !1239, !DIExpression(), !9308)
    #dbg_value(ptr poison, !1240, !DIExpression(), !9308)
    #dbg_value(ptr poison, !1237, !DIExpression(), !9309)
    #dbg_value(ptr poison, !1242, !DIExpression(), !9311)
    #dbg_value(ptr poison, !1238, !DIExpression(), !9312)
    #dbg_value(ptr poison, !1246, !DIExpression(), !9313)
  %i.r = tail call noundef range(i8 -1, 2) i8 @_RNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val29.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val30.i), !dbg !9791, !noalias !9618
    #dbg_value(ptr poison, !1230, !DIExpression(), !9314)
  %i.s = icmp eq i8 %i.r, -1, !dbg !9792          ; 2 uses
    #dbg_value(i1 %i.s, !9594, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9315)
    #dbg_value(i64 2, !9593, !DIExpression(), !9300)
    #dbg_value(i64 2, !9593, !DIExpression(), !9300)
  %.not109 = icmp eq i64 %i.n, 2, !dbg !9793      ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader90, !dbg !9794

.preheader90:                                     ; preds = %bb.k
  br i1 %.not109, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread, label %.lr.ph, !dbg !9795

.preheader:                                       ; preds = %bb.k
  br i1 %.not109, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread127, label %.lr.ph96, !dbg !9796

.lr.ph:                                           ; preds = %.preheader90, %bb.l
  %.val28.i = phi ptr [ %.val27.i, %bb.l ], [ %.val29.i, %.preheader90 ], !dbg !9797
  %.sroa.01.0.i.i92 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader90 ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i92, !9593, !DIExpression(), !9300)
    #dbg_value(i64 %.sroa.01.0.i.i92, !9600, !DIExpression(), !9292)
    #dbg_value(i64 %.sroa.01.0.i.i92, !9610, !DIExpression(), !9294)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i92, !dbg !9798
    #dbg_value(i64 %.sroa.01.0.i.i92, !9600, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9296)
    #dbg_value(i64 %.sroa.01.0.i.i92, !9610, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9298)
  %.val27.i = load ptr, ptr %i.t, align 8, !dbg !9797, !alias.scope !9568, !noalias !9617, !nonnull !558, !align !747, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !1221, !DIExpression(), !9317)
    #dbg_value(ptr poison, !1224, !DIExpression(), !9317)
    #dbg_value(ptr poison, !1229, !DIExpression(), !9319)
    #dbg_value(ptr poison, !1233, !DIExpression(), !9321)
    #dbg_value(ptr poison, !1239, !DIExpression(), !9321)
    #dbg_value(ptr poison, !1240, !DIExpression(), !9321)
    #dbg_value(ptr poison, !1237, !DIExpression(), !9322)
    #dbg_value(ptr poison, !1242, !DIExpression(), !9324)
    #dbg_value(ptr poison, !1238, !DIExpression(), !9325)
    #dbg_value(ptr poison, !1246, !DIExpression(), !9326)
  %i.u = tail call noundef range(i8 -1, 2) i8 @_RNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val27.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val28.i), !dbg !9799, !noalias !9618
    #dbg_value(ptr poison, !1230, !DIExpression(), !9327)
  %i.v = icmp eq i8 %i.u, -1, !dbg !9800
  br i1 %i.v, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i, label %bb.l, !dbg !9797

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i92, 1, !dbg !9801 ; 2 uses
    #dbg_value(i64 %i.w, !9593, !DIExpression(), !9300)
  %exitcond.not = icmp eq i64 %i.w, %i.n, !dbg !9795
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i, label %.lr.ph, !dbg !9795

.lr.ph96:                                         ; preds = %.preheader, %bb.m
  %.val26.i = phi ptr [ %.val.i, %bb.m ], [ %.val29.i, %.preheader ], !dbg !9802
  %.sroa.01.1.i.i95 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i95, !9593, !DIExpression(), !9300)
    #dbg_value(i64 %.sroa.01.1.i.i95, !9600, !DIExpression(), !9284)
    #dbg_value(i64 %.sroa.01.1.i.i95, !9610, !DIExpression(), !9286)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i95, !dbg !9803
    #dbg_value(i64 %.sroa.01.1.i.i95, !9600, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9288)
    #dbg_value(i64 %.sroa.01.1.i.i95, !9610, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9290)
  %.val.i = load ptr, ptr %i.x, align 8, !dbg !9802, !alias.scope !9568, !noalias !9617, !nonnull !558, !align !747, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !1221, !DIExpression(), !9329)
    #dbg_value(ptr poison, !1224, !DIExpression(), !9329)
    #dbg_value(ptr poison, !1229, !DIExpression(), !9331)
    #dbg_value(ptr poison, !1233, !DIExpression(), !9333)
    #dbg_value(ptr poison, !1239, !DIExpression(), !9333)
    #dbg_value(ptr poison, !1240, !DIExpression(), !9333)
    #dbg_value(ptr poison, !1237, !DIExpression(), !9334)
    #dbg_value(ptr poison, !1242, !DIExpression(), !9336)
    #dbg_value(ptr poison, !1238, !DIExpression(), !9337)
    #dbg_value(ptr poison, !1246, !DIExpression(), !9338)
  %i.y = tail call noundef range(i8 -1, 2) i8 @_RNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val26.i), !dbg !9804, !noalias !9618
    #dbg_value(ptr poison, !1230, !DIExpression(), !9339)
  %i.z = icmp eq i8 %i.y, -1, !dbg !9805
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i, !dbg !9802

bb.m:                                             ; preds = %.lr.ph96
  %i.aa = add nuw i64 %.sroa.01.1.i.i95, 1, !dbg !9806 ; 2 uses
    #dbg_value(i64 %i.aa, !9593, !DIExpression(), !9300)
  %exitcond112.not = icmp eq i64 %i.aa, %i.n, !dbg !9796
  br i1 %exitcond112.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i, label %.lr.ph96, !dbg !9796

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph96
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i95, %.lr.ph96 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i92, %.lr.ph ], [ %i.n, %bb.l ], !dbg !9807 ; 6 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !9577, !DIExpression(), !9340)
    #dbg_value(i64 %.sroa.0.0.i.i, !9619, !DIExpression(), !9343)
    #dbg_value(i1 poison, !9578, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9340)
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !9808
  tail call void @llvm.assume(i1 %i.ab), !dbg !9809
  %.not25.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !9810
  br i1 %.not25.i, label %bb.i, label %bb.n, !dbg !9810

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread127: ; preds = %.preheader
    #dbg_value(i64 2, !9577, !DIExpression(), !9340)
    #dbg_value(i64 2, !9619, !DIExpression(), !9343)
    #dbg_value(i1 poison, !9578, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9340)
  br i1 %.not25.i129, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i, !dbg !9810

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread: ; preds = %.preheader90
    #dbg_value(i64 2, !9577, !DIExpression(), !9340)
    #dbg_value(i64 2, !9619, !DIExpression(), !9343)
    #dbg_value(i1 poison, !9578, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9340)
  br i1 %.not25.i124, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit, !dbg !9810

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i
    #dbg_value(i1 %i.s, !9578, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9340)
  br i1 %i.s, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit, !dbg !9811

bb.o:                                             ; preds = %bb.i
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.n), !dbg !9812
    #dbg_value(i64 %i.ac, !9621, !DIExpression(), !9346)
  %i.ad = shl nuw nsw i64 %i.ac, 1, !dbg !9813
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit, !dbg !9814

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !9581, !DIExpression(), !9263)
    #dbg_value(i64 32, !9584, !DIExpression(), !9265)
    #dbg_value(i64 poison, !9579, !DIExpression(), !9347)
    #dbg_value(i64 poison, !9619, !DIExpression(), !9349)
  %i.ae = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32), !dbg !9815 ; 2 uses
    #dbg_value(i64 %i.ae, !9579, !DIExpression(), !9347)
    #dbg_value(i64 %i.ae, !9619, !DIExpression(), !9349)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB16_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtB1b_7filters4sort0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.ae, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !9816, !inline_history !9350
  %i.af = shl nuw nsw i64 %i.ae, 1, !dbg !9817
  %i.ag = or disjoint i64 %i.af, 1, !dbg !9817
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit, !dbg !9814

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !9818
  br i1 %lcmp.mod.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i.epil.preheader, !dbg !9818

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i.epil.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit.loopexit.unr-lcssa, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i
  %.sroa.0.026.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i ], [ %i.ba, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod143 = trunc i64 %i.ao to i1, !dbg !9818
  tail call void @llvm.assume(i1 %lcmp.mod143), !dbg !9818
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !9630, !DIExpression(), !9361)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i.epil.init), !9642, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !9364)
  %i.ah = xor i64 %.sroa.0.026.i.i.epil.init, -1, !dbg !9819
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i.epil.init, !dbg !9820 ; 2 uses
    #dbg_value(ptr %i.ai, !9642, !DIExpression(), !9364)
  %i.aj = getelementptr [16 x i8], ptr %i.ap, i64 %i.ah, !dbg !9821 ; 2 uses
    #dbg_value(ptr %i.aj, !9645, !DIExpression(), !9364)
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !dbg !9822, !alias.scope !9647, !noalias !9648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !dbg !9822, !alias.scope !9649, !noalias !9617
  store <2 x ptr> %i.ak, ptr %i.aj, align 8, !dbg !9822, !alias.scope !9650, !noalias !9651
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !9630, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9361)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit, !dbg !9823

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i.epil.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i8689 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i125132136, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i125132136, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i.epil.preheader ]
  %i.al = shl nuw nsw i64 %.sroa.0.0.i.i8689, 1, !dbg !9823
  %i.am = or disjoint i64 %i.al, 1, !dbg !9823
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit, !dbg !9824

bb.q:                                             ; preds = %bb.n
    #dbg_value(ptr %i.o, !9634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9370)
    #dbg_value(ptr %i.o, !9652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9374)
    #dbg_value(i64 %.sroa.0.0.i.i, !9634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9370)
    #dbg_value(i64 %.sroa.0.0.i.i, !9652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9374)
  %i.an = lshr i64 %.sroa.0.0.i.i, 1, !dbg !9825  ; 2 uses
    #dbg_value(i64 %i.an, !9635, !DIExpression(), !9375)
    #dbg_value(ptr %i.o, !9636, !DIExpression(), !9376)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.0.i.i), !9637, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !9376)
    #dbg_value(ptr %i.o, !9638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9377)
    #dbg_value(i64 %i.an, !9638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9377)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.an, i64 %.sroa.0.0.i.i), !9639, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9377)
    #dbg_value(i64 %i.an, !9639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9661), !dbg !9826, !noalias !9617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9662), !dbg !9826, !noalias !9617
    #dbg_value(ptr %i.o, !9625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9378)
    #dbg_value(i64 %i.an, !9625, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9378)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.an, i64 %.sroa.0.0.i.i), !9626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9378)
    #dbg_value(i64 %i.an, !9626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9378)
    #dbg_value(i64 %i.an, !9627, !DIExpression(), !9378)
    #dbg_value(ptr %i.o, !9628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9379)
    #dbg_value(i64 %i.an, !9628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9379)
    #dbg_value(i64 0, !9630, !DIExpression(), !9361)
  %.not.i.i = icmp eq i64 %i.an, 0, !dbg !9818
  br i1 %.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i, !dbg !9818

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread127, %bb.q
  %i.ao = phi i64 [ %i.an, %bb.q ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread127 ] ; 4 uses
  %.sroa.0.0.i.i125132136 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread127 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i125132136, !dbg !9827 ; 3 uses
    #dbg_value(ptr %i.ap, !9637, !DIExpression(), !9376)
    #dbg_value(!DIArgList(ptr %i.ap, i64 0, i64 %i.ao), !9639, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9377)
    #dbg_value(!DIArgList(ptr %i.ap, i64 0, i64 %i.ao), !9626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9378)
  %xtraiter = and i64 %i.ao, 1, !dbg !9818
  %i.aq = icmp eq i64 %i.ao, 1, !dbg !9818
  br i1 %i.aq, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i.new, !dbg !9818

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i
  %unroll_iter = and i64 %i.ao, 9223372036854775806, !dbg !9818
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i, !dbg !9818

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i.new
  %.sroa.0.026.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i.new ], [ %i.ba, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i ]
    #dbg_value(i64 %.sroa.0.026.i.i, !9630, !DIExpression(), !9361)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !9642, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !9364)
  %i.ar = xor i64 %.sroa.0.026.i.i, -1, !dbg !9819
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !9820 ; 2 uses
    #dbg_value(ptr %i.as, !9642, !DIExpression(), !9364)
  %i.at = getelementptr [16 x i8], ptr %i.ap, i64 %i.ar, !dbg !9821 ; 2 uses
    #dbg_value(ptr %i.at, !9645, !DIExpression(), !9364)
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !dbg !9822, !alias.scope !9647, !noalias !9648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !9822, !alias.scope !9649, !noalias !9617
  store <2 x ptr> %i.au, ptr %i.at, align 8, !dbg !9822, !alias.scope !9650, !noalias !9651
    #dbg_value(i64 %.sroa.0.026.i.i, !9630, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !9361)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !9642, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !9364)
  %i.av = xor i64 %.sroa.0.026.i.i, -2, !dbg !9819
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !9820
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !9820 ; 2 uses
    #dbg_value(ptr %i.ax, !9642, !DIExpression(), !9364)
  %i.ay = getelementptr [16 x i8], ptr %i.ap, i64 %i.av, !dbg !9821 ; 2 uses
    #dbg_value(ptr %i.ay, !9645, !DIExpression(), !9364)
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !dbg !9822, !alias.scope !9647, !noalias !9648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !9822, !alias.scope !9649, !noalias !9617
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !dbg !9822, !alias.scope !9650, !noalias !9651
  %i.ba = add nuw nsw i64 %.sroa.0.026.i.i, 2, !dbg !9828 ; 2 uses
    #dbg_value(i64 %i.ba, !9630, !DIExpression(), !9361)
  %niter.next.1 = add i64 %niter, 2, !dbg !9818   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !9818
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i, !dbg !9818

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit
  %.sroa.0.0.i81 = phi i64 [ %i.am, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit ], [ %i.ag, %bb.p ], [ %i.ad, %bb.o ], !dbg !9829 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !9486, !DIExpression(), !9560)
    #dbg_value(i64 %.sroa.023.0, !9663, !DIExpression(), !9666)
  %i.bb = lshr i64 %.sroa.023.0, 1, !dbg !9830
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bb), !9667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9675)
    #dbg_value(i64 %.sroa.09.0, !9668, !DIExpression(), !9675)
    #dbg_value(i64 %.sroa.0.0.i81, !9663, !DIExpression(), !9677)
  %i.bc = lshr i64 %.sroa.0.0.i81, 1, !dbg !9831
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bc), !9669, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9675)
    #dbg_value(i64 %.sroa.0.0, !9670, !DIExpression(), !9675)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !9832 ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb, !dbg !9832
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bb), !9671, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !9678)
  %i.be = add nuw nsw i64 %i.bc, %factor, !dbg !9833
    #dbg_value(i64 %i.be, !9672, !DIExpression(), !9679)
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !9834
  %i.bg = mul i64 %i.be, %.sroa.0.0, !dbg !9835
  %i.bh = xor i64 %i.bg, %i.bf, !dbg !9836
    #dbg_value(i64 %i.bh, !9680, !DIExpression(), !9683)
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false), !dbg !9837
  %i.bj = trunc nuw nsw i64 %i.bi to i8, !dbg !9836
    #dbg_value(i8 %i.bj, !9487, !DIExpression(), !9560)
  br label %bb.g, !dbg !9838

.lr.ph102:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit
  %.sroa.02.1101 = phi i64 [ %i.bk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1100 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1101, !9479, !DIExpression(), !9541)
    #dbg_value(i64 %.sroa.023.1100, !9485, !DIExpression(), !9559)
  %i.bk = add i64 %.sroa.02.1101, -1, !dbg !9839  ; 4 uses
    #dbg_value(i64 %i.bk, !9552, !DIExpression(), !9555)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk, !dbg !9840
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !9841, !noundef !558
  %.not77 = icmp ult i8 %i.bm, %.sroa.021.0, !dbg !9841
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !9841

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit, %.lr.ph102, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1100, %.lr.ph102 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit ], !dbg !9558 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1101, %.lr.ph102 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit ], !dbg !9540 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !9544, !DIExpression(), !9549)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !9842
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8, !dbg !9843
    #dbg_value(i64 %.sroa.02.1.lcssa, !9552, !DIExpression(), !9557)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !9844
  store i8 %.sroa.021.0, ptr %i.bo, align 1, !dbg !9845
    #dbg_value(i64 %.sroa.02.1.lcssa, !9479, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9541)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !9846

bb.r:                                             ; preds = %.lr.ph102
    #dbg_value(i64 %i.bk, !9544, !DIExpression(), !9547)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk, !dbg !9847
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !9848, !noundef !558 ; 3 uses
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB12_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCINvB12_10format_mapINtNtB1X_3vec3VechEE0E0EB14_:bb.a
    #dbg_value(ptr %2, !10120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10140)
    #dbg_value(i64 %3, !10120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10140)
    #dbg_value(i1 %4, !10121, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10140)
    #dbg_value(ptr %5, !10122, !DIExpression(), !10140)
    #dbg_declare(ptr %i.b, !10127, !DIExpression(), !10157)
    #dbg_declare(ptr %i.a, !10129, !DIExpression(), !10158)
    #dbg_value(i64 4611686018427387904, !10159, !DIExpression(), !10166)
    #dbg_value(i64 64, !10169, !DIExpression(), !10173)
    #dbg_value(i64 64, !10174, !DIExpression(), !10178)
    #dbg_value(i64 %1, !10123, !DIExpression(), !10179)
    #dbg_value(i64 %1, !10167, !DIExpression(), !10180)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !10362
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !10362

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !10160, !DIExpression(), !10166)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !10363
    #dbg_value(i64 %i.d, !10161, !DIExpression(), !10181)
  %i.e = urem i64 4611686018427387904, %1, !dbg !10364
    #dbg_value(i64 %i.e, !10162, !DIExpression(), !10182)
  %.not = icmp ne i64 %i.e, 0, !dbg !10365
  %i.f = zext i1 %.not to i64, !dbg !10365
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !10365 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !10124, !DIExpression(), !10183)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !10366
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !10366

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !10367
    #dbg_value(i64 %i.h, !10125, !DIExpression(), !10184)
  br label %bb.e, !dbg !10367

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !10368
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !10369
    #dbg_value(i64 %i.j, !10170, !DIExpression(), !10173)
    #dbg_value(i64 %i.j, !10175, !DIExpression(), !10178)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !10370
    #dbg_value(i64 %i.k, !10125, !DIExpression(), !10184)
  br label %bb.e, !dbg !10371

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !10183 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !10125, !DIExpression(), !10184)
    #dbg_value(i64 0, !10126, !DIExpression(), !10185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10372
    #dbg_value(ptr %i.b, !10128, !DIExpression(), !10186)
    #dbg_value(ptr %i.b, !10187, !DIExpression(), !10191)
    #dbg_value(ptr %i.b, !10187, !DIExpression(), !10193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10373
    #dbg_value(ptr %i.a, !10130, !DIExpression(), !10194)
    #dbg_value(ptr %i.a, !10195, !DIExpression(), !10199)
    #dbg_value(ptr %i.a, !10195, !DIExpression(), !10201)
    #dbg_value(i64 0, !10131, !DIExpression(), !10202)
    #dbg_value(i64 1, !10132, !DIExpression(), !10203)
  %.not25.i128 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i133 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !10374

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !10202 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.y ], !dbg !10194 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ], !dbg !10184 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !10126, !DIExpression(), !10185)
    #dbg_value(i64 %.sroa.09.0, !10131, !DIExpression(), !10202)
    #dbg_value(i64 %.sroa.023.0, !10132, !DIExpression(), !10203)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !10375 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !10375

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit ], [ 0, %bb.f ], !dbg !10204 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit ], [ 1, %bb.f ], !dbg !10204 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !10133, !DIExpression(), !10204)
    #dbg_value(i8 %.sroa.021.0, !10134, !DIExpression(), !10204)
    #dbg_value(i64 %.sroa.02.0, !10126, !DIExpression(), !10185)
    #dbg_value(i64 %.sroa.023.0, !10132, !DIExpression(), !10203)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !10376
  br i1 %i.m, label %.lr.ph106, label %._crit_edge, !dbg !10376

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !10142, !DIExpression(), !10145)
    #dbg_value(i64 %.sroa.09.0, !10147, !DIExpression(), !10151)
    #dbg_value(i64 %.sroa.09.0, !10205, !DIExpression(), !10210)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !10377 ; 11 uses
    #dbg_value(i64 %i.n, !10148, !DIExpression(), !10211)
    #dbg_value(i64 %i.n, !10207, !DIExpression(), !10210)
    #dbg_value(ptr %0, !10206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10210)
    #dbg_value(i64 %1, !10206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10210)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !10378 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10212), !dbg !10379
    #dbg_value(ptr %i.o, !10213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9923)
    #dbg_value(i64 %i.n, !10213, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9923)
    #dbg_value(ptr %2, !10216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9923)
    #dbg_value(i64 %3, !10216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9923)
    #dbg_value(i64 %.sroa.01.0, !10217, !DIExpression(), !9923)
    #dbg_value(i64 %.sroa.01.0, !10225, !DIExpression(), !9926)
    #dbg_value(i64 %.sroa.01.0, !10228, !DIExpression(), !9929)
    #dbg_value(i1 %4, !10218, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9923)
    #dbg_value(ptr %5, !10219, !DIExpression(), !9923)
    #dbg_value(i64 %i.n, !10220, !DIExpression(), !9930)
    #dbg_value(i64 %i.n, !10226, !DIExpression(), !9932)
    #dbg_value(i64 %i.n, !10229, !DIExpression(), !9934)
    #dbg_value(i64 %i.n, !10226, !DIExpression(), !9926)
    #dbg_value(i64 %i.n, !10229, !DIExpression(), !9929)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !10380
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !10380

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !10381

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !10232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9940)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9943)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9946)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9948)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9950)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9952)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9954)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9956)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9958)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9960)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9962)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9964)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9966)
    #dbg_value(i64 %i.n, !10232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9940)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9943)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9946)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9948)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9950)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9952)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9954)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9956)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9958)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9960)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9962)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9964)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9966)
    #dbg_value(ptr %5, !10235, !DIExpression(), !9940)
    #dbg_value(i64 1, !10241, !DIExpression(), !9943)
    #dbg_value(i64 1, !10245, !DIExpression(), !9946)
    #dbg_value(i64 0, !10241, !DIExpression(), !9948)
    #dbg_value(i64 0, !10245, !DIExpression(), !9950)
    #dbg_value(i64 %i.n, !10236, !DIExpression(), !9967)
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !10382
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, label %bb.k, !dbg !10382

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !10237, !DIExpression(), !9968)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !10383
  %.val29.i = load ptr, ptr %i.q, align 8, !dbg !10384, !alias.scope !10212, !noalias !10253, !nonnull !558, !align !1002, !noundef !558 ; 3 uses
  %.val30.i = load ptr, ptr %i.o, align 8, !dbg !10384, !alias.scope !10212, !noalias !10253, !nonnull !558, !align !1002, !noundef !558
    #dbg_value(ptr poison, !1005, !DIExpression(), !9972)
    #dbg_value(ptr poison, !1008, !DIExpression(), !9972)
    #dbg_value(ptr poison, !1015, !DIExpression(), !9974)
    #dbg_value(ptr poison, !1018, !DIExpression(), !9974)
    #dbg_value(ptr %.val29.i, !1023, !DIExpression(), !9976)
    #dbg_value(ptr %.val30.i, !1026, !DIExpression(), !9976)
    #dbg_declare(ptr poison, !1031, !DIExpression(), !9978)
  %i.r = tail call noundef i8 @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value3keyNtB5_3KeyNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val29.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val30.i), !dbg !10385, !noalias !10254 ; 2 uses
    #dbg_value(i8 %i.r, !1032, !DIExpression(), !9979)
  %.not.i.i.i84 = icmp ne i8 %i.r, -2, !dbg !10386
  %i.s = icmp slt i8 %i.r, 0, !dbg !10387
  %.sroa.0.0.i.i.i85 = and i1 %.not.i.i.i84, %i.s, !dbg !10387 ; 2 uses
    #dbg_value(i1 %.sroa.0.0.i.i.i85, !10238, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9980)
    #dbg_value(i64 2, !10237, !DIExpression(), !9968)
    #dbg_value(i64 2, !10237, !DIExpression(), !9968)
  %.not113 = icmp eq i64 %i.n, 2, !dbg !10388     ; 2 uses
  br i1 %.sroa.0.0.i.i.i85, label %.preheader, label %.preheader94, !dbg !10389

.preheader94:                                     ; preds = %bb.k
  br i1 %.not113, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread, label %.lr.ph, !dbg !10390

.preheader:                                       ; preds = %bb.k
  br i1 %.not113, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131, label %.lr.ph100, !dbg !10391

.lr.ph:                                           ; preds = %.preheader94, %bb.l
  %.val28.i = phi ptr [ %.val27.i, %bb.l ], [ %.val29.i, %.preheader94 ], !dbg !10392
  %.sroa.01.0.i.i96 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader94 ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i96, !10237, !DIExpression(), !9968)
    #dbg_value(i64 %.sroa.01.0.i.i96, !10242, !DIExpression(), !9960)
    #dbg_value(i64 %.sroa.01.0.i.i96, !10246, !DIExpression(), !9962)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i96, !dbg !10393
    #dbg_value(i64 %.sroa.01.0.i.i96, !10242, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9964)
    #dbg_value(i64 %.sroa.01.0.i.i96, !10246, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9966)
  %.val27.i = load ptr, ptr %i.t, align 8, !dbg !10392, !alias.scope !10212, !noalias !10253, !nonnull !558, !align !1002, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !1005, !DIExpression(), !9982)
    #dbg_value(ptr poison, !1008, !DIExpression(), !9982)
    #dbg_value(ptr poison, !1015, !DIExpression(), !9984)
    #dbg_value(ptr poison, !1018, !DIExpression(), !9984)
    #dbg_value(ptr %.val27.i, !1023, !DIExpression(), !9986)
    #dbg_value(ptr %.val28.i, !1026, !DIExpression(), !9986)
    #dbg_declare(ptr poison, !1031, !DIExpression(), !9988)
  %i.u = tail call noundef i8 @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value3keyNtB5_3KeyNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val27.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val28.i), !dbg !10394, !noalias !10254 ; 2 uses
    #dbg_value(i8 %i.u, !1032, !DIExpression(), !9989)
  %.not.i.i.i82 = icmp ne i8 %i.u, -2, !dbg !10395
  %i.v = icmp slt i8 %i.u, 0, !dbg !10396
  %.sroa.0.0.i.i.i83 = and i1 %.not.i.i.i82, %i.v, !dbg !10396
  br i1 %.sroa.0.0.i.i.i83, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i, label %bb.l, !dbg !10392

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i96, 1, !dbg !10397 ; 2 uses
    #dbg_value(i64 %i.w, !10237, !DIExpression(), !9968)
  %exitcond.not = icmp eq i64 %i.w, %i.n, !dbg !10390
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i, label %.lr.ph, !dbg !10390

.lr.ph100:                                        ; preds = %.preheader, %bb.m
  %.val26.i = phi ptr [ %.val.i, %bb.m ], [ %.val29.i, %.preheader ], !dbg !10398
  %.sroa.01.1.i.i99 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i99, !10237, !DIExpression(), !9968)
    #dbg_value(i64 %.sroa.01.1.i.i99, !10242, !DIExpression(), !9952)
    #dbg_value(i64 %.sroa.01.1.i.i99, !10246, !DIExpression(), !9954)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i99, !dbg !10399
    #dbg_value(i64 %.sroa.01.1.i.i99, !10242, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9956)
    #dbg_value(i64 %.sroa.01.1.i.i99, !10246, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9958)
  %.val.i = load ptr, ptr %i.x, align 8, !dbg !10398, !alias.scope !10212, !noalias !10253, !nonnull !558, !align !1002, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !1005, !DIExpression(), !9991)
    #dbg_value(ptr poison, !1008, !DIExpression(), !9991)
    #dbg_value(ptr poison, !1015, !DIExpression(), !9993)
    #dbg_value(ptr poison, !1018, !DIExpression(), !9993)
    #dbg_value(ptr %.val.i, !1023, !DIExpression(), !9995)
    #dbg_value(ptr %.val26.i, !1026, !DIExpression(), !9995)
    #dbg_declare(ptr poison, !1031, !DIExpression(), !9997)
  %i.y = tail call noundef i8 @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value3keyNtB5_3KeyNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val26.i), !dbg !10400, !noalias !10254 ; 2 uses
    #dbg_value(i8 %i.y, !1032, !DIExpression(), !9998)
  %.not.i.i.i = icmp ne i8 %i.y, -2, !dbg !10401
  %i.z = icmp slt i8 %i.y, 0, !dbg !10402
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.z, !dbg !10402
  br i1 %.sroa.0.0.i.i.i, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i, !dbg !10398

bb.m:                                             ; preds = %.lr.ph100
  %i.aa = add nuw i64 %.sroa.01.1.i.i99, 1, !dbg !10403 ; 2 uses
    #dbg_value(i64 %i.aa, !10237, !DIExpression(), !9968)
  %exitcond116.not = icmp eq i64 %i.aa, %i.n, !dbg !10391
  br i1 %exitcond116.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i, label %.lr.ph100, !dbg !10391

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph100
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i99, %.lr.ph100 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i96, %.lr.ph ], [ %i.n, %bb.l ], !dbg !10404 ; 6 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !10221, !DIExpression(), !9999)
    #dbg_value(i64 %.sroa.0.0.i.i, !10255, !DIExpression(), !10002)
    #dbg_value(i1 poison, !10222, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9999)
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !10405
  tail call void @llvm.assume(i1 %i.ab), !dbg !10406
  %.not25.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !10407
  br i1 %.not25.i, label %bb.i, label %bb.n, !dbg !10407

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131: ; preds = %.preheader
    #dbg_value(i64 2, !10221, !DIExpression(), !9999)
    #dbg_value(i64 2, !10255, !DIExpression(), !10002)
    #dbg_value(i1 poison, !10222, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9999)
  br i1 %.not25.i133, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i, !dbg !10407

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread: ; preds = %.preheader94
    #dbg_value(i64 2, !10221, !DIExpression(), !9999)
    #dbg_value(i64 2, !10255, !DIExpression(), !10002)
    #dbg_value(i1 poison, !10222, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9999)
  br i1 %.not25.i128, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, !dbg !10407

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i
    #dbg_value(i1 %.sroa.0.0.i.i.i85, !10222, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9999)
  br i1 %.sroa.0.0.i.i.i85, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, !dbg !10408

bb.o:                                             ; preds = %bb.i
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.n), !dbg !10409
    #dbg_value(i64 %i.ac, !10257, !DIExpression(), !10005)
  %i.ad = shl nuw nsw i64 %i.ac, 1, !dbg !10410
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit, !dbg !10411

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !10225, !DIExpression(), !9932)
    #dbg_value(i64 32, !10228, !DIExpression(), !9934)
    #dbg_value(i64 poison, !10223, !DIExpression(), !10006)
    #dbg_value(i64 poison, !10255, !DIExpression(), !10008)
  %i.ae = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32), !dbg !10412 ; 2 uses
    #dbg_value(i64 %i.ae, !10223, !DIExpression(), !10006)
    #dbg_value(i64 %i.ae, !10255, !DIExpression(), !10008)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapINtNtB26_3vec3VechEE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.ae, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !10413, !inline_history !10009
  %i.af = shl nuw nsw i64 %i.ae, 1, !dbg !10414
  %i.ag = or disjoint i64 %i.af, 1, !dbg !10414
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit, !dbg !10411

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !10415
  br i1 %lcmp.mod.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader, !dbg !10415

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i
  %.sroa.0.026.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i ], [ %i.ba, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod147 = trunc i64 %i.ao to i1, !dbg !10415
  tail call void @llvm.assume(i1 %lcmp.mod147), !dbg !10415
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !2209, !DIExpression(), !10012)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i.epil.init), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !10014)
  %i.ah = xor i64 %.sroa.0.026.i.i.epil.init, -1, !dbg !10416
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i.epil.init, !dbg !10417 ; 2 uses
    #dbg_value(ptr %i.ai, !2221, !DIExpression(), !10014)
  %i.aj = getelementptr [16 x i8], ptr %i.ap, i64 %i.ah, !dbg !10418 ; 2 uses
    #dbg_value(ptr %i.aj, !2224, !DIExpression(), !10014)
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !dbg !10419, !alias.scope !10259, !noalias !10260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !dbg !10419, !alias.scope !10261, !noalias !10253
  store <2 x ptr> %i.ak, ptr %i.aj, align 8, !dbg !10419, !alias.scope !10262, !noalias !10263
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !2209, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10012)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, !dbg !10420

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i9093 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread ], [ %.sroa.0.0.i.i129136140, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i129136140, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader ]
  %i.al = shl nuw nsw i64 %.sroa.0.0.i.i9093, 1, !dbg !10420
  %i.am = or disjoint i64 %i.al, 1, !dbg !10420
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit, !dbg !10421

bb.q:                                             ; preds = %bb.n
    #dbg_value(ptr %i.o, !2213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10020)
    #dbg_value(ptr %i.o, !2226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10022)
    #dbg_value(i64 %.sroa.0.0.i.i, !2213, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10020)
    #dbg_value(i64 %.sroa.0.0.i.i, !2226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10022)
  %i.an = lshr i64 %.sroa.0.0.i.i, 1, !dbg !10422 ; 2 uses
    #dbg_value(i64 %i.an, !2214, !DIExpression(), !10023)
    #dbg_value(ptr %i.o, !2215, !DIExpression(), !10024)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.0.i.i), !2216, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !10024)
    #dbg_value(ptr %i.o, !2217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10025)
    #dbg_value(i64 %i.an, !2217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10025)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.an, i64 %.sroa.0.0.i.i), !2218, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10025)
    #dbg_value(i64 %i.an, !2218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10264), !dbg !10423, !noalias !10253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10265), !dbg !10423, !noalias !10253
    #dbg_value(ptr %i.o, !2204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10026)
    #dbg_value(i64 %i.an, !2204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10026)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.an, i64 %.sroa.0.0.i.i), !2205, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10026)
    #dbg_value(i64 %i.an, !2205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10026)
    #dbg_value(i64 %i.an, !2206, !DIExpression(), !10026)
    #dbg_value(ptr %i.o, !2207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10027)
    #dbg_value(i64 %i.an, !2207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10027)
    #dbg_value(i64 0, !2209, !DIExpression(), !10012)
  %.not.i.i = icmp eq i64 %i.an, 0, !dbg !10415
  br i1 %.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i, !dbg !10415

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131, %bb.q
  %i.ao = phi i64 [ %i.an, %bb.q ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131 ] ; 4 uses
  %.sroa.0.0.i.i129136140 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i129136140, !dbg !10424 ; 3 uses
    #dbg_value(ptr %i.ap, !2216, !DIExpression(), !10024)
    #dbg_value(!DIArgList(ptr %i.ap, i64 0, i64 %i.ao), !2218, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10025)
    #dbg_value(!DIArgList(ptr %i.ap, i64 0, i64 %i.ao), !2205, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10026)
  %xtraiter = and i64 %i.ao, 1, !dbg !10415
  %i.aq = icmp eq i64 %i.ao, 1, !dbg !10415
  br i1 %i.aq, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new, !dbg !10415

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i
  %unroll_iter = and i64 %i.ao, 9223372036854775806, !dbg !10415
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, !dbg !10415

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new
  %.sroa.0.026.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new ], [ %i.ba, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i ]
    #dbg_value(i64 %.sroa.0.026.i.i, !2209, !DIExpression(), !10012)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !10014)
  %i.ar = xor i64 %.sroa.0.026.i.i, -1, !dbg !10416
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !10417 ; 2 uses
    #dbg_value(ptr %i.as, !2221, !DIExpression(), !10014)
  %i.at = getelementptr [16 x i8], ptr %i.ap, i64 %i.ar, !dbg !10418 ; 2 uses
    #dbg_value(ptr %i.at, !2224, !DIExpression(), !10014)
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !dbg !10419, !alias.scope !10259, !noalias !10260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !10419, !alias.scope !10261, !noalias !10253
  store <2 x ptr> %i.au, ptr %i.at, align 8, !dbg !10419, !alias.scope !10262, !noalias !10263
    #dbg_value(i64 %.sroa.0.026.i.i, !2209, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10012)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !10014)
  %i.av = xor i64 %.sroa.0.026.i.i, -2, !dbg !10416
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !10417
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !10417 ; 2 uses
    #dbg_value(ptr %i.ax, !2221, !DIExpression(), !10014)
  %i.ay = getelementptr [16 x i8], ptr %i.ap, i64 %i.av, !dbg !10418 ; 2 uses
    #dbg_value(ptr %i.ay, !2224, !DIExpression(), !10014)
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !dbg !10419, !alias.scope !10259, !noalias !10260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !10419, !alias.scope !10261, !noalias !10253
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !dbg !10419, !alias.scope !10262, !noalias !10263
  %i.ba = add nuw nsw i64 %.sroa.0.026.i.i, 2, !dbg !10425 ; 2 uses
    #dbg_value(i64 %i.ba, !2209, !DIExpression(), !10012)
  %niter.next.1 = add i64 %niter, 2, !dbg !10415  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !10415
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, !dbg !10415

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit
  %.sroa.0.0.i81 = phi i64 [ %i.am, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit ], [ %i.ag, %bb.p ], [ %i.ad, %bb.o ], !dbg !10426 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !10133, !DIExpression(), !10204)
    #dbg_value(i64 %.sroa.023.0, !10266, !DIExpression(), !10269)
  %i.bb = lshr i64 %.sroa.023.0, 1, !dbg !10427
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bb), !10270, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !10278)
    #dbg_value(i64 %.sroa.09.0, !10271, !DIExpression(), !10278)
    #dbg_value(i64 %.sroa.0.0.i81, !10266, !DIExpression(), !10280)
  %i.bc = lshr i64 %.sroa.0.0.i81, 1, !dbg !10428
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bc), !10272, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10278)
    #dbg_value(i64 %.sroa.0.0, !10273, !DIExpression(), !10278)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !10429 ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb, !dbg !10429
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bb), !10274, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !10281)
  %i.be = add nuw nsw i64 %i.bc, %factor, !dbg !10430
    #dbg_value(i64 %i.be, !10275, !DIExpression(), !10282)
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !10431
  %i.bg = mul i64 %i.be, %.sroa.0.0, !dbg !10432
  %i.bh = xor i64 %i.bg, %i.bf, !dbg !10433
    #dbg_value(i64 %i.bh, !10283, !DIExpression(), !10286)
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false), !dbg !10434
  %i.bj = trunc nuw nsw i64 %i.bi to i8, !dbg !10433
    #dbg_value(i8 %i.bj, !10134, !DIExpression(), !10204)
  br label %bb.g, !dbg !10435

.lr.ph106:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit
  %.sroa.02.1105 = phi i64 [ %i.bk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1104 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1105, !10126, !DIExpression(), !10185)
    #dbg_value(i64 %.sroa.023.1104, !10132, !DIExpression(), !10203)
  %i.bk = add i64 %.sroa.02.1105, -1, !dbg !10436 ; 4 uses
    #dbg_value(i64 %i.bk, !10196, !DIExpression(), !10199)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk, !dbg !10437
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !10438, !noundef !558
  %.not77 = icmp ult i8 %i.bm, %.sroa.021.0, !dbg !10438
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !10438

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit, %.lr.ph106, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1104, %.lr.ph106 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit ], !dbg !10202 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1105, %.lr.ph106 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit ], !dbg !10184 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !10188, !DIExpression(), !10193)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !10439
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8, !dbg !10440
    #dbg_value(i64 %.sroa.02.1.lcssa, !10196, !DIExpression(), !10201)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !10441
  store i8 %.sroa.021.0, ptr %i.bo, align 1, !dbg !10442
    #dbg_value(i64 %.sroa.02.1.lcssa, !10126, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10185)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !10443

bb.r:                                             ; preds = %.lr.ph106
    #dbg_value(i64 %i.bk, !10188, !DIExpression(), !10191)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk, !dbg !10444
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !10445, !noundef !558 ; 3 uses
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB12_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCINvB12_10format_mapNtNtNtBa_2io4util4SinkE0E0EB14_:bb.a
    #dbg_value(ptr %2, !10717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10737)
    #dbg_value(i64 %3, !10717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10737)
    #dbg_value(i1 %4, !10718, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10737)
    #dbg_value(ptr %5, !10719, !DIExpression(), !10737)
    #dbg_declare(ptr %i.b, !10724, !DIExpression(), !10754)
    #dbg_declare(ptr %i.a, !10726, !DIExpression(), !10755)
    #dbg_value(i64 4611686018427387904, !10756, !DIExpression(), !10763)
    #dbg_value(i64 64, !10766, !DIExpression(), !10770)
    #dbg_value(i64 64, !10771, !DIExpression(), !10775)
    #dbg_value(i64 %1, !10720, !DIExpression(), !10776)
    #dbg_value(i64 %1, !10764, !DIExpression(), !10777)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !10959
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !10959

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !10757, !DIExpression(), !10763)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !10960
    #dbg_value(i64 %i.d, !10758, !DIExpression(), !10778)
  %i.e = urem i64 4611686018427387904, %1, !dbg !10961
    #dbg_value(i64 %i.e, !10759, !DIExpression(), !10779)
  %.not = icmp ne i64 %i.e, 0, !dbg !10962
  %i.f = zext i1 %.not to i64, !dbg !10962
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !10962 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !10721, !DIExpression(), !10780)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !10963
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !10963

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !10964
    #dbg_value(i64 %i.h, !10722, !DIExpression(), !10781)
  br label %bb.e, !dbg !10964

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !10965
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !10966
    #dbg_value(i64 %i.j, !10767, !DIExpression(), !10770)
    #dbg_value(i64 %i.j, !10772, !DIExpression(), !10775)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !10967
    #dbg_value(i64 %i.k, !10722, !DIExpression(), !10781)
  br label %bb.e, !dbg !10968

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !10780 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !10722, !DIExpression(), !10781)
    #dbg_value(i64 0, !10723, !DIExpression(), !10782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10969
    #dbg_value(ptr %i.b, !10725, !DIExpression(), !10783)
    #dbg_value(ptr %i.b, !10784, !DIExpression(), !10788)
    #dbg_value(ptr %i.b, !10784, !DIExpression(), !10790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10970
    #dbg_value(ptr %i.a, !10727, !DIExpression(), !10791)
    #dbg_value(ptr %i.a, !10792, !DIExpression(), !10796)
    #dbg_value(ptr %i.a, !10792, !DIExpression(), !10798)
    #dbg_value(i64 0, !10728, !DIExpression(), !10799)
    #dbg_value(i64 1, !10729, !DIExpression(), !10800)
  %.not25.i128 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i133 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !10971

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !10799 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.y ], !dbg !10791 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ], !dbg !10781 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !10723, !DIExpression(), !10782)
    #dbg_value(i64 %.sroa.09.0, !10728, !DIExpression(), !10799)
    #dbg_value(i64 %.sroa.023.0, !10729, !DIExpression(), !10800)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !10972 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !10972

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit ], [ 0, %bb.f ], !dbg !10801 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit ], [ 1, %bb.f ], !dbg !10801 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !10730, !DIExpression(), !10801)
    #dbg_value(i8 %.sroa.021.0, !10731, !DIExpression(), !10801)
    #dbg_value(i64 %.sroa.02.0, !10723, !DIExpression(), !10782)
    #dbg_value(i64 %.sroa.023.0, !10729, !DIExpression(), !10800)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !10973
  br i1 %i.m, label %.lr.ph106, label %._crit_edge, !dbg !10973

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !10739, !DIExpression(), !10742)
    #dbg_value(i64 %.sroa.09.0, !10744, !DIExpression(), !10748)
    #dbg_value(i64 %.sroa.09.0, !10802, !DIExpression(), !10807)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !10974 ; 11 uses
    #dbg_value(i64 %i.n, !10745, !DIExpression(), !10808)
    #dbg_value(i64 %i.n, !10804, !DIExpression(), !10807)
    #dbg_value(ptr %0, !10803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10807)
    #dbg_value(i64 %1, !10803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10807)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !10975 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10809), !dbg !10976
    #dbg_value(ptr %i.o, !10810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10520)
    #dbg_value(i64 %i.n, !10810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10520)
    #dbg_value(ptr %2, !10813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10520)
    #dbg_value(i64 %3, !10813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10520)
    #dbg_value(i64 %.sroa.01.0, !10814, !DIExpression(), !10520)
    #dbg_value(i64 %.sroa.01.0, !10822, !DIExpression(), !10523)
    #dbg_value(i64 %.sroa.01.0, !10825, !DIExpression(), !10526)
    #dbg_value(i1 %4, !10815, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10520)
    #dbg_value(ptr %5, !10816, !DIExpression(), !10520)
    #dbg_value(i64 %i.n, !10817, !DIExpression(), !10527)
    #dbg_value(i64 %i.n, !10823, !DIExpression(), !10529)
    #dbg_value(i64 %i.n, !10826, !DIExpression(), !10531)
    #dbg_value(i64 %i.n, !10823, !DIExpression(), !10523)
    #dbg_value(i64 %i.n, !10826, !DIExpression(), !10526)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !10977
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !10977

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread131, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !10978

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !10829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10537)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10540)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10543)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10545)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10547)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10549)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10551)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10553)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10555)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10557)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10559)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10561)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10563)
    #dbg_value(i64 %i.n, !10829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10537)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10540)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10543)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10545)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10547)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10549)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10551)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10553)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10555)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10557)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10559)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10561)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10563)
    #dbg_value(ptr %5, !10832, !DIExpression(), !10537)
    #dbg_value(i64 1, !10838, !DIExpression(), !10540)
    #dbg_value(i64 1, !10842, !DIExpression(), !10543)
    #dbg_value(i64 0, !10838, !DIExpression(), !10545)
    #dbg_value(i64 0, !10842, !DIExpression(), !10547)
    #dbg_value(i64 %i.n, !10833, !DIExpression(), !10564)
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !10979
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, label %bb.k, !dbg !10979

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !10834, !DIExpression(), !10565)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !10980
  %.val29.i = load ptr, ptr %i.q, align 8, !dbg !10981, !alias.scope !10809, !noalias !10850, !nonnull !558, !align !1002, !noundef !558 ; 3 uses
  %.val30.i = load ptr, ptr %i.o, align 8, !dbg !10981, !alias.scope !10809, !noalias !10850, !nonnull !558, !align !1002, !noundef !558
    #dbg_value(ptr poison, !1064, !DIExpression(), !10569)
    #dbg_value(ptr poison, !1067, !DIExpression(), !10569)
    #dbg_value(ptr poison, !1015, !DIExpression(), !10571)
    #dbg_value(ptr poison, !1018, !DIExpression(), !10571)
    #dbg_value(ptr %.val29.i, !1023, !DIExpression(), !10573)
    #dbg_value(ptr %.val30.i, !1026, !DIExpression(), !10573)
    #dbg_declare(ptr poison, !1031, !DIExpression(), !10575)
  %i.r = tail call noundef i8 @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value3keyNtB5_3KeyNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val29.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val30.i), !dbg !10982, !noalias !10851 ; 2 uses
    #dbg_value(i8 %i.r, !1032, !DIExpression(), !10576)
  %.not.i.i.i84 = icmp ne i8 %i.r, -2, !dbg !10983
  %i.s = icmp slt i8 %i.r, 0, !dbg !10984
  %.sroa.0.0.i.i.i85 = and i1 %.not.i.i.i84, %i.s, !dbg !10984 ; 2 uses
    #dbg_value(i1 %.sroa.0.0.i.i.i85, !10835, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10577)
    #dbg_value(i64 2, !10834, !DIExpression(), !10565)
    #dbg_value(i64 2, !10834, !DIExpression(), !10565)
  %.not113 = icmp eq i64 %i.n, 2, !dbg !10985     ; 2 uses
  br i1 %.sroa.0.0.i.i.i85, label %.preheader, label %.preheader94, !dbg !10986

.preheader94:                                     ; preds = %bb.k
  br i1 %.not113, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread, label %.lr.ph, !dbg !10987

.preheader:                                       ; preds = %bb.k
  br i1 %.not113, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread131, label %.lr.ph100, !dbg !10988

.lr.ph:                                           ; preds = %.preheader94, %bb.l
  %.val28.i = phi ptr [ %.val27.i, %bb.l ], [ %.val29.i, %.preheader94 ], !dbg !10989
  %.sroa.01.0.i.i96 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader94 ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i96, !10834, !DIExpression(), !10565)
    #dbg_value(i64 %.sroa.01.0.i.i96, !10839, !DIExpression(), !10557)
    #dbg_value(i64 %.sroa.01.0.i.i96, !10843, !DIExpression(), !10559)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i96, !dbg !10990
    #dbg_value(i64 %.sroa.01.0.i.i96, !10839, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !10561)
    #dbg_value(i64 %.sroa.01.0.i.i96, !10843, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !10563)
  %.val27.i = load ptr, ptr %i.t, align 8, !dbg !10989, !alias.scope !10809, !noalias !10850, !nonnull !558, !align !1002, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !1064, !DIExpression(), !10579)
    #dbg_value(ptr poison, !1067, !DIExpression(), !10579)
    #dbg_value(ptr poison, !1015, !DIExpression(), !10581)
    #dbg_value(ptr poison, !1018, !DIExpression(), !10581)
    #dbg_value(ptr %.val27.i, !1023, !DIExpression(), !10583)
    #dbg_value(ptr %.val28.i, !1026, !DIExpression(), !10583)
    #dbg_declare(ptr poison, !1031, !DIExpression(), !10585)
  %i.u = tail call noundef i8 @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value3keyNtB5_3KeyNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val27.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val28.i), !dbg !10991, !noalias !10851 ; 2 uses
    #dbg_value(i8 %i.u, !1032, !DIExpression(), !10586)
  %.not.i.i.i82 = icmp ne i8 %i.u, -2, !dbg !10992
  %i.v = icmp slt i8 %i.u, 0, !dbg !10993
  %.sroa.0.0.i.i.i83 = and i1 %.not.i.i.i82, %i.v, !dbg !10993
  br i1 %.sroa.0.0.i.i.i83, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i, label %bb.l, !dbg !10989

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i96, 1, !dbg !10994 ; 2 uses
    #dbg_value(i64 %i.w, !10834, !DIExpression(), !10565)
  %exitcond.not = icmp eq i64 %i.w, %i.n, !dbg !10987
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i, label %.lr.ph, !dbg !10987

.lr.ph100:                                        ; preds = %.preheader, %bb.m
  %.val26.i = phi ptr [ %.val.i, %bb.m ], [ %.val29.i, %.preheader ], !dbg !10995
  %.sroa.01.1.i.i99 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i99, !10834, !DIExpression(), !10565)
    #dbg_value(i64 %.sroa.01.1.i.i99, !10839, !DIExpression(), !10549)
    #dbg_value(i64 %.sroa.01.1.i.i99, !10843, !DIExpression(), !10551)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i99, !dbg !10996
    #dbg_value(i64 %.sroa.01.1.i.i99, !10839, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !10553)
    #dbg_value(i64 %.sroa.01.1.i.i99, !10843, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !10555)
  %.val.i = load ptr, ptr %i.x, align 8, !dbg !10995, !alias.scope !10809, !noalias !10850, !nonnull !558, !align !1002, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !1064, !DIExpression(), !10588)
    #dbg_value(ptr poison, !1067, !DIExpression(), !10588)
    #dbg_value(ptr poison, !1015, !DIExpression(), !10590)
    #dbg_value(ptr poison, !1018, !DIExpression(), !10590)
    #dbg_value(ptr %.val.i, !1023, !DIExpression(), !10592)
    #dbg_value(ptr %.val26.i, !1026, !DIExpression(), !10592)
    #dbg_declare(ptr poison, !1031, !DIExpression(), !10594)
  %i.y = tail call noundef i8 @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value3keyNtB5_3KeyNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val26.i), !dbg !10997, !noalias !10851 ; 2 uses
    #dbg_value(i8 %i.y, !1032, !DIExpression(), !10595)
  %.not.i.i.i = icmp ne i8 %i.y, -2, !dbg !10998
  %i.z = icmp slt i8 %i.y, 0, !dbg !10999
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.z, !dbg !10999
  br i1 %.sroa.0.0.i.i.i, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i, !dbg !10995

bb.m:                                             ; preds = %.lr.ph100
  %i.aa = add nuw i64 %.sroa.01.1.i.i99, 1, !dbg !11000 ; 2 uses
    #dbg_value(i64 %i.aa, !10834, !DIExpression(), !10565)
  %exitcond116.not = icmp eq i64 %i.aa, %i.n, !dbg !10988
  br i1 %exitcond116.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i, label %.lr.ph100, !dbg !10988

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph100
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i99, %.lr.ph100 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i96, %.lr.ph ], [ %i.n, %bb.l ], !dbg !11001 ; 6 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !10818, !DIExpression(), !10596)
    #dbg_value(i64 %.sroa.0.0.i.i, !10852, !DIExpression(), !10599)
    #dbg_value(i1 poison, !10819, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10596)
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !11002
  tail call void @llvm.assume(i1 %i.ab), !dbg !11003
  %.not25.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !11004
  br i1 %.not25.i, label %bb.i, label %bb.n, !dbg !11004

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread131: ; preds = %.preheader
    #dbg_value(i64 2, !10818, !DIExpression(), !10596)
    #dbg_value(i64 2, !10852, !DIExpression(), !10599)
    #dbg_value(i1 poison, !10819, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10596)
  br i1 %.not25.i133, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i, !dbg !11004

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread: ; preds = %.preheader94
    #dbg_value(i64 2, !10818, !DIExpression(), !10596)
    #dbg_value(i64 2, !10852, !DIExpression(), !10599)
    #dbg_value(i1 poison, !10819, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10596)
  br i1 %.not25.i128, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, !dbg !11004

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i
    #dbg_value(i1 %.sroa.0.0.i.i.i85, !10819, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10596)
  br i1 %.sroa.0.0.i.i.i85, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, !dbg !11005

bb.o:                                             ; preds = %bb.i
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.n), !dbg !11006
    #dbg_value(i64 %i.ac, !10854, !DIExpression(), !10602)
  %i.ad = shl nuw nsw i64 %i.ac, 1, !dbg !11007
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit, !dbg !11008

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !10822, !DIExpression(), !10529)
    #dbg_value(i64 32, !10825, !DIExpression(), !10531)
    #dbg_value(i64 poison, !10820, !DIExpression(), !10603)
    #dbg_value(i64 poison, !10852, !DIExpression(), !10605)
  %i.ae = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32), !dbg !11009 ; 2 uses
    #dbg_value(i64 %i.ae, !10820, !DIExpression(), !10603)
    #dbg_value(i64 %i.ae, !10852, !DIExpression(), !10605)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.ae, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !11010, !inline_history !10606
  %i.af = shl nuw nsw i64 %i.ae, 1, !dbg !11011
  %i.ag = or disjoint i64 %i.af, 1, !dbg !11011
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit, !dbg !11008

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !11012
  br i1 %lcmp.mod.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader, !dbg !11012

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i
  %.sroa.0.026.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i ], [ %i.ba, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod147 = trunc i64 %i.ao to i1, !dbg !11012
  tail call void @llvm.assume(i1 %lcmp.mod147), !dbg !11012
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !2209, !DIExpression(), !10609)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i.epil.init), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !10611)
  %i.ah = xor i64 %.sroa.0.026.i.i.epil.init, -1, !dbg !11013
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i.epil.init, !dbg !11014 ; 2 uses
    #dbg_value(ptr %i.ai, !2221, !DIExpression(), !10611)
  %i.aj = getelementptr [16 x i8], ptr %i.ap, i64 %i.ah, !dbg !11015 ; 2 uses
    #dbg_value(ptr %i.aj, !2224, !DIExpression(), !10611)
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !dbg !11016, !alias.scope !10856, !noalias !10857
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !dbg !11016, !alias.scope !10858, !noalias !10850
  store <2 x ptr> %i.ak, ptr %i.aj, align 8, !dbg !11016, !alias.scope !10859, !noalias !10860
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !2209, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10609)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, !dbg !11017

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i9093 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread ], [ %.sroa.0.0.i.i129136140, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i129136140, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader ]
  %i.al = shl nuw nsw i64 %.sroa.0.0.i.i9093, 1, !dbg !11017
  %i.am = or disjoint i64 %i.al, 1, !dbg !11017
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit, !dbg !11018

bb.q:                                             ; preds = %bb.n
    #dbg_value(ptr %i.o, !2213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10617)
    #dbg_value(ptr %i.o, !2226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10619)
    #dbg_value(i64 %.sroa.0.0.i.i, !2213, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10617)
    #dbg_value(i64 %.sroa.0.0.i.i, !2226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10619)
  %i.an = lshr i64 %.sroa.0.0.i.i, 1, !dbg !11019 ; 2 uses
    #dbg_value(i64 %i.an, !2214, !DIExpression(), !10620)
    #dbg_value(ptr %i.o, !2215, !DIExpression(), !10621)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.0.i.i), !2216, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !10621)
    #dbg_value(ptr %i.o, !2217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10622)
    #dbg_value(i64 %i.an, !2217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10622)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.an, i64 %.sroa.0.0.i.i), !2218, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10622)
    #dbg_value(i64 %i.an, !2218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10861), !dbg !11020, !noalias !10850
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10862), !dbg !11020, !noalias !10850
    #dbg_value(ptr %i.o, !2204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10623)
    #dbg_value(i64 %i.an, !2204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10623)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.an, i64 %.sroa.0.0.i.i), !2205, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10623)
    #dbg_value(i64 %i.an, !2205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10623)
    #dbg_value(i64 %i.an, !2206, !DIExpression(), !10623)
    #dbg_value(ptr %i.o, !2207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10624)
    #dbg_value(i64 %i.an, !2207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10624)
    #dbg_value(i64 0, !2209, !DIExpression(), !10609)
  %.not.i.i = icmp eq i64 %i.an, 0, !dbg !11012
  br i1 %.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i, !dbg !11012

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread131, %bb.q
  %i.ao = phi i64 [ %i.an, %bb.q ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread131 ] ; 4 uses
  %.sroa.0.0.i.i129136140 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread131 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i129136140, !dbg !11021 ; 3 uses
    #dbg_value(ptr %i.ap, !2216, !DIExpression(), !10621)
    #dbg_value(!DIArgList(ptr %i.ap, i64 0, i64 %i.ao), !2218, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10622)
    #dbg_value(!DIArgList(ptr %i.ap, i64 0, i64 %i.ao), !2205, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10623)
  %xtraiter = and i64 %i.ao, 1, !dbg !11012
  %i.aq = icmp eq i64 %i.ao, 1, !dbg !11012
  br i1 %i.aq, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new, !dbg !11012

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i
  %unroll_iter = and i64 %i.ao, 9223372036854775806, !dbg !11012
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, !dbg !11012

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new
  %.sroa.0.026.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new ], [ %i.ba, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i ]
    #dbg_value(i64 %.sroa.0.026.i.i, !2209, !DIExpression(), !10609)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !10611)
  %i.ar = xor i64 %.sroa.0.026.i.i, -1, !dbg !11013
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !11014 ; 2 uses
    #dbg_value(ptr %i.as, !2221, !DIExpression(), !10611)
  %i.at = getelementptr [16 x i8], ptr %i.ap, i64 %i.ar, !dbg !11015 ; 2 uses
    #dbg_value(ptr %i.at, !2224, !DIExpression(), !10611)
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !dbg !11016, !alias.scope !10856, !noalias !10857
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !11016, !alias.scope !10858, !noalias !10850
  store <2 x ptr> %i.au, ptr %i.at, align 8, !dbg !11016, !alias.scope !10859, !noalias !10860
    #dbg_value(i64 %.sroa.0.026.i.i, !2209, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10609)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !10611)
  %i.av = xor i64 %.sroa.0.026.i.i, -2, !dbg !11013
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !11014
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !11014 ; 2 uses
    #dbg_value(ptr %i.ax, !2221, !DIExpression(), !10611)
  %i.ay = getelementptr [16 x i8], ptr %i.ap, i64 %i.av, !dbg !11015 ; 2 uses
    #dbg_value(ptr %i.ay, !2224, !DIExpression(), !10611)
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !dbg !11016, !alias.scope !10856, !noalias !10857
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !11016, !alias.scope !10858, !noalias !10850
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !dbg !11016, !alias.scope !10859, !noalias !10860
  %i.ba = add nuw nsw i64 %.sroa.0.026.i.i, 2, !dbg !11022 ; 2 uses
    #dbg_value(i64 %i.ba, !2209, !DIExpression(), !10609)
  %niter.next.1 = add i64 %niter, 2, !dbg !11012  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !11012
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, !dbg !11012

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit
  %.sroa.0.0.i81 = phi i64 [ %i.am, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit ], [ %i.ag, %bb.p ], [ %i.ad, %bb.o ], !dbg !11023 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !10730, !DIExpression(), !10801)
    #dbg_value(i64 %.sroa.023.0, !10863, !DIExpression(), !10866)
  %i.bb = lshr i64 %.sroa.023.0, 1, !dbg !11024
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bb), !10867, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !10875)
    #dbg_value(i64 %.sroa.09.0, !10868, !DIExpression(), !10875)
    #dbg_value(i64 %.sroa.0.0.i81, !10863, !DIExpression(), !10877)
  %i.bc = lshr i64 %.sroa.0.0.i81, 1, !dbg !11025
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bc), !10869, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10875)
    #dbg_value(i64 %.sroa.0.0, !10870, !DIExpression(), !10875)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !11026 ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb, !dbg !11026
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bb), !10871, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !10878)
  %i.be = add nuw nsw i64 %i.bc, %factor, !dbg !11027
    #dbg_value(i64 %i.be, !10872, !DIExpression(), !10879)
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !11028
  %i.bg = mul i64 %i.be, %.sroa.0.0, !dbg !11029
  %i.bh = xor i64 %i.bg, %i.bf, !dbg !11030
    #dbg_value(i64 %i.bh, !10880, !DIExpression(), !10883)
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false), !dbg !11031
  %i.bj = trunc nuw nsw i64 %i.bi to i8, !dbg !11030
    #dbg_value(i8 %i.bj, !10731, !DIExpression(), !10801)
  br label %bb.g, !dbg !11032

.lr.ph106:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit
  %.sroa.02.1105 = phi i64 [ %i.bk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1104 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1105, !10723, !DIExpression(), !10782)
    #dbg_value(i64 %.sroa.023.1104, !10729, !DIExpression(), !10800)
  %i.bk = add i64 %.sroa.02.1105, -1, !dbg !11033 ; 4 uses
    #dbg_value(i64 %i.bk, !10793, !DIExpression(), !10796)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk, !dbg !11034
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !11035, !noundef !558
  %.not77 = icmp ult i8 %i.bm, %.sroa.021.0, !dbg !11035
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !11035

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit, %.lr.ph106, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1104, %.lr.ph106 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit ], !dbg !10799 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1105, %.lr.ph106 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit ], !dbg !10781 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !10785, !DIExpression(), !10790)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !11036
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8, !dbg !11037
    #dbg_value(i64 %.sroa.02.1.lcssa, !10793, !DIExpression(), !10798)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !11038
  store i8 %.sroa.021.0, ptr %i.bo, align 1, !dbg !11039
    #dbg_value(i64 %.sroa.02.1.lcssa, !10723, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10782)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !11040

bb.r:                                             ; preds = %.lr.ph106
    #dbg_value(i64 %i.bk, !10785, !DIExpression(), !10788)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk, !dbg !11041
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !11042, !noundef !558 ; 3 uses
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB12_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCINvB12_10format_mapQINtNtB1X_3vec3VechEE0E0EB14_:bb.a
    #dbg_value(ptr %2, !11314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11334)
    #dbg_value(i64 %3, !11314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11334)
    #dbg_value(i1 %4, !11315, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11334)
    #dbg_value(ptr %5, !11316, !DIExpression(), !11334)
    #dbg_declare(ptr %i.b, !11321, !DIExpression(), !11351)
    #dbg_declare(ptr %i.a, !11323, !DIExpression(), !11352)
    #dbg_value(i64 4611686018427387904, !11353, !DIExpression(), !11360)
    #dbg_value(i64 64, !11363, !DIExpression(), !11367)
    #dbg_value(i64 64, !11368, !DIExpression(), !11372)
    #dbg_value(i64 %1, !11317, !DIExpression(), !11373)
    #dbg_value(i64 %1, !11361, !DIExpression(), !11374)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !11556
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !11556

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !11354, !DIExpression(), !11360)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !11557
    #dbg_value(i64 %i.d, !11355, !DIExpression(), !11375)
  %i.e = urem i64 4611686018427387904, %1, !dbg !11558
    #dbg_value(i64 %i.e, !11356, !DIExpression(), !11376)
  %.not = icmp ne i64 %i.e, 0, !dbg !11559
  %i.f = zext i1 %.not to i64, !dbg !11559
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !11559 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !11318, !DIExpression(), !11377)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !11560
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !11560

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !11561
    #dbg_value(i64 %i.h, !11319, !DIExpression(), !11378)
  br label %bb.e, !dbg !11561

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !11562
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !11563
    #dbg_value(i64 %i.j, !11364, !DIExpression(), !11367)
    #dbg_value(i64 %i.j, !11369, !DIExpression(), !11372)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !11564
    #dbg_value(i64 %i.k, !11319, !DIExpression(), !11378)
  br label %bb.e, !dbg !11565

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !11377 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !11319, !DIExpression(), !11378)
    #dbg_value(i64 0, !11320, !DIExpression(), !11379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11566
    #dbg_value(ptr %i.b, !11322, !DIExpression(), !11380)
    #dbg_value(ptr %i.b, !11381, !DIExpression(), !11385)
    #dbg_value(ptr %i.b, !11381, !DIExpression(), !11387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11567
    #dbg_value(ptr %i.a, !11324, !DIExpression(), !11388)
    #dbg_value(ptr %i.a, !11389, !DIExpression(), !11393)
    #dbg_value(ptr %i.a, !11389, !DIExpression(), !11395)
    #dbg_value(i64 0, !11325, !DIExpression(), !11396)
    #dbg_value(i64 1, !11326, !DIExpression(), !11397)
  %.not25.i128 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i133 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !11568

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !11396 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.y ], !dbg !11388 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ], !dbg !11378 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !11320, !DIExpression(), !11379)
    #dbg_value(i64 %.sroa.09.0, !11325, !DIExpression(), !11396)
    #dbg_value(i64 %.sroa.023.0, !11326, !DIExpression(), !11397)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !11569 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !11569

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit ], [ 0, %bb.f ], !dbg !11398 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit ], [ 1, %bb.f ], !dbg !11398 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !11327, !DIExpression(), !11398)
    #dbg_value(i8 %.sroa.021.0, !11328, !DIExpression(), !11398)
    #dbg_value(i64 %.sroa.02.0, !11320, !DIExpression(), !11379)
    #dbg_value(i64 %.sroa.023.0, !11326, !DIExpression(), !11397)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !11570
  br i1 %i.m, label %.lr.ph106, label %._crit_edge, !dbg !11570

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !11336, !DIExpression(), !11339)
    #dbg_value(i64 %.sroa.09.0, !11341, !DIExpression(), !11345)
    #dbg_value(i64 %.sroa.09.0, !11399, !DIExpression(), !11404)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !11571 ; 11 uses
    #dbg_value(i64 %i.n, !11342, !DIExpression(), !11405)
    #dbg_value(i64 %i.n, !11401, !DIExpression(), !11404)
    #dbg_value(ptr %0, !11400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11404)
    #dbg_value(i64 %1, !11400, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11404)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !11572 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11406), !dbg !11573
    #dbg_value(ptr %i.o, !11407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11117)
    #dbg_value(i64 %i.n, !11407, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11117)
    #dbg_value(ptr %2, !11410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11117)
    #dbg_value(i64 %3, !11410, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11117)
    #dbg_value(i64 %.sroa.01.0, !11411, !DIExpression(), !11117)
    #dbg_value(i64 %.sroa.01.0, !11419, !DIExpression(), !11120)
    #dbg_value(i64 %.sroa.01.0, !11422, !DIExpression(), !11123)
    #dbg_value(i1 %4, !11412, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11117)
    #dbg_value(ptr %5, !11413, !DIExpression(), !11117)
    #dbg_value(i64 %i.n, !11414, !DIExpression(), !11124)
    #dbg_value(i64 %i.n, !11420, !DIExpression(), !11126)
    #dbg_value(i64 %i.n, !11423, !DIExpression(), !11128)
    #dbg_value(i64 %i.n, !11420, !DIExpression(), !11120)
    #dbg_value(i64 %i.n, !11423, !DIExpression(), !11123)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !11574
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !11574

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !11575

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !11426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11134)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11137)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11140)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11142)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11144)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11146)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11148)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11150)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11152)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11154)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11156)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11158)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11160)
    #dbg_value(i64 %i.n, !11426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11134)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11137)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11140)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11142)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11144)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11146)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11148)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11150)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11152)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11154)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11156)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11158)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11160)
    #dbg_value(ptr %5, !11429, !DIExpression(), !11134)
    #dbg_value(i64 1, !11435, !DIExpression(), !11137)
    #dbg_value(i64 1, !11439, !DIExpression(), !11140)
    #dbg_value(i64 0, !11435, !DIExpression(), !11142)
    #dbg_value(i64 0, !11439, !DIExpression(), !11144)
    #dbg_value(i64 %i.n, !11430, !DIExpression(), !11161)
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !11576
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, label %bb.k, !dbg !11576

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !11431, !DIExpression(), !11162)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !11577
  %.val29.i = load ptr, ptr %i.q, align 8, !dbg !11578, !alias.scope !11406, !noalias !11447, !nonnull !558, !align !1002, !noundef !558 ; 3 uses
  %.val30.i = load ptr, ptr %i.o, align 8, !dbg !11578, !alias.scope !11406, !noalias !11447, !nonnull !558, !align !1002, !noundef !558
    #dbg_value(ptr poison, !1078, !DIExpression(), !11166)
    #dbg_value(ptr poison, !1081, !DIExpression(), !11166)
    #dbg_value(ptr poison, !1015, !DIExpression(), !11168)
    #dbg_value(ptr poison, !1018, !DIExpression(), !11168)
    #dbg_value(ptr %.val29.i, !1023, !DIExpression(), !11170)
    #dbg_value(ptr %.val30.i, !1026, !DIExpression(), !11170)
    #dbg_declare(ptr poison, !1031, !DIExpression(), !11172)
  %i.r = tail call noundef i8 @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value3keyNtB5_3KeyNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val29.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val30.i), !dbg !11579, !noalias !11448 ; 2 uses
    #dbg_value(i8 %i.r, !1032, !DIExpression(), !11173)
  %.not.i.i.i84 = icmp ne i8 %i.r, -2, !dbg !11580
  %i.s = icmp slt i8 %i.r, 0, !dbg !11581
  %.sroa.0.0.i.i.i85 = and i1 %.not.i.i.i84, %i.s, !dbg !11581 ; 2 uses
    #dbg_value(i1 %.sroa.0.0.i.i.i85, !11432, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11174)
    #dbg_value(i64 2, !11431, !DIExpression(), !11162)
    #dbg_value(i64 2, !11431, !DIExpression(), !11162)
  %.not113 = icmp eq i64 %i.n, 2, !dbg !11582     ; 2 uses
  br i1 %.sroa.0.0.i.i.i85, label %.preheader, label %.preheader94, !dbg !11583

.preheader94:                                     ; preds = %bb.k
  br i1 %.not113, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread, label %.lr.ph, !dbg !11584

.preheader:                                       ; preds = %bb.k
  br i1 %.not113, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131, label %.lr.ph100, !dbg !11585

.lr.ph:                                           ; preds = %.preheader94, %bb.l
  %.val28.i = phi ptr [ %.val27.i, %bb.l ], [ %.val29.i, %.preheader94 ], !dbg !11586
  %.sroa.01.0.i.i96 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader94 ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i96, !11431, !DIExpression(), !11162)
    #dbg_value(i64 %.sroa.01.0.i.i96, !11436, !DIExpression(), !11154)
    #dbg_value(i64 %.sroa.01.0.i.i96, !11440, !DIExpression(), !11156)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i96, !dbg !11587
    #dbg_value(i64 %.sroa.01.0.i.i96, !11436, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !11158)
    #dbg_value(i64 %.sroa.01.0.i.i96, !11440, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !11160)
  %.val27.i = load ptr, ptr %i.t, align 8, !dbg !11586, !alias.scope !11406, !noalias !11447, !nonnull !558, !align !1002, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !1078, !DIExpression(), !11176)
    #dbg_value(ptr poison, !1081, !DIExpression(), !11176)
    #dbg_value(ptr poison, !1015, !DIExpression(), !11178)
    #dbg_value(ptr poison, !1018, !DIExpression(), !11178)
    #dbg_value(ptr %.val27.i, !1023, !DIExpression(), !11180)
    #dbg_value(ptr %.val28.i, !1026, !DIExpression(), !11180)
    #dbg_declare(ptr poison, !1031, !DIExpression(), !11182)
  %i.u = tail call noundef i8 @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value3keyNtB5_3KeyNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val27.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val28.i), !dbg !11588, !noalias !11448 ; 2 uses
    #dbg_value(i8 %i.u, !1032, !DIExpression(), !11183)
  %.not.i.i.i82 = icmp ne i8 %i.u, -2, !dbg !11589
  %i.v = icmp slt i8 %i.u, 0, !dbg !11590
  %.sroa.0.0.i.i.i83 = and i1 %.not.i.i.i82, %i.v, !dbg !11590
  br i1 %.sroa.0.0.i.i.i83, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i, label %bb.l, !dbg !11586

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i96, 1, !dbg !11591 ; 2 uses
    #dbg_value(i64 %i.w, !11431, !DIExpression(), !11162)
  %exitcond.not = icmp eq i64 %i.w, %i.n, !dbg !11584
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i, label %.lr.ph, !dbg !11584

.lr.ph100:                                        ; preds = %.preheader, %bb.m
  %.val26.i = phi ptr [ %.val.i, %bb.m ], [ %.val29.i, %.preheader ], !dbg !11592
  %.sroa.01.1.i.i99 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i99, !11431, !DIExpression(), !11162)
    #dbg_value(i64 %.sroa.01.1.i.i99, !11436, !DIExpression(), !11146)
    #dbg_value(i64 %.sroa.01.1.i.i99, !11440, !DIExpression(), !11148)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i99, !dbg !11593
    #dbg_value(i64 %.sroa.01.1.i.i99, !11436, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !11150)
    #dbg_value(i64 %.sroa.01.1.i.i99, !11440, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !11152)
  %.val.i = load ptr, ptr %i.x, align 8, !dbg !11592, !alias.scope !11406, !noalias !11447, !nonnull !558, !align !1002, !noundef !558 ; 2 uses
    #dbg_value(ptr poison, !1078, !DIExpression(), !11185)
    #dbg_value(ptr poison, !1081, !DIExpression(), !11185)
    #dbg_value(ptr poison, !1015, !DIExpression(), !11187)
    #dbg_value(ptr poison, !1018, !DIExpression(), !11187)
    #dbg_value(ptr %.val.i, !1023, !DIExpression(), !11189)
    #dbg_value(ptr %.val26.i, !1026, !DIExpression(), !11189)
    #dbg_declare(ptr poison, !1031, !DIExpression(), !11191)
  %i.y = tail call noundef i8 @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value3keyNtB5_3KeyNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %.val26.i), !dbg !11594, !noalias !11448 ; 2 uses
    #dbg_value(i8 %i.y, !1032, !DIExpression(), !11192)
  %.not.i.i.i = icmp ne i8 %i.y, -2, !dbg !11595
  %i.z = icmp slt i8 %i.y, 0, !dbg !11596
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.z, !dbg !11596
  br i1 %.sroa.0.0.i.i.i, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i, !dbg !11592

bb.m:                                             ; preds = %.lr.ph100
  %i.aa = add nuw i64 %.sroa.01.1.i.i99, 1, !dbg !11597 ; 2 uses
    #dbg_value(i64 %i.aa, !11431, !DIExpression(), !11162)
  %exitcond116.not = icmp eq i64 %i.aa, %i.n, !dbg !11585
  br i1 %exitcond116.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i, label %.lr.ph100, !dbg !11585

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph100
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i99, %.lr.ph100 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i96, %.lr.ph ], [ %i.n, %bb.l ], !dbg !11598 ; 6 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !11415, !DIExpression(), !11193)
    #dbg_value(i64 %.sroa.0.0.i.i, !11449, !DIExpression(), !11196)
    #dbg_value(i1 poison, !11416, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11193)
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !11599
  tail call void @llvm.assume(i1 %i.ab), !dbg !11600
  %.not25.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !11601
  br i1 %.not25.i, label %bb.i, label %bb.n, !dbg !11601

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131: ; preds = %.preheader
    #dbg_value(i64 2, !11415, !DIExpression(), !11193)
    #dbg_value(i64 2, !11449, !DIExpression(), !11196)
    #dbg_value(i1 poison, !11416, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11193)
  br i1 %.not25.i133, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i, !dbg !11601

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread: ; preds = %.preheader94
    #dbg_value(i64 2, !11415, !DIExpression(), !11193)
    #dbg_value(i64 2, !11449, !DIExpression(), !11196)
    #dbg_value(i1 poison, !11416, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11193)
  br i1 %.not25.i128, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, !dbg !11601

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i
    #dbg_value(i1 %.sroa.0.0.i.i.i85, !11416, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11193)
  br i1 %.sroa.0.0.i.i.i85, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, !dbg !11602

bb.o:                                             ; preds = %bb.i
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.n), !dbg !11603
    #dbg_value(i64 %i.ac, !11451, !DIExpression(), !11199)
  %i.ad = shl nuw nsw i64 %i.ac, 1, !dbg !11604
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit, !dbg !11605

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !11419, !DIExpression(), !11126)
    #dbg_value(i64 32, !11422, !DIExpression(), !11128)
    #dbg_value(i64 poison, !11417, !DIExpression(), !11200)
    #dbg_value(i64 poison, !11449, !DIExpression(), !11202)
  %i.ae = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32), !dbg !11606 ; 2 uses
    #dbg_value(i64 %i.ae, !11417, !DIExpression(), !11200)
    #dbg_value(i64 %i.ae, !11449, !DIExpression(), !11202)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapQINtNtB26_3vec3VechEE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.ae, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !11607, !inline_history !11203
  %i.af = shl nuw nsw i64 %i.ae, 1, !dbg !11608
  %i.ag = or disjoint i64 %i.af, 1, !dbg !11608
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit, !dbg !11605

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !11609
  br i1 %lcmp.mod.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader, !dbg !11609

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i
  %.sroa.0.026.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i ], [ %i.ba, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod147 = trunc i64 %i.ao to i1, !dbg !11609
  tail call void @llvm.assume(i1 %lcmp.mod147), !dbg !11609
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !2209, !DIExpression(), !11206)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i.epil.init), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11208)
  %i.ah = xor i64 %.sroa.0.026.i.i.epil.init, -1, !dbg !11610
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i.epil.init, !dbg !11611 ; 2 uses
    #dbg_value(ptr %i.ai, !2221, !DIExpression(), !11208)
  %i.aj = getelementptr [16 x i8], ptr %i.ap, i64 %i.ah, !dbg !11612 ; 2 uses
    #dbg_value(ptr %i.aj, !2224, !DIExpression(), !11208)
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !dbg !11613, !alias.scope !11453, !noalias !11454
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !dbg !11613, !alias.scope !11455, !noalias !11447
  store <2 x ptr> %i.ak, ptr %i.aj, align 8, !dbg !11613, !alias.scope !11456, !noalias !11457
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !2209, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11206)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, !dbg !11614

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i9093 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread ], [ %.sroa.0.0.i.i129136140, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i129136140, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader ]
  %i.al = shl nuw nsw i64 %.sroa.0.0.i.i9093, 1, !dbg !11614
  %i.am = or disjoint i64 %i.al, 1, !dbg !11614
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit, !dbg !11615

bb.q:                                             ; preds = %bb.n
    #dbg_value(ptr %i.o, !2213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11214)
    #dbg_value(ptr %i.o, !2226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11216)
    #dbg_value(i64 %.sroa.0.0.i.i, !2213, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11214)
    #dbg_value(i64 %.sroa.0.0.i.i, !2226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11216)
  %i.an = lshr i64 %.sroa.0.0.i.i, 1, !dbg !11616 ; 2 uses
    #dbg_value(i64 %i.an, !2214, !DIExpression(), !11217)
    #dbg_value(ptr %i.o, !2215, !DIExpression(), !11218)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.0.i.i), !2216, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11218)
    #dbg_value(ptr %i.o, !2217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11219)
    #dbg_value(i64 %i.an, !2217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11219)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.an, i64 %.sroa.0.0.i.i), !2218, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11219)
    #dbg_value(i64 %i.an, !2218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11458), !dbg !11617, !noalias !11447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11459), !dbg !11617, !noalias !11447
    #dbg_value(ptr %i.o, !2204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11220)
    #dbg_value(i64 %i.an, !2204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11220)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.an, i64 %.sroa.0.0.i.i), !2205, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11220)
    #dbg_value(i64 %i.an, !2205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11220)
    #dbg_value(i64 %i.an, !2206, !DIExpression(), !11220)
    #dbg_value(ptr %i.o, !2207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11221)
    #dbg_value(i64 %i.an, !2207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11221)
    #dbg_value(i64 0, !2209, !DIExpression(), !11206)
  %.not.i.i = icmp eq i64 %i.an, 0, !dbg !11609
  br i1 %.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i, !dbg !11609

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131, %bb.q
  %i.ao = phi i64 [ %i.an, %bb.q ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131 ] ; 4 uses
  %.sroa.0.0.i.i129136140 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i129136140, !dbg !11618 ; 3 uses
    #dbg_value(ptr %i.ap, !2216, !DIExpression(), !11218)
    #dbg_value(!DIArgList(ptr %i.ap, i64 0, i64 %i.ao), !2218, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11219)
    #dbg_value(!DIArgList(ptr %i.ap, i64 0, i64 %i.ao), !2205, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11220)
  %xtraiter = and i64 %i.ao, 1, !dbg !11609
  %i.aq = icmp eq i64 %i.ao, 1, !dbg !11609
  br i1 %i.aq, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new, !dbg !11609

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i
  %unroll_iter = and i64 %i.ao, 9223372036854775806, !dbg !11609
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, !dbg !11609

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new
  %.sroa.0.026.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new ], [ %i.ba, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i ]
    #dbg_value(i64 %.sroa.0.026.i.i, !2209, !DIExpression(), !11206)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11208)
  %i.ar = xor i64 %.sroa.0.026.i.i, -1, !dbg !11610
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !11611 ; 2 uses
    #dbg_value(ptr %i.as, !2221, !DIExpression(), !11208)
  %i.at = getelementptr [16 x i8], ptr %i.ap, i64 %i.ar, !dbg !11612 ; 2 uses
    #dbg_value(ptr %i.at, !2224, !DIExpression(), !11208)
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !dbg !11613, !alias.scope !11453, !noalias !11454
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !11613, !alias.scope !11455, !noalias !11447
  store <2 x ptr> %i.au, ptr %i.at, align 8, !dbg !11613, !alias.scope !11456, !noalias !11457
    #dbg_value(i64 %.sroa.0.026.i.i, !2209, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11206)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11208)
  %i.av = xor i64 %.sroa.0.026.i.i, -2, !dbg !11610
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !11611
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !11611 ; 2 uses
    #dbg_value(ptr %i.ax, !2221, !DIExpression(), !11208)
  %i.ay = getelementptr [16 x i8], ptr %i.ap, i64 %i.av, !dbg !11612 ; 2 uses
    #dbg_value(ptr %i.ay, !2224, !DIExpression(), !11208)
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !dbg !11613, !alias.scope !11453, !noalias !11454
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !11613, !alias.scope !11455, !noalias !11447
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !dbg !11613, !alias.scope !11456, !noalias !11457
  %i.ba = add nuw nsw i64 %.sroa.0.026.i.i, 2, !dbg !11619 ; 2 uses
    #dbg_value(i64 %i.ba, !2209, !DIExpression(), !11206)
  %niter.next.1 = add i64 %niter, 2, !dbg !11609  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !11609
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, !dbg !11609

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit
  %.sroa.0.0.i81 = phi i64 [ %i.am, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit ], [ %i.ag, %bb.p ], [ %i.ad, %bb.o ], !dbg !11620 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !11327, !DIExpression(), !11398)
    #dbg_value(i64 %.sroa.023.0, !11460, !DIExpression(), !11463)
  %i.bb = lshr i64 %.sroa.023.0, 1, !dbg !11621
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bb), !11464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11472)
    #dbg_value(i64 %.sroa.09.0, !11465, !DIExpression(), !11472)
    #dbg_value(i64 %.sroa.0.0.i81, !11460, !DIExpression(), !11474)
  %i.bc = lshr i64 %.sroa.0.0.i81, 1, !dbg !11622
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bc), !11466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11472)
    #dbg_value(i64 %.sroa.0.0, !11467, !DIExpression(), !11472)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !11623 ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb, !dbg !11623
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bb), !11468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !11475)
  %i.be = add nuw nsw i64 %i.bc, %factor, !dbg !11624
    #dbg_value(i64 %i.be, !11469, !DIExpression(), !11476)
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !11625
  %i.bg = mul i64 %i.be, %.sroa.0.0, !dbg !11626
  %i.bh = xor i64 %i.bg, %i.bf, !dbg !11627
    #dbg_value(i64 %i.bh, !11477, !DIExpression(), !11480)
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false), !dbg !11628
  %i.bj = trunc nuw nsw i64 %i.bi to i8, !dbg !11627
    #dbg_value(i8 %i.bj, !11328, !DIExpression(), !11398)
  br label %bb.g, !dbg !11629

.lr.ph106:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit
  %.sroa.02.1105 = phi i64 [ %i.bk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1104 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1105, !11320, !DIExpression(), !11379)
    #dbg_value(i64 %.sroa.023.1104, !11326, !DIExpression(), !11397)
  %i.bk = add i64 %.sroa.02.1105, -1, !dbg !11630 ; 4 uses
    #dbg_value(i64 %i.bk, !11390, !DIExpression(), !11393)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk, !dbg !11631
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !11632, !noundef !558
  %.not77 = icmp ult i8 %i.bm, %.sroa.021.0, !dbg !11632
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !11632

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit, %.lr.ph106, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1104, %.lr.ph106 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit ], !dbg !11396 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1105, %.lr.ph106 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit ], !dbg !11378 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !11382, !DIExpression(), !11387)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !11633
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8, !dbg !11634
    #dbg_value(i64 %.sroa.02.1.lcssa, !11390, !DIExpression(), !11395)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !11635
  store i8 %.sroa.021.0, ptr %i.bo, align 1, !dbg !11636
    #dbg_value(i64 %.sroa.02.1.lcssa, !11320, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11379)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !11637

bb.r:                                             ; preds = %.lr.ph106
    #dbg_value(i64 %i.bk, !11382, !DIExpression(), !11385)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk, !dbg !11638
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !11639, !noundef !558 ; 3 uses
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB14_5sliceSBW_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2c_4Tera18finalize_templatess1_0E0EB2e_:bb.a
    #dbg_value(i64 %.sroa.023.0, !12011, !DIExpression(), !12085)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !12342
  br i1 %i.m, label %.lr.ph106, label %._crit_edge, !dbg !12342

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !12021, !DIExpression(), !12024)
    #dbg_value(i64 %.sroa.09.0, !12026, !DIExpression(), !12030)
    #dbg_value(i64 %.sroa.09.0, !12087, !DIExpression(), !12092)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !12343 ; 11 uses
    #dbg_value(i64 %i.n, !12027, !DIExpression(), !12093)
    #dbg_value(i64 %i.n, !12089, !DIExpression(), !12092)
    #dbg_value(ptr %0, !12088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12092)
    #dbg_value(i64 %1, !12088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12092)
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0, !dbg !12344 ; 11 uses
    #dbg_value(ptr %i.o, !12094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11712)
    #dbg_value(i64 %i.n, !12094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11712)
    #dbg_value(ptr %2, !12097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11712)
    #dbg_value(i64 %3, !12097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11712)
    #dbg_value(i64 %.sroa.01.0, !12098, !DIExpression(), !11712)
    #dbg_value(i64 %.sroa.01.0, !12106, !DIExpression(), !11715)
    #dbg_value(i64 %.sroa.01.0, !12109, !DIExpression(), !11718)
    #dbg_value(i1 %4, !12099, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11712)
    #dbg_value(ptr %5, !12100, !DIExpression(), !11712)
    #dbg_value(i64 %i.n, !12101, !DIExpression(), !11719)
    #dbg_value(i64 %i.n, !12107, !DIExpression(), !11721)
    #dbg_value(i64 %i.n, !12110, !DIExpression(), !11723)
    #dbg_value(i64 %i.n, !12107, !DIExpression(), !11715)
    #dbg_value(i64 %i.n, !12110, !DIExpression(), !11718)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !12345
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !12345

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread139, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !12346

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !12113, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11729)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11732)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11736)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11738)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11740)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11742)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11744)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11746)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11748)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11750)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11752)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11754)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11756)
    #dbg_value(i64 %i.n, !12113, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11729)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11732)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11736)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11738)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11740)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11742)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11744)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11746)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11748)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11750)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11752)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11754)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11756)
    #dbg_value(ptr %5, !12116, !DIExpression(), !11729)
    #dbg_value(i64 1, !12124, !DIExpression(), !11732)
    #dbg_value(i64 1, !12134, !DIExpression(), !11736)
    #dbg_value(i64 0, !12124, !DIExpression(), !11738)
    #dbg_value(i64 0, !12134, !DIExpression(), !11740)
    #dbg_value(i64 %i.n, !12117, !DIExpression(), !11757)
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !12347
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRejNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCs5yXxDE1DkoT_4tera.exit, label %bb.k, !dbg !12347

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !12118, !DIExpression(), !11758)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48, !dbg !12348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12142), !dbg !12349
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12143), !dbg !12349
    #dbg_value(ptr %i.q, !1111, !DIExpression(), !11763)
    #dbg_value(ptr %i.o, !1114, !DIExpression(), !11763)
    #dbg_value(ptr poison, !1120, !DIExpression(), !11765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12144), !dbg !12350, !noalias !12145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12146), !dbg !12350, !noalias !12145
    #dbg_value(ptr poison, !1127, !DIExpression(), !11773)
    #dbg_value(ptr %i.q, !1130, !DIExpression(), !11773)
    #dbg_value(ptr %i.o, !1131, !DIExpression(), !11773)
  %i.r = load ptr, ptr %i.q, align 8, !dbg !12351, !alias.scope !12147, !noalias !12148, !nonnull !558, !noundef !558 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 56, !dbg !12351
  %i.t = load i64, ptr %i.s, align 8, !dbg !12351, !alias.scope !12147, !noalias !12148, !noundef !558 ; 4 uses
    #dbg_value(ptr %i.r, !1134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11775)
    #dbg_value(i64 %i.t, !1134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11775)
  %i.u = load ptr, ptr %i.o, align 8, !dbg !12352, !alias.scope !12149, !noalias !12150, !nonnull !558, !noundef !558
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !12352
  %i.w = load i64, ptr %i.v, align 8, !dbg !12352, !alias.scope !12149, !noalias !12150, !noundef !558 ; 2 uses
    #dbg_value(ptr %i.u, !1140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11775)
    #dbg_value(i64 %i.w, !1140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11775)
    #dbg_value(ptr %i.r, !1142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11777)
    #dbg_value(ptr %i.r, !1145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11779)
    #dbg_value(i64 %i.t, !1142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11777)
    #dbg_value(i64 %i.t, !1145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11779)
    #dbg_value(ptr %i.u, !1143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11777)
    #dbg_value(ptr %i.u, !1146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11779)
    #dbg_value(i64 %i.w, !1143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11777)
    #dbg_value(i64 %i.w, !1146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11779)
    #dbg_value(i64 %i.t, !1148, !DIExpression(), !11780)
  %i.x = sub i64 %i.t, %i.w, !dbg !12353
    #dbg_value(i64 %i.x, !1147, !DIExpression(), !11781)
  %spec.store.select.i.i84 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.w), !dbg !12354
    #dbg_value(i64 %spec.store.select.i.i84, !1148, !DIExpression(), !11780)
    #dbg_value(ptr %i.r, !1149, !DIExpression(), !11782)
    #dbg_value(ptr %i.u, !1150, !DIExpression(), !11783)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.u, i64 %spec.store.select.i.i84), !dbg !12355, !noalias !12151 ; 2 uses
  %i.z = sext i32 %i.y to i64, !dbg !12355
    #dbg_value(i64 %i.z, !1151, !DIExpression(), !11784)
  %i.aa = icmp eq i32 %i.y, 0, !dbg !12356
  %spec.store.select1.i.i85 = select i1 %i.aa, i64 %i.x, i64 %i.z, !dbg !12356 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i85, !1151, !DIExpression(), !11784)
    #dbg_value(i8 poison, !1153, !DIExpression(), !11786)
    #dbg_value(ptr %i.q, !1161, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11788)
    #dbg_value(ptr %i.o, !1165, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11789)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 64, !dbg !12357
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !12357, !alias.scope !12147, !noalias !12148, !noundef !558 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !12358
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !12358, !alias.scope !12149, !noalias !12150, !noundef !558
    #dbg_value(i8 poison, !1157, !DIExpression(), !11786)
  %i.af = icmp eq i64 %spec.store.select1.i.i85, 0, !dbg !12359
    #dbg_value(ptr poison, !1124, !DIExpression(), !11790)
  %i.ag = icmp ult i64 %i.ac, %i.ae, !dbg !12360
  %i.ah = icmp slt i64 %spec.store.select1.i.i85, 0, !dbg !12360
  %i.ai = select i1 %i.af, i1 %i.ag, i1 %i.ah, !dbg !12359 ; 2 uses
    #dbg_value(i1 %i.ai, !12119, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11791)
    #dbg_value(i64 2, !12118, !DIExpression(), !11758)
    #dbg_value(i64 2, !12118, !DIExpression(), !11758)
  %.not113 = icmp eq i64 %i.n, 2, !dbg !12361     ; 2 uses
  br i1 %i.ai, label %.preheader, label %.preheader94, !dbg !12362

.preheader94:                                     ; preds = %bb.k
  br i1 %.not113, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread, label %.lr.ph, !dbg !12363

.preheader:                                       ; preds = %bb.k
  br i1 %.not113, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread139, label %.lr.ph100, !dbg !12364

.lr.ph:                                           ; preds = %.preheader94, %bb.l
  %i.aj = phi i64 [ %i.av, %bb.l ], [ %i.ac, %.preheader94 ], !dbg !12365
  %i.ak = phi i64 [ %i.ap, %bb.l ], [ %i.t, %.preheader94 ], !dbg !12366 ; 2 uses
  %i.al = phi ptr [ %i.an, %bb.l ], [ %i.r, %.preheader94 ], !dbg !12366
  %.sroa.01.0.i.i96 = phi i64 [ %i.ba, %bb.l ], [ 2, %.preheader94 ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i96, !12118, !DIExpression(), !11758)
    #dbg_value(i64 %.sroa.01.0.i.i96, !12125, !DIExpression(), !11750)
    #dbg_value(i64 %.sroa.01.0.i.i96, !12135, !DIExpression(), !11752)
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.0.i.i96, !dbg !12367 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i96, !12125, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !11754)
    #dbg_value(i64 %.sroa.01.0.i.i96, !12135, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !11756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12152), !dbg !12368
    #dbg_value(ptr %i.am, !1111, !DIExpression(), !11797)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i96), !1114, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11797)
    #dbg_value(ptr poison, !1120, !DIExpression(), !11799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12153), !dbg !12369, !noalias !12145
    #dbg_value(ptr poison, !1127, !DIExpression(), !11802)
    #dbg_value(ptr %i.am, !1130, !DIExpression(), !11802)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i96), !1131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11802)
  %i.an = load ptr, ptr %i.am, align 8, !dbg !12370, !alias.scope !12154, !noalias !12155, !nonnull !558, !noundef !558 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !12370
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !12370, !alias.scope !12154, !noalias !12155, !noundef !558 ; 3 uses
    #dbg_value(ptr %i.an, !1134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11806)
    #dbg_value(i64 %i.ap, !1134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11806)
    #dbg_value(ptr %i.al, !1140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11806)
    #dbg_value(i64 %i.ak, !1140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11806)
    #dbg_value(ptr %i.an, !1142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11808)
    #dbg_value(ptr %i.an, !1145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11810)
    #dbg_value(i64 %i.ap, !1142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11808)
    #dbg_value(i64 %i.ap, !1145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11810)
    #dbg_value(ptr %i.al, !1143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11808)
    #dbg_value(ptr %i.al, !1146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11810)
    #dbg_value(i64 %i.ak, !1143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11808)
    #dbg_value(i64 %i.ak, !1146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11810)
    #dbg_value(i64 %i.ap, !1148, !DIExpression(), !11811)
  %i.aq = sub i64 %i.ap, %i.ak, !dbg !12371
    #dbg_value(i64 %i.aq, !1147, !DIExpression(), !11812)
  %spec.store.select.i.i82 = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.ak), !dbg !12372
    #dbg_value(i64 %spec.store.select.i.i82, !1148, !DIExpression(), !11811)
    #dbg_value(ptr %i.an, !1149, !DIExpression(), !11813)
    #dbg_value(ptr %i.al, !1150, !DIExpression(), !11814)
  %i.ar = tail call i32 @memcmp(ptr nonnull %i.an, ptr nonnull %i.al, i64 %spec.store.select.i.i82), !dbg !12373, !noalias !12156 ; 2 uses
  %i.as = sext i32 %i.ar to i64, !dbg !12373
    #dbg_value(i64 %i.as, !1151, !DIExpression(), !11815)
  %i.at = icmp eq i32 %i.ar, 0, !dbg !12374
  %spec.store.select1.i.i83 = select i1 %i.at, i64 %i.aq, i64 %i.as, !dbg !12374 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i83, !1151, !DIExpression(), !11815)
    #dbg_value(i8 poison, !1153, !DIExpression(), !11817)
    #dbg_value(ptr %i.am, !1161, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11818)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i96), !1165, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value), !11819)
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !12375
  %i.av = load i64, ptr %i.au, align 8, !dbg !12375, !alias.scope !12154, !noalias !12155, !noundef !558 ; 2 uses
    #dbg_value(i8 poison, !1157, !DIExpression(), !11817)
  %i.aw = icmp eq i64 %spec.store.select1.i.i83, 0, !dbg !12376
    #dbg_value(ptr poison, !1124, !DIExpression(), !11820)
  %i.ax = icmp ult i64 %i.av, %i.aj, !dbg !12377
  %i.ay = icmp slt i64 %spec.store.select1.i.i83, 0, !dbg !12377
  %i.az = select i1 %i.aw, i1 %i.ax, i1 %i.ay, !dbg !12376
  br i1 %i.az, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i, label %bb.l, !dbg !12368

bb.l:                                             ; preds = %.lr.ph
  %i.ba = add nuw i64 %.sroa.01.0.i.i96, 1, !dbg !12378 ; 2 uses
    #dbg_value(i64 %i.ba, !12118, !DIExpression(), !11758)
  %exitcond.not = icmp eq i64 %i.ba, %i.n, !dbg !12363
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i, label %.lr.ph, !dbg !12363

.lr.ph100:                                        ; preds = %.preheader, %bb.m
  %i.bb = phi i64 [ %i.bn, %bb.m ], [ %i.ac, %.preheader ], !dbg !12379
  %i.bc = phi i64 [ %i.bh, %bb.m ], [ %i.t, %.preheader ], !dbg !12380 ; 2 uses
  %i.bd = phi ptr [ %i.bf, %bb.m ], [ %i.r, %.preheader ], !dbg !12380
  %.sroa.01.1.i.i99 = phi i64 [ %i.bs, %bb.m ], [ 2, %.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i99, !12118, !DIExpression(), !11758)
    #dbg_value(i64 %.sroa.01.1.i.i99, !12125, !DIExpression(), !11742)
    #dbg_value(i64 %.sroa.01.1.i.i99, !12135, !DIExpression(), !11744)
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.1.i.i99, !dbg !12381 ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i99, !12125, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !11746)
    #dbg_value(i64 %.sroa.01.1.i.i99, !12135, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !11748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12158), !dbg !12382
    #dbg_value(ptr %i.be, !1111, !DIExpression(), !11826)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i99), !1114, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11826)
    #dbg_value(ptr poison, !1120, !DIExpression(), !11828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12159), !dbg !12383, !noalias !12145
    #dbg_value(ptr poison, !1127, !DIExpression(), !11831)
    #dbg_value(ptr %i.be, !1130, !DIExpression(), !11831)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i99), !1131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11831)
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !12384, !alias.scope !12160, !noalias !12161, !nonnull !558, !noundef !558 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !12384
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !12384, !alias.scope !12160, !noalias !12161, !noundef !558 ; 3 uses
    #dbg_value(ptr %i.bf, !1134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11835)
    #dbg_value(i64 %i.bh, !1134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11835)
    #dbg_value(ptr %i.bd, !1140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11835)
    #dbg_value(i64 %i.bc, !1140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11835)
    #dbg_value(ptr %i.bf, !1142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11837)
    #dbg_value(ptr %i.bf, !1145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11839)
    #dbg_value(i64 %i.bh, !1142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11837)
    #dbg_value(i64 %i.bh, !1145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11839)
    #dbg_value(ptr %i.bd, !1143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11837)
    #dbg_value(ptr %i.bd, !1146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11839)
    #dbg_value(i64 %i.bc, !1143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11837)
    #dbg_value(i64 %i.bc, !1146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11839)
    #dbg_value(i64 %i.bh, !1148, !DIExpression(), !11840)
  %i.bi = sub i64 %i.bh, %i.bc, !dbg !12385
    #dbg_value(i64 %i.bi, !1147, !DIExpression(), !11841)
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bc), !dbg !12386
    #dbg_value(i64 %spec.store.select.i.i, !1148, !DIExpression(), !11840)
    #dbg_value(ptr %i.bf, !1149, !DIExpression(), !11842)
    #dbg_value(ptr %i.bd, !1150, !DIExpression(), !11843)
  %i.bj = tail call i32 @memcmp(ptr nonnull %i.bf, ptr nonnull %i.bd, i64 %spec.store.select.i.i), !dbg !12387, !noalias !12162 ; 2 uses
  %i.bk = sext i32 %i.bj to i64, !dbg !12387
    #dbg_value(i64 %i.bk, !1151, !DIExpression(), !11844)
  %i.bl = icmp eq i32 %i.bj, 0, !dbg !12388
  %spec.store.select1.i.i = select i1 %i.bl, i64 %i.bi, i64 %i.bk, !dbg !12388 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i, !1151, !DIExpression(), !11844)
    #dbg_value(i8 poison, !1153, !DIExpression(), !11846)
    #dbg_value(ptr %i.be, !1161, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11847)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i99), !1165, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value), !11848)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !12389
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !12389, !alias.scope !12160, !noalias !12161, !noundef !558 ; 2 uses
    #dbg_value(i8 poison, !1157, !DIExpression(), !11846)
  %i.bo = icmp eq i64 %spec.store.select1.i.i, 0, !dbg !12390
    #dbg_value(ptr poison, !1124, !DIExpression(), !11849)
  %i.bp = icmp ult i64 %i.bn, %i.bb, !dbg !12391
  %i.bq = icmp slt i64 %spec.store.select1.i.i, 0, !dbg !12391
  %i.br = select i1 %i.bo, i1 %i.bp, i1 %i.bq, !dbg !12390
  br i1 %i.br, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i, !dbg !12382

bb.m:                                             ; preds = %.lr.ph100
  %i.bs = add nuw i64 %.sroa.01.1.i.i99, 1, !dbg !12392 ; 2 uses
    #dbg_value(i64 %i.bs, !12118, !DIExpression(), !11758)
  %exitcond116.not = icmp eq i64 %i.bs, %i.n, !dbg !12364
  br i1 %exitcond116.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i, label %.lr.ph100, !dbg !12364

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph100
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i99, %.lr.ph100 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i96, %.lr.ph ], [ %i.n, %bb.l ], !dbg !12393 ; 5 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !12102, !DIExpression(), !11850)
    #dbg_value(i64 %.sroa.0.0.i.i, !12163, !DIExpression(), !11853)
    #dbg_value(i1 poison, !12103, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11850)
  %i.bt = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !12394
  tail call void @llvm.assume(i1 %i.bt), !dbg !12395
  %.not25.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !12396
  br i1 %.not25.i, label %bb.i, label %bb.n, !dbg !12396

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread139: ; preds = %.preheader
    #dbg_value(i64 2, !12102, !DIExpression(), !11850)
    #dbg_value(i64 2, !12163, !DIExpression(), !11853)
    #dbg_value(i1 poison, !12103, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11850)
  br i1 %.not25.i141, label %bb.i, label %.lr.ph.preheader.i.i, !dbg !12396

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread: ; preds = %.preheader94
    #dbg_value(i64 2, !12102, !DIExpression(), !11850)
    #dbg_value(i64 2, !12163, !DIExpression(), !11853)
    #dbg_value(i1 poison, !12103, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11850)
  br i1 %.not25.i136, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRejNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCs5yXxDE1DkoT_4tera.exit, !dbg !12396

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i
    #dbg_value(i1 %i.ai, !12103, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11850)
    #dbg_value(ptr %i.o, !12165, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11859)
    #dbg_value(ptr %i.o, !12174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11863)
    #dbg_value(i64 %.sroa.0.0.i.i, !12165, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11859)
    #dbg_value(i64 %.sroa.0.0.i.i, !12174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11863)
  %i.bu = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
    #dbg_value(i64 %i.bu, !12168, !DIExpression(), !11864)
    #dbg_value(ptr %i.o, !12169, !DIExpression(), !11865)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.0.i.i), !12170, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11865)
    #dbg_value(ptr %i.o, !12171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11866)
    #dbg_value(i64 %i.bu, !12171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11866)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.bu, i64 %.sroa.0.0.i.i), !12172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11866)
    #dbg_value(i64 %i.bu, !12172, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11866)
    #dbg_value(ptr %i.o, !12184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11872)
    #dbg_value(i64 %i.bu, !12184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11872)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.bu, i64 %.sroa.0.0.i.i), !12187, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11872)
    #dbg_value(i64 %i.bu, !12187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11872)
    #dbg_value(i64 %i.bu, !12188, !DIExpression(), !11872)
    #dbg_value(ptr %i.o, !12189, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11873)
    #dbg_value(i64 %i.bu, !12189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11873)
    #dbg_value(i64 0, !12191, !DIExpression(), !11874)
  %.not.i.i = icmp ne i64 %i.bu, 0
  %or.cond.not = and i1 %.not.i.i, %i.ai, !dbg !12397
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRejNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCs5yXxDE1DkoT_4tera.exit, !dbg !12397

bb.o:                                             ; preds = %bb.i
  %i.bv = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 192153584101141163) %i.n), !dbg !12398
    #dbg_value(i64 %i.bv, !12193, !DIExpression(), !11877)
  %i.bw = shl nuw nsw i64 %i.bv, 1, !dbg !12399
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2k_4Tera18finalize_templatess1_0E0EB2m_.exit, !dbg !12400

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !12106, !DIExpression(), !11721)
    #dbg_value(i64 32, !12109, !DIExpression(), !11723)
    #dbg_value(i64 poison, !12104, !DIExpression(), !11878)
    #dbg_value(i64 poison, !12163, !DIExpression(), !11880)
  %i.bx = tail call i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 32), !dbg !12401 ; 2 uses
    #dbg_value(i64 %i.bx, !12104, !DIExpression(), !11878)
    #dbg_value(i64 %i.bx, !12163, !DIExpression(), !11880)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2m_4Tera18finalize_templatess1_0E0EB2o_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !12402, !inline_history !11881
  %i.by = shl nuw nsw i64 %i.bx, 1, !dbg !12403
  %i.bz = or disjoint i64 %i.by, 1, !dbg !12403
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2k_4Tera18finalize_templatess1_0E0EB2m_.exit, !dbg !12400

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRejNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRejNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i9093 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread ], [ %.sroa.0.0.i.i137144148, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRejNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit.i.i ]
  %i.ca = shl nuw nsw i64 %.sroa.0.0.i.i9093, 1, !dbg !12404
  %i.cb = or disjoint i64 %i.ca, 1, !dbg !12404
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2k_4Tera18finalize_templatess1_0E0EB2m_.exit, !dbg !12405

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread139
  %i.cc = phi i64 [ %i.bu, %bb.n ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread139 ]
  %.sroa.0.0.i.i137144148 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread139 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0.i.i137144148, !dbg !12406
    #dbg_value(ptr %i.cd, !12170, !DIExpression(), !11865)
    #dbg_value(!DIArgList(ptr %i.cd, i64 0, i64 %i.cc), !12172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11866)
    #dbg_value(!DIArgList(ptr %i.cd, i64 0, i64 %i.cc), !12187, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11872)
  br label %.lr.ph.i.i, !dbg !12407

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRejNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.027.i.i = phi i64 [ %i.ci, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRejNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.027.i.i, !12191, !DIExpression(), !11874)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.027.i.i), !12220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11896)
  %i.ce = xor i64 %.sroa.0.027.i.i, -1, !dbg !12408
  %i.cf = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.027.i.i, !dbg !12409
    #dbg_value(ptr %i.cf, !12220, !DIExpression(), !11896)
  %i.cg = getelementptr [48 x i8], ptr %i.cd, i64 %i.ce, !dbg !12410
    #dbg_value(ptr %i.cg, !12221, !DIExpression(), !11896)
    #dbg_value(ptr %i.cf, !12214, !DIExpression(), !11897)
    #dbg_value(ptr %i.cg, !12215, !DIExpression(), !11897)
    #dbg_value(ptr %i.cf, !12208, !DIExpression(), !11898)
    #dbg_value(ptr %i.cf, !12198, !DIExpression(), !11899)
    #dbg_value(ptr %i.cg, !12209, !DIExpression(), !11898)
    #dbg_value(ptr %i.cg, !12199, !DIExpression(), !11899)
    #dbg_value(i64 1, !12210, !DIExpression(), !11898)
    #dbg_value(i64 1, !12200, !DIExpression(), !11899)
    #dbg_value(ptr %i.cf, !12201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11900)
    #dbg_value(i64 1, !12201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11900)
    #dbg_value(i64 48, !12202, !DIExpression(), !11901)
    #dbg_value(i64 48, !12203, !DIExpression(), !11902)
    #dbg_value(ptr %i.cf, !2054, !DIExpression(), !11903)
    #dbg_value(ptr %i.cg, !2055, !DIExpression(), !11903)
    #dbg_value(i64 48, !2056, !DIExpression(), !11903)
    #dbg_value(i64 48, !2057, !DIExpression(), !11904)
    #dbg_value(i64 0, !2059, !DIExpression(), !11905)
    #dbg_value(i64 6, !2058, !DIExpression(), !11906)
    #dbg_value(i64 6, !2060, !DIExpression(), !11907)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg, i64 noundef 6)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRejNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.q, !dbg !12407, !noalias !12145

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #18, !dbg !12411, !noalias !12145
  unreachable, !dbg !12411

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRejNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ci = add nuw nsw i64 %.sroa.0.027.i.i, 1, !dbg !12412 ; 2 uses
    #dbg_value(i64 %i.ci, !12191, !DIExpression(), !11874)
  %exitcond.not.i.i = icmp eq i64 %i.ci, %i.cc, !dbg !12413
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRejNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCs5yXxDE1DkoT_4tera.exit, label %.lr.ph.i.i, !dbg !12413

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2k_4Tera18finalize_templatess1_0E0EB2m_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRejNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.i81 = phi i64 [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRejNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCs5yXxDE1DkoT_4tera.exit ], [ %i.bz, %bb.p ], [ %i.bw, %bb.o ], !dbg !12414 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !12012, !DIExpression(), !12086)
    #dbg_value(i64 %.sroa.023.0, !12223, !DIExpression(), !12226)
  %i.cj = lshr i64 %.sroa.023.0, 1, !dbg !12415
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.cj), !12227, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12235)
    #dbg_value(i64 %.sroa.09.0, !12228, !DIExpression(), !12235)
    #dbg_value(i64 %.sroa.0.0.i81, !12223, !DIExpression(), !12237)
  %i.ck = lshr i64 %.sroa.0.0.i81, 1, !dbg !12416
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.ck), !12229, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12235)
    #dbg_value(i64 %.sroa.0.0, !12230, !DIExpression(), !12235)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !12417 ; 2 uses
  %i.cl = sub nsw i64 %factor, %i.cj, !dbg !12417
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.cj), !12231, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !12238)
  %i.cm = add nuw nsw i64 %i.ck, %factor, !dbg !12418
    #dbg_value(i64 %i.cm, !12232, !DIExpression(), !12239)
  %i.cn = mul i64 %i.cl, %.sroa.0.0, !dbg !12419
  %i.co = mul i64 %i.cm, %.sroa.0.0, !dbg !12420
  %i.cp = xor i64 %i.co, %i.cn, !dbg !12421
    #dbg_value(i64 %i.cp, !12240, !DIExpression(), !12243)
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cp, i1 false), !dbg !12422
  %i.cr = trunc nuw nsw i64 %i.cq to i8, !dbg !12421
    #dbg_value(i8 %i.cr, !12013, !DIExpression(), !12086)
  br label %bb.g, !dbg !12423

.lr.ph106:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit
  %.sroa.02.1105 = phi i64 [ %i.cs, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1104 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1105, !12005, !DIExpression(), !12067)
    #dbg_value(i64 %.sroa.023.1104, !12011, !DIExpression(), !12085)
  %i.cs = add i64 %.sroa.02.1105, -1, !dbg !12424 ; 4 uses
    #dbg_value(i64 %i.cs, !12078, !DIExpression(), !12081)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs, !dbg !12425
  %i.cu = load i8, ptr %i.ct, align 1, !dbg !12426, !noundef !558
  %.not77 = icmp ult i8 %i.cu, %.sroa.021.0, !dbg !12426
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !12426

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit, %.lr.ph106, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1104, %.lr.ph106 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit ], !dbg !12084 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1105, %.lr.ph106 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit ], !dbg !12066 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !12070, !DIExpression(), !12075)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !12427
  store i64 %.sroa.023.1.lcssa, ptr %i.cv, align 8, !dbg !12428
    #dbg_value(i64 %.sroa.02.1.lcssa, !12078, !DIExpression(), !12083)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !12429
  store i8 %.sroa.021.0, ptr %i.cw, align 1, !dbg !12430
    #dbg_value(i64 %.sroa.02.1.lcssa, !12005, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12067)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !12431

bb.r:                                             ; preds = %.lr.ph106
    #dbg_value(i64 %i.cs, !12070, !DIExpression(), !12073)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cs, !dbg !12432
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !12433, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.cy, !12014, !DIExpression(), !12244)
    #dbg_value(i64 %i.cy, !12223, !DIExpression(), !12246)
  %i.cz = lshr i64 %i.cy, 1, !dbg !12434          ; 5 uses
    #dbg_value(i64 %.sroa.023.1104, !12223, !DIExpression(), !12248)
  %i.da = lshr i64 %.sroa.023.1104, 1, !dbg !12435 ; 3 uses
  %i.db = add nuw i64 %i.cz, %i.da, !dbg !12436   ; 5 uses
    #dbg_value(i64 %i.db, !12015, !DIExpression(), !12249)
  %i.dc = sub i64 %.sroa.09.0, %i.db, !dbg !12437
    #dbg_value(i64 %i.dc, !12016, !DIExpression(), !12250)
    #dbg_value(i64 %i.dc, !12034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12038)
    #dbg_value(i64 %i.dc, !12251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12258)
    #dbg_value(i64 %i.dc, !12087, !DIExpression(), !12260)
    #dbg_value(i64 %.sroa.09.0, !12034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12038)
    #dbg_value(i64 %.sroa.09.0, !12251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12258)
    #dbg_value(ptr %0, !12254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12258)
    #dbg_value(ptr %0, !12088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12260)
    #dbg_value(i64 %1, !12254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12258)
    #dbg_value(i64 %1, !12088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12260)
end_hunk_7
