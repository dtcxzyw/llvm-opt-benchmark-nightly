Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.04?download=true
inline.NumInlined: 300
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCNvXs1z_NtNtNtB1y_11collections5btree3mapINtB2k_8BTreeMapyyEINtNtBa_7convert4FromAB1m_j4_E4from0E0ECs3f36owOmepS_6quiche:bb.a

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2, !dbg !6120
    #dbg_value(ptr %i.c, !6098, !DIExpression(), !6114)
    #dbg_value(ptr %i.c, !6102, !DIExpression(), !6108)
  br label %.lr.ph, !dbg !6121

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvXs1z_NtNtNtB1k_11collections5btree3mapINtB26_8BTreeMapyyEINtNtBa_7convert4FromAB18_j4_E4from0E0ECs3f36owOmepS_6quiche.exit, %bb.c
  ret void, !dbg !6122

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvXs1z_NtNtNtB1k_11collections5btree3mapINtB26_8BTreeMapyyEINtNtBa_7convert4FromAB18_j4_E4from0E0ECs3f36owOmepS_6quiche.exit
  %.sroa.0.012 = phi ptr [ %i.l, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvXs1z_NtNtNtB1k_11collections5btree3mapINtB26_8BTreeMapyyEINtNtBa_7convert4FromAB18_j4_E4from0E0ECs3f36owOmepS_6quiche.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
    #dbg_value(ptr %.sroa.0.012, !6102, !DIExpression(), !6108)
    #dbg_value(ptr poison, !2095, !DIExpression(), !6055)
    #dbg_value(ptr poison, !2100, !DIExpression(), !6056)
    #dbg_value(ptr poison, !2095, !DIExpression(), !6059)
    #dbg_value(ptr poison, !2100, !DIExpression(), !6060)
    #dbg_value(ptr poison, !2104, !DIExpression(), !6062)
    #dbg_value(ptr poison, !2082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6063)
    #dbg_value(ptr %0, !2077, !DIExpression(), !6064)
    #dbg_value(ptr %.sroa.0.012, !2078, !DIExpression(), !6064)
    #dbg_value(ptr %.sroa.0.012, !2108, !DIExpression(), !6066)
    #dbg_value(ptr %.sroa.0.012, !2111, !DIExpression(), !6068)
    #dbg_value(ptr poison, !2079, !DIExpression(), !6064)
    #dbg_value(i64 1, !2109, !DIExpression(), !6066)
    #dbg_value(i64 1, !2115, !DIExpression(), !6070)
    #dbg_value(i64 1, !2109, !DIExpression(), !6072)
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -16, !dbg !6123 ; 4 uses
    #dbg_value(ptr %i.d, !2080, !DIExpression(), !6073)
    #dbg_value(ptr %i.d, !2108, !DIExpression(), !6072)
  %.val18.i = load i64, ptr %.sroa.0.012, align 8, !dbg !6121, !noundef !584 ; 3 uses
  %.val19.i = load i64, ptr %i.d, align 8, !dbg !6121, !noundef !584
    #dbg_value(ptr poison, !1898, !DIExpression(), !6075)
    #dbg_value(ptr poison, !1901, !DIExpression(), !6075)
    #dbg_value(ptr poison, !1907, !DIExpression(), !6077)
    #dbg_value(ptr poison, !1911, !DIExpression(), !6078)
  %i.e = icmp ult i64 %.val18.i, %.val19.i, !dbg !6124
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvXs1z_NtNtNtB1k_11collections5btree3mapINtB26_8BTreeMapyyEINtNtBa_7convert4FromAB18_j4_E4from0E0ECs3f36owOmepS_6quiche.exit, !dbg !6121

bb.d:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 8, !dbg !6125
  %i.g = load i64, ptr %i.f, align 8, !dbg !6125, !noundef !584
    #dbg_value(i64 %.val18.i, !2081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6080)
    #dbg_value(i64 %i.g, !2081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6080)
    #dbg_value(ptr undef, !2082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6063)
    #dbg_value(ptr %.sroa.0.012, !2082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6063)
    #dbg_value(i64 1, !2082, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6063)
    #dbg_value(ptr %i.d, !2108, !DIExpression(), !6072)
    #dbg_value(ptr %i.d, !2080, !DIExpression(), !6073)
    #dbg_value(ptr %i.d, !2116, !DIExpression(), !6070)
    #dbg_value(ptr %.sroa.0.012, !2117, !DIExpression(), !6070)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.012, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !6126
  %i.h = icmp eq ptr %i.d, %0, !dbg !6127
  br i1 %i.h, label %._crit_edge18, label %.lr.ph17, !dbg !6127

bb.e:                                             ; preds = %.lr.ph17
    #dbg_value(ptr %.sroa.0.0.i15, !2082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6063)
    #dbg_value(ptr %i.j, !2108, !DIExpression(), !6072)
    #dbg_value(ptr %i.j, !2080, !DIExpression(), !6073)
    #dbg_value(ptr %i.j, !2116, !DIExpression(), !6070)
    #dbg_value(ptr %.sroa.0.0.i15, !2117, !DIExpression(), !6070)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i15, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !dbg !6126
    #dbg_value(ptr %i.j, !2082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6063)
  %i.i = icmp eq ptr %i.j, %0, !dbg !6127
  br i1 %i.i, label %._crit_edge18, label %.lr.ph17, !dbg !6127

.lr.ph17:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i15 = phi ptr [ %i.j, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
    #dbg_value(ptr %.sroa.0.0.i15, !2108, !DIExpression(), !6072)
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.i15, i64 -16, !dbg !6128 ; 4 uses
    #dbg_value(ptr %i.j, !2080, !DIExpression(), !6073)
    #dbg_value(ptr %i.j, !2108, !DIExpression(), !6072)
  %.val17.i = load i64, ptr %i.j, align 8, !dbg !6129, !noundef !584
    #dbg_value(ptr poison, !1898, !DIExpression(), !6082)
    #dbg_value(ptr poison, !1901, !DIExpression(), !6082)
    #dbg_value(ptr poison, !1907, !DIExpression(), !6084)
    #dbg_value(ptr poison, !1911, !DIExpression(), !6085)
  %i.k = icmp ult i64 %.val18.i, %.val17.i, !dbg !6130
  br i1 %i.k, label %bb.e, label %._crit_edge18, !dbg !6129

._crit_edge18:                                    ; preds = %bb.e, %.lr.ph17, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i15, %.lr.ph17 ], !dbg !6131 ; 2 uses
    #dbg_value(ptr undef, !2100, !DIExpression(), !6056)
    #dbg_value(ptr undef, !2095, !DIExpression(), !6055)
    #dbg_value(ptr undef, !2104, !DIExpression(), !6062)
    #dbg_value(ptr %.sroa.0.0.i.lcssa, !2105, !DIExpression(), !6062)
    #dbg_value(i64 1, !2106, !DIExpression(), !6062)
  store i64 %.val18.i, ptr %.sroa.0.0.i.lcssa, align 8, !dbg !6132, !noalias !6115
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8, !dbg !6132
  store i64 %i.g, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !dbg !6132, !noalias !6115
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvXs1z_NtNtNtB1k_11collections5btree3mapINtB26_8BTreeMapyyEINtNtBa_7convert4FromAB18_j4_E4from0E0ECs3f36owOmepS_6quiche.exit, !dbg !6133

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvXs1z_NtNtNtB1k_11collections5btree3mapINtB26_8BTreeMapyyEINtNtBa_7convert4FromAB18_j4_E4from0E0ECs3f36owOmepS_6quiche.exit: ; preds = %.lr.ph, %._crit_edge18
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 16, !dbg !6134 ; 2 uses
    #dbg_value(ptr %i.l, !6102, !DIExpression(), !6108)
    #dbg_value(ptr %i.l, !6098, !DIExpression(), !6114)
  %.not = icmp eq ptr %i.l, %i.b, !dbg !6119
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !6119
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs1z_NtNtNtB18_11collections5btree3mapINtB1T_8BTreeMapyyEINtNtBa_7convert4FromABW_j4_E4from0E0ECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6157 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !6515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6565)
    #dbg_value(ptr %0, !6566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6570)
    #dbg_value(ptr %0, !6571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6576)
    #dbg_value(ptr %0, !6577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6584)
    #dbg_value(i64 %1, !6515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6565)
    #dbg_value(i64 %1, !6566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6570)
    #dbg_value(i64 %1, !6571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6576)
    #dbg_value(i64 %1, !6577, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6584)
    #dbg_value(ptr %2, !6516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6565)
    #dbg_value(i64 %3, !6516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6565)
    #dbg_value(i1 %4, !6517, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6565)
    #dbg_value(ptr %5, !6518, !DIExpression(), !6565)
    #dbg_declare(ptr %i.b, !6523, !DIExpression(), !6585)
    #dbg_declare(ptr %i.a, !6526, !DIExpression(), !6586)
    #dbg_value(i64 4611686018427387904, !6587, !DIExpression(), !6597)
    #dbg_value(i64 64, !6602, !DIExpression(), !6606)
    #dbg_value(i64 %1, !6519, !DIExpression(), !6607)
    #dbg_value(i64 %1, !6600, !DIExpression(), !6608)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !7002
  br i1 %i.c, label %bb.ae, label %bb.b, !dbg !7002

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !6591, !DIExpression(), !6597)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !7003
    #dbg_value(i64 %i.d, !6592, !DIExpression(), !6609)
  %i.e = urem i64 4611686018427387904, %1, !dbg !7004
    #dbg_value(i64 %i.e, !6593, !DIExpression(), !6610)
  %.not = icmp ne i64 %i.e, 0, !dbg !7005
  %i.f = zext i1 %.not to i64, !dbg !7005
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !7005 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !6520, !DIExpression(), !6611)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !7006
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !7006

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !7007
    #dbg_value(i64 %i.h, !6521, !DIExpression(), !6612)
  br label %bb.e, !dbg !7007

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !7008
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !7009
    #dbg_value(i64 %i.j, !6603, !DIExpression(), !6606)
    #dbg_value(ptr undef, !6613, !DIExpression(DW_OP_deref), !6169)
    #dbg_value(ptr undef, !6614, !DIExpression(DW_OP_deref), !6169)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !7010
    #dbg_value(i64 %..i, !6521, !DIExpression(), !6612)
  br label %bb.e, !dbg !7011

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !6611 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !6521, !DIExpression(), !6612)
    #dbg_value(i64 0, !6522, !DIExpression(), !6616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7012
    #dbg_value(ptr %i.b, !6525, !DIExpression(), !6617)
    #dbg_value(ptr %i.b, !6618, !DIExpression(), !6626)
    #dbg_value(ptr %i.b, !6618, !DIExpression(), !6628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7013
    #dbg_value(ptr %i.a, !6527, !DIExpression(), !6629)
    #dbg_value(ptr %i.a, !6630, !DIExpression(), !6634)
    #dbg_value(ptr %i.a, !6630, !DIExpression(), !6636)
    #dbg_value(i64 0, !6528, !DIExpression(), !6637)
    #dbg_value(i64 1, !6529, !DIExpression(), !6638)
  %.not27.i80140 = icmp ugt i64 %.sroa.01.0, 2
  %.not27.i80145 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !7014

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ], !dbg !6637 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ], !dbg !6629 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ], !dbg !6612 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !6522, !DIExpression(), !6616)
    #dbg_value(i64 %.sroa.09.0, !6528, !DIExpression(), !6637)
    #dbg_value(i64 %.sroa.023.0, !6529, !DIExpression(), !6638)
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !7015 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !7015

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvXs1z_NtNtNtB1f_11collections5btree3mapINtB21_8BTreeMapyyEINtNtBa_7convert4FromAB13_j4_E4from0E0ECs3f36owOmepS_6quiche.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvXs1z_NtNtNtB1f_11collections5btree3mapINtB21_8BTreeMapyyEINtNtBa_7convert4FromAB13_j4_E4from0E0ECs3f36owOmepS_6quiche.exit ], [ 0, %bb.f ], !dbg !6639 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvXs1z_NtNtNtB1f_11collections5btree3mapINtB21_8BTreeMapyyEINtNtBa_7convert4FromAB13_j4_E4from0E0ECs3f36owOmepS_6quiche.exit ], [ 1, %bb.f ], !dbg !6639 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !6530, !DIExpression(), !6639)
    #dbg_value(i8 %.sroa.021.0, !6531, !DIExpression(), !6639)
    #dbg_value(i64 %.sroa.02.0, !6522, !DIExpression(), !6616)
    #dbg_value(i64 %.sroa.023.0, !6529, !DIExpression(), !6638)
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !7016
  br i1 %i.l, label %.lr.ph112, label %._crit_edge, !dbg !7016

.lr.ph112:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r, !dbg !7016

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !6567, !DIExpression(), !6570)
    #dbg_value(i64 %.sroa.09.0, !6572, !DIExpression(), !6576)
    #dbg_value(i64 %.sroa.09.0, !6640, !DIExpression(), !6645)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !7017 ; 11 uses
    #dbg_value(i64 %i.n, !6573, !DIExpression(), !6646)
    #dbg_value(i64 %i.n, !6642, !DIExpression(), !6645)
    #dbg_value(ptr %0, !6641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6645)
    #dbg_value(i64 %1, !6641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6645)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !7018 ; 9 uses
    #dbg_value(ptr %i.o, !6647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6178)
    #dbg_value(i64 %i.n, !6647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6178)
    #dbg_value(ptr %2, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6178)
    #dbg_value(i64 %3, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6178)
    #dbg_value(i64 %.sroa.01.0, !6651, !DIExpression(), !6178)
    #dbg_value(i64 %.sroa.01.0, !6659, !DIExpression(), !6181)
    #dbg_value(i1 %4, !6652, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6178)
    #dbg_value(ptr %5, !6653, !DIExpression(), !6178)
    #dbg_value(i64 %i.n, !6654, !DIExpression(), !6182)
    #dbg_value(i64 %i.n, !6660, !DIExpression(), !6184)
    #dbg_value(i64 %i.n, !6660, !DIExpression(), !6181)
  %.not.i79 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !7019
  br i1 %.not.i79, label %bb.i, label %bb.j, !dbg !7019

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread143, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !7020

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !6663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6190)
    #dbg_value(ptr %i.o, !6671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6193)
    #dbg_value(ptr %i.o, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6197)
    #dbg_value(ptr %i.o, !6671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6199)
    #dbg_value(ptr %i.o, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6201)
    #dbg_value(ptr %i.o, !6671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6203)
    #dbg_value(ptr %i.o, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6205)
    #dbg_value(ptr %i.o, !6671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6207)
    #dbg_value(ptr %i.o, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6209)
    #dbg_value(ptr %i.o, !6671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6211)
    #dbg_value(ptr %i.o, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6213)
    #dbg_value(ptr %i.o, !6671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6215)
    #dbg_value(ptr %i.o, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6217)
    #dbg_value(i64 %i.n, !6663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6190)
    #dbg_value(i64 %i.n, !6671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6193)
    #dbg_value(i64 %i.n, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6197)
    #dbg_value(i64 %i.n, !6671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6199)
    #dbg_value(i64 %i.n, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6201)
    #dbg_value(i64 %i.n, !6671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6203)
    #dbg_value(i64 %i.n, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6205)
    #dbg_value(i64 %i.n, !6671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6207)
    #dbg_value(i64 %i.n, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6209)
    #dbg_value(i64 %i.n, !6671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6211)
    #dbg_value(i64 %i.n, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6213)
    #dbg_value(i64 %i.n, !6671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6215)
    #dbg_value(i64 %i.n, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6217)
    #dbg_value(ptr %5, !6666, !DIExpression(), !6190)
    #dbg_value(i64 1, !6674, !DIExpression(), !6193)
    #dbg_value(i64 1, !6686, !DIExpression(), !6197)
    #dbg_value(i64 0, !6674, !DIExpression(), !6199)
    #dbg_value(i64 0, !6686, !DIExpression(), !6201)
    #dbg_value(i64 %i.n, !6667, !DIExpression(), !6218)
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !7021
  br i1 %i.p, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit, label %bb.k, !dbg !7021

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !6668, !DIExpression(), !6219)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !7022
  %.val32.i = load i64, ptr %i.q, align 8, !dbg !7023, !alias.scope !6694, !noalias !6695, !noundef !584 ; 3 uses
  %.val33.i = load i64, ptr %i.o, align 8, !dbg !7023, !alias.scope !6694, !noalias !6695, !noundef !584
    #dbg_value(ptr poison, !1898, !DIExpression(), !6225)
    #dbg_value(ptr poison, !1901, !DIExpression(), !6225)
    #dbg_value(ptr poison, !1907, !DIExpression(), !6227)
    #dbg_value(ptr poison, !1911, !DIExpression(), !6228)
  %i.r = icmp ult i64 %.val32.i, %.val33.i, !dbg !7024 ; 2 uses
    #dbg_value(i1 %i.r, !6669, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6229)
    #dbg_value(i64 2, !6668, !DIExpression(), !6219)
    #dbg_value(i64 2, !6668, !DIExpression(), !6219)
  %.not119 = icmp eq i64 %i.n, 2, !dbg !7025      ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader97, !dbg !7026

.preheader97:                                     ; preds = %bb.k
  br i1 %.not119, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread, label %.lr.ph, !dbg !7027

.preheader:                                       ; preds = %bb.k
  br i1 %.not119, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread143, label %.lr.ph106, !dbg !7028

.lr.ph:                                           ; preds = %.preheader97, %bb.l
  %.val31.i = phi i64 [ %.val30.i, %bb.l ], [ %.val32.i, %.preheader97 ], !dbg !7029
  %.sroa.01.0.i.i102 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader97 ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i102, !6668, !DIExpression(), !6219)
    #dbg_value(i64 %.sroa.01.0.i.i102, !6675, !DIExpression(), !6211)
    #dbg_value(i64 %.sroa.01.0.i.i102, !6687, !DIExpression(), !6213)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i102, !dbg !7030
    #dbg_value(i64 %.sroa.01.0.i.i102, !6675, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !6215)
    #dbg_value(i64 %.sroa.01.0.i.i102, !6687, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !6217)
  %.val30.i = load i64, ptr %i.s, align 8, !dbg !7029, !alias.scope !6694, !noalias !6695, !noundef !584 ; 2 uses
    #dbg_value(ptr poison, !1898, !DIExpression(), !6231)
    #dbg_value(ptr poison, !1901, !DIExpression(), !6231)
    #dbg_value(ptr poison, !1907, !DIExpression(), !6233)
    #dbg_value(ptr poison, !1911, !DIExpression(), !6234)
  %i.t = icmp ult i64 %.val30.i, %.val31.i, !dbg !7031
  br i1 %i.t, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i, label %bb.l, !dbg !7029

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i102, 1, !dbg !7032 ; 2 uses
    #dbg_value(i64 %i.u, !6668, !DIExpression(), !6219)
  %exitcond.not = icmp eq i64 %i.u, %i.n, !dbg !7027
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i, label %.lr.ph, !dbg !7027

.lr.ph106:                                        ; preds = %.preheader, %bb.m
  %.val29.i = phi i64 [ %.val.i, %bb.m ], [ %.val32.i, %.preheader ], !dbg !7033
  %.sroa.01.1.i.i105 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.01.1.i.i105, !6668, !DIExpression(), !6219)
    #dbg_value(i64 %.sroa.01.1.i.i105, !6675, !DIExpression(), !6203)
    #dbg_value(i64 %.sroa.01.1.i.i105, !6687, !DIExpression(), !6205)
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i105, !dbg !7034
    #dbg_value(i64 %.sroa.01.1.i.i105, !6675, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !6207)
    #dbg_value(i64 %.sroa.01.1.i.i105, !6687, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !6209)
  %.val.i = load i64, ptr %i.v, align 8, !dbg !7033, !alias.scope !6694, !noalias !6695, !noundef !584 ; 2 uses
    #dbg_value(ptr poison, !1898, !DIExpression(), !6236)
    #dbg_value(ptr poison, !1901, !DIExpression(), !6236)
    #dbg_value(ptr poison, !1907, !DIExpression(), !6238)
    #dbg_value(ptr poison, !1911, !DIExpression(), !6239)
  %i.w = icmp ult i64 %.val.i, %.val29.i, !dbg !7035
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i, !dbg !7033

bb.m:                                             ; preds = %.lr.ph106
  %i.x = add nuw i64 %.sroa.01.1.i.i105, 1, !dbg !7036 ; 2 uses
    #dbg_value(i64 %i.x, !6668, !DIExpression(), !6219)
  %exitcond126.not = icmp eq i64 %i.x, %i.n, !dbg !7028
  br i1 %exitcond126.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i, label %.lr.ph106, !dbg !7028

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph106
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i105, %.lr.ph106 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i102, %.lr.ph ], [ %i.n, %bb.l ], !dbg !7037 ; 6 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !6655, !DIExpression(), !6240)
    #dbg_value(i64 %.sroa.0.0.i.i, !6696, !DIExpression(), !6243)
    #dbg_value(i1 poison, !6656, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6240)
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !7038
  tail call void @llvm.assume(i1 %i.y), !dbg !7039
  %.not27.i80 = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !7040
  br i1 %.not27.i80, label %bb.i, label %bb.n, !dbg !7040

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread143: ; preds = %.preheader
    #dbg_value(i64 2, !6655, !DIExpression(), !6240)
    #dbg_value(i64 2, !6696, !DIExpression(), !6243)
    #dbg_value(i1 poison, !6656, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6240)
  br i1 %.not27.i80145, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i, !dbg !7040

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread: ; preds = %.preheader97
    #dbg_value(i64 2, !6655, !DIExpression(), !6240)
    #dbg_value(i64 2, !6696, !DIExpression(), !6243)
    #dbg_value(i1 poison, !6656, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6240)
  br i1 %.not27.i80140, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit, !dbg !7040

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i
    #dbg_value(i1 %i.r, !6656, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6240)
  br i1 %i.r, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit, !dbg !7041

bb.o:                                             ; preds = %bb.i
    #dbg_value(ptr undef, !6613, !DIExpression(DW_OP_deref), !6245)
    #dbg_value(ptr undef, !6614, !DIExpression(DW_OP_deref), !6245)
  %..i87 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0), !dbg !7042
    #dbg_value(i64 %..i87, !6701, !DIExpression(), !6248)
  %i.z = shl nuw nsw i64 %..i87, 1, !dbg !7043
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvXs1z_NtNtNtB1f_11collections5btree3mapINtB21_8BTreeMapyyEINtNtBa_7convert4FromAB13_j4_E4from0E0ECs3f36owOmepS_6quiche.exit, !dbg !7044

bb.p:                                             ; preds = %bb.i
    #dbg_value(i64 32, !6659, !DIExpression(), !6184)
    #dbg_value(ptr undef, !6613, !DIExpression(DW_OP_deref), !6250)
    #dbg_value(ptr undef, !6614, !DIExpression(DW_OP_deref), !6250)
  %..i86 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32), !dbg !7045 ; 2 uses
    #dbg_value(i64 %..i86, !6657, !DIExpression(), !6251)
    #dbg_value(i64 %..i86, !6696, !DIExpression(), !6253)
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs1z_NtNtNtB1h_11collections5btree3mapINtB23_8BTreeMapyyEINtNtBa_7convert4FromAB15_j4_E4from0E0ECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i86, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #21, !dbg !7046, !inline_history !6254
  %i.aa = shl nuw nsw i64 %..i86, 1, !dbg !7047
  %i.ab = or disjoint i64 %i.aa, 1, !dbg !7047
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvXs1z_NtNtNtB1f_11collections5btree3mapINtB21_8BTreeMapyyEINtNtBa_7convert4FromAB13_j4_E4from0E0ECs3f36owOmepS_6quiche.exit, !dbg !7044

_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !7048
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i.epil.preheader, !dbg !7048

_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i
  %.sroa.0.026.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i ], [ %i.av, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i64 %i.aj to i1, !dbg !7048
  tail call void @llvm.assume(i1 %lcmp.mod171), !dbg !7048
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !6712, !DIExpression(), !6265)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i.epil.init), !6724, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6268)
  %i.ac = xor i64 %.sroa.0.026.i.i.epil.init, -1, !dbg !7049
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i.epil.init, !dbg !7050 ; 2 uses
    #dbg_value(ptr %i.ad, !6724, !DIExpression(), !6268)
  %i.ae = getelementptr [16 x i8], ptr %i.ak, i64 %i.ac, !dbg !7051 ; 2 uses
    #dbg_value(ptr %i.ae, !6727, !DIExpression(), !6268)
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !dbg !7052, !alias.scope !6729, !noalias !6730
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !dbg !7052, !alias.scope !6731, !noalias !6695
  store <2 x i64> %i.af, ptr %i.ae, align 8, !dbg !7052, !alias.scope !6732, !noalias !6733
    #dbg_value(i64 %.sroa.0.026.i.i.epil.init, !6712, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6265)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit, !dbg !7053

_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit.loopexit.unr-lcssa, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i9295 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread ], [ %.sroa.0.0.i.i141148152, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i141148152, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i.epil.preheader ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i9295, 1, !dbg !7053
  %i.ah = or disjoint i64 %i.ag, 1, !dbg !7053
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvXs1z_NtNtNtB1f_11collections5btree3mapINtB21_8BTreeMapyyEINtNtBa_7convert4FromAB13_j4_E4from0E0ECs3f36owOmepS_6quiche.exit, !dbg !7054

bb.q:                                             ; preds = %bb.n
    #dbg_value(ptr %i.o, !6716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6274)
    #dbg_value(ptr %i.o, !6734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6278)
    #dbg_value(i64 %.sroa.0.0.i.i, !6716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6274)
    #dbg_value(i64 %.sroa.0.0.i.i, !6734, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6278)
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1, !dbg !7055  ; 2 uses
    #dbg_value(i64 %i.ai, !6717, !DIExpression(), !6279)
    #dbg_value(ptr %i.o, !6718, !DIExpression(), !6280)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.0.i.i), !6719, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6280)
    #dbg_value(ptr %i.o, !6720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6281)
    #dbg_value(i64 %i.ai, !6720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6281)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.ai, i64 %.sroa.0.0.i.i), !6721, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6281)
    #dbg_value(i64 %i.ai, !6721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6744), !dbg !7056, !noalias !6695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6745), !dbg !7056, !noalias !6695
    #dbg_value(ptr %i.o, !6707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6282)
    #dbg_value(i64 %i.ai, !6707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6282)
    #dbg_value(!DIArgList(ptr %i.o, i64 0, i64 %i.ai, i64 %.sroa.0.0.i.i), !6708, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6282)
    #dbg_value(i64 %i.ai, !6708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6282)
    #dbg_value(i64 %i.ai, !6709, !DIExpression(), !6282)
    #dbg_value(ptr %i.o, !6710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6283)
    #dbg_value(i64 %i.ai, !6710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6283)
    #dbg_value(i64 0, !6712, !DIExpression(), !6265)
  %.not.i.i = icmp eq i64 %i.ai, 0, !dbg !7048
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i, !dbg !7048

_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread143, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread143 ] ; 4 uses
  %.sroa.0.0.i.i141148152 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB20_8BTreeMapyyEINtNtB8_7convert4FromAB12_j4_E4from0E0ECs3f36owOmepS_6quiche.exit.i.thread143 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i141148152, !dbg !7057 ; 3 uses
    #dbg_value(ptr %i.ak, !6719, !DIExpression(), !6280)
    #dbg_value(!DIArgList(ptr %i.ak, i64 0, i64 %i.aj), !6721, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6281)
    #dbg_value(!DIArgList(ptr %i.ak, i64 0, i64 %i.aj), !6708, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6282)
  %xtraiter = and i64 %i.aj, 1, !dbg !7048
  %i.al = icmp eq i64 %i.aj, 1, !dbg !7048
  br i1 %i.al, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i.new, !dbg !7048

_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i
  %unroll_iter = and i64 %i.aj, 9223372036854775806, !dbg !7048
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i, !dbg !7048

_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i.new
  %.sroa.0.026.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i.new ], [ %i.av, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i ]
    #dbg_value(i64 %.sroa.0.026.i.i, !6712, !DIExpression(), !6265)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !6724, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6268)
  %i.am = xor i64 %.sroa.0.026.i.i, -1, !dbg !7049
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !7050 ; 2 uses
    #dbg_value(ptr %i.an, !6724, !DIExpression(), !6268)
  %i.ao = getelementptr [16 x i8], ptr %i.ak, i64 %i.am, !dbg !7051 ; 2 uses
    #dbg_value(ptr %i.ao, !6727, !DIExpression(), !6268)
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !dbg !7052, !alias.scope !6729, !noalias !6730
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !dbg !7052, !alias.scope !6731, !noalias !6695
  store <2 x i64> %i.ap, ptr %i.ao, align 8, !dbg !7052, !alias.scope !6732, !noalias !6733
    #dbg_value(i64 %.sroa.0.026.i.i, !6712, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !6265)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !6724, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6268)
  %i.aq = xor i64 %.sroa.0.026.i.i, -2, !dbg !7049
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !7050
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !7050 ; 2 uses
    #dbg_value(ptr %i.as, !6724, !DIExpression(), !6268)
  %i.at = getelementptr [16 x i8], ptr %i.ak, i64 %i.aq, !dbg !7051 ; 2 uses
    #dbg_value(ptr %i.at, !6727, !DIExpression(), !6268)
  %i.au = load <2 x i64>, ptr %i.as, align 8, !dbg !7052, !alias.scope !6729, !noalias !6730
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !7052, !alias.scope !6731, !noalias !6695
  store <2 x i64> %i.au, ptr %i.at, align 8, !dbg !7052, !alias.scope !6732, !noalias !6733
  %i.av = add nuw nsw i64 %.sroa.0.026.i.i, 2, !dbg !7058 ; 2 uses
    #dbg_value(i64 %i.av, !6712, !DIExpression(), !6265)
  %niter.next.1 = add i64 %niter, 2, !dbg !7048   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !7048
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit21.i.i, !dbg !7048

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvXs1z_NtNtNtB1f_11collections5btree3mapINtB21_8BTreeMapyyEINtNtBa_7convert4FromAB13_j4_E4from0E0ECs3f36owOmepS_6quiche.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit
  %.sroa.0.0.i81 = phi i64 [ %i.ah, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE7reverseCs3f36owOmepS_6quiche.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ], !dbg !7059 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !6530, !DIExpression(), !6639)
    #dbg_value(i64 %.sroa.023.0, !6748, !DIExpression(), !6754)
  %i.aw = lshr i64 %.sroa.023.0, 1, !dbg !7060
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.aw), !6755, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6765)
    #dbg_value(i64 %.sroa.09.0, !6758, !DIExpression(), !6765)
    #dbg_value(i64 %.sroa.0.0.i81, !6748, !DIExpression(), !6767)
  %i.ax = lshr i64 %.sroa.0.0.i81, 1, !dbg !7061
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.ax), !6759, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6765)
    #dbg_value(i64 %.sroa.0.0, !6760, !DIExpression(), !6765)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !7062 ; 2 uses
  %i.ay = sub nsw i64 %factor, %i.aw, !dbg !7062
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.aw), !6761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !6769)
  %i.az = add nuw nsw i64 %i.ax, %factor, !dbg !7063
    #dbg_value(i64 %i.az, !6762, !DIExpression(), !6770)
  %i.ba = mul i64 %i.ay, %.sroa.0.0, !dbg !7064
  %i.bb = mul i64 %i.az, %.sroa.0.0, !dbg !7065
  %i.bc = xor i64 %i.bb, %i.ba, !dbg !7066
    #dbg_value(i64 %i.bc, !6771, !DIExpression(), !6776)
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false), !dbg !7067
  %i.be = trunc nuw nsw i64 %i.bd to i8, !dbg !7066
    #dbg_value(i8 %i.be, !6531, !DIExpression(), !6639)
  br label %bb.g, !dbg !7068

bb.r:                                             ; preds = %.lr.ph112, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1i_11collections5btree3mapINtB24_8BTreeMapyyEINtNtBa_7convert4FromAB16_j4_E4from0E0ECs3f36owOmepS_6quiche.exit
  %.sroa.02.1111 = phi i64 [ %.sroa.02.0, %.lr.ph112 ], [ %i.bf, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1i_11collections5btree3mapINtB24_8BTreeMapyyEINtNtBa_7convert4FromAB16_j4_E4from0E0ECs3f36owOmepS_6quiche.exit ] ; 2 uses
  %.sroa.023.1110 = phi i64 [ %.sroa.023.0, %.lr.ph112 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1i_11collections5btree3mapINtB24_8BTreeMapyyEINtNtBa_7convert4FromAB16_j4_E4from0E0ECs3f36owOmepS_6quiche.exit ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1111, !6522, !DIExpression(), !6616)
    #dbg_value(i64 %.sroa.023.1110, !6529, !DIExpression(), !6638)
  %i.bf = add i64 %.sroa.02.1111, -1, !dbg !7069  ; 4 uses
    #dbg_value(i64 %i.bf, !6631, !DIExpression(), !6634)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf, !dbg !7070
  %i.bh = load i8, ptr %i.bg, align 1, !dbg !7071, !noundef !584
  %.not76 = icmp ult i8 %i.bh, %.sroa.021.0, !dbg !7071
  br i1 %.not76, label %._crit_edge, label %bb.s, !dbg !7071

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1i_11collections5btree3mapINtB24_8BTreeMapyyEINtNtBa_7convert4FromAB16_j4_E4from0E0ECs3f36owOmepS_6quiche.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1110, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1i_11collections5btree3mapINtB24_8BTreeMapyyEINtNtBa_7convert4FromAB16_j4_E4from0E0ECs3f36owOmepS_6quiche.exit ], !dbg !6637 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1111, %bb.r ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1i_11collections5btree3mapINtB24_8BTreeMapyyEINtNtBa_7convert4FromAB16_j4_E4from0E0ECs3f36owOmepS_6quiche.exit ], !dbg !6612 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !6621, !DIExpression(), !6628)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !7072
  store i64 %.sroa.023.1.lcssa, ptr %i.bi, align 8, !dbg !7073
    #dbg_value(i64 %.sroa.02.1.lcssa, !6631, !DIExpression(), !6636)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !7074
  store i8 %.sroa.021.0, ptr %i.bj, align 1, !dbg !7075
    #dbg_value(i64 %.sroa.02.1.lcssa, !6522, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6616)
  br i1 %i.k, label %bb.aa, label %bb.ab, !dbg !7076

bb.s:                                             ; preds = %bb.r
    #dbg_value(i64 %i.bf, !6621, !DIExpression(), !6626)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bf, !dbg !7077
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !7078, !noundef !584 ; 3 uses
    #dbg_value(i64 %i.bl, !6532, !DIExpression(), !6777)
    #dbg_value(i64 %i.bl, !6748, !DIExpression(), !6779)
  %i.bm = lshr i64 %i.bl, 1, !dbg !7079           ; 8 uses
    #dbg_value(i64 %.sroa.023.1110, !6748, !DIExpression(), !6781)
  %i.bn = lshr i64 %.sroa.023.1110, 1, !dbg !7080 ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche:bb.a
    #dbg_value(i64 %i.d, !1354, !DIExpression(), !12261)
    #dbg_value(i64 15, !1355, !DIExpression(), !12261)
    #dbg_value(i1 false, !1352, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12263)
    #dbg_value(i64 %i.d, !1335, !DIExpression(), !12264)
    #dbg_value(i64 %i.d, !1354, !DIExpression(), !12266)
  %i.e = add i64 %.val1, 17, !dbg !12319
    #dbg_value(i64 %i.e, !1355, !DIExpression(), !12266)
  %i.f = add i64 %i.e, %i.d, !dbg !12320          ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d, !dbg !12320
    #dbg_value(i1 %i.g, !1352, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12268)
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g), !dbg !12321
  tail call void @llvm.assume(i1 %i.h), !dbg !12321
    #dbg_value(i64 16, !12304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12269)
    #dbg_value(i64 16, !12308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12270)
    #dbg_value(i64 %i.f, !12304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12269)
    #dbg_value(i64 %i.f, !12308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12270)
    #dbg_value(i64 %i.d, !12309, !DIExpression(), !12270)
    #dbg_value(i64 %i.d, !12312, !DIExpression(), !12273)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !12313, !DIExpression(), !12273)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !12303, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12269)
    #dbg_value(ptr poison, !1436, !DIExpression(), !12275)
    #dbg_value(ptr poison, !1442, !DIExpression(), !12277)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !1439, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12275)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !1445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12277)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !1448, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12279)
    #dbg_value(!DIArgList(ptr %.val, i64 -16, i64 %i.c), !1454, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12281)
    #dbg_value(i64 16, !1440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12275)
    #dbg_value(i64 16, !1446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12277)
    #dbg_value(i64 16, !1452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12279)
    #dbg_value(i64 16, !1455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12281)
    #dbg_value(i64 %i.f, !1440, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12275)
    #dbg_value(i64 %i.f, !1446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12277)
    #dbg_value(i64 %i.f, !1452, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12279)
    #dbg_value(i64 %i.f, !1455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12281)
  %i.i = icmp eq i64 %i.f, 0, !dbg !12322
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyyENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs3f36owOmepS_6quiche.exit, label %bb.b, !dbg !12322

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c, !dbg !12323
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !1454, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12281)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !1448, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12279)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !1445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12277)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !1439, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12275)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.j), !12303, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12269)
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j, !dbg !12324
    #dbg_value(ptr %i.k, !12303, !DIExpression(), !12269)
    #dbg_value(ptr %i.k, !1439, !DIExpression(), !12275)
    #dbg_value(ptr %i.k, !1445, !DIExpression(), !12277)
    #dbg_value(ptr %i.k, !1448, !DIExpression(), !12279)
    #dbg_value(ptr %i.k, !1454, !DIExpression(), !12281)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !dbg !12325
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyyENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !12326

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyyENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs3f36owOmepS_6quiche.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void, !dbg !12327
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTyNtNtNtCs3f36owOmepS_6quiche2h36stream6StreamEE14reserve_rehashNCINvNtBd_3map11make_hasheryBW_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtB12_6stream14StreamIdHasherEE0Es_0INtNtNtB2w_3ops8function6FnOnceTOhEE9call_onceB12_(ptr noundef nonnull %0) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !12330 {
bb.a:
    #dbg_value(ptr %0, !12343, !DIExpression(), !12350)
    #dbg_declare(ptr poison, !12342, !DIExpression(), !12351)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12333)
    #dbg_value(ptr %0, !12356, !DIExpression(), !12333)
    #dbg_value(ptr %0, !12358, !DIExpression(), !12336)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs3f36owOmepS_6quiche2h36stream6StreamEEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0), !dbg !12360
  ret void, !dbg !12351
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs3f36owOmepS_6quiche6stream14StreamIdHasherENtB6_11BuildHasher8hash_oneRyEBU_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCs6Hru1xGhrwY_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCs83oNeXj4HCJ_8indexmap5inner8get_hashNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE0EB2w_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE14reserve_rehashNCINvNtB8_3map11make_hasheryuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECslhuR6oLIj3P_10prometheus(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTyyEENCNvMs3_NtCs3f36owOmepS_6quiche2h3NtB1E_6Config23set_additional_settings0ENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB2R_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendyE6extendBX_E0ENtNtB4t_8iterator8Iterator4folduNCINvNvB59_8for_each4callTyuENCINvXs1i_NtB2T_3mapINtB6i_7HashMapyuB3B_EIB4p_B64_E6extendBN_E0E0EB1G_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIteryKj6_ENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB1G_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendyE6extendAyB1t_E0ENtNtB3i_8iterator8Iterator4folduNCINvNvB41_8for_each4callTyuENCINvXs1i_NtB1I_3mapINtB5a_7HashMapyuB2q_EIB3e_B4W_E6extendBN_E0E0ECs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs3f36owOmepS_6quiche(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { noinline }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noinline noreturn }

!llvm.module.flags = !{!425, !426, !427, !428, !429}
!llvm.ident = !{!430}
!llvm.dbg.cu = !{!50}

!0 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, ())", file: !432, size: 64, align: 64, elements: !589, templateParams: !584, identifier: "b6044aec5995124f4096b2dc0216fd22")
!1 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(u64, ())>", scope: !583, file: !432, align: 8, flags: DIFlagPublic, elements: !584, templateParams: !586, identifier: "f95445e8eb8614d239163073f7cd7a4")
!2 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !591, file: !432, align: 8, flags: DIFlagPublic, elements: !584, identifier: "8460d4266e4993ec9914e3baad45ea18")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !598, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !601, templateParams: !603, identifier: "c31d4ef568cfbefd99aa13b8883a7b70")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTableInner", scope: !528, file: !432, size: 256, align: 64, flags: DIFlagPrivate, elements: !596, templateParams: !584, identifier: "9d8dadb85e0d0e69dfcc330720e76842")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTable<(u64, ()), alloc::alloc::Global>", scope: !528, file: !432, size: 256, align: 64, flags: DIFlagProtected, elements: !582, templateParams: !605, identifier: "ff37655f6c162ebde3ba9de8e46f8c55")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<u64, u64, ()>", scope: !607, file: !432, size: 64, align: 64, elements: !610, templateParams: !584, identifier: "aeba0800fd27af265dba508a08977f0e")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>>", scope: !573, file: !432, size: 128, align: 64, elements: !578, templateParams: !584, identifier: "e90245ae9bcebc44ac36b75b43c81e5")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>> as core::ops::function::FnMut<(usize)>>::{vtable_type}", file: !432, size: 320, align: 64, flags: DIFlagArtificial, elements: !571, vtableHolder: !7, templateParams: !584, identifier: "2b56e843c4be9af044ae4e3ed35b774f")
!9 = distinct !DIGlobalVariable(name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>> as core::ops::function::FnMut<(usize)>>::{vtable}", scope: null, file: !432, type: !8, isLocal: true, isDefinition: true)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>, hashbrown::map::make_hasher::{closure_env#0}<u64, (), std::hash::random::RandomState>>", scope: !617, file: !432, size: 128, align: 64, elements: !620, templateParams: !584, identifier: "a84a60c7c284ede73c087cc6207982")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<hashbrown::raw::{impl#8}::find_or_find_insert_index::{closure_env#0}<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>, hashbrown::map::make_hasher::{closure_env#0}<u64, (), std::hash::random::RandomState>> as core::ops::function::FnMut<(usize)>>::{vtable_type}", file: !432, size: 320, align: 64, flags: DIFlagArtificial, elements: !616, vtableHolder: !10, templateParams: !584, identifier: "8bfee948754fc1d973f401be4d5da0b2")
!12 = distinct !DIGlobalVariable(name: "<hashbrown::raw::{impl#8}::find_or_find_insert_index::{closure_env#0}<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>, hashbrown::map::make_hasher::{closure_env#0}<u64, (), std::hash::random::RandomState>> as core::ops::function::FnMut<(usize)>>::{vtable}", scope: null, file: !432, type: !11, isLocal: true, isDefinition: true)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !16, file: !432, size: 192, align: 64, flags: DIFlagPublic, elements: !668, templateParams: !670, identifier: "ae1403702f52d41f4de1db2622cf3fc8")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !16, file: !432, size: 192, align: 64, flags: DIFlagPublic, elements: !584, templateParams: !670, identifier: "8a4e8cce1268f60e3c1fc42b955d0ccc")
!15 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !16, file: !432, size: 192, align: 64, elements: !666, templateParams: !584, identifier: "19c3f06fc65faee28518b5615e86943b", discriminator: !671)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::vec::Vec<u8, alloc::alloc::Global>>", scope: !662, file: !432, size: 192, align: 64, flags: DIFlagPublic, elements: !663, templateParams: !584, identifier: "be823c551d2a2583f2549e7e5dfca487")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !20, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !677, templateParams: !679, identifier: "f8537dc9e136e1868f7865f055807cda")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !20, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !584, templateParams: !679, identifier: "272d7ff70eb3295084fee5c1f803fd34")
!19 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !20, file: !432, size: 128, align: 64, elements: !675, templateParams: !584, identifier: "e3f00a8a830b07ea699c2184a532d7de", discriminator: !680)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<u64>", scope: !662, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !672, templateParams: !584, identifier: "2216fc064ceed50c1c7ef8d103c270be")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u8>", scope: !583, file: !432, align: 8, flags: DIFlagPublic, elements: !584, templateParams: !603, identifier: "146b3aeda1c45f24e2166b366592181")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UsizeNoHighBit", scope: !694, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !696, templateParams: !584, identifier: "de2a7f83086bb66b1d84717ca15ed153")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u8>", scope: !697, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !700, templateParams: !603, identifier: "29b6b6df28c88bc2c540a8e9e6174ec0")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVecInner<alloc::alloc::Global>", scope: !685, file: !432, size: 128, align: 64, flags: DIFlagPrivate, elements: !692, templateParams: !701, identifier: "df99d7c016703de7881c5c4f5cc3291d")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<u8, alloc::alloc::Global>", scope: !685, file: !432, size: 128, align: 64, flags: DIFlagProtected, elements: !688, templateParams: !702, identifier: "812d0db64fea1b7464457f30f154f4")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<u8, alloc::alloc::Global>", scope: !681, file: !432, size: 192, align: 64, flags: DIFlagPublic, elements: !684, templateParams: !702, identifier: "1bd6b564d1f00359fe3d0a71aed88d28")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !30, file: !432, size: 8, align: 8, flags: DIFlagPublic, elements: !708, templateParams: !710, identifier: "91aca29c964514646ec10729e9b15ceb")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !30, file: !432, size: 8, align: 8, flags: DIFlagPublic, elements: !584, templateParams: !710, identifier: "a1e5bd7ea00020c34528cf89631419d9")
!29 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !30, file: !432, size: 8, align: 8, elements: !706, templateParams: !584, identifier: "e4403677b4ae00924590850adc9a55b0", discriminator: !711)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<quiche::h3::stream::Type>", scope: !662, file: !432, size: 8, align: 8, flags: DIFlagPublic, elements: !703, templateParams: !584, identifier: "b31150d62849e43796f39ef3568896a")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Stream", scope: !435, file: !432, size: 1024, align: 64, flags: DIFlagPublic, elements: !661, templateParams: !584, identifier: "8fddf0a3d30c4be2f8c7a8304ddaa751")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, quiche::h3::stream::Stream)", file: !432, size: 1088, align: 64, elements: !640, templateParams: !584, identifier: "de25adeb90b162971d3b1a4320821d6c")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(u64, quiche::h3::stream::Stream)>", scope: !583, file: !432, align: 8, flags: DIFlagPublic, elements: !584, templateParams: !637, identifier: "78a0cd1f637df49fb03da353095cdf0a")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTable<(u64, quiche::h3::stream::Stream), alloc::alloc::Global>", scope: !528, file: !432, size: 256, align: 64, flags: DIFlagProtected, elements: !635, templateParams: !712, identifier: "568b6e962487782cae0d31aa76db5473")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<u64, quiche::h3::stream::Stream, core::hash::BuildHasherDefault<quiche::stream::StreamIdHasher>, alloc::alloc::Global>", scope: !715, file: !432, size: 64, align: 64, elements: !717, templateParams: !584, identifier: "45b472ccbcbc1e95a3a455e40b2b7470")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(u64, quiche::h3::stream::Stream), alloc::alloc::Global, hashbrown::rustc_entry::{impl#0}::rustc_entry::{closure_env#0}<u64, quiche::h3::stream::Stream, core::hash::BuildHasherDefault<quiche::stream::StreamIdHasher>, alloc::alloc::Global>>", scope: !573, file: !432, size: 128, align: 64, elements: !631, templateParams: !584, identifier: "3886cf32abc6df99ce30eb582a111f81")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, quiche::h3::stream::Stream), alloc::alloc::Global, hashbrown::rustc_entry::{impl#0}::rustc_entry::{closure_env#0}<u64, quiche::h3::stream::Stream, core::hash::BuildHasherDefault<quiche::stream::StreamIdHasher>, alloc::alloc::Global>> as core::ops::function::FnMut<(usize)>>::{vtable_type}", file: !432, size: 320, align: 64, flags: DIFlagArtificial, elements: !626, vtableHolder: !36, templateParams: !584, identifier: "4a835072a350f325c899a7111880b530")
!38 = distinct !DIGlobalVariable(name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, quiche::h3::stream::Stream), alloc::alloc::Global, hashbrown::rustc_entry::{impl#0}::rustc_entry::{closure_env#0}<u64, quiche::h3::stream::Stream, core::hash::BuildHasherDefault<quiche::stream::StreamIdHasher>, alloc::alloc::Global>> as core::ops::function::FnMut<(usize)>>::{vtable}", scope: null, file: !432, type: !37, isLocal: true, isDefinition: true)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<u64, u64, quiche::h3::stream::Stream>", scope: !607, file: !432, size: 64, align: 64, elements: !729, templateParams: !584, identifier: "352d7e5dace23a7b21f96eb67bbc627d")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(u64, quiche::h3::stream::Stream), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, quiche::h3::stream::Stream>>", scope: !573, file: !432, size: 128, align: 64, elements: !727, templateParams: !584, identifier: "4cc1b82f1d9bb0d5906a64f15a3c729f")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, quiche::h3::stream::Stream), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, quiche::h3::stream::Stream>> as core::ops::function::FnMut<(usize)>>::{vtable_type}", file: !432, size: 320, align: 64, flags: DIFlagArtificial, elements: !723, vtableHolder: !40, templateParams: !584, identifier: "b03e938b6928c321f9f6c91ccc68c93c")
!42 = distinct !DIGlobalVariable(name: "<hashbrown::raw::{impl#8}::find::{closure_env#0}<(u64, quiche::h3::stream::Stream), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, quiche::h3::stream::Stream>> as core::ops::function::FnMut<(usize)>>::{vtable}", scope: null, file: !432, type: !41, isLocal: true, isDefinition: true)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StreamIdHasher", scope: !753, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !755, templateParams: !584, identifier: "ced9178eb72ad708ebabd99b6b4c1bde")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<fn() -> quiche::stream::StreamIdHasher>", scope: !583, file: !432, align: 8, flags: DIFlagPublic, elements: !584, templateParams: !752, identifier: "80f07abc98de3b8f1d88f1ea72dee57e")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BuildHasherDefault<quiche::stream::StreamIdHasher>", scope: !745, file: !432, align: 8, flags: DIFlagPublic, elements: !747, templateParams: !757, identifier: "92d6f6a43c00e81be923f75f7953aa48")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<u64, quiche::h3::stream::Stream, core::hash::BuildHasherDefault<quiche::stream::StreamIdHasher>>", scope: !741, file: !432, size: 64, align: 64, elements: !744, templateParams: !584, identifier: "1dc458b782d98b1b773e9f42b2260414")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(u64, quiche::h3::stream::Stream), alloc::alloc::Global, hashbrown::map::make_hasher::{closure_env#0}<u64, quiche::h3::stream::Stream, core::hash::BuildHasherDefault<quiche::stream::StreamIdHasher>>>", scope: !737, file: !432, size: 64, align: 64, elements: !740, templateParams: !584, identifier: "d4415d7aa6fec3df13fbfd67f6b08d80")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<hashbrown::raw::{impl#8}::reserve_rehash::{closure_env#0}<(u64, quiche::h3::stream::Stream), alloc::alloc::Global, hashbrown::map::make_hasher::{closure_env#0}<u64, quiche::h3::stream::Stream, core::hash::BuildHasherDefault<quiche::stream::StreamIdHasher>>> as core::ops::function::Fn<(&mut hashbrown::raw::RawTableInner, usize)>>::{vtable_type}", file: !432, size: 384, align: 64, flags: DIFlagArtificial, elements: !736, vtableHolder: !47, templateParams: !584, identifier: "528522ff9b9004203198b1f2322a1f5d")
!49 = distinct !DIGlobalVariable(name: "<hashbrown::raw::{impl#8}::reserve_rehash::{closure_env#0}<(u64, quiche::h3::stream::Stream), alloc::alloc::Global, hashbrown::map::make_hasher::{closure_env#0}<u64, quiche::h3::stream::Stream, core::hash::BuildHasherDefault<quiche::stream::StreamIdHasher>>> as core::ops::function::Fn<(&mut hashbrown::raw::RawTableInner, usize)>>::{vtable}", scope: null, file: !432, type: !48, isLocal: true, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !431, producer: "clang LLVM (rustc version 1.100.0-nightly (bff8e12ff 2026-08-26))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !555, globals: !562, splitDebugInlining: false, nameTableKind: None)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HashMap<u64, quiche::h3::stream::Stream, core::hash::BuildHasherDefault<quiche::stream::StreamIdHasher>, alloc::alloc::Global>", scope: !606, file: !432, size: 256, align: 64, flags: DIFlagPublic, elements: !761, templateParams: !765, identifier: "ff727d68002ec375343733f934e737ac")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<(u64, quiche::h3::stream::Stream)>", scope: !598, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !779, templateParams: !637, identifier: "72dee0926cb632232f4f0b9c1cc452ef")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Bucket<(u64, quiche::h3::stream::Stream)>", scope: !528, file: !432, size: 64, align: 64, flags: DIFlagProtected, elements: !776, templateParams: !637, identifier: "282e4bdf21ac16897e9dbd7a4d54a74f")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::ops::function::FnMut<(usize), Output=bool>", file: !432, align: 8, elements: !584, identifier: "c9d733f4efb174828f13bc7b8f20c0bc")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::ops::function::FnMut<(usize), Output=bool>", file: !432, size: 128, align: 64, elements: !789, templateParams: !584, identifier: "3377f04259f0c8547ec52a447dff87")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !59, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !798, templateParams: !800, identifier: "907bfc07165e8d2d532021e71490c00")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !59, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !584, templateParams: !800, identifier: "58388a3cc09aba51619a08a5bcdf3c60")
!58 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !59, file: !432, size: 128, align: 64, elements: !796, templateParams: !584, identifier: "c83f0f17ca7acef11e768772796c4f06", discriminator: !801)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !662, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !793, templateParams: !584, identifier: "4c7bbebe318ff5197d2eba51c77368a3")
!60 = distinct !DILexicalBlock(scope: !61, file: !772, line: 2032, column: 17)
!61 = distinct !DILexicalBlock(scope: !64, file: !772, line: 2029, column: 13)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BitMask", scope: !813, file: !432, size: 16, align: 16, flags: DIFlagProtected, elements: !818, templateParams: !584, identifier: "b7da54564629f1c7ae68ae0960597237")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BitMaskIter", scope: !813, file: !432, size: 16, align: 16, flags: DIFlagProtected, elements: !815, templateParams: !584, identifier: "285929e9d30b5857fa67ecf859021db3")
!64 = distinct !DILexicalBlock(scope: !67, file: !772, line: 2029, column: 13)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__m128i", scope: !824, file: !432, size: 128, align: 128, flags: DIFlagPublic, elements: !830, templateParams: !584, identifier: "9f30d5388a20f7d7e04d2e89740bea20")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Group", scope: !820, file: !432, size: 128, align: 128, flags: DIFlagProtected, elements: !822, templateParams: !584, identifier: "e9065d7761680c059027ede3a04bbb81")
!67 = distinct !DILexicalBlock(scope: !69, file: !772, line: 2027, column: 13)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ProbeSeq", scope: !528, file: !432, size: 128, align: 64, flags: DIFlagPrivate, elements: !833, templateParams: !584, identifier: "ab7d44985982bb1888232768f859d38c")
!69 = distinct !DILexicalBlock(scope: !71, file: !772, line: 2010, column: 9)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tag", scope: !834, file: !432, size: 8, align: 8, flags: DIFlagProtected, elements: !836, templateParams: !584, identifier: "4d623e0f4875d3269510b7452d327181")
!71 = distinct !DILexicalBlock(scope: !72, file: !772, line: 2009, column: 9)
!72 = distinct !DISubprogram(name: "find_inner", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner", scope: !4, file: !772, line: 2008, type: !792, scopeLine: 2008, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !802, retainedNodes: !811)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !76, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !842, templateParams: !844, identifier: "890f8c3b25326fd074d368da4f8283bb")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !76, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !584, templateParams: !844, identifier: "a1182fe29fcb5102a99c19c5cabfa0fd")
!75 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !76, file: !432, size: 64, align: 64, elements: !840, templateParams: !584, identifier: "7aa9de67edd71ba985d0019bad341669", discriminator: !845)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<hashbrown::raw::Bucket<(u64, quiche::h3::stream::Stream)>>", scope: !662, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !837, templateParams: !584, identifier: "b6533fcee2587cf0dec0ed5a37e2ec3f")
!77 = distinct !DILexicalBlock(scope: !84, file: !847, line: 103, column: 42)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !81, file: !432, align: 8, flags: DIFlagPublic, elements: !863, templateParams: !865, identifier: "c48b031451bcb0339f69fd13dc66f895")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !81, file: !432, align: 8, flags: DIFlagPublic, elements: !584, templateParams: !865, identifier: "9f70c1c2e5ef2a50d78dfbc961441d27")
!80 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !81, file: !432, align: 8, elements: !860, templateParams: !584, identifier: "9e2a17430475366448d3a56c46471f81")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<!>", scope: !662, file: !432, align: 8, flags: DIFlagPublic, elements: !857, templateParams: !584, identifier: "8804dba0adfac4e212f9a1af8503586a")
!82 = distinct !DILexicalBlock(scope: !84, file: !847, line: 103, column: 42)
!83 = distinct !DILexicalBlock(scope: !84, file: !847, line: 103, column: 9)
!84 = distinct !DISubprogram(name: "next", linkageName: "_RNvXs0_NtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB5_11BitMaskIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next", scope: !850, file: !847, line: 102, type: !852, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !856)
!85 = distinct !DISubprogram(name: "move_next", linkageName: "_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_8ProbeSeq9move_next", scope: !68, file: !772, line: 82, type: !870, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !871, retainedNodes: !873)
!86 = distinct !DISubprogram(name: "probe_seq", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner9probe_seq", scope: !4, file: !772, line: 2448, type: !876, scopeLine: 2448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !877, retainedNodes: !879)
!87 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !4, file: !772, line: 2621, type: !883, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !884, retainedNodes: !886)
!88 = distinct !DISubprogram(name: "full", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control3tagNtB2_3Tag4full", scope: !70, file: !887, line: 35, type: !890, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !891, retainedNodes: !892)
!89 = distinct !DILexicalBlock(scope: !91, file: !894, line: 83, column: 13)
!90 = distinct !DILexicalBlock(scope: !91, file: !894, line: 83, column: 13)
!91 = distinct !DISubprogram(name: "match_tag", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group9match_tag", scope: !66, file: !894, line: 73, type: !897, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !898, retainedNodes: !902)
!92 = distinct !DISubprogram(name: "match_empty", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group11match_empty", scope: !66, file: !894, line: 91, type: !904, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !905, retainedNodes: !907)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !432, size: 128, align: 64, elements: !929, templateParams: !584, identifier: "6fc9dd7daffb1f73292744aea0793200")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&str>", scope: !583, file: !432, align: 8, flags: DIFlagPublic, elements: !584, templateParams: !925, identifier: "a2812c956fedd39a46a9a3ccb2254a49")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const str", file: !432, size: 128, align: 64, elements: !934, templateParams: !584, identifier: "9b6c4209945857e804225489e1f89f1")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<str>", scope: !598, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !931, templateParams: !939, identifier: "33121bb16d12e1722181cb67e2a732a9")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !917, file: !432, size: 192, align: 64, flags: DIFlagPublic, elements: !923, templateParams: !584, identifier: "3dd96368c1df6996e16508d69506b46e")
!98 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCs3f36owOmepS_6quiche", scope: !911, file: !909, line: 937, type: !915, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !603)
!99 = distinct !DISubprogram(name: "load", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group4load", scope: !66, file: !894, line: 48, type: !943, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !944, retainedNodes: !945)
!100 = distinct !DILexicalBlock(scope: !101, file: !946, line: 1340, column: 5)
!101 = distinct !DISubprogram(name: "_mm_loadu_si128", linkageName: "_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128", scope: !949, file: !946, line: 1339, type: !951, scopeLine: 1339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !953)
!102 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19copy_nonoverlappinghECs3f36owOmepS_6quiche", scope: !597, file: !954, line: 553, type: !957, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !603, retainedNodes: !960)
!103 = distinct !DISubprogram(name: "_mm_cmpeq_epi8", linkageName: "_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_cmpeq_epi8", scope: !949, file: !946, line: 919, type: !963, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !965)
!104 = distinct !DILexicalBlock(scope: !106, file: !946, line: 1569, column: 9)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Simd<i8, 16>", scope: !973, file: !432, size: 128, align: 128, flags: DIFlagProtected, elements: !978, templateParams: !980, identifier: "e24720f085eec74724e42c73ea0181fb")
!106 = distinct !DILexicalBlock(scope: !107, file: !946, line: 1568, column: 9)
!107 = distinct !DISubprogram(name: "_mm_movemask_epi8", linkageName: "_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8", scope: !949, file: !946, line: 1566, type: !969, scopeLine: 1566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !972)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonZeroU16Inner", scope: !694, file: !432, size: 16, align: 16, flags: DIFlagPublic, elements: !992, templateParams: !584, identifier: "43ecc30753d26cd9da02061c47a288b1")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonZero<u16>", scope: !988, file: !432, size: 16, align: 16, flags: DIFlagPublic, elements: !990, templateParams: !994, identifier: "a1789a3b893a8f6e88abd8ff25c077c8")
!110 = distinct !DILexicalBlock(scope: !111, file: !847, line: 40, column: 64)
!111 = distinct !DISubprogram(name: "lowest_set_bit", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask14lowest_set_bit", scope: !62, file: !847, line: 39, type: !984, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !985, retainedNodes: !987)
!112 = distinct !DILexicalBlock(scope: !113, file: !847, line: 67, column: 13)
!113 = distinct !DISubprogram(name: "nonzero_trailing_zeros", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask22nonzero_trailing_zeros", scope: !62, file: !847, line: 64, type: !997, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !998, retainedNodes: !1000)
!114 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMsN_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerotE14trailing_zeros", scope: !109, file: !1001, line: 625, type: !1004, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !1005, retainedNodes: !1006)
!115 = distinct !DISubprogram(name: "get<u16>", linkageName: "_RNvMse_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerotE3getCs3f36owOmepS_6quiche", scope: !109, file: !1001, line: 467, type: !1009, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !994, declaration: !1010, retainedNodes: !1012)
!116 = distinct !DISubprogram(name: "remove_lowest_bit", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask17remove_lowest_bit", scope: !62, file: !847, line: 27, type: !1015, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !1016, retainedNodes: !1017)
!117 = distinct !DISubprogram(name: "likely", linkageName: "_RNvNtCskKLDkoKarTP_4core10intrinsics6likely", scope: !1044, file: !1042, line: 459, type: !1046, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !1047)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RandomState", scope: !1057, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !1060, templateParams: !584, identifier: "b333ee6f2791dce6ba3cf97726b28369")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HashMap<u64, (), std::hash::random::RandomState, alloc::alloc::Global>", scope: !606, file: !432, size: 384, align: 64, flags: DIFlagPublic, elements: !1054, templateParams: !1063, identifier: "6bba3432c4419b7598c6117b4c4b97c2")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<(u64, ())>", scope: !598, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !1080, templateParams: !586, identifier: "8b494b2979cff70e57d1c0b17e7d99f2")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Bucket<(u64, ())>", scope: !528, file: !432, size: 64, align: 64, flags: DIFlagProtected, elements: !1077, templateParams: !586, identifier: "80c4ab82aa4302aec0f95771576e9021")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !125, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !1088, templateParams: !1090, identifier: "7af4a2c552c0e8a26356f5bd062552d3")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !125, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !584, templateParams: !1090, identifier: "f886b5caa3eddcf88e75ec9b5eade8cc")
!124 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !125, file: !432, size: 64, align: 64, elements: !1086, templateParams: !584, identifier: "3cfe222280f3d2c2e708cd830a06a671", discriminator: !1091)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<hashbrown::raw::Bucket<(u64, ())>>", scope: !662, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !1083, templateParams: !584, identifier: "924dbf6a34c5c44ae16c3a7a868e6788")
!126 = distinct !DILexicalBlock(scope: !127, file: !772, line: 1207, column: 17)
!127 = distinct !DILexicalBlock(scope: !128, file: !772, line: 1200, column: 13)
!128 = distinct !DISubprogram(name: "find<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>>", linkageName: "_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE4findNCINvNtB8_3map14equivalent_keyyyuE0ECs3f36owOmepS_6quiche", scope: !5, file: !772, line: 1192, type: !1082, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !1075, declaration: !1092, retainedNodes: !1098)
!129 = distinct !DISubprogram(name: "{closure#0}<(u64, ()), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<u64, u64, ()>>", linkageName: "_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyuEE4findNCINvNtBa_3map14equivalent_keyyyuE0E0Cs3f36owOmepS_6quiche", scope: !573, file: !772, line: 1202, type: !1102, scopeLine: 1202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !1075, retainedNodes: !1105)
!130 = distinct !DILexicalBlock(scope: !131, file: !1025, line: 105, column: 21)
!131 = distinct !DILexicalBlock(scope: !132, file: !1025, line: 103, column: 13)
!132 = distinct !DISubprogram(name: "bucket<(u64, ()), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE6bucketCs3f36owOmepS_6quiche", scope: !5, file: !772, line: 738, type: !1108, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !605, declaration: !1109, retainedNodes: !1116)
!133 = distinct !DILexicalBlock(scope: !134, file: !772, line: 323, column: 9)
!134 = distinct !DISubprogram(name: "from_base_index<(u64, ())>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTyuEE15from_base_indexCs3f36owOmepS_6quiche", scope: !121, file: !772, line: 302, type: !1119, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !586, declaration: !1120, retainedNodes: !1124)
!135 = distinct !DISubprogram(name: "sub<(u64, ())>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTyuE3subCs3f36owOmepS_6quiche", scope: !911, file: !909, line: 1016, type: !1127, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !586, retainedNodes: !1130)
!136 = distinct !DISubprogram(name: "as_ptr<(u64, ())>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTyuEE6as_ptrCs3f36owOmepS_6quiche", scope: !121, file: !772, line: 412, type: !1133, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !586, declaration: !1134, retainedNodes: !1136)
!137 = distinct !DISubprogram(name: "as_ref<(u64, ())>", linkageName: "_RNvMs4_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_6BucketTyuEE6as_refCs3f36owOmepS_6quiche", scope: !121, file: !772, line: 534, type: !1138, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !586, declaration: !1139, retainedNodes: !1141)
!138 = distinct !DISubprogram(name: "{closure#0}<u64, u64, ()>", linkageName: "_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyyyuE0Cs3f36owOmepS_6quiche", scope: !607, file: !758, line: 221, type: !1145, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !1148, retainedNodes: !1147)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !142, file: !432, size: 8, align: 8, flags: DIFlagPublic, elements: !1155, templateParams: !1157, identifier: "ea5c9f1fef082465b153c825d779989e")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !142, file: !432, size: 8, align: 8, flags: DIFlagPublic, elements: !584, templateParams: !1157, identifier: "e8791b5e77cd6f1cdbd81ee1a9dcfc86")
!141 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !142, file: !432, size: 8, align: 8, elements: !1153, templateParams: !584, identifier: "d95017c34a0b37108b730525a4f27269", discriminator: !1158)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<()>", scope: !662, file: !432, size: 8, align: 8, flags: DIFlagPublic, elements: !1150, templateParams: !584, identifier: "d724114af4b392991aee8f5d08ad23d3")
!143 = distinct !DILexicalBlock(scope: !144, file: !772, line: 3278, column: 9)
!144 = distinct !DILexicalBlock(scope: !145, file: !772, line: 3235, column: 9)
!145 = distinct !DILexicalBlock(scope: !146, file: !772, line: 3231, column: 9)
!146 = distinct !DISubprogram(name: "erase", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner5erase", scope: !4, file: !772, line: 3224, type: !1163, scopeLine: 3224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !1164, retainedNodes: !1170)
!147 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !4, file: !772, line: 2621, type: !883, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !884, retainedNodes: !1173)
!148 = distinct !DISubprogram(name: "set_ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner8set_ctrl", scope: !4, file: !772, line: 2564, type: !1176, scopeLine: 2564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !1177, retainedNodes: !1180)
!149 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj12wrapping_sub", scope: !1183, file: !1181, line: 2718, type: !1185, scopeLine: 2718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !1187)
!150 = distinct !DILexicalBlock(scope: !152, file: !894, line: 83, column: 13)
!151 = distinct !DILexicalBlock(scope: !152, file: !894, line: 83, column: 13)
!152 = distinct !DISubprogram(name: "match_tag", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group9match_tag", scope: !66, file: !894, line: 73, type: !897, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !898, retainedNodes: !1192)
!153 = distinct !DISubprogram(name: "match_empty", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group11match_empty", scope: !66, file: !894, line: 91, type: !904, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !905, retainedNodes: !1194)
!154 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCs3f36owOmepS_6quiche", scope: !911, file: !909, line: 937, type: !915, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !603)
!155 = distinct !DISubprogram(name: "load", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group4load", scope: !66, file: !894, line: 48, type: !943, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !944, retainedNodes: !1198)
!156 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask13leading_zeros", scope: !62, file: !847, line: 76, type: !1201, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !1202, retainedNodes: !1203)
!157 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs5_NtCskKLDkoKarTP_4core3numt13leading_zeros", scope: !1205, file: !1181, line: 153, type: !1207, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !1208)
!158 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask14trailing_zeros", scope: !62, file: !847, line: 49, type: !1201, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, declaration: !1211, retainedNodes: !1212)
!159 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMs5_NtCskKLDkoKarTP_4core3numt14trailing_zeros", scope: !1205, file: !1181, line: 177, type: !1207, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !1214)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<usize>", scope: !583, file: !432, align: 8, flags: DIFlagPublic, elements: !584, templateParams: !800, identifier: "ae21da10e9732da62dd15b7687c055a5")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !1222, file: !432, align: 8, flags: DIFlagPublic, elements: !584, identifier: "849559b3dcb6f57f44f6144e00899f4f")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTableInner", scope: !528, file: !432, size: 256, align: 64, flags: DIFlagPrivate, elements: !1227, templateParams: !584, identifier: "84a8d1d25ab99f5cdc78b34239d5f15")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTable<usize, hashbrown::alloc::inner::Global>", scope: !528, file: !432, size: 256, align: 64, flags: DIFlagProtected, elements: !1220, templateParams: !1229, identifier: "7a475d5630f1f9ee53dcd0b723449227")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Alignment", scope: !459, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !1238, templateParams: !584, identifier: "c67b16fbb8da1285801bfe1dbac65451")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Layout", scope: !1233, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !1236, templateParams: !584, identifier: "7d252506a3dbecdaea7f587cbcba1706")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AllocError", scope: !169, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !1251, templateParams: !584, identifier: "49bc651f2bfb1377dcdfdcfc08741a4")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CapacityOverflow", scope: !169, file: !432, size: 128, align: 64, flags: DIFlagPublic, elements: !584, identifier: "cf23b6592a573a5a96a031a1b1d43880")
!168 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !169, file: !432, size: 128, align: 64, elements: !1249, templateParams: !584, identifier: "b31f14d3194b04c14cd3a1a906c342f", discriminator: !1252)
end_hunk_1
begin_hunk_2_@llvm.umin.i64/@llvm.smax.i64
!6827 = !{!392, !6307, !392, !913}
!6828 = !DISubroutineType(types: !6827)
!6829 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6307, file: !432, baseType: !566, size: 64, align: 64, flags: DIFlagPublic)
!6830 = !{!6829}
!6831 = !DILocalVariable(name: "self", scope: !6308, file: !2129, line: 508, type: !6307, align: 64)
!6832 = !DILocalVariable(name: "slice", arg: 2, scope: !6308, file: !2129, line: 508, type: !392)
!6833 = !{!6831, !6832}
!6834 = !{!392, !392, !6307, !913}
!6835 = !DISubroutineType(types: !6834)
!6836 = !DILocalVariable(name: "self", arg: 1, scope: !6309, file: !2129, line: 31, type: !392)
!6837 = !DILocalVariable(name: "index", scope: !6309, file: !2129, line: 31, type: !6307, align: 64)
!6838 = !{!6836, !6837}
!6839 = !DITemplateTypeParameter(name: "I", type: !6307)
!6840 = !{!1734, !6839}
!6841 = !DILocalVariable(name: "length", arg: 1, scope: !6316, file: !6511, line: 280, type: !566)
!6842 = !{!6841}
!6843 = !DILocalVariable(name: "length", arg: 1, scope: !6319, file: !6511, line: 285, type: !566)
!6844 = !{!6843}
!6845 = !DILocalVariable(name: "v", arg: 1, scope: !6324, file: !6511, line: 263, type: !392)
!6846 = !DILocalVariable(name: "scratch", arg: 2, scope: !6324, file: !6511, line: 264, type: !408)
!6847 = !DILocalVariable(name: "is_less", arg: 3, scope: !6324, file: !6511, line: 265, type: !1870)
!6848 = !DILocalVariable(name: "limit", scope: !6323, file: !6511, line: 269, type: !919, align: 32)
!6849 = !{!6845, !6846, !6847, !6848}
!6850 = !DILocalVariable(name: "self", arg: 1, scope: !6328, file: !1181, line: 1838, type: !566)
!6851 = !{!919, !566, !913}
!6852 = !DISubroutineType(types: !6851)
!6853 = !DILocalVariable(name: "log", scope: !6327, file: !1181, line: 1839, type: !919, align: 32)
!6854 = !{!6850, !6853}
!6855 = !DILocalVariable(name: "self", arg: 1, scope: !6336, file: !1181, line: 1961, type: !566)
!6856 = !{!6334, !566}
!6857 = !DISubroutineType(types: !6856)
!6858 = !{!6333}
!6859 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !6333, file: !432, baseType: !6332, size: 64, align: 32, extraData: i32 0)
!6860 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !6333, file: !432, baseType: !6331, size: 64, align: 32, extraData: i32 1)
!6861 = !{!6859, !6860}
!6862 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6331, file: !432, baseType: !919, size: 32, align: 32, offset: 32, flags: DIFlagPublic)
!6863 = !{!6862}
!6864 = !DITemplateTypeParameter(name: "T", type: !919)
!6865 = !{!6864}
!6866 = !DIDerivedType(tag: DW_TAG_member, scope: !6334, file: !432, baseType: !919, size: 32, align: 32, flags: DIFlagArtificial)
!6867 = !DILocalVariable(name: "x", scope: !6335, file: !1181, line: 1963, type: !203, align: 64)
!6868 = !{!6855, !6867}
!6869 = !DILocalVariable(name: "self", arg: 1, scope: !6340, file: !1001, line: 1804, type: !203)
!6870 = !{!919, !203}
!6871 = !DISubroutineType(types: !6870)
!6872 = !DISubprogram(name: "ilog2", linkageName: "_RNvMs1f_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB6_7NonZerojE5ilog2", scope: !203, file: !1001, line: 1804, type: !6871, scopeLine: 1804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !584)
!6873 = !{!6869}
!6874 = !DILocalVariable(name: "self", arg: 1, scope: !6343, file: !1001, line: 595, type: !203)
!6875 = !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs1f_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB6_7NonZerojE13leading_zeros", scope: !203, file: !1001, line: 595, type: !6871, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !584)
!6876 = !{!6874}
!6878 = !{!6366}
!6879 = !{!6367}
!6880 = !DIFile(filename: "library/core/src/slice/sort/stable/merge.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "90afbaa2075bc1e9689ef92c7df39f20")
!6881 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::sort::stable::merge::MergeState<(u64, u64)>", baseType: !6368, size: 64, align: 64, dwarfAddressSpace: 0)
!6882 = !DILocalVariable(name: "self", arg: 1, scope: !6370, file: !6880, line: 139, type: !6881)
!6883 = !DINamespace(name: "merge", scope: !2121)
!6884 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6368, file: !432, baseType: !1915, size: 64, align: 64, flags: DIFlagPrivate)
!6885 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6368, file: !432, baseType: !1915, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!6886 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !6368, file: !432, baseType: !1915, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!6887 = !{!6884, !6885, !6886}
!6888 = !DINamespace(name: "{impl#1}", scope: !6883)
!6889 = !{null, !6881}
!6890 = !DISubroutineType(types: !6889)
!6891 = !DILocalVariable(name: "len", scope: !6369, file: !6880, line: 146, type: !566, align: 64)
!6892 = !{!6882, !6891}
!6893 = !DILocalVariable(arg: 1, scope: !6371, file: !954, line: 848, type: !6881)
!6894 = !{!6893}
!6895 = !DITemplateTypeParameter(name: "T", type: !6368)
!6896 = !{!6895}
!6897 = !{null, !392, !408, !566, !1870}
!6898 = !DISubroutineType(cc: DW_CC_nocall, types: !6897)
!6899 = !DILocalVariable(name: "v", arg: 1, scope: !6373, file: !6880, line: 9, type: !392)
!6900 = !DILocalVariable(name: "scratch", arg: 2, scope: !6373, file: !6880, line: 10, type: !408)
!6901 = !DILocalVariable(name: "mid", arg: 3, scope: !6373, file: !6880, line: 11, type: !566)
!6902 = !DILocalVariable(name: "is_less", arg: 4, scope: !6373, file: !6880, line: 12, type: !1870)
!6903 = !DILocalVariable(name: "len", scope: !6374, file: !6880, line: 14, type: !566, align: 64)
!6904 = !DILocalVariable(name: "buf", scope: !6375, file: !6880, line: 38, type: !1915, align: 64)
!6905 = !DILocalVariable(name: "v_base", scope: !6376, file: !6880, line: 40, type: !1915, align: 64)
!6906 = !DILocalVariable(name: "v_mid", scope: !6377, file: !6880, line: 41, type: !1915, align: 64)
!6907 = !DILocalVariable(name: "v_end", scope: !6378, file: !6880, line: 42, type: !1915, align: 64)
!6908 = !DILocalVariable(name: "left_len", scope: !6379, file: !6880, line: 44, type: !566, align: 64)
!6909 = !DILocalVariable(name: "right_len", scope: !6380, file: !6880, line: 45, type: !566, align: 64)
!6910 = !DILocalVariable(name: "left_is_shorter", scope: !6381, file: !6880, line: 47, type: !648, align: 8)
!6911 = !DILocalVariable(name: "save_base", scope: !6382, file: !6880, line: 48, type: !1915, align: 64)
!6912 = !DILocalVariable(name: "save_len", scope: !6383, file: !6880, line: 49, type: !566, align: 64)
!6913 = !DILocalVariable(name: "merge_state", scope: !6372, file: !6880, line: 53, type: !6368, align: 64)
!6914 = !{!6899, !6900, !6901, !6902, !6903, !6904, !6905, !6906, !6907, !6908, !6909, !6910, !6911, !6912, !6913}
!6915 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut *mut (u64, u64)", baseType: !1915, size: 64, align: 64, dwarfAddressSpace: 0)
!6916 = !DILocalVariable(name: "left", scope: !6397, file: !6880, line: 86, type: !6915, align: 64)
!6917 = !{null, !6881, !1731, !1731, !1870}
!6918 = !DISubroutineType(cc: DW_CC_nocall, types: !6917)
!6919 = !DISubroutineType(types: !6917)
!6920 = !DISubprogram(name: "merge_up<(u64, u64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(u64, u64), alloc::collections::btree::map::{impl#99}::from::{closure_env#0}<u64, u64, 4>>>", linkageName: "_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTyyEE8merge_upNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCNvXs1z_NtNtNtB1w_11collections5btree3mapINtB2i_8BTreeMapyyEINtNtBb_7convert4FromAB1a_j4_E4from0E0ECs3f36owOmepS_6quiche", scope: !6368, file: !6880, line: 78, type: !6919, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1880)
!6921 = !DILocalVariable(name: "self", arg: 1, scope: !6396, file: !6880, line: 79, type: !6881)
!6922 = !DILocalVariable(name: "right", arg: 2, scope: !6396, file: !6880, line: 80, type: !1731)
!6923 = !DILocalVariable(name: "right_end", arg: 3, scope: !6396, file: !6880, line: 81, type: !1731)
!6924 = !DILocalVariable(name: "is_less", arg: 4, scope: !6396, file: !6880, line: 82, type: !1870)
!6925 = !DILocalVariable(name: "out", scope: !6395, file: !6880, line: 87, type: !6915, align: 64)
!6926 = !DILocalVariable(name: "consume_left", scope: !6394, file: !6880, line: 90, type: !648, align: 8)
!6927 = !DILocalVariable(name: "src", scope: !6393, file: !6880, line: 92, type: !1731, align: 64)
!6928 = !{!6921, !6922, !6923, !6924, !6916, !6925, !6926, !6927}
!6929 = !DILocalVariable(name: "self", arg: 1, scope: !6405, file: !6880, line: 109, type: !6881)
!6930 = !{null, !6881, !1731, !1731, !1915, !1870}
!6931 = !DISubroutineType(cc: DW_CC_nocall, types: !6930)
!6932 = !DISubroutineType(types: !6930)
!6933 = !DISubprogram(name: "merge_down<(u64, u64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(u64, u64), alloc::collections::btree::map::{impl#99}::from::{closure_env#0}<u64, u64, 4>>>", linkageName: "_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTyyEE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCNvXs1z_NtNtNtB1z_11collections5btree3mapINtB2l_8BTreeMapyyEINtNtBb_7convert4FromAB1a_j4_E4from0E0ECs3f36owOmepS_6quiche", scope: !6368, file: !6880, line: 108, type: !6932, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1880)
!6934 = !DILocalVariable(name: "left_end", arg: 2, scope: !6405, file: !6880, line: 110, type: !1731)
!6935 = !DILocalVariable(name: "right_end", arg: 3, scope: !6405, file: !6880, line: 111, type: !1731)
!6936 = !DILocalVariable(name: "out", arg: 4, scope: !6405, file: !6880, line: 112, type: !1915)
!6937 = !DILocalVariable(name: "is_less", arg: 5, scope: !6405, file: !6880, line: 113, type: !1870)
!6938 = !DILocalVariable(name: "left", scope: !6404, file: !6880, line: 118, type: !1915, align: 64)
!6939 = !DILocalVariable(name: "right", scope: !6403, file: !6880, line: 119, type: !1915, align: 64)
!6940 = !DILocalVariable(name: "consume_left", scope: !6402, file: !6880, line: 122, type: !648, align: 8)
!6941 = !DILocalVariable(name: "src", scope: !6401, file: !6880, line: 124, type: !1915, align: 64)
!6942 = !{!6929, !6934, !6935, !6936, !6937, !6938, !6939, !6940, !6941}
!6943 = !DILocalVariable(name: "v1", arg: 1, scope: !6411, file: !1294, line: 1634, type: !566)
!6944 = !DILocalVariable(name: "v2", arg: 2, scope: !6411, file: !1294, line: 1634, type: !566)
!6945 = !{!6943, !6944}
!6946 = !DILocalVariable(name: "count", arg: 2, scope: !6414, file: !909, line: 937, type: !566)
!6947 = !DILocalVariable(name: "self", arg: 1, scope: !6414, file: !909, line: 937, type: !1915)
!6948 = !{!6947, !6946}
!6949 = !DILocalVariable(name: "dst", arg: 2, scope: !6426, file: !954, line: 553, type: !1915)
!6950 = !DILocalVariable(name: "src", arg: 1, scope: !6426, file: !954, line: 553, type: !1731)
!6951 = !DILocalVariable(name: "count", arg: 3, scope: !6426, file: !954, line: 553, type: !566)
!6952 = !{!6950, !6949, !6951}
!6953 = !{!6366, !6367}
!6954 = !DILocalVariable(name: "self", arg: 1, scope: !6435, file: !909, line: 1016, type: !1915)
!6955 = !DILocalVariable(name: "count", scope: !6435, file: !909, line: 1016, type: !566, align: 64)
!6956 = !{!6954, !6955}
!6957 = !DILocalVariable(name: "self", arg: 1, scope: !6441, file: !909, line: 937, type: !1915)
!6958 = !DILocalVariable(name: "count", arg: 2, scope: !6441, file: !909, line: 937, type: !566)
!6959 = !{!6957, !6958}
!6960 = !{!6450, !6366}
!6961 = !{!6450, !6367}
!6962 = !DILocalVariable(name: "src", arg: 1, scope: !6458, file: !954, line: 553, type: !1731)
!6963 = !DILocalVariable(name: "dst", arg: 2, scope: !6458, file: !954, line: 553, type: !1915)
!6964 = !DILocalVariable(name: "count", scope: !6458, file: !954, line: 553, type: !566, align: 64)
!6965 = !{!6962, !6963, !6964}
!6966 = !{!6450}
!6967 = !DILocalVariable(name: "self", arg: 1, scope: !6461, file: !1881, line: 838, type: !1731)
!6968 = !DILocalVariable(name: "count", arg: 2, scope: !6461, file: !1881, line: 838, type: !566)
!6969 = !{!6967, !6968}
!6970 = !{!6465, !6367}
!6971 = !{!6465, !6366}
!6972 = !DILocalVariable(name: "src", arg: 1, scope: !6472, file: !954, line: 553, type: !1731)
!6973 = !DILocalVariable(name: "dst", arg: 2, scope: !6472, file: !954, line: 553, type: !1915)
!6974 = !DILocalVariable(name: "count", scope: !6472, file: !954, line: 553, type: !566, align: 64)
!6975 = !{!6972, !6973, !6974}
!6976 = !{!6465}
!6977 = !DILocalVariable(name: "self", arg: 1, scope: !6476, file: !909, line: 937, type: !1915)
!6978 = !DILocalVariable(name: "count", arg: 2, scope: !6476, file: !909, line: 937, type: !566)
!6979 = !DILocalVariable(name: "count", scope: !6476, file: !909, line: 937, type: !566, align: 64)
!6980 = !{!6977, !6978, !6979}
!6981 = !DILocalVariable(name: "pointee_size", scope: !6482, file: !1881, line: 731, type: !566, align: 64)
!6982 = !DILocalVariable(name: "self", arg: 1, scope: !6481, file: !1881, line: 706, type: !1731)
!6983 = !DILocalVariable(name: "origin", arg: 2, scope: !6481, file: !1881, line: 706, type: !1731)
!6984 = !{!6982, !6983, !6981}
!6985 = !DILocalVariable(name: "self", arg: 1, scope: !6483, file: !909, line: 888, type: !1915)
!6986 = !DILocalVariable(name: "origin", arg: 2, scope: !6483, file: !909, line: 888, type: !1731)
!6987 = !{!6985, !6986}
!6988 = !DILocalVariable(name: "count", arg: 3, scope: !6490, file: !954, line: 553, type: !566)
!6989 = !DILocalVariable(name: "src", arg: 1, scope: !6490, file: !954, line: 553, type: !1731)
!6990 = !DILocalVariable(name: "dst", arg: 2, scope: !6490, file: !954, line: 553, type: !1915)
!6991 = !{!6989, !6990, !6988}
!6992 = !{!6496, !6494}
!6993 = !DILocation(line: 113, column: 30, scope: !6139)
!6994 = !DILocation(line: 0, scope: !6286, inlinedAt: !6993)
!6995 = !DILocalVariable(name: "self", scope: !6497, file: !6511, line: 290, type: !6147, align: 64)
!6996 = !{!648, !6147}
!6997 = !DISubroutineType(types: !6996)
!6998 = !DISubprogram(name: "sorted", linkageName: "_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5driftNtB2_12DriftsortRun6sorted", scope: !6147, file: !6511, line: 290, type: !6997, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !584)
!6999 = !{!6995}
!7000 = !DILocation(line: 117, column: 18, scope: !6140)
!7001 = !DILocation(line: 0, scope: !6497, inlinedAt: !7000)
!7002 = !DILocation(line: 27, column: 8, scope: !6156)
!7003 = !DILocation(line: 3818, column: 21, scope: !6164, inlinedAt: !6596)
!7004 = !DILocation(line: 3819, column: 21, scope: !6163, inlinedAt: !6596)
!7005 = !DILocation(line: 3820, column: 16, scope: !6162, inlinedAt: !6596)
!7006 = !DILocation(line: 37, column: 31, scope: !6155)
!7007 = !DILocation(line: 42, column: 9, scope: !6155)
!7008 = !DILocation(line: 40, column: 24, scope: !6155)
!7009 = !DILocation(line: 40, column: 18, scope: !6155)
!7010 = !DILocation(line: 1138, column: 5, scope: !6167, inlinedAt: !6168)
!7011 = !DILocation(line: 37, column: 28, scope: !6155)
!7012 = !DILocation(line: 50, column: 9, scope: !6153)
!7013 = !DILocation(line: 52, column: 9, scope: !6148)
!7014 = !DILocation(line: 57, column: 5, scope: !6140)
!7015 = !DILocation(line: 62, column: 12, scope: !6139)
!7016 = !DILocation(line: 87, column: 19, scope: !6139)
!7017 = !DILocation(line: 562, column: 27, scope: !6160, inlinedAt: !6575)
!7018 = !DILocation(line: 102, column: 24, scope: !6172, inlinedAt: !6644)
!7019 = !DILocation(line: 234, column: 8, scope: !6175, inlinedAt: !6177)
!7020 = !DILocation(line: 249, column: 8, scope: !6175, inlinedAt: !6177)
!7021 = !DILocation(line: 25, column: 8, scope: !6187, inlinedAt: !6189)
!7022 = !DILocation(line: 219, column: 13, scope: !6195, inlinedAt: !6196)
!7023 = !DILocation(line: 34, column: 35, scope: !6186, inlinedAt: !6189)
!7024 = !DILocation(line: 410, column: 44, scope: !327, inlinedAt: !6226)
!7025 = !DILocation(line: 0, scope: !6185, inlinedAt: !6189)
!7026 = !DILocation(line: 35, column: 12, scope: !6185, inlinedAt: !6189)
!7027 = !DILocation(line: 40, column: 19, scope: !6185, inlinedAt: !6189)
!7028 = !DILocation(line: 36, column: 19, scope: !6185, inlinedAt: !6189)
!7029 = !DILocation(line: 40, column: 37, scope: !6185, inlinedAt: !6189)
!7030 = !DILocation(line: 219, column: 13, scope: !6195, inlinedAt: !6212)
!7031 = !DILocation(line: 410, column: 44, scope: !327, inlinedAt: !6232)
!7032 = !DILocation(line: 42, column: 17, scope: !6185, inlinedAt: !6189)
!7033 = !DILocation(line: 36, column: 36, scope: !6185, inlinedAt: !6189)
!7034 = !DILocation(line: 219, column: 13, scope: !6195, inlinedAt: !6204)
!7035 = !DILocation(line: 410, column: 44, scope: !327, inlinedAt: !6237)
!7036 = !DILocation(line: 37, column: 17, scope: !6185, inlinedAt: !6189)
!7037 = !DILocation(line: 0, scope: !6187, inlinedAt: !6189)
!7038 = !DILocation(line: 238, column: 37, scope: !6174, inlinedAt: !6177)
!7039 = !DILocation(line: 238, column: 18, scope: !6174, inlinedAt: !6177)
!7040 = !DILocation(line: 240, column: 12, scope: !6174, inlinedAt: !6177)
!7041 = !DILocation(line: 241, column: 16, scope: !6174, inlinedAt: !6177)
!7042 = !DILocation(line: 1138, column: 5, scope: !6167, inlinedAt: !6244)
!7043 = !DILocation(line: 286, column: 14, scope: !6246, inlinedAt: !6247)
!7044 = !DILocation(line: 249, column: 5, scope: !6175, inlinedAt: !6177)
!7045 = !DILocation(line: 1138, column: 5, scope: !6167, inlinedAt: !6249)
!7046 = !DILocation(line: 255, column: 9, scope: !6173, inlinedAt: !6177)
!7047 = !DILocation(line: 281, column: 14, scope: !6241, inlinedAt: !6252)
!7048 = !DILocation(line: 1013, column: 19, scope: !6258, inlinedAt: !6264)
!7049 = !DILocation(line: 1014, column: 45, scope: !6258, inlinedAt: !6264)
!7050 = !DILocation(line: 1014, column: 27, scope: !6258, inlinedAt: !6264)
!7051 = !DILocation(line: 1014, column: 38, scope: !6258, inlinedAt: !6264)
!7052 = !DILocation(line: 833, column: 14, scope: !6266, inlinedAt: !6267)
!7053 = !DILocation(line: 281, column: 14, scope: !6241, inlinedAt: !6242)
!7054 = !DILocation(line: 260, column: 2, scope: !6176, inlinedAt: !6177)
!7055 = !DILocation(line: 978, column: 24, scope: !6259, inlinedAt: !6263)
!7056 = !DILocation(line: 997, column: 9, scope: !6262, inlinedAt: !6263)
!7057 = !DILocation(line: 971, column: 18, scope: !6284, inlinedAt: !6285)
!7058 = !DILocation(line: 1015, column: 17, scope: !6258, inlinedAt: !6264)
!7059 = !DILocation(line: 0, scope: !6175, inlinedAt: !6177)
!7060 = !DILocation(line: 296, column: 9, scope: !6286, inlinedAt: !6753)
!7061 = !DILocation(line: 296, column: 9, scope: !6286, inlinedAt: !6766)
!7062 = !DILocation(line: 168, column: 13, scope: !6289, inlinedAt: !6764)
!7063 = !DILocation(line: 169, column: 13, scope: !6288, inlinedAt: !6764)
!7064 = !DILocation(line: 170, column: 6, scope: !6287, inlinedAt: !6764)
!7065 = !DILocation(line: 170, column: 27, scope: !6287, inlinedAt: !6764)
!7066 = !DILocation(line: 170, column: 5, scope: !6287, inlinedAt: !6764)
!7067 = !DILocation(line: 154, column: 20, scope: !6290, inlinedAt: !6775)
!7068 = !DILocation(line: 62, column: 9, scope: !6139)
!7069 = !DILocation(line: 87, column: 56, scope: !6139)
!7070 = !DILocation(line: 971, column: 18, scope: !6171, inlinedAt: !6633)
!7071 = !DILocation(line: 87, column: 36, scope: !6139)
!7072 = !DILocation(line: 971, column: 18, scope: !6170, inlinedAt: !6627)
!7073 = !DILocation(line: 103, column: 13, scope: !6139)
!7074 = !DILocation(line: 971, column: 18, scope: !6171, inlinedAt: !6635)
!7075 = !DILocation(line: 104, column: 13, scope: !6139)
!7076 = !DILocation(line: 109, column: 12, scope: !6139)
!7077 = !DILocation(line: 971, column: 18, scope: !6170, inlinedAt: !6625)
!7078 = !DILocation(line: 90, column: 28, scope: !6139)
!7079 = !DILocation(line: 296, column: 9, scope: !6286, inlinedAt: !6778)
!7080 = !DILocation(line: 296, column: 9, scope: !6286, inlinedAt: !6780)
!7081 = !DILocation(line: 91, column: 34, scope: !6138)
!7082 = !DILocation(line: 92, column: 39, scope: !6137)
!7083 = !DILocation(line: 102, column: 24, scope: !6172, inlinedAt: !6793)
!7084 = !DILocation(line: 203, column: 30, scope: !6294, inlinedAt: !6296)
!7085 = !DILocation(line: 204, column: 9, scope: !6293, inlinedAt: !6296)
!7086 = !DILocation(line: 205, column: 13, scope: !6293, inlinedAt: !6296)
!7087 = !DILocation(line: 286, column: 14, scope: !6319, inlinedAt: !6320)
!7088 = !DILocation(line: 204, column: 5, scope: !6293, inlinedAt: !6296)
!7089 = !DILocation(line: 208, column: 13, scope: !6293, inlinedAt: !6296)
!7090 = !DILocation(line: 269, column: 21, scope: !6324, inlinedAt: !6325)
!7091 = !DILocation(line: 598, column: 21, scope: !6343, inlinedAt: !6344)
!7092 = !DILocation(line: 269, column: 17, scope: !6324, inlinedAt: !6325)
!7093 = !DILocation(line: 270, column: 5, scope: !6323, inlinedAt: !6325)
!7094 = !DILocation(line: 205, column: 9, scope: !6293, inlinedAt: !6296)
!7095 = !DILocation(line: 102, column: 24, scope: !6305, inlinedAt: !6349)
!7096 = !DILocation(line: 269, column: 21, scope: !6324, inlinedAt: !6352)
!7097 = !DILocation(line: 598, column: 21, scope: !6343, inlinedAt: !6361)
!7098 = !DILocation(line: 269, column: 17, scope: !6324, inlinedAt: !6352)
!7099 = !DILocation(line: 270, column: 5, scope: !6323, inlinedAt: !6352)
!7100 = !DILocation(line: 208, column: 9, scope: !6293, inlinedAt: !6296)
!7101 = !DILocation(line: 211, column: 9, scope: !6293, inlinedAt: !6296)
!7102 = !DILocation(line: 16, column: 8, scope: !6374, inlinedAt: !6384)
!7103 = !DILocation(line: 1138, column: 5, scope: !6167, inlinedAt: !6423)
!7104 = !DILocation(line: 16, column: 34, scope: !6374, inlinedAt: !6384)
!7105 = !DILocation(line: 971, column: 18, scope: !6414, inlinedAt: !6415)
!7106 = !DILocation(line: 47, column: 31, scope: !6380, inlinedAt: !6384)
!7107 = !DILocation(line: 48, column: 28, scope: !6381, inlinedAt: !6384)
!7108 = !DILocation(line: 574, column: 14, scope: !6426, inlinedAt: !6427)
!7109 = !DILocation(line: 971, column: 18, scope: !6414, inlinedAt: !6417)
!7110 = !DILocation(line: 55, column: 12, scope: !6372, inlinedAt: !6384)
!7111 = !DILocation(line: 1055, column: 22, scope: !6435, inlinedAt: !6436)
!7112 = !DILocation(line: 118, column: 28, scope: !6405, inlinedAt: !6406)
!7113 = !DILocation(line: 1055, column: 22, scope: !6435, inlinedAt: !6444)
!7114 = !DILocation(line: 1055, column: 22, scope: !6435, inlinedAt: !6437)
!7115 = !DILocation(line: 122, column: 36, scope: !6403, inlinedAt: !6406)
!7116 = !DILocation(line: 410, column: 44, scope: !327, inlinedAt: !6453)
!7117 = !DILocation(line: 124, column: 27, scope: !6402, inlinedAt: !6406)
!7118 = !DILocation(line: 574, column: 14, scope: !6458, inlinedAt: !6459)
!7119 = !DILocation(line: 127, column: 37, scope: !6401, inlinedAt: !6406)
!7120 = !DILocation(line: 971, column: 18, scope: !6441, inlinedAt: !6442)
!7121 = !DILocation(line: 128, column: 38, scope: !6401, inlinedAt: !6406)
!7122 = !DILocation(line: 971, column: 18, scope: !6441, inlinedAt: !6447)
!7123 = !DILocation(line: 130, column: 20, scope: !6401, inlinedAt: !6406)
!7124 = !DILocation(line: 90, column: 37, scope: !6395, inlinedAt: !6398)
!7125 = !DILocation(line: 410, column: 44, scope: !327, inlinedAt: !6468)
!7126 = !DILocation(line: 90, column: 36, scope: !6395, inlinedAt: !6398)
!7127 = !DILocation(line: 92, column: 30, scope: !6394, inlinedAt: !6398)
!7128 = !DILocation(line: 574, column: 14, scope: !6472, inlinedAt: !6473)
!7129 = !DILocation(line: 95, column: 34, scope: !6393, inlinedAt: !6398)
!7130 = !DILocation(line: 971, column: 18, scope: !6476, inlinedAt: !6477)
!7131 = !DILocation(line: 96, column: 35, scope: !6393, inlinedAt: !6398)
!7132 = !DILocation(line: 872, column: 18, scope: !6461, inlinedAt: !6462)
!7133 = !DILocation(line: 971, column: 18, scope: !6476, inlinedAt: !6479)
!7134 = !DILocation(line: 89, column: 19, scope: !6395, inlinedAt: !6398)
!7135 = !DILocation(line: 0, scope: !6372, inlinedAt: !6384)
!7136 = !DILocation(line: 0, scope: !6383, inlinedAt: !6384)
!7137 = !DILocation(line: 734, column: 18, scope: !6482, inlinedAt: !6485)
!7138 = !DILocation(line: 574, column: 14, scope: !6490, inlinedAt: !6491)
!7139 = !DILocation(line: 63, column: 2, scope: !6373, inlinedAt: !6384)
!7140 = !DILocation(line: 281, column: 14, scope: !6316, inlinedAt: !6317)
!7141 = !DILocation(line: 0, scope: !6293, inlinedAt: !6296)
!7142 = !DILocation(line: 105, column: 13, scope: !6139)
!7143 = !DILocation(line: 296, column: 9, scope: !6286, inlinedAt: !6993)
!7144 = !DILocation(line: 113, column: 9, scope: !6139)
!7145 = !DILocation(line: 291, column: 9, scope: !6497, inlinedAt: !7000)
!7146 = !DILocation(line: 117, column: 9, scope: !6140)
!7147 = !DILocation(line: 269, column: 21, scope: !6324, inlinedAt: !6498)
!7148 = !DILocation(line: 598, column: 21, scope: !6343, inlinedAt: !6507)
!7149 = !DILocation(line: 269, column: 17, scope: !6324, inlinedAt: !6498)
!7150 = !DILocation(line: 270, column: 5, scope: !6323, inlinedAt: !6498)
!7151 = !DILocation(line: 118, column: 9, scope: !6140)
!7152 = !DILocation(line: 120, column: 1, scope: !6148)
!7153 = !DILocation(line: 120, column: 1, scope: !6153)
!7154 = !DILocation(line: 120, column: 2, scope: !6157)
!7155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !7158, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !8181, templateParams: !2156, identifier: "a0bdca9411ff7fea9b9daac24d59a769")
!7156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !7158, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !584, templateParams: !2156, identifier: "cfd1bcb9c8403a1ce0aa5c4e1c2cf82")
!7157 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !7158, file: !432, size: 64, align: 64, elements: !8179, templateParams: !584, identifier: "be17f9ee03a7d2b31f13ca9576c8a6d3", discriminator: !8182)
!7158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&(u64, u64)>", scope: !662, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !8176, templateParams: !584, identifier: "5d29eb5c2931dc9f2a5c690123452c")
!7159 = distinct !DILexicalBlock(scope: !7161, file: !8172, line: 77, column: 9)
!7160 = distinct !DILexicalBlock(scope: !7161, file: !8172, line: 70, column: 13)
!7161 = distinct !DILexicalBlock(scope: !7163, file: !8172, line: 63, column: 9)
!7162 = distinct !DILexicalBlock(scope: !7163, file: !8172, line: 59, column: 53)
!7163 = distinct !DILexicalBlock(scope: !7164, file: !8172, line: 58, column: 9)
!7164 = distinct !DILexicalBlock(scope: !7165, file: !8172, line: 46, column: 9)
!7165 = distinct !DILexicalBlock(scope: !7166, file: !8172, line: 45, column: 9)
!7166 = distinct !DILexicalBlock(scope: !7167, file: !8172, line: 39, column: 9)
!7167 = distinct !DILexicalBlock(scope: !7168, file: !8172, line: 24, column: 9)
!7168 = distinct !DISubprogram(name: "quicksort<(u64, u64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(u64, u64), alloc::collections::btree::map::{impl#99}::from::{closure_env#0}<u64, u64, 4>>>", linkageName: "_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs1z_NtNtNtB1h_11collections5btree3mapINtB23_8BTreeMapyyEINtNtBa_7convert4FromAB15_j4_E4from0E0ECs3f36owOmepS_6quiche", scope: !8173, file: !8172, line: 16, type: !8175, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !1880, retainedNodes: !8198)
!7169 = distinct !DISubprogram(name: "index_mut<(u64, u64), core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCskKLDkoKarTP_4core5slice5indexSTyyEINtNtNtB8_3ops5index8IndexMutINtNtBN_5range9RangeFromjEE9index_mutCs3f36owOmepS_6quiche", scope: !2131, file: !2129, line: 31, type: !2133, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !2137, retainedNodes: !8203)
!7170 = distinct !DILexicalBlock(scope: !7171, file: !2129, line: 562, column: 13)
!7171 = distinct !DISubprogram(name: "index_mut<(u64, u64)>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSTyyEE9index_mutCs3f36owOmepS_6quiche", scope: !2138, file: !2129, line: 556, type: !2140, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !1735, retainedNodes: !8209)
!7172 = distinct !DISubprogram(name: "small_sort<(u64, u64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(u64, u64), alloc::collections::btree::map::{impl#99}::from::{closure_env#0}<u64, u64, 4>>>", linkageName: "_RINvXs_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortTyyENtB5_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBY_7sort_byNCNvXs1z_NtNtNtB1Q_11collections5btree3mapINtB2B_8BTreeMapyyEINtNtBd_7convert4FromABY_j4_E4from0E0ECs3f36owOmepS_6quiche", scope: !8215, file: !1913, line: 56, type: !2150, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !1880, retainedNodes: !8218)
!7173 = distinct !DILocation(line: 27, column: 13, scope: !7167)
!7174 = distinct !DILocation(line: 0, scope: !7172, inlinedAt: !7173)
!7175 = distinct !{!7175, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvXs1z_NtNtNtB1E_11collections5btree3mapINtB2q_8BTreeMapyyEINtNtBa_7convert4FromAB1s_j4_E4from0E0ECs3f36owOmepS_6quiche"}
!7176 = distinct !{!7176, !7175, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvXs1z_NtNtNtB1E_11collections5btree3mapINtB2q_8BTreeMapyyEINtNtBa_7convert4FromAB1s_j4_E4from0E0ECs3f36owOmepS_6quiche: argument 0"}
!7177 = distinct !{!7177, !7175, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvXs1z_NtNtNtB1E_11collections5btree3mapINtB2q_8BTreeMapyyEINtNtBa_7convert4FromAB1s_j4_E4from0E0ECs3f36owOmepS_6quiche: argument 1"}
!7178 = distinct !DILexicalBlock(scope: !7198, file: !1913, line: 279, column: 9)
!7179 = distinct !DILexicalBlock(scope: !7180, file: !1913, line: 272, column: 13)
!7180 = distinct !DILexicalBlock(scope: !7181, file: !1913, line: 272, column: 13)
!7181 = distinct !DILexicalBlock(scope: !7182, file: !1913, line: 270, column: 13)
!7182 = distinct !DILexicalBlock(scope: !7183, file: !1913, line: 269, column: 13)
!7183 = distinct !DILexicalBlock(scope: !7184, file: !1913, line: 268, column: 13)
!7184 = distinct !DILexicalBlock(scope: !7192, file: !1913, line: 265, column: 9)
!7185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<usize>", scope: !1308, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !8255, templateParams: !8257, identifier: "80ad42b00adb783e43edb13fef289f08")
!7186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<usize>", scope: !1307, file: !432, size: 64, align: 64, flags: DIFlagPublic, elements: !8253, templateParams: !800, identifier: "a0edc770fde181a0c3ad016a1ea8bcd5")
!7187 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<usize>", scope: !1306, file: !432, size: 64, align: 64, elements: !8251, templateParams: !800, identifier: "77750e9648a8433cd5bd5e8cb597d62")
!7188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<usize>; 2]>", scope: !2159, file: !432, size: 256, align: 64, flags: DIFlagProtected, elements: !8248, templateParams: !8259, identifier: "bf284a8f4301f7e187ffc4026b1ed14e")
!7189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<usize>; 2]>>", scope: !1308, file: !432, size: 256, align: 64, flags: DIFlagPublic, elements: !8244, templateParams: !8261, identifier: "13f3891675d64f64ec0f6e364057581a")
!7190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<usize>; 2]>>", scope: !1307, file: !432, size: 256, align: 64, flags: DIFlagPublic, elements: !8242, templateParams: !8263, identifier: "3185b3e1d4a1dbe111f543b7d244838e")
!7191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IntoIter<usize, 2>", scope: !2158, file: !432, size: 256, align: 64, flags: DIFlagPublic, elements: !8240, templateParams: !800, identifier: "bcc0141141fe71333ac6a511c04eca5d")
!7192 = distinct !DILexicalBlock(scope: !7198, file: !1913, line: 265, column: 9)
!7193 = distinct !DISubprogram(name: "small_sort_general_with_scratch<(u64, u64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(u64, u64), alloc::collections::btree::map::{impl#99}::from::{closure_env#0}<u64, u64, 4>>>", linkageName: "_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvXs1z_NtNtNtB1E_11collections5btree3mapINtB2q_8BTreeMapyyEINtNtBa_7convert4FromAB1s_j4_E4from0E0ECs3f36owOmepS_6quiche", scope: !1914, file: !1913, line: 220, type: !8221, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !1880, retainedNodes: !8238)
!7194 = distinct !DILexicalBlock(scope: !7193, file: !1913, line: 225, column: 5)
!7195 = distinct !DILexicalBlock(scope: !7194, file: !1913, line: 234, column: 5)
!7196 = distinct !DILexicalBlock(scope: !7195, file: !1913, line: 235, column: 5)
!7197 = distinct !DILexicalBlock(scope: !7196, file: !1913, line: 239, column: 9)
!7198 = distinct !DILexicalBlock(scope: !7197, file: !1913, line: 241, column: 9)
!7199 = distinct !DILocation(line: 61, column: 9, scope: !7172, inlinedAt: !7173)
!7200 = distinct !DILocation(line: 292, column: 5, scope: !7198, inlinedAt: !7199)
!7201 = distinct !DILocation(line: 848, column: 1, scope: !401, inlinedAt: !7200)
!7202 = distinct !DILocation(line: 0, scope: !400, inlinedAt: !7201)
!7203 = distinct !DILocation(line: 0, scope: !401, inlinedAt: !7200)
!7204 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1521, file: !1294, line: 2192, type: !1523, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !8266)
!7205 = distinct !DILexicalBlock(scope: !7206, file: !1524, line: 1101, column: 13)
!7206 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs3f36owOmepS_6quiche", scope: !1527, file: !1524, line: 1099, type: !1530, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !800, retainedNodes: !8269)
!7207 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs3f36owOmepS_6quiche", scope: !1538, file: !1524, line: 1184, type: !1530, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !1540, retainedNodes: !8271)
!7208 = distinct !DILocation(line: 272, column: 22, scope: !8272, inlinedAt: !7199)
!7209 = distinct !DILocation(line: 1185, column: 14, scope: !7207, inlinedAt: !7208)
!7210 = distinct !DILocation(line: 1100, column: 12, scope: !7206, inlinedAt: !7209)
!7211 = distinct !DILocation(line: 2192, column: 19, scope: !7204, inlinedAt: !7210)
!7212 = distinct !DILocation(line: 1099, column: 18, scope: !7206, inlinedAt: !7209)
!7213 = distinct !DILocation(line: 1184, column: 13, scope: !7207, inlinedAt: !7208)
!7214 = distinct !DILocation(line: 0, scope: !7193, inlinedAt: !7199)
!7215 = distinct !DISubprogram(name: "copy_nonoverlapping<(u64, u64)>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19copy_nonoverlappingTyyEECs3f36owOmepS_6quiche", scope: !597, file: !954, line: 553, type: !1945, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !1735, retainedNodes: !8276)
!7216 = distinct !DILocation(line: 259, column: 13, scope: !7197, inlinedAt: !7199)
!7217 = distinct !DILocation(line: 0, scope: !7215, inlinedAt: !7216)
!7218 = distinct !DILocation(line: 260, column: 13, scope: !7197, inlinedAt: !7199)
!7219 = distinct !DILocation(line: 0, scope: !7215, inlinedAt: !7218)
!7220 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1552, file: !1524, line: 263, type: !1185, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !8279)
!7221 = distinct !DILocation(line: 1103, column: 35, scope: !7205, inlinedAt: !7209)
!7222 = distinct !DILocation(line: 0, scope: !7220, inlinedAt: !7221)
!7223 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !1183, file: !1181, line: 1031, type: !1554, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !584, retainedNodes: !8282)
!7224 = distinct !DILocation(line: 265, column: 28, scope: !7220, inlinedAt: !7221)
!7225 = distinct !DILocation(line: 0, scope: !7223, inlinedAt: !7224)
!7226 = distinct !DILocation(line: 273, column: 17, scope: !7179, inlinedAt: !7199)
!7227 = distinct !DILocation(line: 0, scope: !7215, inlinedAt: !7226)
!7228 = distinct !DILocation(line: 0, scope: !7194, inlinedAt: !7199)
!7229 = distinct !DISubprogram(name: "add<(u64, u64)>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTyyE3addCs3f36owOmepS_6quiche", scope: !911, file: !909, line: 937, type: !1917, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !50, templateParams: !1735, retainedNodes: !8285)
!7230 = distinct !DILocation(line: 243, column: 61, scope: !7197, inlinedAt: !7199)
!7231 = distinct !DILocation(line: 0, scope: !7229, inlinedAt: !7230)
!7232 = distinct !DILocation(line: 0, scope: !7195, inlinedAt: !7199)
!7233 = distinct !DILocation(line: 245, column: 24, scope: !7197, inlinedAt: !7199)
end_hunk_2
