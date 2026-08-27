Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/yansi-627c0f57a6b22471.yansi.cbb9d2f94ed6d408-cgu.00?download=true
inline.NumInlined: 26
inline.NumDeleted: 15
begin_hunk_0_@_RNvMNtCshuqxroUi4Em_5yansi5styleNtB2_5Style7enabled:bb.a
_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCshuqxroUi4Em_5yansi9condition9ConditionE6map_orbNCNvMNtBM_5styleNtB1E_5Style7enabled0EBM_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i1 [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.02.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCshuqxroUi4Em_5yansi10attr_quirkNtNtB7_5style5StyleINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9AttributeE4from(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i8 noundef range(i8 0, 9) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCshuqxroUi4Em_5yansi10attr_quirkNtB2_9Attribute5style(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i8 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCshuqxroUi4Em_5yansi5colorNtNtB7_5style5StyleINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_5ColorE4from(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCshuqxroUi4Em_5yansi5colorNtB2_5Color10foreground(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !14, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !3, !nonnull !3
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCshuqxroUi4Em_5yansi10attr_quirkNtNtB7_5style5StyleINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_5QuirkE4from(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i8 noundef range(i8 0, 7) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCshuqxroUi4Em_5yansi10attr_quirkNtB4_5Quirk5style(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i8 noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef zeroext i1 @_RNvXs1_NtCshuqxroUi4Em_5yansi5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !34, !noundef !3 ; 3 uses
  %.not = icmp eq i8 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !34, !noundef !3 ; 2 uses
  %i.e = icmp eq i8 %i.d, -1                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread9, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.f = icmp eq i8 %i.b, %i.d
  br i1 %i.f, label %bb.e, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.d
  switch i8 %i.b, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread9 [
    i8 1, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
    i8 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !35, !noalias !38, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !38, !noalias !35, !noundef !3
  %i.k = icmp eq i8 %i.h, %i.j
  br i1 %i.k, label %bb.g, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.m = load i8, ptr %i.l, align 2, !alias.scope !35, !noalias !38, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.o = load i8, ptr %i.n, align 2, !alias.scope !38, !noalias !35, !noundef !3
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %.split, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !35, !noalias !38, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !38, !noalias !35, !noundef !3
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread9, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !35, !noalias !38, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !38, !noalias !35, !noundef !3
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread9, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread9: ; preds = %bb.e, %.split, %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !34, !noundef !3 ; 3 uses
  %.not4 = icmp eq i8 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !34, !noundef !3 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, -1                    ; 2 uses
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread9
  br i1 %i.ae, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.j

bb.i:                                             ; preds = %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread9
  br i1 %i.ae, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.thread12, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.af = icmp eq i8 %i.ab, %i.ad
  br i1 %i.af, label %bb.k, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.j
  switch i8 %i.ab, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.thread12 [
    i8 1, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7
    i8 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !40, !noalias !43, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !43, !noalias !40, !noundef !3
  %i.ak = icmp eq i8 %i.ah, %i.aj
  br i1 %i.ak, label %bb.m, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.am = load i8, ptr %i.al, align 2, !alias.scope !40, !noalias !43, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ao = load i8, ptr %i.an, align 2, !alias.scope !43, !noalias !40, !noundef !3
  %i.ap = icmp eq i8 %i.am, %i.ao
  br i1 %i.ap, label %.split14, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

.split14:                                         ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !40, !noalias !43, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !43, !noalias !40, !noundef !3
  %i.au = icmp eq i8 %i.ar, %i.at
  br i1 %i.au, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.thread12, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7: ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !40, !noalias !43, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !43, !noalias !40, !noundef !3
  %i.az = icmp eq i8 %i.aw, %i.ay
  br i1 %i.az, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.thread12, label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.thread12: ; preds = %bb.k, %.split14, %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load i16, ptr %i.ba, align 8, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load i16, ptr %i.bc, align 8, !noundef !3
  %i.be = icmp eq i16 %i.bb, %i.bd
  br label %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.l, %bb.m, %bb.j, %bb.f, %bb.g, %bb.d, %.split14, %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7, %.split, %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.c, %bb.i, %bb.b, %bb.h, %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.thread12
  %.sroa.0.0 = phi i1 [ %i.be, %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7.thread12 ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.i ], [ false, %bb.c ], [ false, %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %.split14 ], [ false, %.split ], [ false, %_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit7 ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.m ], [ false, %bb.l ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs4_NtCshuqxroUi4Em_5yansi5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !34, !noundef !3 ; 4 uses
  %.not = icmp eq i8 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !34, !noundef !3 ; 3 uses
  %.not8 = icmp eq i8 %i.d, -1                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.v, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.d, label %bb.v

bb.d:                                             ; preds = %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !34, !noundef !3 ; 4 uses
  %.not10 = icmp eq i8 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !34, !noundef !3 ; 3 uses
  %.not11 = icmp eq i8 %i.h, -1                   ; 2 uses
  br i1 %.not10, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %2 = zext nneg i8 %i.b to i64
  %3 = zext nneg i8 %i.d to i64
  %.not.i = icmp eq i8 %i.b, %i.d
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  switch i8 %i.b, label %bb.g [
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  br label %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !45, !noalias !48, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !48, !noalias !45, !noundef !3
  %i.n = tail call i8 @llvm.ucmp.i8.i8(i8 %i.k, i8 %i.m)
  br label %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !45, !noalias !48, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !48, !noalias !45, !noundef !3 ; 2 uses
  %i.s = tail call i8 @llvm.ucmp.i8.i8(i8 %i.p, i8 %i.r)
  %i.t = icmp eq i8 %i.p, %i.r
  br i1 %i.t, label %bb.j, label %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.v = load i8, ptr %i.u, align 2, !alias.scope !45, !noalias !48, !noundef !3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.x = load i8, ptr %i.w, align 2, !alias.scope !48, !noalias !45, !noundef !3 ; 2 uses
  %i.y = tail call i8 @llvm.ucmp.i8.i8(i8 %i.v, i8 %i.x)
  %i.z = icmp eq i8 %i.v, %i.x
  br i1 %i.z, label %bb.k, label %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !45, !noalias !48, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !48, !noalias !45, !noundef !3
  %i.ae = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ab, i8 %i.ad)
  br label %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i = phi i8 [ %i.i, %bb.g ], [ %i.n, %bb.h ], [ %i.ae, %bb.k ], [ %i.y, %bb.j ], [ %i.s, %bb.i ] ; 2 uses
  %i.af = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.af, label %bb.d, label %bb.v

bb.l:                                             ; preds = %bb.d
  br i1 %.not11, label %bb.v, label %bb.o

bb.m:                                             ; preds = %bb.d
  br i1 %.not11, label %bb.n, label %bb.v

bb.n:                                             ; preds = %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit15, %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i16, ptr %i.ag, align 8, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i16, ptr %i.ai, align 8, !noundef !3
  %i.ak = tail call i8 @llvm.ucmp.i8.i16(i16 %i.ah, i16 %i.aj)
  br label %bb.v

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %4 = zext nneg i8 %i.f to i64
  %5 = zext nneg i8 %i.h to i64
  %.not.i13 = icmp eq i8 %i.f, %i.h
  br i1 %.not.i13, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  switch i8 %i.f, label %bb.q [
    i8 1, label %bb.r
    i8 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.al = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  br label %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit15

bb.r:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !50, !noalias !53, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !53, !noalias !50, !noundef !3
  %i.aq = tail call i8 @llvm.ucmp.i8.i8(i8 %i.an, i8 %i.ap)
  br label %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit15

bb.s:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !50, !noalias !53, !noundef !3 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !53, !noalias !50, !noundef !3 ; 2 uses
  %i.av = tail call i8 @llvm.ucmp.i8.i8(i8 %i.as, i8 %i.au)
  %i.aw = icmp eq i8 %i.as, %i.au
  br i1 %i.aw, label %bb.t, label %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit15

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ay = load i8, ptr %i.ax, align 2, !alias.scope !50, !noalias !53, !noundef !3 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ba = load i8, ptr %i.az, align 2, !alias.scope !53, !noalias !50, !noundef !3 ; 2 uses
  %i.bb = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ay, i8 %i.ba)
  %i.bc = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bc, label %bb.u, label %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit15

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !50, !noalias !53, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !53, !noalias !50, !noundef !3
  %i.bh = tail call i8 @llvm.ucmp.i8.i8(i8 %i.be, i8 %i.bg)
  br label %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit15

_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit15: ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i14 = phi i8 [ %i.al, %bb.q ], [ %i.aq, %bb.r ], [ %i.bh, %bb.u ], [ %i.bb, %bb.t ], [ %i.av, %bb.s ] ; 2 uses
  %i.bi = icmp eq i8 %.sroa.0.0.i14, 0
  br i1 %i.bi, label %bb.n, label %bb.v

bb.v:                                             ; preds = %bb.l, %bb.m, %bb.b, %bb.c, %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit15, %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit, %bb.n
  %.sroa.0.0 = phi i8 [ %i.ak, %bb.n ], [ %.sroa.0.0.i14, %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit15 ], [ -1, %bb.m ], [ 1, %bb.b ], [ %.sroa.0.0.i, %_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp.exit ], [ -1, %bb.c ], [ 1, %bb.l ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs5_NtCshuqxroUi4Em_5yansi5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !34, !noundef !3 ; 4 uses
  %.not = icmp eq i8 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !34, !noundef !3 ; 3 uses
  %.not4 = icmp eq i8 %i.d, -1                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not4, label %bb.r, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not4, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread, label %bb.r

_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread: ; preds = %bb.e, %bb.c, %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !34, !noundef !3 ; 4 uses
  %.not6 = icmp eq i8 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !34, !noundef !3 ; 3 uses
  %.not7 = icmp eq i8 %i.h, -1                    ; 2 uses
  br i1 %.not6, label %bb.k, label %bb.j

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %2 = zext nneg i8 %i.b to i64
  %3 = zext nneg i8 %i.d to i64
  %i.i = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.j = icmp eq i8 %i.b, %i.d
  br i1 %i.j, label %bb.e, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.e:                                             ; preds = %bb.d
  switch i8 %i.b, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread [
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !55, !noalias !58, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !58, !noalias !55, !noundef !3
  %i.o = tail call i8 @llvm.ucmp.i8.i8(i8 %i.l, i8 %i.n)
  br label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !55, !noalias !58, !noundef !3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !58, !noalias !55, !noundef !3 ; 2 uses
  %i.t = tail call i8 @llvm.ucmp.i8.i8(i8 %i.q, i8 %i.s)
  %i.u = icmp eq i8 %i.q, %i.s
  br i1 %i.u, label %bb.h, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.w = load i8, ptr %i.v, align 2, !alias.scope !55, !noalias !58, !noundef !3 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.y = load i8, ptr %i.x, align 2, !alias.scope !58, !noalias !55, !noundef !3 ; 2 uses
  %i.z = tail call i8 @llvm.ucmp.i8.i8(i8 %i.w, i8 %i.y)
  %i.aa = icmp eq i8 %i.w, %i.y
  br i1 %i.aa, label %bb.i, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !55, !noalias !58, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !58, !noalias !55, !noundef !3
  %i.af = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ac, i8 %i.ae)
  br label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i8 [ %i.i, %bb.d ], [ %i.o, %bb.f ], [ %i.af, %bb.i ], [ %i.z, %bb.h ], [ %i.t, %bb.g ] ; 2 uses
  %i.ag = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.ag, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread, label %bb.r

bb.j:                                             ; preds = %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread
  br i1 %.not7, label %bb.r, label %bb.l

bb.k:                                             ; preds = %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread
  br i1 %.not7, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10.thread, label %bb.r

_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10.thread: ; preds = %bb.m, %bb.k, %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i16, ptr %i.ah, align 8, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i16, ptr %i.aj, align 8, !noundef !3
  %i.al = tail call i8 @llvm.ucmp.i8.i16(i16 %i.ai, i16 %i.ak)
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %4 = zext nneg i8 %i.f to i64
  %5 = zext nneg i8 %i.h to i64
  %i.am = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  %i.an = icmp eq i8 %i.f, %i.h
  br i1 %i.an, label %bb.m, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10

bb.m:                                             ; preds = %bb.l
  switch i8 %i.f, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10.thread [
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !60, !noalias !63, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !63, !noalias !60, !noundef !3
  %i.as = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ap, i8 %i.ar)
  br label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10

bb.o:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !60, !noalias !63, !noundef !3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !63, !noalias !60, !noundef !3 ; 2 uses
  %i.ax = tail call i8 @llvm.ucmp.i8.i8(i8 %i.au, i8 %i.aw)
  %i.ay = icmp eq i8 %i.au, %i.aw
  br i1 %i.ay, label %bb.p, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ba = load i8, ptr %i.az, align 2, !alias.scope !60, !noalias !63, !noundef !3 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.bc = load i8, ptr %i.bb, align 2, !alias.scope !63, !noalias !60, !noundef !3 ; 2 uses
  %i.bd = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ba, i8 %i.bc)
  %i.be = icmp eq i8 %i.ba, %i.bc
  br i1 %i.be, label %bb.q, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !60, !noalias !63, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !63, !noalias !60, !noundef !3
  %i.bj = tail call i8 @llvm.ucmp.i8.i8(i8 %i.bg, i8 %i.bi)
  br label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10

_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10: ; preds = %bb.l, %bb.n, %bb.o, %bb.p, %bb.q
  %.sroa.0.0.i9 = phi i8 [ %i.am, %bb.l ], [ %i.as, %bb.n ], [ %i.bj, %bb.q ], [ %i.bd, %bb.p ], [ %i.ax, %bb.o ] ; 2 uses
  %i.bk = icmp eq i8 %.sroa.0.0.i9, 0
  br i1 %i.bk, label %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10.thread, label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.k, %bb.b, %bb.c, %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10, %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit, %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10.thread
  %.sroa.0.0 = phi i8 [ %i.al, %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10.thread ], [ %.sroa.0.0.i9, %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit10 ], [ -1, %bb.k ], [ 1, %bb.b ], [ %.sroa.0.0.i, %_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit ], [ -1, %bb.c ], [ 1, %bb.j ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !65, !noundef !3 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshuqxroUi4Em_5yansi(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !65, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshuqxroUi4Em_5yansi(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !65, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !65
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshuqxroUi4Em_5yansi(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !71, !noalias !68, !noundef !3 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !71, !noalias !68, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !71, !noalias !68
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !71, !noalias !68
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCshuqxroUi4Em_5yansi5style11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB6_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !75
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !75
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !75
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !75
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !75
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !75
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !75
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !75
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !78, !noalias !81, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !78, !noalias !81, !nonnull !3, !align !14, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !3, !noalias !83, !nonnull !3
  %i.ag = call noundef zeroext i1 %i.af(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !noalias !78, !inline_history !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ag
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCshuqxroUi4Em_5yansi5style11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtB6_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtQNtNtCshuqxroUi4Em_5yansi5style11AnsiSplicerNtB4_12SpecWriteFmt14spec_write_fmtBS_.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !84
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshuqxroUi4Em_5yansi(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshuqxroUi4Em_5yansi(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshuqxroUi4Em_5yansi(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 9) i8 @_RNvXs_NtCshuqxroUi4Em_5yansi3setINtB4_4IterNtNtB6_10attr_quirk9AttributeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias noundef align 2 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshuqxroUi4Em_5yansi3setINtB2_3SetNtNtB4_10attr_quirk5QuirkE8containsB4_(i16 noundef, i8 noundef range(i8 0, 7)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshuqxroUi4Em_5yansi5colorNtB2_5Color3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshuqxroUi4Em_5yansi10attr_quirkNtB2_9Attribute3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCshuqxroUi4Em_5yansi(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCshuqxroUi4Em_5yansi10attr_quirkNtB2_9Attribute5style(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i8 noundef range(i8 0, 9)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCshuqxroUi4Em_5yansi5colorNtB2_5Color10foreground(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCshuqxroUi4Em_5yansi10attr_quirkNtB4_5Quirk5style(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i8 noundef range(i8 0, 7)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!5, !7}
!5 = distinct !{!5, !6, !"_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!6 = distinct !{!6, !"_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!7 = distinct !{!7, !6, !"_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!8 = !{!5}
!9 = !{ptr @_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RNvMs_NtCshuqxroUi4Em_5yansi5styleNtB4_11AnsiSplicer6splice: argument 0"}
!12 = distinct !{!12, !"_RNvMs_NtCshuqxroUi4Em_5yansi5styleNtB4_11AnsiSplicer6splice"}
!13 = !{i8 0, i8 2}
!14 = !{i64 8}
!15 = distinct !{null}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvMs_NtCshuqxroUi4Em_5yansi5styleNtB4_11AnsiSplicer6splice: argument 0"}
!18 = distinct !{!18, !"_RNvMs_NtCshuqxroUi4Em_5yansi5styleNtB4_11AnsiSplicer6splice"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNvMs_NtCshuqxroUi4Em_5yansi5styleNtB4_11AnsiSplicer6splice: argument 0"}
!21 = distinct !{!21, !"_RNvMs_NtCshuqxroUi4Em_5yansi5styleNtB4_11AnsiSplicer6splice"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RNvYNtNtCshuqxroUi4Em_5yansi5style11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB6_: argument 0"}
!24 = distinct !{!24, !"_RNvYNtNtCshuqxroUi4Em_5yansi5style11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB6_"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!27 = distinct !{!27, !"_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!28 = !{!26, !23}
!29 = !{!30}
!30 = distinct !{!30, !27, !"_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!31 = !{!26, !30, !23}
!32 = !{ptr @_RNvYNtNtCshuqxroUi4Em_5yansi5style11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB6_, ptr @_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str}
!33 = distinct !{null, null}
!34 = !{i8 -1, i8 19}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!37 = distinct !{!37, !"_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!42 = distinct !{!42, !"_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"_RNvXs3_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!47 = distinct !{!47, !"_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!52 = distinct !{!52, !"_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!53 = !{!54}
!54 = distinct !{!54, !52, !"_RNvXs8_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 0"}
!57 = distinct !{!57, !"_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 1"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 0"}
!62 = distinct !{!62, !"_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"_RNvXs9_NtCshuqxroUi4Em_5yansi5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 1"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!67 = distinct !{!67, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!70 = distinct !{!70, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!71 = !{!72, !74}
!72 = distinct !{!72, !73, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshuqxroUi4Em_5yansi: argument 0"}
!73 = distinct !{!73, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshuqxroUi4Em_5yansi"}
!74 = distinct !{!74, !70, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw: argument 0"}
!77 = distinct !{!77, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!80 = distinct !{!80, !"_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"_RNvXs0_NtCshuqxroUi4Em_5yansi5styleNtB5_11AnsiSplicerNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!83 = !{!79, !82}
!84 = distinct !{null}
end_hunk_0
