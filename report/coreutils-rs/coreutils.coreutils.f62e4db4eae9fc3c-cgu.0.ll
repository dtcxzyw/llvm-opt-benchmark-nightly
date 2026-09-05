Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE9next_backCsl8pJiQOn4hA_9coreutils:bb.a
  br label %bb.g

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.bb = phi ptr [ %i.s, %bb.f ], [ %i.ai, %bb.g ] ; 3 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.ab, %bb.f ], [ %i.am, %bb.g ] ; 8 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.j [
    i32 32, label %bb.s
    i32 13, label %bb.s
    i32 12, label %bb.s
    i32 11, label %bb.s
    i32 10, label %bb.s
    i32 9, label %bb.s
  ]

bb.j:                                             ; preds = %bb.i
  %i.bd = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.bd, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.be, label %bb.p [
    i32 0, label %bb.n
    i32 22, label %bb.l
    i32 32, label %bb.o
    i32 48, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.bg = zext i1 %i.bf to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.bi = zext i1 %i.bh to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.bj = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !35219, !noundef !12
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.bn = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !35219, !noundef !12
  %i.br = lshr i8 %i.bq, 1
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.bi, %bb.m ], [ %i.bm, %bb.n ], [ %i.bg, %bb.l ], [ %i.br, %bb.o ]
  %i.bs = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bs, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.k, %bb.j
  %i.bt = icmp eq ptr %i.n, %i.bb
  br i1 %i.bt, label %.loopexit, label %bb.e

bb.q:                                             ; preds = %bb.c
  %i.bu = load i8, ptr %i.a, align 1, !range !21, !noundef !12
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.r, label %bb.d

bb.r:                                             ; preds = %bb.q, %bb.c, %bb.a, %bb.t
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.t ], [ undef, %bb.a ], [ undef, %bb.q ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.t ], [ null, %bb.a ], [ null, %bb.q ]
  %i.bw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.bx = insertvalue { ptr, i64 } %i.bw, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.bx

bb.s:                                             ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.by = ptrtoint ptr %i.r to i64
  %i.bz = ptrtoint ptr %i.n to i64
  %i.ca = ptrtoint ptr %i.bb to i64
  %i.cb = sub i64 %i.q, %i.bz                     ; 2 uses
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = add i64 %i.cb, %i.by                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !12
  %i.cg = sub nuw i64 %i.cf, %i.cd
  store i64 %i.cc, ptr %i.ce, align 8
  br label %bb.t

.loopexit:                                        ; preds = %bb.p, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.ch = load i64, ptr %0, align 8, !noundef !12 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !12
  %i.ck = sub nuw i64 %i.cj, %i.ch
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.cg, %bb.s ], [ %i.ck, %.loopexit ]
  %.pn = phi i64 [ %i.cd, %bb.s ], [ %i.ch, %.loopexit ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  br label %bb.r
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE5entryCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !12  ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35243)
  %i.d = load i64, ptr %2, align 8, !range !13, !alias.scope !35244, !noalias !35245
  %.fr22.i.i = freeze i64 %i.d                    ; 3 uses
  %.not.i.i.i = icmp eq i64 %.fr22.i.i, -1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !35244, !noalias !35245
  %.fr.i.i = freeze ptr %i.f                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !35244, !noalias !35245 ; 7 uses
  %.idx = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %.fr.i.i, i64 %.idx
  br i1 %.not.i.i.i, label %.split.us.i, label %.split.i.i.preheader

.split.i.i.preheader:                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.h, 0
  br label %.split.i.i

.split.us.i:                                      ; preds = %bb.b
  %.cast.i.i = ptrtoint ptr %.fr.i.i to i64
  %i.k = trunc i64 %.cast.i.i to i1
  br i1 %i.k, label %.split.us.i.us.us.i, label %.split.us.i.us.i

.split.us.i.us.us.i:                              ; preds = %.split.us.i, %bb.e
  %.sroa.3.0.us.us.i = phi i64 [ %i.ak, %bb.e ], [ %i.c, %.split.us.i ] ; 4 uses
  %.sroa.0.0.us.us.i = phi ptr [ %i.aj, %bb.e ], [ %i.a, %.split.us.i ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35246)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.us.i, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.us.i, i64 362
  %i.n = load i16, ptr %i.m, align 2, !noalias !35247, !noundef !12 ; 2 uses
  %i.o = zext i16 %i.n to i64                     ; 3 uses
  %.idx.i.us.us.i = mul nuw nsw i64 %i.o, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.us.us.i
  %i.q = icmp eq i16 %i.n, 0
  br i1 %i.q, label %.loopexit54.us.us.i, label %.lr.ph139

.split.us.split.us.i.us.us.i:                     ; preds = %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i
  %i.r = icmp eq ptr %i.s, %i.p
  br i1 %i.r, label %.loopexit54.us.us.i, label %.lr.ph139

.lr.ph139:                                        ; preds = %.split.us.i.us.us.i, %.split.us.split.us.i.us.us.i
  %.sroa.0.01.us.us.i.us.us.i138 = phi ptr [ %i.s, %.split.us.split.us.i.us.us.i ], [ %i.l, %.split.us.i.us.us.i ] ; 5 uses
  %.sroa.8.0.us.us.i.us.us.i137 = phi i64 [ %i.t, %.split.us.split.us.i.us.us.i ], [ 0, %.split.us.i.us.us.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.us.i.us.us.i138, i64 24 ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.8.0.us.us.i.us.us.i137, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35248)
  %i.u = load i64, ptr %.sroa.0.01.us.us.i.us.us.i138, align 8, !range !13, !alias.scope !35248, !noalias !35249, !noundef !12
  %.not3.i.us.us.i.us.us.i = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.us.i.us.us.i138, i64 8 ; 2 uses
  br i1 %.not3.i.us.us.i.us.us.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph139
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !35248, !noalias !35249, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.us.i.us.us.i138, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !35248, !noalias !35249, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35251)
  %i.z = tail call i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) 1, i64 range(i64 0, 1152921504606846976) %i.y)
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.us.us.i.us.us.i, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i

bb.d:                                             ; preds = %.lr.ph139
  %i.ab = load i64, ptr %i.v, align 8, !range !16, !alias.scope !35248, !noalias !35249, !noundef !12
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %.thread.i.us.us.i, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i

.thread.i.us.us.i:                                ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.us.i.us.us.i138, i64 16
  br label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.us.us.i.us.us.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.us.us.i.us.us.i: ; preds = %.thread.i.us.us.i, %bb.c
  %.sroa.01.0.i.us.us48.i.us.us.i = phi ptr [ %i.ad, %.thread.i.us.us.i ], [ %i.w, %bb.c ]
  %.val7.i.i.i.i.i.i.i.i.i.us.us.i.us.us.i = load i64, ptr %.sroa.01.0.i.us.us48.i.us.us.i, align 8, !alias.scope !35252, !noalias !35253, !noundef !12 ; 2 uses
  %i.ae = icmp eq i64 %i.h, %.val7.i.i.i.i.i.i.i.i.i.us.us.i.us.us.i
  br i1 %i.ae, label %.loopexit, label %.split.loop.exit17.i.i.i.i.i.i.i.us.us.i.us.us.i

.split.loop.exit17.i.i.i.i.i.i.i.us.us.i.us.us.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.us.us.i.us.us.i
  %i.af = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.h, i64 %.val7.i.i.i.i.i.i.i.i.i.us.us.i.us.us.i)
  br label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i

_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i: ; preds = %.split.loop.exit17.i.i.i.i.i.i.i.us.us.i.us.us.i, %bb.d, %bb.c
  %.sroa.0.0.i.i.us.us.i.us.us.i = phi i8 [ %i.z, %bb.c ], [ %i.af, %.split.loop.exit17.i.i.i.i.i.i.i.us.us.i.us.us.i ], [ 1, %bb.d ]
  switch i8 %.sroa.0.0.i.i.us.us.i.us.us.i, label %.split17.us.i.i [
    i8 -1, label %.loopexit54.us.us.i
    i8 0, label %.loopexit
    i8 1, label %.split.us.split.us.i.us.us.i
  ]

.loopexit54.us.us.i:                              ; preds = %.split.us.split.us.i.us.us.i, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i, %.split.us.i.us.us.i
  %.sroa.4.0.i.ph.ph.us.us.i = phi i64 [ %i.o, %.split.us.i.us.us.i ], [ %i.o, %.split.us.split.us.i.us.us.i ], [ %.sroa.8.0.us.us.i.us.us.i137, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i ] ; 3 uses
  %3 = icmp eq i64 %.sroa.3.0.us.us.i, 0
  br i1 %3, label %_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1i_14LeafOrInternalE11search_treeB1y_ECsl8pJiQOn4hA_9coreutils.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit54.us.us.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.us.i, i64 368
  %i.ah = icmp samesign ult i64 %.sroa.4.0.i.ph.ph.us.us.i, 12
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.4.0.i.ph.ph.us.us.i
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !35254, !nonnull !12, !noundef !12
  %i.ak = add i64 %.sroa.3.0.us.us.i, -1
  br label %.split.us.i.us.us.i

.split.us.i.us.i:                                 ; preds = %.split.us.i, %bb.j
  %.sroa.3.0.us.i = phi i64 [ %i.az, %bb.j ], [ %i.c, %.split.us.i ] ; 4 uses
  %.sroa.0.0.us.i = phi ptr [ %i.ay, %bb.j ], [ %i.a, %.split.us.i ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35246)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 362
  %i.am = load i16, ptr %i.al, align 2, !noalias !35247, !noundef !12
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.split.us.i.us.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35248)
  %i.ap = load i64, ptr %i.ao, align 8, !range !13, !alias.scope !35248, !noalias !35249, !noundef !12
  %.not3.i.us.i.us.i = icmp eq i64 %i.ap, -1
  br i1 %.not3.i.us.i.us.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !35248, !noalias !35249, !noundef !12
  %i.as = icmp eq i64 %i.ar, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35251)
  br i1 %i.as, label %.loopexit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !16, !alias.scope !35248, !noalias !35249, !noundef !12
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g, %.split.us.i.us.i
  %i.aw = icmp eq i64 %.sroa.3.0.us.i, 0
  br i1 %i.aw, label %_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1i_14LeafOrInternalE11search_treeB1y_ECsl8pJiQOn4hA_9coreutils.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 368
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !35254, !nonnull !12, !noundef !12
  %i.az = add i64 %.sroa.3.0.us.i, -1
  br label %.split.us.i.us.i

.split.i.i:                                       ; preds = %.split.i.i.preheader, %bb.r
  %.sroa.3.0.i = phi i64 [ %i.cf, %bb.r ], [ %i.c, %.split.i.i.preheader ] ; 5 uses
  %.sroa.0.0.i = phi ptr [ %i.ce, %bb.r ], [ %i.a, %.split.i.i.preheader ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35246)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 362
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !35247, !noundef !12 ; 2 uses
  %i.bd = zext i16 %i.bc to i64                   ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.bd, 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i
  %i.bf = icmp eq i16 %i.bc, 0
  br i1 %i.bf, label %.loopexit56.i, label %.lr.ph134

bb.k:                                             ; preds = %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i
  %i.bg = icmp eq ptr %i.bh, %i.be
  br i1 %i.bg, label %.loopexit56.i, label %.lr.ph134

.lr.ph134:                                        ; preds = %.split.i.i, %bb.k
  %.sroa.0.01.i.i133 = phi ptr [ %i.bh, %bb.k ], [ %i.ba, %.split.i.i ] ; 5 uses
  %.sroa.8.0.i.i132 = phi i64 [ %i.bi, %bb.k ], [ 0, %.split.i.i ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i133, i64 24 ; 2 uses
  %i.bi = add nuw nsw i64 %.sroa.8.0.i.i132, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35248)
  %i.bj = load i64, ptr %.sroa.0.01.i.i133, align 8, !range !13, !alias.scope !35248, !noalias !35249, !noundef !12
  %.not3.i.i.i = icmp eq i64 %i.bj, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i133, i64 8 ; 2 uses
  br i1 %.not3.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph134
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !35248, !noalias !35249, !nonnull !12, !noundef !12
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i133, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !35248, !noalias !35249, !noundef !12
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph134
  %i.bo = load i64, ptr %i.bk, align 8, !range !16, !alias.scope !35248, !noalias !35249, !noundef !12
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i133, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.42.0.i.i.i = phi i64 [ %i.bn, %bb.l ], [ 1, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.sroa.01.0.i.i.i = phi ptr [ %i.bl, %bb.l ], [ %i.bq, %bb.n ], [ inttoptr (i64 8 to ptr), %bb.m ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35251)
  %i.br = tail call i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %i.h, i64 range(i64 0, 1152921504606846976) %.sroa.42.0.i.i.i)
  %i.bs = icmp eq i64 %i.h, %.sroa.42.0.i.i.i
  br i1 %i.bs, label %bb.p, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %i.j, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i.i, i64 %i.h
  br label %bb.q

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.bu = icmp eq ptr %.fr.i.i, %i.bw
  br i1 %i.bu, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i
  %i.bv = phi ptr [ %i.i, %.lr.ph ], [ %i.bw, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.3.08.i.i.i.i.i.i126 = phi ptr [ %i.bt, %.lr.ph ], [ %i.bx, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !35250, !noalias !35255 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i.i.i126, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !35252, !noalias !35253, !noundef !12 ; 2 uses
  %i.by = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.by, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, label %.split.loop.exit17.i.i.i.i.i.i.i.i.i

.split.loop.exit17.i.i.i.i.i.i.i.i.i:             ; preds = %bb.q
  %i.bz = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val8.i.i.i.i.i.i.i.i.i, i64 %.val7.i.i.i.i.i.i.i.i.i.i.i)
  br label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i

_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i: ; preds = %.split.loop.exit17.i.i.i.i.i.i.i.i.i, %bb.o
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.br, %bb.o ], [ %i.bz, %.split.loop.exit17.i.i.i.i.i.i.i.i.i ]
  switch i8 %.sroa.0.0.i.i.i.i, label %.split17.us.i.i [
    i8 -1, label %.loopexit56.i
    i8 0, label %.loopexit
    i8 1, label %bb.k
  ]

.split17.us.i.i:                                  ; preds = %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i
  unreachable

.loopexit56.i:                                    ; preds = %bb.k, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i, %.split.i.i
  %.sroa.4.0.i.ph.ph57.i = phi i64 [ %i.bd, %.split.i.i ], [ %i.bd, %bb.k ], [ %.sroa.8.0.i.i132, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i ] ; 3 uses
  %i.ca = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.ca, label %_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1i_14LeafOrInternalE11search_treeB1y_ECsl8pJiQOn4hA_9coreutils.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit56.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 368
  %i.cc = icmp samesign ult i64 %.sroa.4.0.i.ph.ph57.i, 12
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.sroa.4.0.i.ph.ph57.i
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !35254, !nonnull !12, !noundef !12
  %i.cf = add i64 %.sroa.3.0.i, -1
  br label %.split.i.i

bb.s:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1i_14LeafOrInternalE11search_treeB1y_ECsl8pJiQOn4hA_9coreutils.exit: ; preds = %.loopexit56.i, %bb.i, %.loopexit54.us.us.i
  %.us-phi87.sink.i = phi ptr [ %.sroa.0.0.us.us.i, %.loopexit54.us.us.i ], [ %.sroa.0.0.us.i, %bb.i ], [ %.sroa.0.0.i, %.loopexit56.i ]
  %.us-phi86.sink.i = phi i64 [ %.sroa.4.0.i.ph.ph.us.us.i, %.loopexit54.us.us.i ], [ 0, %bb.i ], [ %.sroa.4.0.i.ph.ph57.i, %.loopexit56.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.us-phi87.sink.i, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.us-phi86.sink.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

.loopexit:                                        ; preds = %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i, %bb.p, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, %bb.h, %bb.g, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.us.us.i.us.us.i, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i
  %.us-phi87.sink.i.ph = phi ptr [ %.sroa.0.0.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.us.us.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.us.us.i.us.us.i ], [ %.sroa.0.0.us.i, %bb.h ], [ %.sroa.0.0.us.us.i, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i ], [ %.sroa.0.0.us.i, %bb.g ], [ %.sroa.0.0.i, %bb.p ], [ %.sroa.0.0.i, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i ]
  %.sink.i.ph = phi i64 [ %.sroa.3.0.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.3.0.us.us.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.us.us.i.us.us.i ], [ %.sroa.3.0.us.i, %bb.h ], [ %.sroa.3.0.us.us.i, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i ], [ %.sroa.3.0.us.i, %bb.g ], [ %.sroa.3.0.i, %bb.p ], [ %.sroa.3.0.i, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i ]
  %.us-phi86.sink.i.ph = phi i64 [ %.sroa.8.0.i.i132, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.0.us.us.i.us.us.i137, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.us.us.i.us.us.i ], [ 0, %bb.h ], [ %.sroa.8.0.us.us.i.us.us.i137, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.us.us.i.us.us.i ], [ 0, %bb.g ], [ %.sroa.8.0.i.i132, %bb.p ], [ %.sroa.8.0.i.i132, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi87.sink.i.ph, ptr %i.cg, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.ph, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.us-phi86.sink.i.ph, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  %.0.val.off.i.i = add i64 %.fr22.i.i, -1
  %switch.i.i = icmp ult i64 %.0.val.off.i.i, -2
  br i1 %switch.i.i, label %bb.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

bb.t:                                             ; preds = %.loopexit
  %i.ch = shl nuw i64 %.fr22.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.fr.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.fr.i.i, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.t, %.loopexit, %bb.s, %_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1i_14LeafOrInternalE11search_treeB1y_ECsl8pJiQOn4hA_9coreutils.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapReNtNtB7_7set_val9SetValZSTE6insertCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 12, 15) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35351)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !35351, !noalias !35352, !noundef !12 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
