Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax:bb.a
  %.sroa.0.0.i.i9.i = phi ptr [ %i.w, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i, i64 %i.q ; 2 uses
  %i.ai = add nsw i64 %.sroa.4.0.i.ph, -1         ; 2 uses
  %i.aj = icmp samesign ult i64 %.sroa.4.0.i.ph, 9
  %i.ak = lshr i64 %.sroa.4.0.i.ph, 3
  %i.al = mul nuw nsw i64 %i.ak, 7
  %.sroa.07.0.i = select i1 %i.aj, i64 %i.ai, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ah, i8 -1, i64 %i.r, i1 false)
  store ptr %i.ah, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0.i, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.618.0..sroa_idx, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.b, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtB1T_5slice4iter4IterBG_EEEBK_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 5                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !827, !noundef !19 ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !33, !alias.scope !827, !noundef !19
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 32)
  %.pre = load i64, ptr %i.e, align 8
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.f, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !19, !noundef !19
  %i.m = icmp eq ptr %1, %2
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB32_3VecB1n_E14extend_trustedB3_E0EB1r_.exit, label %.preheader

.preheader:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit, %bb.m
  %.val10.i.i.i = phi i64 [ %i.ai, %bb.m ], [ %i.j, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.aj, %bb.m ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.01.0.i.i.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.o = load i8, ptr %i.n, align 8, !range !30, !alias.scope !832, !noalias !833, !noundef !19 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

default.unreachable:                              ; preds = %.preheader
  unreachable

bb.c:                                             ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 23
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !832, !noalias !833, !noundef !19
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %i.r, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !832, !noalias !833 ; 5 uses
  %.val21.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !832, !noalias !833 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.m

bb.d:                                             ; preds = %.preheader
  %i.t = load ptr, ptr %i.p, align 8, !alias.scope !832, !noalias !833, !nonnull !19, !noundef !19 ; 2 uses
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8, !noalias !834
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.m

bb.e:                                             ; preds = %.preheader
  %i.w = load ptr, ptr %i.p, align 8, !alias.scope !832, !noalias !833, !nonnull !19, !noundef !19 ; 2 uses
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8, !noalias !834
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.m

bb.f:                                             ; preds = %.preheader
  %i.z = load ptr, ptr %i.p, align 8, !alias.scope !832, !noalias !833, !nonnull !19, !noundef !19 ; 2 uses
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !noalias !834
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.m

bb.g:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i, i64 -16
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !noalias !834
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.m, !prof !23

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5PEMdK7bMAG_12typst_syntax(ptr noundef nonnull %.val.i.i.i.i.i.i.i) #58
          to label %.noexc.i.i.i unwind label %bb.n

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ undef, %bb.e ], [ %.val21.i.i.i.i.i.i.i, %bb.h ], [ undef, %bb.d ], [ undef, %bb.f ], [ %.val21.i.i.i.i.i.i.i, %bb.g ], [ %.val21.i.i.i.i.i.i.i, %bb.c ]
  %.sroa.51.0.i.i.i.i.i.i = phi ptr [ %i.w, %bb.e ], [ %.val.i.i.i.i.i.i.i, %bb.h ], [ %i.t, %bb.d ], [ %i.z, %bb.f ], [ inttoptr (i64 16 to ptr), %bb.g ], [ %.val.i.i.i.i.i.i.i, %bb.c ]
  %.sink23.i.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sink23.i.i.i.i.i.i.i = load i8, ptr %.sink23.i.in.i.i.i.i.i.i, align 1, !range !21, !alias.scope !832, !noalias !833, !noundef !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !range !31, !alias.scope !835, !noalias !833, !noundef !19
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.val10.i.i.i ; 5 uses
  store i8 %i.o, ptr %i.ah, align 8, !noalias !836
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %.sink23.i.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 1, !noalias !836
  %.sroa.65.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.51.0.i.i.i.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i.i, align 8, !noalias !836
  %.sroa.76.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.9.0.i.i.i.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i.i.i, align 8, !noalias !836
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %i.ag, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !836
  %i.ai = add i64 %.val10.i.i.i, 1                ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.d
  br i1 %i.ak, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB32_3VecB1n_E14extend_trustedB3_E0EB1r_.exit, label %.preheader

bb.n:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i, ptr %i.e, align 8, !noalias !833
  resume { ptr, i32 } %i.al

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB32_3VecB1n_E14extend_trustedB3_E0EB1r_.exit: ; preds = %bb.m, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit
  %storemerge.i.i = phi i64 [ %i.j, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE7reserveBI_.exit ], [ %i.ai, %bb.m ]
  store i64 %storemerge.i.i, ptr %i.e, align 8, !noalias !833
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB12_INtNtNtB1a_3str4iter5SplitcENvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB2s_7Segment13new_uncheckedENvB2o_3getEEB2u_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %.promoted = load i8, ptr %i.a, align 1, !alias.scope !852
  %.promoted11 = load i64, ptr %1, align 8        ; 4 uses
  %i.b = trunc nuw i8 %.promoted to i1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !852, !nonnull !19, !noundef !19 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !852, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !853, !noundef !19 ; 8 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.f, %.val1.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i8, ptr %i.h, align 8               ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %i.k = icmp ult i8 %i.i, 5
  %i.l = getelementptr i8, ptr %i.g, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !range !20
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.promoted15 = load i64, ptr %i.s, align 8, !alias.scope !853
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not.i3.i.i.i.i.us = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted11
  %or.cond.not.i.i.i.i.i.us = select i1 %i.p, i1 true, i1 %.not.i3.i.i.i.i.us
  %i.t = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted11
  %.sroa.0.1.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted11
  br i1 %or.cond.not.i.i.i.i.i.us, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.us.us, label %._crit_edge

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.us.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.u = load i64, ptr %i.q, align 8, !noundef !19 ; 5 uses
  %i.v = icmp ult i64 %i.u, 576460752303423488
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %0, align 8, !range !33, !noundef !19
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.us.us, label %._crit_edge.split.us.split.us

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.us.us: ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.us.us
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, i64 noundef 1, i64 noundef 8, i64 noundef 16)
  br label %._crit_edge.split.us.split.us

._crit_edge.split.us.split.us:                    ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.us.us, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.us.us
  %i.y = load ptr, ptr %i.r, align 8, !nonnull !19, !noundef !19
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.u ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i.us, ptr %i.z, align 8, !captures !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.t, ptr %i.aa, align 8
  %i.ab = add nuw nsw i64 %i.u, 1
  store i64 %i.ab, ptr %i.q, align 8
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.f
  %i.ac = phi i64 [ %i.ay, %bb.f ], [ %.promoted15, %.lr.ph.split.preheader ] ; 3 uses
  %.lcssa91314 = phi i64 [ %.lcssa912, %bb.f ], [ %.promoted11, %.lr.ph.split.preheader ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.ad = icmp ult i64 %i.f, %i.ac
  br i1 %i.ad, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split
  tail call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !853 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i.i
  %i.ae = phi i64 [ %i.as, %bb.d ], [ %i.ac, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.af = sub nuw i64 %i.f, %i.ae                 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ah = icmp samesign ult i64 %i.af, 16
  br i1 %i.ah, label %.preheader.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.f, %i.ae
  br i1 %.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ai = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef range(i64 0, -9223372036854775808) %i.af), !noalias !859 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %.loopexit.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !860, !noalias !859, !noundef !19
  %i.ao = icmp eq i8 %i.an, %.pre.i.i.i.i.i
  br i1 %i.ao, label %.loopexit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ap = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ap, %i.af
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.b ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.aq = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.af
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add i64 %i.ae, 1
  %i.as = add i64 %i.ar, %.sroa.5.0.i.i.i.i.i.i   ; 8 uses
  %.not11.i.i.i.i.i = icmp ult i64 %i.as, %i.j
  %.not12.i.i.i.i.i = icmp ugt i64 %i.as, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i.i
  %i.at = icmp ult i64 %i.f, %i.as
  br i1 %i.at, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.au = sub nuw i64 %i.as, %i.j                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.au
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.av, ptr nonnull %i.g, i64 %i.j), !noalias !861
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aw, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.d

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %bb.d, %.preheader.i.i.i.i.i.i, %bb.b, %bb.c, %.lr.ph.split
  %i.ax = phi i64 [ %i.ac, %.lr.ph.split ], [ %i.f, %bb.c ], [ %i.f, %bb.b ], [ %i.f, %.preheader.i.i.i.i.i.i ], [ %i.as, %bb.d ]
  store i8 1, ptr %i.a, align 1, !alias.scope !862
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa91314
  %or.cond.not.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %._crit_edge

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.e, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.ay = phi i64 [ %i.ax, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i ], [ %i.as, %bb.e ]
  %.lcssa912 = phi i64 [ %.lcssa91314, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i ], [ %i.as, %bb.e ]
  %i.az = phi i1 [ true, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i ], [ false, %bb.e ]
  %.pn = phi i64 [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i ], [ %i.au, %bb.e ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn, %.lcssa91314
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa91314
  %i.ba = load i64, ptr %i.q, align 8, !noundef !19 ; 5 uses
  %i.bb = icmp ult i64 %i.ba, 576460752303423488
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = load i64, ptr %0, align 8, !range !33, !noundef !19
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit, label %bb.f

._crit_edge:                                      ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %bb.f, %.lr.ph.split.us, %._crit_edge.split.us.split.us, %bb.a
  ret void

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ba, i64 noundef 1, i64 noundef 8, i64 noundef 16)
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit
  %i.be = load ptr, ptr %i.r, align 8, !nonnull !19, !noundef !19
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.ba ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i, ptr %i.bf, align 8, !captures !34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.bg, align 8
  %i.bh = add nuw nsw i64 %i.ba, 1
  store i64 %i.bh, ptr %i.q, align 8
  br i1 %i.az, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !35, !noundef !19
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB11_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB11_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !873, !noundef !19
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB11_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !875, !noundef !19 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB11_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !noalias !876, !noundef !19
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.g, align 8, !noalias !876
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB11_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #57, !inline_history !2
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB11_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEB11_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !19
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !886, !noundef !19 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !noalias !887, !noundef !19
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !noalias !887
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #57, !inline_history !2
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB12_3vec6EcoVecBY_EEEECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noundef !19 ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath13relative_from:bb.a
  store i64 %.lcssa173198, ptr %i.o, align 8
  store i64 %.lcssa150185, ptr %i.i, align 8
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = load i64, ptr %i.k, align 8, !alias.scope !4191, !noundef !19 ; 3 uses
  %i.cr = load i64, ptr %i.g, align 8, !range !33, !alias.scope !4191, !noundef !19
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #57
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.o, %bb.an, %bb.ab
  %i.ct = load ptr, ptr %i.j, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.cu = load i64, ptr %i.k, align 8, !noundef !19 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4192)
  %.idx.i = shl nuw nsw i64 %i.cu, 4              ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.i ; 2 uses
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  store ptr null, ptr %0, align 8, !alias.scope !4193
  %.sroa.5.0..sroa_idx.i312 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i312, align 8, !alias.scope !4193
  br label %_RNvXsn_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs1xwejQucwHj_5alloc6string6StringE4from.exit

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %.val78.i = load ptr, ptr %i.ct, align 8, !alias.scope !4192, !nonnull !19, !noundef !19
  %i.cy = getelementptr i8, ptr %i.ct, i64 8
  %.val79.i = load i64, ptr %i.cy, align 8, !alias.scope !4192, !noundef !19 ; 6 uses
  %gepdiff.i = add nsw i64 %.idx.i, -16
  %i.cz = lshr exact i64 %gepdiff.i, 4            ; 2 uses
  %i.da = add i64 %.val79.i, %i.cz                ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  br i1 %i.db, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs5PEMdK7bMAG_12typst_syntax.exit.i, label %.preheader.i.preheader, !prof !23

.preheader.i.preheader:                           ; preds = %bb.s
  %i.dc = icmp eq i64 %i.cu, 1
  br i1 %i.dc, label %.preheader.i._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cv
  br i1 %i.de, label %.preheader.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.01.0.i.i399 = phi i64 [ %i.dh, %.preheader.i ], [ %i.da, %.preheader.i.preheader ] ; 2 uses
  %i.df = phi ptr [ %i.dd, %.preheader.i ], [ %i.cx, %.preheader.i.preheader ] ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %.val8.i.i = load i64, ptr %i.dg, align 8, !alias.scope !4192, !noalias !4194, !noundef !19
  %i.dh = add i64 %.val8.i.i, %.sroa.01.0.i.i399  ; 3 uses
  %i.di = icmp ult i64 %i.dh, %.sroa.01.0.i.i399
  br i1 %i.di, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs5PEMdK7bMAG_12typst_syntax.exit.i, label %.preheader.i

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.sroa.01.0.i.i.lcssa = phi i64 [ %i.da, %.preheader.i.preheader ], [ %i.dh, %.preheader.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4195
  %.not.i.i.i76 = icmp slt i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %.not.i.i.i76, label %bb.u, label %bb.t, !prof !32

bb.t:                                             ; preds = %.preheader.i._crit_edge
  %i.dj = icmp eq i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %i.dj, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5PEMdK7bMAG_12typst_syntax.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.t
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !4196
  %i.dk = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.sroa.01.0.i.i.lcssa, i64 noundef range(i64 1, 9) 1) #60, !noalias !4196 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.u, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5PEMdK7bMAG_12typst_syntax.exit.i

bb.u:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %.preheader.i._crit_edge
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %.preheader.i._crit_edge ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.01.0.i.i.lcssa) #58
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc79:                                         ; preds = %bb.u
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.t
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.t ], [ %i.dk, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 3 uses
  store i64 %.sroa.01.0.i.i.lcssa, ptr %i.c, align 8, !noalias !4195
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %i.dm, align 8, !noalias !4195
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.dn, align 8, !noalias !4195
  call void @llvm.experimental.noalias.scope.decl(metadata !4197)
  call void @llvm.experimental.noalias.scope.decl(metadata !4198)
  %i.do = icmp ugt i64 %.val79.i, %.sroa.01.0.i.i.lcssa
  br i1 %i.do, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, !prof !23

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5PEMdK7bMAG_12typst_syntax.exit.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %.val79.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.w, !noalias !4195

.noexc.i:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i
  %i.dp = load i64, ptr %i.dn, align 8, !alias.scope !4199, !noalias !4195, !noundef !19 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.dq)
  %.pre.i = load ptr, ptr %i.dm, align 8, !alias.scope !4199, !noalias !4195
  br label %bb.v

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5PEMdK7bMAG_12typst_syntax.exit.i
  %.not.i.i80.i = icmp samesign eq i64 %.val79.i, 0
  br i1 %.not.i.i80.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %.noexc.i
  %i.dr = phi ptr [ %.pre.i, %.noexc.i ], [ %.sroa.10.0.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ] ; 2 uses
  %i.ds = phi i64 [ %i.dp, %.noexc.i ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dt, ptr nonnull readonly align 1 %.val78.i, i64 %.val79.i, i1 false), !noalias !4200
  br label %bb.y

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %.lr.ph, %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #62
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs5PEMdK7bMAG_12typst_syntax.exit.i
  unreachable

bb.w:                                             ; preds = %.invoke.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i78 = load i64, ptr %i.c, align 8, !noalias !4195 ; 2 uses
  %i.dv = icmp eq i64 %.val.i78, 0
  br i1 %i.dv, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val76.i = load ptr, ptr %i.dm, align 8, !noalias !4195, !nonnull !19, !noundef !19
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val76.i, i64 noundef %.val.i78, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !4195
  br label %.body

bb.y:                                             ; preds = %bb.v, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.dw = phi ptr [ %i.dr, %bb.v ], [ %.sroa.10.0.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ]
  %i.dx = phi i64 [ %i.ds, %bb.v ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ]
  %i.dy = add i64 %i.dx, %.val79.i                ; 3 uses
  %i.dz = icmp sgt i64 %i.dy, -1
  call void @llvm.assume(i1 %i.dz)
  %i.ea = sub nsw i64 %.sroa.01.0.i.i.lcssa, %i.dy ; 2 uses
  %i.eb = icmp eq i64 %i.cu, 1
  br i1 %i.eb, label %_RINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehReECs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5PEMdK7bMAG_12typst_syntax.exit92.i, %.lr.ph.preheader.i
  %.sroa.012.114.i = phi ptr [ %i.ed, %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5PEMdK7bMAG_12typst_syntax.exit92.i ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.035.213.i = phi ptr [ %i.eh, %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5PEMdK7bMAG_12typst_syntax.exit92.i ], [ %i.ec, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.26.212.i = phi i64 [ %i.ei, %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5PEMdK7bMAG_12typst_syntax.exit92.i ], [ %i.ea, %.lr.ph.preheader.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.012.114.i, i64 16 ; 2 uses
  %.sroa.012.1.val.i = load ptr, ptr %.sroa.012.114.i, align 8, !alias.scope !4192, !nonnull !19, !noundef !19
  %i.ee = getelementptr i8, ptr %.sroa.012.114.i, i64 8
  %.sroa.012.1.val77.i = load i64, ptr %i.ee, align 8, !alias.scope !4192, !noundef !19 ; 4 uses
  %.not.i.i77 = icmp eq i64 %.sroa.26.212.i, 0
  br i1 %.not.i.i77, label %.invoke.i, label %bb.z, !prof !23

bb.z:                                             ; preds = %.lr.ph.i
  %i.ef = add nsw i64 %.sroa.26.212.i, -1         ; 2 uses
  store i8 47, ptr %.sroa.035.213.i, align 1, !alias.scope !4201, !noalias !4195
  %.not.i84.i = icmp ugt i64 %.sroa.012.1.val77.i, %i.ef
  br i1 %.not.i84.i, label %.invoke.i, label %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5PEMdK7bMAG_12typst_syntax.exit92.i, !prof !23

.invoke.i:                                        ; preds = %bb.z, %.lr.ph.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @86, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #62
          to label %.cont.i unwind label %bb.w, !noalias !4195

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5PEMdK7bMAG_12typst_syntax.exit92.i: ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.035.213.i, i64 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.012.1.val77.i
  %i.ei = sub nuw nsw i64 %i.ef, %.sroa.012.1.val77.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull readonly align 1 %.sroa.012.1.val.i, i64 range(i64 0, -9223372036854775808) %.sroa.012.1.val77.i, i1 false), !alias.scope !4202, !noalias !4195
  %i.ej = icmp eq ptr %i.ed, %i.cv
  br i1 %i.ej, label %_RINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehReECs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.i

bb.aa:                                            ; preds = %bb.p, %bb.q
  %i.ek = load ptr, ptr %i.j, align 8, !alias.scope !4191, !nonnull !19, !noundef !19
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.cq ; 2 uses
  store ptr %.sroa.0.1.i, ptr %i.el, align 8, !noalias !4203, !captures !34
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %.sroa.4.1.i, ptr %i.em, align 8
  %i.en = add i64 %i.cq, 1
  store i64 %i.en, ptr %i.k, align 8, !alias.scope !4191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  invoke fastcc void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB12_INtNtNtB1a_3str4iter5SplitcENvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB2s_7Segment13new_uncheckedENvB2o_3getEEB2u_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.ac:                                            ; preds = %select.unfold
  %.sroa.4.1.i59 = sub nuw i64 %.pn212, %.lcssa154192
  %i.eo = load i64, ptr %i.k, align 8, !noundef !19 ; 5 uses
  %i.ep = icmp ult i64 %i.eo, 576460752303423488
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp eq i64 %i.eo, 0
  %i.er = icmp eq i64 %.sroa.4.1.i, %.sroa.4.1.i59
  %or.cond = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond, label %bb.ak, label %bb.af

bb.ad:                                            ; preds = %select.unfold
  %i.es = load i64, ptr %i.k, align 8, !alias.scope !4204, !noundef !19 ; 3 uses
  %i.et = load i64, ptr %i.g, align 8, !range !33, !alias.scope !4204, !noundef !19
  %i.eu = icmp eq i64 %i.es, %i.et
  br i1 %i.eu, label %bb.ae, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCs5PEMdK7bMAG_12typst_syntax.exit82

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #57
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCs5PEMdK7bMAG_12typst_syntax.exit82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCs5PEMdK7bMAG_12typst_syntax.exit82: ; preds = %bb.ae, %bb.ad
  %i.ev = load ptr, ptr %i.j, align 8, !alias.scope !4204, !nonnull !19, !noundef !19
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.es ; 2 uses
  store ptr @44, ptr %i.ew, align 8, !noalias !4205, !captures !34
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 2, ptr %i.ex, align 8
  %i.ey = add i64 %i.es, 1
  store i64 %i.ey, ptr %i.k, align 8, !alias.scope !4204
  br label %.backedge

.backedge:                                        ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCs5PEMdK7bMAG_12typst_syntax.exit82, %bb.ak
  br label %bb.b

bb.af:                                            ; preds = %bb.ak, %bb.ac
  store i64 %.lcssa173198, ptr %i.o, align 8
  store i64 %.lcssa180203, ptr %i.ae, align 8
  store i64 %.lcssa150185, ptr %i.i, align 8
  store i64 %.lcssa154191, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4206)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 65
  %.promoted.i = load i8, ptr %i.ez, align 1, !alias.scope !4207
  %.promoted14.i = load i64, ptr %i.d, align 8, !alias.scope !4206 ; 3 uses
  %i.fa = trunc nuw i8 %.promoted.i to i1
  br i1 %i.fa, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCINvNtNtBQ_8adapters3map8map_foldReNtNtCs5PEMdK7bMAG_12typst_syntax4path7SegmentjNvMs6_B27_B25_13new_uncheckedNCNvYINtB1A_3MapB3_B2P_EBK_5count0E0EB29_.exit, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %bb.af
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i.i.i = load ptr, ptr %i.fb, align 8, !alias.scope !4207, !nonnull !19, !noundef !19 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val1.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !4207, !noundef !19 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !4208, !noundef !19 ; 6 uses
  %.not.i.i.i.i = icmp ugt i64 %i.fe, %.val1.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.fh = load i8, ptr %i.fg, align 8, !alias.scope !4206 ; 2 uses
  %i.fi = zext nneg i8 %i.fh to i64               ; 4 uses
  %i.fj = icmp ult i8 %i.fh, 5
  %i.fk = getelementptr i8, ptr %i.ff, i64 %i.fi
  %i.fl = getelementptr i8, ptr %i.fk, i64 -1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.fn = load i8, ptr %i.fm, align 8, !range !20, !alias.scope !4206
  %i.fo = trunc nuw i8 %i.fn to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !4206 ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i83
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.promoted20.i = load i64, ptr %i.fp, align 8, !alias.scope !4208 ; 2 uses
  %i.fq = icmp ult i64 %i.fe, %.promoted20.i
  br i1 %i.fq, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.lr.ph

.lr.ph.split.preheader.i.i.i.i.lr.ph:             ; preds = %.lr.ph.split.preheader.i
  call void @llvm.assume(i1 %i.fj)
  %.pre.i.i.i.i = load i8, ptr %i.fl, align 1, !alias.scope !4208 ; 2 uses
  br label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i83
  %.not.i3.i.i.us.i = icmp ne i64 %.pre2.i.i.i.i, %.promoted14.i
  %or.cond.not.i.i.i.us.i = select i1 %i.fo, i1 true, i1 %.not.i3.i.i.us.i
  br i1 %or.cond.not.i.i.i.us.i, label %.lr.ph.split.us.i.a, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCINvNtNtBQ_8adapters3map8map_foldReNtNtCs5PEMdK7bMAG_12typst_syntax4path7SegmentjNvMs6_B27_B25_13new_uncheckedNCNvYINtB1A_3MapB3_B2P_EBK_5count0E0EB29_.exit

.lr.ph.split.us.i.a:                              ; preds = %.lr.ph.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4209)
  call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  call void @llvm.experimental.noalias.scope.decl(metadata !4211)
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCINvNtNtBQ_8adapters3map8map_foldReNtNtCs5PEMdK7bMAG_12typst_syntax4path7SegmentjNvMs6_B27_B25_13new_uncheckedNCNvYINtB1A_3MapB3_B2P_EBK_5count0E0EB29_.exit

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %.lr.ph.split.preheader.i.i.i.i.lr.ph, %select.unfold.i
  %.lcssa1617.i210 = phi i64 [ %.promoted14.i, %.lr.ph.split.preheader.i.i.i.i.lr.ph ], [ %i.gg, %select.unfold.i ] ; 4 uses
  %.sroa.0.018.i209 = phi i64 [ 0, %.lr.ph.split.preheader.i.i.i.i.lr.ph ], [ %i.gm, %select.unfold.i ] ; 5 uses
  %i.fr = phi i64 [ %.promoted20.i, %.lr.ph.split.preheader.i.i.i.i.lr.ph ], [ %i.gg, %select.unfold.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4209)
  call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  call void @llvm.experimental.noalias.scope.decl(metadata !4211)
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.ai, %.lr.ph.split.preheader.i.i.i.i
  %i.fs = phi i64 [ %i.gg, %bb.ai ], [ %i.fr, %.lr.ph.split.preheader.i.i.i.i ] ; 4 uses
  %i.ft = sub nuw i64 %i.fe, %i.fs                ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fs ; 2 uses
  %i.fv = icmp samesign ult i64 %i.ft, 16
  br i1 %i.fv, label %.preheader.i.i.i.i.i, label %bb.ag

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.fe, %i.fs
  br i1 %.not.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ag:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.fw = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fu, i64 noundef range(i64 0, -9223372036854775808) %i.ft)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc85:                                         ; preds = %bb.ag
  %i.fx = extractvalue { i64, i64 } %i.fw, 0
  %i.fy = extractvalue { i64, i64 } %i.fw, 1
  %i.fz = trunc nuw i64 %i.fx to i1
  br i1 %i.fz, label %.loopexit.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.ah
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.gd, %bb.ah ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.sroa.04.011.i.i.i.i.i
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !4212, !noalias !4213, !noundef !19
  %i.gc = icmp eq i8 %i.gb, %.pre.i.i.i.i
  br i1 %i.gc, label %.loopexit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gd = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gd, %i.ft
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %.noexc85
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.fy, %.noexc85 ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ge = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.ft
  call void @llvm.assume(i1 %i.ge)
  %i.gf = add i64 %i.fs, 1
  %i.gg = add i64 %i.gf, %.sroa.5.0.i.i.i.i.i     ; 9 uses
  %.not11.i.i.i.i = icmp ult i64 %i.gg, %i.fi
  %.not12.i.i.i.i = icmp ugt i64 %i.gg, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not11.i.i.i.i, %.not12.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.aj, %.loopexit.i.i.i.i
  %i.gh = icmp ult i64 %i.fe, %i.gg
  br i1 %i.gh, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %.lr.ph.split.i.i.i.i

bb.aj:                                            ; preds = %.loopexit.i.i.i.i
  %i.gi = sub nuw i64 %i.gg, %i.fi
  %i.gj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gi
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.gj, ptr nonnull readonly %i.ff, i64 %i.fi), !noalias !4214
  %i.gk = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.gk, label %select.unfold.i, label %bb.ai

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %select.unfold.i, %bb.ai, %.noexc85, %.preheader.i.i.i.i.i, %bb.ah, %.lr.ph.split.preheader.i
  %.sroa.0.018.i147 = phi i64 [ %.sroa.0.018.i209, %bb.ai ], [ %.sroa.0.018.i209, %bb.ah ], [ 0, %.lr.ph.split.preheader.i ], [ %.sroa.0.018.i209, %.preheader.i.i.i.i.i ], [ %.sroa.0.018.i209, %.noexc85 ], [ %i.gm, %select.unfold.i ]
  %.lcssa1617.i143 = phi i64 [ %.lcssa1617.i210, %bb.ai ], [ %.lcssa1617.i210, %bb.ah ], [ %.promoted14.i, %.lr.ph.split.preheader.i ], [ %.lcssa1617.i210, %.preheader.i.i.i.i.i ], [ %.lcssa1617.i210, %.noexc85 ], [ %i.gg, %select.unfold.i ]
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.lcssa1617.i143
  %or.cond.not.i.i.i.i = select i1 %i.fo, i1 true, i1 %.not.i3.i.i.i
  %i.gl = zext i1 %or.cond.not.i.i.i.i to i64
  %spec.select.i = add i64 %.sroa.0.018.i147, 1
  %spec.select.i.a = add i64 %spec.select.i, %i.gl
  %.pre = load i64, ptr %i.k, align 8, !alias.scope !4215
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCINvNtNtBQ_8adapters3map8map_foldReNtNtCs5PEMdK7bMAG_12typst_syntax4path7SegmentjNvMs6_B27_B25_13new_uncheckedNCNvYINtB1A_3MapB3_B2P_EBK_5count0E0EB29_.exit

select.unfold.i:                                  ; preds = %bb.aj
  %i.gm = add i64 %.sroa.0.018.i209, 1            ; 2 uses
  %i.gn = icmp ult i64 %i.fe, %i.gg
  br i1 %i.gn, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

bb.ak:                                            ; preds = %bb.ac
  %bcmp = call i32 @bcmp(ptr nonnull %.sroa.0.1.i, ptr nonnull %.sroa.0.1.i60, i64 %.sroa.4.1.i)
  %i.go = icmp eq i32 %bcmp, 0
  br i1 %i.go, label %.backedge, label %bb.af

_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCINvNtNtBQ_8adapters3map8map_foldReNtNtCs5PEMdK7bMAG_12typst_syntax4path7SegmentjNvMs6_B27_B25_13new_uncheckedNCNvYINtB1A_3MapB3_B2P_EBK_5count0E0EB29_.exit: ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %.lr.ph.split.us.i.a, %.lr.ph.split.us.i, %bb.af
  %3 = phi i64 [ %i.eo, %bb.af ], [ %i.eo, %.lr.ph.split.us.i ], [ %i.eo, %.lr.ph.split.us.i.a ], [ %.pre, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ] ; 4 uses
  %.sroa.0.0.lcssa.i = phi i64 [ 1, %bb.af ], [ 1, %.lr.ph.split.us.i ], [ 2, %.lr.ph.split.us.i.a ], [ %spec.select.i.a, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !4216)
  %i.gp = load i64, ptr %i.g, align 8, !range !33, !alias.scope !4215, !noundef !19 ; 2 uses
  %i.gq = sub i64 %i.gp, %3
  %i.gr = icmp ugt i64 %.sroa.0.0.lcssa.i, %i.gq
  br i1 %i.gr, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.thread.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i, !prof !23

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.thread.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCINvNtNtBQ_8adapters3map8map_foldReNtNtCs5PEMdK7bMAG_12typst_syntax4path7SegmentjNvMs6_B27_B25_13new_uncheckedNCNvYINtB1A_3MapB3_B2P_EBK_5count0E0EB29_.exit
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %3, i64 noundef %.sroa.0.0.lcssa.i, i64 noundef 8, i64 noundef 16)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.thread.i
  %i.gs = load i64, ptr %i.k, align 8, !alias.scope !4216, !noundef !19
  br label %.lr.ph.i.i.i87

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCINvNtNtBQ_8adapters3map8map_foldReNtNtCs5PEMdK7bMAG_12typst_syntax4path7SegmentjNvMs6_B27_B25_13new_uncheckedNCNvYINtB1A_3MapB3_B2P_EBK_5count0E0EB29_.exit
  %.not38 = icmp eq i64 %.sroa.0.0.lcssa.i, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i, %.noexc90
  %i.gt = phi i64 [ %i.gs, %.noexc90 ], [ %3, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i ] ; 2 uses
  %i.gu = load ptr, ptr %i.j, align 8, !alias.scope !4216, !nonnull !19, !noundef !19 ; 5 uses
  %4 = add i64 %.sroa.0.0.lcssa.i, -1
  %xtraiter = and i64 %.sroa.0.0.lcssa.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.prol

.lr.ph.split.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i87, %.lr.ph.split.i.i.i.prol
  %i.gv = phi i64 [ %i.ha, %.lr.ph.split.i.i.i.prol ], [ %i.gt, %.lr.ph.i.i.i87 ] ; 2 uses
  %i.gw = phi i64 [ %i.gx, %.lr.ph.split.i.i.i.prol ], [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i87 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.prol ], [ 0, %.lr.ph.i.i.i87 ]
  %i.gx = add i64 %i.gw, -1                       ; 2 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.gv ; 2 uses
  store ptr @44, ptr %i.gy, align 8, !noalias !4217, !captures !34
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 2, ptr %i.gz, align 8, !noalias !4218
  %i.ha = add i64 %i.gv, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.prol, !llvm.loop !4165

.lr.ph.split.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.split.i.i.i.prol, %.lr.ph.i.i.i87
  %.lcssa402.unr = phi i64 [ poison, %.lr.ph.i.i.i87 ], [ %i.ha, %.lr.ph.split.i.i.i.prol ]
  %.unr = phi i64 [ %i.gt, %.lr.ph.i.i.i87 ], [ %i.ha, %.lr.ph.split.i.i.i.prol ]
  %.unr448 = phi i64 [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i87 ], [ %i.gx, %.lr.ph.split.i.i.i.prol ]
  %i.hb = icmp ult i64 %4, 3
  br i1 %i.hb, label %.loopexit.loopexit, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i
  %i.hc = phi i64 [ %i.hq, %.lr.ph.split.i.i.i ], [ %.unr, %.lr.ph.split.i.i.i.prol.loopexit ] ; 5 uses
  %i.hd = phi i64 [ %i.hm, %.lr.ph.split.i.i.i ], [ %.unr448, %.lr.ph.split.i.i.i.prol.loopexit ]
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.hc ; 2 uses
  store ptr @44, ptr %i.he, align 8, !noalias !4217, !captures !34
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 2, ptr %i.hf, align 8, !noalias !4218
  %i.hg = getelementptr [16 x i8], ptr %i.gu, i64 %i.hc ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 16
  store ptr @44, ptr %i.hh, align 8, !noalias !4217, !captures !34
  %i.hi = getelementptr i8, ptr %i.hg, i64 24
  store i64 2, ptr %i.hi, align 8, !noalias !4218
  %i.hj = getelementptr [16 x i8], ptr %i.gu, i64 %i.hc ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 32
  store ptr @44, ptr %i.hk, align 8, !noalias !4217, !captures !34
  %i.hl = getelementptr i8, ptr %i.hj, i64 40
  store i64 2, ptr %i.hl, align 8, !noalias !4218
  %i.hm = add i64 %i.hd, -4                       ; 2 uses
  %i.hn = getelementptr [16 x i8], ptr %i.gu, i64 %i.hc ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 48
  store ptr @44, ptr %i.ho, align 8, !noalias !4217, !captures !34
  %i.hp = getelementptr i8, ptr %i.hn, i64 56
  store i64 2, ptr %i.hp, align 8, !noalias !4218
  %i.hq = add i64 %i.hc, 4                        ; 2 uses
  %.not.i.i.i.i89.3 = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i.i.i89.3, label %.loopexit.loopexit, label %.lr.ph.split.i.i.i

.loopexit.loopexit:                               ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.i.i.i.prol.loopexit
  %.lcssa402 = phi i64 [ %.lcssa402.unr, %.lr.ph.split.i.i.i.prol.loopexit ], [ %i.hq, %.lr.ph.split.i.i.i ]
  %.pre275 = load i64, ptr %i.g, align 8, !range !33, !alias.scope !4220
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.hr = phi i64 [ %i.gp, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %.pre275, %.loopexit.loopexit ]
  %.val8.i.i.i = phi i64 [ %3, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %.lcssa402, %.loopexit.loopexit ] ; 4 uses
  store i64 %.val8.i.i.i, ptr %i.k, align 8, !alias.scope !4216, !noalias !4221
  %i.hs = icmp eq i64 %.val8.i.i.i, %i.hr
  br i1 %i.hs, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.loopexit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #57
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %.loopexit, %bb.al
  %i.ht = load ptr, ptr %i.j, align 8, !alias.scope !4220, !nonnull !19, !noundef !19
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.val8.i.i.i ; 2 uses
  store ptr %.sroa.0.1.i, ptr %i.hu, align 8, !noalias !4222, !captures !34
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i64 %.sroa.4.1.i, ptr %i.hv, align 8
  %i.hw = add i64 %.val8.i.i.i, 1
  store i64 %i.hw, ptr %i.k, align 8, !alias.scope !4220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  invoke fastcc void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB12_INtNtNtB1a_3str4iter5SplitcENvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB2s_7Segment13new_uncheckedENvB2o_3getEEB2u_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.e)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

_RINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehReECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5PEMdK7bMAG_12typst_syntax.exit92.i, %bb.y
  %.sroa.26.2.lcssa.i = phi i64 [ %i.ea, %bb.y ], [ %i.ei, %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5PEMdK7bMAG_12typst_syntax.exit92.i ] ; 2 uses
  %i.hx = sub i64 %.sroa.01.0.i.i.lcssa, %.sroa.26.2.lcssa.i ; 6 uses
  %.sroa.0101.0.copyload = load i64, ptr %i.c, align 8, !noalias !4192 ; 4 uses
  %.sroa.5102.0.copyload = load ptr, ptr %i.dm, align 8, !noalias !4192 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4195
  call void @llvm.experimental.noalias.scope.decl(metadata !4193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.hy = icmp samesign ugt i64 %i.hx, 15
  br i1 %i.hy, label %.lr.ph.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehReECs5PEMdK7bMAG_12typst_syntax.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !4223
  %.not.i.i.i93 = icmp eq i64 %.sroa.01.0.i.i.lcssa, %.sroa.26.2.lcssa.i
  br i1 %.not.i.i.i93, label %bb.as, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.5102.0.copyload, i64 range(i64 0, -9223372036854775808) %i.hx, i1 false), !noalias !4224
  %.0..0..0..0..0..sroa.0.0.copyload5.pre.i = load ptr, ptr %i.b, align 8, !noalias !4225
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8..8..8..8..8..sroa.5.0.copyload7.pre.i = load i56, ptr %.8..8..8..8..8..sroa_idx, align 8, !noalias !4225
  %i.hz = zext i56 %.8..8..8..8..8..sroa.5.0.copyload7.pre.i to i64
  %i.ia = shl nuw nsw i64 %i.hx, 56
  %i.ib = or disjoint i64 %i.ia, %i.hz
  %i.ic = or disjoint i64 %i.ib, -9223372036854775808
  br label %bb.as

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs1xwejQucwHj_5alloc3str17join_generic_copyehReECs5PEMdK7bMAG_12typst_syntax.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4226
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8, !noalias !4226
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 0, ptr %i.id, align 8, !noalias !4226
  call void @llvm.experimental.noalias.scope.decl(metadata !4227)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.hx)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i unwind label %bb.ap, !noalias !4226

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i95 = load ptr, ptr %i.a, align 8, !noalias !4226, !nonnull !19, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i.i95) #59
          to label %.body.i unwind label %bb.aq, !noalias !4226

bb.aq:                                            ; preds = %bb.ap
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !4226
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ig = load ptr, ptr %i.a, align 8, !alias.scope !4227, !noalias !4226, !nonnull !19, !noundef !19 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.id, align 8, !alias.scope !4227, !noalias !4226 ; 2 uses
  %scevgep.i.i.i.i = getelementptr nuw i8, ptr %i.ig, i64 %.promoted.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i.i, ptr nonnull readonly align 1 %.sroa.5102.0.copyload, i64 range(i64 0, -9223372036854775808) %i.hx, i1 false), !noalias !4228
  %i.ih = add i64 %.promoted.i.i.i.i, %i.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4226
  br label %bb.as

.body.i:                                          ; preds = %bb.ap
  %i.ii = icmp eq i64 %.sroa.0101.0.copyload, 0
  br i1 %i.ii, label %.body, label %bb.ar

bb.ar:                                            ; preds = %.body.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5102.0.copyload, i64 noundef %.sroa.0101.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !4229
  br label %.body

bb.as:                                            ; preds = %bb.ao, %.lr.ph.preheader.i.i.i, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %.sroa.5.0.i = phi i64 [ %i.ih, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i ], [ %i.ic, %.lr.ph.preheader.i.i.i ], [ -9223372036854775808, %bb.ao ]
  %.sroa.0.0.i = phi ptr [ %i.ig, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i ], [ %.0..0..0..0..0..sroa.0.0.copyload5.pre.i, %.lr.ph.preheader.i.i.i ], [ null, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0.i, ptr %0, align 8, !alias.scope !4193
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4193
  %i.ij = icmp eq i64 %.sroa.0101.0.copyload, 0
  br i1 %i.ij, label %_RNvXsn_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs1xwejQucwHj_5alloc6string6StringE4from.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5102.0.copyload, i64 noundef %.sroa.0101.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !4229
  br label %_RNvXsn_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs1xwejQucwHj_5alloc6string6StringE4from.exit

_RNvXsn_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs1xwejQucwHj_5alloc6string6StringE4from.exit: ; preds = %.thread, %bb.at, %bb.as
  %.val = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ik = icmp eq i64 %.val, 0
  br i1 %i.ik, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5PEMdK7bMAG_12typst_syntax.exit98, label %bb.au

bb.au:                                            ; preds = %_RNvXsn_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs1xwejQucwHj_5alloc6string6StringE4from.exit
  %.val39 = load ptr, ptr %i.j, align 8, !nonnull !19, !noundef !19
  %i.il = shl nuw i64 %.val, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val39, i64 noundef %i.il, i64 noundef range(i64 1, -9223372036854775807) 8) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5PEMdK7bMAG_12typst_syntax.exit98

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5PEMdK7bMAG_12typst_syntax.exit98: ; preds = %_RNvXsn_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs1xwejQucwHj_5alloc6string6StringE4from.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath14get_with_slash(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !4234, !noundef !19 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.b, -1                ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4234, !nonnull !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4234
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.g, i64 %i.d
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.e, ptr %0
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0.i.i, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath14with_extension(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %3, ptr %i.k, align 8
  %i.l = tail call { ptr, i64 } @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath9file_stem(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %.not = icmp eq ptr %i.m, null
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath6parent:bb.a
  store ptr %.val24, ptr %i.b, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val23, ptr %.sroa.412.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.j = lshr i64 %.val23, 56                     ; 2 uses
  %i.k = trunc nuw i64 %i.j to i8
  %.not.i = icmp sgt i64 %.val23, -1              ; 3 uses
  %i.l = and i64 %i.j, 127
  %.sroa.03.0.i = select i1 %.not.i, i64 %.val23, i64 %i.l ; 3 uses
  %.not30 = icmp eq i64 %.sroa.03.0.i, 1
  br i1 %.not30, label %_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3pop.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit
  %.sroa.0.0.i.i = select i1 %.not.i, ptr %.val24, ptr %i.b ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.h
  %.not.i.i.i = icmp ugt i64 %i.q, %.sroa.03.0.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi i64 [ %.sroa.03.0.i, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.n = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %i.m)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.q = extractvalue { i64, i64 } %i.n, 1        ; 5 uses
  %i.r = icmp ult i64 %i.q, %i.m
  call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.q
  %lhsc.i.i = load i8, ptr %i.s, align 1, !alias.scope !4356
  %i.t = icmp eq i8 %lhsc.i.i, 47
  br i1 %i.t, label %bb.i, label %bb.f

bb.i:                                             ; preds = %bb.h
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.q, i64 1)
  invoke fastcc void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8truncate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %..i.i) #63
          to label %_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3pop.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.noexc, %bb.f
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #62
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.j
  unreachable

.loopexit.split-lp.loopexit:                      ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.j, %bb.i
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  %.val26.pre = load ptr, ptr %i.b, align 8, !alias.scope !40
  %.val27.pre = load i8, ptr %i.i, align 1, !alias.scope !40
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %.val27 = phi i8 [ %i.k, %.loopexit.split-lp.loopexit ], [ %.val27.pre, %.loopexit.split-lp.loopexit.split-lp ]
  %.val26 = phi ptr [ %.val24, %.loopexit.split-lp.loopexit ], [ %.val26.pre, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path8SegmentsEBF_(ptr %.val26, i8 %.val27) #59
          to label %bb.n unwind label %bb.m

_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3pop.exit.thread: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit
  store i64 0, ptr %0, align 8
  br i1 %.not.i, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path8SegmentsEBF_.exit

bb.k:                                             ; preds = %_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3pop.exit.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val24, inttoptr (i64 16 to ptr)
  %i.u = getelementptr inbounds i8, ptr %.val24, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path8SegmentsEBF_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i: ; preds = %bb.k
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !4357
  %.not.i.i.i.i.i = icmp eq i64 %i.v, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path8SegmentsEBF_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4357
  %i.w = getelementptr i8, ptr %.val24, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !4357, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, label %bb.l, !prof !22

bb.l:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !4357
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i
  %i.x = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.u, ptr %i.y, align 8, !noalias !4357
  store i64 8, ptr %i.a, align 8, !noalias !4357
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.z, align 8, !noalias !4357
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !4357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4357
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path8SegmentsEBF_.exit

_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3pop.exit: ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path8SegmentsEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path8SegmentsEBF_.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, %bb.k, %_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3pop.exit.thread, %_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3pop.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.m:                                             ; preds = %.loopexit.split-lp
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.n:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath7realize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [15 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 9 uses
  %i.g = alloca [56 x i8], align 8                ; 13 uses
  %i.h = alloca [64 x i8], align 8                ; 11 uses
  %i.i = alloca [72 x i8], align 8                ; 16 uses
  %i.j = alloca [72 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  invoke fastcc void @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments4iter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n, %.body.i.i, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %.body.i.i ], [ %i.bp, %bb.n ], [ %i.ca, %bb.z ], [ %lpad.loopexit.split-lp185, %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val20 = load i64, ptr %i.k, align 8           ; 2 uses
  %i.l = icmp eq i64 %.val20, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.b

bb.b:                                             ; preds = %.body
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val21 = load ptr, ptr %i.m, align 8, !nonnull !19, !noundef !19
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %.val20, i64 noundef range(i64 1, -9223372036854775807) 1) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5PEMdK7bMAG_12typst_syntax.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 65 ; 4 uses
  %.promoted65 = load i8, ptr %i.n, align 1, !alias.scope !4387 ; 2 uses
  %.promoted66 = load i64, ptr %i.i, align 8      ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i = load ptr, ptr %i.o, align 8, !nonnull !19 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val1.i = load i64, ptr %i.p, align 8          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8              ; 8 uses
  %.not.i.i = icmp ugt i64 %i.s, %.val1.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.v = load i8, ptr %i.u, align 8               ; 2 uses
  %i.w = zext nneg i8 %i.v to i64                 ; 4 uses
  %i.x = icmp ult i8 %i.v, 5
  %i.y = getelementptr i8, ptr %i.t, i64 %i.w
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ab = load i8, ptr %i.aa, align 8, !range !20
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre2.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.promoted72 = load i64, ptr %i.q, align 8      ; 2 uses
  %.not.i.i.fr = freeze i1 %.not.i.i
  br i1 %.not.i.i.fr, label %.split.us, label %_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECs5PEMdK7bMAG_12typst_syntax.exit

.split.us:                                        ; preds = %bb.c
  %i.af = trunc nuw i8 %.promoted65 to i1
  br i1 %i.af, label %.split80, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.us.lr.ph

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.us.lr.ph: ; preds = %.split.us
  %.not.i3.i.us = icmp ne i64 %.pre2.i.i, %.promoted66
  %or.cond.not.i.i.us = select i1 %i.ac, i1 true, i1 %.not.i3.i.us
  %i.ag = sub nuw i64 %.pre2.i.i, %.promoted66    ; 3 uses
  %.sroa.0.1.i.us = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted66 ; 3 uses
  br i1 %or.cond.not.i.i.us, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.us.us, label %.split80

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.us.us: ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.us.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4388)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4389
  invoke void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us, i64 noundef %i.ag)
          to label %.noexc25.us.us unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25.us.us:                                   ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.us.us
  invoke void @_RNvXsi_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %.noexc26.us.us unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26.us.us:                                   ; preds = %.noexc25.us.us
  invoke void @_RNvXsi_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %.noexc27.us.us unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27.us.us:                                   ; preds = %.noexc26.us.us
  %i.ah = load i8, ptr %i.g, align 8, !range !50, !noalias !4389, !noundef !19 ; 3 uses
  %.not.i.us.us = icmp eq i8 %i.ah, -1
  br i1 %.not.i.us.us, label %.loopexit46.split.us, label %bb.d

bb.d:                                             ; preds = %.noexc27.us.us
  %i.ai = load i8, ptr %i.f, align 8, !range !50, !noalias !4389, !noundef !19
  %.not1.i.us.us = icmp eq i8 %i.ai, -1
  %i.aj = icmp eq i8 %i.ah, 9                     ; 2 uses
  %or.cond.i.us.us = and i1 %i.aj, %.not1.i.us.us
  br i1 %or.cond.i.us.us, label %bb.e, label %.split90.us

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.ad, align 8, !noalias !4389, !nonnull !19, !noundef !19
  %i.al = load i64, ptr %i.ae, align 8, !noalias !4389, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al)
          to label %.split80 unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %select.unfold, %.noexc25, %.noexc26, %bb.ae, %bb.a, %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i, %bb.e, %.noexc26.us.us, %.noexc25.us.us, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.us.us
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit46.split.us:                             ; preds = %.noexc27.us.us
  store i8 1, ptr %i.n, align 1
  br label %.loopexit46

.split90.us:                                      ; preds = %bb.d
  store i8 1, ptr %i.n, align 1
  br i1 %i.aj, label %bb.l, label %bb.q

_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.c, %bb.ae
  %.lcssa6475 = phi i64 [ %.lcssa6473, %bb.ae ], [ %.promoted72, %bb.c ] ; 3 uses
  %.lcssa4868 = phi i64 [ %.lcssa4867, %bb.ae ], [ %.promoted66, %bb.c ] ; 4 uses
  %i.am = phi i8 [ %i.bi, %bb.ae ], [ %.promoted65, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4387)
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.split80, label %bb.f

bb.f:                                             ; preds = %_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECs5PEMdK7bMAG_12typst_syntax.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4388)
  %i.ao = icmp ult i64 %i.s, %.lcssa6475
  br i1 %i.ao, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %bb.f
  call void @llvm.assume(i1 %i.x)
  %.pre.i.i = load i8, ptr %i.z, align 1, !alias.scope !4390 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.i, %.lr.ph.split.preheader.i.i
  %i.ap = phi i64 [ %i.bd, %bb.i ], [ %.lcssa6475, %.lr.ph.split.preheader.i.i ] ; 4 uses
  %i.aq = sub nuw i64 %i.s, %i.ap                 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ap ; 2 uses
  %i.as = icmp samesign ult i64 %i.aq, 16
  br i1 %i.as, label %.preheader.i.i.i, label %bb.g

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.s, %i.ap
  br i1 %.not.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph.split.i.i
  %i.at = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef range(i64 0, -9223372036854775808) %i.aq)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.au = extractvalue { i64, i64 } %i.at, 0
  %i.av = extractvalue { i64, i64 } %i.at, 1
  %i.aw = trunc nuw i64 %i.au to i1
  br i1 %i.aw, label %.loopexit.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.h
  %.sroa.04.011.i.i.i = phi i64 [ %i.ba, %bb.h ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.04.011.i.i.i
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !4391, !noalias !4392, !noundef !19
  %i.az = icmp eq i8 %i.ay, %.pre.i.i
  br i1 %i.az, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ba, %i.aq
  br i1 %exitcond.not.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %.noexc
  %.sroa.5.0.i.i.i = phi i64 [ %i.av, %.noexc ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.bb = icmp ult i64 %.sroa.5.0.i.i.i, %i.aq
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add i64 %i.ap, 1
  %i.bd = add i64 %i.bc, %.sroa.5.0.i.i.i         ; 8 uses
  %.not11.i.i = icmp ult i64 %i.bd, %i.w
  %.not12.i.i = icmp ugt i64 %i.bd, %.val1.i
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %.loopexit.i.i
  %i.be = icmp ult i64 %i.s, %i.bd
  br i1 %i.be, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.split.i.i

bb.j:                                             ; preds = %.loopexit.i.i
  %i.bf = sub nuw i64 %i.bd, %i.w                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bf
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.bg, ptr nonnull %i.t, i64 %i.w), !noalias !4393
  %i.bh = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bh, label %select.unfold, label %bb.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.i, %.preheader.i.i.i, %.noexc, %bb.h, %bb.f
  %.lcssa6474 = phi i64 [ %i.s, %bb.h ], [ %.lcssa6475, %bb.f ], [ %i.s, %.noexc ], [ %i.s, %.preheader.i.i.i ], [ %i.bd, %bb.i ]
  store i8 1, ptr %i.n, align 1, !alias.scope !4394
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.lcssa4868
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i3.i
  br i1 %or.cond.not.i.i, label %select.unfold, label %.split80

select.unfold:                                    ; preds = %bb.j, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i
  %.lcssa6473 = phi i64 [ %.lcssa6474, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %i.bd, %bb.j ] ; 3 uses
  %.lcssa4867 = phi i64 [ %.lcssa4868, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %i.bd, %bb.j ] ; 3 uses
  %i.bi = phi i8 [ 1, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ 0, %bb.j ]
  %.pn = phi i64 [ %.pre2.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %i.bf, %bb.j ]
  %.sroa.4.1.i = sub nuw i64 %.pn, %.lcssa4868    ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.lcssa4868 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4389
  invoke void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %select.unfold
  invoke void @_RNvXsi_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %.noexc25
  invoke void @_RNvXsi_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %.noexc26
  %i.bj = load i8, ptr %i.g, align 8, !range !50, !noalias !4389, !noundef !19 ; 3 uses
  %.not.i = icmp eq i8 %i.bj, -1
  br i1 %.not.i, label %.loopexit46, label %bb.k

bb.k:                                             ; preds = %.noexc27
  %i.bk = load i8, ptr %i.f, align 8, !range !50, !noalias !4389, !noundef !19
  %.not1.i = icmp eq i8 %i.bk, -1
  %i.bl = icmp eq i8 %i.bj, 9                     ; 2 uses
  %or.cond.i = and i1 %i.bl, %.not1.i
  br i1 %or.cond.i, label %bb.ae, label %.split90

.loopexit46:                                      ; preds = %.noexc27, %.loopexit46.split.us
  %.us-phi85 = phi i64 [ %.promoted72, %.loopexit46.split.us ], [ %.lcssa6473, %.noexc27 ]
  %.us-phi86 = phi i64 [ %.promoted66, %.loopexit46.split.us ], [ %.lcssa4867, %.noexc27 ]
  %.us-phi87 = phi i64 [ %i.ag, %.loopexit46.split.us ], [ %.sroa.4.1.i, %.noexc27 ]
  %.us-phi88 = phi ptr [ %.sroa.0.1.i.us, %.loopexit46.split.us ], [ %.sroa.0.1.i, %.noexc27 ]
  store i64 %.us-phi85, ptr %i.q, align 8
  store i64 %.us-phi86, ptr %i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %.split90.us, %.loopexit46, %.split90
  %.sroa.4.1.i58 = phi i64 [ %.us-phi87, %.loopexit46 ], [ %.sroa.4.1.i, %.split90 ], [ %i.ag, %.split90.us ] ; 7 uses
  %.sroa.0.1.i55 = phi ptr [ %.us-phi88, %.loopexit46 ], [ %.sroa.0.1.i, %.split90 ], [ %.sroa.0.1.i.us, %.split90.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bm = icmp samesign ugt i64 %.sroa.4.1.i58, 15
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false), !noalias !4395
  %.not.i.i.i24 = icmp eq i64 %.sroa.4.1.i58, 0
  br i1 %.not.i.i.i24, label %bb.p, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull readonly align 1 %.sroa.0.1.i55, i64 range(i64 0, -9223372036854775808) %.sroa.4.1.i58, i1 false), !noalias !4396
  %.0..0..0..0..0..sroa.09.0.copyload10.pre.i = load ptr, ptr %i.d, align 8, !noalias !4397
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.8..8..8..8..8..sroa.511.0.copyload13.pre.i = load i56, ptr %.8..8..8..8..8..sroa_idx, align 8, !noalias !4397
  %i.bn = zext i56 %.8..8..8..8..8..sroa.511.0.copyload13.pre.i to i64
  br label %bb.p

.lr.ph.i.i.i.i:                                   ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4398
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8, !noalias !4398
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 0, ptr %i.bo, align 8, !noalias !4398
  call void @llvm.experimental.noalias.scope.decl(metadata !4399)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.1.i58)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i unwind label %bb.n, !noalias !4400

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !noalias !4398, !nonnull !19, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i.i) #59
          to label %.body unwind label %bb.o, !noalias !4400

bb.o:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !4400
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.br = load ptr, ptr %i.c, align 8, !alias.scope !4399, !noalias !4398, !nonnull !19, !noundef !19 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !4399, !noalias !4398 ; 2 uses
  %scevgep.i.i.i.i = getelementptr nuw i8, ptr %i.br, i64 %.promoted.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i.i, ptr nonnull readonly align 1 %.sroa.0.1.i55, i64 range(i64 0, -9223372036854775808) %.sroa.4.1.i58, i1 false), !noalias !4401
  %i.bs = add i64 %.promoted.i.i.i.i, %.sroa.4.1.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4398
  br label %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit.i

bb.p:                                             ; preds = %.lr.ph.preheader.i.i.i, %bb.m
  %.8..8..sroa.511.0.copyload13.i = phi i64 [ %i.bn, %.lr.ph.preheader.i.i.i ], [ 0, %bb.m ]
  %.0..0..sroa.09.0.copyload10.i = phi ptr [ %.0..0..0..0..0..sroa.09.0.copyload10.pre.i, %.lr.ph.preheader.i.i.i ], [ null, %bb.m ]
  %.sroa.511.15.insert.ext.i = shl nuw nsw i64 %.sroa.4.1.i58, 56
  %.sroa.511.15.insert.shift.i = or disjoint i64 %.8..8..sroa.511.0.copyload13.i, %.sroa.511.15.insert.ext.i
  %.sroa.511.15.insert.insert.i = or disjoint i64 %.sroa.511.15.insert.shift.i, -9223372036854775808
  br label %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit.i

_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit.i: ; preds = %bb.p, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %.sroa.511.0.i = phi i64 [ %i.bs, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i ], [ %.sroa.511.15.insert.insert.i, %bb.p ]
  %.sroa.09.0.i = phi ptr [ %i.br, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i ], [ %.0..0..sroa.09.0.copyload10.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

.split90:                                         ; preds = %bb.k
  store i64 %.lcssa6473, ptr %i.q, align 8
  store i64 %.lcssa4867, ptr %i.i, align 8
  br i1 %i.bl, label %bb.l, label %bb.q

bb.q:                                             ; preds = %.split90.us, %.split90
  %.us-phi96151 = phi i8 [ %i.ah, %.split90.us ], [ %i.bj, %.split90 ] ; 2 uses
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.64.0.copyload.i = load ptr, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !4389 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !4389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4389
  %i.bt = icmp samesign ugt i8 %.us-phi96151, 5
  %i.bu = zext nneg i8 %.us-phi96151 to i64
  %i.bv = add nsw i64 %i.bu, -5
  %i.bw = select i1 %i.bt, i64 %i.bv, i64 0       ; 2 uses
  switch i64 %i.bw, label %bb.r [
    i64 0, label %bb.s
    i64 1, label %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i
    i64 2, label %bb.t
    i64 3, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.64.0.copyload.i) ]
  br label %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i

bb.t:                                             ; preds = %bb.q
  br label %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i

bb.u:                                             ; preds = %bb.q
  br label %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i

_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %.sroa.6.0.i.i = phi i64 [ %.sroa.7.0.copyload.i, %bb.s ], [ %i.bw, %bb.q ], [ 1, %bb.t ], [ 2, %bb.u ]
  %.sroa.0.0.i.i22 = phi ptr [ %.sroa.64.0.copyload.i, %bb.s ], [ @326, %bb.q ], [ @43, %bb.t ], [ @44, %bb.u ]
  invoke void @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i22, i64 noundef %.sroa.6.0.i.i)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %_RNvMs4_NtCsaL1QbXo9JQH_3std4pathNtB5_9Component9as_os_str.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4402)
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.i2.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !4402, !noalias !4389, !nonnull !19, !noundef !19 ; 4 uses
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0.i.i23 = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !4402, !noalias !4389, !noundef !19 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bx = icmp samesign ugt i64 %.sroa.3.0.i.i23, 15
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !4403
  %.not.i.i.i.i = icmp eq i64 %.sroa.3.0.i.i23, 0
  br i1 %.not.i.i.i.i, label %bb.y, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.0.0.i2.i, i64 range(i64 0, -9223372036854775808) %.sroa.3.0.i.i23, i1 false), !noalias !4404
  %.0..0..0..0..0..0..0..sroa.0.0.copyload8.pre.i.i = load ptr, ptr %i.b, align 8, !noalias !4405
  %.8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8..8..8..8..8..8..8..sroa.5.0.copyload10.pre.i.i = load i56, ptr %.8..8..8..8..8..8..8..sroa_idx, align 8, !noalias !4405
  %i.by = zext i56 %.8..8..8..8..8..8..8..sroa.5.0.copyload10.pre.i.i to i64
  br label %bb.y

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4406
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8, !noalias !4406
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 0, ptr %i.bz, align 8, !noalias !4406
  call void @llvm.experimental.noalias.scope.decl(metadata !4407)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i23)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i unwind label %bb.w, !noalias !4408

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !noalias !4406, !nonnull !19, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i.i.i) #59
          to label %.body.i.i unwind label %bb.x, !noalias !4408

bb.x:                                             ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !4408
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cc = load ptr, ptr %i.a, align 8, !alias.scope !4407, !noalias !4406, !nonnull !19, !noundef !19 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !4407, !noalias !4406 ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr nuw i8, ptr %i.cc, i64 %.promoted.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.0.0.i2.i, i64 range(i64 0, -9223372036854775808) %.sroa.3.0.i.i23, i1 false), !noalias !4409
  %i.cd = add i64 %.promoted.i.i.i.i.i, %.sroa.3.0.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4406
  br label %bb.aa

bb.y:                                             ; preds = %.lr.ph.preheader.i.i.i.i, %bb.v
  %.8..8..sroa.5.0.copyload10.i.i = phi i64 [ %i.by, %.lr.ph.preheader.i.i.i.i ], [ 0, %bb.v ]
  %.0..0..sroa.0.0.copyload8.i.i = phi ptr [ %.0..0..0..0..0..0..0..sroa.0.0.copyload8.pre.i.i, %.lr.ph.preheader.i.i.i.i ], [ null, %bb.v ]
  %.sroa.5.15.insert.ext.i.i = shl nuw nsw i64 %.sroa.3.0.i.i23, 56
  %.sroa.5.15.insert.shift.i.i = or disjoint i64 %.8..8..sroa.5.0.copyload10.i.i, %.sroa.5.15.insert.ext.i.i
  %.sroa.5.15.insert.insert.i.i = or disjoint i64 %.sroa.5.15.insert.shift.i.i, -9223372036854775808
  br label %bb.aa

.body.i.i:                                        ; preds = %bb.w
  %.val3.i.i = load i64, ptr %i.e, align 8, !range !51, !alias.scope !4402, !noalias !4389, !noundef !19 ; 2 uses
  %i.ce = icmp sgt i64 %.val3.i.i, 0
  br i1 %i.ce, label %bb.z, label %.body

bb.z:                                             ; preds = %.body.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i2.i, i64 noundef %.val3.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !4410
  br label %.body

bb.aa:                                            ; preds = %bb.y, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %.sroa.5.0.i.i = phi i64 [ %i.cd, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.sroa.5.15.insert.insert.i.i, %bb.y ]
  %.sroa.0.011.i.i = phi ptr [ %i.cc, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.0..0..sroa.0.0.copyload8.i.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val.i.i = load i64, ptr %i.e, align 8, !range !51, !alias.scope !4402, !noalias !4389, !noundef !19 ; 2 uses
  %i.cf = icmp sgt i64 %.val.i.i, 0
  br i1 %i.cf, label %bb.ab, label %_RNvXsq_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CoweEE4from.exit.i

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i2.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !4410
  br label %_RNvXsq_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CoweEE4from.exit.i

_RNvXsq_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CoweEE4from.exit.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4389
  br label %bb.ac

.split80:                                         ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, %_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECs5PEMdK7bMAG_12typst_syntax.exit, %.split.us, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i.us.lr.ph, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5PEMdK7bMAG_12typst_syntax.exit29

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5PEMdK7bMAG_12typst_syntax.exit29: ; preds = %bb.ad, %bb.ac, %.split80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ac:                                            ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CoweEE4from.exit.i, %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit.i
  %.sroa.0.011.i.sink.i.ph = phi ptr [ %.sroa.09.0.i, %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit.i ], [ %.sroa.0.011.i.i, %_RNvXsq_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CoweEE4from.exit.i ]
  %.sroa.5.0.i.sink.i.ph = phi i64 [ %.sroa.511.0.i, %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit.i ], [ %.sroa.5.0.i.i, %_RNvXsq_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc6borrow3CoweEE4from.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.011.i.sink.i.ph, ptr %i.cg, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i.sink.i.ph, ptr %.sroa.415.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val = load i64, ptr %i.k, align 8             ; 2 uses
  %i.ch = icmp eq i64 %.val, 0
  br i1 %i.ch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5PEMdK7bMAG_12typst_syntax.exit29, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val19 = load ptr, ptr %i.ci, align 8, !nonnull !19, !noundef !19
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5PEMdK7bMAG_12typst_syntax.exit29

bb.ae:                                            ; preds = %bb.k
  %i.cj = load ptr, ptr %i.ad, align 8, !noalias !4389, !nonnull !19, !noundef !19
  %i.ck = load i64, ptr %i.ae, align 8, !noalias !4389, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cj, i64 noundef %i.ck)
          to label %_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECs5PEMdK7bMAG_12typst_syntax.exit unwind label %.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath9extension(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 16 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4418
  call fastcc void @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments4iter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.c = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE9next_backCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b) #63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4418
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4419
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i64 0, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !4419
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %i.e, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !noalias !4419
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.d, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !noalias !4419
  %.sroa.411.sroa.5.sroa.4.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.e, ptr %.sroa.411.sroa.5.sroa.4.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !4419
  %.sroa.411.sroa.5.sroa.5.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.411.sroa.5.sroa.5.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !4419
  %.sroa.411.sroa.5.sroa.6.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.e, ptr %.sroa.411.sroa.5.sroa.6.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !4419
  %.sroa.411.sroa.5.sroa.7.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 46, ptr %.sroa.411.sroa.5.sroa.7.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !4419
  %.sroa.411.sroa.5.sroa.8.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 46, ptr %.sroa.411.sroa.5.sroa.8.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i, align 4, !noalias !4419
  %.sroa.411.sroa.5.sroa.9.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 1, ptr %.sroa.411.sroa.5.sroa.9.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !4419
  %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  store i8 1, ptr %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !noalias !4419
  %.sroa.411.sroa.7.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 73 ; 2 uses
  store i8 0, ptr %.sroa.411.sroa.7.0..sroa.411.0..sroa_idx.sroa_idx.i, align 1, !noalias !4419
  store i64 1, ptr %i.a, align 8, !noalias !4419
  %i.f = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE9next_backCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.411.0..sroa_idx.i) #63, !noalias !4420 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  %i.i = load i64, ptr %i.a, align 8, !noalias !4419, !noundef !19 ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 0, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment9split_dot.exit
    i64 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.a, align 8, !noalias !4419
  %i.k = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE9next_backCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.411.0..sroa_idx.i) #63, !noalias !4420
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr %.sroa.411.sroa.7.0..sroa.411.0..sroa_idx.sroa_idx.i, align 1, !range !20, !alias.scope !4421, !noalias !4419, !noundef !19
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit25.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !range !20, !alias.scope !4421, !noalias !4419, !noundef !19
  %i.o = trunc nuw i8 %i.n to i1
  %.pre.i16.i = load i64, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !4421, !noalias !4419 ; 3 uses
  %.pre2.i18.i = load i64, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4421, !noalias !4419 ; 2 uses
  %.not.i19.i = icmp ne i64 %.pre2.i18.i, %.pre.i16.i
  %or.cond.not.i20.i = select i1 %i.o, i1 true, i1 %.not.i19.i
  br i1 %or.cond.not.i20.i, label %._crit_edge.i23.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit25.i

._crit_edge.i23.i:                                ; preds = %bb.e
  %.val.i24.i = load ptr, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4421, !noalias !4419, !nonnull !19, !noundef !19
  %i.p = sub nuw i64 %.pre2.i18.i, %.pre.i16.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i24.i, i64 %.pre.i16.i
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit25.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit25.i: ; preds = %._crit_edge.i23.i, %bb.e, %bb.d
  %.sroa.3.0.i21.i = phi i64 [ %i.p, %._crit_edge.i23.i ], [ undef, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i22.i = phi ptr [ %i.q, %._crit_edge.i23.i ], [ null, %bb.e ], [ null, %bb.d ]
  %i.r = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i22.i, 0
  %i.s = insertvalue { ptr, i64 } %i.r, i64 %.sroa.3.0.i21.i, 1
  br label %bb.f

bb.f:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit25.i, %bb.c
  %.pn.i = phi { ptr, i64 } [ %i.k, %bb.c ], [ %i.s, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit25.i ] ; 2 uses
  %.sroa.01.1.i = extractvalue { ptr, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.6.1.i = extractvalue { ptr, i64 } %.pn.i, 1
  %.not.i7 = icmp ne ptr %.sroa.01.1.i, null
  %i.t = icmp eq i64 %.sroa.6.1.i, 0
  %or.cond.i = select i1 %.not.i7, i1 %i.t, i1 false
  br i1 %or.cond.i, label %.critedge.i, label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment9split_dot.exit

.critedge.i:                                      ; preds = %bb.f
  br label %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment9split_dot.exit

_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment9split_dot.exit: ; preds = %bb.b, %bb.f, %.critedge.i
  %.sroa.10.0 = phi i64 [ undef, %.critedge.i ], [ %i.h, %bb.f ], [ %i.h, %bb.b ]
  %.sroa.7.0 = phi ptr [ null, %.critedge.i ], [ %i.g, %bb.f ], [ %i.g, %bb.b ]
  %.sroa.0.08 = phi ptr [ %i.d, %.critedge.i ], [ %.sroa.01.1.i, %bb.f ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4419
  %.not5 = icmp eq ptr %.sroa.0.08, null          ; 2 uses
  %spec.select = select i1 %.not5, i64 undef, i64 %.sroa.10.0
  %spec.select6 = select i1 %.not5, ptr null, ptr %.sroa.7.0
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment9split_dot.exit, %bb.a
  %.sroa.4.0 = phi i64 [ %spec.select, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment9split_dot.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %spec.select6, %_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment9split_dot.exit ], [ null, %bb.a ]
  %i.u = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath9file_name(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4424
  call fastcc void @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments4iter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.b = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE9next_backCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a) #63 ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %.not.i = icmp eq ptr %i.c, null
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4424
  %.sroa.3.0 = select i1 %.not.i, i64 undef, i64 %i.d
  %i.e = insertvalue { ptr, i64 } %i.b, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath9file_stem(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 16 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4432
  call fastcc void @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments4iter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.c = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE9next_backCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b) #63 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4432
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4433
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i64 0, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !4433
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %i.e, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !noalias !4433
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.d, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !noalias !4433
  %.sroa.411.sroa.5.sroa.4.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.e, ptr %.sroa.411.sroa.5.sroa.4.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !4433
  %.sroa.411.sroa.5.sroa.5.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.411.sroa.5.sroa.5.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !4433
  %.sroa.411.sroa.5.sroa.6.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.e, ptr %.sroa.411.sroa.5.sroa.6.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !4433
  %.sroa.411.sroa.5.sroa.7.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 46, ptr %.sroa.411.sroa.5.sroa.7.0..sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !4433
end_hunk_2
