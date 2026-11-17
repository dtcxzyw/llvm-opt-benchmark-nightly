Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 101
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtNtNtB9_6format8manifest8BasePathEB9_:bb.a
  %.fr9.i.i.i.i = freeze i64 %i.m
  %i.n = icmp eq i64 %.fr9.i.i.i.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !26377, !noalias !26378 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !26377, !noalias !26378, !nonnull !97
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !26377, !noalias !26378 ; 4 uses
  %i.u = load ptr, ptr %i.g, align 8, !alias.scope !26377, !noalias !26378, !nonnull !97 ; 2 uses
  br i1 %i.n, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %.backedge.us.i.i.i.i
  %i.v = phi ptr [ %i.w, %.backedge.us.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26381)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !26382, !noalias !26383, !noundef !97
  %i.z = icmp eq i32 %i.y, %i.i
  br i1 %i.z, label %bb.c, label %.backedge.us.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.us.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.ab = load i8, ptr %i.aa, align 4, !range !106, !alias.scope !26382, !noalias !26383, !noundef !97
  %i.ac = icmp eq i8 %i.ab, %i.k
  br i1 %i.ac, label %bb.d, label %.backedge.us.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !range !99, !alias.scope !26382, !noalias !26383, !noundef !97
  %.not.i.i.us.i.i.i.i = icmp eq i64 %i.ae, -1
  br i1 %.not.i.i.us.i.i.i.i, label %bb.e, label %.backedge.us.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !26382, !noalias !26383, !noundef !97
  %i.ah = icmp eq i64 %i.ag, %i.t
  br i1 %i.ah, label %.split.us.i.i.i.i, label %.backedge.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !26382, !noalias !26383, !nonnull !97, !noundef !97
  %bcmp6.i.i.us.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.u, i64 %i.t), !noalias !26384
  %i.ak = icmp eq i32 %bcmp6.i.i.us.i.i.i.i, 0
  br i1 %i.ak, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtNtNtBb_6format8manifest8BasePathE0Bb_.exit.i, label %.backedge.us.i.i.i.i

.backedge.us.i.i.i.i:                             ; preds = %.split.us.i.i.i.i, %bb.e, %bb.d, %bb.c, %.lr.ph.split.us.i.i.i.i
  %.not11.i.i.i.i = icmp eq ptr %i.w, %i.d
  br i1 %.not11.i.i.i.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtBW_11transaction9conflictsNtNtB2G_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecBQ_E0EBW_.exit, label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.backedge.i.i.i.i
  %i.al = phi ptr [ %i.am, %.backedge.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i ] ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26381)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ao = load i32, ptr %i.an, align 8, !alias.scope !26382, !noalias !26383, !noundef !97
  %i.ap = icmp eq i32 %i.ao, %i.i
  br i1 %i.ap, label %bb.f, label %.backedge.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.ar = load i8, ptr %i.aq, align 4, !range !106, !alias.scope !26382, !noalias !26383, !noundef !97
  %i.as = icmp eq i8 %i.ar, %i.k
  br i1 %i.as, label %bb.g, label %.backedge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.au = load i64, ptr %i.at, align 8, !range !99, !alias.scope !26382, !noalias !26383, !noundef !97
  %.not.i.i.i.i.i.i = icmp eq i64 %i.au, -1
  br i1 %.not.i.i.i.i.i.i, label %.backedge.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !26382, !noalias !26383, !noundef !97
  %i.ax = icmp eq i64 %i.aw, %i.p
  br i1 %i.ax, label %.split.i.i.i.i.i.i, label %.backedge.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !26382, !noalias !26383, !nonnull !97, !noundef !97
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.az, ptr nonnull %i.r, i64 %i.p), !noalias !26384
  %i.ba = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ba, label %bb.i, label %.backedge.i.i.i.i

bb.i:                                             ; preds = %.split.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !26382, !noalias !26383, !noundef !97
  %i.bd = icmp eq i64 %i.bc, %i.t
  br i1 %i.bd, label %.split.i.i.i.i, label %.backedge.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !26382, !noalias !26383, !nonnull !97, !noundef !97
  %bcmp6.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bf, ptr nonnull %i.u, i64 %i.t), !noalias !26384
  %i.bg = icmp eq i32 %bcmp6.i.i.i.i.i.i, 0
  br i1 %i.bg, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtNtNtBb_6format8manifest8BasePathE0Bb_.exit.i, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.split.i.i.i.i, %bb.i, %.split.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f, %.lr.ph.split.i.i.i.i
  %.not10.i.i.i.i = icmp eq ptr %i.am, %i.d
  br i1 %.not10.i.i.i.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtBW_11transaction9conflictsNtNtB2G_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecBQ_E0EBW_.exit, label %.lr.ph.split.i.i.i.i

_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtNtNtBb_6format8manifest8BasePathE0Bb_.exit.i: ; preds = %.split.i.i.i.i, %.split.us.i.i.i.i
  %i.bh = icmp eq ptr %i.f, %i.b
  br i1 %i.bh, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtBW_11transaction9conflictsNtNtB2G_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecBQ_E0EBW_.exit, label %.lr.ph.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtBW_11transaction9conflictsNtNtB2G_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecBQ_E0EBW_.exit: ; preds = %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtNtNtBb_6format8manifest8BasePathE0Bb_.exit.i, %.backedge.i.i.i.i, %.backedge.us.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %.backedge.us.i.i.i.i ], [ false, %.backedge.i.i.i.i ], [ true, %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtNtNtBb_6format8manifest8BasePathE0Bb_.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecmEB9_(ptr noalias noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #20 personality ptr @rust_eh_personality !guid !26395 {
bb.a:
  %i.a = icmp eq i64 %1, %3
  br i1 %i.a, label %bb.b, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecmE0EB1N_.exit

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %1, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26396)
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecmE0EB1N_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = and i64 %1, 2305843009213693936          ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.f = shl nuw nsw i64 %1, 2
  %.idx17 = and i64 %i.f, 60                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx17
  %.not.i.i.i13 = icmp eq i64 %i.d, 0
  %.not.not.not.i.not.not.i.not.i.i16 = icmp samesign eq i64 %.idx17, 0
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecmE0Bb_.exit.i, %.lr.ph.i
  %i.h = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecmE0Bb_.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %.val4.i = load i32, ptr %i.h, align 4, !noalias !26397 ; 2 uses
  br i1 %.not.i.i.i13, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i.preheader

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i.preheader: ; preds = %bb.c
  %i.j = insertelement <16 x i32> poison, i32 %.val4.i, i64 0
  %i.k = shufflevector <16 x i32> %i.j, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i

bb.d:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i15, i64 64
  %i.m = add nsw i64 %.sroa.5.0.i.i.i14, -16      ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i

.preheader.i.preheader:                           ; preds = %bb.d, %bb.c
  br i1 %.not.not.not.i.not.not.i.not.i.i16, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecmE0EB1N_.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.i = icmp eq ptr %i.n, %i.g
  br i1 %.not.not.not.i.not.not.i.not.i.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecmE0EB1N_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %i.o = phi ptr [ %i.n, %.preheader.i ], [ %i.e, %.preheader.i.preheader ] ; 2 uses
  %.val3.i.i.i.i = load i32, ptr %i.o, align 4, !alias.scope !26398, !noalias !26399, !noundef !97
  %i.p = icmp eq i32 %.val3.i.i.i.i, %.val4.i
  br i1 %i.p, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecmE0Bb_.exit.i, label %.preheader.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i.preheader, %bb.d
  %.sroa.0.05.i.i.i15 = phi ptr [ %i.l, %bb.d ], [ %2, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i.preheader ] ; 2 uses
  %.sroa.5.0.i.i.i14 = phi i64 [ %i.m, %bb.d ], [ %i.d, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i.preheader ]
  %i.q = load <16 x i32>, ptr %.sroa.0.05.i.i.i15, align 4, !alias.scope !26398, !noalias !26400
  %i.r = icmp eq <16 x i32> %i.q, %i.k
  %i.s = bitcast <16 x i1> %i.r to i16
  %.not = icmp eq i16 %i.s, 0
  br i1 %.not, label %bb.d, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecmE0Bb_.exit.i

_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecmE0Bb_.exit.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpmNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i, %.lr.ph
  %i.t = icmp eq ptr %i.i, %i.b
  br i1 %i.t, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecmE0EB1N_.exit, label %bb.c

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecmE0EB1N_.exit: ; preds = %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecmE0Bb_.exit.i, %.preheader.i.preheader, %.preheader.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %.preheader.i ], [ true, %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecmE0Bb_.exit.i ], [ false, %.preheader.i.preheader ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyEB9_(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #20 personality ptr @rust_eh_personality !guid !26411 {
bb.a:
  %i.a = icmp eq i64 %1, %3
  br i1 %i.a, label %bb.b, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %1, 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26412)
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = and i64 %1, 1152921504606846968          ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d ; 7 uses
  %i.f = shl nuw nsw i64 %1, 3
  %.idx17 = and i64 %i.f, 56                      ; 7 uses
  %.not.i.i.i13 = icmp eq i64 %i.d, 0
  %.not.not.not.i.not.not.i.not.i.i16 = icmp samesign eq i64 %.idx17, 0
  %.not.not.not.i.not.not.i.not.i.i = icmp samesign eq i64 %.idx17, 8
  %4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.not.not.not.i.not.not.i.not.i.i.1 = icmp samesign eq i64 %.idx17, 16
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.not.not.not.i.not.not.i.not.i.i.2 = icmp samesign eq i64 %.idx17, 24
  %6 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.not.not.not.i.not.not.i.not.i.i.3 = icmp samesign eq i64 %.idx17, 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.not.i.i.i13.a = icmp samesign eq i64 %.idx17, 40
  %7 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.not.not.not.i.not.not.i.not.i.i16.a = icmp samesign eq i64 %.idx17, 48
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i, %.lr.ph.i
  %i.h = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.val4.i = load i64, ptr %i.h, align 8, !noalias !26413 ; 15 uses
  br i1 %.not.i.i.i13, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i

bb.d:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i15, i64 64
  %i.k = add nsw i64 %.sroa.5.0.i.i.i14, -8       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i

.preheader.i.preheader:                           ; preds = %bb.d, %bb.c
  br i1 %.not.not.not.i.not.not.i.not.i.i16, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  br i1 %.not.not.not.i.not.not.i.not.i.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader.i
  %.val3.i.i.i.i.1 = load i64, ptr %4, align 8, !alias.scope !26414, !noalias !26415, !noundef !97
  %9 = icmp eq i64 %.val3.i.i.i.i.1, %.val4.i
  br i1 %9, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.lr.ph.1
  br i1 %.not.not.not.i.not.not.i.not.i.i.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.i.1
  %.val3.i.i.i.i.2 = load i64, ptr %5, align 8, !alias.scope !26414, !noalias !26415, !noundef !97
  %10 = icmp eq i64 %.val3.i.i.i.i.2, %.val4.i
  br i1 %10, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.lr.ph.2
  br i1 %.not.not.not.i.not.not.i.not.i.i.2, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.preheader.i.2
  %.val3.i.i.i.i.3 = load i64, ptr %6, align 8, !alias.scope !26414, !noalias !26415, !noundef !97
  %11 = icmp eq i64 %.val3.i.i.i.i.3, %.val4.i
  br i1 %11, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.lr.ph.3
  br i1 %.not.not.not.i.not.not.i.not.i.i.3, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.preheader.i.3
  %.val3.i.i.i.i.4 = load i64, ptr %i.g, align 8, !alias.scope !26414, !noalias !26415, !noundef !97
  %12 = icmp eq i64 %.val3.i.i.i.i.4, %.val4.i
  br i1 %12, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i, label %.preheader.i.4

.preheader.i.4:                                   ; preds = %.lr.ph.4
  br i1 %.not.i.i.i13.a, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.preheader.i.4
  %.val3.i.i.i.i.5 = load i64, ptr %7, align 8, !alias.scope !26414, !noalias !26415, !noundef !97
  %13 = icmp eq i64 %.val3.i.i.i.i.5, %.val4.i
  br i1 %13, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i, label %.preheader.i.preheader.a

.preheader.i.preheader.a:                         ; preds = %.lr.ph.5
  br i1 %.not.not.not.i.not.not.i.not.i.i16.a, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %.preheader.i.preheader.a
  %.val3.i.i.i.i.6 = load i64, ptr %8, align 8, !alias.scope !26414, !noalias !26415, !noundef !97
  %.not.not.not.i.not.not.i.not.i.i.a = icmp eq i64 %.val3.i.i.i.i.6, %.val4.i
  br i1 %.not.not.not.i.not.not.i.not.i.i.a, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit

.lr.ph:                                           ; preds = %.preheader.i.preheader
  %.val3.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !26414, !noalias !26415, !noundef !97
  %i.l = icmp eq i64 %.val3.i.i.i.i, %.val4.i
  br i1 %i.l, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i, label %.preheader.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.05.i.i.i15 = phi ptr [ %i.j, %bb.d ], [ %2, %bb.c ] ; 9 uses
  %.sroa.5.0.i.i.i14 = phi i64 [ %i.k, %bb.d ], [ %i.d, %bb.c ]
  %.val13.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i15, align 8, !alias.scope !26414, !noalias !26416, !noundef !97
  %i.m = icmp eq i64 %.val13.i.i.i.i, %.val4.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i15, i64 8
  %.val13.i.1.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !26414, !noalias !26416, !noundef !97
  %i.o = icmp eq i64 %.val13.i.1.i.i.i, %.val4.i
  %i.p = or i1 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i15, i64 16
  %.val13.i.2.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !26414, !noalias !26416, !noundef !97
  %i.r = icmp eq i64 %.val13.i.2.i.i.i, %.val4.i
  %i.s = or i1 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i15, i64 24
  %.val13.i.3.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !26414, !noalias !26416, !noundef !97
  %i.u = icmp eq i64 %.val13.i.3.i.i.i, %.val4.i
  %i.v = or i1 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i15, i64 32
  %.val13.i.4.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !26414, !noalias !26416, !noundef !97
  %i.x = icmp eq i64 %.val13.i.4.i.i.i, %.val4.i
  %i.y = or i1 %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i15, i64 40
  %.val13.i.5.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !26414, !noalias !26416, !noundef !97
  %i.aa = icmp eq i64 %.val13.i.5.i.i.i, %.val4.i
  %i.ab = or i1 %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i15, i64 48
  %.val13.i.6.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !26414, !noalias !26416, !noundef !97
  %i.ad = icmp eq i64 %.val13.i.6.i.i.i, %.val4.i
  %i.ae = or i1 %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i15, i64 56
  %.val13.i.7.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !26414, !noalias !26416, !noundef !97
  %i.ag = icmp eq i64 %.val13.i.7.i.i.i, %.val4.i
  %i.ah = or i1 %i.ae, %i.ag
  br i1 %i.ah, label %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i, label %bb.d

_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9KQ7US1M400_11lance_table.exit.i.i.i, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.preheader.i.a
  %i.ai = icmp eq ptr %i.i, %i.b
  br i1 %i.ai, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit, label %bb.c

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB1L_9operation9OperationNtNtBb_3cmp9PartialEq2eq11compare_vecyE0EB1N_.exit: ; preds = %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i, %.preheader.i.preheader, %.preheader.i.a, %.preheader.i, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %.preheader.i.4, %.preheader.i.preheader.a, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %.preheader.i.a ], [ false, %.preheader.i.preheader.a ], [ false, %.preheader.i.4 ], [ false, %.preheader.i.3 ], [ false, %.preheader.i.2 ], [ false, %.preheader.i.1 ], [ false, %.preheader.i ], [ true, %_RNCINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB9_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecyE0Bb_.exit.i ], [ false, %.preheader.i.preheader ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs7_NtCs5QD3CVEMyfH_10serde_json2deINtB8_9SeqAccesspENtNtCskpEw9nXJLNc_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 !guid !26441 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !97, !align !102, !noundef !97 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26442)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26443, !noundef !97 ; 4 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !26442 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i, %i.h
  br i1 %i.i, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !26443, !nonnull !97, !noundef !97 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26445)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !26446, !noundef !97 ; 2 uses
  switch i8 %i.n, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !26447
  %exitcond.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 2, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.r, align 1
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !106, !noundef !97
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i8 %i.n, 44
  br i1 %i.v, label %bb.h, label %bb.j, !prof !109

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.w, align 1
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !26448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26449)
  %i.y = icmp ult i64 %i.x, %i.h
  br i1 %i.y, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.z = phi i64 [ %i.ac, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !26450, !noundef !97
  switch i8 %i.ab, label %bb.l [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 93, label %bb.k
  ], !prof !26451

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ac = add nuw i64 %i.z, 1                     ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !alias.scope !26452
  %exitcond.not.i8 = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 7, ptr %i.a, align 8
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.m

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aj, align 1
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.g, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 0, %bb.g ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB8_9MapAccesspENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 !guid !26477 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !97, !align !102, !noundef !97 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26478)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !26479, !noundef !97 ; 4 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !26478 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !26479, !nonnull !97, !noundef !97 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26481)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !26482, !noundef !97 ; 3 uses
  switch i8 %i.p, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !26483
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 3, ptr %i.f, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !106, !noundef !97
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

end_hunk_0
