Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.06?download=true
inline.NumInlined: 353
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata:bb.a
  %i.o = load i64, ptr %i.q, align 4, !dbg !6954
  store i64 %i.o, ptr %.sroa.0.0.i15, align 4, !dbg !6954
    #dbg_value(ptr %i.q, !6872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6772)
  %i.p = icmp eq ptr %i.q, %0, !dbg !6955
  br i1 %i.p, label %._crit_edge17, label %.lr.ph16, !dbg !6955

.lr.ph16:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i15 = phi ptr [ %i.q, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0.i15, !6900, !DIExpression(), !6784)
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.0.i15, i64 -8, !dbg !6956 ; 4 uses
    #dbg_value(ptr %i.q, !6870, !DIExpression(), !6785)
    #dbg_value(ptr %i.q, !6900, !DIExpression(), !6784)
  %.val18.i = load i32, ptr %i.q, align 4, !dbg !6957, !range !6907, !noundef !1173 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.0.i15, i64 -4, !dbg !6957
  %.val19.i = load i32, ptr %i.r, align 4, !dbg !6957
    #dbg_value(ptr poison, !6908, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6806)
    #dbg_value(ptr poison, !6908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6806)
    #dbg_value(ptr poison, !6914, !DIExpression(), !6806)
    #dbg_value(ptr poison, !6919, !DIExpression(), !6808)
    #dbg_value(ptr poison, !6921, !DIExpression(), !6808)
    #dbg_declare(ptr poison, !6926, !DIExpression(), !6810)
    #dbg_value(ptr poison, !6930, !DIExpression(), !6812)
    #dbg_value(ptr poison, !6934, !DIExpression(), !6812)
    #dbg_value(ptr poison, !6936, !DIExpression(), !6814)
    #dbg_value(ptr poison, !6940, !DIExpression(), !6814)
  %i.s = icmp eq i32 %.val18.i, %i.e, !dbg !6958
    #dbg_value(i8 poison, !6927, !DIExpression(), !6815)
  %i.t = icmp ugt i32 %.val19.i, %i.g, !dbg !6959
  %i.u = icmp samesign ugt i32 %.val18.i, %i.e, !dbg !6959
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u, !dbg !6958
  br i1 %i.v, label %.preheader, label %._crit_edge17, !dbg !6957

._crit_edge17:                                    ; preds = %.preheader, %.lr.ph16, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i15, %.lr.ph16 ], !dbg !6960
    #dbg_value(ptr undef, !6890, !DIExpression(), !6767)
    #dbg_value(ptr undef, !6886, !DIExpression(), !6766)
    #dbg_value(ptr undef, !6894, !DIExpression(), !6775)
    #dbg_value(ptr %.sroa.0.0.i.lcssa, !6897, !DIExpression(), !6775)
    #dbg_value(i64 1, !6898, !DIExpression(), !6775)
  store i64 %.val20.i, ptr %.sroa.0.0.i.lcssa, align 4, !dbg !6961, !noalias !6943
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6962

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 8, !dbg !6963 ; 2 uses
    #dbg_value(ptr %i.w, !6850, !DIExpression(), !6857)
    #dbg_value(ptr %i.w, !6841, !DIExpression(), !6864)
  %.not = icmp eq ptr %i.w, %i.b, !dbg !6947
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !6947
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #7 !dbg !6968 {
bb.a:
    #dbg_value(ptr %0, !6972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6980)
    #dbg_value(i64 %1, !6972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6980)
    #dbg_value(i64 %2, !6973, !DIExpression(), !6980)
    #dbg_value(i64 %2, !6981, !DIExpression(), !6986)
    #dbg_value(ptr %3, !6974, !DIExpression(), !6980)
    #dbg_value(i64 1, !6983, !DIExpression(), !6988)
    #dbg_value(i64 %1, !6975, !DIExpression(), !6989)
    #dbg_value(i64 %1, !6981, !DIExpression(), !6991)
  %i.a = add i64 %2, -1, !dbg !6995
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !6995
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !6995

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !6996
  unreachable, !dbg !6996

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6976, !DIExpression(), !6992)
    #dbg_value(ptr %0, !6982, !DIExpression(), !6991)
    #dbg_value(ptr %0, !6982, !DIExpression(), !6986)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1, !dbg !6997
    #dbg_value(ptr %i.b, !6977, !DIExpression(), !6993)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !6978, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6994)
    #dbg_value(!DIArgList(ptr %0, i64 %2), !6982, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6988)
  %.not11 = icmp samesign eq i64 %2, %1, !dbg !6998
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader, !dbg !6998

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2, !dbg !6999
    #dbg_value(ptr %i.c, !6978, !DIExpression(), !6994)
    #dbg_value(ptr %i.c, !6982, !DIExpression(), !6988)
  br label %.lr.ph, !dbg !6998

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void, !dbg !7000

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.012 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
    #dbg_value(ptr %.sroa.0.012, !6982, !DIExpression(), !6988)
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata(ptr noundef %0, ptr noundef %.sroa.0.012), !dbg !7001
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 32, !dbg !7002 ; 2 uses
    #dbg_value(ptr %i.d, !6982, !DIExpression(), !6988)
    #dbg_value(ptr %i.d, !6978, !DIExpression(), !6994)
  %.not = icmp eq ptr %i.d, %i.b, !dbg !6998
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !6998
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYBW_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7025 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !7633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7683)
    #dbg_value(ptr %0, !7684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7688)
    #dbg_value(ptr %0, !7689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7694)
    #dbg_value(ptr %0, !7695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7702)
    #dbg_value(i64 %1, !7633, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7683)
    #dbg_value(i64 %1, !7684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7688)
    #dbg_value(i64 %1, !7689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7694)
    #dbg_value(i64 %1, !7695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7702)
    #dbg_value(ptr %2, !7634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7683)
    #dbg_value(i64 %3, !7634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7683)
    #dbg_value(i1 %4, !7635, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7683)
    #dbg_value(ptr %5, !7636, !DIExpression(), !7683)
    #dbg_declare(ptr %i.b, !7641, !DIExpression(), !7703)
    #dbg_declare(ptr %i.a, !7644, !DIExpression(), !7704)
    #dbg_value(i64 4611686018427387904, !7705, !DIExpression(), !7715)
    #dbg_value(i64 64, !7720, !DIExpression(), !7724)
    #dbg_value(i64 %1, !7637, !DIExpression(), !7725)
    #dbg_value(i64 %1, !7718, !DIExpression(), !7726)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !8188
  br i1 %i.c, label %bb.ae, label %bb.b, !dbg !8188

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !7709, !DIExpression(), !7715)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !8189
    #dbg_value(i64 %i.d, !7710, !DIExpression(), !7727)
  %i.e = urem i64 4611686018427387904, %1, !dbg !8190
    #dbg_value(i64 %i.e, !7711, !DIExpression(), !7728)
  %.not = icmp ne i64 %i.e, 0, !dbg !8191
  %i.f = zext i1 %.not to i64, !dbg !8191
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !8191 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !7638, !DIExpression(), !7729)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !8192
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !8192

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !8193
    #dbg_value(i64 %i.h, !7639, !DIExpression(), !7730)
  br label %bb.e, !dbg !8193

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !8194
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !8195
    #dbg_value(i64 %i.j, !7721, !DIExpression(), !7724)
    #dbg_value(ptr undef, !7731, !DIExpression(DW_OP_deref), !7037)
    #dbg_value(ptr undef, !7732, !DIExpression(DW_OP_deref), !7037)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !8196
    #dbg_value(i64 %..i, !7639, !DIExpression(), !7730)
  br label %bb.e, !dbg !8197

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !7729 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !7639, !DIExpression(), !7730)
    #dbg_value(i64 0, !7640, !DIExpression(), !7734)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8198
    #dbg_value(ptr %i.b, !7643, !DIExpression(), !7735)
    #dbg_value(ptr %i.b, !7736, !DIExpression(), !7744)
    #dbg_value(ptr %i.b, !7736, !DIExpression(), !7746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8199
    #dbg_value(ptr %i.a, !7645, !DIExpression(), !7747)
    #dbg_value(ptr %i.a, !7748, !DIExpression(), !7752)
    #dbg_value(ptr %i.a, !7748, !DIExpression(), !7754)
    #dbg_value(i64 0, !7646, !DIExpression(), !7755)
    #dbg_value(i64 1, !7647, !DIExpression(), !7756)
  %.not27.i80155 = icmp ugt i64 %.sroa.01.0, 2
  %.not27.i80160 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !8200

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ], !dbg !7755 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gu, %bb.aa ], !dbg !7747 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gs, %bb.aa ], !dbg !7730 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !7640, !DIExpression(), !7734)
    #dbg_value(i64 %.sroa.09.0, !7646, !DIExpression(), !7755)
    #dbg_value(i64 %.sroa.023.0, !7647, !DIExpression(), !7756)
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !8201 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !8201

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB13_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.021.0 = phi i8 [ %i.cs, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB13_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit ], [ 0, %bb.f ], !dbg !7757 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB13_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit ], [ 1, %bb.f ], !dbg !7757 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !7648, !DIExpression(), !7757)
    #dbg_value(i8 %.sroa.021.0, !7649, !DIExpression(), !7757)
    #dbg_value(i64 %.sroa.02.0, !7640, !DIExpression(), !7734)
    #dbg_value(i64 %.sroa.023.0, !7647, !DIExpression(), !7756)
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !8202
  br i1 %i.l, label %.lr.ph117, label %._crit_edge, !dbg !8202

.lr.ph117:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r, !dbg !8202

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !7685, !DIExpression(), !7688)
    #dbg_value(i64 %.sroa.09.0, !7690, !DIExpression(), !7694)
    #dbg_value(i64 %.sroa.09.0, !7758, !DIExpression(), !7763)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !8203 ; 11 uses
    #dbg_value(i64 %i.n, !7691, !DIExpression(), !7764)
    #dbg_value(i64 %i.n, !7760, !DIExpression(), !7763)
    #dbg_value(ptr %0, !7759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7763)
    #dbg_value(i64 %1, !7759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7763)
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0, !dbg !8204 ; 11 uses
    #dbg_value(ptr %i.o, !7765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7046)
    #dbg_value(i64 %i.n, !7765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7046)
    #dbg_value(ptr %2, !7768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7046)
    #dbg_value(i64 %3, !7768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7046)
    #dbg_value(i64 %.sroa.01.0, !7769, !DIExpression(), !7046)
    #dbg_value(i64 %.sroa.01.0, !7777, !DIExpression(), !7049)
    #dbg_value(i1 %4, !7770, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7046)
    #dbg_value(ptr %5, !7771, !DIExpression(), !7046)
    #dbg_value(i64 %i.n, !7772, !DIExpression(), !7050)
    #dbg_value(i64 %i.n, !7778, !DIExpression(), !7052)
    #dbg_value(i64 %i.n, !7778, !DIExpression(), !7049)
  %.not.i79 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !8205
  br i1 %.not.i79, label %bb.i, label %bb.j, !dbg !8205

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread158, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !8206

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !7781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7058)
    #dbg_value(ptr %i.o, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7061)
    #dbg_value(ptr %i.o, !7796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7065)
    #dbg_value(ptr %i.o, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7067)
    #dbg_value(ptr %i.o, !7796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7069)
    #dbg_value(ptr %i.o, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7071)
    #dbg_value(ptr %i.o, !7796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7073)
    #dbg_value(ptr %i.o, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7075)
    #dbg_value(ptr %i.o, !7796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7077)
    #dbg_value(ptr %i.o, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7079)
    #dbg_value(ptr %i.o, !7796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7081)
    #dbg_value(ptr %i.o, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7083)
    #dbg_value(ptr %i.o, !7796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7085)
    #dbg_value(i64 %i.n, !7781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7058)
    #dbg_value(i64 %i.n, !7789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7061)
    #dbg_value(i64 %i.n, !7796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7065)
    #dbg_value(i64 %i.n, !7789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7067)
    #dbg_value(i64 %i.n, !7796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7069)
    #dbg_value(i64 %i.n, !7789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7071)
    #dbg_value(i64 %i.n, !7796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7073)
    #dbg_value(i64 %i.n, !7789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7075)
    #dbg_value(i64 %i.n, !7796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7077)
    #dbg_value(i64 %i.n, !7789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7079)
    #dbg_value(i64 %i.n, !7796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7081)
    #dbg_value(i64 %i.n, !7789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7083)
    #dbg_value(i64 %i.n, !7796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7085)
    #dbg_value(ptr %5, !7784, !DIExpression(), !7058)
    #dbg_value(i64 1, !7792, !DIExpression(), !7061)
    #dbg_value(i64 1, !7802, !DIExpression(), !7065)
    #dbg_value(i64 0, !7792, !DIExpression(), !7067)
    #dbg_value(i64 0, !7802, !DIExpression(), !7069)
    #dbg_value(i64 %i.n, !7785, !DIExpression(), !7086)
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !8207
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7Literal7reverseCs9GYDdpCSJ4S_14regex_automata.exit, label %bb.k, !dbg !8207

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !7786, !DIExpression(), !7087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7810), !dbg !8208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7811), !dbg !8208
    #dbg_value(ptr %i.o, !2552, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7092)
    #dbg_value(ptr %i.o, !2552, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7092)
    #dbg_value(ptr poison, !2561, !DIExpression(), !7092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7812), !dbg !8209, !noalias !7813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7814), !dbg !8209, !noalias !7813
    #dbg_value(ptr %i.o, !2567, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !7100)
    #dbg_value(ptr %i.o, !2569, !DIExpression(), !7100)
    #dbg_declare(ptr poison, !2578, !DIExpression(), !7102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7815), !dbg !8210, !noalias !7813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7816), !dbg !8210, !noalias !7813
    #dbg_value(ptr %i.o, !2597, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !7107)
    #dbg_value(ptr %i.o, !2601, !DIExpression(), !7107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7817), !dbg !8211, !noalias !7813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7818), !dbg !8211, !noalias !7813
    #dbg_value(ptr %i.o, !2603, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !7112)
    #dbg_value(ptr %i.o, !2607, !DIExpression(), !7112)
    #dbg_value(ptr %i.o, !2612, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !7114)
    #dbg_value(ptr %i.o, !2618, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !7116)
    #dbg_value(ptr %i.o, !2626, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !7118)
    #dbg_value(ptr %i.o, !2629, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !7120)
    #dbg_value(ptr %i.o, !2616, !DIExpression(), !7121)
    #dbg_value(ptr %i.o, !2618, !DIExpression(), !7123)
    #dbg_value(ptr %i.o, !2626, !DIExpression(), !7125)
    #dbg_value(ptr %i.o, !2629, !DIExpression(), !7127)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40, !dbg !8212
  %i.r = load ptr, ptr %i.q, align 8, !dbg !8212, !alias.scope !7819, !noalias !7820, !nonnull !1173, !noundef !1173 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48, !dbg !8213
  %i.t = load i64, ptr %i.s, align 8, !dbg !8213, !alias.scope !7819, !noalias !7820, !noundef !1173 ; 4 uses
    #dbg_value(i64 %i.t, !2651, !DIExpression(), !7133)
    #dbg_value(ptr %i.r, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7134)
    #dbg_value(ptr %i.r, !2656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7135)
    #dbg_value(i64 %i.t, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7134)
    #dbg_value(i64 %i.t, !2656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7135)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !8214
  %i.v = load ptr, ptr %i.u, align 8, !dbg !8214, !alias.scope !7821, !noalias !7822, !nonnull !1173, !noundef !1173
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !8215
  %i.x = load i64, ptr %i.w, align 8, !dbg !8215, !alias.scope !7821, !noalias !7822, !noundef !1173 ; 2 uses
    #dbg_value(ptr %i.v, !2670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7134)
    #dbg_value(ptr %i.v, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7135)
    #dbg_value(i64 %i.x, !2670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7134)
    #dbg_value(i64 %i.x, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7135)
  %i.y = sub i64 %i.t, %i.x, !dbg !8216
    #dbg_value(i64 %i.y, !2658, !DIExpression(), !7139)
  %spec.store.select.i.i.i.i91 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x), !dbg !8217
    #dbg_value(i64 %spec.store.select.i.i.i.i91, !2651, !DIExpression(), !7133)
    #dbg_value(ptr %i.r, !2659, !DIExpression(), !7140)
    #dbg_value(ptr %i.v, !2660, !DIExpression(), !7141)
  %i.z = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i.i91), !dbg !8218, !noalias !7823 ; 2 uses
  %i.aa = sext i32 %i.z to i64, !dbg !8218
    #dbg_value(i64 %i.aa, !2661, !DIExpression(), !7142)
  %i.ab = icmp eq i32 %i.z, 0, !dbg !8219
  %spec.store.select1.i.i.i.i92 = select i1 %i.ab, i64 %i.y, i64 %i.aa, !dbg !8219 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i.i.i92, !2661, !DIExpression(), !7142)
  %i.ac = icmp eq i64 %spec.store.select1.i.i.i.i92, 0, !dbg !8220
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 56, !dbg !8220
  %i.ae = load i8, ptr %i.ad, align 8, !dbg !8220, !range !2675, !alias.scope !7824, !noalias !7825 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !8220
  %i.ag = load i8, ptr %i.af, align 8, !dbg !8220, !range !2675, !alias.scope !7826, !noalias !7827
    #dbg_value(i8 poison, !2593, !DIExpression(), !7143)
  %i.ah = icmp samesign ult i8 %i.ae, %i.ag, !dbg !8221
  %i.ai = icmp slt i64 %spec.store.select1.i.i.i.i92, 0, !dbg !8221
  %i.aj = select i1 %i.ac, i1 %i.ah, i1 %i.ai, !dbg !8220 ; 2 uses
    #dbg_value(i1 %i.aj, !7787, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7144)
    #dbg_value(i64 2, !7786, !DIExpression(), !7087)
    #dbg_value(i64 2, !7786, !DIExpression(), !7087)
  %.not124 = icmp eq i64 %i.n, 2, !dbg !8222      ; 2 uses
  br i1 %i.aj, label %.preheader, label %.preheader102, !dbg !8223

.preheader102:                                    ; preds = %bb.k
  br i1 %.not124, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread, label %.lr.ph, !dbg !8224

.preheader:                                       ; preds = %bb.k
  br i1 %.not124, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread158, label %.lr.ph111, !dbg !8225

.lr.ph:                                           ; preds = %.preheader102, %bb.l
  %i.ak = phi i8 [ %i.ay, %bb.l ], [ %i.ae, %.preheader102 ], !dbg !8226
  %i.al = phi i64 [ %i.ar, %bb.l ], [ %i.t, %.preheader102 ], !dbg !8227 ; 2 uses
  %i.am = phi ptr [ %i.ap, %bb.l ], [ %i.r, %.preheader102 ], !dbg !8228
  %.sroa.01.0.i.i107 = phi i64 [ %i.bc, %bb.l ], [ 2, %.preheader102 ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i107, !7786, !DIExpression(), !7087)
    #dbg_value(i64 %.sroa.01.0.i.i107, !7793, !DIExpression(), !7079)
    #dbg_value(i64 %.sroa.01.0.i.i107, !7803, !DIExpression(), !7081)
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i107, !dbg !8229 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i107, !7793, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7083)
    #dbg_value(i64 %.sroa.01.0.i.i107, !7803, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7828), !dbg !8230
    #dbg_value(ptr %i.an, !2552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7158)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i107), !2552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7158)
    #dbg_value(ptr poison, !2561, !DIExpression(), !7158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7830), !dbg !8231, !noalias !7813
    #dbg_value(ptr %i.an, !2567, !DIExpression(), !7161)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i107), !2569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7161)
    #dbg_declare(ptr poison, !2578, !DIExpression(), !7163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7831), !dbg !8232, !noalias !7813
    #dbg_value(ptr %i.an, !2597, !DIExpression(), !7166)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i107), !2601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7832), !dbg !8233, !noalias !7813
    #dbg_value(ptr %i.an, !2603, !DIExpression(), !7169)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i107), !2607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7169)
    #dbg_value(ptr %i.an, !2612, !DIExpression(), !7170)
    #dbg_value(ptr %i.an, !2618, !DIExpression(), !7172)
    #dbg_value(ptr %i.an, !2626, !DIExpression(), !7174)
    #dbg_value(ptr %i.an, !2629, !DIExpression(), !7176)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i107), !2616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7177)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i107), !2618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7178)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i107), !2626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7179)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.0.i.i107), !2629, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7180)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !8234
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !8234, !alias.scope !7833, !noalias !7834, !nonnull !1173, !noundef !1173 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !8235
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !8235, !alias.scope !7833, !noalias !7834, !noundef !1173 ; 3 uses
    #dbg_value(i64 %i.ar, !2651, !DIExpression(), !7190)
    #dbg_value(ptr %i.ap, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7191)
    #dbg_value(ptr %i.ap, !2656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7192)
    #dbg_value(i64 %i.ar, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7191)
    #dbg_value(i64 %i.ar, !2656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7192)
    #dbg_value(ptr %i.am, !2670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7191)
    #dbg_value(ptr %i.am, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7192)
    #dbg_value(i64 %i.al, !2670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7191)
    #dbg_value(i64 %i.al, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7192)
  %i.as = sub i64 %i.ar, %i.al, !dbg !8236
    #dbg_value(i64 %i.as, !2658, !DIExpression(), !7193)
  %spec.store.select.i.i.i.i89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.al), !dbg !8237
    #dbg_value(i64 %spec.store.select.i.i.i.i89, !2651, !DIExpression(), !7190)
    #dbg_value(ptr %i.ap, !2659, !DIExpression(), !7194)
    #dbg_value(ptr %i.am, !2660, !DIExpression(), !7195)
  %i.at = tail call i32 @memcmp(ptr nonnull %i.ap, ptr nonnull %i.am, i64 %spec.store.select.i.i.i.i89), !dbg !8238, !noalias !7835 ; 2 uses
  %i.au = sext i32 %i.at to i64, !dbg !8238
    #dbg_value(i64 %i.au, !2661, !DIExpression(), !7196)
  %i.av = icmp eq i32 %i.at, 0, !dbg !8239
  %spec.store.select1.i.i.i.i90 = select i1 %i.av, i64 %i.as, i64 %i.au, !dbg !8239 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i.i.i90, !2661, !DIExpression(), !7196)
  %i.aw = icmp eq i64 %spec.store.select1.i.i.i.i90, 0, !dbg !8226
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !8226
  %i.ay = load i8, ptr %i.ax, align 8, !dbg !8226, !range !2675, !alias.scope !7836, !noalias !7837 ; 2 uses
    #dbg_value(i8 poison, !2593, !DIExpression(), !7197)
  %i.az = icmp samesign ult i8 %i.ay, %i.ak, !dbg !8240
  %i.ba = icmp slt i64 %spec.store.select1.i.i.i.i90, 0, !dbg !8240
  %i.bb = select i1 %i.aw, i1 %i.az, i1 %i.ba, !dbg !8226
  br i1 %i.bb, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i, label %bb.l, !dbg !8230

bb.l:                                             ; preds = %.lr.ph
  %i.bc = add nuw i64 %.sroa.01.0.i.i107, 1, !dbg !8241 ; 2 uses
    #dbg_value(i64 %i.bc, !7786, !DIExpression(), !7087)
  %exitcond.not = icmp eq i64 %i.bc, %i.n, !dbg !8224
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i, label %.lr.ph, !dbg !8224

.lr.ph111:                                        ; preds = %.preheader, %bb.m
  %i.bd = phi i8 [ %i.br, %bb.m ], [ %i.ae, %.preheader ], !dbg !8242
  %i.be = phi i64 [ %i.bk, %bb.m ], [ %i.t, %.preheader ], !dbg !8243 ; 2 uses
  %i.bf = phi ptr [ %i.bi, %bb.m ], [ %i.r, %.preheader ], !dbg !8244
  %.sroa.01.1.i.i110 = phi i64 [ %i.bv, %bb.m ], [ 2, %.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i110, !7786, !DIExpression(), !7087)
    #dbg_value(i64 %.sroa.01.1.i.i110, !7793, !DIExpression(), !7071)
    #dbg_value(i64 %.sroa.01.1.i.i110, !7803, !DIExpression(), !7073)
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i110, !dbg !8245 ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i110, !7793, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7075)
    #dbg_value(i64 %.sroa.01.1.i.i110, !7803, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !7077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7838), !dbg !8246
    #dbg_value(ptr %i.bg, !2552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7211)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i110), !2552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7211)
    #dbg_value(ptr poison, !2561, !DIExpression(), !7211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7839), !dbg !8247, !noalias !7813
    #dbg_value(ptr %i.bg, !2567, !DIExpression(), !7214)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i110), !2569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7214)
    #dbg_declare(ptr poison, !2578, !DIExpression(), !7216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7840), !dbg !8248, !noalias !7813
    #dbg_value(ptr %i.bg, !2597, !DIExpression(), !7219)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i110), !2601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7841), !dbg !8249, !noalias !7813
    #dbg_value(ptr %i.bg, !2603, !DIExpression(), !7222)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i110), !2607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7222)
    #dbg_value(ptr %i.bg, !2612, !DIExpression(), !7223)
    #dbg_value(ptr %i.bg, !2618, !DIExpression(), !7225)
    #dbg_value(ptr %i.bg, !2626, !DIExpression(), !7227)
    #dbg_value(ptr %i.bg, !2629, !DIExpression(), !7229)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i110), !2616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7230)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i110), !2618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7231)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i110), !2626, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7232)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.01.1.i.i110), !2629, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7233)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !8250
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !8250, !alias.scope !7842, !noalias !7843, !nonnull !1173, !noundef !1173 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !8251
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !8251, !alias.scope !7842, !noalias !7843, !noundef !1173 ; 3 uses
    #dbg_value(i64 %i.bk, !2651, !DIExpression(), !7243)
    #dbg_value(ptr %i.bi, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7244)
    #dbg_value(ptr %i.bi, !2656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7245)
    #dbg_value(i64 %i.bk, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7244)
    #dbg_value(i64 %i.bk, !2656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7245)
    #dbg_value(ptr %i.bf, !2670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7244)
    #dbg_value(ptr %i.bf, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7245)
    #dbg_value(i64 %i.be, !2670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7244)
    #dbg_value(i64 %i.be, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7245)
  %i.bl = sub i64 %i.bk, %i.be, !dbg !8252
    #dbg_value(i64 %i.bl, !2658, !DIExpression(), !7246)
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.be), !dbg !8253
    #dbg_value(i64 %spec.store.select.i.i.i.i, !2651, !DIExpression(), !7243)
    #dbg_value(ptr %i.bi, !2659, !DIExpression(), !7247)
    #dbg_value(ptr %i.bf, !2660, !DIExpression(), !7248)
  %i.bm = tail call i32 @memcmp(ptr nonnull %i.bi, ptr nonnull %i.bf, i64 %spec.store.select.i.i.i.i), !dbg !8254, !noalias !7844 ; 2 uses
  %i.bn = sext i32 %i.bm to i64, !dbg !8254
    #dbg_value(i64 %i.bn, !2661, !DIExpression(), !7249)
  %i.bo = icmp eq i32 %i.bm, 0, !dbg !8255
  %spec.store.select1.i.i.i.i = select i1 %i.bo, i64 %i.bl, i64 %i.bn, !dbg !8255 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i.i.i, !2661, !DIExpression(), !7249)
  %i.bp = icmp eq i64 %spec.store.select1.i.i.i.i, 0, !dbg !8242
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 24, !dbg !8242
  %i.br = load i8, ptr %i.bq, align 8, !dbg !8242, !range !2675, !alias.scope !7845, !noalias !7846 ; 2 uses
    #dbg_value(i8 poison, !2593, !DIExpression(), !7250)
  %i.bs = icmp samesign ult i8 %i.br, %i.bd, !dbg !8256
  %i.bt = icmp slt i64 %spec.store.select1.i.i.i.i, 0, !dbg !8256
  %i.bu = select i1 %i.bp, i1 %i.bs, i1 %i.bt, !dbg !8242
  br i1 %i.bu, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i, !dbg !8246

bb.m:                                             ; preds = %.lr.ph111
  %i.bv = add nuw i64 %.sroa.01.1.i.i110, 1, !dbg !8257 ; 2 uses
    #dbg_value(i64 %i.bv, !7786, !DIExpression(), !7087)
  %exitcond131.not = icmp eq i64 %i.bv, %i.n, !dbg !8225
  br i1 %exitcond131.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i, label %.lr.ph111, !dbg !8225

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph111
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i110, %.lr.ph111 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i107, %.lr.ph ], [ %i.n, %bb.l ], !dbg !8258 ; 5 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !7773, !DIExpression(), !7251)
    #dbg_value(i64 %.sroa.0.0.i.i, !7847, !DIExpression(), !7254)
    #dbg_value(i1 poison, !7774, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7251)
  %i.bw = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !8259
  tail call void @llvm.assume(i1 %i.bw), !dbg !8260
  %.not27.i80 = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !8261
  br i1 %.not27.i80, label %bb.i, label %bb.n, !dbg !8261

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread158: ; preds = %.preheader
    #dbg_value(i64 2, !7773, !DIExpression(), !7251)
    #dbg_value(i64 2, !7847, !DIExpression(), !7254)
    #dbg_value(i1 poison, !7774, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7251)
  br i1 %.not27.i80160, label %bb.i, label %.lr.ph.preheader.i.i, !dbg !8261

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread: ; preds = %.preheader102
    #dbg_value(i64 2, !7773, !DIExpression(), !7251)
    #dbg_value(i64 2, !7847, !DIExpression(), !7254)
    #dbg_value(i1 poison, !7774, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7251)
  br i1 %.not27.i80155, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7Literal7reverseCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8261

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i
    #dbg_value(i1 %i.aj, !7774, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7251)
    #dbg_value(ptr %i.o, !7852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7260)
    #dbg_value(ptr %i.o, !7861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7264)
    #dbg_value(i64 %.sroa.0.0.i.i, !7852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7260)
    #dbg_value(i64 %.sroa.0.0.i.i, !7861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7264)
  %i.bx = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
    #dbg_value(i64 %i.bx, !7855, !DIExpression(), !7265)
    #dbg_value(ptr %i.o, !7856, !DIExpression(), !7266)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.0.i.i), !7857, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7266)
    #dbg_value(ptr %i.o, !7858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7267)
    #dbg_value(i64 %i.bx, !7858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7267)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.bx, i64 %.sroa.0.0.i.i), !7859, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7267)
    #dbg_value(i64 %i.bx, !7859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7267)
    #dbg_value(ptr %i.o, !7871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7273)
    #dbg_value(i64 %i.bx, !7871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7273)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.bx, i64 %.sroa.0.0.i.i), !7875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7273)
    #dbg_value(i64 %i.bx, !7875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7273)
    #dbg_value(i64 %i.bx, !7876, !DIExpression(), !7273)
    #dbg_value(ptr %i.o, !7877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7274)
    #dbg_value(i64 %i.bx, !7877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7274)
    #dbg_value(i64 0, !7879, !DIExpression(), !7275)
  %.not.i.i = icmp ne i64 %i.bx, 0
  %or.cond.not = and i1 %.not.i.i, %i.aj, !dbg !8262
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7Literal7reverseCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8262

bb.o:                                             ; preds = %bb.i
    #dbg_value(ptr undef, !7731, !DIExpression(DW_OP_deref), !7277)
    #dbg_value(ptr undef, !7732, !DIExpression(DW_OP_deref), !7277)
  %..i88 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0), !dbg !8263
    #dbg_value(i64 %..i88, !7881, !DIExpression(), !7280)
  %i.by = shl nuw nsw i64 %..i88, 1, !dbg !8264
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB13_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8265

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !7777, !DIExpression(), !7052)
    #dbg_value(ptr undef, !7731, !DIExpression(DW_OP_deref), !7282)
    #dbg_value(ptr undef, !7732, !DIExpression(DW_OP_deref), !7282)
  %..i87 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32), !dbg !8266 ; 2 uses
    #dbg_value(i64 %..i87, !7775, !DIExpression(), !7283)
    #dbg_value(i64 %..i87, !7847, !DIExpression(), !7285)
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB15_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i87, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #26, !dbg !8267, !inline_history !7286
  %i.bz = shl nuw nsw i64 %..i87, 1, !dbg !8268
  %i.ca = or disjoint i64 %i.bz, 1, !dbg !8268
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB13_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8265

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7Literal7reverseCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralECs9GYDdpCSJ4S_14regex_automata.exit.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i97100 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread ], [ %.sroa.0.0.i.i156163167, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralECs9GYDdpCSJ4S_14regex_automata.exit.i.i ]
  %i.cb = shl nuw nsw i64 %.sroa.0.0.i.i97100, 1, !dbg !8269
  %i.cc = or disjoint i64 %i.cb, 1, !dbg !8269
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB13_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8270

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread158
  %i.cd = phi i64 [ %i.bx, %bb.n ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread158 ]
  %.sroa.0.0.i.i156163167 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB12_NtNtB8_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i.thread158 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i156163167, !dbg !8271
    #dbg_value(ptr %i.ce, !7857, !DIExpression(), !7266)
    #dbg_value(!DIArgList(ptr %i.ce, i64 0, i64 %i.cd), !7859, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7267)
    #dbg_value(!DIArgList(ptr %i.ce, i64 0, i64 %i.cd), !7875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7273)
  br label %.lr.ph.i.i86, !dbg !8272

.lr.ph.i.i86:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralECs9GYDdpCSJ4S_14regex_automata.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.027.i.i = phi i64 [ %i.cj, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.027.i.i, !7879, !DIExpression(), !7275)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.027.i.i), !7909, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !7301)
  %i.cf = xor i64 %.sroa.0.027.i.i, -1, !dbg !8273
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.027.i.i, !dbg !8274
    #dbg_value(ptr %i.cg, !7909, !DIExpression(), !7301)
  %i.ch = getelementptr [32 x i8], ptr %i.ce, i64 %i.cf, !dbg !8275
    #dbg_value(ptr %i.ch, !7910, !DIExpression(), !7301)
    #dbg_value(ptr %i.cg, !7903, !DIExpression(), !7302)
    #dbg_value(ptr %i.ch, !7904, !DIExpression(), !7302)
    #dbg_value(ptr %i.cg, !7897, !DIExpression(), !7303)
    #dbg_value(ptr %i.cg, !7887, !DIExpression(), !7304)
    #dbg_value(ptr %i.ch, !7898, !DIExpression(), !7303)
    #dbg_value(ptr %i.ch, !7888, !DIExpression(), !7304)
    #dbg_value(i64 1, !7899, !DIExpression(), !7303)
    #dbg_value(i64 1, !7889, !DIExpression(), !7304)
    #dbg_value(ptr %i.cg, !7890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7305)
    #dbg_value(i64 1, !7890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7305)
    #dbg_value(i64 32, !7891, !DIExpression(), !7306)
    #dbg_value(i64 32, !7892, !DIExpression(), !7307)
    #dbg_value(ptr %i.cg, !2811, !DIExpression(), !7308)
    #dbg_value(ptr %i.ch, !2812, !DIExpression(), !7308)
    #dbg_value(i64 32, !2813, !DIExpression(), !7308)
    #dbg_value(i64 32, !2814, !DIExpression(), !7309)
    #dbg_value(i64 0, !2816, !DIExpression(), !7310)
    #dbg_value(i64 4, !2815, !DIExpression(), !7311)
    #dbg_value(i64 4, !2817, !DIExpression(), !7312)
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9GYDdpCSJ4S_14regex_automata(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralECs9GYDdpCSJ4S_14regex_automata.exit.i.i unwind label %bb.q, !dbg !8272, !noalias !7813

bb.q:                                             ; preds = %.lr.ph.i.i86
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #23, !dbg !8276, !noalias !7813
  unreachable, !dbg !8276

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralECs9GYDdpCSJ4S_14regex_automata.exit.i.i: ; preds = %.lr.ph.i.i86
  %i.cj = add nuw nsw i64 %.sroa.0.027.i.i, 1, !dbg !8277 ; 2 uses
    #dbg_value(i64 %i.cj, !7879, !DIExpression(), !7275)
  %exitcond.not.i.i = icmp eq i64 %i.cj, %i.cd, !dbg !8278
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7Literal7reverseCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i86, !dbg !8278

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB13_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7Literal7reverseCs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.0.0.i81 = phi i64 [ %i.cc, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7Literal7reverseCs9GYDdpCSJ4S_14regex_automata.exit ], [ %i.ca, %bb.p ], [ %i.by, %bb.o ], !dbg !8279 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !7648, !DIExpression(), !7757)
    #dbg_value(i64 %.sroa.023.0, !7912, !DIExpression(), !7918)
  %i.ck = lshr i64 %.sroa.023.0, 1, !dbg !8280
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.ck), !7920, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7930)
    #dbg_value(i64 %.sroa.09.0, !7923, !DIExpression(), !7930)
    #dbg_value(i64 %.sroa.0.0.i81, !7912, !DIExpression(), !7932)
  %i.cl = lshr i64 %.sroa.0.0.i81, 1, !dbg !8281
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.cl), !7924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7930)
    #dbg_value(i64 %.sroa.0.0, !7925, !DIExpression(), !7930)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !8282 ; 2 uses
  %i.cm = sub nsw i64 %factor, %i.ck, !dbg !8282
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.ck), !7926, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !7934)
  %i.cn = add nuw nsw i64 %i.cl, %factor, !dbg !8283
    #dbg_value(i64 %i.cn, !7927, !DIExpression(), !7935)
  %i.co = mul i64 %i.cm, %.sroa.0.0, !dbg !8284
  %i.cp = mul i64 %i.cn, %.sroa.0.0, !dbg !8285
  %i.cq = xor i64 %i.cp, %i.co, !dbg !8286
    #dbg_value(i64 %i.cq, !7936, !DIExpression(), !7941)
  %i.cr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cq, i1 false), !dbg !8287
  %i.cs = trunc nuw nsw i64 %i.cr to i8, !dbg !8286
    #dbg_value(i8 %i.cs, !7649, !DIExpression(), !7757)
  br label %bb.g, !dbg !8288

bb.r:                                             ; preds = %.lr.ph117, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB16_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.02.1116 = phi i64 [ %.sroa.02.0, %.lr.ph117 ], [ %i.ct, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB16_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit ] ; 2 uses
  %.sroa.023.1115 = phi i64 [ %.sroa.023.0, %.lr.ph117 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB16_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1116, !7640, !DIExpression(), !7734)
    #dbg_value(i64 %.sroa.023.1115, !7647, !DIExpression(), !7756)
  %i.ct = add i64 %.sroa.02.1116, -1, !dbg !8289  ; 4 uses
    #dbg_value(i64 %i.ct, !7749, !DIExpression(), !7752)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ct, !dbg !8290
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !8291, !noundef !1173
  %.not76 = icmp ult i8 %i.cv, %.sroa.021.0, !dbg !8291
  br i1 %.not76, label %._crit_edge, label %bb.s, !dbg !8291

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB16_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1115, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB16_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !7755 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1116, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB16_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !7730 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !7739, !DIExpression(), !7746)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !8292
  store i64 %.sroa.023.1.lcssa, ptr %i.cw, align 8, !dbg !8293
    #dbg_value(i64 %.sroa.02.1.lcssa, !7749, !DIExpression(), !7754)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !8294
  store i8 %.sroa.021.0, ptr %i.cx, align 1, !dbg !8295
    #dbg_value(i64 %.sroa.02.1.lcssa, !7640, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7734)
  br i1 %i.k, label %bb.aa, label %bb.ab, !dbg !8296

bb.s:                                             ; preds = %bb.r
    #dbg_value(i64 %i.ct, !7739, !DIExpression(), !7744)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ct, !dbg !8297
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !8298, !noundef !1173 ; 3 uses
    #dbg_value(i64 %i.cz, !7650, !DIExpression(), !7943)
    #dbg_value(i64 %i.cz, !7912, !DIExpression(), !7945)
  %i.da = lshr i64 %i.cz, 1, !dbg !8299           ; 8 uses
    #dbg_value(i64 %.sroa.023.1115, !7912, !DIExpression(), !7947)
  %i.db = lshr i64 %.sroa.023.1115, 1, !dbg !8300 ; 6 uses
  %i.dc = add nuw i64 %i.da, %i.db, !dbg !8301    ; 4 uses
    #dbg_value(i64 %i.dc, !7651, !DIExpression(), !7948)
  %i.dd = sub i64 %.sroa.09.0, %i.dc, !dbg !8302
    #dbg_value(i64 %i.dd, !7652, !DIExpression(), !7949)
    #dbg_value(i64 %i.dd, !7698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7702)
    #dbg_value(i64 %i.dd, !7950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7957)
    #dbg_value(i64 %i.dd, !7758, !DIExpression(), !7959)
    #dbg_value(i64 %.sroa.09.0, !7698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7702)
    #dbg_value(i64 %.sroa.09.0, !7950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7957)
    #dbg_value(ptr %0, !7953, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7957)
    #dbg_value(ptr %0, !7759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7959)
    #dbg_value(i64 %1, !7953, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7957)
    #dbg_value(i64 %1, !7759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7959)
    #dbg_value(i64 %i.dc, !7954, !DIExpression(), !7960)
    #dbg_value(i64 %i.dc, !7760, !DIExpression(), !7959)
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.dd, !dbg !8303 ; 6 uses
    #dbg_value(ptr %i.de, !7653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7961)
    #dbg_value(i64 %i.dc, !7653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7961)
end_hunk_0
begin_hunk_1_@_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_10Transition7matches(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEE6resizeB1n_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1s_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE6resizeBL_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr dead_on_unwind noalias nofree noundef writable sret([448 x i8]) align 8 captures(none) dereferenceable(448)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler6syntax(ptr noalias nofree noundef align 8 dereferenceable(448), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias nofree noundef align 8 dereferenceable(448), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9GYDdpCSJ4S_14regex_automata(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA16add_nfa_state_id(ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_needNCNvB8_14add_nfa_states0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs5_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA9look_need(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_14add_nfa_statess_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB21_3rev3RevINtNtNtB25_5slice4iter4IterBG_EEEEBM_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_start0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts0_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts1_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts3_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts2_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts4_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts5_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts6_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts7_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts8_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_starts9_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_25set_lookbehind_from_startsa_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_4Repr18iter_nfa_state_idsNCNvB8_4next0EBc_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State9look_need(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State9look_have(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB2_4Unit7is_byte(i32, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB2_4Unit12is_word_byte(i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_17StateBuilderEmpty12into_matches(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_4nexts_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_4nexts0_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_7ReprVec13set_look_haveNCNvB8_4nexts1_0EBc_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_10Transition12matches_unit(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_19StateBuilderMatches9look_have(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_19StateBuilderMatches20add_match_pattern_id(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_19StateBuilderMatches8into_nfa(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search14MatchErrorKindENtB6_5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRuNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search9MatchKindNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionIBx_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEENtB6_5Debug3fmtB12_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFANtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind }
attributes #26 = { noinline }
attributes #27 = { noinline noreturn }
attributes #28 = { inlinehint }
attributes #29 = { noreturn }

!llvm.module.flags = !{!972, !973, !974, !975, !976}
!llvm.ident = !{!977}
!llvm.dbg.cu = !{!141}

!0 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !1172, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, identifier: "acf2f59e419f8ece206b5bb9ec731cfb")
!1 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LookSet", scope: !995, file: !979, size: 32, align: 32, flags: DIFlagPublic, elements: !1199, templateParams: !1173, identifier: "f09ed47af84d601a2824a9368a4bd0cc")
!2 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DebugByte", scope: !1202, file: !979, size: 8, align: 8, flags: DIFlagPublic, elements: !1204, templateParams: !1173, identifier: "de4d72bcf30ae7a226c577ff81b27df3")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LookMatcher", scope: !995, file: !979, size: 8, align: 8, flags: DIFlagPublic, elements: !1201, templateParams: !1173, identifier: "870d261d85539ec11f9d1dacfd7dcc06")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ByteClasses", scope: !1205, file: !979, size: 2048, align: 8, flags: DIFlagPublic, elements: !1210, templateParams: !1173, identifier: "a4ee7afb2260dcd1d7fda10035cc8e53")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BitSet", scope: !1205, file: !979, size: 256, align: 128, flags: DIFlagPrivate, elements: !1220, templateParams: !1173, identifier: "2aae58fec874d7b28d15cf801d286324")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ByteSet", scope: !1205, file: !979, size: 256, align: 128, flags: DIFlagProtected, elements: !1214, templateParams: !1173, identifier: "4983bad405d3ca8a14dec381840dc081")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ByteClassSet", scope: !1205, file: !979, size: 256, align: 128, flags: DIFlagProtected, elements: !1212, templateParams: !1173, identifier: "50d0cc3606eb0570ae49af7ce486c74f")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<str>", scope: !1167, file: !979, size: 128, align: 64, flags: DIFlagPrivate, elements: !1276, templateParams: !1278, identifier: "ef329a168284e71bf983c8eea8b59211")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<str>>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1269, identifier: "d547b1abfcc0e231cde3c2f36b0ca423")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const alloc::sync::ArcInner<str>", file: !979, size: 128, align: 64, elements: !1286, templateParams: !1173, identifier: "1f3622a3f3caf14c41896c6bb743ef4d")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<str>>", scope: !1280, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1282, templateParams: !1269, identifier: "78d9407fb59064adcddafa9cfb041098")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<str, alloc::alloc::Global>", scope: !1167, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1267, templateParams: !1288, identifier: "67bfbd32427051d34b41dabbeaec4a0b")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !16, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1263, templateParams: !1290, identifier: "ab8135c6fa245b67ecd345f80b9268fd")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !16, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1173, templateParams: !1290, identifier: "f1c95ad922305d07d716966ed87f7d40")
!15 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !16, file: !979, size: 128, align: 64, elements: !1261, templateParams: !1173, identifier: "88bc6c98ea30f0bbcd12e76c87ee529", discriminator: !1291)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::sync::Arc<str, alloc::alloc::Global>>", scope: !1257, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1258, templateParams: !1173, identifier: "2d6bf667ef5b399baa37068f495cee1b")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1256, identifier: "f392860a193314af46bff38e351a8461")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !1243, file: !979, size: 128, align: 64, flags: DIFlagProtected, elements: !1254, templateParams: !1292, identifier: "ae7381280946339aed4c8caba72343b3")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !1239, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1251, templateParams: !1292, identifier: "9e701d91c59a546aedb05da475a0412e")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1248, identifier: "7815b9de680d400e69fb61358265e8b8")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UsizeNoHighBit", scope: !1297, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1299, templateParams: !1173, identifier: "329b1c7c0e215c27eefbfaa40cd335a2")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u8>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1305, identifier: "bd70c2da2522e1cd983da18d1f39af0e")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !1280, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1308, templateParams: !1305, identifier: "8a7839ebdf32074e4948b18c100f5e94")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u8>", scope: !1300, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1303, templateParams: !1305, identifier: "b5bcf37829bc203ddbd0a2d9a69d5811")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVecInner<alloc::alloc::Global>", scope: !1243, file: !979, size: 128, align: 64, flags: DIFlagPrivate, elements: !1296, templateParams: !1309, identifier: "dcb711ab33d416032286001d4e26fb02")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::alloc::Global>", scope: !1243, file: !979, size: 128, align: 64, flags: DIFlagProtected, elements: !1246, templateParams: !1310, identifier: "2230d2faa5bd8a0d1085dfd66162b34f")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::alloc::Global>", scope: !1239, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1242, templateParams: !1310, identifier: "d24e176d438c359bafb5f56496fc88ac")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SmallIndex", scope: !1340, file: !979, size: 32, align: 32, flags: DIFlagPublic, elements: !1342, templateParams: !1173, identifier: "cf8e097f66c81b6cd9b5bb3b96a625ea")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex)", file: !979, size: 192, align: 64, elements: !1339, templateParams: !1173, identifier: "b2ea2a517f1b43db4b5b32209c4f7c94")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex)>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1336, identifier: "bb5b0cf3fe645604949dcda8ac438991")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTableInner", scope: !1330, file: !979, size: 256, align: 64, flags: DIFlagPrivate, elements: !1347, templateParams: !1173, identifier: "266c6f770ca3cbce9d38846af50e8955")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTable<(alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex), alloc::alloc::Global>", scope: !1330, file: !979, size: 256, align: 64, flags: DIFlagProtected, elements: !1334, templateParams: !1348, identifier: "4687a921d5e75fa4379c2187cb5d920c")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RandomState", scope: !1350, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1353, templateParams: !1173, identifier: "bb9a6f5166cb9522506642678cf807b")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>", scope: !1326, file: !979, size: 384, align: 64, flags: DIFlagPublic, elements: !1329, templateParams: !1357, identifier: "ac4163aa49115198f17fd5e714555aef")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>", scope: !1322, file: !979, size: 384, align: 64, flags: DIFlagPublic, elements: !1324, templateParams: !1357, identifier: "835765384b2bd65f950021229dddc429")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1318, identifier: "5fc43002ad43d525de783a133e7ef965")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", scope: !1243, file: !979, size: 128, align: 64, flags: DIFlagProtected, elements: !1316, templateParams: !1358, identifier: "6713ef7ba3567f6fa1c6abc4b63db131")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", scope: !1239, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1313, templateParams: !1358, identifier: "7ed2b66852616810edf4bdfbce31822a")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex)", file: !979, size: 64, align: 32, elements: !1369, templateParams: !1173, identifier: "a5d76e0d6dfe25e3871adbc2256bd2b1")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex)>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1366, identifier: "243afb955d446ffd38f4fbab918b8897")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex), alloc::alloc::Global>", scope: !1243, file: !979, size: 128, align: 64, flags: DIFlagProtected, elements: !1364, templateParams: !1370, identifier: "9303565341cc410a3536b987218307d4")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex), alloc::alloc::Global>", scope: !1239, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1361, templateParams: !1370, identifier: "c925ac2a5ecc9a72ed176404f48255a0")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupInfoInner", scope: !1221, file: !979, size: 640, align: 64, flags: DIFlagPrivate, elements: !1238, templateParams: !1173, identifier: "9f006b3760122651e51c665fc681f091")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<regex_automata::util::captures::GroupInfoInner>", scope: !1167, file: !979, size: 768, align: 64, flags: DIFlagPrivate, elements: !1233, templateParams: !1372, identifier: "7723edcf19fc4041e4f2f92e387a3d84")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<regex_automata::util::captures::GroupInfoInner>>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1229, identifier: "ce4761af5649629cad2bcb6c4e707adb")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<regex_automata::util::captures::GroupInfoInner>>", scope: !1280, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1375, templateParams: !1229, identifier: "f52c8dfd581745ec31f07d86e47aef81")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<regex_automata::util::captures::GroupInfoInner, alloc::alloc::Global>", scope: !1167, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1227, templateParams: !1376, identifier: "2893e1c0cec89c88325a4a5c83b397d1")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupInfo", scope: !1221, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1223, templateParams: !1173, identifier: "94c69a91455e15712e03fe7be589ef3a")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<regex_automata::util::primitives::StateID>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1384, identifier: "eadb81b5adcd9b3ade8929778df2fe0f")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<regex_automata::util::primitives::StateID, alloc::alloc::Global>", scope: !1243, file: !979, size: 128, align: 64, flags: DIFlagProtected, elements: !1382, templateParams: !1385, identifier: "229053f6d5d97c34ec0b3f768de62d76")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<regex_automata::util::primitives::StateID, alloc::alloc::Global>", scope: !1239, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1379, templateParams: !1385, identifier: "36a924e5b959e364291ef1ce965deef")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StateID", scope: !1340, file: !979, size: 32, align: 32, flags: DIFlagPublic, elements: !1387, templateParams: !1173, identifier: "4fcd5faa3dea1364f1b9db2a78837100")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PatternID", scope: !1340, file: !979, size: 32, align: 32, flags: DIFlagPublic, elements: !1410, templateParams: !1173, identifier: "32a198cc2b4d5683b6f38cf9d68a94e7")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Match", scope: !69, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1408, templateParams: !1173, identifier: "c2736c8f00d19adf570d16f24e2932a7")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Fail", scope: !69, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1173, identifier: "9109925a855fe87276a39536bdc1c83d")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Capture", scope: !69, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1415, templateParams: !1173, identifier: "78caa577d333c0c64e7169c97a42232")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BinaryUnion", scope: !69, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1418, templateParams: !1173, identifier: "706f027ead23bd209cbd2d54c33b1e25")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc::boxed::Box<[regex_automata::util::primitives::StateID], alloc::alloc::Global>", file: !979, size: 128, align: 64, elements: !1424, templateParams: !1173, identifier: "1062a812ce21f50e4723a287607bcf6")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Union", scope: !69, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1420, templateParams: !1173, identifier: "ec909b8b298353aa665fa6d28a8fcfb")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Look", scope: !69, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1427, templateParams: !1173, identifier: "805b5909883fc32e5d373a4d669be1c3")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DenseTransitions", scope: !1163, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1431, templateParams: !1173, identifier: "8f812290f9cf87dae2535f8adf6d37c0")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Dense", scope: !69, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1429, templateParams: !1173, identifier: "332c3d8a3e830fe6d0f4dbf68abfdc9d")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Transition", scope: !1163, file: !979, size: 64, align: 32, flags: DIFlagPublic, elements: !1443, templateParams: !1173, identifier: "50f86692fb56e5e24944a4d73b847a75")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc::boxed::Box<[regex_automata::nfa::thompson::nfa::Transition], alloc::alloc::Global>", file: !979, size: 128, align: 64, elements: !1439, templateParams: !1173, identifier: "e0bdbb384cf586233cd0ddc495e425")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SparseTransitions", scope: !1163, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1435, templateParams: !1173, identifier: "c44f8f5874a80c1df1d4db194c7cb456")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Sparse", scope: !69, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1433, templateParams: !1173, identifier: "dea7268f166406b7b8be2619ebd05be")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ByteRange", scope: !69, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1445, templateParams: !1173, identifier: "ce310a15a5efe15a43985a2bcb9883a8")
!68 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !69, file: !979, size: 192, align: 64, elements: !1406, templateParams: !1173, identifier: "7410f0967ba4ae883906fc065657211c", discriminator: !1446)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "State", scope: !1163, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1396, templateParams: !1173, identifier: "69a05d2a237ca837b54b274f3d07f5b2")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<regex_automata::nfa::thompson::nfa::State>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1395, identifier: "390ff627bbafd18538b28f0b08fb3cb")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<regex_automata::nfa::thompson::nfa::State, alloc::alloc::Global>", scope: !1243, file: !979, size: 128, align: 64, flags: DIFlagProtected, elements: !1393, templateParams: !1447, identifier: "2cde6de3c6e2e90d71d1587eac1b0524")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<regex_automata::nfa::thompson::nfa::State, alloc::alloc::Global>", scope: !1239, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1390, templateParams: !1447, identifier: "a91ac708fd876a77a10d25a1eac0ffec")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Inner", scope: !1163, file: !979, size: 3072, align: 128, flags: DIFlagProtected, elements: !1197, templateParams: !1173, identifier: "7ad65844a4571e37b7c1ec7b46cca9d8")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Align8<usize>", scope: !1453, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1455, templateParams: !1457, identifier: "631202888b650a22992278d9f9d77d24")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<core::sync::atomic::private::Align8<usize>>", scope: !1450, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1452, templateParams: !1459, identifier: "1cf16ce96ecba53ca500783d135f4555")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic<usize>", scope: !1040, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1449, templateParams: !1457, identifier: "a078e99d67c0fa992c5dfdd9f9818b5e")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<regex_automata::nfa::thompson::nfa::Inner>", scope: !1167, file: !979, size: 3200, align: 128, flags: DIFlagPrivate, elements: !1180, templateParams: !1461, identifier: "cac8fcb2e8a42f678b74657943cead25")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<regex_automata::nfa::thompson::nfa::Inner>>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1176, identifier: "4a49cbd1ba887bfe979899d4852e9135")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<regex_automata::nfa::thompson::nfa::Inner>>", scope: !1280, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1464, templateParams: !1176, identifier: "4f8a6752545a2d7570753934f0d40ab6")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<regex_automata::nfa::thompson::nfa::Inner, alloc::alloc::Global>", scope: !1167, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1171, templateParams: !1465, identifier: "6a98a34c48e5197e1e67870ed7f69d77")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NFA", scope: !1163, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1165, templateParams: !1173, identifier: "9f2c9cb11f728655c345e28351885434")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&regex_automata::nfa::thompson::nfa::NFA as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1161, vtableHolder: !1162, templateParams: !1173, identifier: "ed83c1f9c43d9f953987be737f5cdfb3")
!83 = distinct !DIGlobalVariable(name: "<&regex_automata::nfa::thompson::nfa::NFA as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !82, isLocal: true, isDefinition: true)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn regex_automata::util::prefilter::PrefilterI", file: !979, align: 8, elements: !1173, identifier: "49a52c88f5dfd3ae9f6e4153f82c5d6")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<dyn regex_automata::util::prefilter::PrefilterI>", scope: !1167, file: !979, size: 128, align: 64, flags: DIFlagPrivate, elements: !1501, templateParams: !1503, identifier: "2bdc414371a9d2cf43774eb52ef4add")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<dyn regex_automata::util::prefilter::PrefilterI>>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1497, identifier: "4dc9e39794f67bdabe37b8282c4abb5a")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const alloc::sync::ArcInner<dyn regex_automata::util::prefilter::PrefilterI>", file: !979, size: 128, align: 64, elements: !1513, templateParams: !1173, identifier: "c7d0a21055550712d22336af1c5bc4ba")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<dyn regex_automata::util::prefilter::PrefilterI>>", scope: !1280, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1505, templateParams: !1497, identifier: "70b43b8a37c96e424895ce8281666689")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<dyn regex_automata::util::prefilter::PrefilterI, alloc::alloc::Global>", scope: !1167, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1495, templateParams: !1514, identifier: "c35d5da4c380ed993c15672c39df7cf")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Prefilter", scope: !1487, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !1491, templateParams: !1173, identifier: "39d58c9841cf103dee90b256760cb42b")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !94, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !1486, templateParams: !1516, identifier: "10fd5ccd37996ed46af830632eefa24e")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !94, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !1173, templateParams: !1516, identifier: "8c7bdc8bedbee86fc49a7af7e1443025")
!93 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !94, file: !979, size: 256, align: 64, elements: !1484, templateParams: !1173, identifier: "b9ef3c6bf575dc8141aab841d5042bfe", discriminator: !1517)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<regex_automata::util::prefilter::Prefilter>", scope: !1257, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !1481, templateParams: !1173, identifier: "a19bca81e751be99320f7827885862e9")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !98, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !1480, templateParams: !1519, identifier: "d31752d4e76794264d72f7df451db188")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !98, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !1173, templateParams: !1519, identifier: "79a02dbce351e4151d0ce750ff4a898e")
!97 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !98, file: !979, size: 256, align: 64, elements: !1478, templateParams: !1173, identifier: "dbb9b43a8bec67273cd9da150ed7186b", discriminator: !1520)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::option::Option<regex_automata::util::prefilter::Prefilter>>", scope: !1257, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !1475, templateParams: !1173, identifier: "e18aa57f52c6ff089a708425ed2a1169")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !102, file: !979, size: 8, align: 8, flags: DIFlagPublic, elements: !1526, templateParams: !1528, identifier: "1f974f03a25779ee10fc3384c69a0e69")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !102, file: !979, size: 8, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1528, identifier: "c058ffdf9de5597e2541892a05e3e769")
!101 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !102, file: !979, size: 8, align: 8, elements: !1524, templateParams: !1173, identifier: "3e8dd16ca17ca44de5f279f266387135", discriminator: !1529)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<regex_automata::util::search::MatchKind>", scope: !1257, file: !979, size: 8, align: 8, flags: DIFlagPublic, elements: !1521, templateParams: !1173, identifier: "d974ce0f5d32b28453d431f87339e502")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Config", scope: !1471, file: !979, size: 320, align: 64, flags: DIFlagPublic, elements: !1474, templateParams: !1173, identifier: "c1832e3c834a773a645815476f6c9352")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<regex_automata::nfa::thompson::pikevm::Config as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1470, vtableHolder: !103, templateParams: !1173, identifier: "278740f03af9cc1e4217741b72080a11")
!105 = distinct !DIGlobalVariable(name: "<regex_automata::nfa::thompson::pikevm::Config as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !104, isLocal: true, isDefinition: true)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::option::Option<core::option::Option<regex_automata::util::prefilter::Prefilter>> as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1534, vtableHolder: !1535, templateParams: !1173, identifier: "fcba5a6d4103ef743a8ef19e544ee8ad")
!107 = distinct !DIGlobalVariable(name: "<&core::option::Option<core::option::Option<regex_automata::util::prefilter::Prefilter>> as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !106, isLocal: true, isDefinition: true)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::option::Option<regex_automata::util::search::MatchKind> as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1540, vtableHolder: !102, templateParams: !1173, identifier: "d503b664a91fbf2713de39fe2d852c11")
!109 = distinct !DIGlobalVariable(name: "<core::option::Option<regex_automata::util::search::MatchKind> as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !108, isLocal: true, isDefinition: true)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&regex_automata::util::search::MatchKind as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1545, vtableHolder: !1546, templateParams: !1173, identifier: "f5a1f5a8f84420fb76045147b39f1119")
!111 = distinct !DIGlobalVariable(name: "<&regex_automata::util::search::MatchKind as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !110, isLocal: true, isDefinition: true)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::num::error::IntErrorKind as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1551, vtableHolder: !1552, templateParams: !1173, identifier: "be7a65dd449a73c27f115d1ef64bba10")
!113 = distinct !DIGlobalVariable(name: "<&core::num::error::IntErrorKind as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !112, isLocal: true, isDefinition: true)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&() as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1557, vtableHolder: !1558, templateParams: !1173, identifier: "d5dbfd8cabedda1dc6cea12b6ccc3d0")
!115 = distinct !DIGlobalVariable(name: "<&() as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !114, isLocal: true, isDefinition: true)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Pattern", scope: !120, file: !979, size: 64, align: 32, flags: DIFlagPublic, elements: !1580, templateParams: !1173, identifier: "da591c1ef614555e906ef1e1de6b43de")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Yes", scope: !120, file: !979, size: 64, align: 32, flags: DIFlagPublic, elements: !1173, identifier: "588fd05c2932eccdc5a235a1b45c7398")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "No", scope: !120, file: !979, size: 64, align: 32, flags: DIFlagPublic, elements: !1173, identifier: "e45b11281ea6b850c4a99b4a22011f8b")
!119 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !120, file: !979, size: 64, align: 32, elements: !1578, templateParams: !1173, identifier: "32d5b919122510827e47a932f85fec25", discriminator: !1581)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Anchored", scope: !982, file: !979, size: 64, align: 32, flags: DIFlagPublic, elements: !1574, templateParams: !1173, identifier: "18a225f081a9fa57227016f95a3a8054")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsupportedAnchored", scope: !126, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1573, templateParams: !1173, identifier: "e110ab4fc7975a113e46609204304f88")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HaystackTooLong", scope: !126, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1583, templateParams: !1173, identifier: "e6f6bde11ea7ba48ef812c51f00562b8")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GaveUp", scope: !126, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1585, templateParams: !1173, identifier: "2f2f9b22cb90776fedc0860556b39d8")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Quit", scope: !126, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1588, templateParams: !1173, identifier: "a3369d20dd9afef711a3fb4bdd03a0a5")
!125 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !126, file: !979, size: 128, align: 64, elements: !1571, templateParams: !1173, identifier: "6857a64ca2ddbee9c488f564c8fe831a", discriminator: !1589)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MatchErrorKind", scope: !982, file: !979, size: 128, align: 64, flags: DIFlagPublic, elements: !1566, templateParams: !1173, identifier: "eab73e74470cb18bd6c97be6dd9503c4")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&alloc::boxed::Box<regex_automata::util::search::MatchErrorKind, alloc::alloc::Global> as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1563, vtableHolder: !1565, templateParams: !1173, identifier: "4ffe868f25bef4f96c70bf2a131eeb56")
!128 = distinct !DIGlobalVariable(name: "<&alloc::boxed::Box<regex_automata::util::search::MatchErrorKind, alloc::alloc::Global> as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !127, isLocal: true, isDefinition: true)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TryFromIntError", scope: !1030, file: !979, size: 8, align: 8, flags: DIFlagPublic, elements: !1596, templateParams: !1173, identifier: "4d491c295a1483f2b037e07c8ff9cfe8")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::num::error::TryFromIntError as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1594, vtableHolder: !129, templateParams: !1173, identifier: "71c55528ed0ff5f9415145c2395c3320")
!131 = distinct !DIGlobalVariable(name: "<core::num::error::TryFromIntError as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !130, isLocal: true, isDefinition: true)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnicodeWordBoundaryError", scope: !995, file: !979, align: 8, flags: DIFlagPublic, elements: !1603, templateParams: !1173, identifier: "ef8ba03d1239f7c667f034ba7392c7e")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<regex_automata::util::look::UnicodeWordBoundaryError as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1601, vtableHolder: !132, templateParams: !1173, identifier: "5d91b04bc0ae77995fbf1d5eb2d80b58")
!134 = distinct !DIGlobalVariable(name: "<regex_automata::util::look::UnicodeWordBoundaryError as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !133, isLocal: true, isDefinition: true)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnicodeWordError", scope: !1609, file: !979, align: 8, flags: DIFlagPublic, elements: !1611, templateParams: !1173, identifier: "cb1bd62dcc0352efc2afce6c833b127a")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<regex_syntax::unicode::UnicodeWordError as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1608, vtableHolder: !135, templateParams: !1173, identifier: "2364033dc4c38a20b86601d0bab16837")
!137 = distinct !DIGlobalVariable(name: "<regex_syntax::unicode::UnicodeWordError as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !136, isLocal: true, isDefinition: true)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MatchError", scope: !982, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1618, templateParams: !1173, identifier: "9b839db2006f46c318571c50aa6d26c9")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<regex_automata::util::search::MatchError as core::fmt::Debug>::{vtable_type}", file: !979, size: 256, align: 64, flags: DIFlagArtificial, elements: !1616, vtableHolder: !138, templateParams: !1173, identifier: "c2ff30119da9ec7319d161302dc1798e")
!140 = distinct !DIGlobalVariable(name: "<regex_automata::util::search::MatchError as core::fmt::Debug>::{vtable}", scope: null, file: !979, type: !139, isLocal: true, isDefinition: true)
!141 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !978, producer: "clang LLVM (rustc version 1.100.0-nightly (67854e511 2026-08-15))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1139, globals: !1153, splitDebugInlining: false, nameTableKind: None)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Utf8Range", scope: !1636, file: !979, size: 16, align: 8, flags: DIFlagPublic, elements: !1639, templateParams: !1173, identifier: "7fd735489efe6990d9c47d5af555f894")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<regex_syntax::utf8::Utf8Range>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1635, identifier: "b1b3e8e355f30dac8080888694750326")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<regex_syntax::utf8::Utf8Range, alloc::alloc::Global>", scope: !1243, file: !979, size: 128, align: 64, flags: DIFlagProtected, elements: !1633, templateParams: !1640, identifier: "e6945ddf83b5533774881fdd1b13793d")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<regex_syntax::utf8::Utf8Range, alloc::alloc::Global>", scope: !1239, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1630, templateParams: !1640, identifier: "e96b33e6b4e339ee5b3625dfb4693e4e")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<alloc::vec::Vec<regex_syntax::utf8::Utf8Range, alloc::alloc::Global>>", scope: !1450, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1627, templateParams: !1642, identifier: "6807755401e75405a04cd8e529114fba")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<isize>", scope: !1450, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1647, templateParams: !1649, identifier: "872a98344743f59ea535a21eff18b42c")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Cell<isize>", scope: !1450, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1644, templateParams: !1649, identifier: "c32195c1298a090f1454cb38ede0b0c6")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RefCell<alloc::vec::Vec<regex_syntax::utf8::Utf8Range, alloc::alloc::Global>>", scope: !1450, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !1625, templateParams: !1642, identifier: "ba72edceee5d89155dcba1977f6cb50f")
!150 = distinct !DISubprogram(name: "drop_glue<core::cell::RefCell<alloc::vec::Vec<regex_syntax::utf8::Utf8Range, alloc::alloc::Global>>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEECs9GYDdpCSJ4S_14regex_automata", scope: !1279, file: !1619, line: 847, type: !1622, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, templateParams: !1653, retainedNodes: !1651)
!151 = distinct !DISubprogram(name: "drop_glue<core::cell::UnsafeCell<alloc::vec::Vec<regex_syntax::utf8::Utf8Range, alloc::alloc::Global>>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEECs9GYDdpCSJ4S_14regex_automata", scope: !1279, file: !1619, line: 847, type: !1657, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, templateParams: !1660, retainedNodes: !1658)
!152 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<regex_syntax::utf8::Utf8Range, alloc::alloc::Global>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEECs9GYDdpCSJ4S_14regex_automata", scope: !1279, file: !1619, line: 847, type: !1664, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, templateParams: !1642, retainedNodes: !1665)
!153 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<regex_syntax::utf8::Utf8Range, alloc::alloc::Global>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEECs9GYDdpCSJ4S_14regex_automata", scope: !1279, file: !1619, line: 847, type: !1669, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, templateParams: !1672, retainedNodes: !1670)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NextIter", scope: !1689, file: !979, size: 128, align: 64, flags: DIFlagPrivate, elements: !1692, templateParams: !1173, identifier: "b281f7132a2a43fe11cc5a24a10d54f")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<regex_automata::nfa::thompson::range_trie::NextIter>", scope: !1174, file: !979, align: 8, flags: DIFlagPublic, elements: !1173, templateParams: !1688, identifier: "5f4abd62bf9e89eee0dbefe8ebf3eff9")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<regex_automata::nfa::thompson::range_trie::NextIter, alloc::alloc::Global>", scope: !1243, file: !979, size: 128, align: 64, flags: DIFlagProtected, elements: !1686, templateParams: !1693, identifier: "e75d47f45f3835d1471e05cfcb2dfdc7")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<regex_automata::nfa::thompson::range_trie::NextIter, alloc::alloc::Global>", scope: !1239, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1683, templateParams: !1693, identifier: "2b353cce5d76b331c140fef2de4aefd3")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<alloc::vec::Vec<regex_automata::nfa::thompson::range_trie::NextIter, alloc::alloc::Global>>", scope: !1450, file: !979, size: 192, align: 64, flags: DIFlagPublic, elements: !1680, templateParams: !1695, identifier: "37242290a221e6b5f0bb4c7c081f262b")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RefCell<alloc::vec::Vec<regex_automata::nfa::thompson::range_trie::NextIter, alloc::alloc::Global>>", scope: !1450, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !1678, templateParams: !1695, identifier: "4c6211c739425f0de3cde2b2ef4d47ed")
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!8024 = !{!996, !229}
!8025 = !DISubroutineType(types: !8024)
!8026 = !DISubprogram(name: "ilog2", linkageName: "_RNvMs1f_NtNtCsj6eKBz9Db1c_4core3num7nonzeroINtB6_7NonZerojE5ilog2", scope: !229, file: !8022, line: 1801, type: !8025, scopeLine: 1801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1173)
!8027 = !{!8023}
!8028 = !DILocalVariable(name: "self", arg: 1, scope: !7365, file: !8022, line: 595, type: !229)
!8029 = !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs1f_NtNtCsj6eKBz9Db1c_4core3num7nonzeroINtB6_7NonZerojE13leading_zeros", scope: !229, file: !8022, line: 595, type: !8025, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1173)
!8030 = !{!8028}
!8032 = !{!7388}
!8033 = !{!7389}
!8034 = !DIFile(filename: "library/core/src/slice/sort/stable/merge.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "90afbaa2075bc1e9689ef92c7df39f20")
!8035 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::sort::stable::merge::MergeState<regex_syntax::hir::literal::Literal>", baseType: !7390, size: 64, align: 64, dwarfAddressSpace: 0)
!8036 = !DILocalVariable(name: "self", arg: 1, scope: !7392, file: !8034, line: 139, type: !8035)
!8037 = !DINamespace(name: "merge", scope: !2756)
!8038 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !7390, file: !979, baseType: !2679, size: 64, align: 64, flags: DIFlagPrivate)
!8039 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !7390, file: !979, baseType: !2679, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!8040 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !7390, file: !979, baseType: !2679, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!8041 = !{!8038, !8039, !8040}
!8042 = !DINamespace(name: "{impl#1}", scope: !8037)
!8043 = !{null, !8035}
!8044 = !DISubroutineType(types: !8043)
!8045 = !DILocalVariable(name: "len", scope: !7391, file: !8034, line: 146, type: !1157, align: 64)
!8046 = !{!8036, !8045}
!8047 = !DILocalVariable(arg: 1, scope: !7393, file: !1619, line: 847, type: !8035)
!8048 = !{!8047}
!8049 = !DITemplateTypeParameter(name: "T", type: !7390)
!8050 = !{!8049}
!8051 = !{null, !420, !422, !1157, !2508}
!8052 = !DISubroutineType(cc: DW_CC_nocall, types: !8051)
!8053 = !DILocalVariable(name: "v", arg: 1, scope: !7395, file: !8034, line: 9, type: !420)
!8054 = !DILocalVariable(name: "scratch", arg: 2, scope: !7395, file: !8034, line: 10, type: !422)
!8055 = !DILocalVariable(name: "mid", arg: 3, scope: !7395, file: !8034, line: 11, type: !1157)
!8056 = !DILocalVariable(name: "is_less", arg: 4, scope: !7395, file: !8034, line: 12, type: !2508)
!8057 = !DILocalVariable(name: "len", scope: !7396, file: !8034, line: 14, type: !1157, align: 64)
!8058 = !DILocalVariable(name: "buf", scope: !7397, file: !8034, line: 38, type: !2679, align: 64)
!8059 = !DILocalVariable(name: "v_base", scope: !7398, file: !8034, line: 40, type: !2679, align: 64)
!8060 = !DILocalVariable(name: "v_mid", scope: !7399, file: !8034, line: 41, type: !2679, align: 64)
!8061 = !DILocalVariable(name: "v_end", scope: !7400, file: !8034, line: 42, type: !2679, align: 64)
!8062 = !DILocalVariable(name: "left_len", scope: !7401, file: !8034, line: 44, type: !1157, align: 64)
!8063 = !DILocalVariable(name: "right_len", scope: !7402, file: !8034, line: 45, type: !1157, align: 64)
!8064 = !DILocalVariable(name: "left_is_shorter", scope: !7403, file: !8034, line: 47, type: !1188, align: 8)
!8065 = !DILocalVariable(name: "save_base", scope: !7404, file: !8034, line: 48, type: !2679, align: 64)
!8066 = !DILocalVariable(name: "save_len", scope: !7405, file: !8034, line: 49, type: !1157, align: 64)
!8067 = !DILocalVariable(name: "merge_state", scope: !7394, file: !8034, line: 53, type: !7390, align: 64)
!8068 = !{!8053, !8054, !8055, !8056, !8057, !8058, !8059, !8060, !8061, !8062, !8063, !8064, !8065, !8066, !8067}
!8069 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut *mut regex_syntax::hir::literal::Literal", baseType: !2679, size: 64, align: 64, dwarfAddressSpace: 0)
!8070 = !DILocalVariable(name: "left", scope: !7419, file: !8034, line: 86, type: !8069, align: 64)
!8071 = !{null, !8035, !2503, !2503, !2508}
!8072 = !DISubroutineType(cc: DW_CC_nocall, types: !8071)
!8073 = !DISubroutineType(types: !8071)
!8074 = !DISubprogram(name: "merge_up<regex_syntax::hir::literal::Literal, fn(&regex_syntax::hir::literal::Literal, &regex_syntax::hir::literal::Literal) -> bool>", linkageName: "_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralE8merge_upNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !7390, file: !8034, line: 78, type: !8073, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2515)
!8075 = !DILocalVariable(name: "self", arg: 1, scope: !7418, file: !8034, line: 79, type: !8035)
!8076 = !DILocalVariable(name: "right", arg: 2, scope: !7418, file: !8034, line: 80, type: !2503)
!8077 = !DILocalVariable(name: "right_end", arg: 3, scope: !7418, file: !8034, line: 81, type: !2503)
!8078 = !DILocalVariable(name: "is_less", arg: 4, scope: !7418, file: !8034, line: 82, type: !2508)
!8079 = !DILocalVariable(name: "out", scope: !7417, file: !8034, line: 87, type: !8069, align: 64)
!8080 = !DILocalVariable(name: "consume_left", scope: !7416, file: !8034, line: 90, type: !1188, align: 8)
!8081 = !DILocalVariable(name: "src", scope: !7415, file: !8034, line: 92, type: !2503, align: 64)
!8082 = !{!8075, !8076, !8077, !8078, !8070, !8079, !8080, !8081}
!8083 = !DILocalVariable(name: "self", arg: 1, scope: !7427, file: !8034, line: 109, type: !8035)
!8084 = !{null, !8035, !2503, !2503, !2679, !2508}
!8085 = !DISubroutineType(cc: DW_CC_nocall, types: !8084)
!8086 = !DISubroutineType(types: !8084)
!8087 = !DISubprogram(name: "merge_down<regex_syntax::hir::literal::Literal, fn(&regex_syntax::hir::literal::Literal, &regex_syntax::hir::literal::Literal) -> bool>", linkageName: "_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !7390, file: !8034, line: 108, type: !8086, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2515)
!8088 = !DILocalVariable(name: "left_end", arg: 2, scope: !7427, file: !8034, line: 110, type: !2503)
!8089 = !DILocalVariable(name: "right_end", arg: 3, scope: !7427, file: !8034, line: 111, type: !2503)
!8090 = !DILocalVariable(name: "out", arg: 4, scope: !7427, file: !8034, line: 112, type: !2679)
!8091 = !DILocalVariable(name: "is_less", arg: 5, scope: !7427, file: !8034, line: 113, type: !2508)
!8092 = !DILocalVariable(name: "left", scope: !7426, file: !8034, line: 118, type: !2679, align: 64)
!8093 = !DILocalVariable(name: "right", scope: !7425, file: !8034, line: 119, type: !2679, align: 64)
!8094 = !DILocalVariable(name: "consume_left", scope: !7424, file: !8034, line: 122, type: !1188, align: 8)
!8095 = !DILocalVariable(name: "src", scope: !7423, file: !8034, line: 124, type: !2679, align: 64)
!8096 = !{!8083, !8088, !8089, !8090, !8091, !8092, !8093, !8094, !8095}
!8097 = !DILocalVariable(name: "v1", arg: 1, scope: !7433, file: !2566, line: 1634, type: !1157)
!8098 = !DILocalVariable(name: "v2", arg: 2, scope: !7433, file: !2566, line: 1634, type: !1157)
!8099 = !{!8097, !8098}
!8100 = !DILocalVariable(name: "count", arg: 2, scope: !7436, file: !2718, line: 936, type: !1157)
!8101 = !DILocalVariable(name: "self", arg: 1, scope: !7436, file: !2718, line: 936, type: !2679)
!8102 = !{!8101, !8100}
!8103 = !DILocalVariable(name: "dst", arg: 2, scope: !7448, file: !1619, line: 552, type: !2679)
!8104 = !DILocalVariable(name: "src", arg: 1, scope: !7448, file: !1619, line: 552, type: !2503)
!8105 = !DILocalVariable(name: "count", arg: 3, scope: !7448, file: !1619, line: 552, type: !1157)
!8106 = !{!8104, !8103, !8105}
!8107 = !{!7388, !7389}
!8108 = !DILocalVariable(name: "self", arg: 1, scope: !7457, file: !2718, line: 1015, type: !2679)
!8109 = !DILocalVariable(name: "count", scope: !7457, file: !2718, line: 1015, type: !1157, align: 64)
!8110 = !{!8108, !8109}
!8111 = !DILocalVariable(name: "self", arg: 1, scope: !7463, file: !2718, line: 936, type: !2679)
!8112 = !DILocalVariable(name: "count", arg: 2, scope: !7463, file: !2718, line: 936, type: !1157)
!8113 = !{!8111, !8112}
!8114 = !{!7472}
!8115 = !{!7473}
!8116 = !{!7477}
!8117 = !{!7478}
!8118 = !{!7484}
!8119 = !{!7485}
!8120 = !{!7489}
!8121 = !{!7490}
!8122 = !{!7489, !7484, !7477, !7472, !7389}
!8123 = !{!7490, !7485, !7478, !7473, !7512, !7388}
!8124 = !{!7490, !7485, !7478, !7473, !7388}
!8125 = !{!7489, !7484, !7477, !7472, !7512, !7389}
!8126 = !{!7489, !7490, !7484, !7485, !7477, !7478, !7472, !7473, !7512, !7388, !7389}
!8127 = !{!7484, !7477, !7472, !7389}
!8128 = !{!7485, !7478, !7473, !7512, !7388}
!8129 = !{!7485, !7478, !7473, !7388}
!8130 = !{!7484, !7477, !7472, !7512, !7389}
!8131 = !DILocalVariable(name: "src", arg: 1, scope: !7528, file: !1619, line: 552, type: !2503)
!8132 = !DILocalVariable(name: "dst", arg: 2, scope: !7528, file: !1619, line: 552, type: !2679)
!8133 = !DILocalVariable(name: "count", scope: !7528, file: !1619, line: 552, type: !1157, align: 64)
!8134 = !{!8131, !8132, !8133}
!8135 = !{!7512}
!8136 = !DILocalVariable(name: "self", arg: 1, scope: !7531, file: !2516, line: 837, type: !2503)
!8137 = !DILocalVariable(name: "count", arg: 2, scope: !7531, file: !2516, line: 837, type: !1157)
!8138 = !{!8136, !8137}
!8139 = !{!7535}
!8140 = !{!7536}
!8141 = !{!7540}
!8142 = !{!7541}
!8143 = !{!7547}
!8144 = !{!7548}
!8145 = !{!7552}
!8146 = !{!7553}
!8147 = !{!7552, !7547, !7540, !7535, !7388}
!8148 = !{!7553, !7548, !7541, !7536, !7575, !7389}
!8149 = !{!7553, !7548, !7541, !7536, !7389}
!8150 = !{!7552, !7547, !7540, !7535, !7575, !7388}
!8151 = !{!7552, !7553, !7547, !7548, !7540, !7541, !7535, !7536, !7575, !7388, !7389}
!8152 = !{!7547, !7540, !7535, !7388}
!8153 = !{!7548, !7541, !7536, !7575, !7389}
!8154 = !{!7548, !7541, !7536, !7389}
!8155 = !{!7547, !7540, !7535, !7575, !7388}
!8156 = !DILocalVariable(name: "src", arg: 1, scope: !7590, file: !1619, line: 552, type: !2503)
!8157 = !DILocalVariable(name: "dst", arg: 2, scope: !7590, file: !1619, line: 552, type: !2679)
!8158 = !DILocalVariable(name: "count", scope: !7590, file: !1619, line: 552, type: !1157, align: 64)
!8159 = !{!8156, !8157, !8158}
!8160 = !{!7575}
!8161 = !DILocalVariable(name: "self", arg: 1, scope: !7594, file: !2718, line: 936, type: !2679)
!8162 = !DILocalVariable(name: "count", arg: 2, scope: !7594, file: !2718, line: 936, type: !1157)
!8163 = !DILocalVariable(name: "count", scope: !7594, file: !2718, line: 936, type: !1157, align: 64)
!8164 = !{!8161, !8162, !8163}
!8165 = !DILocalVariable(name: "pointee_size", scope: !7600, file: !2516, line: 730, type: !1157, align: 64)
!8166 = !DILocalVariable(name: "self", arg: 1, scope: !7599, file: !2516, line: 705, type: !2503)
!8167 = !DILocalVariable(name: "origin", arg: 2, scope: !7599, file: !2516, line: 705, type: !2503)
!8168 = !{!8166, !8167, !8165}
!8169 = !{!1157, !2679, !2503, !2519}
!8170 = !DISubroutineType(types: !8169)
!8171 = !DILocalVariable(name: "self", arg: 1, scope: !7601, file: !2718, line: 887, type: !2679)
!8172 = !DILocalVariable(name: "origin", arg: 2, scope: !7601, file: !2718, line: 887, type: !2503)
!8173 = !{!8171, !8172}
!8174 = !DILocalVariable(name: "count", arg: 3, scope: !7608, file: !1619, line: 552, type: !1157)
!8175 = !DILocalVariable(name: "src", arg: 1, scope: !7608, file: !1619, line: 552, type: !2503)
!8176 = !DILocalVariable(name: "dst", arg: 2, scope: !7608, file: !1619, line: 552, type: !2679)
!8177 = !{!8175, !8176, !8174}
!8178 = !{!7614, !7612}
!8179 = !DILocation(line: 113, column: 30, scope: !7007)
!8180 = !DILocation(line: 0, scope: !7313, inlinedAt: !8179)
!8181 = !DILocalVariable(name: "self", scope: !7615, file: !7629, line: 290, type: !7015, align: 64)
!8182 = !{!1188, !7015}
!8183 = !DISubroutineType(types: !8182)
!8184 = !DISubprogram(name: "sorted", linkageName: "_RNvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5driftNtB2_12DriftsortRun6sorted", scope: !7015, file: !7629, line: 290, type: !8183, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1173)
!8185 = !{!8181}
!8186 = !DILocation(line: 117, column: 18, scope: !7008)
!8187 = !DILocation(line: 0, scope: !7615, inlinedAt: !8186)
!8188 = !DILocation(line: 27, column: 8, scope: !7024)
!8189 = !DILocation(line: 3788, column: 21, scope: !7032, inlinedAt: !7714)
!8190 = !DILocation(line: 3789, column: 21, scope: !7031, inlinedAt: !7714)
!8191 = !DILocation(line: 3790, column: 16, scope: !7030, inlinedAt: !7714)
!8192 = !DILocation(line: 37, column: 31, scope: !7023)
!8193 = !DILocation(line: 42, column: 9, scope: !7023)
!8194 = !DILocation(line: 40, column: 24, scope: !7023)
!8195 = !DILocation(line: 40, column: 18, scope: !7023)
!8196 = !DILocation(line: 1138, column: 5, scope: !7035, inlinedAt: !7036)
!8197 = !DILocation(line: 37, column: 28, scope: !7023)
!8198 = !DILocation(line: 50, column: 9, scope: !7021)
!8199 = !DILocation(line: 52, column: 9, scope: !7016)
!8200 = !DILocation(line: 57, column: 5, scope: !7008)
!8201 = !DILocation(line: 62, column: 12, scope: !7007)
!8202 = !DILocation(line: 87, column: 19, scope: !7007)
!8203 = !DILocation(line: 562, column: 27, scope: !7028, inlinedAt: !7693)
!8204 = !DILocation(line: 102, column: 24, scope: !7040, inlinedAt: !7762)
!8205 = !DILocation(line: 234, column: 8, scope: !7043, inlinedAt: !7045)
!8206 = !DILocation(line: 249, column: 8, scope: !7043, inlinedAt: !7045)
!8207 = !DILocation(line: 25, column: 8, scope: !7055, inlinedAt: !7057)
!8208 = !DILocation(line: 34, column: 35, scope: !7054, inlinedAt: !7057)
!8209 = !DILocation(line: 166, column: 5, scope: !379, inlinedAt: !7091)
!8210 = !DILocation(line: 1471, column: 14, scope: !380, inlinedAt: !7099)
!8211 = !DILocation(line: 2048, column: 32, scope: !387, inlinedAt: !7106)
!8212 = !DILocation(line: 611, column: 9, scope: !395, inlinedAt: !7130)
!8213 = !DILocation(line: 1865, column: 86, scope: !393, inlinedAt: !7117)
!8214 = !DILocation(line: 611, column: 9, scope: !395, inlinedAt: !7138)
!8215 = !DILocation(line: 1865, column: 86, scope: !393, inlinedAt: !7124)
!8216 = !DILocation(line: 328, column: 20, scope: !402, inlinedAt: !7132)
!8217 = !DILocation(line: 331, column: 22, scope: !403, inlinedAt: !7132)
!8218 = !DILocation(line: 339, column: 34, scope: !399, inlinedAt: !7132)
!8219 = !DILocation(line: 340, column: 12, scope: !398, inlinedAt: !7132)
!8220 = !DILocation(line: 2050, column: 5, scope: !389, inlinedAt: !7111)
!8221 = !DILocation(line: 660, column: 9, scope: !386, inlinedAt: !7101)
!8222 = !DILocation(line: 0, scope: !7053, inlinedAt: !7057)
!8223 = !DILocation(line: 35, column: 12, scope: !7053, inlinedAt: !7057)
!8224 = !DILocation(line: 40, column: 19, scope: !7053, inlinedAt: !7057)
!8225 = !DILocation(line: 36, column: 19, scope: !7053, inlinedAt: !7057)
!8226 = !DILocation(line: 2050, column: 5, scope: !389, inlinedAt: !7148)
!8227 = !DILocation(line: 1865, column: 86, scope: !393, inlinedAt: !7151)
!8228 = !DILocation(line: 611, column: 9, scope: !395, inlinedAt: !7155)
!8229 = !DILocation(line: 219, column: 13, scope: !7063, inlinedAt: !7080)
!8230 = !DILocation(line: 40, column: 37, scope: !7053, inlinedAt: !7057)
!8231 = !DILocation(line: 166, column: 5, scope: !379, inlinedAt: !7145)
!8232 = !DILocation(line: 1471, column: 14, scope: !380, inlinedAt: !7146)
!8233 = !DILocation(line: 2048, column: 32, scope: !387, inlinedAt: !7147)
!8234 = !DILocation(line: 611, column: 9, scope: !395, inlinedAt: !7183)
!8235 = !DILocation(line: 1865, column: 86, scope: !393, inlinedAt: !7173)
!8236 = !DILocation(line: 328, column: 20, scope: !402, inlinedAt: !7189)
!8237 = !DILocation(line: 331, column: 22, scope: !403, inlinedAt: !7189)
!8238 = !DILocation(line: 339, column: 34, scope: !399, inlinedAt: !7189)
!8239 = !DILocation(line: 340, column: 12, scope: !398, inlinedAt: !7189)
!8240 = !DILocation(line: 660, column: 9, scope: !386, inlinedAt: !7162)
!8241 = !DILocation(line: 42, column: 17, scope: !7053, inlinedAt: !7057)
!8242 = !DILocation(line: 2050, column: 5, scope: !389, inlinedAt: !7201)
!8243 = !DILocation(line: 1865, column: 86, scope: !393, inlinedAt: !7204)
!8244 = !DILocation(line: 611, column: 9, scope: !395, inlinedAt: !7208)
!8245 = !DILocation(line: 219, column: 13, scope: !7063, inlinedAt: !7072)
!8246 = !DILocation(line: 36, column: 36, scope: !7053, inlinedAt: !7057)
!8247 = !DILocation(line: 166, column: 5, scope: !379, inlinedAt: !7198)
!8248 = !DILocation(line: 1471, column: 14, scope: !380, inlinedAt: !7199)
!8249 = !DILocation(line: 2048, column: 32, scope: !387, inlinedAt: !7200)
!8250 = !DILocation(line: 611, column: 9, scope: !395, inlinedAt: !7236)
!8251 = !DILocation(line: 1865, column: 86, scope: !393, inlinedAt: !7226)
!8252 = !DILocation(line: 328, column: 20, scope: !402, inlinedAt: !7242)
!8253 = !DILocation(line: 331, column: 22, scope: !403, inlinedAt: !7242)
!8254 = !DILocation(line: 339, column: 34, scope: !399, inlinedAt: !7242)
!8255 = !DILocation(line: 340, column: 12, scope: !398, inlinedAt: !7242)
!8256 = !DILocation(line: 660, column: 9, scope: !386, inlinedAt: !7215)
!8257 = !DILocation(line: 37, column: 17, scope: !7053, inlinedAt: !7057)
!8258 = !DILocation(line: 0, scope: !7055, inlinedAt: !7057)
!8259 = !DILocation(line: 238, column: 37, scope: !7042, inlinedAt: !7045)
!8260 = !DILocation(line: 238, column: 18, scope: !7042, inlinedAt: !7045)
!8261 = !DILocation(line: 240, column: 12, scope: !7042, inlinedAt: !7045)
!8262 = !DILocation(line: 241, column: 16, scope: !7042, inlinedAt: !7045)
!8263 = !DILocation(line: 1138, column: 5, scope: !7035, inlinedAt: !7276)
!8264 = !DILocation(line: 286, column: 14, scope: !7278, inlinedAt: !7279)
!8265 = !DILocation(line: 249, column: 5, scope: !7043, inlinedAt: !7045)
!8266 = !DILocation(line: 1138, column: 5, scope: !7035, inlinedAt: !7281)
!8267 = !DILocation(line: 255, column: 9, scope: !7041, inlinedAt: !7045)
!8268 = !DILocation(line: 281, column: 14, scope: !7252, inlinedAt: !7284)
!8269 = !DILocation(line: 281, column: 14, scope: !7252, inlinedAt: !7253)
!8270 = !DILocation(line: 260, column: 2, scope: !7044, inlinedAt: !7045)
!8271 = !DILocation(line: 970, column: 18, scope: !7287, inlinedAt: !7288)
!8272 = !DILocation(line: 1527, column: 18, scope: !434, inlinedAt: !7300)
!8273 = !DILocation(line: 1014, column: 45, scope: !7268, inlinedAt: !7272)
!8274 = !DILocation(line: 1014, column: 27, scope: !7268, inlinedAt: !7272)
!8275 = !DILocation(line: 1014, column: 38, scope: !7268, inlinedAt: !7272)
!8276 = !DILocation(line: 2755, column: 1, scope: !7294, inlinedAt: !7297)
!8277 = !DILocation(line: 1015, column: 17, scope: !7268, inlinedAt: !7272)
!8278 = !DILocation(line: 1013, column: 19, scope: !7268, inlinedAt: !7272)
!8279 = !DILocation(line: 0, scope: !7043, inlinedAt: !7045)
!8280 = !DILocation(line: 296, column: 9, scope: !7313, inlinedAt: !7917)
!8281 = !DILocation(line: 296, column: 9, scope: !7313, inlinedAt: !7931)
!8282 = !DILocation(line: 168, column: 13, scope: !7316, inlinedAt: !7929)
!8283 = !DILocation(line: 169, column: 13, scope: !7315, inlinedAt: !7929)
!8284 = !DILocation(line: 170, column: 6, scope: !7314, inlinedAt: !7929)
!8285 = !DILocation(line: 170, column: 27, scope: !7314, inlinedAt: !7929)
!8286 = !DILocation(line: 170, column: 5, scope: !7314, inlinedAt: !7929)
!8287 = !DILocation(line: 154, column: 20, scope: !7317, inlinedAt: !7940)
!8288 = !DILocation(line: 62, column: 9, scope: !7007)
!8289 = !DILocation(line: 87, column: 56, scope: !7007)
!8290 = !DILocation(line: 970, column: 18, scope: !7039, inlinedAt: !7751)
!8291 = !DILocation(line: 87, column: 36, scope: !7007)
!8292 = !DILocation(line: 970, column: 18, scope: !7038, inlinedAt: !7745)
!8293 = !DILocation(line: 103, column: 13, scope: !7007)
!8294 = !DILocation(line: 970, column: 18, scope: !7039, inlinedAt: !7753)
!8295 = !DILocation(line: 104, column: 13, scope: !7007)
!8296 = !DILocation(line: 109, column: 12, scope: !7007)
!8297 = !DILocation(line: 970, column: 18, scope: !7038, inlinedAt: !7743)
!8298 = !DILocation(line: 90, column: 28, scope: !7007)
!8299 = !DILocation(line: 296, column: 9, scope: !7313, inlinedAt: !7944)
!8300 = !DILocation(line: 296, column: 9, scope: !7313, inlinedAt: !7946)
!8301 = !DILocation(line: 91, column: 34, scope: !7006)
!8302 = !DILocation(line: 92, column: 39, scope: !7005)
!8303 = !DILocation(line: 102, column: 24, scope: !7040, inlinedAt: !7958)
!8304 = !DILocation(line: 203, column: 30, scope: !7321, inlinedAt: !7323)
!8305 = !DILocation(line: 204, column: 9, scope: !7320, inlinedAt: !7323)
!8306 = !DILocation(line: 205, column: 13, scope: !7320, inlinedAt: !7323)
!8307 = !DILocation(line: 286, column: 14, scope: !7345, inlinedAt: !7346)
!8308 = !DILocation(line: 204, column: 5, scope: !7320, inlinedAt: !7323)
!8309 = !DILocation(line: 208, column: 13, scope: !7320, inlinedAt: !7323)
!8310 = !DILocation(line: 269, column: 21, scope: !7350, inlinedAt: !7351)
!8311 = !DILocation(line: 598, column: 21, scope: !7365, inlinedAt: !7366)
!8312 = !DILocation(line: 269, column: 17, scope: !7350, inlinedAt: !7351)
!8313 = !DILocation(line: 270, column: 5, scope: !7349, inlinedAt: !7351)
!8314 = !DILocation(line: 205, column: 9, scope: !7320, inlinedAt: !7323)
!8315 = !DILocation(line: 102, column: 24, scope: !7332, inlinedAt: !7371)
!8316 = !DILocation(line: 269, column: 21, scope: !7350, inlinedAt: !7374)
!8317 = !DILocation(line: 598, column: 21, scope: !7365, inlinedAt: !7383)
!8318 = !DILocation(line: 269, column: 17, scope: !7350, inlinedAt: !7374)
!8319 = !DILocation(line: 270, column: 5, scope: !7349, inlinedAt: !7374)
!8320 = !DILocation(line: 208, column: 9, scope: !7320, inlinedAt: !7323)
!8321 = !DILocation(line: 211, column: 9, scope: !7320, inlinedAt: !7323)
!8322 = !DILocation(line: 16, column: 8, scope: !7396, inlinedAt: !7406)
!8323 = !DILocation(line: 1138, column: 5, scope: !7035, inlinedAt: !7445)
!8324 = !DILocation(line: 16, column: 34, scope: !7396, inlinedAt: !7406)
!8325 = !DILocation(line: 970, column: 18, scope: !7436, inlinedAt: !7437)
!8326 = !DILocation(line: 47, column: 31, scope: !7402, inlinedAt: !7406)
!8327 = !DILocation(line: 48, column: 28, scope: !7403, inlinedAt: !7406)
!8328 = !DILocation(line: 573, column: 14, scope: !7448, inlinedAt: !7449)
!8329 = !DILocation(line: 970, column: 18, scope: !7436, inlinedAt: !7439)
!8330 = !DILocation(line: 55, column: 12, scope: !7394, inlinedAt: !7406)
!8331 = !DILocation(line: 1054, column: 22, scope: !7457, inlinedAt: !7458)
!8332 = !DILocation(line: 118, column: 28, scope: !7427, inlinedAt: !7428)
!8333 = !DILocation(line: 1054, column: 22, scope: !7457, inlinedAt: !7466)
!8334 = !DILocation(line: 1054, column: 22, scope: !7457, inlinedAt: !7459)
!8335 = !DILocation(line: 122, column: 36, scope: !7425, inlinedAt: !7428)
!8336 = !DILocation(line: 166, column: 5, scope: !379, inlinedAt: !7474)
!8337 = !DILocation(line: 1471, column: 14, scope: !380, inlinedAt: !7479)
!8338 = !DILocation(line: 2048, column: 32, scope: !387, inlinedAt: !7486)
!8339 = !DILocation(line: 611, column: 9, scope: !395, inlinedAt: !7510)
!8340 = !DILocation(line: 1865, column: 86, scope: !393, inlinedAt: !7497)
!8341 = !DILocation(line: 611, column: 9, scope: !395, inlinedAt: !7520)
!8342 = !DILocation(line: 1865, column: 86, scope: !393, inlinedAt: !7504)
!8343 = !DILocation(line: 328, column: 20, scope: !402, inlinedAt: !7514)
!8344 = !DILocation(line: 331, column: 22, scope: !403, inlinedAt: !7514)
!8345 = !DILocation(line: 339, column: 34, scope: !399, inlinedAt: !7514)
!8346 = !DILocation(line: 340, column: 12, scope: !398, inlinedAt: !7514)
!8347 = !DILocation(line: 2050, column: 5, scope: !389, inlinedAt: !7491)
!8348 = !DILocation(line: 660, column: 9, scope: !386, inlinedAt: !7481)
!8349 = !DILocation(line: 124, column: 27, scope: !7424, inlinedAt: !7428)
!8350 = !DILocation(line: 573, column: 14, scope: !7528, inlinedAt: !7529)
!8351 = !DILocation(line: 127, column: 37, scope: !7423, inlinedAt: !7428)
!8352 = !DILocation(line: 970, column: 18, scope: !7463, inlinedAt: !7464)
!8353 = !DILocation(line: 128, column: 38, scope: !7423, inlinedAt: !7428)
!8354 = !DILocation(line: 970, column: 18, scope: !7463, inlinedAt: !7469)
!8355 = !DILocation(line: 130, column: 20, scope: !7423, inlinedAt: !7428)
!8356 = !DILocation(line: 90, column: 37, scope: !7417, inlinedAt: !7420)
!8357 = !DILocation(line: 166, column: 5, scope: !379, inlinedAt: !7537)
!8358 = !DILocation(line: 1471, column: 14, scope: !380, inlinedAt: !7542)
!8359 = !DILocation(line: 2048, column: 32, scope: !387, inlinedAt: !7549)
!8360 = !DILocation(line: 611, column: 9, scope: !395, inlinedAt: !7573)
!8361 = !DILocation(line: 1865, column: 86, scope: !393, inlinedAt: !7560)
!8362 = !DILocation(line: 611, column: 9, scope: !395, inlinedAt: !7583)
!8363 = !DILocation(line: 1865, column: 86, scope: !393, inlinedAt: !7567)
!8364 = !DILocation(line: 328, column: 20, scope: !402, inlinedAt: !7577)
!8365 = !DILocation(line: 331, column: 22, scope: !403, inlinedAt: !7577)
!8366 = !DILocation(line: 339, column: 34, scope: !399, inlinedAt: !7577)
!8367 = !DILocation(line: 340, column: 12, scope: !398, inlinedAt: !7577)
!8368 = !DILocation(line: 2050, column: 5, scope: !389, inlinedAt: !7554)
!8369 = !DILocation(line: 660, column: 9, scope: !386, inlinedAt: !7544)
!8370 = !DILocation(line: 90, column: 36, scope: !7417, inlinedAt: !7420)
!8371 = !DILocation(line: 92, column: 30, scope: !7416, inlinedAt: !7420)
!8372 = !DILocation(line: 573, column: 14, scope: !7590, inlinedAt: !7591)
!8373 = !DILocation(line: 95, column: 34, scope: !7415, inlinedAt: !7420)
!8374 = !DILocation(line: 970, column: 18, scope: !7594, inlinedAt: !7595)
!8375 = !DILocation(line: 96, column: 35, scope: !7415, inlinedAt: !7420)
!8376 = !DILocation(line: 871, column: 18, scope: !7531, inlinedAt: !7532)
!8377 = !DILocation(line: 970, column: 18, scope: !7594, inlinedAt: !7597)
!8378 = !DILocation(line: 89, column: 19, scope: !7417, inlinedAt: !7420)
!8379 = !DILocation(line: 0, scope: !7394, inlinedAt: !7406)
!8380 = !DILocation(line: 0, scope: !7405, inlinedAt: !7406)
!8381 = !DILocation(line: 733, column: 18, scope: !7600, inlinedAt: !7603)
!8382 = !DILocation(line: 573, column: 14, scope: !7608, inlinedAt: !7609)
!8383 = !DILocation(line: 63, column: 2, scope: !7395, inlinedAt: !7406)
!8384 = !DILocation(line: 281, column: 14, scope: !7342, inlinedAt: !7343)
!8385 = !DILocation(line: 0, scope: !7320, inlinedAt: !7323)
!8386 = !DILocation(line: 105, column: 13, scope: !7007)
!8387 = !DILocation(line: 296, column: 9, scope: !7313, inlinedAt: !8179)
!8388 = !DILocation(line: 113, column: 9, scope: !7007)
!8389 = !DILocation(line: 291, column: 9, scope: !7615, inlinedAt: !8186)
!8390 = !DILocation(line: 117, column: 9, scope: !7008)
!8391 = !DILocation(line: 269, column: 21, scope: !7350, inlinedAt: !7616)
!8392 = !DILocation(line: 598, column: 21, scope: !7365, inlinedAt: !7625)
!8393 = !DILocation(line: 269, column: 17, scope: !7350, inlinedAt: !7616)
!8394 = !DILocation(line: 270, column: 5, scope: !7349, inlinedAt: !7616)
!8395 = !DILocation(line: 118, column: 9, scope: !7008)
!8396 = !DILocation(line: 120, column: 1, scope: !7016)
!8397 = !DILocation(line: 120, column: 1, scope: !7021)
!8398 = !DILocation(line: 120, column: 2, scope: !7025)
!8399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !8402, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !9498, templateParams: !9500, identifier: "ec568d67af4a717f371e19578ef584ef")
!8400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !8402, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !1173, templateParams: !9500, identifier: "f4bf8cb0ad2655d872b6c9825708676d")
!8401 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !8402, file: !979, size: 64, align: 64, elements: !9496, templateParams: !1173, identifier: "f4af45d5b3f9ae71cf138bb7b1f903ac", discriminator: !9501)
!8402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&regex_syntax::hir::literal::Literal>", scope: !1257, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !9493, templateParams: !1173, identifier: "b3af6cdf7b96cf13bf8406aeac8759fb")
!8403 = distinct !DILexicalBlock(scope: !8405, file: !9489, line: 77, column: 9)
!8404 = distinct !DILexicalBlock(scope: !8405, file: !9489, line: 70, column: 13)
!8405 = distinct !DILexicalBlock(scope: !8407, file: !9489, line: 63, column: 9)
!8406 = distinct !DILexicalBlock(scope: !8407, file: !9489, line: 59, column: 53)
!8407 = distinct !DILexicalBlock(scope: !8408, file: !9489, line: 58, column: 9)
!8408 = distinct !DILexicalBlock(scope: !8409, file: !9489, line: 46, column: 9)
!8409 = distinct !DILexicalBlock(scope: !8410, file: !9489, line: 45, column: 9)
!8410 = distinct !DILexicalBlock(scope: !8411, file: !9489, line: 39, column: 9)
!8411 = distinct !DILexicalBlock(scope: !8412, file: !9489, line: 24, column: 9)
!8412 = distinct !DISubprogram(name: "quicksort<regex_syntax::hir::literal::Literal, fn(&regex_syntax::hir::literal::Literal, &regex_syntax::hir::literal::Literal) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB15_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !9490, file: !9489, line: 16, type: !9492, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, templateParams: !2515, retainedNodes: !9517)
!8413 = distinct !DISubprogram(name: "index_mut<regex_syntax::hir::literal::Literal, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCsj6eKBz9Db1c_4core5slice5indexSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralINtNtNtB8_3ops5index8IndexMutINtNtB1B_5range9RangeFromjEE9index_mutCs9GYDdpCSJ4S_14regex_automata", scope: !2766, file: !2764, line: 31, type: !2768, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, templateParams: !2775, retainedNodes: !9522)
!8414 = distinct !DILexicalBlock(scope: !8415, file: !2764, line: 562, column: 13)
!8415 = distinct !DISubprogram(name: "index_mut<regex_syntax::hir::literal::Literal>", linkageName: "_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralE9index_mutCs9GYDdpCSJ4S_14regex_automata", scope: !2776, file: !2764, line: 556, type: !2778, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, templateParams: !2540, retainedNodes: !9528)
!8416 = distinct !DISubprogram(name: "small_sort<regex_syntax::hir::literal::Literal, fn(&regex_syntax::hir::literal::Literal, &regex_syntax::hir::literal::Literal) -> bool>", linkageName: "_RINvXs_NtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsortNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNtB5_23StableSmallSortTypeImpl10small_sortNvYBY_NtNtBd_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !9534, file: !2677, line: 56, type: !2832, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, templateParams: !2515, retainedNodes: !9537)
!8417 = distinct !DILocation(line: 27, column: 13, scope: !8411)
!8418 = distinct !DILocation(line: 0, scope: !8416, inlinedAt: !8417)
!8419 = distinct !{!8419, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata"}
!8420 = distinct !{!8420, !8419, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata: argument 0"}
!8421 = distinct !DILexicalBlock(scope: !8442, file: !2677, line: 279, column: 9)
!8422 = distinct !DILexicalBlock(scope: !8423, file: !2677, line: 272, column: 13)
!8423 = distinct !DILexicalBlock(scope: !8424, file: !2677, line: 272, column: 13)
!8424 = distinct !DILexicalBlock(scope: !8425, file: !2677, line: 270, column: 13)
!8425 = distinct !DILexicalBlock(scope: !8426, file: !2677, line: 269, column: 13)
!8426 = distinct !DILexicalBlock(scope: !8427, file: !2677, line: 268, column: 13)
!8427 = distinct !DILexicalBlock(scope: !8436, file: !2677, line: 265, column: 9)
!8428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<usize>", scope: !2696, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !9576, templateParams: !9578, identifier: "bbe7413233f440b9253e9d941ef2e852")
!8429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<usize>", scope: !2693, file: !979, size: 64, align: 64, flags: DIFlagPublic, elements: !9574, templateParams: !1457, identifier: "2e69883e45a3a3af5bde60f15769dfdf")
!8430 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<usize>", scope: !2744, file: !979, size: 64, align: 64, elements: !9572, templateParams: !1457, identifier: "66ae3aaa7001991d6ff5932061b4982f")
!8431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IndexRange", scope: !9579, file: !979, size: 128, align: 64, flags: DIFlagProtected, elements: !9582, templateParams: !1173, identifier: "6399049c448f3d948340da31d7f9cb52")
!8432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<usize>; 2]>", scope: !9565, file: !979, size: 256, align: 64, flags: DIFlagProtected, elements: !9569, templateParams: !9584, identifier: "b4adea54be96b478b313c53b87450e62")
!8433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<usize>; 2]>>", scope: !2696, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !9564, templateParams: !9586, identifier: "db2accff23916fd9709d88ee94b9ff3d")
!8434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<usize>; 2]>>", scope: !2693, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !9562, templateParams: !9588, identifier: "7272d5db6351c5bd9047b49ae3d0441")
!8435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IntoIter<usize, 2>", scope: !9558, file: !979, size: 256, align: 64, flags: DIFlagPublic, elements: !9560, templateParams: !1457, identifier: "b65ca347882d861245c1de4e880f1347")
!8436 = distinct !DILexicalBlock(scope: !8442, file: !2677, line: 265, column: 9)
!8437 = distinct !DISubprogram(name: "small_sort_general_with_scratch<regex_syntax::hir::literal::Literal, fn(&regex_syntax::hir::literal::Literal, &regex_syntax::hir::literal::Literal) -> bool>", linkageName: "_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata", scope: !2678, file: !2677, line: 220, type: !9539, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, templateParams: !2515, retainedNodes: !9556)
!8438 = distinct !DILexicalBlock(scope: !8437, file: !2677, line: 225, column: 5)
!8439 = distinct !DILexicalBlock(scope: !8438, file: !2677, line: 234, column: 5)
!8440 = distinct !DILexicalBlock(scope: !8439, file: !2677, line: 235, column: 5)
!8441 = distinct !DILexicalBlock(scope: !8440, file: !2677, line: 239, column: 9)
!8442 = distinct !DILexicalBlock(scope: !8441, file: !2677, line: 241, column: 9)
!8443 = distinct !DILocation(line: 61, column: 9, scope: !8416, inlinedAt: !8417)
!8444 = distinct !DILocation(line: 292, column: 5, scope: !8442, inlinedAt: !8443)
!8445 = distinct !DILocation(line: 847, column: 1, scope: !414, inlinedAt: !8444)
!8446 = distinct !DILocation(line: 0, scope: !413, inlinedAt: !8445)
end_hunk_2
